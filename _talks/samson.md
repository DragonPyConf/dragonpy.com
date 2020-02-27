---
layout: talk
title: What is `pyproject.toml`?
speaker: Steph Samson
image: samson.jpg
twitter: 
github: https://github.com/stephsamson
---

## Abstract
What is `pyproject.toml` and where did it come from? Why does the Python community need another config file? We'll answer these questions with a short journey of Python's tooling landscape and a demystification of the two PEPs (517 & 518) that brought pyproject.toml to life.

## Description
The Python ecosystem has been plagued (or gifted, depending on your perspective) with a host of configuration files -- from `setup.py` to `setup.cfg` to `MANIFEST.in`. Not to mention each package's own `.ini` or `.yml` configuration file. So why do we need another configuration file?

To answer this question, we need to start with the history of Python packaging. From there we'll move on to the current state of Python packaging with the existing incumbent builtin build tools, `disutils` and `setuptools`. Knowing the build processes of these packaging utilities will help us understand the motivation for PEP-517 and PEP-518 and the inception of `pyproject.toml`.

We will then explore popular packages that use the `pyproject.toml`, some of which include `black`, `poetry`, and `flit`.

## Bio
Steph is a software engineer with six years of experience and a formal education in computational linguistics. She is also a core contributor to Poetry, a volunteer mentor for Frauenloop, an international conference speaker, and a competitive climber. 
