---
layout: talk
title: "State Machines in your Python: from inline to StateCharts with SISMIC"
speaker: Dror Speiser
image: https://secure.gravatar.com/avatar/e604da8deef84b3f0fff0b0e19b6abd3?s=500
twitter: drorspei
github: https://github.com/stephsamson
url: https://drorspei.wordpress.com/
---

## Abstract
Do you have too many Boolean variables interacting in complicated ways, with unexpected behavior for your users and yourself?
In this talk I'll show you how to use state machines and StateCharts in python.
You'll learn how to reduce coding and testing to a single task - modelling your problem.

## Description
Finite State Machines (FSM) are a corner stone of computer science, used throughout research and academia to model and solve problems. They are also used heavily in the hardware industry, and in safety-critical software industries (e.g the software in your car).

And yet, we barely use them in most software development. Let me convince you that FSMs are both worthwhile, and easy to use in python. They will let you model your systems better, communicate about them better, find and fix bugs faster.

This talk will go over:

* The problems we face when using Boolean variables to save the state/position of a program.

* An introduction to finite state machines: modelling your problems.

* How to write small, quick FSMs in python.

* An introduction to StateCharts, a generalization of FSMs, suitable for larger problems.

* How to use StateCharts in python using the open-source SISMIC library.

* How to visualize the state of your program offline and during runtime.

* How to automate tests of your StateCharts using the Gherkin language, and automate runtime checks.

* References to online tools and resources.

I will introduce a real-world problem I had at work, of non-trivial, moderate size, that will be a running example throughout the talk and will be used in each of the bullet points above.

This talk will be most rewarding to developers of interactive systems - those that get events from the outside world. This includes web developers, GUI developers, and backend services developers. The talk will also be rewarding for developers working on stateful applications, offline or online - log parsing, behavior modelling, working with external hardware, etc. The content will be beginner friendly.

Things the talk will not go into for lack of time:

* How to verify correctness of your FSM offline - not with tests, but with a *proof*,

* How to automatically generate C code  - gaining 100x speedups for free,

* How to identify your state machine automatically from logs,

and many many other cool things possible with state machines.

## Bio
For the last few years I have been developing signal processing algorithms in python and C++ at a startup called Bugatone.
I'm originally from Tel-Aviv, Israel, and I've been living in Ljubljana for the last two years. Govorim malo slovensko :)

I am interested in many aspects of programming which include the following, all of which are important to me for day-to-day work:
* high performance computation and parallelization,
* machine learning and big data,
* formal modelling and verification,
* api design and team communication,
* debugging high-level and native programs.

I have an ipython extension you should check out: https://github.com/drorspei/ipython-suggestions

Finally, I have a background in pure mathematics, and I have a few running side projects on modular forms and supersingular primes for modular abelian varieties. Ask me about them!

