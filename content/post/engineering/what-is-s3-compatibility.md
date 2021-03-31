---
title: What is S3 Compatibility?
date: 2021-03-31T02:09:06.636Z
image: /blog/img/s3-comp-img-blog.png
categories:
  - engineering
authors:
  - Bill Thorp
draft: false
---
When Amazon launched its S3 service 15 years ago and created the cloud storage industry, it also unknowingly made object storage the standard for storing data in the cloud. Object storage organizes data into objects, which contain the data itself, its metadata, and a unique identifier. These objects are stored in buckets rather than a hierarchical system. Since then, the grand majority of cloud storage services have reinforced this interface, and the majority of people storing data in the cloud use similar architectures.

Amazon S3 is accessed via APIs, most of which rely on the HTTP protocol and XML serialization. By making a storage system compatible with these APIs, it makes it much easier for users to migrate to new services without much effort. All you have to do is point files to the new buckets and migrate any static data you'd like to keep. For example, core features such as basic upload and download, of course, should map quite easily to the new ecosystem, including systems like Storj. We support organizing objects by bucket and key, all HTTP verbs including HEAD, byte-range fetches, as well as uploading files in multiple parts.

Where the Storj network really excels compared to centralized providers is in its privacy and security, so we'd be remiss in not addressing these topics specifically as they pertain to S3. The distributed security tokens (access grants) that Storj uses contain too much detail to fit into an S3 access key or secret key field. Storj offers an S3-specific authorization service, which maps S3-compatible credentials to a Storj access grant. For our upcoming multi-tenant gateway, we use the same terminology as S3 credentials: access key and secret key.

It should be noted that the upcoming multi-tenant gateway authorization service saves access grants into a database. The access grants are individually encrypted using information from the secret key. Access grants never remain decrypted longer than they are needed, and access keys and only the hash of the secret key is ever persisted. In short, the system is designed to protect your data at rest. We will shortly be releasing a follow-up blog about how this affects Storj's typical end-to-end encryption promise.

Overall, our S3 compatibility project has been a huge effort to address the needs of certain customers, making it easier than ever to migrate to the decentralized cloud. It should provide bandwidth-limited customers with more than three times faster access. It provides a drop-in replacement for S3 with the great majority of use-cases. Finally, it offers users the flexibility to dial in the balance of security versus accessibility, allowing access to files directly from web browsers in ways they never could before.\
If you're interested in trying it out, [get started with our beta today](https://us2.tardigrade.io/signup). If we've omitted a feature you need, please let us know!