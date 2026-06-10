---
title: Same-Witness Rigid Anti-Atom Production Direct Attempt
date: 2026-06-10
status: direct-attempt-open
loop_criticism_id: NS-LIVE-20260609-205
governing_program: "Exit(Q):=not Member(Q) through Pack_Q / Part_{N,Q} / Field_{N,r,Q}"
claim_boundary:
  logical_landing_node: SameWitnessRigidAntiAtomLiouvilleProduction.A
  claim_status: not_proved
  edge_effect: "Tests the rigid anti-atom alternative left after terminal capacity, trace no-positive-jump, and source-residence routes failed. The rigid subclass Liouville theorem is valid once a terminal time-face anti-atom clause is granted, but same-witness custody does not produce that clause."
  downstream_consequence: "The active loop remains open below OriginalSmoothDataPackSurvival.A. Future progress must come from a genuinely non-source Pack-survival theorem or from a new theorem that actually produces terminal anti-atom structure for the same first-Pack witness. pdfs_final remains false."
evidence_refs:
  - problems/navier-stokes/theorem-construction/mpp-rigid-basac-timeface-antiatom-subclass-liouville-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-basac-timeface-antiatom-rigid-subclass-production-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-production-into-rigid-basac-timeface-subclass-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-same-witness-superl1-source-carleson-direct-attempt-20260610.md
---

# Direct Target

```text
SameWitnessRigidAntiAtomLiouvilleProduction.A
```

The route would need:

```text
same original-data first Pack witness
+ production into a rigid terminal anti-atom subclass
+ the already proved subclass Liouville theorem
=> OriginalSmoothDataPackSurvival.A.
```

# Installed Liouville Half

The installed rigid subclass note proves:

```text
RigidBASACTimeFaceSubclassLiouville.A:
B_ASAC^TA => mu_*^{src}=0.
```

Here `B_ASAC^TA` is `B_ASAC` plus the terminal time-face anti-atom clause:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

That theorem is valid. The inherited no-earlier-selected-source-slice clause
removes every fixed negative-time slab, the added anti-atom clause removes the
terminal slice, and countable exhaustion removes the local source measure.

# Missing Production Half

The theorem still needs:

```text
ProductionIntoRigidBASACTimeFaceSubclass.A:
B_ASAC => B_ASAC^TA
```

on the same original-data first Pack witness.

The current same-witness data give target custody, finite local `L^1_s` native
positive source mass, local-energy/BV balance primitives, weak linear traces,
zero ASAC, and no fixed earlier selected source slice. They do not produce the
terminal anti-atom clause.

The scalar terminal strip model remains admissible:

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
\qquad
g_m(s)\,ds\rightharpoonup\delta_0.
```

It has bounded `L^1_s` mass, no fixed earlier selected slice, and an order-one
terminal time-face atom.

# Same-Witness Check

Same-witness custody prevents changing the Pack witness. It does not add time
thickness, an Orlicz modulus, a source-Carleson reserve, a no-positive-jump
trace theorem, or an intrinsic anti-atom property.

Thus the proof cannot pass from "this is the same first-Pack witness" to "this
witness belongs to the terminal anti-atom subclass." That step is exactly the
missing production theorem.

# Result

`SameWitnessRigidAntiAtomLiouvilleProduction.A` is not proved from current
installed inputs.

The valid statement is conditional:

```text
same-witness production into B_ASAC^TA
+ RigidBASACTimeFaceSubclassLiouville.A
=> source residue vanishes.
```

The production premise is not installed.

# New Live Criticism

`NS-LIVE-20260609-205`: same-witness rigid anti-atom production is not proved.
The rigid subclass Liouville theorem is valid after a terminal time-face
anti-atom clause is granted, but the same-witness first-Pack data do not produce
that clause. The shrinking terminal layer `g_m(s)=m 1_{(-1/m,0]}` still satisfies
the current finite-L1/local-energy/BV/weak-trace inputs while producing a
terminal atom. The active loop must next prove a genuinely non-source
Pack-survival theorem, such as Pack-critical-element stability or profile
decomposition forbidding the selected positive terminal atom, or install a new
terminal anti-atom production theorem. Keep `pdfs_final` false.
