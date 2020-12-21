---
title: S3-Compatible Tardigrade Origin for Content Delivered at the Fastly Edge
date: 2020-12-21T20:57:17.199Z
image: /blog/img/fastlydistributed.jpg
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
Fastly is an edge cloud platform that processes and serves application data as close to end-users as possible. Fastly's highly programmable CDN solution is used to accelerate content delivery to end-users in a more efficient manner by caching it at edge nodes across the globe.

These edge nodes are referred to as Points of Presence, or POPs and are strategically built in well-connected locations across the globe to reduce transit time when delivering content to end users. Each POP has a cluster of Fastly cache servers that enables compute at the edge as well.

When end-users request object data, Fastly delivers it from whichever cache location is closest to each end-user.

![](/blog/img/fastlyorigin1.png)

<https://www.fastly.com/network-map>

### How Origin Servers Work in CDNs

The first time each Fastly cache receives a request for a content object, it fetches the object from the appropriate origin server. If multiple origin servers are specified, the cache will distribute the processing load for the fetches across all of them (based on the configuration criteria set by the user). After the content object is fetched, the cache stores a copy and forwards its response to the end-user.

![Caching basics first request](/blog/img/fastlyorigin2.png)

Each time after the first time an end-user requests the same content object again, the Fastly cache fulfills the requests by retrieving the cached copy from storage (or memory) and immediately delivers it to the end-user--the fetch step to the original copy is not repeated until the content object either expires or becomes invalidated by the customer.

![Caching basics subsequent request](/blog/img/fastlyorigin3.png)

### How Does the Tardigrade Storage Origin Work?

Tardigrade, the new S3-compliant storage solution from Storj Labs, can now be configured to act as an origin for content in Fastly.

To get started, simply sign up for a Tardigrade account, set up an S3-gateway, and voila---you've connected your Tardigrade account to Fastly's edge cloud platform.

To get started, just follow these steps on Fastly's documentation, here: https://docs.fastly.com/en/guides/tardigrade-decentralized-object-cloud-storage

![](/blog/img/fastlyorigin4.png)

### Upgrade Security Architecture with Default Encryption and Client-Side Access Management

Distributed and decentralized environments are designed to eliminate trust by definition. By moving security, privacy, and access management to the edge, users regain control over their data. With tools such as client-side encryption, cryptographic audits, and completely open-source architecture, trust boundaries and risks are mitigated not by the service provider, but by the tools in the hands of the user.

From the client side, Tardigrade uses a combination of end-to-end encryption, erasure coding, and [macaroon-based API keys](https://storj.io/blog/2019/12/secure-access-control-in-the-decentralized-cloud/) to deliver high performance, security, and resiliency. While erasure coding is primarily used to ensure data availability, storing data across thousands of statistically uncorrelated Storage Nodes further adds a security layer by eliminating any centralized honeypot of data.

### Reduce Your Storage Costs with Fastly and Tardigrade 

According to the current pricing for Amazon S3 (<https://aws.amazon.com/s3/pricing/>), the Asia Pacific Region costs $0.025 per GB of storage, and $0.085 per GB of bandwidth on a monthly basis.

Alternatively, Tardigrade (with global redundancy similar to a multi-region architecture offered by default) costs only $0.010 per GB of storage, and $0.045 per GB of bandwidth per month.

Tardigrade can save Fastly customers over 60% per month on storage and over 50% per month on bandwidth, with native global redundancy (minimizing latency) at no additional cost.

Tardigrade also offers a Service Level Agreement (SLA), similar to Amazon S3, of 99.95% availability and 99.9999999% durability. This SLA is available for review here: [ https://tardigrade.io/terms-of-service/](https://tardigrade.io/terms-of-service/).

Looking Forward---Building a Native Integration for a Truly Distributed Stack

Fastly and Tardigrade work great together because they both push data closer to where it's consumed. By utilizing Tardigrade as their S3-compatible origin for Fastly, our users can take advantage of many wonderful benefits that complement the benefits of Fastly. 

Interested in getting started? We're offering all Fastly users a coupon for $150 of storage and bandwidth usage so they can try Tardigrade for themselves and experience the power of decentralized cloud storage. To get started, visit <https://tardigrade.io/fastly/> and enter your email address to create an account or add the credit to your existing account.