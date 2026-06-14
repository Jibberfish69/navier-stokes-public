# Exact-Potential Angular Ledger From Selector-Strain

## Status

Active theorem-facing exact-potential observability note.

Role: first SG.4-facing theorem on the exact-potential branch.

For the upstream class-membership splice into this branch, see
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md).
That interface note records the honest stronger statement on disk:
`\mathcal E_J^{cm}` supplies the branch through exported
packing/transport/calibration ledgers, but does not by itself replace `D.7mq`
or selector-strain compatibility.

## Constitutive Import

This note is a branch consumer, not a semantics root.

Its constitutive import is:

1. the same one-field law from the MPP packet;
2. the pressure-viscosity participation carrier already packaged in
   `\mathcal E_J^{cm}`;
3. the incompressible transport/packing side already exported into the branch as
   `\operatorname{Err}_{J,\mathrm{pack}}^{cm}` and
   `\operatorname{Err}_{J,\mathrm{tc}}^{cm}` through `EWI.A`.

So the honest branch read is

```math
\mathcal E_J^{cm}
+
D.7mq
+
\text{selector-strain compatibility}
\Longrightarrow
D.7mr2.
\tag{EPA.0a}
```

## Purpose

Discharge the angular-ledger step:

```math
\boxed{
D.7mq
+
\text{selector-strain compatibility}
\Longrightarrow
D.7mr2,
\quad\text{hence}\quad
\Xi_J^{ang}\le C_{EPA}\bigl(|W_J|^2+\mathrm{Err}_J\bigr).
}
\tag{EPA.0}
```

## Exact Inputs

0. the constitutive CM import via `EWI.A`;
1. the pair-to-cocycle packet `D.7mq`;
2. the selector-strain comparison from
   [reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md)
   in the current-time CG form `SSC-EP.A`, or the equivalent on-disk packet
   `SSC.B` / `SSC.C`;
3. the synchronized pair packet `P_{ab}` on the transported good family.

## Exact Claim

### Theorem EPA.A

Assume:

1. `PTC-Lin + PTC-Shape` close the `D.7ma4` slot in the sense of `D.7mq`;
2. one selector-strain sufficiency packet closes the current-time CG strain
   slot, for example `SSC-EP.A`.

Then on the exact-potential Cauchy--Green branch,

```math
\Xi_J^{ang}(a,b,t)
:=
\frac12
\bigl\|
P_{ab}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
C\,|W_J(a,b,t)|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
+
C\,\operatorname{Err}_{J,\mathrm{ssc}}^{CG}(a,b,t).
\tag{EPA.1}
```

In particular, with the bootstrap strain packet one gets

```math
\Xi_J^{ang}(a,b,t)
\le
C\,|W_J(a,b,t)|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t),
\tag{EPA.2}
```

which is exactly the branch packet `D.7mr2`.

### Proof

This is the exact projector-space triangle argument already packaged in
`D.7ma8`, with `D.7mq3` supplying the pair-to-Cauchy--Green comparison and
`SSC-EP.A` supplying the Cauchy--Green-to-strain comparison. Writing
`\widehat P_J:=\widehat P_{J,\varepsilon}^{pair}` and inserting `P_J^{CG}(t,a)`
gives

```math
\bigl\|
P_{ab}-P_{J,\top}^{seg}
\bigr\|_F^2
\le C_{\triangle}
\bigl\|
P_{ab}-\widehat P_J
\bigr\|_F^2
+
\bigl\|
\widehat P_J-P_J^{CG}(t,a)
\bigr\|_F^2
+
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}
\bigr\|_F^2,
\tag{EPA.3}
```

and the three terms are exactly the synchronized observation ledger, the pair
ledger `\operatorname{Err}_{J,CG}^{pair,\varepsilon}`, and the selector-strain
ledger `\operatorname{Err}_{J,\mathrm{ssc}}^{CG}`. This yields `(EPA.1)`. When
the selector-strain packet is the bootstrap packet from `D.7mp + D.7mo +
D.7mm`, the last term is `\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}`,
which gives `(EPA.2)`. ∎

### Corollary EPA.B (installed exact-potential supplier packet)

Assume `D.7mq` on the active exact-potential strip, and assume the hypotheses
of Theorem `SSD.A` in
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md)
on the same strip. Then `D.7mr2` holds.

### Proof

Theorem `SSD.A` supplies the branch-local selector-strain theorem `SSC-EP.A`.
Combining that selector-strain packet with `D.7mq` is exactly Theorem `EPA.A`,
so the branch-facing angular ledger export `D.7mr2` follows. ∎

## Interpretation

This is the first place where the selector-strain side becomes directly
SG.4-facing. Upstream of this note, the route is still about constructing and
identifying projective objects. At this note, the route becomes a directional
ledger. The CM carrier has already paid for the packing/transport side before
the projector-space triangle is used.

## Downstream Use

The next step is pure residual pairwise assembly:

```math
EPA.A
\Longrightarrow
RPC.3.
```

On the installed exact-potential simple-top route this downstream entry may now
be read in the sharpened composed form

```math
D.7mq + (D.7mp + D.7mo + D.7mm)
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3.
```

That is written next in
[exact-potential-residual-pairwise-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-residual-pairwise-closure.md).
