# SCF-Bad Persistence Positive-Measure Test

## Status

Failed without a quantitative terminal modulus. Conditional persistence theorem isolated.

## Target

Test whether a pointwise active SCF-bad event forces persistent positive-measure scale-critical concentration.

A bad point satisfies

```math
(a,T_*)\in\mathcal B_{\varepsilon_m}^{\Phi},
```

meaning

```math
\forall r>0,
\quad
SCF_{base}(Q_r^\Phi(a,T_*))>\varepsilon_m.
```

## Conditional persistence theorem

If there is a quantitative label-time-scale modulus for `SCF_base`, then strict badness persists. For example, if for some radius/scale neighborhood one has

```math
|SCF_{base}(Q_r^\Phi(a,t))-SCF_{base}(Q_{r'}^\Phi(a',t'))|
\le \Omega(d(a,a')+|t-t'|+|\log r-\log r'|)
```

with `\Omega(\rho)\to0`, then a strict bad point with margin gives a whole neighborhood of bad points/scales. This yields positive-measure concentration.

## Current input test

Original smooth data gives continuity on compact subintervals below `T_*`. `Pack.TTU` gives bounded same-fluid distortion. These inputs do not provide a terminal quantitative modulus at `T_*` for `SCF_base` over labels, time, and scales.

Without such a modulus, bad packets may concentrate at smaller and smaller times/scales around moving material labels. Then each bad event is pointwise or threshold-local, while no fixed positive-measure persistence follows.

## Relation to CKN contrapositive

The CKN contrapositive says that absence of a good scale at a point is a scale-critical concentration witness:

```math
SCF\text{-bad}\Longrightarrow Jump_{avg}.
```

It does not give persistence in label/time/scale by itself.

## Verdict

Pointwise SCF-badness does not imply persistent positive-measure concentration from the current packet.

A valid sufficient theorem is

```math
SCFBad.Persistence.Modulus:
SCFBase.Modulus+\text{strict badness}
\Longrightarrow
\text{positive-measure bad concentration}.
```

The active upstream target remains one of:

```math
SCFBase.Modulus,
\qquad
SCFBase.FiniteComplexity,
\qquad
TowerBound.Upstream.
```