---
title: Building Tardigrade Connectors
date: 2020-03-04T17:00:09.608Z
image: /blog/img/tar-blog-connectors.png
categories:
  - community
authors:
  - Kevin Leffew
draft: false
---
Connectors bridge the chasm between the applications we use every day and the underlying storage infrastructure on which application data is stored. Our team has worked with our partners to build a series of connectors between Tardigrade, our decentralized cloud storage service, and our partners' applications.

### What is a Tardigrade Connector?

A Tardigrade connector is an application-level integration that enables the use of decentralized cloud storage in consumer software. Tardigrade connectors enable Satellites to measure the volume of data associated with a bucket and give attribution to them. Put simply, a Connector enables application developers to store, retrieve, and manage data on the decentralized cloud on behalf of the app users.

Tardigrade connectors are different from standard libuplink integrations, as they provide application developers and open source projects a means to monetize their cloud usage programmatically on the Storj network.

So, using Tardigrade with your favorite open source project can help you lower your cloud storage costs, while also financially supporting the project itself.

### How to Build Connectors 

The Tardigrade Connector Framework \[TCF] is a basic set of utility methods and operations to provide a consistent approach to integrating and orchestrating among data sources, endpoints, and the Tardigrade network. Some of the aspects addressed in the framework are:

* Buffering/resource management
* Abstraction
* Data transformation
* Configuration
* Authentication
* Logging

Generally, a Tardigrade connector will interface directly with libuplink, our native Go library, which enables you to programmatically interface with Tardigrade. A basic architectural diagram of how a Tardigrade Connector fits into the stack is located below:

![](/blog/img/tar-blog-connectors-framework.png)

Tardigrade Connectors enable developers to build more secure, performant solutions with open technology. A number of developer libraries exist for you [to get started today](https://documentation.tardigrade.io/api-reference/libraries).

### Open Source Monetization

What if there was a better way for open source projects to develop sustainable revenue streams?

At the Open Source Summit in Vancouver, Storj Labs introduced a radically new model for funding open source development---the Decentralized Revenue Share model. For more information on this, [check out Ben Golub announcing our Open Source Partner Program on stage](https://storj.io/blog/2018/08/enabling-economic-empowerment-for-open-source-companies-via-the-storj-network/).

With this program, every time users store data on Tardigrade, we'll share a generous portion of every dollar earned with our open-source partners.

### Use Case Descriptions

Tardigrade Connectors are most effective when users are hosting software distributions on their choice of IaaS. Users get better, cheaper storage for their own open-source needs, and you get more money to grow.

For application developers, this approach provides a pathway toward open-source monetization that doesn't require additional licensing. In this model, end-users of applications, who leverage open-source software that connects to Tardigrade as the backend storage layer, are directly funding the open-source projects that they're using!

For example, if applications using an open-source data product are storing their snapshots and backups to Storj, the open-source project receives a significant portion of the net proceeds, which continually scales as storage and bandwidth usage increases.

### How Our Partners are Using Tardigrade Connectors

A number of open-source projects and developers have already begun building out Tardigrade Connectors.

**Database Snapshots**

One early use case that has proven successful is database backups and snapshots. Our early database partners include MongoDB, Couchbase, Kafka, MariaDB, Fluree, and InfluxDB. On Tardigrade, snapshots are globally available by default---no need for multi-region replication or additional configuration. This means you can recover the state of your database anywhere in the world quickly and economically.

[Check out our database snapshot Connector toolset!](https://documentation.tardigrade.io/how-tos/backup)

**File Management**

Another common Connector use case is around file management, where users of open-source content storage and collaboration tools like NextCloud and Pydio, can back up their files on the decentralized cloud. This use case gives organizations complete control over their files.

For a walkthrough around how to configure NextCloud with Storj, [take a look at this 'How To' guide](https://documentation.tardigrade.io/how-tos/set-up-tardigrade-with-nextcloud-primary-storage).

**Filesystem Mapping**

Open Source tools like RClone and Rsync enable developers to sync files and directories to and from Tardigrade Object Storage on the Storj Network, at the operating system level.

[See a WIP overview of our RClone integration here](https://documentation.tardigrade.io/v/staging/how-tos/sync-file-system-to-tardigrade-missing).

### Get Started and Monetize OSS!

We hope that the Tardigrade Connector Partner Program will empower a new class of entrepreneurs to 'be the cloud', and create more sustainable business models built on top of open-source software.

Stay tuned for a series of announcements, blog posts, and 'How To's' in the coming weeks that will detail the ways in which our partners are building applications and developer tooling, which leverage the decentralized cloud.\
For more information around how to create a Tardigrade Connector - and partake in Open Source Revenue Share, [follow this link](https://tardigrade.io/partner/), or email us directly: [partnerships@tardigrade.io](mailto:partnerships@tardigrade.io).