---
title: Build a Docker Container Registry Backed by the Decentralized Cloud
date: 2020-11-02T21:34:29.656Z
image: /blog/img/blog-dock-registry.jpg
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
Docker Registry is a stateless, highly scalable server-side application that stores and lets you distribute Docker images. The Registry is open-source, under the permissive Apache license.

Docker containers are a foundational building block of many companies' software infrastructure. 

A registry is a storage and content delivery system holding named Docker images, available in different tagged versions. Users interact with a registry by using Docker push and pull commands.

Storage itself is delegated to drivers. Today we're excited to showcase the Docker Registry for Tardigrade, enabling anyone to host their Docker Registries on the Decentralized Cloud via the Tardigrade S3-compatible gateway.

![Easily pull/tag/push containers to the decentralized cloud](/blog/img/docker1.png "Easily pull/tag/push containers to the decentralized cloud")

"Docker Registry's native features are greatly improved by the globally distributed nature of Tardigrade, which breaks files up into small redundant pieces and streams them in parallel," said Nick Stinemates, application containerization consultant. "Having a distributed registry minimizes global latency between the build and run environment and can improve the image transfer efficiency. Tardigrade distributes registry storage across the global edge, making it quick and efficient to spin-up a container process anywhere."

We're excited to showcase this new Tardigrade Connector for Docker Registry, making it easy and economical for developers to choose a distributed back-end storage layer for container images storage with Docker Registry.

### Developing a Distributed Storage Plugin for Docker Registry

Running a Registry on Tardigrade is a great solution to integrate with and complement your CI/CD system. In a typical workflow, a commit to your source revision control system would trigger a build on your CI system, which would then push a new image to your Registry if the build is successful. A notification from the Registry would then trigger a deployment on a staging environment or notify other systems that a new image is available.

It's also a game-changer if you want to quickly deploy a new image over a large cluster of machines spread across a diverse set of geographic locations.

Finally, it's the best way to distribute images inside an isolated network.

Docker Registry plugs into reliable blob storage options, like S3, GCS, ECR, HDFS, or another registry, instead of managing data. The storage interface is simple, and new options are straightforward to add.

### Quickstart Guide: Run your own Tardigrade Gateway-backed Registry

To get started running your own Tardigrade-backed Registry, you can follow these steps:

```
# run the gateway setup command
docker run --interactive --tty --volume ${PWD}:/root/.storj storjlabs/gateway:latest setup --config-dir=/root/.storj

# launch the gateway
docker run --detach --volume ${PWD}:/root/.storj --publish 7777:7777 --name gateway storjlabs/gateway:latest run --config-dir=/root/.storj

# collect access key and secret from logs
docker logs gateway

# create a storj bucket for our backend
uplink --config-dir=${PWD} mb sj://registry-backend

# point the docker registry to the s3 gateway as a backend
docker run --detach --publish 5000:5000 -e "REGISTRY_STORAGE=s3" \
	-e "REGISTRY_STORAGES_S3_REGION=us-east-1" \
	-e "REGISTRY_STORAGES_S3_BUCKET=registry-backend" \
	-e "REGISTRY_STORAGES_S3_ACCESSKEY="<access key>" \
	-e "REGISTRY_STORAGES_S3_SECRETKEY="<secret key>" \
	-e "REGISTRY_STORAGES_S3_REGIONENDPOINT="localhost:7777" \
	--name docker-registry registry:2
```

This hooks up the S3 gateway with the docker registry specifically in the S3 REGIONENDPOINT. For the purposes of this guide, the S3_REGION has to be a valid AWS region for Minio (even though it doesn't actually affect anything).

![](/blog/img/docker2.gif)

### Tardigrade offers more distributed, resilient, and economical storage for Docker Registry

Tardigrade is a distributed storage solution created by Storj Labs (led by Ben Golub, Docker's former CEO). Data is encrypted on Tardigrade, broken into small overlapping pieces, and spread across tens of thousands of uncorrelated endpoints. This creates a much more distributed, performant, and resilient backend for Docker Registry container image storage and distribution.

Tardigrade represents an opportunity for Docker Registry developers to reduce their cloud storage and bandwidth bills by a significant amount. Tardigrade Storage is less than half the price of most AWS Availability Zones. It's globally distributed, meaning there's no need to replicate your container set across US-East, US-West, Europe, and Asia.

Finally, while just starting a decentralized registry is fairly easy, operating it in a production environment requires operational skills, just like any other service. You're expected to be familiar with systems availability and scalability, logging and log processing, systems monitoring, and security 101. Strong understanding of Http and overall network communications, plus familiarity with golang, are certainly useful as well for advanced operations or hacking.

If you have any questions or comments around this integration, join our community and reach out at [forum.storj.io](https://forum.storj.io/).