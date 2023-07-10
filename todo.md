## To do list ##

### Rough Draft ###
- [X] Add theorems from `BV` to Gaußian chapter
- [X] Add code (with comments) for the mma™ code.
- [X] Fix `toRVT` code output for knots (should be long, not bent)
- [X] Add output code to analysis section
- [ ] Add "further computations"
  - [ ] E.g. how the invariant interacts with satellites

### Feedback from Dror ###
#### 2023-06-01 ####

#### Abstract ####
- [X] Missing an executive summary; add to abstract or add an "executive summary" section.
- [X] Provide the reader with a one-paragraph summary of the results of my thesis
  - Create invariant
  - to our surprise, it is distinct from the MVA
  - the structure is richer than Gaußians
  - &c.

#### Chapter: Introduction (Tensor products and Monoidal categories) ####
- symmetric monoidal / strict monoidal categories (mention terminology like this).
- [X] Or, drop the entire statement about tensors.
- Scaring people away with fancy words is worse than hiding irrelevant
  terminology that an expert can connect with if they wish (cf. "associator", "braidor").
- Linear orders on sets
  - the linear order on a set is used for functionals. Dror finds this either
    confusing or wrong, and I am not so sure anymore.
  - I need to think more about how to fix this.
- [X] The // notation needs to be clarified
- [X] Clarify "Cartesian category". What does this mean? Add a footnote.

#### Chapter: Perturbed Gaußians ####
- [X] Clean up RVT definition
  - hard to understand
  - no pictures are provided!
- [X] 2.3 is just a summary of how to define the invariant. It is missing all the details.
- [X] do proofs for the values of the generating functions

#### Chapter: Constructing the trace ####
- [ ] the trace has more properties; write them out
- [X] explicitly define A_A as A/[A,A]
- [X] What is a "shape"? The proof of lemma 3.4 is awkward. Clean it up.
- [X] Here $\sim$ is undefined (equivalent modulo the coinvariants).
- [X] "all the relations are accounted for" -> make the proof more formal.

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
- [X] make pictures for Reidemeister moves, for whirling relations, &c.
  - [X] Reidemeister moves
  - [X] Whirling relations
  - [X] `toRVT` algorithm

#### 2023-06-26 ####

- [ ] Address the rest of Dror's comments
  - [ ] Earlier feedback
  - [X] 2023-06-26 feedback
    - [X] p.10 wording changes
    - [X] p.12 distinguish between vector space `[A,A]` and ideal `[A,A]`.
    - [X] p.13 grammar
    - [X] p.15 math error
    - [X] p.15 add notational description
    - [X] Define a meta-object better; start with meta-monoids.
    - [X] Remove meta-group reference (this is a meta-Hopf algebra).
    - [X] Give a non-trivial example of a meta-monoid (say, `n×n` matrices)
    - [X] p.21 Don't subscript integers.
    - [X] p.23 Replace "pure" and "impure" with "open" and "mixed" (say).
    - [X] The definition of framed tangles must put a condition on the endpoints.
    - [X] Fix broken references.
    - [X] p.27 mention in the Thm that this is only for virtual knots
    - [X] p.36 "morphism-valued" is misleading.
    - [X] p.39 Generating functions are not Gaußian in `b`-variables.
- [ ] *Print* the thesis off to read
  - [ ] Read over the thesis for a total of one time
  - [ ] Read over the thesis for a total of two times
  - [ ] Read over the thesis for a total of three times
  - [ ] Read over the thesis for a total of four times
  - [ ] Read over the thesis for a total of five times

### Feedback from Joel ###

- [X] 2.1
  I found the notation T^D_C confusing.  Does it denote a specific linear map
  from V_D to V_C or just an arbitrary one?

- [X] 2.2
  I didn't understand the definition of "meta-object", possibly because of
  missing words.  Subcategory of what category?  Is a meta-object a functor?
  Similarly, I don't understand equation (2.8).
  Similarly, I didn't understand the discussion afterwards about homsets and
  about the "map \sqcup".
  In the definition of meta-group (def 2.7), if X -> Y is a map of finite
  sets, do we have a morphism G_X -> G_Y ?  For example, if X and Y both
  contain one element, do we have an isomorphism G_X \cong C_Y?  What is the
  relation between "meta-group" and "meta-object"?  And what is the relation
  between "meta-group in C" and "group object in C"?
  (Some of these same questions apply to "meta-algebra")

- [X] 2.4
  - [X] def 2.25: What does upward pointing arcs mean?  I thought that the
      tangles are in a disc.
  - [X] Theorem 2.28: is this a ... algebra in the category Set?  Are these
      tangles considered up to isotopy?

- [X] 2.5
  What do you mean "The ribbon structure of U requires ..." ?  maybe you
  should verify that these R, C satisfy the desired equations.

- [X] 3.1
  - [X] In Remark 3.2, I didn't understand what "extending the definition" means.
  - [X] Why do you say that the categories `\mathcal H` and `\mathcal U` are
      isomorphic?  If I understand correctly, if for example `J`, `K` are one
      element sets, then `Hom_{\mathcal U}(J,K) = Hom(U, U)` whereas
      `Hom_{\mathcal H}(J,K) = Hom(Q[z], Q[z])` ?  But `U` is a polynomial ring in
      4 variables.  I suppose that there is a vector space isomorphism `U \cong
      Q[z]` since both are countable dimensional, but there is no preferred one.
  - [X] In Lemma 3.3, what is `|_{z_K -> \del \zeta_K}` ?

### Feedback from Vassili ###
- [X] The acknowledgements should fit into one page.
- [X] Code annotations: Maybe a box around the annotation would have helped
    me? Or a very light background?

### Feedback from Jesse ###
- [X] The abstract should fit in one page.
