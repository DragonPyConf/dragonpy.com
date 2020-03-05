---
layout: talk
title: Be nice, help the person who hacks your servers to get your data
speaker: Vranac Srdjan
image: vranac.jpg
twitter: vranac
speaker_url:
---

## Abstract
We keep our credentials and secrets in .env files, env variables, and config files. We share that data often in an insecure way. We rarely think about if we are making it easy for someone to access our data. Do we understand what happens after the breach?

## Description
In May 2018 something happened to the internet, GDPR came online, and suddenly users in the EU had a lot more rights to their digital privacy. Which is awesome. 

But the implementation of the GDPR and procedures regarding it, are very vague. They were meant to be updated as we go along, with whatever comes up as best practices.

Books have been written and talks have been given about data encryption, about problems encountered with event sourcing systems, about questionaries for collection of user data... So many words, and hours spent...

Yet, something has been overlooked, something so basic, we do not even notice it.

If you are working on an enterprise-level project, or a generally large project,
you might have a team that deals with this and makes sure your project is secure.
But... if you are working on smaller projects, if you are supporting mom and pop shops, you might not have the resources to ensure the same level of security. To help you improve your security, I am going to present how to manage your secrets and credentials, an often overlooked aspect of an application.

This talk looks into the business repercussions of weak secrets management; 
we go over the typical patterns of use and why they might be harmful. 
We will also look at ways to improve this situation and decrease the fallout in case the worst happens.


## Bio
Vranac has been in this industry for a long time. He had the good fortune to work with a lot of 
talented people and had a chance to see some brilliant code, and some of the worst ever written.
He gets paid for writing code that performs exceptionally. He runs Code4Hire, a small outfit dedicated
to solving tough problems.

