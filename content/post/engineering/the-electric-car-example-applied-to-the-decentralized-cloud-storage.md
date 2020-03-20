---
title: The Electric Car Example Applied to Decentralized Cloud Storage
date: 2020-03-20T19:57:03.265Z
image: /blog/img/blog-storj-electric-car-example.png
categories:
  - engineering
authors:
  - Ben Golub
draft: false
---
This week, Storj labs is excited to announce the production launch of Tardigrade, the industry's first enterprise-grade, economically sustainable, decentralized storage service.

We are really proud of our 99.99999999% durability, 99.95% availability,  S3 compatibility, and upload/download speeds that are on par (or better) than the cloud providers. We're proud of the fact that we're able to price at a fraction of the price of large cloud providers while providing attractive economics to Storage Node Operators and partners, and setting ourselves up for economic sustainability as well. And, we are exceptionally gratified we've done this entirely on decentralized Nodes, with a zero-knowledge, end-to-end encrypted architecture that delivers on the security, privacy, economic, and resilience promises of decentralization.

However, the purists in the community (and in Storj as well), will correctly point out that we're not 100% decentralized with regard to Satellites. While Satellites are highly distributed and highly redundant, they're not fully decentralized within the Tardigrade network. We intend to make them fully decentralized over time, but this was a conscientious choice to go to market with this intermediate stage first.

A few thoughts on why:

#### Pick Two! (For Engineering Projects Generally)

You may be familiar with the engineering dictum: you can be fast, you can be cheap, and you can be good---but you can't be all three. You have to pick two.

<img src="/blog/img/ec1.png" width="40%"/>

There's a long list of engineering projects that have failed (or were never completed) because the project leaders tried to meet all three factors simultaneously, and ended up succeeding at none.

#### Pick Two! (For Electric Cars)

A similar scenario played out in the electric car industry a decade ago. Everyone wanted a car that was affordable, had long ranges between charging, and was all-electric. But, it turned out that it was impossible to fully meet all three factors.  You had to pick two. And, you had to pick the correct two.

<img src="/blog/img/ec2.png" width="40%"/>


Tesla, for example, initially decided to focus on being all-electric and delivering a long-range between charges. When Tesla introduced the all-electric roadster in 2008, it had an impressive  >320 km of range and was 100% electric. But, at a starting price of over $120K, few could afford it. Less than 2,500 roadsters were sold. However, the Roadster succeeded as a proof of concept and succeeded at generating interest. Over time, of course, Tesla used the learnings from the Roadster to produce more affordable and practical 100% electric cars, such as the Model S, and Model 3. The Model 3 (at a ~$40K list price) sold over 300,000 units last year.

<img src="/blog/img/ec3.png" width="40%"/>

Toyota and others took a different approach. They created cars (e.g. the Prius, plug-in hybrids) that were affordable and had nearly unlimited range, but achieved that range by not depending 100% on the battery. These cars delivered many of the most important fuel economy and environmental benefits of 100% electric cars, but weren't 100% electric. However, with an MSRP of ~$22K, the initial Prius model helped create a line that has sold millions of units (over 500K in 2008, the year the Tesla Roadster launched), and helped Toyota and others fund moving towards 100% electric.

<img src="/blog/img/ec4.png" width="40%"/>

Both Tesla and Toyota were, in my opinion, successful approaches. Both now have reached the point where they have long-range, all-electric, and (relatively) affordable offerings. But, both had to make some compromises on one of the factors in the early days.

By contrast, there were many failed approaches in the electric car industry. These included a plethora of relatively affordable, all-electric vehicles that had impractically short ranges (<15 km) and couldn't be used as a primary vehicle by most consumers. Other approaches failed to deliver sufficiently on any of the three factors (e.g. those that relied on non-existent networks of chargers or battery replacement stations to provide range).

<img src="/blog/img/ec5.1.png" width="40%"/> <img src="/blog/img/ec-5.2.png" width="40%"/>


#### Pick Two! (For Decentralized Storage)

In building a decentralized storage network, we faced a similar set of choices. For us, the three factors are:

1. being economically sustainable
2. being enterprise-grade (performance, scalability, durability, service level agreements, etc.)
3. being decentralized

Because this is a market-based network, the economics have to work for users, Storage Node Operators, demand partners, and network operators alike. This is a two-sided marketplace, and we need both supply and demand to work to be sustainable. As an analogy, ride sharing companies need to set prices low enough to attract riders, but high enough so that the amount shared with drivers makes driving attractive. Similarly, we need to price attractively to storage users, but preserve enough margin to make being a storage node operator work.

To gain broad adoption and demand, of course, the service can't just be inexpensive. The service has to work for enterprise apps and users, delivering levels of durability, performance, etc., that are comparable to or better than centralized cloud storage. If we want to move beyond the early adopters and dApp enthusiasts, we need a service that is enterprise grade and compatible with existing object storage apps.

Finally, of course, we want to deliver on the full decentralized vision, where there are no single points of failure, robust privacy, zero-knowledge, and full user control. 

<img src="/blog/img/ec6.png" width="40%"/>

A lot of the prior attempts at decentralized storage (including our own V2 network), failed to deliver fully on at least two of the three factors. For example, many have created impractical or unusable networks in the service of being 100% decentralized. These networks are interesting, but have failed to attract large numbers of users or grow beyond a few terabytes, and most have yet to exit alpha or beta.

When we began planning V3/Tardigrade, we believed that we needed to fully meet the Economically Sustainable and Enterprise-Grade factors to be viable. We believed that we could deliver significant user value by having a largely (but not 100%) decentralized architecture. I guess you could say that we chose the "plug-in hybrid" path for our initial Tardigrade launch.

<img src="/blog/img/ec7.png" width="40%"/>

We talked extensively in other posts about[ being enterprise-grade](https://storj.io/blog/2019/11/measuring-production-readiness-using-qualification-gates/) and how we deliver our [economics](https://storj.io/blog/2019/11/announcing-pioneer-2-and-tardigrade.io-pricing/). Our approach to Satellites enabled us to deliver those factors and deliver them far more quickly. But, how decentralized are we? And, how close are we to delivering on the decentralized vision?

#### How Decentralized are Storj and Tardigrade

Let's start with what is decentralized about the system:

**Nodes:** Tardigrade is fully decentralized from a Storage Node perspective, delivered on a network of Nodes that are independently owned and operated by over 6,000 individuals and companies in over 85 countries. The network is delivering over 9 9s of durability, 99.95% availability, and exceptional performance due to this structure. Node reputation is determined algorithmically, and we can withstand the loss of huge numbers of Nodes (including outages caused by widespread power outages and natural disasters) without compromising file durability. We can withstand Nodes run by bad people, incompetent people, and byzantine behavior without compromising security, durability, or performance. And, this architecture supports economic empowerment and sustainability. Of course, the Storage Node code is open source. Being open source is critical to any decentralized system.

**Users:** Anyone can use the system, from almost any location, paying in either token or fiat. The system has zero-knowledge and end-to-end encryption, so user data cannot be mined by anyone or shared without fine-grained user permission. Of course, the code is open source,

**Payments:** All payments can happen transparently leveraging blockchain. All Node Operators are paid using the STORJ ERC-20 token, which is delivered on top of the Ethereum network. Those who pay in STORJ token receive a bonus of 10% on top of their deposited amount.

Well, if we're really decentralized for Nodes, users, and payments, where are we not fully decentralized? The answer is that our Satellites are largely, but not 100%, decentralized.

**Satellites:** The Satellite code is open source, supporting the creation of storage networks that are completely separate from Storj Labs.

However, our current Tardigrade network depends on a redundant, distributed set of Satellites that are today all run by Storj Labs. We have gone a long way to go in order to make sure that these Satellites are as decentralized as possible. The Satellites are multi-server instances located in multiple locations around the world, with industry best practices on uptime, backups, etc. A Satellite compromise would cause very little damage in terms of security, as Satellites never hold encryption keys and have only limited (and client-side encrypted) metadata. Similarly, today, Satellites have been designed to enable loss of multiple instances (e.g. chaos monkey)  without impacting availability. If an entire data center is lost (e.g. chaos gorilla), availability will suffer, but durability won't. Inherent to the design is that no one—not even Storj labs—can mine or see user data.

In the near future, we'll enable partners to operate Tardigrade Satellites. And, our midterm roadmap includes enabling failover between Satellites. We certainly hope that the success of the Tardigrade network will encourage others to set up non-Tardigrade Storj-based networks.

Ultimately, of course, we want to progress to the point where Satellites can be run by any competent operator and be part of the decentralized network, much as any router or bridge can be part of the Internet.

#### Conclusion

Ultimate, we feel that we have made the right choices going into this important launch. We've delivered an enterprise-grade network, with sustainable and attractive economics, and that delivers almost all of the benefits of decentralization to users and Storage Node Operators. We've still got a ways to go, but we hope that history and our users will prove us right.