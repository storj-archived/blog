---
title: PPE.Exchange Leverages the Decentralized Cloud for their Hyperledger and
  MongoDB Stack
date: 2021-01-13T16:12:35.799Z
image: /blog/img/ppe.exchange-and-tardigrade.png
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
PPE.Exchange uses decentralized cloud technology to solve pandemic driven issues by providing seamless technological solutions and promoting supply chain transparency.

The platform is a blockchain-enabled digital marketplace that facilitates the procurement of personal protective equipment from trusted manufacturers to healthcare providers. PPE.Exchange brings transparency and efficiency to the nationwide battle against COVID-19. The platform focuses on reliability, verification of vendors and their products to combat industry-wide friction points such as fraudulent products, price-gouging, and large minimum order quantities.

The company stores snapshots of their Hyperledger instance on the Storj Network using RClone and Restic for scheduled backups. Their platform also leverages MongoDB and the Storj Network as a mechanism for distributed database snapshot storage. PPE.Exchange has elected to store their core data snapshots to the decentralized cloud, streamlining point-to-point data transfers and making for a more robust, resilient, and efficient snapshot architecture for their marketplace software.

### Backing up Hyperledger Data

In a consensus-driven blockchain environment, data replicates between nodes, so the data isn't lost. But backing up configuration and data ensures a smoother recovery from corrupted data or other unpredictable failures. Storj presents an easy, economical, and highly resilient way to backup all of the data associated with a Hyperledger instance to the decentralized cloud.

### How it Works

To back up and share read-only access to their output, PPE.Exchange is using two of the native integrations with the Storj Network---[RClone](https://storj.io/blog/2020/04/announcing-tech-preview-availability-for-rclone-and-restic-on-tardigrade/) and [Filezilla](https://storj.io/blog/2020/08/private-multiregion-file-transfer-with-tardigrade-and-filezilla/).

### Using Storj's Decentralized Fast Sync To Build a More Resilient Platform Stack

PPE.Exchange has added an RClone command to the end of their bash script which automatically uploads snapshots of the chain state to the decentralized cloud, preserving it, and making it easier to transfer and recover.

 The command is simply one line, and looks like this:

`$ rclone copy dataset us-central-1:my-bucket`\
`$ rclone copy --progress ppeX/network/ storj:backups/snapshots/<date>`

To maximize their performance for the upload, PPE.Exchange uses the  '--transfers' flag to increase the number of cores.

### Using the Storj Network MongoDB Connector

The PPE.Exchange is also automating the backup of their data directly to the Storj Network.  

"We chose Storj as the destination backup of our Hyperledger Fabric network and MongoDB instance over alternative providers because we enjoy the benefits of enterprise-grade security backed by SLAs that Storj Labs provides through its secure and private service," said Russ Decker, Co-Founder at PPE.Exchange. "Because of Storj's decentralized architecture, our snapshots can be quickly accessed from wherever we download. At PPE.Exchange it is crucial every detail of each transaction is securely stored, the combination of blockchain and Storj provides an extremely resilient network enabling frontline workers to access verified PPE around the clock." 

The Storj Network can quickly be configured to store database backups and snapshots from MongoDB Ops Manager in just a few minutes, with literally every file protected by end-to-end encryption. 

![](/blog/img/ppe.exchange1.png)

Developers using MongoDB can now take advantage of the privacy, security, and reliability of the Storj Network right out of the box. Every file uploaded to the Storj Network has cross-geography redundancy by default, similar to a multi-region cloud backup architecture. MongoDB user's backups will always be accessible, and a single outage won't bring your operation to a full stop like it would when using a centralized cloud storage provider. 

Tardigrade backups are available everywhere, and, with almost immediate availability, developers can quickly retrieve their data from their MongoDB instance from anywhere in the world using the Storj Network. 

If you ever need to access your data, you're in luck because egress bandwidth is half the price of Google Cloud, Amazon S3, and Azure---because it's decentralized, it's even more affordable than centralized backup architectures, which end up being super pricey if you need to access your data. 

For more detailed information, explore the article from MongoDB below.

<https://www.mongodb.com/blog/post/cloud-native-enterprise-data-management-tardigrade>

### Storj COVID-19 Program - Helping Frontline Applications Achieve Their Goals

PPE.Exchange received support through the Storj Network COVID-19 Storage Program.

"PPE.Exchange's technology enables organizations across the US to access critical medical supplies," said Jake Deichmann, Co-Founder of PPE.Exchange. "It is essential our platform is running seamlessly, because with each transaction, we're enabling front line workers to do their jobs. We've partnered with Storj to make this happen and to ensure availability and security of our data."

The Storj Network COVID-19 Storage Program provides 1 free terabyte of both storage and bandwidth for one year to organizations researching or working to combat COVID-19.

If you're interested in applying, you can find more information here: <https://tardigrade.io/covid/>

### The Decentralized Cloud is A Better Way to Cache and Store MongoDB and Hyperledger Data

The distributed architecture of the network and end-to-end encryption on every file protects against attacks, improves reliability, increases download/upload speeds, and enhances performance compared to centralized cloud storage options.

Interested in developing against the decentralized cloud?

Get started here: <https://tardigrade.io/signup/>.