# MPP Mixed-Shell Spill Coefficient Scheduler Attempt Note

## Status

Bounded theorem attempt and exact burden reduction.

This note attacks the remaining spill coefficient surface in
`mixed-shell-bilinear-dissipation-identity.md`.

It proves the conditional closure

```math
QBound.A\Longrightarrow MSC.Spill.Close,
```

but it also shows why the natural scheduler proof from energy dissipation alone
does not close.  The surviving theorem is a no-pulse domination statement for
the spill coefficient against the mixed-shell bilinear dissipation measure.

## Starting Point

The mixed-shell identity gives

```math
\partial_t\mathfrak M_N^\sigma+\nu\mathfrak B_N^\sigma
=\mathfrak X_N^\sigma .
```

The previous note already removes the mixed boundary term, the residual
high-high packet, the bare off-diagonal exchange block, and the strict-low
packet.  The only remaining packet has the form

```math
|\mathfrak X_{N,\mathrm{spill}}^\sigma(t)|
\le
C\sum_{N<j\le \ell}B_j(t)M_{j,\ell}^\sigma(t)
+\varepsilon\nu\mathfrak B_N^\sigma(t),
```

where

```math
B_j(t):=2^{3j}\sum_{m=j-M}^{j+M}\|\Delta_m u(t)\|_2^2.
```

With

```math
E_m(t):=2^{2m}\|\Delta_m u(t)\|_2^2,
```

the coefficient identity in the mixed-shell note gives

```math
B_j(t)M_{j,\ell}^\sigma(t)
\le
C_M
\gamma_j(t)\,\mathfrak B_{j,\ell}^\sigma(t),
\qquad
\gamma_j(t):=2^{-j}\sum_{m=j-M}^{j+M}E_m(t).
\tag{1}
```

Thus the exact spill burden is:

```math
\sum_{N<j\le \ell}\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
```

relative to the dissipative measure

```math
\mathfrak B_N^\sigma(t)=
\sum_{N<j\le \ell}\mathfrak B_{j,\ell}^\sigma(t).
```

## Conditional Closure From `QBound.A`

Assume

```math
QBound.A:\qquad
\sup_{t<T_\ast}\|\nabla u(t)\|_2^2<\infty .
```

Then, uniformly in `t`,

```math
\gamma_j(t)
\le
C_M2^{-j}\|\nabla u(t)\|_2^2
\le
C_M Q_\ast 2^{-j}.
```

Choose `N` so large that `C C_M Q_\ast 2^{-N}\le \nu/8`.  Then `(1)` implies

```math
C\sum_{N<j\le \ell}B_jM_{j,\ell}^\sigma
\le
\frac{\nu}{8}\mathfrak B_N^\sigma .
```

Together with the already absorbed strict, high-high, and exchange pieces,
the mixed-shell identity becomes

```math
\partial_t\mathfrak M_N^\sigma
+c\nu\mathfrak B_N^\sigma
\le 0
```

up to the barrier-sized initial boundary contribution.  Therefore

```math
\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt
\le
C_\nu
\mathfrak M_N^\sigma(0)
\le
C_\ast2^{-2\delta N}.
```

So

```math
\boxed{QBound.A\Longrightarrow MSC.Spill.Close.}
```

This is consistent with
`mpp-qbound-to-awg-and-qdrain-wall-note.md`: an enstrophy drain implies
bounded `Q`, bounded `Q` gives pointwise spill-coefficient smallness, and the
mixed-shell route then closes.

## Scheduler Attempt From Energy Dissipation Alone

The tempting replacement is to use only the energy-dissipation law

```math
\int_0^{T_\ast}\sum_mE_m(t)\,dt<\infty .
```

Indeed,

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt
\le
C_M
2^{-N}\int_0^{T_\ast}\sum_mE_m(t)\,dt
\to0 .
\tag{2}
```

Thus the spill coefficient is small in aggregate time mass.  However `(2)` is
not enough to absorb the spill term, because the term needing control is not

```math
\int\sum_j\gamma_j(t)\,dt.
```

It is the weighted pairing

```math
\int_0^{T_\ast}
\sum_{N<j\le \ell}
\gamma_j(t)\,\mathfrak B_{j,\ell}^\sigma(t)\,dt.
\tag{3}
```

Energy dissipation permits large values of `\gamma_j` on small time sets, and
the current inputs contain no theorem excluding concentration of
`\mathfrak B_{j,\ell}^\sigma dt` on exactly those large-coefficient sets.

Equivalently, if

```math
Bad_N(\eta):=\{t:\sup_{j>N}\gamma_j(t)>\eta\},
```

then `(2)` gives small Lebesgue measure for `Bad_N(\eta)` after summing over
`j`, but the proof requires the stronger domination

```math
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)+\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt.
\tag{4}
```

No installed Euclidean input proves `(4)`.

## Exact Missing Theorem

The mixed-shell branch is therefore reduced to the following theorem.

```math
\textbf{MSC.Spill.NoPulse:}
```

For every `\varepsilon>0`, after choosing `N` sufficiently large,

```math
\int_0^{T_\ast}
\sum_{N<j\le \ell}
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)\,dt
\le
\varepsilon
\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt
+C_\varepsilon2^{-2\delta N}.
\tag{5}
```

This theorem is exactly the missing statement that spill-coefficient pulses do
not carry the mixed-shell bilinear dissipation mass.

## Relation To The Other Live Primitives

`MSC.Spill.NoPulse` is the mixed-shell version of the same live primitive
already isolated elsewhere:

```math
SOURCE.NO-PULSE.A
```

rules out active nonlinear shell-flux/source pulses,

```math
AWG.A / NOHOP.A
```

rules out active-window source-normalization failure, and

```math
QDrain.A
```

rules out vortex-stretching production large enough to destroy the enstrophy
bound.

The conditional implications now line up as

```math
QDrain.A
\Longrightarrow QBound.A
\Longrightarrow MSC.Spill.Close
\Longrightarrow
\text{mixed-shell bilinear barrier}.
```

But without `QDrain.A`, `MSC.Spill.NoPulse`, or another theorem proving `(5)`,
the scheduler attempt does not close from energy dissipation alone.

## Verdict

The mixed-shell identity has genuinely improved the branch: it removed the
boundary, high-high, bare exchange, and strict-low burdens, and it made the
spill coefficient the only remaining coefficient surface.

The branch is not yet discharged.  Its exact remaining theorem is
`MSC.Spill.NoPulse`, equivalently a no-pulse domination theorem preventing the
mixed bilinear dissipation measure from concentrating on times when

```math
2^{-j}\sum_{m=j-M}^{j+M}E_m(t)
```

is large.
