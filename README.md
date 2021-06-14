# Prolog with SWI-Prolog
## _FORMALISATION DE SYSTEMES EXPERTS_ `SWI-Prolog`

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

what is PROLOG .

PROLOG is perfectly suited to formalize expert systems. Indeed, an expert system is a computer program simulating human intelligence in a particular field of knowledge or in relation to a specific problem.
PROLOG has 3 essential components:
- a knowledge base, made up of statements relating to all kinds of facts that make up the field
- a set of decision rules, recording the methods, procedures and reasoning schemes used in the field
- an inference engine, a subsystem that allows you to apply decision rules to the knowledge base

## We will try to color the following regions
As an example of an expert system, we will formalize the region coloring problem. The rules for this problem are as follows

- A surface is cut into a number of regions of varying surfaces and shapes
- Each region must be colored
- Two adjacent regions must have two different colors
![Graph schema](https://i.ibb.co/SNMjRMX/image.png)
![Graph schema](https://i.ibb.co/zFpddbw/image.png)

we will firstly use "adjacent(x, y)" witch means that X is adjacent to Y 
       

> adjacent(1,2). adjacent(2,1).
> adjacent(1,3). adjacent(3,1).
> adjacent(1,4). adjacent(4,1).
> adjacent(1,5). adjacent(5,1).
> adjacent(2,3). adjacent(3,2).
> adjacent(2,4). adjacent(4,2).
> adjacent(3,4). adjacent(4,3).
> adjacent(4,5). adjacent(5,4).

```description
conf : means conflict
```

This knowledge base works perfectly
![exec test](https://i.ibb.co/XkPHvtC/image.png)

## version 2

We used between(2,5,something) witch means something is at a time 2 then 3 then 4 then 5 without repeating adjacent many times to optimise our code

![exec test](https://i.ibb.co/Tq27jjv/image.png)

## version 3

We can see that there is only 2-5 and 3-5 are not adjacent, so we used another developed method to code the problem : 



we also used if statments in a logical programming in this version like so:

![exec test](https://i.ibb.co/vqRMWNM/image.png)

## Installation

let's see how to install `SWI-PROLOG` on a linux server.
| Command line | README |
| ------ | ------ |
| SWI-PROLOG | https://www.swi-prolog.org/pldoc/man?section=cmdline |

First things first, we need to install swi on our linux:
1. Add the ppa ppa:swi-prolog/stable to your system’s software sources

Open a terminal (Ctrl+Alt+T) and type
```sh
sudo add-apt-repository ppa:swi-prolog/stable
sudo apt-get update
```

2. Install SWI-Prolog through the package manager
```sh
sudo apt-get install swi-prolog
```

## How to use it
- Write a prolog program as a text file with a .pl ending. For example, program.pl
- Open a terminal (Ctrl+Alt+T) and navigate to the directory where you stored your program
- Open SWI-Prolog by invoking `swipl`
- In SWI-Prolog, type [program] to load the program, i.e. the file name in brackets, but without the ending
- To exit SWI-Prolog, type halt. 

For more Getting started advice, please refer to the SWI-Prolog Tutorials
https://www.swi-prolog.org/pldoc/man?section=quickstart