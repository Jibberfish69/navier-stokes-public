# MPP Square-Reserve First-Pulse Route For ScaleCriticalTreeCarleson.A

## Status

Proof-route note after rehydrating the post-`SourceWall.Reconcile.A` source wall.

Update after direct gate test: this route is not discharged from the installed
inputs.  The failed gate is Gate 2.  `ParentSquareEmbed.A` is a static Bessel
embedding for the donor cloud, while the normalized adjoint parent-or-charge
identity controls child mass `M(T)`.  No installed estimate gives a dynamic
parent-or-charge inequality for the donor square reserve `\mathcal R_N` itself.

The corrected next theorem is therefore:

```math
SquareReserveEvolution.A
```

or the alternate rigid Zeno package:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

See:

```text
problems/navier-stokes/theorem-construction/mpp-scalecriticaltreecarleson-squarefirstpulse-solve-attempt-gate2-obstruction-20260505.md
problems/navier-stokes/theorem-construction/mpp-square-reserve-evolution-or-zeno-rigidity-final-attempt-20260505.md
```

The current live split is:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

This note records the direct route I tested first.  The key change is to
replace the old first-pulse selection on positive source threshold by a
first-pulse selection on the square-reserve measure itself.

That was meant to fix the exact failure found in `FirstPulseKill.A`: diffuse
legal parent clouds can evade bounded parent selectors, but they cannot evade an
`\ell^2` square-reserve measure if that is the selected first object.

The subsequent gate audit shows this fixes the selection mismatch but not the
dynamic-reserve mismatch: the proof still needs an evolution inequality for
`\mathcal R_N`.

## Live Direct Target

The direct theorem object is:

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\int_I
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt
\le
o_N(1)+Loss_{legal}.
}
```

By the installed reduction:

```math
ParentSquareEmbed.A
+
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

`ParentSquareEmbed.A` is already installed.  The remaining live object is the
scale-critical donor square.

## Why The Old First-Pulse Kill Failed

The old first-pulse functional selected threshold-crossing source packets.  It
does not see diffuse legal parent ancestry:

```math
\pi_P={1\over M}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty.
```

Every bounded selector captures at most `B/M`, while the total legal parent
mass can stay bounded below by a fixed `c_0>0`.

So the correct first object cannot be:

```math
\text{one parent packet with mass }\ge \eta.
```

It must be:

```math
\text{the full square mass of the diffuse parent cloud}.
```

## New Selection Object

Define the localized square-reserve measure on the same-fluid terminal forest:

```math
d\mathcal R_N
:=
\sum_{P^-}
|A_{P^-}|^2\,d\tau,
```

where `A_{P^-}` is the scale-normalized donor factor left after the localized
source decomposition.  Under the shell identification,

```math
\sum_{P^-}|A_{P^-}|^2
:=
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2.
```

Thus proving:

```math
\mathcal R_N(I)\le o_N(1)+Loss_{legal}
```

is exactly `ScaleCriticalTreeCarleson.A`.

## Proposed Theorem

```math
\boxed{
\textbf{SquareFirstPulse.A:}
\quad
\text{there is no first terminal same-fluid packet window carrying positive }
\mathcal R_N\text{-mass after legal losses.}
}
```

More explicitly, assume for contradiction that there are `N_m\to\infty` and
terminal windows `W_m` such that:

```math
\mathcal R_{N_m}(W_m)\ge\eta>0.
```

Choose `W_m` earliest among dyadic same-fluid windows with this property, after
discarding already-legal loss windows.  This is a first-pulse construction for
the square-reserve measure, not for a pointwise positive source threshold.

## Parent-Or-Charge With The Right Mass

For each donor tile contributing to `\mathcal R_N`, apply the normalized adjoint
identity with:

```math
\Gamma_T(t)=\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
\qquad
\chi_T(t)=e^{-\Gamma_T(t)}\psi_T(t),
```

and normalized mass:

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
```

The installed packet core gives:

```math
M(T)
\le
Charge(T)
+
\sum_{P\prec T}\kappa(P,T)M(P)
+
Loss_{legal}(T),
```

where:

```math
\sum_T Charge(T)
\le
C\int\sum_{q>N}D_q+o_N(1),
```

by `WeightedAdjRes.A`, and surviving quiet inherited edges satisfy the
contractive parent kernel after coefficient/gain stopping:

```math
\sum_{T:P\prec T}\kappa(P,T)\le 1-\delta.
```

The crucial difference is that the parent term is now summed in the same square
mass `M(P)` that defines `\mathcal R_N`.  Therefore diffuse parentage is not
lost through bounded parent selection.

## Square-Reserve Firstness Kills Diffuse Ancestry

Iterating backward gives:

```math
\mathcal R_N(W_m)
\le
C\int_{Past(W_m)}\sum_{q>N}D_q
+
(1-\delta)^s\mathcal R_N(Past_s(W_m))
+
Loss_{legal}
+
o_N(1).
```

The first-pulse choice for `\mathcal R_N` removes the earlier parent-square
branch: if the parent square mass were bounded below by `c_0>0` on a finite
backward slice, it would itself be an earlier square-reserve pulse.  If it is
spread diffusely over many parents, it is still counted by `\mathcal R_N`,
because the selected measure is already the full `\ell^2` parent cloud.

Thus, after sending the ancestry depth `s\to\infty`,

```math
\mathcal R_N(W_m)
\le
C\int_{Past(W_m)}\sum_{q>N}D_q
+
Loss_{legal}
+
o_N(1).
```

On terminal high-frequency tails:

```math
\int\sum_{q>N}D_q\to0,
```

and legal losses are summable.  This contradicts

```math
\mathcal R_{N_m}(W_m)\ge\eta.
```

Therefore:

```math
\boxed{
SquareFirstPulse.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
}
```

## Proof Gates To Discharge

The proof should be written through four gates.

### Gate 1: Square-reserve localization

Show that failure of `ScaleCriticalTreeCarleson.A` produces a same-fluid
localized square-reserve measure:

```math
d\mathcal R_N
=
\sum_{P^-}|A_{P^-}|^2\,d\tau
```

with positive mass on terminal packet windows, modulo legal losses.

### Gate 2: Square parent-or-charge

Lift the normalized-adjoint parent-or-charge identity from child source mass to
the donor square mass:

```math
\sum_T M(T)
\le
\sum_T Charge(T)
+
\sum_{P\prec T}\kappa(P,T)M(P)
+
Loss_{legal}.
```

This uses the already-installed `WeightedAdjBessel.A`, `WeightedAdjRes.A`,
`GainStop.A`, and quiet-edge contraction package.

### Gate 3: First square-reserve selection

Define the earliest dyadic same-fluid window crossing:

```math
\mathcal R_N(W)\ge\eta.
```

Prove measurability by dyadic grid plus lexicographic tie-breaking, exactly as
in the first-pulse construction, but with `\mathcal R_N` as the measure.

### Gate 4: Diffuse ancestry kill

Prove that every finite backward parent-square branch is either:

```math
\text{residual charged}
```

or:

```math
\text{an earlier }\mathcal R_N\text{-pulse}.
```

Because the selected measure is square mass over the full parent cloud, diffuse
parentage is included rather than missed.

## Why This Is Sharper Than The Old Route

The old route tried to kill:

```math
\text{earlier positive source packet with mass }\ge \eta.
```

That fails against diffuse parent clouds.

This route kills:

```math
\text{earlier total square-reserve mass}.
```

That is exactly the quantity left after `ParentSquareEmbed.A`.  So the
first-pulse primitive is now aligned with the actual unresolved theorem object.

## Conditional Downstream Chain

Only the following conditional implication is available from this route.  If
Gate 1 through Gate 4 are proved, including the square parent-or-charge
inequality in Gate 2 for the donor reserve measure `\mathcal R_N`, then:

```math
SquareFirstPulse.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

The downstream promotion is exactly conditional on that chain.  Since the
installed inputs do not currently prove Gate 2 for `\mathcal R_N`, this note
does not promote the normalized-adjoint source-drain package from conditional
support to the source-wall closure needed by the downstream
`AWG.A / Jump_{avg}\Rightarrow\bot / PCTP.hard` route.
