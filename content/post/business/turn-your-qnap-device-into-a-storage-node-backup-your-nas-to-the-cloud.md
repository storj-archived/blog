---
title: Turn Your QNAP Device Into a Storage Node, Backup your NAS to the Cloud
date: 2020-05-14T13:16:03.308Z
image: /blog/img/qnap-blog.png
categories:
  - business
authors:
  - John Gleeson
draft: false
---
Since we allowed people to start setting up Storage Nodes on the V3 network, we've had our community of NAS users ask us for two things:

1. **How can I turn my excess NAS capacity into a Storage Node?** 
2. **How can I backup my NAS to decentralized cloud storage?**

Today, we're pleased to announce users can now do both of these things with their QNAP NAS devices.

Home NAS devices make for great Storage Nodes since they're always on, they're already connected to a home network (and presumably the internet as well), and they're designed to operate efficiently when serving up files. Most people who operate NAS devices have excess HDD capacity as well. Operating those drives at full capacity rather than half means extra revenue without any additional costs since it costs nothing additional to operate a full NAS vs one that is mostly empty.

Users can then take the revenue they make from operating a Storage Node and use that to purchase cloud backup services from Tardigrade. Users can now back their devices up to our decentralized cloud storage service, with early access to our Tardigrade S3 Gateway for QNAP. This means you could get off-premise, multi-region, automatic cloud backups for your important files for essentially free.

### An Example For a NAS User

Let's look at Kat's NAS device. Kat has a 4-bay NAS device with four 2TB hard drives, for a total capacity of 8TB. Let's say Kat has 1TB of important files, like family photos, home videos, files for her business, and her most prized digital possession: an ample collection of cat pictures. Kat also has 1TB of videos for her Plex server that are less important and don't need to be backed up. This leaves her with 6TB of unused storage capacity. By sharing that 6TB of capacity with the Storj Network, Kat can generate $9 of revenue each month ($1.50 per terabyte month) for just static storage, once her device is filled.

On top of that, Kat will earn $20 for each terabyte of download bandwidth that is consumed when users download their files from Kat's devices. Assuming that 1/10 of the files she's storing each month are downloaded, she will earn an extra $12 a month, for a total of $21 per month. That's enough to back up all of her important files, with another $11 left.

This is just one example of a NAS users' set up as a Storage Node with backups to Tardigrade. Every NAS device and environment is unique.

### Setting Up a NAS Storage Node on the Storj Network

To set up a Storage Node, QNAP users can download the Storage Node app from the Storj Labs [app marketplace](https://tardigrade.io/connectors). After that, they'll follow a series of prompts to have their Nodes up and running in a matter of minutes.

Once their Node is connected to the Storj Network, it will be sent encrypted pieces of data. All data uploaded to the Storj Network is end-to-end encrypted and divided into 80 pieces---only 30 of which are required to rebuild the file---which are then spread across the network, each on a different Storage Node with a unique power supply in a different geographical location.

At the end of each month, the NAS user would receive their monthly payment in the form of STORJ tokens, our ERC-20 utility token. By paying Node Operators with STORJ tokens we can pay Operators around the world without requiring them to pay currency conversion fees and other costs associated with international payments. 

Again, Storage Node Operators can also use their STORJ tokens to also purchase storage services on Tardigrade, backing up their NAS device to the cloud.

### Backing up a NAS to the Cloud using End-to-End Encryption

NAS users can easily backup their QNAP devices to Tardigrade using our Tardigrade S3 Gateway and [simple documentation](https://documentation.tardigrade.io/how-tos/backup-on-qnap), allowing them to take advantage of the unique security and multi-region architecture of the decentralized cloud storage service. All files uploaded to Tardigrade are end-to-end encrypted by default, so there is no complicated process to ensure only you can access your data.

After installing the Tardigrade S3 Gateway, NAS owners can select Tardigrade as a storage space inside HBS 3, and add their Tardigrade login credentials. It's a very simple process and users who backup their data to Tardigrade will be able to take advantage of the company's enterprise-grade service level agreements, including 99.9999999% durability, performance on par or better than Amazon S3, and over 99.95% availability. Because Tardigrade is a decentralized cloud storage service, QNAP users will also benefit from its superior privacy and inherent cross-geography redundancy that comes with decentralized storage.

We look forward to seeing how QNAP users can better utilize their devices as Storage Node Operators. We're also proud to be helping these users securely store their important files. If you run into issues setting up your NAS device as a Storage Node on the Storj network, or backing up your data to Tardigrade, [please let us know on the forum](https://forum.storj.io/) and we'd be happy to help get you sorted.