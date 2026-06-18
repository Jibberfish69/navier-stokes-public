# MPP QDrain.A Source No-Pulse Closure Note

## Status

Theorem-facing closure of the monotone-functional alternate route named in
`mpp-qbound-to-awg-and-qdrain-wall-note.md`.

This note executes the next target:

```math
QDrain.A
\Longrightarrow
QBound.A
\Longrightarrow
AWG.A
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
```

The first three arrows are useful. In addition, `QBound.A` is continuation-grade
on the periodic surface only when paired with the named `H^s`, `s>5/2`,
relaunch theorem or an equivalent criterion: the uniform continuation bound
must give a common restart lifespan and uniqueness overlap, which prevents a
finite classical endpoint. A uniform `H^1` bound is energy-level support, not
this relaunch theorem. Thus the strong monotone branch would close the
terminal-tail side only after that continuation bridge is supplied:

```math
QDrain.A
\Longrightarrow
QBound.A
\Longrightarrow
PCTP.5.A/TTU.A
```

in the stronger continuation sense. This does not produce the route-native
`Pack.TTU` strain ledger; it bypasses that ledger by proving a stronger
classical continuation norm.

The open part is the source theorem
`OriginalSmoothData => QDrain.A`. That open part is not independent of
`SOURCE.NO-PULSE.A`; it is the enstrophy-level presentation of the same
nonlinear source-control atom.

## Target 1: Direct Enstrophy Drain

For zero-force periodic Navier-Stokes, set

```math
Y(t)=\|\nabla u(t)\|_2^2,
\qquad
Z(t)=\|\Delta u(t)\|_2^2.
```

The exact identity is

```math
\frac12Y'(t)+\nu Z(t)
=
-\int_{\mathbb T^3}
\partial_k u_i\,\partial_i u_j\,\partial_k u_j\,dx.
```

The cubic term is the strain/vortex-stretching production. It has no installed
sign. The exact one-sided drain target is the estimate

```math
-\int
\partial_k u_i\,\partial_i u_j\,\partial_k u_j
\le
(1-\delta)\nu Z(t)+L(t)Q(t),
\qquad L\in L^1(0,T_\ast).
```

This is exactly `QDrain.A`.

The identity alone does not prove it: the cubic can be positive on expanding
strain configurations.

## Target 2: Exact Interpolation Bound

Sobolev, Gagliardo--Nirenberg, and Young give

```math
\left|\int
\partial_k u_i\,\partial_i u_j\,\partial_k u_j
\right|
\le
C\|\nabla u\|_2^{3/2}\|\Delta u\|_2^{3/2}
\le
\frac{\nu}{2}Z(t)+C_\nu Y(t)^3.
```

Hence

```math
Y'(t)\le C_\nu Y(t)^3.
```

This is not a terminal bound. Rewriting it as a `QDrain.A` coefficient gives
`L(t):=C_\nu Y(t)^2`, and the installed energy class does not prove
`L\in L^1(0,T_\ast)`.

So interpolation does not discharge `QDrain.A`.

## Target 3: Dyadic / Shell-Flux Form

Localizing the strain cubic to active shells gives the same object controlled
by the shell-flux source route. Positive high-frequency production is precisely
the source-balanced active-pulse channel recorded in
`mpp-awg-deep-source-frontier-closure-note.md`.

Therefore a proof of `QDrain.A` would have to establish one of the same source
controls:

```math
\text{monotone/source dominance for }F_j,
```

```math
\text{strain-sign cancellation for the weighted lifted remainder},
```

```math
\text{active-square residual-tail control},
```

or a direct heat-scale square-source estimate.

## Closed Reduction

The monotone-functional branch is not a separate remaining target. It is the
enstrophy-level presentation of the same source atom:

```math
\boxed{
QDrain.A
\Longleftrightarrow_{\text{route level}}
SOURCE.NO-PULSE.A.
}
```

More precisely:

```math
SOURCE.NO-PULSE.A
\Longrightarrow
QDrain.A
\Longrightarrow
QBound.A
\Longrightarrow
AWG.A
\Longrightarrow
(Jump_{avg}\Rightarrow\bot)
```

is a valid conditional route, while the unconditional implication

```math
OriginalSmoothData\Longrightarrow QDrain.A
```

is not installed by the current energy identity, interpolation estimates, or
dyadic exchange algebra.

## Consequence

The live no-`Field_avg` `Jump_avg` branch now has one precise theorem atom in
both languages:

```math
SOURCE.NO-PULSE.A
```

or equivalently its enstrophy-drain presentation

```math
QDrain.A.
```

No further progress is obtained by switching between `AWG.A`, `NOHOP.A`,
heat-scale square-source, direct active-window Carleson, signed lifted
remainder, residual-tail, monotone/source-dominance, and `QDrain.A` unless one
of them is proved as a genuine nonlinear source no-pulse theorem.

For the full PCTP queue this gives two honest target presentations.

Strong single-target presentation:

```math
OriginalSmoothData\Longrightarrow QDrain.A.
```

This implies both `Jump_avg=>\bot` and the terminal classical continuation
needed for `PCTP.5.A`.

Route-native split presentation:

```math
OriginalSmoothData\Longrightarrow SOURCE.NO\text{-}PULSE.A
```

for `PCTP.5.C`, and

```math
OriginalSmoothData\Longrightarrow Pack.TTU
```

or an equivalent terminal-cover/tower production theorem for `PCTP.5.A`.

The first presentation is narrower but stronger; the second preserves the
installed class-membership route without importing a global continuation norm as
the upstream supplier.
