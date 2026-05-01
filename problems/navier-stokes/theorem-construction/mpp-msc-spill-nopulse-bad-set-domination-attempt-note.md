# MPP MSC.Spill.NoPulse Bad-Set Domination Attempt Note

## Status

Bounded theorem attempt and sharp reduction.

This note attacks the active no-pulse primitive in its mixed-shell form:

```math
MSC.Spill.NoPulse.
```

It proves that the good-coefficient part is automatically absorbable and
reduces the remaining burden to one exact bad-set domination theorem for the
mixed bilinear dissipation measure.

## Starting Point

The mixed-shell identity and previous packet reductions give, for large `N`,

```math
\partial_t\mathfrak M_N^\sigma
+\nu\mathfrak B_N^\sigma
\le
C\sum_{N<j\le\ell}\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
+\mathrm{barrier}_N(t),
```

where

```math
\gamma_j(t):=2^{-j}\sum_{m=j-M}^{j+M}E_m(t),
```

and the boundary, high-high, bare exchange, and strict-low packets are already
barrier-sized or absorbable.

Energy dissipation gives only

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt=o_N(1).
\tag{1}
```

## Coefficient Splitting

For a threshold `\eta>0`, define

```math
Bad_N(\eta)
:=
\{t:\sup_{j>N}\gamma_j(t)>\eta\}.
```

On the complement of this set,

```math
\sum_{N<j\le\ell}
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
\le
\eta\sum_{N<j\le\ell}
\mathfrak B_{j,\ell}^\sigma(t)
\le
\eta\mathfrak B_N^\sigma(t).
\tag{2}
```

Choosing `\eta` below the absorption threshold handles the entire good set.

Thus `MSC.Spill.NoPulse` reduces to the bad set:

```math
\int_{Bad_N(\eta)}
\sum_{N<j\le\ell}
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)\,dt.
```

The coefficient itself has the crude bound

```math
\gamma_j(t)
\le
C_E2^j
```

from the energy bound, which is not useful for absorption. Therefore the
remaining theorem cannot be merely a size estimate on `\gamma_j`; it must be a
domination theorem for the target measure on the bad set.

## Exact Bad-Set Target

A sufficient theorem is:

```math
\boxed{
MSC.BadAC:
\quad
\int_{Bad_N(\eta)}
\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)
+\eta
\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt
}
\tag{3}
```

with the `o_N(1)` term at the required barrier scale after choosing the route
cutoff.

Together, `(2)` and `(3)` give:

```math
\int_0^{T_\ast}
\sum_{N<j\le\ell}
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)\,dt
\le
C\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt
+C_\eta o_N(1),
```

which is exactly the absorption form of `MSC.Spill.NoPulse`.

## Why Energy-Time Smallness Does Not Prove `MSC.BadAC`

From `(1)`, Chebyshev gives small Lebesgue measure for `Bad_N(\eta)`:

```math
|Bad_N(\eta)|
\le
\eta^{-1}
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt
=o_N(1).
```

But the target measure is not Lebesgue measure. It is

```math
\mathfrak B_N^\sigma(t)\,dt
=
\sum_{N<j\le\ell}
\bigl(1+2^{-2(\ell-j)}\bigr)
K_{j,\ell}^\sigma D_j(t)D_\ell(t)\,dt.
```

The current inputs contain no absolute-continuity theorem saying that this
measure cannot concentrate on the small Lebesgue-time set where the spill
coefficient is large.

## Self-Damping Attempt

Using

```math
\mathfrak B_{j,\ell}^\sigma
=
\bigl(2^{2\ell}+2^{2j}\bigr)M_{j,\ell}^\sigma,
```

the bad coefficient enters the mixed identity as a growth coefficient of size

```math
\gamma_j(t)\bigl(2^{2\ell}+2^{2j}\bigr)
```

on `M_{j,\ell}^\sigma`. The energy-time estimate controls
`\int\gamma_j(t)\,dt`, not

```math
\int \gamma_j(t)\bigl(2^{2\ell}+2^{2j}\bigr)\,dt.
```

Thus the mixed identity does not turn `(1)` into a Gronwall closure. The missing
frequency weight is exactly the same obstruction as `MSC.BadAC`.

## Reduction

The current mixed-shell route is now reduced to one sharp theorem:

```math
\boxed{
OriginalSmoothData\Longrightarrow MSC.BadAC.
}
```

Equivalently, prove that mixed bilinear dissipation cannot concentrate on the
same short windows where the spill coefficient

```math
\gamma_j(t)=2^{-j}\sum_{m=j-M}^{j+M}E_m(t)
```

is large.

If `MSC.BadAC` is proved, then

```math
MSC.BadAC
\Longrightarrow
MSC.Spill.NoPulse
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A
```

using the already installed PCTP collapse note.

## Verdict

This attempt does not prove `MSC.BadAC` from the inherited energy-dissipation
surface. It removes the good-coefficient part and names the exact remaining
measure-domination theorem. Further attempts should attack `MSC.BadAC` directly,
not retry the Lebesgue-measure scheduler.
