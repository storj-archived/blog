---
title: General Availability for Tardigrade is Here
date: 2020-03-19T07:59:53.868Z
image: /blog/img/tar-blog-launch.png
categories:
  - business
authors:
  - Ben Golub
draft: false
---
The internet was designed to be decentralized. When you send a message, stream media, or do a video conference, you don't worry about which routers your data is passing through, who owns them, or whether some may be down. The decentralized model for internet communications has delivered multiple orders of magnitude of improvements in reliability, speed, and price. No one questions the appropriateness of leveraging TCP/IP for enterprise applications.

However, leveraging decentralization for enterprise grade compute and storage has never been possible--at least until today. Being first is never easy, but it's always notable. Today, we're pleased to celebrate the launch of the world's first SLA-backed decentralized cloud storage service.

Two years ago, we started rebuilding our decentralized cloud storage network from scratch. Our previous network reached more than 150 petabytes of data stored across more than 100,000 Nodes—however our offering struggled to scale beyond those numbers, and we didn't see it would deliver enterprise-grade parameters. It was a tough decision to make, but we can proudly say our rebuild was well worth the effort.

Through an extensive beta period, with thousands of users and Storage Node Operators, we've been able to demonstrate enterprise grade performance and availability; we've delivered S3 compatibility; we've demonstrated 100% file durability for over 10 months, enhanced by the fact that we have cross-geography redundancy by default. Our economic model allows us to offer prices at a fraction of the large providers, while still delivering attractive compensation rates to our Storage Node Operators. We're also able to offer great channel margins to our partners, which builds a solid foundation for a healthy business at Storj Labs.

Perhaps most importantly, our end-to-end encryption and zero-knowledge architecture enabled us to deliver a security model that's significantly more resilient and prevents anyone (including us) from mining data or compromising user privacy.

#### Launch Gates to Measure Success

As we've talked about in the past, we put in place a [rigorous set of launch gates](https://storj.io/blog/2019/11/measuring-production-readiness-using-qualification-gates/)—and we weren't willing to proceed with a production launch until:

* We demonstrated multiple months of consistent progress in durability, availability, and usability.
* Until we had sufficient capacity and a large enough number of vetted node operators to ensure we could meet demand.
* Until we had stress tested the system with thousands of users and Node Operators.
* Until we had the tools, documentation, and libraries available to support our major use cases.
* Until we had battle tested the system with partners.
* Until we had been thoroughly vetted by third party security firms.
* Until we could confidently back our service with enterprise grade Service Level Agreements (SLAs).

![](/blog/img/qualification-gates-and-network-performance.png)

#### Tardigrade Connectors Ready for Use

We're proud to be launching Tardigrade along with connectors that allow users to integrate our service with some of the most popular and innovative open source and cloud applications in the world. In addition to our thousands of users, Kafkaesque, Fluree, Verif-y, and CNCTED are just a few of the partners with Tardigrade integrations. We have many more partners finalizing integrations each week. And, we're launching with not only built in S3 compatibility, but an extensive [library of bindings](https://documentation.tardigrade.io/api-reference/libraries), including .Net, C, Go, Python, Android, Swift, and Node.js, that can enable developers to build Storj-native applications to take advantage of our full range of advanced features, such as macaroons.

Perhaps my favorite part about Tardigrade is that the platform is supporting the open source community. I've spent the past 15 years working for open source projects and have seen first-hand many of the challenges they face. If you're an open source project whose users store data in the cloud, you can passively generate revenue every time your users upload data to Tardigrade. Through our [Open Source Partner Program](https://tardigrade.io/partner/), any open source project with a connector will receive a portion of the revenue we earn when your users store data on Tardigrade. There are no limits. There is no catch. We want to support open source because we ourselves are open source software developers.

To our amazing community; thank you immensely for supporting us throughout this rebuild journey. We're proud to say we met most of our deadlines, but we thank you for your patience and hope you love Tardigrade as much as the team here at Storj Labs does!

Storj Labs is among a myriad of companies building the infrastructure to power decentralized web 3.0 

[rigorous set of launch gates](https://storj.io/blog/2019/11/measuring-production-readiness-using-qualification-gates/)

If you haven't given Tardigrade a try, take a few minutes, [sign-up for an account to receive a free credit](https://tardigrade.io/satellites/), and upload a file. See the power of decentralization for yourself.
