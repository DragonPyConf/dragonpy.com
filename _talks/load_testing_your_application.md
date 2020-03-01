---
layout: talk
title: Load testing your application
speaker: Rok Carl
image: https://secure.gravatar.com/avatar/93cfa9b57395efda82ba43ff6853f56d?s=500
twitter: rokcarl
url: 
---

## Abstract
Load testing a complex application includes more than just pointing Apache Bench at your URL.

You might need to model advanced payloads, use different user-profiles and hit multiple endpoints to get an accurate picture of your system under a heavy load.

And you can do it all within Python!

## Description
Understanding how your system performs under a heavy load is important for many use-cases:
* Capacity planning: how many servers will I need if I get 10x users?
* Performance improvements: does my new code improve the performance?
* CI: can I include performance testing in continuous integration?

Many tools on the market are stuck in the 90s or don't meet many of the needs you might face.
They're missing some or many of the following features:
* ability to run the load test programatically,
* hit many endpoints simultaneously,
* control the payload for each URL,
* support for personas (e.g. admin user, visitor),
* endpoint branching (if no search results, visit the home page, otherwise open the first result),
* hit your target from multiple locations and combine the results.

We're going to explore Python's Locust project and how you can use it to achieve it all!

## Bio
Programmer by training and a technical manager by trade with a knack for UX.
Planning and building support applications with a strong team is my passion, where the planning part happens over a pint of beer. 

