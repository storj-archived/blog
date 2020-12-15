---
title: Delivering Decentralized Cloud Storage for Fastly Users
date: 2020-12-15T10:53:09.785Z
image: /blog/img/tardigrade-fastly.png
categories:
  - business
authors:
  - John Gleeson
draft: false
---
Today, we're thrilled to announce two new integrations with Fastly, an edge cloud platform that processes and serves application data. Fastly's solutions deliver content faster by pushing data closer to where customers consume the data.

Fastly users can now use decentralized cloud storage to augment their Fastly environments by streaming log files directly to Tardigrade for long-term storage. Joint users can also use Tardigrade as the origin for content served up by the Fastly platform. These two solutions will help Fastly users further reduce costs and improve security and privacy, as all data on Tardigrade is end-to-end encrypted by default.

These two solutions are an excellent fit for the Storj Labs/Fastly collaboration. Because one of Fastly's specialties is pushing data closer to where it's consumed, and Tardigrade is a decentralized cloud storage service with nearly 10,000 globally-distributed Nodes, they create a great joint solution.

We'll be sharing more info on these two solutions in the coming weeks, but here's a short overview of each integration and how to get started.

### Using Tardigrade with Fastly for S3-compatible Origin

Fastly's highly programmable CDN Solution is used to accelerate content delivery to end-users in a more efficient manner by caching it at edge nodes---which are called Points of Presence (PoPs)---across the globe. When a Fastly cache receives a request for a piece of content, it downloads that object from the appropriate Origin server. With Fastly, it can also split the request among multiple origin servers.

![Caching basics first request](/blog/img/fastly1.png)

Now, users can set up their Fastly environments to use Tardigrade as the origin for these files that are requested from Fastly's network of caches. When a Fastly cache requests a file from Tardigrade, the fastest Nodes serve up the file pieces, which are then reassembled, unencrypted, and delivered for use. All file pieces are downloaded in parallel, so performance can be greatly improved in many instances. [Follow Fastly's documentation to get started.](https://docs.fastly.com/en/guides/tardigrade-decentralized-object-cloud-storage)

### Using Tardigrade as an Endpoint for Fastly Log Streaming

Fastly's real-time log streaming capabilities help users capture their important log data quickly and efficiently. By using Tardigrade as the endpoint for this data, log files have less physical distance to stream, improving performance and redundancy, similar to a multi-region storage setup.

![](/blog/img/fastly2.png)

When a log file is created and passed through Fastly, it's sent to a log aggregator which packs the files into blocks for more efficient storage, and streams them to an S3-compatible storage destination. Now, Tardigrade can be architected to be that endpoint, giving users global availability of their data, immutability and bitrot resistance for their files, and edge-based encryption. [Follow Fastly's documentation to get started](https://docs.fastly.com/en/guides/log-streaming-tardigrade#:~:text=Built%20on%20the%20Storj%20Network,of%20Service%20for%20more%20information.).

### Fastly and Tardigrade: Better Together

For companies that are interested in building infrastructure stacks that are distributed, performant, secure, and affordable, Tardigrade and Fastly are an excellent combination.

For users who would like to try Tardigrade, we're giving a limited time promotional credit of $150 for two months so they can experience the power of decentralized cloud storage with edge content delivery. [Get started here and try Tardigrade and Fastly together!](tardigrade.io/fastly)