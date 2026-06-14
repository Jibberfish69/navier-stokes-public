# MPP MSC.BadAC PulseCharge Attempt Note

## Status

Bounded theorem attempt on the proposed pulse-charge route for

```math
MSC.BadAC.
```

The route succeeds in localizing the bad set to heat-scale pulse intervals. It
does not close from the installed reserves. The missing charge lemma is exactly
a source-balanced pulse exclusion, hence another presentation of
`SOURCE.NO-PULSE.A`.

## Target

The mixed-shell bad-set theorem is

```math
MSC.BadAC:
\quad
\int_{Bad_N(\eta)}
\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)
+\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt,
```

where

```math
Bad_N(\eta)
:=
\{t:\sup_{j>N}\gamma_j(t)>\eta\},
\qquad
\gamma_j(t):=2^{-j}\sum_{m=j-M}^{j+M}E_m(t).
```

The intended pulse-charge theorem is:

```math
PulseCharge.A:
\quad
\gamma_j\ge c_{pulse}\eta
\ \text{and}\
\int_{I_j}\mathfrak B_N^\sigma \text{ large}
\Longrightarrow
\text{definite finite reserve is consumed on }I_j.
```

If this charge were summable over a stopping-time cover of `Bad_N(\eta)`, then
`MSC.BadAC` would follow.

## Step 1: Stopping-Time Localization

For each bad time choose a shell `j(t)>N` with

```math
\gamma_{j(t)}(t)>\eta.
```

Attach the heat-scale interval

```math
I(t):=[t-c2^{-2j(t)},t+c2^{-2j(t)}]\cap[0,T_\ast).
```

A Vitali selection gives pairwise disjoint core intervals `I_\alpha` such that

```math
Bad_N(\eta)\subset \bigcup_\alpha 5I_\alpha,
```

with bounded overlap on fixed shell classes.

This part is harmless. It converts `MSC.BadAC` into a pulse estimate on
selected heat-scale intervals.

## Step 2: Candidate Charge Reserves

The available finite reserves from the installed route are:

1. energy dissipation:

```math
\int_0^{T_\ast}\sum_mE_m(t)\,dt<\infty;
```

2. mixed boundary:

```math
\mathfrak M_N^\sigma(t)
=
\sum_{N<j\le\ell}M_{j,\ell}^\sigma(t);
```

3. barrier-sized source remainders already separated in the mixed-shell
identity.

The desired charge would show that if

```math
\int_{I_\alpha}\mathfrak B_N^\sigma(t)\,dt
```

is large, then at least one of these reserves decreases or is spent by a
comparable amount.

## Step 3: Energy Reserve Failure

On a critical pulse at shell `j`,

```math
E_j(t):=2^j,
\qquad
|I_j|:=2^{-2j}.
```

Then

```math
\int_{I_j}E_j(t)\,dt=2^{-j},
```

which is summable over terminal shells. Thus the energy-dissipation reserve can
remain finite while infinitely many active pulses occur.

The same pulse has

```math
\gamma_j(t)=2^{-j}E_j(t)=1.
```

So it is bad for every fixed small `\eta`, yet it has only small first-moment
energy cost. Energy cannot be the charge that proves `MSC.BadAC`.

## Step 4: Mixed-Boundary Charge Failure

The mixed-shell identity has the form

```math
\partial_t\mathfrak M_N^\sigma
+
\nu\mathfrak B_N^\sigma
\le
C\sum_{N<j\le\ell}
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
+\mathrm{barrier}_N(t).
```

On the good set, `\gamma_j\le\eta` and the right side is absorbable. On the bad
set, the spill source can be the same size as the dissipation:

```math
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
=
\mathfrak B_{j,\ell}^\sigma(t).
```

Thus a source-balanced pulse can keep `\mathfrak M_N^\sigma` from dropping while
`\mathfrak B_N^\sigma dt` concentrates on the interval. The mixed identity
therefore does not produce a one-sided charge unless one already proves that
such source-balanced pulses are impossible.

That missing assertion is `MSC.Spill.NoPulse` / `MSC.BadAC` itself.

## Step 5: Barrier Reserve Failure

The boundary, high-high, bare exchange, and strict-low packets are already
barrier-sized after the previous mixed-shell reductions. They cannot pay for an
order-one amount of mixed bilinear dissipation on every bad pulse without
destroying the barrier conclusion.

Therefore charging bad pulses to the already-separated barrier terms is not
available.

## Abstract Sharpness

The countermodel in
`mpp-msc-badac-energy-measure-countermodel-note.md` realizes the exact failure
mode:

```math
\int\sum_{j>N}\gamma_j=o_N(1),
\qquad
\int\mathfrak B_N^\sigma=1,
\qquad
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma=1.
```

It is not a Navier-Stokes solution, but it proves that the scheduler data used
by the pulse-charge route has no logical force unless an additional PDE
coupling prevents the mixed measure from concentrating on bad coefficient
windows.

## Closed Reduction

The pulse-charge route closes to one exact theorem:

```math
\boxed{
PulseCharge.A
\Longleftrightarrow_{\mathrm{route}}
MSC.BadAC
\Longleftrightarrow_{\mathrm{route}}
SOURCE.NO\text{-}PULSE.A.
}
```

Equivalently, the missing charge is:

```math
\text{source-balanced heat-scale pulses cannot carry the mixed bilinear
dissipation measure.}
```

The installed energy reserve, mixed-boundary identity, and barrier packets do
not prove this. A successful proof must use a new structural PDE coupling, such
as signed lifted-remainder cancellation, pressure-strain depletion, or
`Ancient.NoPulse`.
