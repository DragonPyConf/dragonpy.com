---
layout: talk
title: Scaling our API to 30k requests per minute in Django
speaker: Nejc Saje
image: nejcsaje.jpg
twitter: NejcSaje
url: https://nejc.saje.info/
---

## Abstract
We've gradually increased the number of requests our Django stack served from a couple hundred to currently around 30k requests per minute. Learning as we went, we removed one bottleneck after another. In this talk, we'll go over the largest issues we encountered and how we tackled them.

## Description
When you start with an API you usually start simple - one Python process synchronously handling incoming requests. Soon, the amount of work to be done becomes too much for that single process so you need to start making some changes. This talk will give you tips, tricks and best practices for higher throughput APIs in Python which you'll be able to apply to your stack.

## Bio
Developer with many years of Python experience, including working at Red Hat and being a former core contributor to [OpenStack Project](https://www.openstack.org/).

Currently working at Zemanta, leading an amazing full stack team working on [Zemanta DSP Platform](http://www.zemanta.com/).


