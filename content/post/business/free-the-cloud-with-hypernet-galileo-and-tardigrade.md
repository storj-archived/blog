---
title: Free the Cloud With Hypernet Galileo and Tardigrade
date: 2021-01-25T16:32:54.189Z
image: /blog/img/storj-hypernet.jpg
categories:
  - business
authors:
  - Kevin Leffew
draft: false
---
Today the teams at Hypernet Labs and Storj jointly announce a software integration connecting [Storj’s Tardigrade](https://tardigrade.io/) with [Hypernet Labs](https://hypernetlabs.io/galileo/)’ [Galileo](https://hypernetlabs.io/galileo/). The integration enables you to perform compute functions (data science, simulations, etc.) on your data stored in Tardigrade, without having to move it manually. 

Tardigrade Connectors bridge the chasm between the applications we use every day and the underlying storage infrastructure on which application data is stored. Galileo provides an intuitive, unified web portal to HPC, cloud, and traditional on-premises resources for parallel processing, batch processing, and collaboration. The Galileo web app simplifies the deployment and monitoring of simulations and other analyses. 

Starting today, anyone with a Tardigrade account can navigate to the Galileo Portal (*<https://galileo.hypernetlabs.io/>*) and get started for free. Galileo users can connect additional storage to their Galileo accounts by signing up for Tardigrade and connecting it as a Cargo Bay in Galileo.

<iframe title="vimeo-player" src="https://player.vimeo.com/video/503583379" width="640" height="360" frameborder="0" allowfullscreen></iframe>

In addition to performing computing operations on data stored in Tardigrade, users with connected accounts can turn to Galileo’s web-based interface to upload and download objects from Tardigrade without firing up an uplink CLI. They can also use Galileo to provide permissioned access to specific folders in Tardigrade. By sharing a Galileo Mission (or project—more on this in the brief setup guide below), they can allow other users to upload and download files to their Tardigrade account without sharing an encryption phrase or providing an API key.   

Connecting Tardigrade to Hypernet Galileo is easy—copy-paste a few credentials, and you’re done! Here’s a quick setup guide:

## Getting Started – Connect Tardigrade for Decentralized Storage

In the Galileo web app, start by navigating to the Cargo Bays tab and select Storj as an external provider. Click “Add Cargo Bay” on the right, and follow the prompts.

![](/blog/img/hypernet2.png)

\
The easiest way to connect is to use an Access Grant. To do this, select “Use Storj Serialized Access.” Follow the instructions in the Tardigrade documentation to generate an access for your bucket, here: <https://documentation.tardigrade.io/getting-started/sharing-your-first-object/generate-access>

![](/blog/img/hypernet3.png)

Now you’re ready to use the Tardigrade network as a storage provider in Galileo!

## Creating and Running a Mission

The Galileo Missions feature allows users to easily configure complex simulators and scripting environments to run repeatedly and reliably.

After the initial configuration, your mission environment (which consists of your input files and framework parameters) can be updated quickly and easily through the Mission Settings page. Galileo’s built-in text editor will allow you to directly edit text files associated with your mission so you can conveniently modify parameters or settings before re-running a calculation.  

See the [Galileo Tutorials](https://hypernetlabs.io/galileo/tutorials/#tutorials) for instructions on how to configure Missions for specific applications. Supported tools include leading data science frameworks like [Julia](https://hypernetlabs.io/galileo/tutorials/tutorial-julia/), [R](https://hypernetlabs.io/galileo/tutorials/tutorial-r/), [Stata](https://hypernetlabs.io/galileo/tutorials/tutorial-stata/), [Jupyter](https://hypernetlabs.io/galileo/tutorials/tutorial-jupyter/), and [Python](https://hypernetlabs.io/galileo/tutorials/tutorial-python/), as well as more specialized frameworks like Quantum Espresso, Octave, and FLO-2D.

Use one of [Hypernet’s tutorial example jobs](https://github.com/GoHypernet/Galileo-examples/) and try running a compute job on the Decentralized Cloud, yourself!

## Going Beyond the Cloud

We’re excited to share this new integration with our communities! 

We believe the integration provides an excellent solution for developers, analysts, and researchers, enabling them to integrate with the decentralized cloud and address the data locality problem.

Stay tuned for blog posts and announcements in the coming weeks which will detail the ways in which our partners are building applications and developer tooling which leverages the decentralized cloud.

*For more information around how to create a Tardigrade Connector, and partake in Open Source Revenue Share, [follow this link](https://tardigrade.io/partner/), or email us directly: kevin\[at]storj.io.*