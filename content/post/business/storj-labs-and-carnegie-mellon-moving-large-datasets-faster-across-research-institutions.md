---
title: "Storj Labs and Carnegie Mellon: Moving Large Datasets Faster Across
  Research Institutions"
date: 2020-11-18T14:15:00.000Z
image: /blog/img/blog-cmu.png
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
A team of researchers in the Computer Science Department from Carnegie Mellon University School of Computer Science currently hosts a large research dataset that is quickly growing beyond the multiple TB range, and generating over 80TB of bandwidth utilization monthly.

For Carnegie Mellon, this large dataset's release will facilitate future research in the related areas and needs to be both preserved for long periods of time and highly available in a public, read-only format which global researchers can access.

"Tardigrade is an ideal solution for sharing the dataset because the data stored is globally available by default," said Juncheng Yang, a CMU Ph.D. student. "Tardigrade helped us to solve our data storage and global sharing problem. The parallel architecture removes the bandwidth bottlenecks we had been facing, enabling us to upload and share our data more efficiently and quickly."

The goal of this project with CMU was to showcase an easy solution to back up and share academic datasets in a way that's persistent into the future and easily available to share or recall across global geographies, making it simple to replicate published results from academic literature.

### How Carnegie Mellon University uses Tardigrade

To back up and share read-only access to their output, the team at Carnegie Mellon University uses two native integrations with Tardigrade---RClone and Filezilla.  They then used the native linksharing service to make data easily accessible.

### Using RClone to Push new Data to the Decentralized Cloud Automatically

Within the university, CS researchers used the RClone integration with Tardigrade to automatically upload their dataset to the decentralized cloud, preserving its state. The command is simply one line and looks like this:

`$ rclone copy dataset us-central-1:my-bucket`

To maximize their performance for upload, the `--transfers` flag is often used to increase the number of cores.

### Using FileZilla to Share Permissioned Access to Files

After the data gets uploaded to the decentralized cloud, a read-only access grant is created using Macaroon technology (pushing access control to the edge, as described [here](https://storj.io/blog/2020/05/changing-the-security-paradigm-to-push-access-management-to-the-edge/)).

This read-only access is distributed to researchers and made available within related publications, enabling any third party to access the data, verifying the researcher's conclusions independently.

The access grant makes it easy for researchers to download FileZilla's file, using [the native Tardigrade integration](https://storj.io/blog/2020/08/private-multiregion-file-transfer-with-tardigrade-and-filezilla/) inside the open-source FTP software.

### Creating Public Download Access with Linkshare

To make data easily available for global researchers, Carnegie Melon is using [Tardigrade Linkshare service](https://storj.io/blog/2020/10/visualizing-decentralized-data-distribution-with-the-linkshare-object-map/) to make the raw data easy to wget or curl from the command line.

By simply running,

`$ ./uplink share sj://object`

the linkshare exposes the raw data, and makes it easy to download in a format similar to this:

`$ wget 'https://link.tardigradeshare.io/raw/186FLdB5sEc2PWoRPvYoQWXHyHCQHJQFqECHPruZ9Q6sobaY2ZDcezXYqMq2DLv6WG97VATYw53cBGHepCFCU2m6T9x8RCvN7m2UJL81GDEw5eySMj8LhaCMuY3KuiXqT3VzUrsmGwxWnLMk8uRtLMeKxKDg22msytoUfGqWUgJn8JdSqBCiNZfn7xSTj8Wrsh6ZxzUCn7xMCfbADxN8c8rFdswq9JtjS4ygrqPivbwHFgz98q54Y9vcDiuLC2PAYaF7yApxwbMrtoAR6JXcydDoBMkT7BD8mdV5cJVbBs2H7oq1LxQT/cmu/largedataset.txt`

### Solving the Data Locality Problem for Research Data

The large dataset that Carnegie Mellon is hosting was originally hosted at the university itself, making it difficult to access in Asia and other regions around the world.

This problem around specifying hosting locations is known as the Data Locality Problem, and it makes it difficult for researchers to efficiently download large datasets from cloud storage,  and share their output with the academic community.

As shown through our work with Carnegie Melon, a decentralized approach to data storage solves this problem. Small, redundant pieces of the dataset are spread across the globe, meaning the data is highly accessible from anywhere, and there's no need to replicate across hosts.

Because of how the data is encrypted, erasure-coded, and purposefully spread across statistically uncorrelated nodes, data integrity is better preserved.

### The Decentralized Cloud is A Better Way to Store and Share Academic Data

The distributed architecture of the network and end-to-end encryption on every file protects against attacks, improves reliability, increases download/upload speeds, and enhances performance compared to centralized cloud storage options.

Tardigrade is resilient. Data is encrypted, erasure-coded, and spread across uncorrelated endpoints, making data loss, theft, or backup corruption (via bitrot) nearly impossible.

Finally, Tardigrade is more economical than alternative providers. Storage and bandwidth costs are a fraction of AWS, Microsoft, and Google, and there is no need for costly replications across regions that would balloon your cloud storage bills.

If you are a researcher, academic, or university representative interested in trying out the decentralized cloud, please reach out to partnerships@storj.io.