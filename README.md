# PhD thesis for Jesse Frohlich. #

This thesis uses:

```
A Thesis Template
for the Department of Mathematics, University of Toronto
Copyright (C) 2019 Fabian Parsch
```

This template is based on, and the vast majority of credit goes to

```
A Classic Thesis Style v4.6
An Homage to The Elements of Typographic Style
Copyright (C) 2018 André Miede and Ivo Pletikosić 
```

Please see the file ClassicThesis.pdf for more information.
Your comments are highly appreciated.

If you like the style then the authors of Classic Thesis would
appreciate a postcard. Their address can be found in the file
ClassicThesis.pdf. A collection of postcards they received so far
is available online at http://postcards.miede.de

## License ##
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.

## To do list ##

### Rough Draft ###
- [X] Add theorems from `BV` to Gaußian chapter
- [X] Add code (with comments) for the mma™ code.
- [X] Fix `toRVT` code output for knots (should be long, not bent)
- [X] Add output code to analysis section
- [ ] Add "further computations"
  - [ ] E.g. how the invariant interacts with satellites

### Feedback from Dror ###
2023-06-01

#### Abstract ####
- [X] Missing an executive summary; add to abstract or add an "executive summary" section.
- [ ] Provide the reader with a one-paragraph summary of the results of my thesis
  - Create invariant
  - to our surprise, it is distinct from the MVA
  - the structure is richer than Gaußians
  - &c.

#### Chapter: Introduction (Tensor products and Monoidal categories) ####
- symmetric monoidal / strict monoidal categories (mention terminology like this).
- [ ] Or, drop the entire statement about tensors.
- Scaring people away with fancy words is worse than hiding irrelevant
  terminology that an expert can connect with if they wish (cf. "associator", "braidor").
- Linear orders on sets
  - the linear order on a set is used for functionals. Dror finds this either
    confusing or wrong, and I am not so sure anymore.
  - I need to think more about how to fix this.
- [ ] The // notation needs to be clarified
- [ ] Clarify "Cartesian category". What does this mean? Add a footnote.

#### Chapter: Perturbed Gaußians ####
- [ ] Clean up RVT definition
  - hard to understand
  - no pictures are provided!
- [ ] 2.3 is just a summary of how to define the invariant. It is missing all the details.
- [ ] do proofs for the values of the generating functions

#### Chapter: Constructing the trace ####
- [ ] the trace has more properties; write them out
- [ ] explicitly define A_A as A/[A,A]
- [ ] What is a "shape"? The proof of lemma 3.4 is awkward. Clean it up.
- [ ] Here $\sim$ is undefined (equivalent modulo the coinvariants).
- [ ] "all the relations are accounted for" -> make the proof more formal.

The jump from the end of `Constructing the trace` to `Conclusions` is abrupt.
Explicit examples are missing.
- Write a chapter in-between these two: `Examples`
  - [ ] compute the invariant of, say, the Hopf link
    - add pictures
    - add more details
  - add pictures
  - go through the computation
  - There is no statement connecting computations and conclusions.

"Pictures are hard to make. In this subject, they are necessary."
- hand-drawn can be time-consuming to modify.
- [ ] make pictures for Reidemeister moves, for whirling relations, &c.
  - [ ] Reidemeister moves
  - [ ] Whirling relations
  - [ ] `toRVT` algorithm
