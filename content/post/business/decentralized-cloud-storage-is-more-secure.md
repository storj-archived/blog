---
title: Decentralized Cloud Storage is More Secure
date: 2020-10-27T17:41:22.423Z
image: /blog/img/secure-decentralized.jpg
categories:
  - business
authors:
  - Brandon Iglesias
draft: false
---
The Storj Network and Tardigrade decentralized cloud object storage were built to ensure the data stored always remains private and secure. But how do we achieve this? First of all, every file uploaded to the network is encrypted before it ever leaves your computer. In fact, end-to-end encryption is standard on every file at no additional cost. Before a file gets uploaded to the network, it is split into 80 pieces, and each piece encrypted. Those 80 pieces get distributed to 80 different Nodes that are geographically dispersed around the world. Of those 80 pieces, you need 30 of them to reconstruct the encrypted data.

Is this a little confusing? It means if you were a hacker and wanted to obtain a file, you would have to find at least 30 (among thousands) of the Nodes who are storing pieces for the same file, then you would have to compromise the security of all 30 of those Nodes. Don't forget every Node is being run by a different person, with different firewalls, different operating systems,  in various locations around the world. It already sounds prohibitively time consuming, but we're not done yet. 

Even if a hacker managed to get their hands on a piece of the file, it's still encrypted. The hacker then would have to repeat this same process for the next part of that file 29 more times. Oh yeah, let's not forget to mention if you were the one who uploaded the file, you would still be the only one with the encryption keys to access that file, so the hacker would have to somehow get that from you. Pretty neat, huh?

But what about an outage or a Node going down? Again, since we are storing every file on 80 different Nodes and we only need 30 of them to access your data and reconstitute it, we only need 30 of those Nodes to be up and running when you access your data. 51 Nodes simultaneously going down is very highly unlikely. In fact, we've never lost a single file. So you can rest assured that your data is as safe as humanly possible on the Tardigrade network.

So is decentralized cloud storage more secure than centralized storage options like Amazon S3? Yes, yes, it is.