---
title: What is Decentralized Cloud Storage
date: 2020-10-16T17:57:35.388Z
image: /blog/img/blog-what-is-decentralized-storage.jpg
categories:
  - business
authors:
  - Paul Ford
draft: false
---
Tardigrade is the world's first enterprise-grade, decentralized cloud storage service. Through decentralization, Tardigrade is more secure, more performant, more affordable, and more private by default than centralized cloud providers.

What exactly is decentralized cloud storage? On the user's end, it operates exactly the same as traditional cloud storage options like Amazon S3. But, instead of your files being stored in a big data center that's vulnerable to outages and attacks, your information is stored on thousands of distributed Nodes all across the globe.

### How the decentralized cloud works

First off, we aren't going to get super technical here. This is an overview of how it works, so if you really want to dig into the technical specifications of Tardigrade (the nuts and bolts stuff), you can check out our [documentation](https://documentation.tardigrade.io/). Here's also a cool diagram to reference. 

![How decentralized cloud storage works](/blog/img/how-decentralized-cloud-storage-works.png "How decentralized cloud storage works")

As previously mentioned, with traditional cloud storage, all of your data resides in one large data center. This often leads to downtime and outages when one of these facilities goes offline. With decentralized cloud storage, we have a large, distributed network comprised of thousands of Nodes across the globe that are independently owned and operated which store data on our behalf. A Node is simply a hard drive or a storage device someone owns privately. We pay all of our Node Operators to store files for our clients, and we compensate them for their bandwidth. Think of it like this: You have a 10 TB hard drive, and you're only using 1 TB. You could sign up to be a Node Operator and we would store pieces of our clients' files on your hard drive utilizing your unused space. Depending on how many files you store and how many times that data needed to be retrieved, we'd compensate you accordingly.

### So why make it decentralized?

The real issue with centralized providers like Amazon S3 is all of your data resides in huge data centers. If a part of Amazon's network goes down, you won't be able to access your data at best, and at worst, your data could be permanently lost or damaged. Large data centers are also vulnerable to hackers, as we've seen time and time again. With decentralized cloud storage, end-to-end encryption is standard on every file---each file is encrypted on a user's computer before it's uploaded, broken into pieces, and then spread out to uncorrelated Nodes across our network. Only you have access to the encryption keys, making it virtually impossible for your data to be compromised or stolen.

Plus, centralized cloud storage costs a lot more than our decentralized network. Large data centers cost a ton of money and take a lot of resources to operate. The fact we don't have to spend money operating a data center, but rather use individual, privately owned devices, means we pass those savings onto our customers.

### But what about data loss or bad actors on the network?

We've never lost a single file on the Tardigrade network due to our decentralized architecture. Tardigrade has 99.99999999% file durability, and since we split each file into 80 pieces, and we only need 30 pieces to reconstitute a file, it would take 51 nodes going offline at the same time for your file to be lost. Complete files are fully retrieved at lightning speed by downloading the fastest 30 of 80 pieces. If you know how torrenting works, it's the same concept. There's no central point of failure, ensuring your data is always available. Since each file uploaded to Tardigrade is split into 80 pieces, encrypted, then stored on 80 different Nodes, one Node going offline won't impact any files stored on any particular Node.

The real beauty of the decentralized architecture lies in the fact that a Node Operator doesn't know what files are stored on their Node. Even if a Node operator wanted to access your files, they only have a small shard or piece of that file. They would have to track down at least 30 other Nodes to reconstitute a file, and all of those files are also encrypted. It's virtually impossible to compromise a file.

### Is it secure?

Storj is what we like to call "trustless." What does this mean? It means you don't have to place your trust in any single organization, process, or system to keep the network running, and you don't have to worry about your data because we couldn't access it even if we wanted to. Tardigrade is private and secure by default, and files are encrypted end-to-end before they're ever uploaded to our network, ensuring no one can access data without authorization.

A file on Tardigrade is almost impossible to access without the proper keys or permissions. Because everything is encrypted locally, your data is literally in your hands, and no one else's. After files are encrypted, they get split into smaller fragments that are completely indistinguishable from each other. A typical file gets split into 80 pieces, of which any 30 can be accessed to reconstitute the file. Each of the 80 pieces is on a different drive, with different operators, power supplies, networks, geographies, etc. For example, there are currently 171 million files on our Tardigrade service. To compromise a single file, the hacker would first have to locate 30 of its pieces among the 171 million on the network, creating a needle in a haystack scenario. Then, they would have to decrypt the file, which is extremely difficult---if not impossible---without the encryption key. Then, the hacker would have to do all this again to access the next file.

So, there you have it, the decentralized cloud in a nutshell. If you're interested in becoming a Node Operator, please visit [www.storj.io](http://www.storj.io). And, if you're interested in trying Tardigrade for yourself, head on over to [www.tardigrade.io](http://www.tardigrade.io).