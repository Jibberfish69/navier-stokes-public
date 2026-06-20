# MPP Forward Gold Parent-Ancestry Route Recheck

## Status

This note rechecks the parent-ancestry route after the June 19--20 heat-scale
time-face work.

The route under test is whether the localized source-parent machinery gives an
independent forward-gold proof of the retained heat-scale source pulse:

```math
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A.
```

It does not close from current inputs.  The route is useful because it identifies
the native parent measure and removes one fake obstruction, but the remaining
dynamic charge is exactly the same unweighted terminal critical reserve isolated
elsewhere.

## Checked Inputs

The localized pre-Cauchy source can be disintegrated before global Cauchy/Young
estimates erase parent structure.  For a source-balanced child packet `P`, this
gives the positive same-fluid parent edge measure

```math
d\pi_P(P^-)
=
\bigl[d\mathcal S^{nl}(P^-\to P)\bigr]_+.
```

The source-parent formalization splits as

```math
EdgeDisintegrate.A
+
AntiDiffuseParent.A
\Longrightarrow
SourceParent.Measure.
```

`EdgeDisintegrate.A` is available once the localized pre-Cauchy source is used.
The live issue is the anti-diffuse part:

```math
AntiDiffuseParent.A
\equiv_{\mathrm{route}}
ParentConcentrationOrDiffuseCharge.A.
```

## Parent Concentration Fails as an Installed Input

Finite dyadic interaction banding does not bound physical or triadic parent
multiplicity.  The legal parent measure may have the diffuse form

```math
\pi_P
=
{1\over M}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad
\pi_P(\mathsf{Pred}(P))=1,
\qquad
M\to\infty.
```

For every fixed route constant `B`,

```math
\sup_{|\mathcal C|\le B}\pi_P(\mathcal C)
\le
{B\over M}
\to 0.
```

Same-fluid transport preserves the edge once a parent has been selected.  It
does not select a bounded-complexity parent family from this diffuse measure.
Thus `ParentConcentration.A` is not installed by finite banding or same-fluid
fidelity.

## The Static Diffuse-Parent Obstruction Is Removed

`ParentSquareEmbed.A` is a real installed static estimate under the packet
Bessel hypotheses.  If

```math
T a
=
\left(
\sum_{P^-\prec P}
\langle \chi_P,\mathcal M\phi_{P^-}\rangle a_{P^-}
\right)_P,
```

then packet Bessel bounds and boundedness of the source multiplier give

```math
\|T a\|_{\ell^2(P)}^2
\le
C\sum_{P^-}|a_{P^-}|^2
+o_N(1).
```

This means diffuse parent clouds are not, by themselves, the remaining problem.
They can be pushed into a square donor reserve.

After Cauchy and Young, the positive localized source is reduced to

```math
\sum_P
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+
\le
\theta\sum_P D_P
+
C_\theta\sum_{P^-}|A_{P^-}|^2
+
\mathrm{legal\ losses}
+o_N(1).
```

So the branch has paid the static parent-diffusion problem and leaves a dynamic
reserve problem.

## The Remaining Dynamic Reserve

For the actual heat-scale source-wall branch, the square donor reserve is

```math
\mathcal R_N(W)
=
\int_W
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt.
```

The needed theorem is

```math
ScaleCriticalTreeCarleson.A:
\qquad
\mathcal R_N(W)
\le
o_N(1)+\mathrm{legal\ losses}.
```

Current energy and local-energy inputs give only the first-moment tail

```math
\int_W\sum_{\ell>N}D_\ell(t)\,dt\to0.
```

The first-moment tail does not imply the square reserve.  On heat windows
`h_m=2^{-2m}`, the model

```math
D_{m+5}(t)
=
A_m h_m^{-1}1_{I_m}(t),
\qquad
A_m=2^{-3m/2},
\qquad
|I_m|=h_m,
```

has

```math
\int_{I_m}D_{m+5}(t)\,dt
=
A_m
\to0,
```

but the `k=m` square-reserve contribution is order one:

```math
\int_{I_m}
2^m
D_{m+5}(t)^2
dt
=
1.
```

Thus first-moment energy, fixed-radius participation, and finite material-chain
telescoping do not produce the dynamic square reserve.

## Donor-Tower Recheck

The donor-tower slogan becomes a precise theorem:

```math
TwoTowerDonorDepletion.A.
```

The useful local algebraic half has already been separated:

```math
LocalDonorBalance.A:
\text{a donor feeds only by draining, by legal loss, or by being refilled.}
```

Together with `EntranceLeafDecay.A`, finite and non-Zeno refill trees are paid.
The remaining branch is an infinite terminal heat-scale refill tree.  The
formal reduction is

```math
LocalDonorBalance.A
+
RefillTreeWellFounded.A
\Longrightarrow
TwoTowerDonorDepletion.A,
```

and the direct refill-tree notes reduce `RefillTreeWellFounded.A` to

```math
ScaleCriticalTreeCarleson.A
\quad\vee\quad
ZenoSourceResidueRigidity.A.
```

Those are not installed by current inputs.

## Route Verdict

The parent-ancestry route is now exhausted as an independent forward-gold
supplier at current resolution.

What it proves structurally:

```math
EdgeDisintegrate.A
+
ParentSquareEmbed.A
```

turns the selected localized positive source problem into the scale-critical
square reserve problem.

What it does not prove:

```math
ScaleCriticalTreeCarleson.A,
\qquad
RefillTreeWellFounded.A,
\qquad
SourcePulseExclusion.A.
```

The exact remaining obstruction is not generic hidden parent diffusion.  It is a
dynamic first-created heat-scale square reserve:

```math
\left[
\mathcal R_N(W)
-
(1-\delta)\mathcal R_N(Past(W))
-
Loss_{\mathrm{legal}}(W)
\right]_+
\le
Charge_N(W)+o_N(1),
```

or an equivalent strict no-waste, selected critical-strain, normalized CKN,
signed-saturation/no-free-Zeno, or compact source-residue rigidity theorem.

In the participation language: fixed positive-radius packets are already
charged by the strip law.  The live pulse has `|I_j|\sim r_j^2/\nu` and feed
rate `\sim\nu/r_j^2`, so one packet can remain order-one in normalized source
currency while its physical energy/dissipation cost carries the shrinking
factor `r_j`.  The trilinear carrier is the native meter of that heat-scale feed
rate; current inputs make it visible but not coercive.

Therefore this branch returns to the already isolated gold wall:

```math
UnweightedTerminalCriticalActionReserve.A
```

equivalently

```math
SourceSquareReserve.A
/
ScaleCriticalTreeCarleson.A
/
ReserveCreationCharge.A
/
StrictRescaledNoWasteLyapunov.A
/
compact source-residue rigidity.
```

No forward-gold smoothness theorem is proved here.
