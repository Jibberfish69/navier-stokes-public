# MPP SOURCE.NO-PULSE.A Critical-Pulse And Sign Audit Note

## Status

Bounded theorem attempt on the active no-pulse atom.

This note tests whether the remaining primitive

```math
SOURCE.NO\text{-}PULSE.A
```

is already forced by one of the two most tempting installed mechanisms:

1. time-integrable energy dissipation / same-scale coefficient scheduling;
2. pointwise sign of the enstrophy production cubic.

Both attempts fail.  The failure is not bookkeeping noise: both land on the
same scale-critical pulse channel.

## Target

The active route needs any theorem of the following form:

```math
OriginalSmoothData
\Longrightarrow
AWG.A,
```

or equivalently

```math
SOURCE.NO\text{-}PULSE.A,
\qquad
MSC.Spill.NoPulse,
\qquad
QDrain.A.
```

In the mixed-shell formulation this is

```math
\int_0^{T_\ast}
\sum_{N<j\le \ell}
\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)\,dt
\le
\varepsilon
\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt
+C_\varepsilon2^{-2\delta N},
\tag{MSC}
```

where

```math
\gamma_j(t):=2^{-j}\sum_{m=j-M}^{j+M}E_m(t).
```

In the enstrophy formulation this is a one-sided drain for

```math
\frac12\frac{d}{dt}\|\nabla u\|_2^2
+\nu\|\Delta u\|_2^2
=
-\int
\partial_k u_i\,\partial_i u_j\,\partial_k u_j.
\tag{Q}
```

## Attempt 1: Energy-Dissipation Scheduler

Energy gives

```math
\int_0^{T_\ast}\sum_mE_m(t)\,dt<\infty.
```

Therefore

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt
\le
C_M
2^{-N}
\int_0^{T_\ast}\sum_mE_m(t)\,dt
\to0.
\tag{1}
```

This proves small Lebesgue-time mass for the spill coefficient.  It does not
prove `(MSC)`, because `(MSC)` pairs `\gamma_j` with the mixed bilinear
dissipation measure

```math
d\mu_N^\sigma(t,j,\ell)
:=
\mathfrak B_{j,\ell}^\sigma(t)\,dt.
```

The missing assertion is absolute continuity of this dissipation measure away
from the bad coefficient set:

```math
\mu_N^\sigma(\{\sup_{j>N}\gamma_j>\eta\})
\le
o_N(1)+\eta\,\mu_N^\sigma([0,T_\ast]).
\tag{2}
```

Equation `(1)` gives no such domination.

## Critical-Pulse Obstruction

The obstruction has the exact active scaling.

At shell `j`, take the exact heat-scale pulse model

```math
I_j:=[t_j,t_j+2^{-2j}],
\qquad
E_j(t):=2^j\,\mathbf 1_{I_j}(t).
```

Then

```math
|I_j|=2^{-2j}.
```

Then

```math
\int_{I_j}E_j(t)\,dt
=
2^{-j},
```

so the energy-dissipation ledger can sum such pulses across increasing shells.
But the mixed-shell spill coefficient is not small:

```math
\gamma_j(t)=2^{-j}E_j(t)=1
\qquad (t\in I_j).
```

Thus finite energy dissipation permits precisely the pulse profile that
`MSC.Spill.NoPulse` must exclude.  A proof of `(MSC)` therefore needs a
source/strain theorem that prevents the mixed bilinear dissipation measure from
sitting on such heat-scale active pulses.  It cannot be recovered from the
first-moment dissipation budget alone.

This is the same obstruction seen by `AWG.A`: raw finite mass is unweighted,
while the terminal route requires scale-normalized active-window control.

## Attempt 2: Pointwise Sign Of The Enstrophy Cubic

The enstrophy drain route would close if the production term in `(Q)` were
pointwise nonpositive or algebraically dominated by a lower-order `L^1`
coefficient.

There is no such pointwise sign.

For a symmetric trace-free strain matrix

```math
A=\mathrm{diag}(1,1,-2),
\qquad
\mathrm{tr}\,A=0,
```

the cubic density modeled by the gradient tensor is

```math
-\sum_{i,j,k} A_{ik}A_{ji}A_{jk}
=
-\sum_i\lambda_i^3
=
-\bigl(1+1-8\bigr)
=6>0.
```

So the cubic can act as positive enstrophy production.  Localizing this strain
profile inside a shell packet destroys any possible pointwise-sign proof of
`QDrain.A`.  The missing theorem would have to use transport, pressure,
cross-scale cancellation, or terminal packet structure, not a bare algebraic
sign.

## Attempt 3: Same-Scale Coefficient-Bearing Edge Estimate

The coefficient-bearing same-scale edge estimate gives

```math
\int |\Pi_N^{edge}|
\le
\varepsilon\nu\int D_N
+C_{\varepsilon,\nu}
\int \Theta_N^{ss,\sharp}(t)E_N(t)\,dt.
\tag{3}
```

The finite-family lift to upper-boundary and moving-spill packets is installed,
but it preserves the same coefficient term.  To reach the coefficient-free
edge-family theorem `(SS\text{-}edge)`, one must prove

```math
\int_0^{T_\ast}\Theta_N^{ss,\sharp}(t)E_N(t)\,dt
\le
\varepsilon\nu\int_0^{T_\ast}D_N(t)\,dt
+C_\varepsilon2^{-2\delta N}.
\tag{4}
```

This is again the no-pulse assertion.  The same critical pulse with
`E_j(t)=2^j` on `I_j` has

```math
\Theta_j^{ss,\sharp}=2^jE_j=2^{2j}
\qquad (t\in I_j),
```

so `(3)` cannot be upgraded by energy bookkeeping alone.

## Conclusion

The direct solve attempt leaves one irreducible theorem atom:

```math
\boxed{
SOURCE.NO\text{-}PULSE.A
\equiv
MSC.Spill.NoPulse
\equiv_{\mathrm{route}}
QDrain.A.
}
```

The exact missing content is:

```math
\text{rule out heat-scale, scale-critical nonlinear source pulses.}
```

The installed energy, same-scale coefficient estimates, dyadic exchange
antisymmetry, pressure Poisson structure, and algebraic strain identities do not
prove this atom. The abstract scheduler countermodel in
`mpp-msc-badac-energy-measure-countermodel-note.md` shows that small bad-time
Lebesgue measure alone cannot imply the required mixed-dissipation
bad-set domination.

The May 1 continuation executed the three genuinely different follow-up
routes:

1. the signed weighted commutator route is already audited in
   `signed-weighted-lifted-remainder-theorem-attempt.md` and
   `mcp-signed-weighted-commutator-defect-frontier-loop-failure.md`;
2. the pressure-strain route is audited in
   `mpp-pressure-strain-no-pulse-attempt-note.md`;
3. the compactness/ancient-limit route is audited in
   `mpp-critical-pulse-compactness-no-pulse-attempt-note.md`.

All three reduce back to the same primitive.  Therefore the next genuine
mathematical route cannot be another coefficient scheduler, pointwise sign
check, pressure recovery estimate, or bare compactness extraction.  It must be
one of:

1. `MSC.BadAC`, a direct mixed-measure domination theorem;
2. a signed weighted commutator theorem for the true lifted remainder before
   absolute values;
3. a pressure-strain structural cancellation theorem tied to the active packet;
4. a source-residue carrier-tether compactness theorem plus
   `Ancient.NoPulse^{src}` for the critical pulse profile above.
