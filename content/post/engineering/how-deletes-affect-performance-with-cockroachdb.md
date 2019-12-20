---
title: How deletes affect performance with CockroachDB
date: 2019-12-20T19:20:59.047Z
image: /blog/img/cockroach-db-alt.png
categories:
  - engineering
authors:
  - Simon Guindon
draft: false
---
Our team here at Storj Labs is currently in the middle of adding support for CockroachDB, which is a horizontally scalable Postgres compatible database. Each database technology behaves differently and it's important to understand the tradeoffs they make to utilize them efficiently. Along the way, we are learning a lot about CockroachDB and one of the things we have learned is how deletes impact database performance.

#### Performance

CockroachDB uses a technique called MVCC[¹](https://en.wikipedia.org/wiki/Multiversion_concurrency_control) to manage concurrent transactions. Deletes leave behind tombstones to mark records as deleted. Deleted records don't get removed from the primary key/value store or indices until the `gc_ttl` grace period window expires, which has a default of 25 hours. This means any query using the table has to process more data than you may expect if you assumed all those records were immediately removed from the system. I want to stress, this doesn't violate any transactional guarantees and doesn't return any undesired results. Deleted data appears deleted correctly. This only affects performance. If you're doing sparse deletes this probably won't be noticeable. If you're doing bulk deletes you may notice performance doesn't improve after you have issued deletes until the 25-hour window has expired and has purged the bulk deleted records. Old values changed with updates also get purged when the `gc_ttl` grace period has expired.

Another thing to consider with CockroachDB deletes is that if you issue too large of a delete statement you may experience a `query too large exception`. To work around this you can delete records with a limit or some continuous range of the primary key.

Some techniques to consider to mitigate these side effects---if you're experiencing this problem---could be lowering the `gc_ttl` 25-hour interval. If you're using the enterprise version of CockroachDB you can use partitions, or alternatively views if you're not using the enterprise version. Truncating entire sections of a table is also an option. This avoids tombstones, but requires you to define sufficiently coarse-grained segments when you do the inserts.

Thanks, Namibj from the Cockroach Slack for this information.

You can read more details on the official CockroachDB documentation[²](https://www.cockroachlabs.com/docs/stable/sql-faqs.html#why-are-my-deletes-getting-slower-over-time).

> "CockroachDB relies on multi-version concurrency control (MVCC) to process concurrent requests while guaranteeing strong consistency. As such, when you delete a row, it is not immediately removed from disk. The MVCC values for the row will remain until the garbage collection period defined by the gc.ttlseconds variable in the applicable zone configuration has passed. By default, this period is 25-hours.
>
> This means that with the default settings, each iteration of your DELETE statement must scan over all of the rows previously marked for deletion within the last 25-hours. This means that if you try to delete 10,000 rows 10 times within the same 25-hour period, the 10th command will have to scan over the 90,000 rows previously marked for deletion.
>
> If you need to iteratively delete rows in constant time, you can alter your zone configuration and change gc.ttlseconds to a low value like five minutes (i.e., 300), and run your DELETE statement once per GC interval. We strongly recommend returning gc.ttlseconds to the default value after your large deletion is completed."

#### Why gc_ttl exists

This 25-hour window exists to help support long-running queries and the `AS OF SYSTEM TIME`[³](https://www.cockroachlabs.com/docs/stable/as-of-system-time.html) clause that enables querying a specified time in the past. Another purpose is for restore. Data is kept around for a while so that you can restore back to a point in time. For example, if you ended up deleting more data than you intended with a bad where clause, restore can put the table back to where it was before.

#### Backups

It's important that you do an incremental backup at least once within the `gc_ttl` time window.

#### References

*¹ Multiversion concurrency control. <https://en.wikipedia.org/wiki/Multiversion_concurrency_control>* <br>²*Why are my deletes getting slower over time. <https://www.cockroachlabs.com/docs/stable/sql-faqs.html#why-are-my-deletes-getting-slower-over-time>* <br>³*AS OF SYSTEM TIME <https://www.cockroachlabs.com/docs/stable/as-of-system-time.html>*
