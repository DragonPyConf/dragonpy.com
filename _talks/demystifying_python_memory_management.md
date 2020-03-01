---
layout: talk
title: Demystifying Python Memory Management
speaker: Chelsea Dole
image: https://secure.gravatar.com/avatar/1fdbe92dcaa646564434650b7be0ebca?s=500
twitter: 
url: http://chelseadole.com
---

## Abstract
Memory management in Python is a tricky beast. This talk seeks to provide the basic tools you need to understand the Python Memory Manager, garbage collection, and (most importantly) how you can use those academic concepts in order to effectively identify and improve memory-inefficient code.

## Description
# Outline

## Intro (2 mins)
1) Briefly introduce myself
2) Questions to answer in this talk
    * What is a Python variable?
    * How does Python add to and remove from memory?
    * How do I reduce my code’s memory overhead without huge refactors, or 20 years of experience?
3) High-level talk overview
    * Note: CPython only

## Memory Management in Python (5 mins)
* Everything is an object!
    * “type”, “value”, “refcount”
    * Comparison to statically-typed languages (Java, C, etc) -- no manually-defined var type/size.
* **Python Memory Manager**
    * Two types of memory, both stored in RAM.
    * **Stack memory** → function calls/local variables (memory only needed within a set scope) -- “static memory”
        * Memory used by a function within an app
        * Literally a “stack” (LIFO)
        * “Call stack” → active subroutines in the order they’ve been called. 
        * When a function ends, all variables “popped” out of stack.
    * **Heap memory** → free memory, “dynamic memory”
        * Python has its own “private heap”, containing ALL python objects and data structures. Order-less bunch of values
        * Memory used at the global level in an app
        * In C, devs manually set aside heap memory. Because standard Python is written in C, this code is managed for you in Python’s C source code
            * `malloc()`, `calloc()`, `realloc()`, `free()`
            * In C, if you FAIL to do this, you’ll have a “memory leak”

## DEMO: `sys.getrefcount()`, `id()` (8 minutes)
* **Terminal**
```
>>> import sys
>>> test_str = "This is my CFP demo screenshot!"
>>> sys.getrefcount(test_str)
2
>>> test_lst = [test_str]
>>> sys.getrefcount(test_str)
3
>>> test_int = 1
>>> sys.getrefcount(test_int)
143
```
* Wait… what’s that? 
* String interning!
    * Caching of frequently-used strings and integers into memory. Python also caches/”interns” strings it deems to look like they might have frequent use
* **Terminal** (continuing from previous prompt, with test_str and test_int)
```
another_test_int = 1
test_int is another_test_int
>>> True  # because “1” is string interned in memory
id(test_int == id(another_test_int)
>>> True # id() returns an object’s unique, integer identity
test_int is another_test_int
>>> True # using the “is” keyword is shorthand for using the id() function. It checks for IDENTITY of object, not object value/evaluation
```

## Garbage Collection (3 minutes)
* Now we have a basic understanding of how we ADD things to memory. But how do we REMOVE things from memory?
* **“Garbage collection”**: Methods of freeing up Python objects in heap memory that have no further use
    * Stack memory doesn’t need garbage collection because everything in the stack is “in use”, and stack memory is automatically reclaimed at the end of a routine/function
* **Refcount** --  used in Python’s source code to decide when to remove an item from the heap. Primary method of garbage collection.
    * Reminder: one of the three things on every Python object/item in memory
    * Refcount Increases w/ variable/usage, and decreases out of scope, “del”, etc. When refcount is 0, obj is deleted.
* **“Mark and Sweep”** -- generational version of “mark and sweep” algorithm. Used to handle cases that refcount GC is bad at -- namely circular references. 
    * “Mark” -- find all code-“reachable” objects 
    * “Sweep” -- “sweeps”/clears all the unreachable objects from memory

## So… how do I write memory-efficient code? Ask yourself… (5 minutes)
* So now that we know some information about how memory is allocated and freed up… so how can I tell if I’m writing memory-inefficient code, and how can I fix it?
* With your current level of knowledge from this talk, here are a few questions you can ask yourself to figure this out — and some examples of how you can fix it. 
* **Am I copying a reference/object when I could be referencing it? Am I using an imported or built-in method that’s doing that “under the hood”?**
    * EX: list slicing
    * EX: Using “+” for string concatenation
    * Copies existing string, then adds new content
        * F-string is fastest, followed by format and %s, followed by “+”
**Am I using memory-heavy data structures when they’re not necessary?**
* Empty data structures (“container objects”) are relatively large in memory. They only “hold” references to other objects. Therefore, if you’re using LOTS of them unnecessarily, it can be costly in large scale
    * EX: dynamically generating nested dictionaries to hold only a few items
**Am I loading something into heap memory that doesn’t need to be in heap memory?**
    * When does this happen?
        * EX: loading a list for the sake of getting the first/last item only
        * EX: Loading a full file in its entirety all at once
        * EX: When you’re creating a list for the purpose of iterating through it, NOT using the list values as a unit.
        * EX solution: Iterators and generators
            * Iterators “lazy load” values, and don’t compute the value initially. Generators are helper functions that help us access iterators
            * Use generators for getting sequences of values, reading files
            * Generator expressions -- they exist!

## Final Thoughts/Conclusion (1 minute)
* Now you have a basic understanding of how CPython manages memory “under the hood”. Where it puts objects to be stored in different scenarios, and how it gets rid of those objects when they’re no longer needed. 
* We’ve also talked about three questions you can ask yourself to assist in understanding and identifying memory inefficient code, and looked at some easy ways to combat that inefficiency — using the knowledge we worked on today


## Bio
Chelsea Dole is a Data Engineer at the dating app Coffee Meets Bagel, where she designs and implements data architecture to support user-matching algorithms. Previously based in CMB's Seattle office, she is now working remotely, and currently resides in Bangkok. In her spare time, she enjoys learning more about Python and engineering, dancing lindy hop, playing tennis, and DJ'ing jazz music.

