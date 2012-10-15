# Project Euler Solutions in Common Lisp

These are solutions to the various
[Project Euler](http://projecteuler.net/) problems in Common Lisp,
updated as I feel like it. These are not necessarily the fastest
solutions but rather simple, clean solutions that run in under a
minute on modest hardware. The purpose is to demonstrate the elegance
of Common Lisp.

I enjoy how, provided some extra math functions (`primep`, `factors`,
`divisors`, `!`, etc.), so many of the problems can be computed with a
single `loop` form. As such, this will be the general style of my
solutions.

## Format

Each solution is provided in it's own file, `euler-n.lisp`, providing
a single function of the same name, which takes no arguments and
returns an integer representing the answer.

Functions useful to multiple problems can be found in
`common.lisp`. I'm not bothering with packages since the needed
package declaration would generally be larger than the solution
itself.
