---
title: Streaming Fastly's Log Output to Tardigrade
date: 2020-12-16T14:44:23.321Z
image: /blog/img/tardigrade-fastly-blog.png
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
We're excited to share a new integration with Fastly that enables developers who are interested in using decentralized cloud storage with edge cloud platforms. Fastly's [real-time log streaming feature](https://docs.fastly.com/en/guides/about-fastlys-realtime-log-streaming-features) can now send log files to Tardigrade's S3—compatible distributed cloud service.

Fastly uses Varnish, an open source tool that is designed for high performance content delivery. Inside the Fastly platform, Varnish sends all streaming log records to a log aggregator, which packs the output into blocks, and streams them in near-real-time to the logging endpoint via a Tardigrade S3 Gateway.

### Getting Started

Fastly developers can quickly set up Tardigrade as the endpoint for log streaming output. The documentation for this integration is located in the Fastly docs, here: <https://docs.fastly.com/en/guides/log-streaming-tardigrade>.

### Distributed, Immutable Storage for Fastly Log Output

Tardigrade is a great destination for Fastly Log Streaming output due to its unique decentralized architecture. This means better performance, resilience, and security—at half the cost of centralized cloud alternatives.

![](/blog/img/fastly2.png)

\
Tardigrade + Fastly's real-time log streaming supports the following specific features:

* **Immutable, Bitrot Resistant Architecture** - The Tardigrade Platform continuously performs cryptographic audits of your data, ensuring the durability and retrievability of your data and eliminating the impact of bitrot on data integrity over time.
* **Edge Based Encryption and Access Control** - With access managed client-side, the platform provides the tools to separate responsibilities for creating bearer tokens for access management from encryption to use the data. Separation of these concerns enables decoupling storage, access management, and data use, ensuring greater privacy with greater transparency.
* **Global Availability and Parallelized Performance** - Because Tardigrade is a globally distributed hot object store, you can store and recover your most important backup data from anywhere in the world, instantly, without having to replicate data across regions. Data is broken up into redundant pieces and streamed in parallel across a large network of statistically uncorrelated nodes. This means your data is not centralized at a single vendor, storage provider, or Internet Service Provider, making volume recovery much more reliable and resilient.
* **Customized Log Formats** - Fastly allows you to change the format of your logs by providing variables compatible with the Apache Common Log Format (NCSA Common log format).

### Upgrade Your Stack with Tardigrade and Fastly

The distributed architecture of the network and end-to-end encryption on every file protects against attacks, improves reliability, increases download/upload speeds, and enhances performance compared to centralized cloud storage options.

Tardigrade is resilient: Data is encrypted, erasure-coded, and spread across uncorrelated endpoints, making data loss, theft, or backup corruption (via bitrot) nearly impossible.

Finally, Tardigrade is more economical than alternative providers. Storage and bandwidth costs are a fraction of AWS, Microsoft, and Google, and there is no need for costly replications across regions that would balloon your cloud storage bills.

*Try out this integration between Fastly and Tardigrade, and let us know what you think! For a limited time we're offering all Fastly users $150 credit so they can try Tardigrade for themselves and experience the power of decentralized cloud storage. To get started, [signup on Tardigrade.io for your $150 credit](https://tardigrade.io/fastly/) and [follow the simple documentation](https://docs.fastly.com/en/guides/log-streaming-tardigrade.).*