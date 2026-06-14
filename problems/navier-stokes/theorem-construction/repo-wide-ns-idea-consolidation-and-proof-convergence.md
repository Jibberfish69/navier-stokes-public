# Repo-Wide NS Idea Consolidation And Proof Convergence

## Purpose

This note is the repo-wide synthesis surface for serious Navier-Stokes theorem
work.

It is not a file inventory and it is not another branch pitch. Its job is to
say, in one place:

- what the authoritative theorem contract still is,
- what the live mathematical obstruction actually is,
- how the older and newer idea families fit together,
- which ideas are engines, interfaces, supports, or noise,
- and what exact convergence program could still lead to a final classical NS
  proof.

The governing discipline is fixed:

- theorem truth is set by the locked classical route and the release/review
  stack;
- exploration stays broad, but only as exploration;
- builder optimism, sidecar language, and stale graph echoes may not silently
  overwrite the theorem surface.

## 1. Authority first

The repo-wide audit is only useful if it starts from theorem authority rather
than from whichever note was edited last.

The current constitutional stack is:

- [route-lock.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/route-lock.yaml)
- [release-decision.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/release-decision.yaml)
- [review-verdict.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/review-verdict.yaml)
- [formalization-ledger.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/formalization-ledger.md)
- [spine.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/spine.md)
- [main-theorem-draft.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/main-theorem-draft.md)

This stack still says:

- the Clay target is classical `3D` incompressible NS on an accepted classical
  surface
  ```math
  M^3 \in \{\mathbb R^3,\mathbb T^3\};
  ```
- the locked theorem-primary branch is still the source-grounded four-bridge
  classical route;
- the currently implemented theorem-primary package is still direct Route
  `B / C3`;
- the package is **not** closed yet;
- the same-surface closed-loop warrant remains open.

So any note, builder surface, or sidecar claim that sounds more finished than
that stack is downstream noise, not current theorem truth.

## 2. The repo does not contain hundreds of independent ideas

The first large synthesis is negative:

```math
\boxed{
\text{the repo is not a zoo of unrelated NS routes.}
}
```

Most serious work keeps re-expressing a small number of burdens in different
coordinates.

The persistent failure mode has been:

- treat each vocabulary shift as a new route,
- then lose the burden that actually survived the previous route,
- then repeat the same argument under a new name.

The repo becomes legible only once those recurrences are named.

## 3. The major idea families

### Family A. The theorem contract

This is the classical source-grounded route:

- Body I: scale barrier,
- Body II: monotone bridge `Q(t)`,
- Body III: non-Sobolev compactness,
- Body IV: regularity bridge,
- then closed-loop recertification.

Primary surfaces:

- [route-lock.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/route-lock.yaml)
- [source-grounded-framework-map.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-grounded-framework-map.md)
- [spine.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/spine.md)
- [claim-ladder.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/claim-ladder.md)
- [main-theorem-draft.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/main-theorem-draft.md)

This family does not tell us the final deep mechanism.
It fixes the jobs that any final mechanism must perform on the same classical
surface.

### Family B. The historical survivor families

This is where the audit sharpens the picture most.

Historically the lane has not carried one survivor family, but two closely
related ones.

#### Family B1. Lower-prefix / scale-memory / Volterra survivor

This is the older family:

- lower-prefix accumulation,
- one-sided scale memory,
- cumulative tail stress,
- Volterra primitives,
- lower-triangular operator reductions,
- affine quotient moments such as `M0, M1`.

Primary surfaces:

- [one-sided-scale-memory-obstruction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/one-sided-scale-memory-obstruction-note.md)
- [scale-memory-hardy-volterra-working-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-memory-hardy-volterra-working-note.md)
- [volterra-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md)
- [lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md)
- [persistent-weighted-quotient-kill-routes-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md)

#### Family B2. Gap-kernel / upper-tail / lifted survivor

This is the theorem-primary survivor family now sitting at the frontier:

- upper-tail kernel defect,
- lifted middle/far packets,
- `UTKD^sharp`,
- `PCI^sharp`,
- `MSI^sharp`,
- finally the lifted high-side remainder.

Primary surfaces:

- [two-family-terminal-impasse-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/two-family-terminal-impasse-note.md)
- [wizard-terminal-impasse-comparison-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/wizard-terminal-impasse-comparison-note.md)
- [route-b-euclidean-closure-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/route-b-euclidean-closure-theorem.md)
- [referee-hard-upgraded-body4-packet-subsection.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/referee-hard-upgraded-body4-packet-subsection.md)

Its exact current representative is still the lifted high-side remainder on

```math
N+M<k<j-4.
```

The strongest synthesis pressure in the whole repo is now:

```math
\boxed{
\text{are B1 and B2 genuinely different obstructions, or different normal forms of the same obstruction?}
}
```

That question is more important than most local lemma work.

### Family C. The dyadic / shell / scale-interface family

This is the old but still theorem-grade shell language:

- dangerous high-frequency transfer,
- tail barriers,
- lifted bands,
- shell-local coercive packets,
- exact `4 -> 1` recertification interfaces.

Primary surfaces:

- [route-b-euclidean-closure-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/route-b-euclidean-closure-theorem.md)
- [body1-kernelized-lifted-band-leakage-barrier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/body1-kernelized-lifted-band-leakage-barrier.md)
- [scale-barrier-transport-defect-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-transport-defect-lemma.md)
- [far-corona-cumulative-tail-stress-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cumulative-tail-stress-theorem.md)

This family is now better understood as an interface family:

- still exact and theorem-grade where the current classical packet is written;
- not the deepest engine anymore;
- still indispensable wherever the route is literally phrased as a shell theorem.

### Family D. The derivative tower / transfer-matrix family

This is the strongest visible modernization.

The core facts are now much sharper:

- the derivative family itself is the right visible object,
- viscosity gains one derivative over each mixed source term,
- the real issue is lower-rung coefficient growth, not a guessed law
  `u_\ell := \ell^\alpha`,
- the off-diagonal matrix law matters as much as the diagonal rung energies,
- the tower is the main visible engine for Bodies I and II.

Primary surfaces:

- [tower-rewrite-under-ym-heat-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tower-rewrite-under-ym-heat-shadow-bridge.md)
- [cross-rung-matrix-under-ym-heat-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/cross-rung-matrix-under-ym-heat-shadow-bridge.md)
- [mixed-jet-cross-rung-pairing-matrix.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-cross-rung-pairing-matrix.md)
- [transport-assisted-dissipation-target-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transport-assisted-dissipation-target-note.md)

This family likely supersedes dyadic language as the main analytic engine, even
if dyadic tails still survive as the current theorem-grade interface.

### Family E. The deformation-geometry / geometry-evolving heat family

This is the strongest candidate deep mechanism.

Its central claim is:

```math
\boxed{
\text{NS is not best read as viscosity plus nuisance transport;}
\text{it is geometry-evolving heat.}
}
```

The primary object is not bare Eulerian `u`, but the pulled-back velocity and
deformation geometry:

```math
\partial_t v + A^\top \nabla_a q
=
\nu \operatorname{div}_a(G\nabla_a v),
\qquad
G=AA^\top.
```

Primary surfaces:

- [spatial-derivative-curvature-dissipation-theorem-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/spatial-derivative-curvature-dissipation-theorem-target.md)
- [lagrangian-material-derivative-recheck-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-material-derivative-recheck-note.md)
- [lagrangian-observable-sector-connection-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-observable-sector-connection-note.md)
- [lagrangian-material-package-preliminary-verdict.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-material-package-preliminary-verdict.md)
- [lagrangian-six-lemma-mainline.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-six-lemma-mainline.md)
- [lemma-4b-no-loss-pressure-recovery-attack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md)
- [modernized-four-body-schema-torus-tower-geometry.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/modernized-four-body-schema-torus-tower-geometry.md)

This family is not a discharge yet. It is a theorem target. But it is now the
best Body IV upgrade surface in the entire repo.

### Family E+. Jet / bicomplex / BRST-style classifier family

This is a new bounded synthesis route, not a new theorem authority branch.

Primary surface:

- [infinite-jet-bicomplex-brst-survivor-route-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/infinite-jet-bicomplex-brst-survivor-route-note.md)

Its useful content is:

- the mixed-jet tower is already the coordinate shadow of an infinite
  prolongation;
- a variational-bicomplex reading may classify which tower terms are
  horizontal/contact trivial;
- a stripped-down BRST or Koszul--Tate resolution may help identify the true
  survivor quotient.

Its non-useful version is literal fluid quantization.

So this family should be treated only as a possible **survivor dictionary
classifier**, not as a replacement proof route.

### Family E++. Exterior algebra branch-map family

This is not a separate authority route. It is the branch map that prevents the
jet/bicomplex family from flattening into one vague "forms/cohomology" slogan.

Primary surface:

- [exterior-algebra-extraction-for-ns-route.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/exterior-algebra-extraction-for-ns-route.md)

Its useful content is:

- the alternating/exact package sharpens which visible packets may be
  pressure-like, transport-like, or Lie-dragged rather than genuine growth
  sources;
- the metric-form package clarifies that forms should carry the antisymmetric
  side while deformation tensors still carry the symmetric strain burden;
- the rank/decomposability package gives a real test for whether the survivor
  is simple after the right quotient or irreducibly mixed;
- the exact-sequence / filtration package suggests the survivor dictionary
  should be written as a filtration theorem rather than only as an analogy;
- the coalgebra / shuffle package suggests the mixed-jet tower's binomial
  combinatorics may be a shuffle/Hopf phenomenon rather than just Leibniz
  noise.

This family matters because it preserves several different live uses at once:

- exactness classifier,
- survivor-rank classifier,
- Eulerian/Lagrangian filtration bridge,
- tower-combinatorics reinterpretation.

So this family should be treated as the branch-preserving organizer for several
older failed or half-formed arguments, not as another replacement route.

### Family E+++. Tower -> shuffle -> deformation endgame program

This is the first clean integrated program note generated from the
wiki-driven branch pressure.

Primary surface:

- [tower-to-shuffle-to-deformation-endgame-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tower-to-shuffle-to-deformation-endgame-program.md)
- [three-gap-honest-attack-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/three-gap-honest-attack-note.md)

Its useful content is:

- the tower remains the visible engine;
- transport recentering compresses the mixed spread into a commutator defect;
- exactness and filtration should define the survivor quotient;
- the correct Hopf model is now the divided-power / shuffle-unshuffle law of
  the differentiated product rule, not Hopf-fibration topology or the
  alternating wedge Hopf algebra;
- reduced coproducts identify the transport commutator defect and should
  explain which part of the tower is composite spread and which part is the
  primitive survivor;
- the survivor dictionary should then export that primitive class into the
  Lagrangian deformation-geometry commutator burden;
- the final missing theorem is still the deformation-side drain inequality.

So this family is the cleanest current endgame architecture, but not yet an
accepted theorem route.

### Family F. YM-heat / torus / shadow / carrier family

This family explains where the heat and geometry language came from:

```math
\text{YM heat on carrier}
\to
\text{torus spectral realization}
\to
\text{classical viscous shadow}.
```

Primary surfaces:

- [ym-heat-to-torus-heat-to-classical-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md)
- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)
- [heat-governed-carrier-synthesis-for-tower-and-shadow-route.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/heat-governed-carrier-synthesis-for-tower-and-shadow-route.md)

This family is valuable as derivation lab, bridge vocabulary, and operator
microscope.
It does not count as closure unless it descends back to the same classical
surface with no hidden stronger help.

### Family G. Projected-flow / exact-shadow sidecar family

This is the `D.1-D.5` route.

Primary surfaces:

- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)
- [d1-projected-nc-flow-well-posedness.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d1-projected-nc-flow-well-posedness.md)
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [d4-shadow-continuation-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md)
- [ns-clay-frontier-proof-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md)
- [ns-d2-coherent-split-and-exact-shadow-discharge.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-d2-coherent-split-and-exact-shadow-discharge.md)
- [ns-carrier-commutator-coercive-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-carrier-commutator-coercive-lemma.md)

This family is real and nontrivial. Its best value is:

- burden localization,
- exact-shadow language,
- coercivity microscope,
- support for tower/geometry synthesis.

Under the current route lock it remains support only, not theorem authority.

### Family H. Middle-object / constitutive-shadow exploratory family

These notes suggest that the right bridge object may be neither raw `u` nor
full carrier `X`, but an intermediate observable or physical-sector object,
often denoted implicitly as a middle geometry `Y`.

Primary exploratory surfaces:

- [classical-ns-constitutive-shadow-and-physical-sector-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/classical-ns-constitutive-shadow-and-physical-sector-note.md)
- [continuum-ns-via-coherent-carrier-and-shadow.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/continuum-ns-via-coherent-carrier-and-shadow.md)
- [ns-ontic-to-classical-conditional-bridge-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-ontic-to-classical-conditional-bridge-theorem.md)

This family is exploratory only. But it may matter if the final drain theorem
needs a bridge object between classical tower data and full carrier language.

### Family I. Exploration and branch-generation family

This includes:

- machine extension branches,
- creative theorem search,
- route pivots,
- debt extraction,
- preserved objections,
- preserved dead ends.

Primary surfaces:

- [extension-branches.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/extension-branches.yaml)
- [creative-theorem-search.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/creative-theorem-search.yaml)
- [debt-map.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/debt-map.yaml)
- [route-hypothesis.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/route-hypothesis.yaml)
- [obstruction-capture.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/obstruction-capture.md)

This family should remain visible for thinking, but it must not overwrite
authority.

## 4. What the audit says these families are actually doing

### Synthesis 1. Almost everything is trying to control a survivor packet

The first major synthesis is:

```math
\boxed{
\text{almost all serious NS work in the repo is trying to control a survivor packet.}
}
```

Historically there are two survivor families, not one:

- a lower-prefix/scale-memory survivor;
- an upper-tail/lifted remainder survivor.

The current theorem-primary frontier is the second family, but the strongest
open synthesis question is whether those two are actually the same burden after
different normal forms.

### Synthesis 2. The current live survivor has three synchronized modern faces

The strongest new synthesis from the modernization is:

```math
\boxed{
\text{tail leakage}
\leftrightarrow
\text{tower flux/debt}
\leftrightarrow
\text{deformation-geometry commutator}.
}
```

So the dyadic packet, the tower packet, and the deformation packet should no
longer be treated as separate universes.

### Synthesis 3. Body III is mostly downstream now

Compactness remains non-negotiable, but it is not the conceptual center of
gravity anymore.

The real unresolved work is concentrated in:

- Body I: stronger no-escape theorem,
- Body II: real coercive drain law,
- Body IV: same-surface regularity bridge strong enough to recertify Body I.

That is the modern three-body core inside the old four-body contract.

### Synthesis 4. Dyadic is interface, tower is engine, deformation is depth

The current best division of labor is:

- dyadic/shell language = classical interface and existing `4 -> 1` theorem
  shell;
- derivative tower = main visible analytic engine;
- deformation geometry = best candidate deep engine;
- compactness = exact-object production only.

This is much cleaner than treating all four-body language as equally deep.

## 5. Hard dead ends and demotions

The audit also says some things should stop being treated as live theorem hope.

### Dead end A. Pure quadratic weighted-Gram closure

The dream that a bare quadratic Eulerian weighted-Gram energy would directly
produce the desired YM-style square defect is blocked by the cubic-versus-
quartic mismatch.

Primary surfaces:

- [weighted-gram-square-obstruction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-gram-square-obstruction-note.md)
- [minimum-drain-rate-threshold-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/minimum-drain-rate-threshold-note.md)

So the closure hunt has to move either to:

- higher correction terms, or
- deformation geometry, or
- a non-literal but still coercive one-sided drain law.

### Dead end B. Replacement-by-sidecar

Regularization branches, morphic smoothing, NC carrier routes, torus shadow
routes, and older curvature routes all fail as soon as they try to replace the
same-surface classical theorem route rather than feed it.

This demotion is structural, not emotional.

### Demotion C. Builder optimism and lagging generated surfaces

The most damaging current noise is:

- builder outputs that claim `closed` while release/review still says `hold` or
  `revise`;
- generated frontiers that elevate projected-flow sidecars into active theorem
  authority;
- stale graph artifacts that keep old route objects alive after they were
  demoted.

Examples needing hard demotion include:

- [theorem-packet.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-packet.yaml)
- [proof-obligation-matrix.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/proof-obligation-matrix.yaml)
- [proof-assembly.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/proof-assembly.yaml)
- [source-frontier.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/source-frontier.yaml)
- [theorem-to-warrant.yaml](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-to-warrant.yaml)

These surfaces are useful as projections or history. They are not allowed to
outvote the authority stack.

## 6. What should be promoted

The following should now be treated as the center of gravity:

1. the exact live survivor on
   ```math
   N+M<k<j-4;
   ```
2. the historical question whether lower-prefix and lifted survivors are the
   same burden in different normal forms;
3. the object-level equivalence between the survivor's tail, tower, and
   geometry faces;
4. the tower as the main visible engine;
5. the deformation-geometry drain law as the strongest current deep target;
6. the graph-first split between exploration and authority.

## 7. The two central theorems the repo actually needs

The repo does not need a hundred more disconnected lemmas.
It needs two central theorems.

### Theorem A. Survivor dictionary / equivalence theorem

Make theorem-grade that the serious unresolved packets are the same object in
different languages, or else state precisely where they cease to be the same.

At minimum, the theorem should relate:

```math
\text{lower-prefix scale-memory packet}
\rightsquigarrow
\text{stronger Body I lifted-band burden}
\equiv_{\mathrm{route}}
\text{lifted high-side remainder}
\equiv_{\mathrm{route}}
\text{tower flux/debt packet}
\equiv_{\mathrm{route}}
\text{geometry commutator packet}.
```

Without this theorem, the lane keeps orbiting the same burden under different
names.

### Theorem B. Same-surface drain / absorption theorem

Prove a one-sided same-surface drain law, preferably first on deformation
geometry, whose Eulerian shadow absorbs the tower packet and whose classical
shell consequence recertifies Body I.

This theorem does not need a literal square law.
It needs a coercive negative rate law strong enough to dominate the production
law on the dangerous roughness.

## 8. Convergence kernel for a final NS proof

This is the shortest serious convergence program now visible across the whole
repo.

### Step 0. Freeze truth

Hold fixed:

- theorem target,
- route lock,
- release/review truth,
- same-surface closure discipline.

This prevents sidecars and optimistic builders from moving the goalposts.

### Step 1. Build the survivor dictionary

Prove or sharply refute the equivalence chain:

- lower-prefix/Volterra/affine packet,
- stronger Body I lifted-band packet,
- lifted high-side remainder,
- tower flux/debt packet,
- deformation commutator packet.

This is the main language-unification step.

### Step 2. Choose the primary drain surface

The best current candidate is deformation geometry:

```math
\frac{d}{dt}\mathcal K_r^{\mathrm{Lag}}
+
\mathcal D_r^{\mathrm{Lag}}
+
\mathcal C_r^{\mathrm{Lag}}
\le 0,
```

or more generally a one-sided coercive negative rate law strong enough to
dominate the dangerous roughness.

If a middle observable sector `Y` is needed to connect the classical packet to
that law, it should be introduced explicitly as a bridge object rather than
smuggled in through ontic language.

### Step 3. Export the drain to the tower

Require that the primary drain theorem has an Eulerian tower shadow:

```math
\frac{d}{dt}\mathcal K_r^{\mathrm{Eul}}
+
\mathcal D_r^{\mathrm{Eul}}
+
\mathcal F_r^{\mathrm{Eul}}
\le 0.
```

This is the place where transport becomes flux/debt rather than unsigned enemy.

### Step 4. Export the same law back to Body I

Show that the same drain law forces the stronger no-escape theorem:

- no runaway shell leakage,
- no runaway high-rung leakage,
- no persistent refill of the lifted survivor without paying drain.

This is the modern exact form of `4 -> 1`.

### Step 5. Pass through Body III without creating new theory

Use compactness only as exact same-surface object production.

By this point it should transmit:

- the exact classical field,
- the exact survivor packet,
- and the exact drain law/bounds,

without creating a new conceptual center of gravity.

### Step 6. Discharge the closed-loop warrant

Once the stronger Body I theorem and the upgraded Body IV theorem are proved on
the same classical surface, the closed-loop warrant should stop being a slogan
and become a theorem packet.

That is the moment where Route `B / C3` can compress into a final proof.

### Step 7. Rewrite the paper around the convergence kernel

At that point the paper architecture should become:

1. classical target and route discipline,
2. four-body contract,
3. survivor dictionary theorem,
4. primary drain theorem,
5. closed-loop warrant theorem,
6. final global continuation.

## 9. Final judgment

The repo has not wandered past the solution, but it has repeatedly orbited the
same burdens under changing languages and changing levels of authority.

So the sharpest current synthesis is:

```math
\boxed{
\text{the final NS proof should converge around one historical survivor complex}
}
```

```math
\boxed{
\text{together with two central theorems:}
\quad
\text{(A) survivor dictionary/equivalence}
\quad+\quad
\text{(B) same-surface drain/absorption.}
}
```

Everything serious in the repo should now be judged by one question:

```math
\boxed{
\text{does it help identify, transport, or kill that survivor complex on the classical surface?}
}
```
