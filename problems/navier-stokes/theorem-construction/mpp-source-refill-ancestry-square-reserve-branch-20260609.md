# MPP Source-Refill Ancestry / Square-Reserve Branch Reentry

Date: 2026-06-09

## Status

Active-completion theorem pass after `TerminalNewProductionTheorem_{B_ASAC}.A`
reduced to the source-refill ancestry branch:

```text
ScaleCriticalTreeCarleson.A
```

or:

```text
ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A.
```

This note tests that branch. It does not close public Clay finality.

## Target

The charge-route target is the localized positive pre-Cauchy source estimate:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
o_N(1)+\text{summable legal losses}.
```

Equivalently, after the installed parent-square embedding, prove the
scale-critical donor square reserve estimate:

```math
\mathcal R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le
o_N(1)+Loss_{legal}.
```

## Installed Reduction

`ParentSquareEmbed.A` is installed as a static diffuse-parent pricing theorem.
It converts diffuse legal parent clouds into the donor square reserve
`\mathcal R_N`. This removes the bounded-parent-selector mismatch.

It does not control `\mathcal R_N` dynamically.

The source-refill charge route therefore needs:

```text
SquareReserveEvolution.A.
```

A useful form is:

```math
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
```

This would imply `ScaleCriticalTreeCarleson.A` by first-pulse iteration.

## Direct Square-Reserve Test

The current installed scalar input is the first-moment high-frequency tail:

```math
\int_W\sum_{\ell>N}D_\ell(t)\,dt=o_N(1).
```

That does not control the square reserve. A scalar ledger model puts one donor
pulse on a terminal interval `I_m`:

```math
D_{m+5}(t)=A_mh_m^{-1}1_{I_m}(t).
```

Then:

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt=A_m,
```

while:

```math
\int_{I_m}2^m
\left(\sum_{\ell>m+4}D_\ell(t)\right)^2dt
=
2^mA_m^2h_m^{-1}.
```

Choosing `A_m=2^{-2m}` and `h_m=2^{-3m}` makes the first moment vanish and the
square reserve stay order one. This is a countermodel to the currently installed
ledger implications. It is not a Navier-Stokes counterexample, but it proves the
existing ledgers do not imply `SquareReserveEvolution.A`.

## Why The Adjoint Parent-Or-Charge Does Not Yet Apply

The normalized-adjoint machinery controls child packet mass:

```math
M(T)
\le
Charge(T)
+
\sum_{P\prec T}\kappa(P,T)M(P)
+
Loss_{legal}(T).
```

The donor square reserve is:

```math
\mathcal R_N(W)
\simeq
\int_W\sum_{P^-}|A_{P^-}(t)|^2dt.
```

`ParentSquareEmbed.A` gives an upper Bessel estimate from donor coefficients to
child images. It is not invertible. To transfer child-mass dynamics to the donor
square reserve, the missing theorem is:

```text
DonorReserveAdjointTrace.A
```

meaning:

```math
\mathcal R_N(W)
\le
C\sum_{T\subset W}M(T)
+
Loss_{legal}(W)
+
o_N(1).
```

No such lower-frame / no-null-source theorem is installed. Donor clouds can
carry square mass in directions that are near-null for the selected child
analysis, or can send their image outside the current terminal ledger. The
current notes do not rule this out.

## Rigid Zeno Branch

The alternative branch:

```text
ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A
```

also remains open. `ZenoCompactnessExtraction.A` produces a local suitable
ancient source-residue object with positive native residue. It does not produce
finite global ancient energy, Type I control, critical smallness, bounded
vorticity or strain, self-similarity, symmetry, source cancellation, or any
other rigid class whose Liouville theorem is available.

The class-internal tree theorem is useful but not enough: it says a terminal
source tree cannot live inside already available CM witness rows. It does not
prove the supplier direction:

```text
OriginalSmoothData => ScaleCriticalTreeCarleson.A.
```

## Result

The source-refill ancestry branch is not proved.

The next non-alias theorem is:

```text
DonorReserveAdjointTrace.A / NoNullSourceParentCloud.A.
```

If that fails, the branch returns to the reserve-creation alternatives:

```text
ActiveWindowHeight.A,
ReserveCreationCharge.A,
RetainedPackGainProduction.A + RetainedFaceAmplitudeGain.A,
```

or to an explicit rigid Zeno class production theorem.

## New Live Criticism

`NS-LIVE-20260609-090`: the source-refill ancestry branch is still open.
`ParentSquareEmbed.A` statically prices diffuse parent clouds into the donor
square reserve, but no installed theorem gives the dynamic law for
`\mathcal R_N`. The missing non-alias theorem is
`DonorReserveAdjointTrace.A / NoNullSourceParentCloud.A`, or an equivalent
reserve-creation / retained-pack-gain / rigid-Zeno theorem. Until this is proved
and propagated back to `ScaleCriticalTreeCarleson.A`,
`OriginalSmoothDataPackSurvival.A` and PDF CMI finality remain open.
