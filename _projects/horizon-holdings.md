---
title: "Horizon Holdings"
summary: "A desktop app that tracks a simulated fund consisting of 78 equities across multiple developed markets, picked by AI, adhering to Warren Buffet's investment style"
year: 2026
featured: true
tech: ["Python", "SQLite", "Electron", "Claude Code"]
repo: "https://github.com/vansdardy/horizon-holdings-app"
---

## What it is

This is a desktop application that is ***completely coded through Claude Code***.
The application design choices were made by me, and I test-use the application myself to look for bugs.
This application first acts as a tracker for a simulated fund which consists of 78 equities across developed markets like the USA, Canada, Japan, the UK, and several EU countries.
These equities were picked by AI adhering Warren Buffet's value investing paradigm, with loosened conditions on some chokepoint firms like ASML.
To reduce correlation, these equities cover all Bloomberg sectors.
The simulated fund is meant to simulate buying a basket of these equities with designated weights, with an initial cash pile of 10 billion Swiss Francs.
The fund is divided into 200 million shares, such that each share's initial value is 50 Swiss Francs.
Additionally, the application consists of a editable table where users can input their own shares and average price and keep track of P/L.
The application also acts as a tutorial for beginner software engineers, where the tutorial can be accessed through the application.

## Highlights

- Entirely coded by Claude Code using Opus 5 model. Software design choices were made by me, and I look for bugs by test using the application myself.
- Simulates a fund consisting of 78 equities across all Bloomberg business sectors in multiple developed markets, picked adhering to Warren Buffet's investment style.
- Provides an editable table for the user should the user wish to track their own investment in equities present in the list.
- Acts as a tutorial for beginner software engineers to aid them building their first desktop application.
- Application is available as a standalone distribution on Windows machines. The installer can be accessed in the "Release" in the GitHub repository.
- Completely open-source, such that users with a Mac machine or a Linux machine can compile through source code, with the instruction provided in "README.md" file in the GitHub repository.
- Personally, I have started running this application since Aug 13th, 2026. The application is still being updated as I see fit (adding new features, and fixing bugs).
