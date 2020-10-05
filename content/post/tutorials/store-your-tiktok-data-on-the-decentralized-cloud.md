---
title: Store Your TikTok Data on the Decentralized Cloud
date: 2020-10-02T14:35:08.591Z
image: /blog/img/storj-blog-tiktok.png
categories:
  - tutorials
authors:
  - Kevin Leffew
draft: false
---
Recently, there's been a lot of buzz around [TikTok getting banned in the United States, Europe, and other places](https://www.nytimes.com/2020/09/18/business/trump-tik-tok-wechat-ban.html). On June 29, 2020 the Indian government banned TikTok, making it inaccessible to users across the country. On November 12, 2020, the same ban will go into effect in the United States.

With great uncertainty existing around the future state of the application, it's in many users' best interest to back up their TikTok creative videos, comedy sketches, and dances before it's too late.

Data stored on Tardigrade is decentralized, meaning it's spread across uncorrelated endpoints across the world with different hardware types, ISPs, and owners. This makes Tardigrade much more resilient than other solutions, protecting you and your personal data from deletion and censorship.

### Programmatically Move TikTok Data to the Decentralized Cloud

To back up your TikTok data, first copy the public URLs of the content you wish to capture. You can generate a URL from the TikTok application by clicking the icon, "Copy Link" associated with the video you're hoping to backup.

!["Copy Link" - Copy the links of the files you wish to capture](/blog/img/tiktok1.png "\\\\"Copy Link\\\\" - Copy the links of the files you wish to capture")

This tool is publicly available on GitHub (MIT License) and enables you to programmatically download your content from TikTok: <https://github.com/drawrowfly/tiktok-scraper>

The tool can easily be installed from NPM by navigating to your terminal and entering:

`$ sudo npm i -g tiktok-scraper`

Once installed, you can use the following command to download a TikTok from your terminal:

`$ tiktok-scraper video https://vm.tiktok.com/[VideoURL]/ -d`

In the above example, “[https://vm.tiktok.com/VideoURL/](https://vm.tiktok.com/ZMJDyKB6t/)” is the link representative for the content you wish to decentralize.

After you run the command, the terminal should output a video location, something like:

`Video location: /Users/kevinleffew/6804939107446377734.mp4`

Copy the location, and use it to upload the video to tardigrade, [using this guide](https://documentation.tardigrade.io/getting-started/uploading-your-first-object/upload-an-object). The upload command should look like this:

`$ ./uplink cp ~/6804939107446377734.mp4 sj://bucket`

To share the TikTok and generate a URL for it, use the share command, example:

`$ ./uplink share sj://bucket/6804939107446377734.mp4`

This command will output access restrictions and a URL, which you can use to share the content; ie:

![](/blog/img/tiktok2.png)

![](/blog/img/tiktok3.png)

[Watch a short video streaming from the Decentralized Cloud, here.](https://link.tardigradeshare.io/1bScgCyuFSAQmvKWAo7XuUbViTRvXVKoAag8nf8uEE2jk7A122oernDWhAWgqAnKBv5zmhEnL6Z7xWFWbNdFMte3jCzn4fHxqhf7xurbwgm3p8PGSB7evhDJtvhfLMXKD1W1ktE6yeFHGPBUnb89f1hRhqWVoBYVgQJQJC2QPHiUDWrcfL6rPjVnMNyqHUoaCNTPWrg1iMqJWsAaHKxC2CJNLC2hcTLsGh2HVzNLGQ4uWmJV36wPT8mWtiutWvsrmDxXmBE7t4FJBZYoytDPURzVDvbvieZ7B3ApqVkx4tXNFpLSSwCGQP1nV1JKkkeeeLUt995dmWeuefHJMAroab7CjNMuymR61TUPCFVGGdsYHibSdos3BSBiwkavVUFvdyBmBPtQVWQLmmmtFjCKd6xMF6g61Pq6eTFcqdsGN688Gddi4X7EBf9hxECvTiVBweG/dwebdemo/TardigradeExplainerVideo.m4v?view)

And that's how you back up your TikTok videos to the Tardigrade decentralized cloud storage service to ensure you never lose access to your precious videos! 

Once you've uploaded your videos to Tardigrade, share your TikTok videos on your favorite social media platform, or in the [forum](https://forum.storj.io/), for a chance to win SWAG.