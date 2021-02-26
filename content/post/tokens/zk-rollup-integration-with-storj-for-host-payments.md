---
title: " ZK Rollup Integration with STORJ for Host Payments"
date: 2021-02-26T14:28:24.358Z
image: /blog/img/zk-sync-blog.png
categories:
  - tokens
authors:
  - Kevin Leffew
draft: false
---
Today we released a new capability for Hosts (Storage Node Operators) who would like to opt-in and take advantage of L2 payments on the Ethereum network. Hosts on the Storj Network can now elect to receive their payments via zkSync, an L2 Ethereum scaling solution based on [ZK Rollup technology](https://zksync.io/faq/tech.html#zk-rollup-architecture). We've built this payment option with assistance from our friends at [Matter Labs](https://matter-labs.io/), who are singularly focused on building UX-centric services on ZK Rollup technology.

In a [rollup](https://vitalik.ca/general/2021/01/05/rollup.html), all funds are held by a smart contract on Ethereum, while computation and storage are performed off-chain. The main idea is that instead of verifying each transaction separately, transactions are "rolled up" to a single item (the rollup block), which is then verified and approved simultaneously.

Vitalik Buterin (founder of Ethereum and [Core Contributor to the Storj V2 Whitepaper](https://storj.io/storj2014.pdf)) originally formulated the [concept for ZK Rollups in September 2018](https://ethresear.ch/t/on-chain-scaling-to-potentially-500-tx-sec-through-mass-tx-validation/3477/14).

Matter Labs' implementation of ZK Rollups---called zkSync---uses  [zero-knowledge proofs](https://crypto.stanford.edu/pbc/notes/crypto/zk.html)  and on-chain data availability to keep Host funds as safe as though they never left the mainnet.

## How ZK Rollup Benefits Hosts on the Storj Network

Since launching in production in March of 2020, the STORJ Network has rapidly grown to over 11,000 independent Hosts spread across 84 countries.

In that time, Storj Satellites have processed over 160,000 transactions resulting in nearly $40,000 in transaction fees. Recently, per-transaction fees on Ethereum have climbed as high as 44 dollars---and with our large network of Hosts operating Nodes, this has become burdensome and costly.

### Better Scalability

With zkSync, payouts will consume less blockspace on the Ethereum network because transactions are bundled together and processed in batches. The system is currently capable of processing 2000 transactions per second!

### Lower Fees

zkSync also dramatically lowers network fees for Hosts sharing their hard drive space and bandwidth on the Storj Network. zkSync accounts are tied to your existing Ethereum keys, and current transaction fees are as low as ~0.000543 ETH at 210 Gwei. As the zkSync ecosystem grows, interoperability between projects means even more savings. These fees can be reinvested in the community, creating new incentives for network operators to drive growth.

### Pay Network Fees in STORJ Token

One of the most interesting things about zkSync is it supports "gasless meta-transactions" that allow users to pay transaction fees in the tokens being transferred. For example, if you want to transfer STORJ to an exchange, smart contract, or other address, there is no need for you to own ETH or any other tokens.

## Get Started and Opt-in as a Host

To opt-in to zkSync you need to do a simple change in your Node configuration by following these steps:

1. Open config.yaml
2. Set wallet features in config to include "zksync" by entering # Operator Wallet Features operator.wallet-features: \["zksync"]
3. Save changes
4. Restart node

After opting-in for zkSync payouts for STORJ payments, gather your ETH address and private key, navigate to the zkSync Wallet (<https://wallet.zksync.io/>), and connect your Ethereum account. If you can't access your wallet, you might want to change your payout address to an address that you can access.

![zkSync connects to MetaMask Wallet in Brave](/blog/img/zksync.png "zkSync Connects to MetaMask Wallet in Brave")

We're excited to share this update around payment scaling with our community of Hosts.  If you have any questions about using zkSync, check out our [documentation](https://documentation.storj.io/dependencies/storage-node-operator-payout-information/zk-sync-opt-in-for-snos). If you have ideas, or would like to talk with the team, please feel free to [reach out on our forum](http://forum.storj.io).