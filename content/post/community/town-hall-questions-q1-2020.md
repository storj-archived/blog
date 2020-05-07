---
title: Town Hall Questions Q1 2020
date: 2020-05-07T17:04:30.772Z
image: /blog/img/qablog.png
categories:
  - community
authors:
  - Storj Labs Team
draft: false
---
Because of the COVID-19 crisis, we've taken a different approach for our Town Hall and Q&A. If you missed our Town Hall, [you can watch it on our YouTube channe](https://www.youtube.com/watch?v=KddzVRATT3k)l. Below are questions from our community members, and answers from the Storj Labs leadership team. Thanks to all those who submitted questions.

**1. Is it possible to have more Nodes (different storage, different IP address) registered under one email address?**

Yes. You may operate multiple Nodes under the same or different IP addresses. Each Node must meet the minimum requirements of course, and you need to make sure that each Node has different physical storage connected. You need to use the same wallet address for all of the Nodes that are operated by one person or legal entity. But other than that, nothing precludes operating multiple Storage Nodes.

We'll be simplifying the Node registration steps soon to eliminate the email-based registration. We still want an email from you for notices, but you won't need an email to create a Storage Node identity soon.

**2. If we want to create a web app then what will be the workflow? Normal workflow is:
\1. The user selects a file from the browser it will get uploaded to the web server first and then to the tardigrade server.
\2. In this case, uploading a file from the browser to the server, it will depend on ISP is it right?

Can we use file object for uploading and downloading the file to tardigrade?**

There is a ton of information related to solution architecture for different use cases. Most of the early use cases we're seeing for static object storage are related to backing up on-premise data to the cloud, hybrid cloud storage for on premise or mobile applications.

We have a number of early web application use cases using an internet accessible S3 gateway. There are important considerations for how this architecture is implemented to make the most efficient and economical use of bandwidth.

At the present time, we don't have a native browser-based implementation. One of the things we haven't done yet is to implement a way for a browser to trust the Storage Nodes from which pieces of files are directly downloaded peer-to-peer.

In the future, we absolutely intend to solve that problem, but we're not there yet.

To reiterate - we don't currently recommend Storj for direct-to-browser web hosting, though we plan to tackle that when the time allows.

**3. Why is it so complicated to just get Hello StorJ running using any language library?**

With the production release of the Tardigrade Platform, we released the 1.0 of our developer library Libuplink. We made some additional changes to the C binding and then released updates to the other language bindings. We've made significant improvements to the tooling over the last few months and even the last few weeks.

Over the next few weeks we're also making improvements to the documentation to make the bindings easier to use.

We're also making the documentation more clear to delineate between Storj tools and community-sourced tools.

**4. How will the supply play a role if there is a sudden spike in consumption?**

One of the lessons we learned operating the second generation of the network was that onboarding a large amount of capacity has historically not been an issue. That's the primary reason we're much more focused on generating demand.

We have a number of dials we can turn to rapidly activate supply and aim to always have enough supply for the next 3-6 months or more. We've had a lot of interest from commercial Storage Node Operators (businesses and regional data centers, for example). Many of these partners are able to activate large amounts of storage if the demand is there.

In addition, we can use techniques like surge payouts to incentivize new Storage Nodes to add additional supply.

That said, fundamentally this is the reason per-project usage limits exist, just as they do in Amazon. If someone suddenly needed to store 1EB of data, project limits ensure we'd have a heads up to ramp up our storage capacity using the dials mentioned.

**5. Why are the old Nodes that have lived on the network for a year considered new on the new Satellites?**

Each Satellite individually vets all of the Storage Nodes with which it works. This function is an artifact of the decentralized nature of the network. Tardigrade Satellites operated by Storj Labs behave the same as community-run Satellites.

**6. How will SLA be put across for Large customers or enterprises?**

Our SLA is published in our Tardigrade Terms of Service. We're able to maintain our SLA for availability based on the scalability of the components operated by Storj Labs as well as our expertise in operating our software.

The automated functions such as Storage Node audit, uptime checks and file repair allow us to ensure the durability of data stored on the Tardigrade Platform.

**7. If there is an ERC20 compliance issue in any region, how do you deal with it? For suppliers & consumers?**

I believe the intent of this question is related to how Storage Node Operators and customers can use the STORJ token on the network when they are located in jurisdictions with different regulatory frameworks and perspectives on the use of tokens.

First, customers are able to purchase cloud storage and bandwidth using either a credit card or the STORJ utility token. If a customer finds the use of STORJ tokens to be an issue, credit cards are an easy alternative. However, paying in STORJ token rewards you with a bonus on every deposit, incentivizing use of the token.

With regard to Storage Node Operators, under the Storage Node Operator Terms and Conditions, Storage Node Operators are responsible for ensuring the operation of their Nodes and, by extension, the receipt of STORJ utility tokens comply with local regulations.

**8. If Storj keeps 3 redundant copies of a file/shard then how does the supplier gets paid or affected and how does it affect the consumers (in simple words who bares the cost)?**

First, it's important to clarify that the network doesn't store three redundant copies of a file on the network [we've written extensively on the difference between replication and erasure coding](https://storj.io/blog/2018/11/replication-is-bad-for-decentralized-storage-part-1-erasure-codes-for-fun-and-profit/). We use only erasure coded data for redundancy and don't use replication.

With erasure codes, each file is broken into a minimum of 80 pieces, of which only 29 (any 29) pieces are required to recover the file. The erasure coding redundancy results in an expansion factor of 276%. What that means is that a 1GB file uploaded by a customer is actually stored as 2.76GB.

The cost structure for this redundancy is built into the pricing model. Satellite operators can structure their price/cost model however they want, but Tardigrade Satellites pay Storage Node Operators at a different rate than customers are charged to store data on the network.

Overall, our goal is to provide an excellent service to our customers that offers comparable availability and durability to other cloud services with superior security, privacy, and economics. We can do that because we don't have to build and operate expensive data centers. Instead, we fairly compensate Storage Node Operators for the storage and bandwidth used by the network. Between the different fees we pay to Storage Nodes for storage, bandwidth, data repair and audit bandwidth, our goal is to pay out about $0.60 of every dollar to the network.

**9. As of now it's only possible to upload files one by one. Will there be an option to upload files in bulk or upload directories with a lot of files?**

It's true that our current Uplink CLI is missing a recursive copy feature, which is on our roadmap and we plan to add soon. If you'd like to beat us to it we'd happily accept a source contribution to add recursive copy! It's a small task but would be a great OSS contribution. That said, we have a number of other options available for storing bulk data. Using the S3 Gateway, any AWS S3 tool can do the trick (including the AWS S3 CLI). We also have [RClone integration](https://storj.io/blog/2020/04/announcing-tech-preview-availability-for-rclone-and-restic-on-tardigrade/), an upcoming FileZilla integration, and a number of other integrations. While the Uplink client uploads one file at a time in serial order, the tool can be used to upload or download entire directories to or from the Tardigrade Platform. In addition to our CLI, S3 Compatible Gateway, and Libuplink developer library, we've also got other tools to make moving data easy.

Whether you want to use a GUI like FileZilla, or use Rclone with a number of great tools to sync directories and make directory listings more efficient, or just make managing cloud backups easier with Restic, we've got options to make bulk operations easier to manage.

**10. "Files will be stored through 2019". How do I store a file through 2030?**

The Tardigrade Platform is an enterprise grade cloud storage service. Files stored on the platform persist until deleted. If you want your files to persist until 2030, just don't delete them or set a TTL (Time To Live) on your files for some time in 2030 when they'll be deleted when the TTL expires.

**11. We would like to know when it will be possible to operate our own Satellites. We would like to build up our own network and have the Storage Nodes as well as the corresponding storage requirements. I would be very happy about feedback.**

It is possible to run your own Satellite with your own Storage Nodes today! In fact, many of our developers do exactly this during development, debugging, and testing.

If you want your Satellite to have the ability to use our wider network of Storage Nodes, that is also possible today, but the user experience for Storage Node Operators to join your Satellite doesn't yet meet our quality standards, so we haven't yet documented or made the experience particularly robust.

Suffice it to say, we're planning to release an improved user interface for community Satellites with documentation as soon as possible, but we don't want to rush it and cause a poor Storage Node Operator experience with community Satellites.

**12. I have been waiting for years to use Storj, where my time to upload terabytes of stuff happens as soon as it is possible to have a shared drive on windows that is my Storj drive. I got stuck on FileZilla setup and even if I could get it working, it is not a user friendly solution.

What are your plans for expanding accessibility to regular home users in both your website and with client side software that emulates a shared drive?**

Traditional, centralized cloud storage went through a number of iterations before fully accessible cloud storage was in the hands of regular home users. The first problem cloud storage had to solve was the general problem of storage, solved wonderfully well by Amazon's first AWS offering, S3. S3 is a cloud object storage tool for developers, and not end users, and it was due to this and other reasons that the Dropbox team initially built Dropbox on top of S3.

At Storj, our top priority is to bring decentralized storage to the world, and we believe the most effective and sustainable path both technologically and financially is the same route---solve the object storage problem first, then work with partners to build user-centered apps on top. Storj is working to replace S3, and we're working with other teams like NextCloud to build the decentralized Dropboxes on top of us. Our primary focus right now is on developer use cases with large amounts of storage needs. We don't currently plan to build a user-centric file-sharing drive ourselves, though like S3 we eagerly encourage building products like that on top of us.

**13. Also, do you have any plans for tardigrade to be able to interface with Ethereum? There are lots of DAPPs and DAOs under development that struggle with storing data in a decentralized way that is more affordable than onchain and more reliable than IPFS.**

We also received this question on our forum recently! Check out the answer here:

<https://forum.storj.io/t/what-is-needed-to-implement-storj-for-smart-contracts/6421>

**14. I want to share a recommendation for how to get Storj bucket to operate in a normal OS environment where folders can be renamed and reorganized. I hear Storj can't do this without reuploading the entire file and deleting the previous.

Have the client side software create a file similar to a master boot record for hard drives. This file contains the directory structure and file names. This way when a file is renamed or moved, all that has to be edited is the tiny directory file. The client side software would show the filename from the directory file as opposed to the original filename in the bucket.**

Thank you for the suggestion! Rename support is on our roadmap.

**15. When support for Synology will be released? Is there any beta or testing version?**

We're working on support for a number of NAS hardware manufacturers. QNAP was the most requested NAS from our Community, but Synology and Western Digital won't be far behind. We're working on both being able to back your NAS up to the Tardigrade Platform and using your NAS as a Storage Node, sharing extra hard drive space and bandwidth with the network.

**16. I'm wondering how you would compare/contrast yourselves to BackBlaze's B2 product?**

B2 is a good quality, low cost, centralized cloud storage offering, which some people may find to be an attractive alternative to AWS 3 or similar offerings. However, it's still a centralized service offering, with the privacy and security and environmental challenges inherent in that model. To our knowledge, Backblaze has four data centers worldwide, and data stored in one data center doesn't get geo-replicated without additional cost. Users should compare the total cost of ownership of different use cases across different service providers to understand the true economics of different offerings.

**17. Will Storj be making it easier to provide multiple drives on one Node or making the setup easier?**

While it remains our recommendation that users have one Node per hard drive (without RAID), we do indeed plan to make running multiple Nodes, whether it is on a single computer or in a data center, much easier to manage, maintain, and observe in the very near future. Stay tuned!

**18. Can a SNO legally sell their Node? Considering there is no bad intent and it's a fair transaction. Ex. Joe sells his HDD to Jane for $$.**

If a person no longer wants to run a Node, they aren't required to and should simply stop rather than selling it to another person. Conversely, if a person wants to be a Storage Node Operator, they must sign up directly through Storj.

Every Storage Node Operator must review and individually commit to comply with the Storage Node Operator Terms and Conditions. In addition, we need to know that the person who commits to the Terms & Conditions is the person running the Node and that we have their correct information for tax and legal compliance. 

**19. Is Storj HIPAA compliant? If yes, then how is it achieved, else does Storj have a plan in its roadmap? Since there are countries that don't allow ePHI and other health data to be sent across borders.**

No, our product is not specifically designed for HIPAA compliant data storage at this time. We are looking into requirements for various kinds of data storage that require regulatory compliance, and whether it would make sense for us to offer that type of product in the future.

**20. Hi team, with the release of the Windows based installer for the Storage Node software, is there a plan, or timeframe, to either move away from Docker and/or release a standalone Linux binary install version (using something like "appImage" or "flatpak") for the Node software?**

Docker has proven to be a fantastic accelerator for our Storage Nodes, but we have had a lot of interest in alternatives to Docker in the community. The good news is we are indeed currently working on a Dockerless Linux installation system!

**21. Can I host a Storage Node with an external hard drive? With a 2TB external hard drive and 8Mbps internet speed, how much profit can i make per month (with yearly plan)?**

Storage Nodes can use a range of different configurations, including external hard drives. In general, we recommend configurations that use one physical drive per Node (no RAID). In terms of how much any Node can earn, we have a variety of tools and information to help prospective Node operators understand the factors that impact Node profitability.

**22. Can users pay with the STORJ token and if so do they get a discount for using it?**

Customers have the option to pay with either STORJ token or credit card. We currently have an incentive for customers to pay with STORJ token. Customers who pay with STORJ token get an extra 10% at the time of payment. [We have the whole billing process documented](https://storj.io/blog/2020/04/an-overview-of-the-tardigrade-billing-system/) if you want more information.

**23. I have some questions about the "Commercial Node Operators" and "Data center partners" because it seems not to be in line with the decentralized storage concept of Storj, "do not buy dedicated hardware", blabla... but it is really interesting.

Are the SLAs of a "commercial Node operator" already defined?

Will Tardigrade Satellites have any preference for these commercial Node Operators?

Commercial Node operators = data center partners? If so, is there any limit in storage capacity of the data center?**

We're still very early in the process of working with data centers to understand their place in the network. Many data centers have decommissioned equipment that may not be suitable for their current clientele, but is otherwise perfectly serviceable for Storage Nodes.

The network of Storage Nodes is healthiest when comprised of large numbers of smaller Storage Nodes, highly distributed over a wide range of geographies, operators, network connections, power supplies, etc.

Data center Nodes have a lot of potential to provide significant benefits to the network---low probability of churn, high uptime, lots of available bandwidth---all the hallmarks of great Nodes. In addition, data centers have the potential to not only activate large amounts of storage quickly, but also to bring demand to the network from offering cloud backup services or hybrid cloud solutions to their existing customers to offering large file transfer services.

They can also introduce risk---concentration risk of too much data on single Nodes, outcompeting lower performing Nodes, etc.

For data center SNOs there is also risk. Running Storage Nodes in a data center isn't without cost. As we grow the network to sufficient size based on customer demand, the early demand may not justify contributing a large amount of storage capacity.

Again, it's early days in the network, but we anticipate that the network will grow to include a very diverse set of Storage Nodes from individual hobbyists, to NAS operators, to businesses and data centers.

**24. I've asked this a long time ago already, maybe the time is now better for a positive response: will there ever be a way to create a user, a project and an API-key and maybe add CC-/payment-info via an API-call?

I'm still developing a dAPP that uses Storj/Tardigrade for it's data store. Currently I would ask my users to provide Tardigrade-credentials and they have to create an account by themselves. I would love to not be involved in that, so the user is fully responsible for paying his own bills and keeping all info by himself. So it would be necessary that my app calls your APIs to create the necessary information on a Satellite.

For you it should be irrelevant if a user registered via your (beautiful) Web-page or via an API-call. This would help onboarding for my users and would keep them in full control of their data.**

This is a great question.

There are a number of tradeoffs we've made in the design of the system. Whereas Filecoin's and Sia's initial whitepapers (and Storj V2!) discuss resolving payment details up front for each operation, thereby making each operation slower, Storj V3 opts to move all payment resolution to a model where a user has a payment method on file, and charging happens after the fact in an invoice-style model.

A consequence of this is we need to make sure that every user account has payment methods added (with enough of a balance escrowed in the case of STORJ token) up front.

Right now we do this through a combination of Stripe and Coinpayments UIs. While it is feasible to create an API on our side that wraps the operation of these things, it hasn't been at the top of the roadmap.

It does sound like what you're trying to do could be solved a few ways though---ultimately you want users to be able to pay for your app directly to us themselves, without you being in the middle. Neat! I suspect we can solve that without adding full user-management APIs and perhaps there's a shorter path here. We should discuss some options and find out what works best for you.

**25. I wanted to update the STORJ-coins in circulation due to the updated numbers on your blog but now coinmarketcap wants to have many information from me. May you provide the answers to them as you know all that in much more detail?

Having accurate numbers listed there is important from my point of view.**

Thanks for bringing this to our attention! We're working on getting coinmarketcap updated!

**26. How can we book a collaboration or partnership with Storj?**

We're actively looking to grow our partner ecosystem. If you want to learn more about our partner program, visit <https://tardigrade.io/partner>. We have a form you can use to tell us a little bit about your use case. Someone from Storj will be in touch!

**27. Can you show me some data about the Tardigrade business stats? 

Something like how many customers using Tardigrade, how many files have been stored, and how much money has been paid. Do you have something like that?**

We've shared a wide range of information about the network and customer growth in our Town Hall and blogs. We'll continue to share information and statistics about the network as we grow.

**28. Hi all, I want to place one topic for the discussion today: the limits. I'm following the project quite long now, as you might know. But I do not understand the limits that you've put in place on Tardigrade. Maybe this is just due to the language barrier, but regarding the latest blog-post on that topic and the info sent out before, I still do not understand when the limits apply and what they mean exactly. Furthermore I do not understand why there are any limits at all. If I pay for what I use, there should not be any limit.

If I understand correctly, then I cannot upload/download (?) more than 5 GB (?) in one month (?), right? I could understand if you say: if there is no credit information attached to an account, there is a usage-limit. But if you have STORJ or a credit card in the account, then why should there be any limit. I know I can request a limit increase, but at least the information about the limit is not clear to me.

If you still see the need for a limit, you would need---at least from my point of view---to rework how you describe the limits. I still cannot explain them as I simply do not fully understand them.**

On V3, we try to make sure payment is either escrowed or payment details are collected up front. But if you have provided a credit card or a purchase order (and not tokens), what would the limit be tied to?

The answer is that we need to do capacity planning on our side. As answered earlier, if someone wanted to sign up with 1 exabyte, we would want to work with that customer to make sure we had that capacity in advance, hence the limit increase requests. In fact, whether or not it's a good user experience, many other cloud services do this same thing!

We of course want to do better, and will continue to work on this. We realize that the limits are very low right now and that's in part due to the size of the network as we take our first steps in growing this new network. Please email us if you need more space and we'll be happy to increase your limit. Also, stay tuned as we better integrate escrow, payment methods, limits, and capacity planning.