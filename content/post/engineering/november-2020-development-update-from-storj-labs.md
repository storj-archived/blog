---
title: November 2020 Development Update from Storj Labs
date: 2020-11-05T17:28:41.534Z
image: /blog/img/developerupdates.png
categories:
  - engineering
authors:
  - Brandon Iglesias
draft: false
---
Hello Everyone! As we head into the holiday season, our team is working hard to finish building some special features for you. The product team also wants to thank everyone who signed up for usertesting.com to help us test and validate features we’re building into the product and network. The number of people who signed up on both the Node Operators and Tardigrade user sides exceeded our wildest dreams. We’ll be sending out invitations to gather feedback via usertesting.com as the product team works on these new features. 

### Here are the recent features added to the product:

* You can now see where all the pieces of your file are distributed worldwide with the [Object Map Link Sharing Service](https://link.tardigradeshare.io/15CYbbCAnFyMjXZdZs8sVJ8JbGdCKjdaMCjhNKF937pUMikZnXCBDu6SeemVbQ1opJW257otj7SXFaM7DSEGf9Fm6LjtSPQycMXskWbsbWyNY6q6vetvhRY8TsBLKxuB5778sNfVHvnstGHRUB26cKNpZsnRjCXfzqyDLCB2Rd2euu3qf4d3sNFHKwrym9Ubf8ctbAUsQyruK7TJhFHVBGgQLfVDXnoHZo7CcGXDE1gxL27ac2u8YN1tj4vAGvTVy5e2V9mArg7wrJ3q25g9WwerDjScgQFwvPTABBjwyckH8dmH6cTyhqfgsf8UMj9gAc8ygJHbrroZkx3PpxeEvLVHpGvoWSQbyR7SDqdp1UYQ5gCG1T4nPoRrxjMHDCwgScEAAoBb7TJu5pmznEk6KEXb98oriJ1NU3Gh7oykbeQCKHMnwNd2e8W1NcMbFJN8TrWtpzDXafQSWDPEykJot3o3526VWYBDXdCao3C31V99mMf2tEcaWFDnhjv9a97Ck2UKZ8EB8vwPq4tW/homepage/TardigradeExplainerVideo.m4v) and share files with others via this interface. You can generate a link for your file by running the -share command in the [Uplink CLI](https://documentation.tardigrade.io/getting-started/uploading-your-first-object/view-distribution-of-an-object).
* We've increased the default storage and egress limits to 500 GB per project, so users don't have to file a support ticket for anything less.
* Finished refactoring the Storage Node graceful exit codebase to enable us to fix future bugs more quickly.
* We recently finished the [Linux updater](https://forum.storj.io/t/tech-preview-linux-storage-node-updater/10041) for the Storage Node software.
* We fixed some bugs in the Satellite GUI to improve the UI/UX for Tardigrade users.

### Coming soon:

* Crash Report Service: This service will allow us to investigate why a Node crashes and fix any bugs we might have with the Storage Node software. 
* A/B testing Pumpkin Spice and Praline lattes: experimenting to see if traditional winter latte flavors---such as Praline---turn up our company's holiday spirit pre-Black Friday 
* Adding support for a Tardigrade-hosted S3 gateway so users who want to utilize the S3 gateway would not have to host anything.
* Adding the ability for users to generate access grants and access key/secret keys within the Tardigrade GUI to improve our users' experience.
* Adding some more functionality to the Object map so that users can preview content directly in the browser. 
* Multi-Node dashboard: Continuing to test wireframes for the multi Node dashboard with our Node Operators to make sure we are building the right solution. It will simplify the Node management for operators who run multiple Storage Nodes.
* CRDB Migration: We're migrating all of the metadata Satellites store to CockroachDB so that the Satellites are multi-region.

### For more information:

* Dig into the code or contribute to the project by visiting our [GitHub](https://github.com/storj/storj) repository.
* Reach out by emailing [ask@storj.io](mailto:ask@storj.io) or through our [community forum](https://forum.storj.io).