# MPP Label Finite-Complexity / Modulus Direct Attempt Note

## Status

Direct attempt on the two structural hypotheses left by
`mpp-pack-ttu-selector-uniformity-closure-note.md`:

```math
FiniteComplexity.TTU
\qquad\text{or}\qquad
IntegrableLabelModulus.TTU.
```

Neither is installed from `OriginalSmoothData` by the current repo inputs. They
are two sufficient route-level structures for forbidding terminal strain spikes
from moving through a continuum label family.

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
of the label family only gives convergent subsequences; by itself it gives no
finite partition `C_j` and no error functions `e_j` satisfying the displayed
finite-complexity inequality.

Endpoint compactness and threshold witnesses do not prove finite complexity.

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

A sufficient route to an integrable label modulus is the continuation-grade
quantity

```math
\int_{t_0}^{T_*}
\|\nabla_x^2 u(t)\|_{L^\infty(Q_t)}
\Gamma_{pack,Q}(t)\,dt<\infty,
```

or another finite-depth tower/modulus packet that implies the displayed
integrable modulus inequality.

The installed energy/enstrophy layer does not give this. `Pack.TTU` would help
with `\Gamma_{pack,Q}`, but not with the terminal `\nabla^2u` modulus. Tower
readout would help, but using tower readout upstream is circular for the direct
terminal-tail proof.

`IntegrableLabelModulus.TTU` is not supplied from `OriginalSmoothData` by the
current route.

## Moving-Spike Normal Form

The exact obstruction is the same label/time bump array exposed in the
selector-uniformity note.  Let `A_Q=[0,1]`, choose pairwise disjoint label
intervals `U_n` and pairwise disjoint terminal time intervals `I_n`, and choose
nonnegative bumps `\phi_n(a)` and `\psi_n(t)` supported in those sets.  Choose
amplitudes `A_n` so that

```math
A_n\int_{I_n}\psi_n(t)\,dt=1
```

and set

```math
s(a,t)=\sum_n A_n\phi_n(a)\psi_n(t).
```

Then every fixed label has finite strain integral, because each label belongs
to at most one `U_n`, while

```math
\int_{t_0}^{T_*}\sup_a s(a,t)\,dt
\ge
\sum_n A_n\int_{I_n}\psi_n(t)\,dt
= \sum_n 1
=\infty.
```

Every fixed finite selector misses all but finitely many spikes.  This is an
abstract strain-ledger countermodel, not a Navier--Stokes solution.

The missing structural theorem can be named as the exact exclusion of that
countermodel by one of the displayed sufficient structures:

```math
\boxed{
LabelNoMovingSpike.TTU:
\text{the terminal strain ledger satisfies FiniteComplexity.TTU or IntegrableLabelModulus.TTU.}
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

The active route remains the averaged route through `SOURCE.NO-PULSE.A` unless
a new finite-complexity/modulus theorem is installed.
