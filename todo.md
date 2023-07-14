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

## Printout ##
- [X] implement abstract comments
- [X] implement acknowledgements comments
- [ ] add paper-vs-digital flag to tweak margins, page numbers, and colophon
    simultaneously
- [ ] § Executive summary
  - [X] ~~Understanding~~ knotted objects
  - [X] Make introductory picture more informative
  - [X] "satellite", "ribbon", and "slice" should be introduced more
      consistently.
  - [X] "properties" -> "operations"
  - [X] add citation to Ribbon Slice Conjecture
  - [X] Use wording from § 2.6 for building an invariant.
  - [X] Add reference from § Quantum Invariants to relevant section.
  - [X] Incorporate Quantum invariants tweaks
  - [X] § Images of the Invariant
    - [X] how about § Improving Computation Times
    - [X] Add ref to relevant section.
    - [X] Implement tweaks.
  - [ ] § Extending The Invariant...
    - [X] Simplify title
    - [X] add refs to appropriate sections
    - [X] implement tweaks
    - [X] modify open tangle image to be non-pure.
    - [X] § Further Study -> make subsection instead of subsub? (match chapter
      outline)
      - [ ] Sentence is mentioned which is never elaborated on. Talk more about it!
- [ ] § Tensor Products and Meta-Objects
  - [X] § Tensor Product Notation
    - [X] Clean up language
    - [X] Add reference to Penrose's book on the same notation.
    - [X] change indices
    - [X] clarify additional notation for tensor product
    - [X] improve notation for indexed tensor product
    - [X] Improve example to be easier to understand (use cross product ×).
    - [X] Rearrange paragraphs to introduce notation in correct order.
  - [X] § Meta-objects
    - [X] Are subsubs necessary?
    - [X] tweak language
    - [X] add footnote
    - [X] mention removal of "`[X]`" from notation
    - [X] set bijections should be Greek
    - [X] add "strict" and "symmetric" to monoidal categories
    - [X] add actual matrices to Example: square matrices
    - [X] add parentheses in intro sentence to meta-object definition
    - [X] a meta-object is **four** things (or however many are actually listed).
    - [X] refer to the appropriate figure for composition (×2).
    - [X] add pronunciation of `\then` operator
    - [X] Remove Remark 2.11?
  - [X] § Algebraic Definitions
    - [X] Add language tweaks
    - [X] add more language to fig 2.1 caption
    - [X] deal with undefined tensor notation in remark 2.13
    - [X] add tensor product to remark 2.13
    - [X] fix symbols used in fig 2.2
    - [X] rem 2.14 needs associativity
    - [X] fix rem 2.16
    - [X] tweak text after rem 2.16
    - [X] remove footnote "While notation explicitly..."
    - [X] add meta- to meta-Hopf algebra definition
    - [X] Remove "so-called"
    - [X] tweak quasi-triangular meta-Hopf monoid definition.
    - [X] tweak Drinfeld element.
    - [X] Move/remove isolated proof.
    - [X] put "distinguished grouplike element" into footnote
  - [X] § Upright Tangles
    - [X] Opening paragraph may not be clearest. Tweak.
    - [X] Clean up Definition of framed tangle. Mention framing.
    - [X] Figure Reidemeister 1 needs the word "framed"
    - [X] add missing figure reference
    - [X] tweak remark 2.30
  - [X] § The meta-algebra structure of...
    - [X] "We now formally connect…"
    - [X] Add figure references to thm "tangles form a ribbon meta-Hopf algebra"
    - [X] add figure representing the antipode
    - [X] move remark 2.33 about virtual tangles *after* proof of thm.
    - [X] fix missing reference in comultiplication footnote.
    - [X] shrink multiplication figure to look less stretched.
    - [X] associativity proof is brutal. Fix those sentences.
    - [X] itemize the proofs various axioms
    - [X] clean up ~~move~~ figure references in ~~from~~ theorem statement
      ~~to proof~~.
    - [X] spinner and anti-spinner figures should be subfigures
    - [X] add "visualized in fig..." for quasi-triangular axioms
    - [X] add "to show \tangle is ribbon" to ribbon proof.
  - [ ] § The ybax meta-algebra
    - [X] Pick a consistent name, or at least provide multiple names consistently.
    - [X] define B = e^-b
    - [X] add "b-adic completion" to ybax / `\CU` definition
    - [X] add second definition to ribbon element
    - [X] specify that $f \in \polyring{\K}{b}$ OSTTE
    - [X] add quotes around $a$.
    - [X] add yields before eq 2.45
    - [X] mention linearity of eq 2.45
    - [X] Write Weyl commutation relation as a lemma w/ proof
      - [X] find citation for lemma
      - [X] move e^b coefficient in front
    - [X] package ya_commute and xa_commute into lemma.
    - [X] `Exponential commutation relations` doesn't jive with the `b`-adic
        topology. Resolve this issue.
    - [ ] eq. 2.50 and 2.52 are over wide.
    - [X] Reword beginning of § 2.6.
    - [X] morphisms between meta-objects are Capital Greek, e.g. Φ
    - [X] add one more arrow to fig 2.21 (or add the algebraic objects to the
      figure caption).
    - [X] Insert Z(K_(3,1)) in unreduced form as motivation for § 3: Perturbed
      Gaußians.
- [ ] § 3: Perturbed Gaußians
  - [X] Introduction is redundantly worded. Clean it up.
  - [X] Embed Remark 3.2 into Def 3.1
  - [X] Further clarify the linear isomorphisms between `H`, `U`, and `C`.
  - [X] Clarify why these three categories need to be mentioned.
  - [X] Be clear about the use of pullbacks.
  - [X] define contraction of generating functions explicitly (especially the
    composition of the ordering map and the generating function map / their
    inverses).
  - [X] add missing word 'ribbon's in § Expressing Hopf algebra operations as
    perturbed Gaußians.
  - [ ] Should generating functions be distinguished from the original functions
    with bold somehow?
  - [X] add references above equations in proofs of Thm 3.6 (meta-Hopf structure of
    U)
  - [X] § Notational conventions
    - [X] Remove first paragraph, and clean up next paragraph.
    - [X] Replace out-of-nowhere example with continuation of the example in fig 2.21.
    - [X] Remove second example. Replace with the general "computes the Alexander
      polynomial" sentence.
- [ ] § 4: Constructing the trace
  - [X] § 4.1: extending an open tangle …  : clean up name
  - [X] clean up first paragraph.
  - [X] clean up traced meta-algebra definition
  - [X] remove coalgebraic compatibility
  - [X] add commutation with operations on other strands
  - [X] Lemma 4.3 : "as" -> "are"
    - [X] tweak proof wording
  - [X] lemma 4.4
    - [X] add coinvariants caveat to lemma 4.4 (coinvairants as/are a trace map)
      (vector space, not ideal)
    - [X] Remove undefined notation from lemma
    - [X] Remove undefined notation from proof
    - [X] Add to proof that trace commutes with other operations.
  - [ ] § a generating function for the coinvariants
    - [X] the first paragraph should follow from the previous sections better
    - [X] add parenthesis.
    - [X] add Remark about formula missing ab term
      - [ ] (then add such a term maybe?)
  - [ ] § Computational examples
    - [ ] Add a picture and more computational details à la fig 2.21 reference in
      § Notational conventions, say of the Hopf Link.
- [ ] § 5: Conclusions
  - [ ] If mentioning the W-Lambert function, then provide an equation for it.
  - [ ] Eq. 5.2 is not an equation! Put its values inline, or make it a pair of
    equations.
  - [ ] "the trace…" -> "while the trace…"
- [ ] § A: Code
  - [ ] Add "Use case" subsub to Mathematica™ code.
  - [ ] be explicit about "former version" -> BN-vdV version.
  - [ ] p.60: We ~~must also~~ define...
  - [ ] p.65: Next are ~~defined~~ functions...
  - [ ] p.67: add "These match the quantities given in Thm 3.6."
  - [ ] § A.2: Implementation of the trace *and Z^tr*
    - [ ] Maybe "See ch 5" -> "see ch 4.2"
    - [ ] As described in ?? -> missing reference
  - [ ] § A.3
    - [ ] "consider the link *in fig A.1*"
    - [ ] "The crossings are absorbed in the order the knot's strand interact with
      them."
    - [ ] fig. A.2: front -> line
    - [ ] § Extending the algorithm
      - [ ] Remove first sentence; redundant
      - [ ] Explain Lemma A.1
    - [ ] § Use Case
      - [ ] Adjacent code blocks are possible with the new borders (×2)
      - [ ] footnote: "Upright Tangle" -> "upright tangle"
    - [ ] § Implementation
      - [ ] remove blank line before `type Skeleton…`.
      - [ ] broken acronym (RVT)
      - [ ] remove blank line after `PD`.
      - [ ] "Only in this case will the function `toRVT` ~~will then~~ output…"
- [ ] § B: Table of values
  - [ ] It should be small
  - [ ] readable (i.e. fit on the page)
  - [ ] link to a table online (say [on github](github.com/phro/GDO))
- [ ] § Bibliography: no publisher for Kauffman's book?
- [ ] Ensure table of contents issues are resolved.
  - [ ] "Context" is a poor subtitle
  - [ ] Uniformize the algebra name (U(sl2+0), U, ybax, &c.)
  - [ ] Add sample computations to § Perturbed Gaußians
  - [ ] Add sample computations to § Constructing the Trace
  - [ ] Add (small) table of values
- [X] Colophon: Add version number.
