---
title: "Portscan"
date: 2022-01-02T16:07:11+01:00
draft: false
comments: false
images:
---

This experiment is about running a port scan of the client accessing this page.

How is this done you may ask ? Well I did not invent it, so kudos to [Avi Lumelsky](https://avi-lumelsky.medium.com/) who wrote this brilliant article : [Browsers — A Localhost Gateway: Client Port Scanning Using WebAssembly And Go](https://infosecwriteups.com/identify-website-users-by-client-port-scanning-using-webassembly-and-go-e9798b4aa05c).

The global principle is to have the browser make HTTP requests locally, on every port that you want to scan. This is usually blocked by all modern browsers, but there seems to be a flaw when the requests are made through webassembly.

Analysing the response you get for each request, you can determine whether the port is open or closed !

> Note : it appears in the latest [Brave Browser](https://brave.com/) release, these requests are recognized as potential trackers, and are therefore blocked. A great proof of concept that blocking site trackers not only increases your privacy, but your security as well.

This is quite an interesting little project for one to build, that I totally recommend. It takes some fiddling with Golang and Javascript, and integrating it into a website with Webassembly is not as straightforward as one may think.

While reading this, your device actually got scanned ! You want to see the results ? Just wait a couple seconds for them to appear just below right here, once the scan is completed.

{{< portscan >}}