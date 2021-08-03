---
title: Announcing Pioneer 2 and Tardigrade.io Pricing
date: 2019-11-18T21:05:30.246Z
image: /blog/img/beta2-pricing.png
categories:
  - business
authors:
  - Ben Golub
draft: false
---
Cloud storage prices haven’t changed much in the past 5 years. They’re about to! Today, we’re pleased to announce pricing for our Tardigrade Decentralized Cloud Storage Service. Since our founding, our goal has been to achieve pricing that is half the price of centralized cloud storage providers, or less. And, to do so in a way that is economically sustainable for us, for storage node providers, and for our network of partners. Today, we’re pleased to announce Tardigrade pricing: 

* **Static storage** is charged at $10 per terabyte per month, or $.01 per gigabyte. Storage is calculated in “terabyte months,” which is a prorated calculation of how much storage is used throughout the month, broken down by hour. Storing one terabyte for 30 days, two terabytes of data for 15 days, or three terabytes for 10 days, would each be the equivalent of one terabyte month. 
* **Download bandwidth** is charged at $45 per terabyte, or $.045 per gigabyte, of bandwidth consumed. Storj does not charge for upload bandwidth, so uploading files to the network doesn’t incur any costs. Download bandwidth measures the transfer of data from a Storage Node Operator (or Host) to an Uplink. We’re also offering discounts if you decide to leave the network, so customers don’t feel locked in. That’s how confident we are that you will love Tardigrade.  

Since our rebuild, we’ve aimed to make our list prices one-half of the centralized, legacy providers. At these prices, we are officially less than half of the average price starting list price of our competition for storage (our $10 per terabyte versus their $22 per terabyte) and bandwidth (our $45 per terabyte versus their $99 per terabyte). And just like them, Tardigrade is also offering discounts based on bulk pricing. Tardigrade also comes with added features that cost extra with current offerings, like encryption and multi-zone redundancy.

\[Insert cloud storage graphic with Tardigrade pricing in relation]

We’re really excited to see what our customers can achieve with affordable, private, secure, decentralized cloud storage.

This pricing news comes in conjunction with our Beta 2 (Pioneer 2) release, which means we’re nearly to our production release, which is now slated for January 2020. Check out our updated roadmap. 

With this announcement, we’ll be accelerating invites to our waitlist of 14,000 developers. If you’re on the waitlist, keep an eye out for your invitation to join the network. If you’re not on the waitlist, [sign up](https://tardigrade.io/waitlist/) to secure your 1 terabyte of free storage and 333 gigabytes of bandwidth for a month. Anyone who signs up between now and our production launch will be eligible for the offer. 

Our Beta 2 release delivers enhanced performance across all of the metrics we track for our service level agreements, including availability, durability, performance, and retrievability. Here’s how each of these metrics has improved: 

* **Availability:** The Tardigrade platform has now achieved 99.97 percent availability, which measures the system’s ability to download a file and the first attempts to do so. Our target metric for Beta 2 was 99.95 percent availability. For production launch, we’re targeting 99.995 percent availability.  
* **Durability:** Since launching the platform into Alpha (our Vanguard v0.1.0 release) in April 2019, Tardigrade has never lost any of the approximately 2 million files stored on the network. While the service has been operating at 100 percent durability, we feel we can currently make a statistically significant claim of 99.9999 percent (6 9s) durability, meaning that the chance of losing a single file (one in a million), is far less than your chances of being struck by lightning this year. For production, we’re targeting 99.9999999 percent (9 9s) durability. Our goal is to give our developers a service level agreement of 11 9s of durability, however, we will need to maintain the current level of 100 percent durability for several million more files for at least one year to be able to officially make that claim.  
* **Performance:** Tardigrade upload and download performance is now on par with, or superior to, major centralized cloud storage providers like Amazon S3. At production launch, Tardigrade will deliver performance that is faster than legacy providers and much more consistent. The great thing about Tardigrade’s performance is consistency; if you’re downloading 100 files, a user would experience less than a half-second difference between the fastest and slowest download, versus several seconds compared to centralized cloud storage providers. This is due to the platform’s decentralized architecture.  

These are the three main metrics we’re tracking for our service level agreements. For each milestone along our road to production, we have a series of 16 “gates” we use to ensure that the desired performance levels are being achieved. Having features is simply not enough. Other gates we track include total number of vetted storage nodes, which is currently at 3,000; number of active Tardigrade users; Node churn, which is currently at 1.5 percent per month; total capacity, which is now between 4.3 petabytes and 7 petabytes, already higher than our 6 petabytes for production launch; and several other metrics like “chaos monkey” tests, on-time payments, and security and software audits. For more info on these gates, check out our other blog post that went live today that goes into detail on each of these metrics. 

As I mentioned, reaching production is more than just delivering code. We need to ensure that our customers’ data is accessible, secure, and protected. We also need to ensure that we have enough capacity to meet demand, given we can’t just spin up some more server racks if demand exceeds supply. To do these things, we need everybody’s help—especially yours. 

If you’re a developer, join the waitlist and actually try out the platform! You can use our S3 gateway to start using us with existing S3 compatible applications with only a few clicks. We have a native library with several popular bindings (insert list) for those who want to take advantage of some of our advanced features, such as macaroons. \[insert link]. And, if you’re into IPFS, you can also upload files through our [IPFS gateway](https://storjipfs.com/). If you’re not a developer, you can still benefit by setting up a storage node. If you already have a storage node set up, you can request another token for a second storage node by visiting our sign-up page or you can tell your friends and have them set up a storage node. We now support Windows (with an installer wizard) in addition to Linux, so setting up a node is easier than ever.  

Thanks for being a valued member of our community. We hope you’re excited to see our production release as we are! Watch for it in a few weeks.
