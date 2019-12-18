---
title: Hosting Multiple Storage Nodes on the Storj Network
date: 2019-12-18T14:51:31.674Z
image: /blog/img/storj-blog-multi-node-support.png
categories:
  - support
authors:
  - Andi Stowe
draft: false
---
As you may have heard, Storj Labs recently began allowing Storage Node Operators to run multiple Storage Nodes using the same email address. Prior to this, a Storage Node Operator could only technically operate one Storage Node to ensure the utmost decentralization of  Nodes on the network. Even if you're running all your Nodes from the same physical location and IP address, you can now easily operate as many Nodes as you'd like (although there are a few caveats to keep in mind).

We hope this ability will allow Storage Node Operators to put even more of their unused hardware to work and further build-up total available storage capacity on the network.

#### Getting Started With Setting up Multiple Nodes

To begin setting up a Storage Node, you need a unique auth token for each Node you set up. You can only request one token at a time when using the same email address for an additional Node, so this means you can only request a new token after your existing token has been utilized.

Once you have your token, you're ready to begin the setup process. We recommend a separate HDD and CPU for each Node you set up, otherwise, your Nodes' reputation could be impacted. Ideally, each Node you operate would be in a different physical location, however, this is not necessary. If your nodes share the same IP address, the data they receive could be somewhat reduced due to [IP filtering, which only allows one file piece to be stored on any Node within the same IP subnet](https://storj.io/blog/2019/06/ip-filtering-keeps-data-distributed/).

Once your first token is redeemed and your first Node is set up, you need to [request a new auth token from the Storage Node Operator sign-up page](https://storj.io/sign-up-node-operator/). If you don't set up your first Storage Node before requesting a token for a second Node, the system will reissue the same token (and you need a unique token for each Node).

After that, you simply follow the exact same setup process that you would follow if you were setting up your first Node.

Thanks to all of our fantastic Storage Node Operators maintaining their Nodes on the network. We couldn't make a decentralized future possible without you and your contributions.
