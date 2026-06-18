# MPP Object-Law Corpus Refoundation

## Status

Theorem-facing refoundation note.

Role: central refoundation surface for rereading the full Navier--Stokes corpus
under the class-membership object law.

This note is not a local patch list. Its job is to state, in one place, what
the corpus becomes if the governing object is read as one shared
incompressible-pressure-viscosity field and singularity is read as prior class
exit from that object.

## 1. Object Law

The PDE stays fixed:

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu\Delta u,
\qquad
\nabla\cdot u = 0,
\qquad
\nu>0.
\tag{OLR.0}
```

The theorem target stays fixed:

```math
\text{global smoothness for the classical incompressible Navier--Stokes problem.}
\tag{OLR.1}
```

What changes is the governing object law:

```math
\boxed{
\text{the governing object is a smooth NS evolution that remains internal to one single coupled incompressible pressure-viscosity field.}
}
\tag{OLR.2}
```

Internal class membership means persistence of exactly these three primitive
laws:

1. shared packing law;
2. shared participation law;
3. shared one-field law.

Those three laws are written source-faithfully in
[mpp-primitive-class-laws-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md),
[mpp-class-membership-endpoint-exclusion-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md),
[mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md),
and
[mpp-flow-map-and-tower-continuation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-flow-map-and-tower-continuation-note.md).

The stable carriers of this object law are:

```math
(u,p,\Phi,F),
\qquad
F:=D_a\Phi,
\tag{OLR.3}
```

together with incompressibility, pressure correction, viscosity coupling, shared
participation, and one-field coherence.

Any `G`-type metric remains packet-local unless a file proves stronger lane-wide
canonical priority.

The route keeps the primitive laws and the endpoint words on different strata.

The primitive object-side failures are failure of shared participation, shared
packing, and shared one-field coherence. The older words `dead`, `blown`, and
`jump` are retained only as legacy participation-side / packing-side /
one-field-side labels.

```math
\text{`dead' is legacy participation-side label only,}
\tag{OLR.4a}
```

```math
\text{`blown' is legacy packing-side label only,}
\tag{OLR.4b}
```

```math
\text{`jump' is legacy one-field-side label only.}
\tag{OLR.4c}
```

So the active end-goal becomes:

```math
\boxed{
\text{prove that no finite-time class exit can occur, hence smoothness persists.}
}
\tag{OLR.5}
```

The exact Law 2 theorem shape sitting between the object law and endpoint
exclusion is:

```math
\text{local tower escalation}
\Longrightarrow
\text{neighboring participation response}
\tag{OLR.5a}
```

on the same incompressible pressure-viscosity field. That theorem is now stated
theorem-facing in
[mpp-cm-tethering-and-neighboring-participation-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-cm-tethering-and-neighboring-participation-theorem.md),
and its proof program is isolated in
[mpp-participation-tethering-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-participation-tethering-theorem-program.md).

## 2. Law-Service Map

The corpus does not become one flat stack. It splits by which primitive class
law a branch actually serves.

### A. Constitutive root

These notes are lawful primitive surfaces:

1. [mpp-formal-ontic-object-package.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-formal-ontic-object-package.md)
2. [mpp-primitive-class-laws-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md)
3. [mpp-class-membership-endpoint-exclusion-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md)
4. [mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md)
5. [mpp-flow-map-and-tower-continuation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-flow-map-and-tower-continuation-note.md)

They serve the whole object law directly: packing, participation, and one-field
coherence.

### B. Constitutive witness/reduction tier

These remain lawful constitutive branches:

1. [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
2. [mpp-jet-to-finite-difference-bridge-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-jet-to-finite-difference-bridge-theorem.md)
3. [mpp-quantitative-neighboring-response-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-quantitative-neighboring-response-witness-theorem.md)
4. [mpp-material-packet-closure-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md)
5. [mpp-dead-tower-rigidity-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dead-tower-rigidity-reduction-note.md)
6. [mpp-open-dead-patch-rigidity-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-open-dead-patch-rigidity-theorem.md)
7. [mpp-cm-tethering-and-neighboring-participation-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-cm-tethering-and-neighboring-participation-theorem.md)
8. [mpp-participation-tethering-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-participation-tethering-theorem-program.md)
9. [mpp-shared-participation-no-drop-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-no-drop-theorem.md)
10. [mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md)
11. [mpp-reverse-four-body-class-membership-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-reverse-four-body-class-membership-audit.md)

They serve the primitive laws by exact witness installation, jet/difference
bridge closure, Law 2 tethering, reverse four-body admissibility audit, and
rigidity reduction.

### C. One-field coherence consumer wall

These branches survive, but only as one-field coherence consumers:

1. selector / `SG.4` branch
2. exact-potential readout branch
3. normal-covector / Hodge readout branch

Their current live route-control anchors are:

1. [mpp-fused-sg4-supplier-schema.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fused-sg4-supplier-schema.md)
2. [mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md)
3. [mpp-normal-covector-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md)
4. [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md)

These notes do not define the fluid object. They consume lawful exports from the
object law and turn them into directional ledgers.

### D. Derived supplier/export tier

These branches survive only as auxiliary supplier or export packaging:

1. YM-heat / shadow / carrier surfaces
2. Euclidean strict-shadow / export surfaces
3. residual pairwise closure and continuation handoff surfaces

These are useful only after lawful object-law or readout inputs have already
been installed.

## 3. First Illegal Permission By Branch

### A. Tower / dead-blown-jump branch

- Current branch primitive:
  local dead/blown/jump events at a point or region.
- First illegal permission:
  treating an isolated local event as primitive without first naming which class
  law fails.
- Last lawful primitive:
  shared packing / shared participation / shared one-field law.
- Lawful replacement path:
  object law
  `\Longrightarrow`
  branch-specific witness (`\mathfrak P_N+\mathfrak Q_N`, packing witness,
  tower compatibility)
  `\Longrightarrow`
  dead/blown/jump reduction
  `\Longrightarrow`
  exclusion theorem.

### B. Selector / `SG.4` branch

- Current branch primitive:
  signless observed packet `W_J` and its downstream selector-facing supplier
  budget.
- First illegal permission:
  signless packet primacy, i.e. asking `W_J` or generic selector algebra to
  recover directional meaning before a lawful object-law readout is installed.
- Last lawful primitive:
  class-membership object law plus branch-blind transported witness budget.
- Lawful replacement path:
  object law
  `\Longrightarrow`
  class-membership witness/export
  `\Longrightarrow`
  branch-specific readout theorem
  `\Longrightarrow`
  directional ledger
  `\Longrightarrow`
  residual pairwise closure
  `\Longrightarrow`
  `SG.4`.

### C. Exact-potential branch

- Current branch primitive:
  projectors, `D.7mb` budgets, and selector-strain compatibility data.
- First illegal permission:
  treating projective or Cauchy--Green readout objects as primitive before the
  object law has lawfully exported them.
- Last lawful primitive:
  class-membership witness on the transported family.
- Lawful replacement path:
  object law
  `\Longrightarrow`
  class-membership witness
  `\Longrightarrow`
  exact-potential witness-to-readout theorem
  `\Longrightarrow`
  angular ledger
  `\Longrightarrow`
  `D.7mr2`
  `\Longrightarrow`
  `RPC.3`
  `\Longrightarrow`
  `SG.4`.

### D. Hodge / normal-covector branch

- Current branch primitive:
  transported normal bundle, measurable normal covector, and directional or
  harmonic observability windows.
- First illegal permission:
  treating the normal/harmonic observables as primitive branch roots rather than
  one-field coherence readouts.
- Last lawful primitive:
  class-membership witness on the transported family.
- Lawful replacement path:
  object law
  `\Longrightarrow`
  class-membership witness
  `\Longrightarrow`
  normal-covector / harmonic readout theorem
  `\Longrightarrow`
  directional/harmonic ledger
  `\Longrightarrow`
  `PD.70z12`--`PD.70z14`
  `\Longrightarrow`
  `SG.4P`
  `\Longrightarrow`
  `SG.4`.

### E. YM-heat / shadow / carrier branch

- Current branch primitive:
  auxiliary carrier `A`, projected carrier `X`, carrier heat law, and in places
  a deformation metric `G`.
- First illegal permission:
  carrier primacy or ontic promotion of a packet-local metric / operator into
  the governing fluid object.
- Last lawful primitive:
  object-law flow/deformation identities carried by `(\Phi,F)`.
- Lawful replacement path:
  object law
  `\Longrightarrow`
  flow/deformation witnesses
  `\Longrightarrow`
  packet-local metric or carrier choice
  `\Longrightarrow`
  auxiliary supplier/shadow packaging
  `\Longrightarrow`
  upstream supplier/export to the selector branch.

### F. Euclidean strict-shadow / export branch

- Current branch primitive:
  strict shadow and lift/export hypotheses read as a branch root.
- First illegal permission:
  treating downstream export conditions as though they defined the primary
  theorem route.
- Last lawful primitive:
  torus-first internal branch plus explicit downstream export hypotheses.
- Lawful replacement path:
  object law
  `\Longrightarrow`
  internal torus-first closure
  `\Longrightarrow`
  explicit lift + strict shadow + Euclidean carrier control
  `\Longrightarrow`
  whole-space export.

## 4. Demotions And Survivals

### Survive as lawful theorem branches

1. class-membership object-law core
2. dead-tower participation reduction and the remaining no-drop witness burden
3. selector / `SG.4` consumer wall
4. exact-potential readout subbranch
5. Hodge / normal-covector readout subbranch

### Survive only as derived/export branches

1. YM-heat / shadow / carrier packaging
2. Euclidean strict-shadow discharge/export surfaces
3. scalar assembly and continuation-handoff notes

### Invalid as currently framed

No whole branch is thrown away outright, but the following starts are invalid as
primitive starts:

1. `W_J` as a branch root;
2. `TCJ` / `TEA` as free opening hypotheses;
3. generic `\mathrm{Err}_{J,\mathrm{id}}` as a primitive error term;
4. projector, normal-covector, or harmonic observable as a theorem root;
5. carrier heat law or any `G`-metric as the governing fluid object.

## 5. Downstream Consequence Map

The refoundation changes the meaning of the following surfaces at once.

### A. Central constitutive surfaces

1. [mpp-class-membership-constitutive-import-map.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-constitutive-import-map.md)
2. [mpp-surface-ontology-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-surface-ontology-ledger.md)
3. [mpp-constitutive-first-rederivation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-constitutive-first-rederivation-note.md)
4. [mpp-participation-tethering-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-participation-tethering-theorem-program.md)

### B. Branch interface surfaces

1. [mpp-fused-sg4-supplier-schema.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fused-sg4-supplier-schema.md)
2. [mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md)
3. [mpp-normal-covector-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md)

### C. Auxiliary carrier/shadow surfaces

1. [ym-heat-to-torus-heat-to-classical-shadow-bridge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md)
2. [heat-governed-carrier-synthesis-for-tower-and-shadow-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/heat-governed-carrier-synthesis-for-tower-and-shadow-route.md)

### D. Canonical route-control surfaces

1. [route-lock.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/route-lock.yaml)
2. [live-theorem-edge.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/live-theorem-edge.yaml)
3. [source-frontier.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/source-frontier.yaml)
4. [theorem-packet.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-packet.yaml)
5. [proof-obligation-matrix.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/proof-obligation-matrix.yaml)
6. [campaign-status.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/campaign-status.yaml)

## 6. New Theorem Queue

The honest theorem queue under the object law is:

The branch-control split stays fixed while this queue runs: selector / `SG.4`
remains the primary one-field coherence consumer wall; exact-potential and
normal-covector / Hodge remain derived readout branches; YM-heat / shadow /
carrier remains auxiliary supplier/export packaging; Euclidean strict-shadow
remains the downstream export branch.

The earlier ontological exhaustiveness reduction is retained only as a
downstream bookkeeping consequence of the object-law witness exclusions plus
the derived readout map. It is not a separate main-queue theorem slot.

1. use the installed exact class-membership witness, jet-to-difference bridge,
   and neighboring-response ledger to close no-drop, no-detach, and no-jump
   object-law witness exclusions;
2. close exact-potential and normal-covector/Hodge witness-to-readout theorems
   on the derived one-field readout branches;
3. close the selector-adapted defect-to-strain wall to `SG.4`;
4. close `BR.\lambda2` plus local strong-solution entry;
5. discharge the downstream Euclidean strict-shadow export branch explicitly.

That downstream Euclidean discharge remains export packaging from the
torus-first branch rather than a reset of the primary theorem route.

## 7. New Route Lock

The lane-wide route lock sentence is:

```math
\boxed{
\text{the Navier--Stokes program is governed by the class-membership object law: prove that no finite-time evolution exits shared packing, shared participation, or shared one-field coherence; the current active consumer-side theorem wall remains the torus-first selector-adapted defect-to-strain route on the one-field coherence branch, while exact-potential, normal-covector/Hodge, YM-heat/deformation, and Euclidean strict-shadow surfaces remain derived readout, supplier, or export branches unless they prove stronger ontic priority.}
}
\tag{OLR.6}
```

## 8. Canonical Surface Updates

This refoundation note requires the following canonical updates:

1. route-control surfaces must expose object-law governance separately from live
   theorem-slot primacy;
2. branch interface notes must stop conflating object law with current witness
   coordinates;
3. carrier/shadow notes must demote `G` from lane-wide root language to
   packet-local deformation metric language;
4. campaign status must stop advertising stale conditional-route closure that no
   longer matches the current theorem governance.
