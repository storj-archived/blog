---
title: Announcing Tech Preview Availability for Rclone and Restic on Tardigrade
date: 2020-04-21T21:17:10.003Z
image: /blog/img/blog-rclone-restic.jpg
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
Today, we would like to announce a tech preview of two powerful developer tools you can now use on Tardigrade. We have now integrated and tested Rclone and Restic on the Tardigrade Object Storage Platform.

We would love for the Tardigrade community to test out the integration and give us feedback around the tools, initial use cases, and ways we can improve these integrations.

### Rclone

Rclone, often referred to as rsync for cloud storage, enables developers to directly map files and directories from their filesystem to Tardigrade through a command-line tool.  This Tardigrade tool supports useful commands like `copy`, `cync`, `tree`, `cat`, and `rcat`.

Two of the more powerful commands are described below:

* **Copy:** Provides a quick way to copy files from a local or cloud filesystem to Tardigrade.  This feature is also 'smart' in that it only copies files that have been modified.\
  [Example:](https://documentation.tardigrade.io/how-tos/sync-files-with-rclone#upload-objects) `$ rclone copy --progress ~/Videos/myvideo.mp4 waterbear:mybucket/videos/`
* **Sync:** Sync provides a one-way sync (mapping) between a filesystem and Tardigrade. Any modification that occurs on the local filesystem will be synced to Tardigrade.\
  [Example:](https://documentation.tardigrade.io/how-tos/sync-files-with-rclone#sync-two-locations) `$ rclone sync --progress ~/Videos/ waterbear:mybucket/videos/`

For systems administrators managing large datasets, and developers building new tooling on top of the Tardigrade network, RClone is a great tool that simplifies the connection between Tardigrade and a new host of applications.

Whether you're copying large amounts of data efficiently and quickly to (or from) the Tardigrade network, or you're migrating data to the Tardigrade network from other cloud providers (e.g. moving all your S3 data to Tardigrade), Rclone is a great tool.

As described below, Rclone can also be used with Restic to provide regular backup scheduling to the decentralized cloud.

In conjunction with the native client-side encryption and decentralized access on Tardigrade -- we can see the power and security offered by the Tardigrade platform with the Rclone toolset.

Get started testing out Rclone with Tardigrade, [in our documentation here](https://documentation.tardigrade.io/how-tos/sync-files-with-rclone).

### Restic

We are pleased to announce a public preview for using Restic to store repositories in the decentralized cloud.

Restic is an easy to use developer tool for automating backups. Restic is widely adopted by system administrators across the world because of its speed, efficiency, and cross-platform compatibility.

We think Restic is a great tool because it's:

* **Easy:** Scheduling backups should be simple, otherwise you'll be tempted to skip it. Restic is easy to configure and use, so in the unlikely event of a data loss you can just restore your data. Likewise, restoring data shouldn't be complicated.
* **Fast:** Backing up your data with Restic should only be limited by your network or hard disk bandwidth, meaning you can back up your files every day. Nobody is going to perform backups if it takes too much time. Restoring backups should only transfer data needed for the files that are to be restored so the process is also fast.
* **Verifiable:** Much more important than backup is restore, so Restic enables you to verify that all data can be restored.

To backup your data, Restic creates and manages snapshots. Each snapshot records a set of files and directories which are stored in a set of data files, known as a repository. Backups can be mounted and browsed through, and the data in each snapshot is de-duplicated before it is stored in the repository.

As described in the documentation, the backup command follows this format:

`$ restic --repo rclone:tardigrade:bucket/my-backup backup ~/directory-to-backup`

You also view and restore files from a repository with the Restic command-line utility.  Developers can easily pipe the output of database exports, scheduling, logging and notification tooling to Restic, which enables you to turn data exports directly into snapshots.

Get started testing out [Restic with Tardigrade, here](https://documentation.tardigrade.io/how-tos/backup-with-restic).

- - -

We are excited to hear feedback from the community around the preview release of these two tools, and would love to hear from you!

Let us know how you plan to integrate these tools into your build!  And please reach out in [https://forum.storj.io/t/two-more-tech-previews-Rclone-and-Restic/6072](https://forum.storj.io/t/two-more-tech-previews-rclone-and-restic/6072) - and let us know how we can continue to make decentralized cloud storage an alternative to the competition!