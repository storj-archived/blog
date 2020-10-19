---
title: Seven Ways You Can Use Decentralized Cloud Storage
date: 2020-10-19T14:24:44.321Z
image: /blog/img/blog-7things-1.png
categories:
  - business
authors:
  - Ben Golub
draft: false
---
Ever since we [launched Tardigrade](https://storj.io/blog/2020/03/general-availability-for-tardigrade-is-here/), the world's first decentralized cloud storage service, there's been a lot of talk about the benefits of decentralized cloud storage. For one, due to the nature of a decentralized cloud storage network, they're highly secure and almost impossible to hack. This means there will be fewer data breaches. Because each file is split into pieces, encrypted end-to-end, and those pieces are all stored on different Nodes, it's more private than centralized cloud services, like AWS. This end-to-end encryption is standard on every file, at no additional cost. Also, only you have the private keys to your data, so only you or those you grant access to can view your files. Another big benefit when using our Tardigrade service is our network of uncorrelated Nodes is spread out across the world—your data will always be available when you need it since it's unlikely for every Node on our network to go down. [See how decentralized files are on Tardigrade by downloading this file.](https://link.tardigradeshare.io/15CYbbCAnFyMjXZdZs8sVJ8JbGdCKjdaMCjhNKF937pUMikZnXCBDu6SeemVbQ1opJW257otj7SXFaM7DSEGf9Fm6LjtSPQycMXskWbsbWyNY6q6vetvhRY8TsBLKxuB5778sNfVHvnstGHRUB26cKNpZsnRjCXfzqyDLCB2Rd2euu3qf4d3sNFHKwrym9Ubf8ctbAUsQyruK7TJhFHVBGgQLfVDXnoHZo7CcGXDE1gxL27ac2u8YN1tj4vAGvTVy5e2V9mArg7wrJ3q25g9WwerDjScgQFwvPTABBjwyckH8dmH6cTyhqfgsf8UMj9gAc8ygJHbrroZkx3PpxeEvLVHpGvoWSQbyR7SDqdp1UYQ5gCG1T4nPoRrxjMHDCwgScEAAoBb7TJu5pmznEk6KEXb98oriJ1NU3Gh7oykbeQCKHMnwNd2e8W1NcMbFJN8TrWtpzDXafQSWDPEykJo)



Because of the many inherent benefits of decentralization, Tardigrade has seen significant adoption since launching, with more than 11,000 users and numerous integrations. Use cases around this adoption include:

1. File transfers across vast distances
2. Accelerating blockchain sync times
3. Log file streaming
4. Backup files on personal devices for added security/resiliency 
5. Secure database backups and snapshots
6. Video transcoding and streaming to create new, decentralized edge networks
7. Academic data sharing

In this blog, we want to highlight some of the most exciting things people and companies are currently doing with decentralized cloud storage to improve performance, keep data secure, and make files more accessible.

### File transfers across vast distances

As mentioned above, Tardigrade stores data in a decentralized manner. This makes the decentralized cloud ideal for transferring data all around the world. Your data will always be available because your file pieces are split and stored on 80 different Nodes, and only 30 pieces are needed to reconstitute your data. No more downtime due to outages. No more worry about losing data. No more bit rot.

We just launched a new integration with FileZilla, and they are currently putting Tardigrade to work to support data transfers from all across the globe. Read more about our integrations with FileZilla [here](https://storj.io/blog/2020/08/private-multiregion-file-transfer-with-tardigrade-and-filezilla/).

### Accelerating blockchain sync times 

Configuring and setting up a new mining node can take a while, and downloading the blockchain data is usually one of the biggest reasons it can take so long. It can take anywhere from 12 hours to one day to sync the full Ethereum Classic blockchain. If you use Tardigrade to serve the blockchain data, the data is dispersed across many Storage Nodes and downloaded in parallel. This makes it faster to sync the entire ETC blockchain, taking only 30-40 minutes---a 2,400% increase in performance. The NEM blockchain sync time was improved from 44 minutes to 2-3 minutes with Tardigrade.  

Read all about how [NEM and their partner IoDLT](https://storj.io/blog/2020/09/nem-and-iodlt-using-tardigrade-to-accelerate-mongodb-snapshot-distribution-and-storage/) are improving blockchain sync times. You can also read about [Ethereum Classic's performance improvements](https://storj.io/blog/2020/09/using-tardigrade-and-the-decentralized-cloud-to-speed-up-sync-times-for-geth/) as well.

### Log file streaming

Real-time log file streaming allows you to track and see what's going on with applications and websites, as it happens. By streaming log files from decentralized cloud storage, it allows log file analysis to be even faster, no matter if you're streaming data to a major metro, or the most rural places on the internet.  

Fastly recently integrated its log file streaming service with Tardigrade, which allows all Fastly users to enjoy real-time log streaming. By utilizing Tardigrade, Fastly users can rest easy knowing their data is safe, and encrypted. Plus, there's no downtime, and it's faster. To get started with the Tardigrade and Fastly integration, [check out the documentation](https://docs.fastly.com/en/guides/log-streaming-tardigrade). 

### Backup files on personal devices for added security/resiliency 

We all have important files we want to ensure are safe. Whether it's your kid's baby photos, your important financial or legal documents, or your digital library, everyone wants to keep their files and know no one else can access them. Not only can you be sure your files are private and protected with decentralized cloud storage, because every file uses end-to-end encryption, but you can be sure your data will never be lost. Tardigrade has yet to lose a file. 

Right now Tardigrade users can easily backup important files from any Mac OS, PC, or Android device using [Duplicati](https://storj.io/blog/2020/09/easy-cloud-backups-with-duplicati-and-storj-labs/), QNAP, [Rclone](https://storj.io/blog/2020/04/announcing-tech-preview-availability-for-rclone-and-restic-on-tardigrade/), [Restic](https://storj.io/blog/2020/04/announcing-tech-preview-availability-for-rclone-and-restic-on-tardigrade/), or [Uno](https://storj.io/blog/2020/06/cross-platform-uno-app-accessing-tardigrade/). So, if you want to be sure your personal files are nice and safe, now's your chance. 

### Secure database backups and snapshots

Almost every company has data it wants to keep private, safe, and most of all, protected. Much of that data lives in databases, and now you can backup those databases and snapshots to decentralized cloud storage. Because most database snapshots don't need to be accessed very often, decentralized cloud storage provides significant cost savings when compared to other leading cloud providers.

IoDLT's solution with NEM converts blockchain data to MongoDB for easier access and analysis. To read more about their experience, take a look at these two blogs [here](https://storj.io/blog/2020/09/nem-and-iodlt-using-tardigrade-to-accelerate-mongodb-snapshot-distribution-and-storage/) and [here](https://storj.io/blog/2020/06/storj-labs-partners-with-mongodb/).

### Video transcoding and streaming to create new, decentralized edge networks

Edge networks and content delivery networks are designed to store data close to where it's consumed. They're widely used by media companies to stream video at incredible speeds. As a direct result of how decentralized cloud storage stores data in more places than centralized networks, it can push edge networks even closer to the edge. Rather than stream a video from a server in a city or state hundreds of miles away, decentralized cloud storage can make it so you're streaming files from your very neighborhood.

VideoCoin is building decentralized video infrastructure that provides developers with video processing services that are simple-to-use and inexpensive. They're now using Tardigrade for video transcoding and streaming. Check out our overview to [learn more about using Tardigrade for edge networks](https://storj.io/blog/2020/10/video-transcoding-and-streaming-at-the-distributed-edge/).

### Academic data sharing

One of the main things helping academic institutions have such an impact on the world we live in is the important data they gather, share, and analyze. These datasets can easily reach the petabyte range. For reference, the average data center can be about 4 petabytes large. Because of how large they are, these datasets can be costly and challenging to store or backup, and even more expensive to transfer from point A to point B. 

Currently we have several educational institutions and research departments using Tadigrade to provide better accessibility to data for all their researchers. By storing their data on a decentralized cloud storage service, they can greatly accelerate the sharing and analysis of data. We also are providing free storage for any researchers or institutions dedicated to COVID 19 research, and we currently have over 80+ applicants. [Read more about our COVID-19 Storage Program](https://tardigrade.io/covid/).

### The future is decentralized

All of us at Storj Labs are super excited about the adoption we're seeing around our Tardigrade service and we look forward to accelerating growth as we refine the onboarding process and deliver new features. The examples listed in this blog are just a few ways people are utilizing the decentralized cloud, and we want you to experience the benefits of Tardigrade first hand. Interested in seeing how performant, durable, and secure Tardigrade is? [Create an account and get started](https://tardigrade.io/signup/).