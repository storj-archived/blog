---
title: Easy Cloud Backups with Duplicati and Storj Labs
date: 2020-09-09T17:20:06.767Z
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
We're excited to announce another native product integration to our community of Storjlings!

Duplicati is a popular, easy-to-use, open source GUI that makes it easy to back up your data to the decentralized cloud. Because Duplicati can be used on any Linux, Windows, or macOS device, the Storj Labs community can now easily store encrypted backups of their personal data to Tardigrade and take advantage of the many benefits of decentralization.

Duplicati has a strong and active community [on GitHub](https://github.com/duplicati/duplicati), and is a fan-favorite of many security professionals due to its open-source, auditable nature, and the product's emphasis on encryption and reliability.

"The Tardigrade integration for Duplicati is a great way for MSPs to easily, efficiently, and performantly back up their customer data," said Kevin Mitchell, CEO of Marrs Data. "Due to the distributed nature of the platform, Tardigrade is a great storage destination for disaster prevention and recovery, decreasing the global recovery time objective for backups significantly versus legacy providers."

The newest version of Duplicati has implemented a native integration with Tardigrade that simplifies the process of backing up data to the decentralized cloud. Users simply enter their configuration information and can start scheduling backups at whatever cadence they prefer.

![](/blog/img/duplicati-announcement.png "Tardigrade is now supported as a native storage destination")

Tardigrade is now supported as a native storage destination

In this post, we'll give a 500-foot overview of the tool, and how it enables you to easily incorporate a more resilient, secure, and non-correlated backup solution to upgrade your disaster prevention and recovery practices—no matter if you're backing up your device at home or thousands of devices across your organization.

### A GUI based backup tool for simple, encrypted backups

Duplicati is an easy-to-use, intuitive GUI that makes it easy for non-technical users to harness the power of the decentralized cloud.

The application is configured by a web interface that runs in any browser (even mobile) and can be accessed—if you like—from anywhere. This also allows users to run Duplicati on headless machines like a NAS (network-attached storage) device.

![](/blog/img/duplicati-announcement-2.png)

Duplicati is very easy to install with a few clicks, with support for leading operating systems like macOS, Windows, Debian, Fedora. The application is easy to install in a Docker container.

Check it out here: <https://www.duplicati.com/download>.

### Duplicati offers native compression, deduplication, and block-size configuration, minimizing costs

Three key features of Duplicati are native compression and deduplication, and block-size configuration.

Through the tool, all backup data is compressed before it is encrypted and uploaded. Duplicati supports Zip/Deflate or 7z/LZMA2 compression. For performance reasons, Duplicati detects files that are compressed already and adds those as they are to the Zip or 7z archives (such as media files such as .mp3, .jpeg, or .mkv files which contain well-compressed data already).

Additionally, the software deduplicates backups to minimize the total amount of storage resources consumed.  Duplicati uploads a full backup initially and stores smaller, incremental updates afterward to save bandwidth and storage space.

Duplicati was designed from scratch for backups. It is not only data efficient but also handles network issues, like timeouts and retries, within the client itself.

Finally, on Duplicati, data can be packed into 64mb blocks, which is optimal for the decentralized cloud, as it matches the [64mb segment size on Tardigrade](https://github.com/storj/common/blob/f9cddf66b4be/storj/segment.go), optimizing the performance for uploads and downloads.

Through implementation of compression, deduplication, and matching block-size, Duplicati reduces the cost of backup to a minimum.

### Faster Data Transfers result from distributed parallelism

With Duplicati, Tardigrade users with a faster connection can simply increase the number of parallel transfers and max out their upstream bandwidth.

This means that the Recovery Time is decreased as well.



![](/blog/img/duplicati-announcement-3.png "Duplicati makes it easy to max out your network for optimal upload/download performance")

### Tardigrade and Duplicati enables a faster, more resilient disaster prevention solution

Due to the inherent benefits of the decentralized cloud, Tardigrade is an optimal solution for DecOps to store their machine backups and snapshots for their devices.

Tardigrade is resilient.  Data is encrypted, erasure-coded, and spread across uncorrelated endpoints, making data loss, theft, or backup corruption (via bitrot) nearly impossible.

Tardigrade is also more globally performant than other centralized cold storage solutions—you can access and rehydrate your backup to anywhere with minimal latency—due to the globally distributed nature of decentralized cloud backup.

Finally Tardigrade is more economical than alternative providers.  Storage and bandwidth costs are a fraction of AWS, Microsoft, and Google, and there is no need for costly replications across regions that will balloon your cloud storage bills.

We look forward to seeing how our community and Duplicati users enjoy using Tardigrade and Duplicati together for more secure, performant, and resilient cloud storage backups.