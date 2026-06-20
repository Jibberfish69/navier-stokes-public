# MPP Forward-Gold Selected Critical Strain Supplier Direct Test

Date: 2026-06-19

## Status

Direct test of the supplier exposed by
`mpp-forward-gold-critical-feed-event-cost-direct-test-20260619.md`.

The critical feed calculation shows that energy-level \(L^2_{t,x}\) strain is
summable over a Zeno heat-scale cascade, while \(L^{5/2}_{t,x}\) strain would
charge each critical feed event at order one.  This note checks whether the
Navier--Stokes energy/local-energy package supplies that selected
\(L^{5/2}\) strain currency.

It does not.  The energy package supplies the velocity side of the critical
Holder pairing, not the strain side.

## 1. The exact useful Holder pairing

The native positive trilinear source on a selected packet family is

```math
\mathcal T^+
=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
dxdt.
\tag{SCS.1}
```

Dropping the positive selection only for an upper estimate,

```math
\mathcal T^+
\le
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|S_{<j_P}^{loc}|\,|w_{j_P}|^2\,dxdt.
\tag{SCS.2}
```

Holder gives the scale-critical pairing

```math
\int_{Q(P)}
|S_{<j_P}^{loc}|\,|w_{j_P}|^2
\le
\|S_{<j_P}^{loc}\|_{L^{5/2}(Q(P))}
\|w_{j_P}\|_{L^{10/3}(Q(P))}^2.
\tag{SCS.3}
```

This is the right algebra:

```math
{1\over 5/2}+{2\over 10/3}
=
{2\over5}+{3\over5}
=1.
\tag{SCS.4}
```

So a selected critical-strain Carleson bound,

```math
\sum_{P\in\mathcal F_N}
\|S_{<j_P}^{loc}\|_{L^{5/2}(Q(P))}^{5/2}
\le C_*,
\tag{SCS.5}
```

combined with high-frequency \(L^{10/3}\) tail smallness for the selected
packets, would dominate the native trilinear source.

## 2. What energy actually gives

The classical energy inequality gives

```math
u\in L^\infty_tL^2_x,
\qquad
\nabla u\in L^2_{t,x}.
\tag{SCS.6}
```

Sobolev interpolation gives the energy-class spacetime velocity bound

```math
u\in L^{10/3}_{t,x},
\tag{SCS.7}
```

with

```math
\|u\|_{L^{10/3}_{t,x}}^{10/3}
\le C
\|u\|_{L^\infty_tL^2_x}^{4/3}
\|\nabla u\|_{L^2_{t,x}}^2.
\tag{SCS.8}
```

This is exactly the \(w\)-side of `(SCS.3)`.  It is not the
\(S\)-side.

The strain supplied by the same energy law is only

```math
S\in L^2_{t,x}.
\tag{SCS.9}
```

The missing upgrade is

```math
S\in L^{5/2}_{t,x}
\quad\text{on the selected heat-scale source family.}
\tag{SCS.10}
```

That upgrade is scale-critical and continuation-strength.  It is not a
consequence of `(SCS.6)`.

## 3. Why interpolation does not fill the gap

Interpolating \(L^2_{t,x}\) strain with a fixed-frequency Bernstein upper bound
does not produce a scale-uniform estimate.  For modes below \(j\),

```math
\|S_{<j}\|_{L^{5/2}_x}
\le C
2^{3j/10}\|S_{<j}\|_{L^2_x},
\tag{SCS.11}
```

and the strain itself already carries one derivative.  The fixed-cutoff
coefficient therefore grows with the scale threshold.  On a heat window
`alpha_t 2^{-2j}/nu <= |I_j| <= A_t 2^{-2j}/nu`, this growth is not enough to
force tail smallness of the selected critical feed coefficient.

Equivalently, a selected critical packet is represented here by the exact
normalization

```math
\alpha_S{\nu\over r_j^2}
\le
|S|
\le
A_S{\nu\over r_j^2}
\quad\text{on}\quad
B_{r_j}\times I_j,
\qquad
\alpha_t{r_j^2\over\nu}\le |I_j|\le A_t{r_j^2\over\nu},
\tag{SCS.12}
```

has

```math
c_2\nu r_j
\le
\int_{Q_j}|S|^2\,dxdt
\le
C_2\nu r_j
\to0,
\tag{SCS.13}
```

but

```math
c_{5/2}\nu^{3/2}
\le
\int_{Q_j}|S|^{5/2}\,dxdt
\le
C_{5/2}\nu^{3/2}.
\tag{SCS.14}
```

No interpolation from `(SCS.9)` can distinguish that packet from a summable
energy-class cascade.

## 4. Vorticity/enstrophy returns to the old wall

The enstrophy identity gives

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int (S\omega)\cdot\omega\,dx.
\tag{SCS.15}
```

The right side is the same vortex-stretching source.  The same
Calderon--Zygmund, Sobolev, and interpolation estimate produces

```math
{d\over dt}\|\nabla u\|_2^2
+\nu\|\nabla^2u\|_2^2
\le
C\nu^{-3}\|\nabla u\|_2^6.
\tag{SCS.16}
```

This permits the comparison-ODE blowup already recorded in
`mpp-enstrophy-production-throttle-forward-positive-direct-test-20260611.md`.

Thus enstrophy would give critical strain control only after the vortex
stretching throttle has already been solved.  It is not an independent supplier
for `(SCS.10)`.

## 5. Relation to known continuation criteria

A bound of the form

```math
\nabla u\in L^{5/2}_{t,x}
\tag{SCS.17}
```

is a scale-critical strain continuation-type input.  Likewise

```math
u\in L^5_{t,x}
\tag{SCS.18}
```

is the velocity critical Serrin/Prodi currency.

These are valid ways to kill the terminal critical feed object.  They are not
produced by the energy inequality, local energy inequality, pressure recovery,
or fixed-cutoff low-mode admissibility alone.

## 6. Consequence

The selected critical-strain route is a real coercive language for the
heat-scale problem:

```math
\boxed{
\text{critical feed event}
\Longrightarrow
\text{fixed-positive }L^{5/2}_{t,x}\text{ strain bill}.
}
\tag{SCS.19}
```

But the forward-gold proof still needs the matching global or selected-family
upper bound:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|S_{<j_P}^{loc}|^{5/2}\,dxdt
\le
C+o_N(1)
\quad\text{with terminal tail depletion.}
}
\tag{SCS.20}
```

Without `(SCS.20)`, the route falls back to the already isolated native source
square:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
dxdt
\le
o_N(1)+Loss_{legal}.
}
\tag{SCS.21}
```

## Verdict

The \(L^{5/2}\) strain currency is the correct coercive exponent for Thomas's
rate-limit picture, but it is not supplied by current inputs.

The sharpened forward-gold branch is:

```math
\boxed{
\text{prove SelectedCriticalStrainCarleson.A with terminal tail depletion,}
}
\tag{SCS.22}
```

or prove the equivalent selected-carrier UI form, native source-square reserve,
or normalized CKN \(L^5\) reserve.  The later Holder-saturation test shows why
the tail/selected-carrier clause is necessary: critical conjugate factor bounds
alone give \(L_s^1\) control of the product, not endpoint uniform integrability
of the actual positive carrier.  Energy alone gives \(u\in L^{10/3}_{t,x}\)
and \(S\in L^2_{t,x}\), which is exactly one critical half-power short.
