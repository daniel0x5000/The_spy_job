# 🔍 The spy's job 🔍

> **English translation of the original tool by XDeadHackerX** — translated from the Spanish README. All credit for the tool belongs to its creator.

[Español](https://github.com/XDeadHackerX/The_spy_job) | [English](https://github.com/daniel0x5000/The_spy_job)

> Tool created by XDeadHackerX

<p align="center"><img width="120px" alt="Version" src="https://img.shields.io/badge/version-2.1-blue.svg?style=for-the-badge"/></p>

[![The-Spy-s-Job-2-1.png](https://i.postimg.cc/Xv2dY0Zt/The-Spy-s-Job-2-1.png)](https://postimg.cc/QBTHfwJq)

---

*Hello, I'm* **XDeadHackerX** *and I want to introduce my new tool called* **The_Spy´s_Job**. *This tool is focused on* **OSINT** *covering almost every field* **(People, Nicknames, Social Networks, Emails, Phone Numbers, Websites, Public IPs and Images)**. *My idea was to gather and automate the most advanced OSINT techniques possible into a single tool, so you can work as comfortably and quickly as possible — you only have to give a couple of clicks and it will collect and display all the information in an organized, classified way on its own. Every section is separated by parts in case you only want to extract one specific type of information, but it also has the second-to-last option that combines all the options to pull everything it can from the data you entered. I'll keep updating the repository, adding new things and fixing bugs. All the data and information extraction techniques in the tool are ones I've been studying and collecting over the last 5 years.*
<p align="center"> <img width="350px" src="https://i.postimg.cc/258grZf5/world1.webp"></p>

*Please, if you liked this great project, support it by giving it a* **Star** ★. *At the bottom of the repository there's also the option to buy me a coffee, but honestly you support me more by giving it a* **Star** ★ — *that way I'll see my effort on this project valued.* **[I AM NOT RESPONSIBLE FOR THE MISUSE OF THIS TOOL]**

---

## 💡 Features 💡

:ballot_box_with_check: **OSINT on Websites** --> [*WhatWeb, Whois, Advanced Port Scanner, Server Information, Try to Extract Real IP of CloudFlare-protected Servers, SSL Encryption, List All URLs of a Domain, WordPress Website Information, Extract Employees, Emails and Phone Numbers, List Domains, Google Dorks, Ping a Website from several Countries*]

:ballot_box_with_check: **OSINT on People** --> [*Google Dorks, Social Networks, Images, Posts, etc*]

:ballot_box_with_check: **OSINT on Nicknames/Aliases** --> [*Google Dorks, Search 574 Social Networks for an account with that Nick, Images, Posts*]

:ballot_box_with_check: **OSINT on Social Networks** --> [*Information from an Instagram/TikTok/Twitter/Twitch account ((GitHub + email)) = without needing an account*]

:ballot_box_with_check: **OSINT on Emails** --> [*Email Information, Verify if an Email exists, Search 121 Social Networks for an account with that Email, Find GitHub account linked to the Email, Google Dorks*]

:ballot_box_with_check: **OSINT on Phone Numbers** --> [*Carrier (ISP), Check if registered on Instagram/Amazon/Snapchat, Google Dorks, Try to extract the Owner's Name*]

:ballot_box_with_check: **OSINT on Public IPs** --> [*Carrier (ISP), Geolocation of the exact city, Find open ports with their services/versions, Ping the Website from several Countries*]

:ballot_box_with_check: **OSINT on YouTube Videos/Channels** --> [**Videos:** *Publication Date and Time, Title, Description, Thumbnail Image URL (various sizes), Statistics (views, likes, comments and favorites), Geolocation (if set), Status, Video Details (duration, dimensions, definition, projection), Video Category, Thumbnails.* **Channel:** *Channel Creation Date and Time, Title, Description, Thumbnail Image URL (various sizes), Location (if enabled), Statistics (total video views, subscribers, total videos), Keywords (#), Playlists, Status, Categories*]

:ballot_box_with_check: **OSINT on Images** --> [*Metadata, Google Search Engine, Specific Image Search Engine, Upscale an image x4 with almost no quality loss*]

## 🛠 Install the Tool 🛠

**0)** Install and use the Tool with **Root**

**1)** sudo apt update && apt -y full-upgrade

**2)** sudo apt-get install git

**3)** git clone https://github.com/daniel0x5000/The_spy_job.git

**4)** cd The_spy_job

**5)** chmod 777 the_spy_job.sh

**6)** bash the_spy_job.sh

**7)** Select Option 0 and then 1 to install the dependencies (only do this the first time)

**8)** Inside Option 0 you'll find sections 2 and 3 where you can configure
those free APIs to get the most out of The_spy_job

**9)** Now you can enjoy the tool

## 🎲 Keep in Mind 🎲

**[1]** In Section ([0] Install and Configure Requirements), when you select Option 1 to Install the Requirements, it will ask you to enter a user that does **not** have root permissions. This step is very important — if you enter a user with root permissions, type it wrong, or enter it twice, the options that need to open a Browser from the Terminal won't work.

**[2]** In Section ([0] Install and Configure Requirements) you can configure the veriphone.io, shodan.io and zoomeye.org APIs to get the best out of this tool; all of them are free.

**[3]** In Section ([7] Public IP Information), when using a VPN most servers return wrong answers about their ports. To work around this I've included several scanners, and 2 of them give you the correct ports despite the VPN.

**[4]** Use the tool with Firefox closed — this is because the tool opens multiple tabs, and if Firefox is already running an error will occur.

**[5]** I personally recommend using the Tool with the Terminal in Full Screen (looks nicer).

**[6]** If you have an older version downloaded, I recommend deleting it and reinstalling the tool (+requirements) to fix bugs and get improvements that make the tool much better than previous versions.

## 🔎 Versions 🔎

<details>
  <summary>[ v1.0 ]</summary>
  <p align="justify">[#] Original Version.</p>
</details>
<details>
  <summary>[ v1.1 ]</summary>
  <p align="justify">[#] New options in Section [4] called (GitHub account Information + email) and (TikTok account Information), new option in Section [1] called (Google Dorks), new option in Section [5] (Check if they have GitHub and find their Username), fixed bugs in Sections 6 and 7, fixed the bug when opening a browser on Parrot OS, removed what used to be Option 2 inside Section 4.</p>
</details>
<details>
  <summary>[ v1.2 ]</summary>
  <p align="justify">[#] Expanded Google Dorks in Sections 1, 2 and 6. 1=(New search, filters URLs and photos from the whole Web), in Section 2 (lets you add a keyword to the search to make it more advanced and specific) and finally in Section 6 (also lets you add a keyword to the search to make it more advanced and specific). Fixed a bug affecting the second-to-last option (All options) of every Section, which caused the tool to stop when launching a Browser and not continue until you closed the Browser.</p>
</details>
<details>
  <summary>[ v1.3 ]</summary>
  <p align="justify">[#] Added the famous Zoomeye Search Engine (API) in Section [1] Option [3] and in Section [7] Option [3], new option in Section [8] called [3] Use Specific Search Engine, which uses an image-specific Search Engine, visual improvements, various fixes.</p>
</details>
<details>
  <summary>[ v2.0 ]</summary>
  <p align="justify">[#] New option in Section 5 called ([1] Email Information) which shows very interesting information, improvement in Section 4 Option ([2] Instagram account Information) — now you can see the profile picture of an account even if it's private, improvements in Section [4] Social Network Information: now, besides opening the website with advanced information about that account, it also shows 95% of the information in the Terminal — it will show you the Name (if it has one), number of Posts, followers and following, and a link to download the Profile Picture. The Telegram social network has also been added. New option in Section 8 called [4] Upscale an Image with quality, which upscales the image x4 with almost no quality loss. Fixed the bug when opening two browsers inside one option. Visual improvement in Section 6 Option ([1] See the Phone Number's Carrier and Country).</p>
</details>
<details>
  <summary>[ v2.1 ]</summary>
  <p align="justify">[#] New Section called ([8] YouTube Video/Channel Information). This new section can extract lots of interesting information from a YouTube Video or Channel, such as (Videos: Publication Date and Time, Title, Description, Thumbnail Image URL (various sizes), Statistics (views, likes, comments and favorites), Geolocation (if set), Status, Video Details (duration, dimensions, definition, projection), Video Category, Thumbnails. Channel: Channel Creation Date and Time, Title, Description, Thumbnail Image URL (various sizes), Location (if enabled), Statistics (total video views, subscribers, total videos), Keywords (#), Playlists, Status, Categories*). This section also lets you Generate Statistics for a Video or a Channel. The best part of this new section is that it doesn't require a YouTube API; the downside is that all these results have to be viewed in a browser and not in the Terminal — even so, I'll keep studying how to show the results in the Terminal like in Section 4. Section 4 now also extracts information from private Instagram and Twitter accounts, making it the first free tool on GitHub able to extract this information without needing an API or an account. Cleaned up the results of Sections 1, 4 and 6, removing the special characters that surrounded the results of those sections. Code optimization.</p>
</details>

## ⭐☕ Created by XDeadHackerX ☕⭐

**If you find this project useful, I'd appreciate your support by giving this repository a star or buying me a coffee.**

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/XDeadHackerX)

Copyright © 2023, XDeadHackerX
