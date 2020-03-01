---
layout: talk
title: Be nice, help the person who hacks your servers to get your data
speaker: Vranac Srdjan
image: https://secure.gravatar.com/avatar/5a19066f37052cb27575c1597164ceb2?s=500
twitter: vranac
url: 
---

## Abstract
We keep our credentials and secrets in .env files, env variables, and config files. We share that data often in an insecure way. We rarely think about if we are making it easy for someone to access our data. Do we understand what happens after the breach?

## Description
In May 2018 something happened to the internet, GDPR came online, 
and suddenly users in the EU had a lot more rights to their digital privacy, 
which is awesome. But on the flip side the implementation of the GDPR and 
procedures regarding it, are very vague, and were meant to be written as 
we go along, with whatever comes up as best practices.
Books and talks have been written and given about the data encryption, problems
encountered with event sourcing systems, questionaries about the purposes of 
collecting user data... So many words, and hours of many lives spent...
Yet, something has been overlooked, something so basic, we do not even notice it.
If you are working on an enterprise class project, or on other large projects,
you might have an infra team that would deal with this and tell you what you need
to do to be secure (at least good ones will)
But... if you are working on smaller projects, and you have mom and pop shops
to support, you deserve the same level of security bigger projects have...
I am talking about secrets and credentials management for your application, the most
overlooked aspect of any application.
This talk looks into the business repercussions of weak secrets management; 
we go over the typical patterns of use and why they might be harmful. 
We shall also look at ways to improve this situation and decrease the fallout in case the worst happens.


## Bio
Vranac has been in this industry for a long time. He had good fortune to work with a lot of 
talented people, and had a chance to see some brilliant code, and some of the worst ever written.
He gets paid for writing code that performs exceptionally. He runs Code4Hire, a small outfit dedicated
to solving tough problems.

