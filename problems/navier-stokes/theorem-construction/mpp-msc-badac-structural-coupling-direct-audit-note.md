# MPP MSC.BadAC Structural Coupling Direct Audit Note

## Status

Bounded direct audit of the sharp mixed-shell formulation left by
`mpp-msc-spill-nopulse-bad-set-domination-attempt-note.md`.

The target is:

```math
\boxed{
MSC.BadAC:
\int_{Bad_N(\eta)}
\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)+\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt.
}
```

where

```math
Bad_N(\eta)
=
\{t:\sup_{j>N}\gamma_j(t)>\eta\},
\qquad
\gamma_j(t)=2^{-j}\sum_{m=j-M}^{j+M}E_m(t).
```

This note tests whether the Navier-Stokes PDE structure supplies the missing
absolute continuity of the mixed bilinear dissipation measure on the same bad
windows where the spill coefficient is large. It does not.

## Required Measure Statement

The known scheduler gives:

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt=o_N(1).
```

Thus `Bad_N(\eta)` has small Lebesgue measure. `MSC.BadAC` is stronger: it says
the measure

```math
d\mu_N(t):=\mathfrak B_N^\sigma(t)\,dt
```

is uniformly absolutely continuous with respect to this bad-time selection.
Equivalently, no terminal sequence may carry order-one `\mu_N` mass on
heat-scale intervals where `\gamma_j` is large.

The energy-measure countermodel already shows that this does not follow from
Lebesgue bad-time smallness alone. Any direct proof must therefore use an extra
PDE coupling between `\gamma_j` and `\mathfrak B_N^\sigma`.

## Energy / Enstrophy Density Test

Finite energy gives first-moment dissipation:

```math
\int_0^{T_\ast}D_j(t)\,dt<\infty.
```

The mixed measure contains products of active dissipation densities:

```math
\mathfrak B_N^{\sigma,model}(t)
:=
\sum_{N<j\le \ell}K_{j,\ell}^\sigma D_j(t)D_\ell(t).
```

First-moment control does not imply uniform integrability of this product
measure on moving heat-scale bad sets. A direct proof would need an estimate of
the form

```math
\int_E \mathfrak B_N^\sigma(t)\,dt
\le
\Phi_N(|E|)
+o_N(1),
\qquad
\Phi_N(s)\to0\ \text{as }s\downarrow0,
```

uniformly on terminal active families. No installed energy, enstrophy, or
tail-square reserve gives this. The full tail-square reserve controls a
cumulative tail-energy square by first-moment dissipation; it does not give
shellwise product-measure absolute continuity on the selected bad windows.

## Mixed Identity Self-Coupling Test

The mixed identity has the form:

```math
\partial_t\mathfrak M_N^\sigma
+\nu\mathfrak B_N^\sigma
\le
C\sum_{N<j\le\ell}\gamma_j(t)\mathfrak B_{j,\ell}^\sigma(t)
+\mathrm{barrier}_N(t).
```

On `Bad_N(\eta)^c`, the coefficient is absorbable. On `Bad_N(\eta)`, the same
identity gives a growth coefficient, not a measure domination theorem. To
close by Gronwall one would need frequency-weighted control of

```math
\int_{Bad_N(\eta)}
\gamma_j(t)(2^{2j}+2^{2\ell})\,dt,
```

or a sign theorem forcing this contribution to drain. The scheduler controls
only `\int\gamma_j(t)dt`. Therefore the mixed identity does not prove
`MSC.BadAC` without exactly the no-pulse information being sought.

## Same-Fluid Geometry Test

Bounded pack gauge and incompressible same-fluid transport control overlap and
volume distortion of the material cylinders. They do not impose time-absolute
continuity of `d\mu_N` relative to the spill-coefficient bad set. A material
packet can be volume-preserving and still concentrate its active dissipation
measure on a short interval where the same packet has large `\gamma_j`.

Thus same-fluid geometry is needed for receiver bookkeeping, but it is not a
standalone proof of the bad-set domination estimate.

## Pressure / Vorticity-Strain Test

Pressure Poisson supplies elliptic recovery:

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
```

It does not give a sign for the vorticity stretching channel

```math
\omega\cdot S\omega.
```

The pressure-strain audit shows that a depletion theorem would have to be
added as a new input. Without such a theorem, pressure estimates remain source
and receiver ledgers; they do not force `d\mu_N` to avoid the spill-bad set.

## CKN / Good-Cylinder Test

The averaged route separates good SCF cylinders from the `Jump_avg` branch.
On good cylinders epsilon regularity can generate tower packets; on the
`Jump_avg` branch the positive good scale is precisely absent. Importing the
SCF-good cover or `AACT.Global.noJump` to prove `MSC.BadAC` would therefore be
circular: it would spend the no-jump branch after assuming away the bad branch.

## Signed Commutator Test

A signed theorem for the true lifted weighted commutator before absolute values
would be a genuine route to `MSC.BadAC`. The installed signed notes show only
that unweighted shell exchange cancels before weights, cutoffs, and lifted
remainders are introduced. The weighted lifted principal term can align with
expanding strain directions, so no installed antisymmetry gives positive-part
or bad-set depletion.

Thus signed commutator algebra remains a possible new theorem, not an
available proof of `MSC.BadAC`.

## Verdict

`MSC.BadAC` is not discharged by:

- finite energy or first-moment dissipation;
- cumulative tail-square reserve;
- the mixed-shell identity without a new frequency-weighted no-pulse bound;
- same-fluid geometry or bounded pack gauge;
- pressure Poisson / local pressure recovery;
- SCF-good cover or averaged no-jump machinery;
- installed signed commutator cancellation.

The direct structural audit closes back to the same primitive:

```math
\boxed{
OriginalSmoothData\Longrightarrow MSC.BadAC
\quad\Longleftrightarrow_{\mathrm{route}}\quad
OriginalSmoothData\Longrightarrow SOURCE.NO\text{-}PULSE.A.
}
```

The only non-circular repair routes are new theorems of one of the following
forms:

```math
\text{direct mixed-measure domination for }d\mu_N
\text{ on }Bad_N(\eta),
```

```math
\text{signed lifted commutator cancellation before absolute values},
```

```math
\text{pressure/positive-strain depletion on active bad windows},
```

or the pre-Cauchy local-source form

```math
LocalSource.NoPulse.A.
```
