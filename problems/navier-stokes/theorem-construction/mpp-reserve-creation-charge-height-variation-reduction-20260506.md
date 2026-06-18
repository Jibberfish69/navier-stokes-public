# MPP ReserveCreationCharge.A Height-Variation Reduction

Date: 2026-05-06

Status: audit-open theorem-crank reduction; not a discharge of
`ReserveCreationCharge.A`.

Post-audit correction: the proposed `FirstHeightCreationDichotomy.A` repair was
pursued in
`mpp-firstheightcreation-dichotomy-terminal-attempt-and-collapse-20260506.md`
and collapsed as an independent theorem atom.  Replace first-height-dichotomy
language below by the stronger requirement: prove `HeightFluxControl.A` through
a genuine structural mechanism.

Exactness rework correction, 2026-06-18: the height factorization and scalar
pulse obstruction below are exact conditional reductions, but the old
conclusion that the current theorem-crank target is simply
`HeightFluxControl.A` is stale.  Current live surfaces consume old
ActiveHeightFlux / SourceReserve / SignedPair / no-free-sink labels as
support-level.  This note may be used only as a historical supplier reduction:
the retained positive-scale source branch must now be promoted by same-ledger
payment or by CM-test admission plus a first Pack/Part/Field face failure.  The
live replacement burden is the same-witness terminal anti-concentration /
source-Carleson / rigid-anti-atom / non-source Pack-survival family, or an
equivalent same-ledger payment theorem.

Purpose: sharpen the direct `ScaleCriticalTreeCarleson.A` attack by replacing
the blunt square-reserve target with a smaller first-creation target for the
scale-normalized donor height.

## 1. Context

The historical direct Field-facing supplier chain was:

```text
ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A
=> LocalPositiveSourceCarleson.A.
```

The obstruction is not diffuse parent multiplicity.  `ParentSquareEmbed.A`
prices the parent cloud into the donor square reserve.  The exact remaining
problem is first-time creation of that reserve on a terminal heat window:

```text
Past(W) negligible,
legal loss negligible,
but R_N(W) bounded below.
```

Define the reserve by

```math
R_N(W)
:=
\int_W
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt.
```

Define the donor tail and scale-normalized donor height:

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
H_k(t):=2^kT_k(t).
```

Then:

```math
2^kT_k(t)^2 = H_k(t)T_k(t),
```

so:

```math
R_N(W)
=
\int_W
\sum_{k>N}H_k(t)T_k(t)dt.
```

The first-moment donor tail is:

```math
M_N(W):=
\int_W
\sum_{k>N}T_k(t)dt
```

with the understood finite-depth / bounded-overlap normalization from the
same terminal packet family.

## 2. Scalar obstruction

Energy controls `M_N(W)`.  It does not control `R_N(W)`.

Indeed, on one active donor scale `k`, take a scalar pulse:

```math
T_k(t)=A\,1_{[s,s+\tau]}(t).
```

Then:

```math
M_N(W)=A\tau,
\qquad
R_N(W)=2^kA^2\tau.
```

Choose:

```math
A=(2^k\tau)^{-1/2}.
```

Then:

```math
R_N(W)=1,
\qquad
M_N(W)=2^{-k/2}\tau^{1/2}.
```

So the first-moment tail can be arbitrarily small while the square reserve is
exactly \(R_N(W)=1\).  This is exactly the spike-sensitive gap.

Therefore no argument using only donor area / energy tail can prove
`ReserveCreationCharge.A`.

## 3. Height factorization

On each terminal window:

```math
R_N(W)
\le
H_N(W)M_N(W),
\qquad
H_N(W):=\sup_{t\in W}\sup_{k>N}H_k(t).
```

Consequently, a first reserve pulse:

```math
R_N(W)\ge\eta,
\qquad
M_N(W)=o_N(1),
```

forces:

```math
H_N(W)\ge \eta/M_N(W)\to\infty.
```

Thus any first-time square-reserve pulse requires very large normalized donor
height on the active window. This does not by itself prove that the donor
height is newly created on that same window.

This is the useful pivot:

```text
do not try to control the square pulse directly;
control first creation of the height that makes the square pulse possible.
```

## 4. New sharper target

The next direct theorem atom should be:

```math
\boxed{
DonorHeightCreation.A
}
```

Statement:

For terminal same-fluid Field-face windows `W` on the CM witness carrier,

```math
\left[
H_N(W)
-H_N(Past(W))
-Loss_{legal}^{height}(W)
\right]_+
\le
C\,Charge_N^{height}(W)+o_N(1).
```

Here:

```math
H_N(W)=\sup_{t\in W}\sup_{k>N}2^k\sum_{\ell>k+4}D_\ell(t).
```

The charge must be a native Navier-Stokes quantity, not an endpoint readout:

```text
allowed: shell balance, viscous heat action, pressure/source legal ledgers,
         same-fluid packet geometry
forbidden: END.Field, READ.COVER_downstream, Field.Read, DTC.Read
```

## 5. Reduction theorem

### `DHCR.A`

Assume:

```text
1. terminal first-pulse selection for R_N,
2. high-tail first-moment vanishing M_N(W)=o_N(1),
3. DonorHeightCreation.A,
4. a genuine structural `HeightFluxControl.A` mechanism,
5. bounded-overlap / finite-depth packet normalization,
6. legal losses are summable.
```

Then first-time square-reserve pulses cannot survive:

```math
R_N(W)\not\ge\eta
```

on terminal first-pulse windows.

### Proof

Suppose:

```math
R_N(W_m)\ge\eta,
\qquad
Past_R(W_m)\to0,
\qquad
Loss_{legal}(W_m)\to0.
```

By height factorization:

```math
\eta
\le
R_N(W_m)
\le
H_N(W_m)M_N(W_m).
```

Since the retained high-tail first-moment vanishes:

```math
M_N(W_m)=o_N(1),
```

we get:

```math
H_N(W_m)\to\infty.
```

This is the audit-sensitive step. A first `R_N` pulse does not by itself make
the past height small: large `H_N` could have existed on very thin earlier
sets without creating past square-reserve mass. Therefore the positive part in
`DonorHeightCreation.A` is large only after an additional structural theorem.
The attempted first-height dichotomy has been checked and is not independent:
it is either tautological shell-flux accounting or it spends the same
active-alignment / TPNI / retained-pack-gain / Zeno machinery. Therefore the
positive part is large only after a real `HeightFluxControl.A` mechanism is
installed:

```math
\left[
H_N(W_m)-H_N(Past(W_m))-Loss_{legal}^{height}(W_m)
\right]_+
\to\infty.
```

But `DonorHeightCreation.A` bounds this by:

```math
C\,Charge_N^{height}(W_m)+o_N(1).
```

On the terminal Field-face source-wall branch, legal charge is already part of
the source/legal-loss ledger.  If this charge remains summable, the large
height creation is impossible.  Contradiction.

Thus a nonzero first square-reserve pulse requires failure of
`DonorHeightCreation.A`, failure of structural `HeightFluxControl.A`, or
non-summable native height charge.

## 6. Relation to older targets

`ActiveWindowHeight.A` is stronger:

```math
H_N(W)\le C_{legal}.
```

It gives absence of first reserve pulses by:

```math
R_N(W)\le C_{legal}M_N(W)=o_N(1).
```

`DonorHeightCreation.A` is weaker and more natural: it allows large donor
height if the height was already present or if the PDE pays native charge for
creating it.

`DonorReserveAdjointTrace.A` is another realization: its target statement is
that every large donor height event is visible to the normalized-adjoint source
trace and is charged by the existing parent-or-charge mechanism.

The historical sharpened dependency was:

```text
DonorReserveAdjointTrace.A
=> DonorHeightCreation.A
=> structural HeightFluxControl.A mechanism
=> first-pulse ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A.
```

## 7. Exact remaining mathematical burden

The new hard PDE theorem is:

```text
large first-time creation of H_N(t)
cannot occur on a same-fluid terminal Field-face packet
without paying native height charge.
```

This is more precise than the previous square-reserve statement.

Current proof use: the displayed burden is a supplier-side reduction only.  It
does not promote the retained source branch into CM proof material unless a
same-ledger payment is proved or the branch is admitted to the CM test and
lands at a first Pack/Part/Field face failure.

It asks for a dynamic law for:

```math
H_k(t)=2^k\sum_{\ell>k+4}D_\ell(t),
```

not for the integrated square reserve itself.

## 8. Verdict

This note does not prove `ReserveCreationCharge.A`.

It improves the historical direct supplier route by isolating an audit-open
sharper theorem atom:

```math
\boxed{
DonorHeightCreation.A
}
```

and proving:

```math
DonorHeightCreation.A
\quad+\quad structural HeightFluxControl.A mechanism
\Longrightarrow
\text{no first-time terminal square-reserve pulse}
\Longrightarrow
\text{the historical direct Option A source-wall closure}.
```

The old next theorem-crank attempt was the native shell-balance derivative of
`H_k(t)` and the legal height charge.  The current live frontier has moved past
that label: this note now feeds the same-witness terminal anti-concentration /
source-Carleson / rigid-anti-atom / non-source Pack-survival burden only when it
supplies the exact same-ledger payment or first-face landing described above.
