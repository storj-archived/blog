---
title: NEM and IoDLT - Using Tardigrade to Accelerate MongoDB Snapshot
  Distribution and Storage
date: 2020-09-22T14:44:09.607Z
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
IoDLT is a company that secures, records, and monetizes data from a wide array of sources, (including IoT devices).

The company and wider NEM ecosystem has had difficulty making their blockchain data easy to access for application developers. By working with IoDLT to build a solution leveraging Tardigrade and MongoDB, we were able to build a decentralized, resilient solution that improves MongoDB sync performance, while decreasing costs vs centralized providers

IoDLT has implemented the [MongoDB integration for Tardigrade](https://www.mongodb.com/blog/post/cloud-native-enterprise-data-management-tardigrade) within their own stack to back up their important data to our decentralized cloud storage service. Tardigrade helps IoDLT optimize its workflow, decrease costs, and increase performance for developers building on their blockchain platform.

By using Tardigrade to store and distribute the MongoDB snapshots needed to set up a Symbol node, the process is reduced from 44 minutes to 2-3 minutes, an almost 1,500% improvement,” said Bader Youssef, IoDLT Chief Technology Officer. “Our team is proud of the Tardigrade integration we built and we’re looking forward to seeing how NEM community members and users take advantage of these new benefits from Tardigrade.”

In this post, we’ll give an overview of how this solution architecture works to extend the Symbol stack for NEM application developers, making chain data easier to access, download, and query using Tardigrade and MongoDB.