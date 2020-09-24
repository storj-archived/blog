---
title: NEM and IoDLT - Using Tardigrade to Accelerate MongoDB Snapshot
  Distribution and Storage
date: 2020-09-24T12:48:19.291Z
image: /blog/img/blog-tar-iodlt-snapshots.jpg
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
IoDLT is a company that secures, records, and monetizes data from a wide array of sources, (including IoT devices).

The company and wider NEM ecosystem have had difficulty making their blockchain data easy to access for application developers.  By working with IoDLT to build a solution leveraging Tardigrade and MongoDB, we were able to build a decentralized, resilient solution that improves MongoDB sync performance, while decreasing costs vs centralized providers

IoDLT has implemented the [MongoDB integration for Tardigrade](https://www.mongodb.com/blog/post/cloud-native-enterprise-data-management-tardigrade) within their own stack to back up their important data to our decentralized cloud storage service.  Tardigrade helps IoDLT optimize its workflow, decrease costs, and increase performance for developers building on their blockchain platform.

By using Tardigrade to store and distribute the MongoDB snapshots needed to set up a Symbol node, the process is reduced from 44 minutes to 2-3 minutes, an almost 1,500% improvement," said Bader Youssef, IoDLT Chief Technology Officer. "Our team is proud of the Tardigrade integration we built and we're looking forward to seeing how NEM community members and users take advantage of these new benefits from Tardigrade."

In this post, we'll give an overview of how this solution architecture works to extend the Symbol stack for NEM application developers, making chain data easier to access, download, and query using Tardigrade and MongoDB.

### **How MongoDB and Tardigrade are Used in the Symbol Application Stack**

![](/blog/img/nem-mongodb-tardigrade-architecture.png)

In the Symbol application stack, the MongoDB database is used as a secondary data store for the API Nodes which are queried by various client applications.

The primary responsibility of the API nodes is to store the data in a readable form.  NEM uses MongoDB in conjunction with a broker to push messages in real-time to the MongoDB instance, making NEM chain data more accessible and queryable.

The MongoDB instance retains chain data---blocks, transactions, metadata state, and generally the entire chain. This architecture allows the client's apps to access the blockchain data quickly through the REST nodes, such as [this one](https://github.com/nemtech/catapult-rest).

There's an interesting problem that can arise from this architecture - as the chain progresses, the database will naturally get more full, increasing the time-to-sync for a full node.

On smaller factor devices, such as devices run by IoDLT, this can pose a problem for running full nodes on devices with fewer compute and bandwidth resources.

To help solve this problem, IoDLT has built a connector for Tardigrade that periodically snapshots the chain's MongoDB instance to the decentralized cloud, making it easy to quickly rehydrate state to any location across the globe.

### How IoDLT Built a Data Stack Without Centralized Silos

Developers who wish to try the combination of Storj and Symbol can try running a node on IoDLT's Symbol devnet. This node will have all the normal functionalities of a full Symbol node, but with an instance of Storj's MongoDB backup tool. The configuration automatically will back up a node's MongoDB instance every day.

We have a core Docker container that installs the connector-MongoDB tool. Once it's installed, two other containers are run. First, a restore script is run on startup. This checks for any latest backups automatically restores the MongoDB instance to that backup.

Next, another container utilizes a CRON job that runs the backup tool every day. This setup utilizes the Docker network to communicate between each process.

When the node operator restarts the node, it grabs the latest "light" version of the chain so that data is made available in MongoDB. Meanwhile, the node syncs and verifies with the rest of the network. Once the node reaches the chain's block height of the backup from Tardigrade, new chain data is made available for further backup.

To get started, get a node running using these instructions: <https://github.com/IoDLT/catapult-devnet/tree/feat/backups>

### Speeding up Sync Performance with Tardigrade

Once this node is running, the docker-compose setup includes Storj's backup tool as part of the stack. Along with automating the Symbol node setup process, our configuration will automatically back up the MongoDB instance to the Tardigrade network. In the event that the node needs to be reset, or in the unfortunate case of a sudden shutdown, the node can pull down the latest backup from a Tardigrade bucket.

This means client apps that heavily depend on data from MongoDB will be able to quickly get access to historic chain data without the long sync time.  Let's take for example the IoDLT Symbol Network - at the time of this article, it sits at 700k blocks.  If a node operating on that network would experience a technical difficulty, there is a chance that the data on that system would be corrupted or otherwise inaccessible.

By just relying on Symbol's broker process, it would take roughly \~44 minutes to sync the chain (and for the data to be available).  Whereas using Tardigrade, assuming a backup is available, the same data would be available for usage in only \~2-3 minutes, thereby providing a 93.33% reduction is sync time - an almost 15x increase in performance.  The node still has to fully sync in the background, but now chain data can be utilized while that occurs. This, of course, will vary depending on the size of the chain and the content within, but generally, using Tardigrade greatly improves sync speed for API access.

![](/blog/img/lifecycle-of-a-file-on-tardigrade-.png "Lifecycle of a file on Tardigrade")

### Easily Access Symbol API Data

Many Symbol applications rely on direct data from the blockchain. Whether that's getting an account's [Multi-Signature](https://docs.symbolplatform.com/concepts/multisig-account.html#multisig-account) graph information, viewing a past [Aggregate Complete](https://docs.symbolplatform.com/concepts/aggregate-transaction.html#aggregate-transaction) smart contract, or querying for an account's [Metadata](https://docs.symbolplatform.com/concepts/metadata.html#metadata), client-side apps that utilize Symbol are dependent on the API portion being constantly up-to-date and in sync.

This method of quickly reviving a MongoDB instance from Tardigrade allows for use cases such as a mobile app, to quickly get back on their feet without switching nodes.

### Why did IoDLT Choose Tardigrade over Centralized Cloud Providers?

The best part of Tardigrade is that the service includes default features like end-to-end encryption on every file, that would otherwise cost organizations a large premium. Every file uploaded to Tardigrade stores data across statistically uncorrelated cross-geographic redundancy by default, which is similar to a multi-region cloud backup architecture.

This means cloud storage backups are always accessible, and a single outage won't cripple our operations like it would in a centralized cloud storage architecture. Tardigrade backups are available everywhere, and with hot availability, developers can quickly and easily rehydrate their MongoDB instance from anywhere in the world.

*If you are a MongoDB Developer and are interested in learning more about this API Node architecture, reach out to: [partnerships@storj.io](mailto:partnerships@storj.io).*