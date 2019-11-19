---
title: Measuring Production-Readiness Using Qualification Gates
date: 2019-11-19T10:13:00.000Z
image: /blog/img/gates.png
categories:
  - engineering
authors:
  - Ben Golub
draft: false
---
So, you’re about to launch a product that will be used for business-critical use cases. Everyone speaks about being “production-ready,” and “enterprise-grade.” How can you make those vague concepts concrete?

There is an old saying that "You never get a second chance to make a first impression." In the enterprise storage world, the corollary is: “You never get a second chance to be trusted with someone’s data.” With Tardigrade, we are asking users to consider storing production data on a decentralized service. So, what does it mean to be "production grade" and how can you measure if you've achieved it?

To measure whether your new service is ready for the world to start using is not as easy as it sounds. You have to answer a number of questions, including but not limited to:

* Who is the intended user and what are the intended use cases? 
* Is the product easy for your intended user to incorporate into their environment? 
* Is the product comparable to or better than existing alternatives? 
* Does the product deliver rigorously measurable performance and reliability? 

What may be production-grade for one person might not be production-grade to another. But what’s clear is that the concept of being production grade goes far beyond delivering a specific amount of code or features.

When we set out to build a new type of cloud storage, we knew it would be a challenge. We needed to ensure the highest levels of performance, reliability and resiliency straight from the beginning. People aren’t forgiving when it comes to data loss. (Surprise!) To measure whether our decentralized cloud storage solution has met the needs of our customers and has the performance and durability we can stand strongly behind, we created a series of metrics we can measure that are important to our platform, our company, and our community of developers. 

We call these metrics “launch gates” and for us to enter a new milestone—from Alpha to production—each gate must be achieved. Today, we announced our Beta 2 (Pioneer 2) release, which is our final milestone before our production launch in January 2020. 

Here are the details on where we currently are, how it compares to our Beta 2 launch gates, and what we need to do to reach production. 

<img src="/blog/img/launch-gates-beta-2.png" alt="Beta 2 Updated Launch Gates" width="100%"/>

#### Availability

Our availability measure is a full-stack end-to-end measurement of all of our systems being responsive and performing requested operations. We do this by uploading and downloading 10MB files. We test a randomly selected segment for each Satellite every minute. We already had good availability for the last few months, but after some exciting changes to our protocol, architecture, and operational processes 3 weeks ago, we have seen a success rate of 100%. If a file fails an availability check, it doesn’t mean the file is gone (we’ve never lost a file); it just means a second attempt is necessary to download it. Our production goal is 99.995% availability (i.e., the service should only be unavailable for two minutes in any given month, or about four seconds per day) so once we have sufficient statistical history on our new architecture and process, we feel confident we can achieve this.

#### File Durability

File durability measures the likelihood that one of your files could go missing. This is especially challenging to calculate when you’ve never lost a file. We are very proud of the fact that, since our cutover to version 0.1.0 seven months ago, we haven’t lost a single file. Some might think  we could claim 100% durability. However, our meticulous data scientists remind us that, statistically speaking, we need to have had billions of file-months of 100% durability in order to state, with 95% confidence, that we’ll have 99.99999999% durability. So, applying our current level of 2 million files at 100% durability for seven months, the statistical model yields 99.9999% (6 9s) durability. (i.e. The statistical likelihood of losing a file is 1 in a million, far less than the chances of being struck by lightning this year.)  For production, we are aiming to get to 99.9999999% (9 9s) durability, while our long-term goal is to reach 11 9s of durability, but we will need to maintain the current level of 100% durability for significantly more files for at least one year to be able to officially make that guarantee. 

Now, you may be wondering how we achieve this level of durability. Each file on the network is encrypted (using keys only held by the user uploading the data) and then divided into 64MB chunks called segments. These segments are then each encoded into 80 pieces using Reed Solomon error-correcting code, which enables us to rebuild the segment from any 29 of its 80 pieces. Each of those 80 pieces is stored on a different Node, with independent power supply, different geographical locations, different operators, and different operating systems. The system as a whole continually monitors those Nodes for uptime and issues cryptographic audits to ensure that the Nodes are storing what they claim to be storing. The system knows, for every single segment, how many of those 80 pieces are currently on Nodes that are online and have passed all required audits, Whenever a segment drops below a number of pieces equalling or exceeding the repair threshold (currently 52 based on statistical models), the system rebuilds those missing pieces and sends them to new Nodes. As you can see from our segment health distribution chart below, we’ve never had a segment drop below 50 of its 80 pieces. To lose a segment, we’d have to drop below 29. As we add more Nodes to the network, this should continue to improve. 

<img src="/blog/img/segment-health-over-time-beta-2.png" alt="Segment Health Over Time" width="100%"/>

#### Upload Performance

To measure upload performance, we calculate the time it takes to upload a 10 MB file and then we repeat this test 250 times. We then compare the results to AWS, which is generally considered the gold standard for centralized cloud service providers. We not only look at the median time to upload, we also look at the long tail performance. Across a broad range of file sizes and locations, we are comparable to AWS. For a Beta, that’s pretty encouraging. Moreover, we have a really tight distribution. Our 99th percentile upload time is only 0.37 seconds slower than our 50th percentile time (i.e. the slowest 5 files uploaded almost as fast as the 50 fastest), versus a 5.35 second differential between the 50th and 99th percentile on AWS. This consistency and predictability is due to the inherent benefits of decentralization and should only get better as we add more Nodes and continue to add Nodes that are distributed closer to the end-users (ultimately, the speed of light becomes a factor).

![](/blog/img/beta-2-upload-performance.png)

The above results are uploading from a location in Toronto (i.e. Eastern US) in conjunction with a Satellite in Iowa (i.e Central US).

#### Download Performance

We measure the time it takes to download and reconstitute a 10 MB file. We repeat this test for 250 times, and then compare the results to AWS. Across a broad range of file sizes and locations, we are comparable to AWS. We’re especially excited about our tight distribution. Our 95th percentile time is only .26 seconds slower than our median time. (i.e. the slowest 5 files uploaded almost as fast as the median). Again, this points to the power of decentralization and should only get better as we add more Nodes and continue to add Nodes that are distributed closer to end-users.

![](/blog/img/beta-2-download-performance.png)

The above results are downloading to a location in Toronto (i.e. Eastern US) in conjunction with a Satellite in Iowa (i.e Central  US).

#### Proven Capacity

Proven capacity measures the total available capacity shared by all of our Storage Node Operators. Our Storage Node Operators have offered up over 15 PB of capacity. Using very conservative statistical models, we can state with a 95% confidence that we have at least 7 PB. 

Note that while we believe the capacity of the network is significantly higher, we hold ourselves to this more conservative, proven number. This number is more than an order of magnitude lower than the V2 network, which had a capacity of 150 PB at its peak. While we have several partners and Beta customers with several petabytes of capacity, we’re aiming to grow the network more gradually, so that we generally only have about three months of excess capacity at a time. This helps us ensure that all Nodes are receiving economically compelling payouts. 

#### Number of Active Nodes

This is the number of currently Nodes currently connected to the network. The number of active Nodes in the table above (over 2,956 Nodes now), excludes any Nodes temporarily offline, any Nodes that have voluntarily quit the network, and any Nodes that have been disqualified (e.g. due to missing uptime or audit requirements). Our production goal is 5,000 Nodes—still a fraction of the V2 number. Once a Node is vetted, if it ceases to participate in the network, it contributes to our vetted Node churn metric (see below). 

#### Vetted Node Churn

Our current vetted Node churn (excluding probationary Nodes) is 1.18% for the last 30 days. Our Beta 2 gate is 3%, and our production gate is 2.0%, so we’ve already hit this production-level metric. Our system is very resilient to having any individual Nodes (or even a significant percentage of Nodes) churn. However, performance, economics, and most statistics all do better as we bring average Node churn down.

#### Other Gates

We have a wide variety of other gates. These include gates around code quality and test coverage, user and storage Node operator set up success rates, various capabilities, payment capabilities, peak network connections, and more. We also have gates around enablement of non-Storj Labs Tardigrade Satellites, and are aiming to be [“Chaos Monkey”](https://en.wikipedia.org/wiki/Chaos_engineering)  and even “Chaos Gorilla” resilient before production.We hit all seven gates for Beta 2, as well as an additional two gates for production. For the past 30 days, we’ve had 99.96%% availability on our service, which includes 9 deployments all with zero downtime. 

#### Measure What Matters

When you’re trying to measure something that’s somewhat nebulous like being “enterprise-grade,” try distilling the goals down to their core parts and measure what matters most to you, your business, and your customers. If you can do that, you can measure your progress and continually make improvements to your offerings. 

We’ll continue to measure the performance of the network over the next several weeks and if everything goes according to plan, we’ll be in production in January 2020. Stay tuned for further updates. You can also [sign up](https://tardigrade.io/waitlist/) to try out the network for yourself! Everyone who signs up ahead of production will receive a credit worth 1 terabyte of cloud storage and 333 of download egress on Tardigrade.
