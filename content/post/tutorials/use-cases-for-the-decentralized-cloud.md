---
title: Use Cases for the Decentralized Cloud
date: 2020-02-11T15:20:41.217Z
image: /blog/img/blog-tardigrade-use-cases.png
categories:
  - tutorials
authors:
  - Kevin Leffew
draft: false
---
Have you heard the news? Tardigrade is in early access production, which means that developers can start using the decentralized cloud storage service for real workloads. This is a huge milestone for the company and network, and we're excited to have you along for the journey.

<br>

#### Tardigrade Benefits

Tardigrade is superior to centralized alternatives, for a number of reasons. First off, we're more durable. Decentralization means there is no single point of failure, and the risk of file loss is dispersed through statistical uncorrelation.

Data is streamed, hyper-locally and in-parallel, enabling us to be much faster than centralized competitors. Because our economics are similar to that of Airbnb (or Uber) - we're also able to sell storage at half the price of AWS.

While decentralized cloud storage is awesome and highly optimized for some use cases, it isn't a perfect fit for everything. Tardigrade object storage is highly optimized for larger files, especially those which are written once and read many times.

<br>

#### Use Cases for Tardigrade

You may be wondering how you can get started? Here are a few specific use cases that are well suited for decentralized cloud storage:

**Large File Transfer:** Tardigrade is especially well suited for transiting large amounts of data point-to-point over the internet. High-throughput bandwidth takes advantage of parallelism for rapid transit---client-side encryption ensures privacy during transit.

Common examples include large files, academic/scientific datasets, binaries, media collections, and the like. Developers aren't charged for upload bandwidth, so uploading files to the network doesn't incur any cost, and there are no penalties if you decide to take your data with you and run.

For a great example of large file transfer, see [transfer.sh](https://transfer.sh/). In an average month, transfer.sh is used more than 1,000,000 times to easily transfer files worldwide.

**Database backups:** Storing backups and snapshots of databases is another use case that is specifically well suited for decentralized storage. Regular snapshot backups of databases for data recovery or testing are an entrenched part of infrastructure management. They enable you to quickly capture the state of your database at a given point in time and capture the change in the database from the backup to the present.

On the decentralized cloud, streaming backups eliminates the need to write large database snapshots to local disk before backup or for recovery.

**Low volume CDN:** Out of the box, Tardigrade supports the fluid delivery of multimedia files with the ability to seek to specific file ranges and support for large numbers of concurrent downloads.

On the decentralized cloud, native file streaming support and distributed bandwidth load across highly distributed nodes reduces bottlenecks.

**Multimedia Storage:** Another common use case is for the storage of large numbers of big multimedia files, especially data produced at the edge from sources like security cameras that must be stored for long periods of time with low access.

Rapid transit leveraging parallelism makes distributed storage effective for integrating with video compression systems to reduce the volume of data stored.

**Private Data:** Tardigrade is highly optimized for data that is highly sensitive and an attractive target for ransomware attacks or other attempts to compromise or censor data.

Client-side encryption, industry-leading access management controls, and a highly distributed network of storage nodes reduce attack surface and risk.

**Back-end to dApps:** A dApp backed by centralized cloud storage means you're missing out on the biggest benefits of decentralization. Using Tardigrade as the back-end to your dApp increases its privacy, security, and resiliency when compared to legacy, centralized cloud storage solutions.

<br>

#### Get Started

We expect there are many more ways to incorporate Tardigrade decentralized cloud storage into your applications and cloud environments. Ready to get started and see what Tardigrade can do for you? Follow our [Tardigrade documentation to create your first project and upload your first file in just a few minutes](https://documentation.tardigrade.io/setup/project).
