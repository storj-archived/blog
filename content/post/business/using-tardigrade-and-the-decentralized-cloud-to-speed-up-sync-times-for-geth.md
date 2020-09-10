---
title: Using Tardigrade and the Decentralized Cloud to speed up sync times for GETH
date: 2020-09-10T10:06:38.270Z
image: /blog/img/storj-blog-geth.jpg
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
Over the past several months, we've been working with the [Ethereum Classic Labs](https://etclabs.org/) and its ETC Core development team to build out an experimental decentralized architecture for GETH—the tool used to sync the blockchain for ETC developers.

One of the most demanding requirements to support a copy of the blockchain is storage, and scaling that storage is difficult since the blockchain is a continuously growing database.

Thus we set out to accomplish two goals:

1. Speed up  the blockchain synchronization time for Ethereum Classic developers looking to quickly download the ETC blockchain to their local Nodes
2. Increase the resiliency, integrity, and distribution of ancient store block data by distributing it across an incentivized network of uncorrelated endpoints

Today, syncing a new mainnet Node can take a few hours, days, or weeks (depending on your setup of course). In the event of a client bug or network incident, resynching a Node from scratch could be expensive downtime.

We're excited to share the architecture and showcase how this solution can help speed up blockchain synchronization for developers, making it easier for end-users to run a Node.

### Tardigrade improves decentralized architectures by ensuring resilience through audit, repair, and crypto-economic incentives

Tardigrade is an open-source, decentralized object storage service for storing data in the cloud across the Storj Network of Storage Nodes.

Notably, Tardigrade is more economical, performant, and secure than traditional cloud storage platforms because of its decentralized architecture. Because data on Tardigrade is spread across uncorrelated endpoints—across different owners with different hardware and ISPs across the globe—data is very resilient and highly available no matter where you're trying to access it.

"Incorporating Tardigrade decentralized cloud storage into the process for GETH has allowed us to accelerate sync times, making it much more efficient to spin up new mining nodes around the world," said James Wo, Founder and Chairman of ETC Labs. "This helps miners avoid expensive downtime, create a more diverse set of endpoints, and contribute to a larger, more secure blockchain."

### Improving access to blockchain data using the decentralized cloud

This tool is useful for developers as it speeds up blockchain sync time, and makes a full Node copy of the blockchain available to anyone, anywhere in the world.

We've identified two use cases for ethereum classic blockchain developers looking to leverage Tardigrade.

* **Data-recovery:** If you lose your chain data, then you can sync from the latest block height of the remote ancient store.
* **Increased sync speed:** The ancient-store data basically acts as a backup of the blockchain. If the ancient-store contains x amount of history, then that's x amount of history you don't need to download and sync from scratch. Theoretically, days of syncing can be done in hours.

The ethereum classic blockchain currently stands around 59 GB.

Anecdotally, in testing we've found that streaming data from Tardigrade speeds up GETH sync time from 12-24 hours if you're syncing from scratch to 30-40 minutes. This represents a ~2,400% increase in performance.

### Try it out yourself and Get Started with Tardigrade

To get started with the tool, you can navigate to the Ethereum Classic Documentation, located here, or follow these steps to install GETH and run Ancient Server for Storj.

### Requirements

* [Core-geth](https://core-geth.org/): The protocol providing Ethereum Classic client.
* Storj environment variables `STORJ_API_KEY, STORJ_SECRET, STORJ_SATELLITE`
* [Ancient-Server](https://github.com/etclabscore/ancient-store-storj): The [Ancient-store-storj](https://github.com/etclabscore/ancient-store-storj) (done by Zane Starr and Isaac Ardis of ETC Core) program is a persistence manager for core-geth "ancient" block data using Storj, and can be used as a replacement for Core-geth (and Go-Ethereum) default of persisting data in local flat, compressed files.
* Go-lang: `To build the ancient-server from source sudo snap install go --classic.`

### Installing Core-geth

The easiest way to install Core-geth is via binary. You can find the latest [releases](https://github.com/etclabscore/core-geth/releases) of Core-geth on GitHub.

`wget https://github.com/etclabscore/core-geth/releases/download/v1.11.12/core-geth-linux-v1.11.12.zip # Download release for linux`

`sudo unzip core-geth-linux-v1.11.5.zip -d /bin/ # Unzip and move contents to /bin/ directory`

`geth version # Check install`

### Install Ancient-Server for Storj

`git clone https://github.com/etclabscore/ancient-store-storj.git`

`cd ancient-store-storj`

`go build .`

`./ancient-store-storj --help`

If you get `exec: "gcc": executable file not found in $PATH` errors when attempting to build, then ensure you have GCC compiler installed `sudo apt update, sudo apt install build-essential`, and check it's installed `gcc --version`, then run the build again.

If you ls in the project directory you should see the built executable `ancient-store-storj` like so:

~/ancient-store-storj$ ls

`LICENSE    ancient-store-storj  freezer_remote_storj.go       go.mod  main.go`

`README.md  cmd.go               freezer_remote_storj_test.go  go.sum`

#### Running the Ancient-Server

Using SystemD to run the Ancient-Server. Of course use your Storj environment variables.

`ExecStart=./ancient-store-storj --bucket %I --ipcpath /data/classic/.core-geth/storj_%I_stable.ipc --loglevel 5`\
`Enviorment="STORJ_API_KEY="`\
`Enviorment="STORJ_SECRET="`\
`Enviorment="STORJ_SATELLITE="`

Running this service allows the ability to store ancient-store data on Storj.

#### Running Core-geth

Now that that the Ancient-server is running, All we have to do is tell Core-geth to use the Ancient-server's IPC path like so:

`geth --%I --datadir/classic/core-geth/%I/stable --ancient.rpc /data/classic/core-geth/storj_%I_stable.ipc`

Now, Core-geth will download and sync the Ethereum Classic blockchain and will update the Storj cloud bucket with the ancient data.

### Building Better Decentralized Architectures

Please let us know what you think about this tool, and the potential for Tardigrade to increase the resilience, performance, and durability of blockchain associated data.

If you're interested in learning more, check out [ETC Labs writing on the topic here](https://medium.com/ethereum-classic-labs/ethereum-classic-labs-joins-forces-with-storj-labs-947726b3ecdd).

If you are interested in building an application or tool that takes advantage of the decentralized cloud, please reach out directly to [partnerships@storj.io](mailto:partnerships@storj.io).