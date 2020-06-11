---
title: Cross-Platform-Uno-App Accessing Tardigrade
date: 2020-06-11T15:37:01.251Z
image: /blog/img/tar-uno.png
categories:
  - tutorials
authors:
  - Tim Parth
draft: false
---
In this blog post, I will show you how to create a very simple cross-platform \[Uno-App](<https://platform.uno/>) that uses the uplink.NET-Package to connect to the Storj network. It will work on the Universal Windows Platform (UWP), WinUI, Android, iOS, and macOS. To build all targets you would need a Windows-PC and a Mac with Visual Studio installed.

If you don’t know what the Storj network is, have a look at \[this video]( https://t.co/CqLz22nS62?amp=1) directly streamed from the Tardigrade cloud storage service. In short: it’s an open source, decentralized, highly-secure, end-to-end-encrypted S3-like-but-cheaper-than-amazon object store. Oh, that wasn’t short–but it’s the truth! By using Storj, no file will ever be lost or compromised again and you get the same performance as you would with other cloud storage providers. You have a business and need SLAs und such? Use \[Storj’s Tardigrade service ](https://tardigrade.io) for full support.

The example discussed in this blog is also available on \[Github](<https://github.com/topperdel/uplink.net.apptest>). But getting your hands dirty and building it yourself is better–so let’s get started!

### What you’ll need

As stated above, you’ll need a Windows-PC or Mac with Visual Studio installed to follow along. If you haven’t done so already, also install the Uno-Platform Solution Templates. Info on how to install it can be found \[here](<https://platform.uno/docs/articles/get-started.html>).

Create a new project and select the “Cross-Platform App (Uno Platform)“-template. Give it a name–here I’ll call it “uplink.NET.AppTest“. Remove the WASM-Project—it won’t be supported in the near future, unfortunately.

Select an appropriate project-head as the start project (e.g. the UWP-head), hit F5 and you’ll see the template-standard “Hello, world!“:

![](/blog/img/uno1.png)

Try the other heads as well if you like – they should all work.

Now, let’s move to the fun part: invite Storj to the party!

### Connecting to the future

To get connected to Storj and the Tardigrade network, all you have to do is add the “uplink.NET“ package to all your project heads. It contains namespaces, helper-classes, and–of course–the binaries for all platforms and manages to add them to your project at the right places. Besides the scope of this Uno-Sample, it also supports .Net-Core and therefore runs on Windows, Linux, and macOS! Amazing stuff, isn’t it?

Back to our Killer-App: right-click the solution, select “Manage Nuget-Packages“, search for “uplink“ and install the latest version of the “uplink.NET“-package to all of your projects. Now, to see that we are actually calling into the Uplink-binaries for every platform, let’s print the version number of the underlying uplink-c library below the “Hello World“.

Change the code in “MainPage.xaml.cs“ within the “Shared“-Project to this:

![](/blog/img/unodos.png)

To view the version on the page, also change the “MainPage.xaml“ to something like this:

![](/blog/img/uno3.png)

Run the head-project(s) of your choice and feel better. You’re really calling into the uplink-c-binary to fetch the version it got compiled with!

Now that you’re getting warmed up, let’s do some really cool stuff. Let’s create a bucket on the network, upload a file, list the content, and download the file again to verify it. Ready? Let’s go.

### Diving deep

To continue, you need an account on the Tardigrade Satellite of your choice. Please see the \[Tardigrade Website](<https://tardigrade.io/satellites/>) for more info.

First of all, we need to set a temp-directory that we can use.\
Set this to “System.IO.Path.GetTempPath()“. Do this within the “OnLaunched“-method in “App.xaml.cs“:

![](/blog/img/uno4.png)

As the uplink .NET coding is truly cross-platform, it can be done solely in the shared project.\
Let’s add a button to the main page and do the funny stuff within its action-handler. Remember that this is not the way to go in a real-life environment! This is just to keep this as simple as possible.

Modify the MainPage.xaml by adding a button like this:

![](/blog/img/uno5.png)

In the MainPage.xaml.cs, add a new method for the Click-Handler. Mark it as async, as we’re doing some background stuff there:

![](/blog/img/uno6.png)

Change this method to the following code. Replace YOUR_SATELLITE_URL, YOUR_API_KEY, and YOUR_SECRET with your own. The Satellite will be something like “us-central-1.tardigrade.io:7777“. An API key can be created within the Satellite configuration, following this \[documentation](<https://documentation.tardigrade.io/getting-started/uploading-your-first-object/create-an-api-key>). The secret is a passphrase that will be used to encrypt your data on the Storj network. If you lose it, your data will be lost forever–so keep it somewhere safe!

![](/blog/img/uno7.png)

Let’s get you a short summary of what happens here. First, we need to get an “Access“ (0). This can either be done by providing the Satellite URL, an API key, and the secret, or by using a serialized access grant (Macaroon). What the latter means is explained \[here](<https://storj.io/blog/2020/05/changing-the-security-paradigm-to-push-access-management-to-the-edge/>).

Next, we create a BucketService-instance using that access (1) and create a new bucket (2) called “test-app-bucket“. Keep in mind that there are certain restrictions for bucket-names.

Now that we’ve successfully created a bucket (feel free to check the returned bucket-object to be sure it worked–all error handling is omitted for this example for the sake of simplicity) we can create an instance of the ObjectService using the same access (3) and upload our first test-bytes to the network (4). The test consists of a simple UTF-8-string we upload. Feel free to modify the example using a Stream of whatever kind and size. Here we are awaiting the upload (5) but this can also be dispatched to the background.

Then we’ll list the content of our bucket and should only find one item – our “test.txt“ (6). We show the successful listing by opening a MessageDialog with every object we’ve found (should be only one, obviously).

To verify the content of our object, we’ll download it again using DownloadObjectAsync of the ObjectService (7) and await the download (8). By converting the received bytes to a string again (9) and showing it in a MessageDialog too, we’re sure that the data didn‘t change during transfer.

To clean up everything behind us, we’ll delete the object (10) and bucket again (11).

This example should run on all platforms exactly the same. Here are some screenshots for the different devices:

![](/blog/img/uno8android.jpg "Android")



![](/blog/img/uno9windows.png "Windows")



![](/blog/img/uno9macos.png "MacOS")



![](/blog/img/uno10macos2.png "iOs (Simulator)")

### Final thoughts

In this blog, we’ve created a simple test-app using the Uno-platform which is able to connect to the Storj network through the uplink.NET-Library. I hope you’ve enjoyed the tutorial and are eager to develop the next awesome cross-platform-fully-decentralized-killer-app! Happy hacking!