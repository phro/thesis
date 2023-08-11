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
- [X] the trace has more properties; write them out
- [X] explicitly define A_A as A/[A,A]
- [X] What is a "shape"? The proof of lemma 3.4 is awkward. Clean it up.
- [X] Here $\sim$ is undefined (equivalent modulo the coinvariants).
- [X] "all the relations are accounted for" -> make the proof more formal.

The jump from the end of `Constructing the trace` to `Conclusions` is abrupt.
Explicit examples are missing.
- Write a chapter in-between these two: `Examples`
  - [X] compute the invariant of, say, the Hopf link
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
  - [X] Read over the thesis for a total of one time
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

#### Printout ####
- [X] implement abstract comments
- [X] implement acknowledgements comments
- [X] add paper-vs-digital flag to tweak margins, page numbers, and colophon
    simultaneously
- [X] § Executive summary
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
  - [X] § Extending The Invariant...
    - [X] Simplify title
    - [X] add refs to appropriate sections
    - [X] implement tweaks
    - [X] modify open tangle image to be non-pure.
    - [X] § Further Study -> make subsection instead of subsub? (match chapter
      outline)
      - [X] Sentence is mentioned which is never elaborated on. Talk more about it!
- [X] § Tensor Products and Meta-Objects
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
  - [X] § The ybax meta-algebra
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
    - [X] eq. 2.50 and 2.52 are over wide.
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
- [X] § 4: Constructing the trace
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
  - [X] § a generating function for the coinvariants
    - [X] the first paragraph should follow from the previous sections better
    - [X] add parenthesis.
    - [X] add Remark about formula missing ab term
      - [X] (then add such a term maybe?)
  - [X] § Computational examples
    - [X] Add a picture and more computational details à la fig 2.21 reference in
      § Notational conventions, say of the Hopf Link.
- [X] § 5: Conclusions
  - [X] If mentioning the W-Lambert function, then provide an equation for it.
  - [X] Eq. 5.2 is not an equation! Put its values inline, or make it a pair of
    equations.
  - [X] § Further work is missing mention of restricting the universality of
      the trace to (perturbed) Gaußian frameworks.
- [X] § A: Code
  - [X] Add "Use case" subsub to Mathematica™ code.
  - [X] be explicit about "former version" -> BN-vdV version.
  - [X] p.60: We ~~must also~~ define...
  - [X] p.65: Next are ~~defined~~ functions...
  - [X] p.67: add "These match the quantities given in Thm 3.6."
  - [X] § A.2: Implementation of the trace *and Z^tr*
    - [X] Maybe "See ch 5" -> "see ch 4.2"
    - [X] As described in ?? -> missing reference
  - [X] § A.3
    - [X] "consider the link *in fig A.1*"
    - [X] "The crossings are absorbed in the order the knot's strand interact with
      them."
    - [X] fig. A.2: front -> line
    - [X] § Extending the algorithm
      - [X] Remove first sentence; redundant
      - [X] Explain Lemma A.1
    - [X] § Use Case
      - [X] Adjacent code blocks are possible with the new borders (×2)
      - [X] footnote: "Upright Tangle" -> "upright tangle"
    - [X] § Implementation
      - [X] remove blank line before `type Skeleton…`.
      - [X] broken acronym (RVT)
      - [X] remove blank line after `PD`.
      - [X] "Only in this case will the function `toRVT` ~~will then~~ output…"
- [X] § B: Table of values
  - [X] It should be small
  - [X] readable (i.e. fit on the page)
  - [X] link to a table online (say [on github](github.com/phro/GDO))
- [X] § Bibliography: no publisher for Kauffman's book?
- [X] Ensure table of contents issues are resolved.
  - [X] "Context" is a poor subtitle
  - [X] Uniformize the algebra name (U(sl2+0), U, ybax, &c.)
  - [X] Add sample computations to § Perturbed Gaußians
  - [X] Add sample computations to § Constructing the Trace
  - [X] Add (small) table of values
- [X] Colophon: Add version number.

### External Feedback ###
#### Comments and suggestions ####
- [X] P.12, Section 2: It would be good to include references for
    “meta-structures” / “meta-objects”. (I can not see any in this section.)
- [X] P.14, l.-2: I think that you should assume the category C to be monoidal.
    Otherwise, you should explain what {1} and M × M mean.
- [X] P.16, Definition 2.4: It should be specified whether the isomorphisms MX
    ∼= MY (for any two finite sets X, Y ) are part of the structure. If this
    definition does not give all the relations in its fourth condition (which
    suggests the use of the words “In particular”), then a reference should be
    provided.
- [X] P.16, Example 2.5: I am not sure that the property to be “symmetric” is
    required here for C.
- [X] P.18, Definition 2.11: Is a “meta-algebra” a “meta-object” in the sense
    of Definition 2.8? If so, then Definition 2.11 should refer somewhere to
    this notion of “meta-object”.
- [X] P.23, Definition 2.25: This definition of “open tangles” is too
    restrictive to support the operations that are described in Theorem 2.31
    (compare with [BNvdVa]). For instance, the left-hand side of Figure 2.9
    does not show a tangle in the sense of Definition 2.25: an arbitrary
    topological disk in the plane is not necessarily the “unit disk”.
- [X] P.27: The operation ηi does not seem to be well-defined: where is this
    “new strand” added? This issue seems to be evoked on p.31 in the sentence
    “(For those worried that this equation depends on the location [...])”,
    without being resolved there.
- [X] P.33, Remark 2.32: What does the adjective “adjacent” mean there?
    Besides, if one commits oneself “to only apply multiplication when doing so
    would result in a valid (classical) tangle” as stated here, then the
    collection {T up X }X does not seem to constitute (strictly speaking) a
    “meta-Hopf algebra” in the sense of Definition 2.18.
- [X] P.34, Definition 2.33: It would be appropriate to give references for
    this ribbon Hopf algebra U. In particular, it would be nice to specify the
    exact relation between U and the (ϵ = 0)-reduction of the ribbon Hopf
    algebra D of [BNvdVa].
- [X] P.35, (2.47): Given the way the degree completion U = ˆU(g) has been
    defined, one needs to assume that ξ belongs to bQ[[b]] for eξx to converge.
    A similar remark applies to (2.48) and (2.49).
- [X] P.36, Lemma 2.37: This lemma follows from the same property for D proved
    in [BNvdVa], idem for Theorem 3.5 on p.41. Yet I agree that it is better to
    include direct proofs.
- [X] P.37, l.-5: It is not clear why the invariant Z is well-defined by this
    procedure. One should either refer to the existing works in the literature
    on the “universal invariants”, or prove that the “ribbon meta-Hopf algebra”
    T up has the required universal property.
- [X] P.40: The exposition could be improved here. Indeed, a category C is
    introduced at the top of the page, without defining its composition. The
    composition is only given in Lemma 3.2 at the bottom of the same page.
- [ ] P.42, l.4: What does “central” mean in Q[zK][[ζK]]?
- [ ] P.42, proof of Theorem 3.5: Is the proof of (3.14) addressed somewhere?
- [ ] P.46, Lemma 4.3: How is the closure performed? Does one assume that the
    two endpoints (of the strand to be closed) are “adjacent” in some sense?
- [ ] P.48, proof of Theorem 4.6: I do not understand the argument “inspection
    of the above com- prehensive summary [...] that this set is indeed linearly
    independent”.
- [ ] P.50, Theorem 4.9: The notation µ in the formula for f(yi, bi, ai, xi) is
    in conflict with µ := (1 − e−α)¯zi.
- [ ] P.50, Remark 4.10: I do not understand where (4.21) comes from, and why
    the series S satisfies
S = e−α−µS. This remark should be expanded.
- [ ] P.51 to p.54: Please explain why this part only considers “long links”
    and not “round links” by taking the trace along every component. For
    instance, why the value of tr1,2(Z(H)) for the Hopf link is not considered
    in §4.3?
- [ ] P.53, l.-1 & l.-7: Give a reference for the Thistlethwaite link table
    from which L5a1, L10a43, L7n2 are extracted, or, at least include pictures
    of those links.
- [X] P.53, (5.1): It is surprising that the two partial traces give different
    values for the Whitehead link, where the two components play symetric
    roles.
- [X] P.55, (A.1): How is the Whitehead link given here as an open tangle? (It
    seems that there is no symmetry, again, between the two components.)

#### Typos and other minor comments ####
- [ ] P.8, l.-8: “Each crossing assigned” → “To each crossing is assigned” (?)
- [ ] P.17, l.4: “Where the last column” → “where the last column”
- [ ] P.17, l.10: “such as a meta-colagebra” → “such as a meta-coalgebra”
- [ ] P.17, l.-3: φ[S] = φD C [S] goes the other way round: from AD⊔S to AC⊔S.
- [ ] P.18, l.4: “two spaces” → “two objects”
- [ ] P.18, l.6: “CD1⊔D2 → CC1⊔C2” → “AD1⊔D2 → AC1⊔C2”
- [ ] P.18, l.7: It is written “This is visualized in figure 2.1”, but this is
    not what I see in Figure 2.1.
- [ ] P.19, l.-10: “When C = (Vect, ⊗)” → “When C = (k − Vect, ⊗)”
- [ ] P.19, l.-8: “Then A∅ is a field” → “Then A∅ is the field k”
- [ ] P.20, l.4: “A meta-colagebra” → “A meta-coalgebra”
- [ ] P.22, l.-1: A reference seems to be missing in the sentence “The term we
    use is inspired by ??”.
- [ ] P.24, l.-4: “An upright tangle diagrams” → “An upright tangle diagram”
- [ ] P.25, l.8: I think that (to be consistent with the notation TX of the
    previous page) the notation T up X should refer to equivalence classes of
    tangles (and not tangle diagrams).
- [ ] P.26, l.-7: “figures 2.4 to 2.7” → “(figures 2.4 to 2.7)”
- [ ] P.35, (2.45): “ayr” → “ayr”
- [ ] P.37, l.-10: “is map” → “is a map”
- [ ] P.37, l.-9: “ϕX Y ” → “φX Y ”
- [ ] P.37, l.-5: “a U-valued tangle invariant” → “a U-valued tangle invariant
    Z”
- [ ] P.38, (2.57): The contribution of C4 seems to be missing in this
    computation.
- [ ] P.39, l.3: One verb to be removed in the proposition “(...) which
    develops uses (...)”.
- [ ] P.40, l.6: “Where zX” → “where zX”
- [ ] P.40, l.-3: “powerseries” → “power series”
- [ ] P.42, l.3: “z∗” → “ζ” (?)
- [ ] P.42, (3.12): It seems that the notation AJ has not been introduced yet.
- [ ] P.42, (3.20): It seems that all the −ξiηj should be changed to +ξiηj.
- [ ] P.43, (3.21): “+−” → “−” (twice)
- [ ] P.47, l.11: “adµ(u)” → “adµ(f)”
- [ ] P.47, l.-12: “The coinvariants of U” → “The space of coinvariants of U”
- [ ] P.47, l.-12: In this line and in the sequel, the variables a, x should be
    denoted by a, x.
- [ ] P.49, l.-3: The choice of the notations α, β, ξ, η is not good since they
    can be confused with the variables αi, βi, ξi, ηi “dual to” ai, bi, xi, yi.
- [ ] P.51, (4.23): “b1w2” → “b1a2” (?)
- [ ] P.51, (4.24): “b2w1” → “b2a1” (?)
- [ ] P.51, (4.25): Same comment as for (4.23) and (4.24).
