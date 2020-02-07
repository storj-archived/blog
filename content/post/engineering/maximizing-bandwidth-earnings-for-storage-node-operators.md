---
title: Maximizing Bandwidth Earnings for Storage Node Operators
date: 2020-02-07T15:34:04.393Z
image: /blog/img/blog-bandwidth-limits.png
categories:
  - engineering
authors:
  - Tikh Bana
draft: false
---
Good news, we're just 4-5 weeks away from our production release! Clients, we're ready for you to push the boundaries of our resilient, reliable distributed storage service. Storage Nodes Operators will definitely see an influx of data flow onto your hardware!

Opening the floodgates of our network is something we're very excited about and we hope you are too. However, there are a few important implications we've been researching and working out that we want to share with you. First, we can't confidently predict how much storage or bandwidth (egress) is going to be used at launch. Also, we can't predict how popular a file is going to be---this forces us to think about two very important questions:

What do we do when files become incredibly popular on the network and are constantly being downloaded? For example, a 1GB file downloaded 1,000 times would generate 1TB of data. Also, what does this mean for Storage Node Operators?

#### Looking: Exploring what bandwidth looks like for current Storage Node Operators

We first defined the problems and hypothetical solutions. In the current state of the network, if a file becomes popular, Storage Node Operators storing those files could hit their bandwidth limits. If they do, we can do one of three things:

1. Stop the Tardigrade users from downloading the files they are storing on the network 
2. Keep serving the file, potentially causing Storage Node Operators to exceed their bandwidth allocation
3. Move the popular files to new nodes

We want to support all files (non viral and viral) but we do not want to max out Storage Node Operators bandwidth. However, we also don't have an accurate understanding about what bandwidth capacity looks like on the network. More importantly, we don't know who has  unlimited bandwidth. Users are having to input numbers, which range from 1TB to 9999999999 TB.

We conducted a survey to learn more about bandwidth capacity. We reached out to 1000+ Storage Node Operators and heard back from ~650 in 57 countries. We learned the following:

* The overwhelming majority (~70%) of Storage Node Operators have unlimited bandwidth.
* The overwhelming majority (~90%) of Storage Node Operators are "absolutely" on board with going over their specified bandwidth allocation.

#### Understanding: Unlimited bandwidth and its implications

Storj Labs and Storage Node Operators ultimately have one goal---ensuring we can create an experience for developers and end users that will be loved. Why? This puts more data on the network, which means:

* More data stored on Storage Nodes
* More bandwidth used on Storage Nodes 
* Which ultimately means bigger payouts

What keeps us from achieving this is having undesirable end-user experiences. When files are really wanted or needed, limiting access to them doesn't create a good user experience. Upset clients, developers, and other end users will likely no longer want to use this storage service. If end users are unable to download files when they want or need them, the service becomes far less useful and they'll no longer trust it for mission critical data. To an end user, blocking access to a file is very similar to losing a file.

However, we know most Storage Node Operators have unlimited bandwidth and are okay with exceeding their bandwidth allocation. This is good news for our clients and their user experiences.

#### Making: To stop access or not?

We need to make some decisions and we've concluded that we have two options:

**Option 1: If a file becomes viral, we simply stop serving it.**

* Pros:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Prevents bandwidth overage for Storage Node Operators

* Cons:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Bad experience for developers

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Less usage for Nodes because we're not maximizing their full potential

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Possibly lost business from frustrated users

**Option 2: If a file becomes viral, we do our best to keep serving all the bandwidth we can, best utilizing the Nodes on the network.**

* Pros: 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Maximize Storage Nodes' full potential

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Better experience for developers and their end users

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Better performance than competition like AWS, etc.

* Cons:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-   Possible bandwidth overage for Storage Node Operators

If many Nodes have unlimited bandwidth and are okay with exceeding their bandwidth allocation, we should do our best to maximize that bandwidth for our Nodes and for our customers. So, we ended up choosing solution two---we felt it was the logical choice given our goals.

#### Concluding: What does this mean for Storage Node Operators?

We will no longer require specifying bandwidth allocation. We will simply serve files and do our best to maximize Node potential. We will also do our best to most intelligently maximize the bandwidth of all Nodes (NOT just running up bandwidth like crazy), so no need to worry. And finally, more data and bandwidth usage is coming soon!
