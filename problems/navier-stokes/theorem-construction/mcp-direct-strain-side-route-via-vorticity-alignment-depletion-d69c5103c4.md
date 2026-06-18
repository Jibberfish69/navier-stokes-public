# Direct Strain Side Route Via Vorticity Alignment Depletion

## Target

Reduce

```math
\int_0^{T_*}S_{pack,Q}(t)dt<\infty
```

to a localized vorticity-alignment or strain-depletion estimate.

## Criterion

From `PackStrain.Crit`, if

```math
S_{pack,Q}(t)=\sup_{a\in A_Q(t)}\lambda_{max}^{+}(S(u)(X(a,t),t))
```

belongs to `L^1(0,T_*)`, then

```math
\Gamma_{pack,Q}\in L^\infty(0,T_*).
```

## Alignment Reduction

Let `e(a,t)` be a unit stretching direction for the largest singular value of the deformation gradient. The sharp packet coefficient is

```math
S_{align,Q}(t)=\sup_{a\in A_Q(t)}(e(a,t)\cdot S(u)(X(a,t),t)e(a,t))_+.
```

Then

```math
\int_0^{T_*}S_{align,Q}(t)dt<\infty
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty(0,T_*).
```

## Vorticity Geometry Target

Since `S(u)` is a singular integral of vorticity, a candidate depletion theorem is

```math
S_{align,Q}(t)
\le C\,\mathcal A_Q(t)\,\Omega_Q(t)+R_Q(t),
```

where `mathcal A_Q` measures vorticity-direction coherence or alignment on the packet, `Omega_Q` is a packet vorticity amplitude, and `R_Q` is an integrable far/local remainder.

A sufficient theorem is

```math
\int_0^{T_*}\mathcal A_Q(t)\Omega_Q(t)dt+
\int_0^{T_*}R_Q(t)dt<\infty.
```

## Verdict

The direct strain route is reduced to an alignment-depletion estimate for the
positive directional strain. If completed, this side route gives an independent
pack-gauge proof without the averaged terminal-tail machinery.
