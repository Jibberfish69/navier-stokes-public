# MPP Label Finite-Complexity / Modulus Direct Attempt Note

## Status

Direct attempt on the two structural hypotheses left by
`mpp-pack-ttu-selector-uniformity-closure-note.md`:

```math
FiniteComplexity.TTU
\qquad\text{or}\qquad
IntegrableLabelModulus.TTU.
```

Neither is installed from `OriginalSmoothData` by the current repo inputs. Both
are equivalent route-level ways of forbidding moving terminal strain spikes
across a continuum label family.

## Target A: `FiniteComplexity.TTU`

A sufficient finite-complexity theorem is:

```math
\exists C_1,\dots,C_J,\ a_j\in C_j
```

with

```math
\sup_{a\in C_j}s(a,t)
\le
C\,s(a_j,t)+e_j(t),
\qquad
\sum_j\int_{t_0}^{T_*}e_j(t)\,dt<\infty,
```

where

```math
s(a,t)=\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

This would convert labelwise strain-tail exclusion into `Pack.TTU`.

## Direct Test For `FiniteComplexity.TTU`

The current endpoint definitions produce threshold witnesses, not a fixed
finite partition. They allow:

```math
\forall M\ \exists(a_M,t_M):\quad s(a_M,t_M)>M.
```

The label `a_M` may move with the threshold and with terminal time. Compactness
of the label family only gives convergent subsequences; it does not prevent
spikes from visiting infinitely many shrinking label cells.

Thus endpoint compactness and threshold witnesses do not prove finite
complexity.

## Target B: `IntegrableLabelModulus.TTU`

A sufficient modulus theorem is:

```math
|s(a,t)-s(b,t)|\le \omega_t(\delta)
\quad
d(a,b)\le\delta,
```

with

```math
\int_{t_0}^{T_*}\omega_t(\delta)\,dt<\infty.
```

This gives a finite-net control of the continuum supremum.

## Direct Material-Coordinate Test

In label coordinates,

```math
s(a,t)=\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

A Lipschitz-in-label bound requires differentiating through the flow map:

```math
|\nabla_a s(a,t)|
\le
C_{\mathrm{label}}
|\nabla_x^2 u(\Phi(a,t),t)|\,|\nabla_a\Phi(a,t)|.
```

Therefore an integrable label modulus is controlled by a continuation-grade
quantity such as

```math
\int_{t_0}^{T_*}
\|\nabla_x^2 u(t)\|_{L^\infty(Q_t)}
\Gamma_{pack,Q}(t)\,dt<\infty,
```

or an equivalent finite-depth tower/modulus packet.

The installed energy/enstrophy layer does not give this. `Pack.TTU` would help
with `\Gamma_{pack,Q}`, but not with the terminal `\nabla^2u` modulus. Tower
readout would help, but using tower readout upstream is circular for the direct
terminal-tail proof.

Thus `IntegrableLabelModulus.TTU` is not supplied from `OriginalSmoothData` by
the current route.

## Moving-Spike Normal Form

Both structural hypotheses are exactly no-moving-spike rules. A compact label
family can support smooth bump patterns

```math
s(a,t)=\sum_n A_n\phi_n(a)\psi_n(t)
```

with supports moving through disjoint label cells and terminal time intervals.
One can arrange every fixed label to have finite strain integral while the
continuum supremum has divergent integral.

Therefore the missing structural theorem can be named:

```math
\boxed{
LabelNoMovingSpike.TTU:
\text{terminal strain spikes have finite complexity or integrable label modulus.}
}
```

## Closed Direct Reduction

The direct pointwise fallback now has the closed dependency chain

```math
LabelNoMovingSpike.TTU
\Longrightarrow
FiniteComplexity.TTU\ \text{or}\ IntegrableLabelModulus.TTU
\Longrightarrow
EndpointSelector.TTU\ \text{or}\ UniformStrainTail.TTU
\Longrightarrow
Pack.TTU.
```

The current repo does not prove

```math
OriginalSmoothData\Longrightarrow LabelNoMovingSpike.TTU.
```

This is why the active route should remain the averaged route through
`SOURCE.NO-PULSE.A`, unless a new finite-complexity/modulus theorem is installed.
