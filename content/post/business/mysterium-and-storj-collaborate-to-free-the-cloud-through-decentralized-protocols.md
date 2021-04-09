---
title: Mysterium and Storj Collaborate to Free the Cloud Through Decentralized
  Protocols
date: 2021-04-09T13:36:54.088Z
image: /blog/img/mysterium-blog.png
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
To further its mission of a censorship-free internet for all, the Mysterium Network has chosen Storj decentralized object storage to replicate its S3 object data, including container images, static content, and more.

A foundational building block of the company's software infrastructure, Mysterium's container images have been downloaded more than 1,000,000 times from [Mysterium's registry on Docker Hub](https://hub.docker.com/u/mysteriumnetwork). The registry holds Mysterium's named Docker images, available in different tagged versions, and users can easily interact with a registry by using Docker push and pull commands.

Mysterium will leverage the unique benefits of decentralized cloud storage. These benefits include unmatched security and privacy through a know-nothing architecture, globally distributed files across statistically uncorrelated endpoints and ISPs, default encryption, and user-assigned access grants. These give developers the freedom, flexibility, and confidence they demand when building their apps/services.

To learn more about how you can host your container images on the decentralized cloud, like Mysterium, [check out our overview about building a Docker container registry backed by Storj](https://storj.io/blog/2020/11/build-a-docker-container-registry-backed-by-the-decentralized-cloud/).

### What is the Mysterium Network?

[Mysterium](https://mysterium.network/) is building a decentralized VPN, and other censorship-resistant tools, that allow you to browse the internet freely and earn revenue by sharing your connection.

Mysterium uses the Ethereum Blockchain and Matic Network (now Polygon) as the backbone for payments between the network participants. Mysterium offers a global pool of residential IPs which opens the internet up for everyone, no matter where they are. With low latency transport speed, Mysterium VPN is perfect for streaming use cases so that you can access video content from all over the world, from your home. Check out [Mysterium VPN](https://mysterium.network/apps/), now available on Mac, Windows, and Android.

Node Operators who currently earn STORJ tokens for supplying excess storage capacity can also earn MYST by contributing excess bandwidth to the Mysterium Network. Find out more about [running a Mysterium Node](http://mysterium.network/node) and being a part of creating an internet blind to borders.

### Why use Storj for Container Registry?

Storj offers highly secure, private, and economical cloud object storage through global decentralization. Data is encrypted, divided into pieces, and spread across tens of thousands of uncorrelated endpoints and ISPs to create an edge-based security model with no single point of failure. By storing files on Storj, developers can protect their data against ransomware and tampering by bad actors, providing a much more resilient backend for Docker Registry container image storage and distribution.

Running a Container Registry on Storj is a great solution to integrate with and complement your CI/CD system. In a typical workflow, a commit to your source revision control system would trigger a build on your CI system, which would then push a new image to your Registry if the build is successful.\
\
For developers, Storj is easy to configure ([it's backward-compatible with Amazon S3](https://documentation.tardigrade.io/getting-started/beta-gateway-mt)). Registries that utilize Storj have client-side access to the most distributed object storage protocol on the planet. *Upgrade to Storj, and your users can pull container data globally, from a single logical instance, at a fraction of the cost.*