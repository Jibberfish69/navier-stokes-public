# MPP Source-Wall Root Post-Reconcile Direct Attempt

## Status

Post-`SourceWall.Reconcile.A` root attempt.

`SourceWall.Reconcile.A` demotes normalized-adjoint source-drain to conditional
support.  The remaining root source-wall alternatives are:

```math
ScaleCriticalTreeCarleson.A
```

on the direct `LocalPositiveSourceCarleson.A` branch, or

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
```

on the terminal-Zeno rigidity branch.

This note attempts both with the installed inputs and records the exact hard
stop.

## Direct Carleson Branch

The direct branch now factors as:

```math
ParentSquareEmbed.A
+ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

`ParentSquareEmbed.A` is installed under the transported packet Bessel
hypotheses.  It controls the diffuse parent cloud in square norm:

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)\,a_{P^-}
\right|^2
\le
C\sum_{P^-}|a_{P^-}|^2+o_N(1).
```

After Cauchy/Young, the remaining scalar reserve is:

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\int
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt
\le
o_N(1)+\mathrm{legal\ losses}.
}
```

## Why Installed Energy Does Not Prove The Reserve

The installed energy layer gives the high-frequency first moment:

```math
\int\sum_{k>N}D_k(t)\,dt\to0.
```

This does not imply the scale-critical square reserve.  The scalar pulse model
is:

```math
F_k(t)=A_k h_k^{-1}\mathbf 1_{I_k}(t),
\qquad |I_k|=h_k.
```

Then

```math
\int F_k(t)\,dt=A_k,
```

but

```math
\int 2^kF_k(t)^2\,dt
=
2^k A_k^2 h_k^{-1}.
```

Taking `A_k\to0` while `h_k\ll 2^kA_k^2` keeps the first moment small and the
scale-critical square reserve non-small.  This is the terminal heat-window pulse
obstruction in scalar form.

Therefore raw energy, first-moment dissipation, and tail decay cannot prove
`ScaleCriticalTreeCarleson.A`.

## Tried Direct Enhancements

The existing route tests cover the natural enhancements:

```math
PositiveSourceDepletion.A,
\quad
ReverseHolderParentConcentration.A,
\quad
ActiveShellAmplitudeGain.A,
\quad
HeatScaleSquareSourceControl.A.
```

Each presentation leaves the source reserve unproved:

- global skew cancellation is lost after localization and positive-part
  selection;
- Cauchy/Young envelopes reproduce the square reserve instead of proving it;
- bounded frequency banding does not bound physical packet multiplicity;
- diffuse parentage is controlled only in square norm by `ParentSquareEmbed.A`,
  leaving the scale-critical donor square;
- heat-scale pulse concentration is not excluded by finite dissipation.

Thus the direct branch does not close from installed inputs.

## Zeno Rigidity Branch

The Zeno extraction produces an ancient local suitable source-residue limit:

```math
(u_*,p_*,\mu_*^{src}),
\qquad
\mu_*^{src}(Q_1^-)\ge c_0>0.
```

To close the branch, one needs an explicit rigid class `B`:

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_B.A,
```

and a residue Liouville theorem:

```math
ZenoResidueLiouville_B.A:
\quad
B\Longrightarrow\mu_*^{src}=0.
```

The currently audited classes are not produced by installed inputs:

- finite global ancient energy is destroyed by rescaling;
- Type I control is absent;
- critical smallness contradicts the positive normalized source residue;
- bounded ancient vorticity is unavailable;
- self-similarity is not produced by the extraction;
- symmetry reduction is not produced;
- finite branch entropy is not controlled because diffuse parent entropy has no
  installed route ledger.

Therefore the Zeno branch also remains open.

## Post-Attempt Verdict

The attempted root solves no new theorem from the installed inputs.  On the
direct Carleson side it sharpens the next exact primitive to the already named
scalar reserve theorem:

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

meaning the theorem that prevents the scalar active-square pulse model for the
actual localized Navier-Stokes source carrier:

```math
\int
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt
\le
o_N(1)+\mathrm{legal\ losses}.
```

Equivalently, supply a new rigid Zeno class `B` and prove:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Current Exact Target

```math
\boxed{
\text{No separate theorem object lies strictly below }
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

The descriptive phrase "scale-critical pulse reserve" may still be used for the
scalar obstruction model, but the live theorem object on the direct branch is
exactly `ScaleCriticalTreeCarleson.A`; see
`mpp-scalecritical-tree-carleson-direct-irreducibility-note-20260505.md`.

No release/readout promotion should treat `SOURCE.NO-PULSE.A`,
`LemmaB.SourceDrain`, `AWG.A`, or `Jump_{avg}\Rightarrow\bot` as unconditional
until one of these root primitives is proved.
