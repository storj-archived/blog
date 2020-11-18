---
title: "Storj Labs and University of Maryland: Moving Large Datasets Faster
  Across Research Institutions"
date: 2020-11-18T14:10:00.000Z
image: /blog/img/blog-um.png
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
The University of Maryland Baltimore County Physics Department runs a physics simulation that has produced 50TB of output data (and quickly growing).

The data associated with this research has the need to be both preserved for long periods of time, and highly available in a public, read-only access format so global researchers can verify, review, and replicate their published results.

"Due to its distributed nature, Tardigrade is a great solution for University of Maryland Baltimore County, as data stored is globally available by default," said Dan Wines, Ph.D. student. "The parallel architecture means that we won't have run into any bandwidth issues. Tardigrade lets us upload and back up our physics-related research data easily"

The goal is to showcase an easy solution to backup your data sets in a way that's persisted into the future, and easily available to share or recall across global geographies, making it simple to replicate published results from academic literature.

### How the UMBC Physics Community uses Tardigrade

To back up and share read-only access to their output, the University of Maryland Baltimore County is using two of the native integrations with Tardigrade—RClone and Filezilla.

### Using RClone to Automatically Push new Data to the Decentralized Cloud

Within the existing, Monte Carlo style simulation, the physics researchers have added an RClone command to the end of their bash script which automatically uploads the simulation outputs to the decentralized cloud, preserving their state. The command is simply one line, and looks like this:

`$ rclone copy dataset us-central-1:my-bucket`

The university needs to maximize its performance for upload, so the `--transfers` flag is often used to increase the number of cores.

### Using Restic to Schedule Regular Backups

With a focus on simplicity, the workflow implements automated Restic backups. They are sent via RCLONE to the Tardigrade network. Scheduling is handled by cron.

Restic is a modern Golang backup program that can back up your files from a number of operating systems (including Windows, Mac, FreeBSD, and Linux) to the decentralized cloud.  Restic is a single executable that you can run without a server or complex setup.

Restic effectively and securely runs snapshots, capturing only the differences between files, minimizing and optimizing the amount of raw data backed up.

The script configured for University of Maryland contains backup snapshots, using the following best practice:

* Snapshots for each day going back 7 days + 
* Snapshots for each week going back 5 weeks + 
* Snapshots for each month going back 12 months + 
* Snapshots for each year going back 10 years

Restic makes it easy to quickly restore the environment from any given snapshot.

### Backing up Research Data for Long Term Reproducibility

The large datasets used to learn about our world are often hosted in a single location, datacenter, or geographic region. This makes it difficult for researchers across the world to efficiently download large datasets, and share their output to the academic community—this is known as the data locality problem.

A decentralized approach to data storage solves this problem, as small, redundant pieces of the dataset are spread across the globe, meaning the data is highly accessible from anywhere, and there's no need to replicate across hosts.

Because of the way the data is encrypted, erasure-coded, and purposefully spread across statistically uncorrelated nodes, data integrity is better preserved.

### The Decentralized Cloud is A Better Way to Store and Share Academic Data

The distributed architecture of the network and end-to-end encryption on every file protects against attacks, improves reliability, increases download/upload speeds, and enhances performance when compared to centralized cloud storage options.