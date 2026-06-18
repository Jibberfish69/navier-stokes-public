---
ns_viewer:
  theorem_id: active-square-obstruction-pass-or-pack-exit-20260611
  status: local-forward-positive-obstruction-closed-as-cm-pass-or-pack-exit
  proof_role: forward_positive_lpas_obstruction_to_cm_pack_exit_bridge
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Closes the reduced cone/tower active-square problem as a pass-or-exit theorem after correcting the raw LPAS target. Raw DirectLPAS is false by the heat-shear counterexample, so the forward pass branch is residual/source-balanced LPAS/CTS/FCTS. If that residual theorem fails after legal/payment ledgers are removed, the selected heat-scale active-square pulse is exactly a source-balanced terminal packet. Positive-radius retained ancestry is consumed by NoPersistentUnpaidPositiveRadiusAncestry.A; terminal zero-radius ancestry lands first at not Pack_Q. Thus the obstruction is not an in-class hidden continuation branch."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-positive-cone-tower-active-square-exhaustion-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-residual-refill-ledger-and-spine-consolidation-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-source-balanced-active-pulse-exclusion-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-no-persistent-unpaid-positive-radius-ancestry-20260521.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-zeno-pack-failure-correction-20260521.md
    - problems/navier-stokes/theorem-construction/mpp-any-finite-failure-witness-cm-exit-20260521.md
  downstream_consequence: "Do not respawn the cone/tower/drain discussion as a demand to positively prove raw LPAS. Raw LPAS is false; residual/source-balanced LPAS/CTS is the forward pass branch, and the surviving residual source-balanced heat-scale pulse is a Pack-first CM exit witness."
---

# MPP Active-Square Obstruction Pass Or Pack Exit

Date: 2026-06-11

Status: local closure theorem for the reduced cone/tower active-square problem.

This note uses the CM contrapositive only after the forward-positive estimate
has reached its exact obstruction.

## 0. Target

The cone/tower work first reduced the forward-positive route to the
active-square far-corona template:

```math
\boxed{
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+C_*2^{-2\delta N}.
}
\tag{LPAS}
```

The raw version of this theorem is false as a universal smooth Navier-Stokes
estimate; the heat-shear counterexample is recorded in
`mpp-direct-lpas-raw-active-square-false-shear-counterexample-20260611.md`.

The valid forward target is the residual/source-balanced version of this
template: the theorem must control the positive nonlinear refill left after
exact heat decay, through-flow, and paid linear dissipation are removed.
That residual refill density is defined in
`mpp-residual-refill-ledger-and-spine-consolidation-20260611.md`.

Equivalently, one may prove the residual continuum cumulative-tail or
far-corona theorem:

```math
\text{ResidualDirectCTSOrFCTS.A.}
```

The previous note proved that first-moment drain, cone geometry, and the bare
derivative tower do not prove this estimate by themselves.  A heat-scale pulse
can have finite first-moment drain and divergent active-square bill.

The present question is what happens to that surviving pulse in the full proof
program.

## 1. Forward Pass Branch

If residual/source-balanced `(LPAS)` or `ResidualDirectCTSOrFCTS.A` is proved,
the forward-positive branch passes:

```math
\text{Residual LPAS}
\Longrightarrow
\text{Residual CTS}
\Longrightarrow
\text{Residual FCTS}
\Longrightarrow
\text{far-corona Carleson closure}.
```

Together with the already separated cone/tower reductions, this gives the
scale-critical cone budget needed for the late-slab CKN route.

This is the forward pass branch.

## 2. Failure Branch Normal Form

Assume the residual forward pass branch is not available and a
source-balanced active-square bill survives after legal losses, paid reserves,
finite-donor payments, exact heat decay, through-flow, and legal readout
terms have been removed.

By the source-pulse normal form already recorded in
`mpp-source-balanced-active-pulse-exclusion-reentry-20260609.md`, the surviving
object may be selected as terminal packets

```math
P_m=(Q_m^\Phi,j_m,I_m),
\qquad
c_h2^{-2j_m}\le |I_m|\le C_h2^{-2j_m},
\qquad
j_m\to\infty,
\qquad
t_m\uparrow T_*,
```

with nonzero native positive active source/square mass.

The conditions `j_m\to\infty` and `t_m\uparrow T_*` are forced by the role of
the obstruction.  If `j_m` stayed bounded, it would not be a high-frequency
tail obstruction.  If the packets stayed inside a compact preterminal interval,
preterminal smoothness would kill the high-frequency tail.  So a genuine
failure branch is terminal and scale-collapsing.

The packet radius is

```math
r_m:=2^{-j_m}\downarrow0
```

up to the fixed packet-chart constants already included in the heat-scale
selection convention.

Thus the failed forward theorem has produced exactly the object Thomas was
asking us to account for: a source-balanced active pulse trying to survive at
heat scale while its carrier collapses toward the terminal point.

## 3. Positive-Radius Retained Ancestry Case

First test whether the source-pulse ancestry has a positive terminal carrier.

Assume a selected same-fluid ancestry tail satisfies

```math
\liminf_m r_m\ge r_0>0
```

and carries positive selected terminal source residue.  Then
`NoPersistentUnpaidPositiveRadiusAncestry.A` applies.

It says that a positive-radius selected ancestry cannot remain simultaneously:

```text
same-fluid,
unpaid,
no-incoming,
retained in finite CM,
and source-positive at the terminal strip.
```

At least one event occurs:

```text
reserve payment,
dissipation payment,
incoming participation/source flux,
legal/projected/cutoff/boundary exit,
finite CM face exit.
```

The first four events remove the allegedly unpaid obstruction from the failed
forward branch.  The last event is already a Pack/Part/Field witness-face exit.

So a positive-radius retained ancestry cannot be the surviving hidden
active-square obstruction.

## 4. Terminal Zero-Radius Case

The only remaining selected failure branch has

```math
r_m\downarrow0,
\qquad
t_m\uparrow T_*.
```

This is the terminal Zeno/source-residue case.  The governing correction is
`mpp-terminal-zeno-pack-failure-correction-20260521.md`:

```text
finite Zeno packets may be legal at every finite stage,
but the terminal zero-radius residue is not a retained positive-radius packet.
```

In the CM witness hierarchy, the first failed face is:

```math
\neg Pack_Q.
```

This is also the source-wall placement rule in
`mpp-any-finite-failure-witness-cm-exit-20260521.md`:

```math
r_*=0\Longrightarrow \neg Pack_Q,
```

and

```math
\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\neg Pack_Q
```

for selected unpaid scale-critical donor-refill ancestry.

So the zero-radius active-square pulse is not a retained CM branch.  It is a
Pack-face failure.

## 5. Local Closure Theorem

The reduced cone/tower residual active-square problem now has a complete
pass-or-exit resolution:

```math
\boxed{
\text{ResidualSourceBalancedLPAS / ResidualDirectCTSOrFCTS}
\quad\vee\quad
\neg Pack_Q.
}
```

More explicitly:

1. Residual/source-balanced `(LPAS)` or `ResidualDirectCTSOrFCTS.A` proves the
   forward cone-budget pass branch.
2. Failure of that residual theorem, after legal/payment ledgers are removed,
   selects a terminal source-balanced active pulse.
3. Positive-radius retained ancestry is impossible without payment, incoming
   flux, legal exit, or a finite CM face exit.
4. The terminal zero-radius residue lands first at `not Pack_Q`.

Thus the residual active-square obstruction is not an in-class hidden
continuation branch.  It either pays the corrected forward estimate, or it
supplies the Pack-side CM exit witness.

## 6. Boundary

This note does not prove the standalone positive theorem

```math
\text{OriginalSmoothData}\Longrightarrow\text{raw LPAS}.
```

Raw LPAS is false.  This note proves that the local cone/tower residual
obstruction is closed under the requested proof program:

```math
\text{forward pass}
\quad\text{or}\quad
\text{CM Pack-face exit}.
```

The remaining use of `ResidualSourceBalancedLPAS.A`,
`ResidualDirectCTSOrFCTS.A`,
`SourcePulseExclusion.A`, or `ScaleCriticalTreeCarleson.A` is forward-supplier
support only.  It is no longer a reason to keep the local cone/tower
active-square problem open inside the CM contrapositive pass-or-exit grammar.
