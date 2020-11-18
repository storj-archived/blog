---
title: Tardigrade Backup for Kubernetes
date: 2020-11-18T14:17:28.025Z
image: /blog/img/blog-velero.png
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
Kubernetes and container technologies have ignited a shift from machine-driven architecture and operations to unified application-driven architecture. This shift has increased application scalability and reduced platform friction. It has also created problems for enterprises dependent on traditional backup tools for data protection.

Traditional backup solutions don't work with agile Kubernetes concepts like container-granularity, namespaces, Kubernetes configurations, backing up distributed databases, and multi-cloud operations.

So, to make life easier for DevOps teams, we set out to build a modern Kubernetes backup tool using the Tardigrade toolset. Originally presented at DEFCON 2020, this architecture increases the resiliency of Kubernetes clusters and infrastructure by backing up object data to the decentralized cloud.

Today, we're announcing Tardigrade Backup for Kubernetes. The architecture leverages [Velero](https://velero.io/), a popular open source tool used by many DevOps professionals to back up and restore Kubernetes clusters and associated object data.

"The Velero community is excited to see Tardigrade develop an integration with Velero, providing another option for object storage to our users," said Michael Michael, Director of Product Management at VMware. "Velero's mission is to be the best backup and recovery solution for Kubernetes, and integrations like this showcase our strong commitment to be an ecosystem citizen and enable users to take advantage of secure, globally-distributed cloud storage solutions that meet their needs."

![](/blog/img/velero1.jpg)

### Enabling a more resilient Kubernetes DR and migration strategy

In any Kubernetes environment, DevOps engineers need a backup, disaster recovery, and migration strategy.

Traditional cloud data center backup and recovery solutions don't fit with Kubernetes because they often assume the infrastructure from where data is backed up is the same infrastructure to where data is restored. However, Kubernetes apps are often backed up and restored across clouds and data centers.

Tardigrade Backup for Velero allows you to back up your Kubernetes objects to Tardigrade and take advantage of the decentralized cloud's superior availability, distribution, and security.

The plugin is well suited for disaster recovery use cases, as well as for architecting cloud-agnostic solutions.

### Easily backup and restore all your Kubernetes applications

Velero is a command-line tool that backs up Kubernetes clusters and restores them in case of loss. Velero is supported by [VMware](https://www.vmware.com/) and includes a command-line interface and server-side component that runs inside your Kubernetes cluster.

Velero lets you:

* Take backups of your cluster and restore in case of loss
* Migrate cluster resources to other clusters
* Replicate your production cluster to development and testing clusters

Velero consists of:

* A server that runs on your cluster
* A command-line client that runs locally

Velero has a Go client SDK that integrates with the Kubernetes API, using plugins to provide capabilities for syncing across multiple cloud environments.

Velero uses the Kubernetes discovery API to find all the objects stored in ETCD and grabs each cluster, object, state, and a snapshot of persistent volumes.

If you're familiar with kubectl, Velero supports a similar model, allowing you to execute commands such as `velero get backup` and `velero create schedule`.

### The Tardigrade plugin is purpose-built to support multi-cloud Kubernetes architectures

Today, any enterprise Kubernetes strategy needs to be optimized for a multi-cloud world. Modern applications work in multiple data centers, whether within a single managed platform or across multiple providers.

Velero is optimized for multi-cloud architectures and is often used for migration between cloud providers. These powerful backup and restore capabilities enable high levels of application and data mobility across different clouds. The Tardigrade Velero plugin enables you to schedule backups on the decentralized cloud and restore them to anywhere in the world, instantly, on-demand.

Creating a backup is as simple as running `velero backup create`.

With the plugin, backups can be done selectively: A big cluster can be backed up or restored selectively by namespace and/or label. Next, we'll show its usefulness.

### Reduce the global recovery time objective for your cluster

Because Tardigrade is a globally distributed hot object store, you can store and recover your Kubernetes volumes from anywhere in the world, instantly, without having to replicate data across regions. For DevOps managers, this can mean better resilience for your cluster, reduced global RTO (recovery time objective), cost-savings, and improved native security over centralized alternatives.

Disaster recovery for containers is different from VMs—there's more state within a Kubernetes application than just data. DevOps Managers need to back up both their application configuration files and the container image version.

In the example below, we can see a disaster recovery scenario where we might need to migrate into a new cluster:

![](/blog/img/velero2.jpg)

In this scenario, Cluster B is restored from the backup of Cluster A and reconstituting the Kubernetes volume in the cluster.

### The decentralized cloud improves your Kubernetes strategy

Kubernetes is an open source container orchestration engine for automating deployment, scaling, and management of containerized applications.

The new Velero Plugin for Tardigrade enables a more resilient and economical Disaster Prevention, Recovery, and Cloud Migration approach. Try it out and let us know what you think. You can get started [following this tutorial](https://documentation.tardigrade.io/how-tos/kubernetes-backup-via-velero).