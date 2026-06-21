---
ns_viewer:
  theorem_id: forward-gold-scale-dependent-beta-is-radius-spend-20260621
  status: direct-test-complete-scale-dependent-beta-collapses-to-radius-spend
  proof_role: forward_gold_shifted_gamma_scale_dependent_beta_countertest
  logical_landing_node: scale_dependent_shifted_gamma_beta_radius_spend
  edge_effect: "Tests the escape hatch left by the fixed-beta polynomial countertest: make beta depend on the terminal scale so the shifted-gamma multiplier becomes exponential. Stirling on the balanced saddle gives log R_beta(n,n/2)=(beta_n-1)(log n-2 log 2)+o(n) for beta_n=o(n). Paying the heat-scale source-square pulse requires beta_n approximately (3/2)n log 2 / log n, and this is equivalent to replacing the factorial radius rho by rho*2^(-3/2) at exponential order. Thus scale-dependent beta is not a new reserve producer; it is a disguised fixed positive logarithmic radius spend. Repeated terminal heat-scale pulses therefore return to the moving-radius collapse branch, which still needs a same-carrier tail-to-carrier, unweighted action, no-waste, source-square/CKN, profile-production, or CM Pack/Part/Field consumption mechanism."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-shifted-gamma-saddle-radius-spend-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-shifted-gamma-polynomial-moment-not-square-reserve-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-coupled-mixed-tower-radius-spend-identity-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
  downstream_consequence: "Do not reopen beta tuning as an independent attack after the fixed-beta failure. Fixed beta gives only polynomial charge; scale-dependent beta large enough to see the heat-scale reserve is exponential and is exactly radius spend. The surviving route is still same-carrier reserve/no-waste/profile production or CM face consumption after admission."
---

# MPP Forward-Gold Scale-Dependent Beta Is Radius Spend

Date: 2026-06-21

## Status

This note tests the only remaining beta-tuning escape hatch after the fixed-beta
countertest.

Fixed beta leaves only a polynomial high-rung multiplier and cannot turn the
first-moment tail into the source-square reserve.  The possible reply is to let
beta depend on the terminal scale so that the multiplier becomes exponential.

The calculation below shows that this does not create a new proof route.  A
scale-dependent beta large enough to pay the heat-scale square pulse is exactly
a fixed positive logarithmic radius spend in disguise.

## 1. Balanced shifted-gamma multiplier with moving beta

For the one-dimensional balanced split, define

```math
R_\beta(n,k)
:=
{n\choose k}
{\Gamma(k+\beta)\Gamma(n-k+\beta)\over\Gamma(n+\beta)}.
\tag{SDB.1}
```

Take \(k=n/2\) for even \(n\), and allow \(\beta=\beta_n\) with
\(\beta_n=o(n)\).  Then

```math
R_{\beta_n}(n,n/2)
=
{\Gamma(n+1)\over\Gamma(n/2+1)^2}
{\Gamma(n/2+\beta_n)^2\over\Gamma(n+\beta_n)}.
\tag{SDB.2}
```

Use the uniform gamma-ratio expansion, valid for \(\beta_n=o(n)\),

```math
\log{\Gamma(x+\beta_n)\over\Gamma(x+1)}
=
(\beta_n-1)\log x
+O\!\left({\beta_n^2\over x}+\log x\right).
\tag{SDB.3}
```

Applying `(SDB.3)` at \(x=n/2\) twice and at \(x=n\) once gives

```math
\log R_{\beta_n}(n,n/2)
=
(\beta_n-1)(\log n-2\log2)
+O\!\left({\beta_n^2\over n}+\log n\right).
\tag{SDB.4}
```

For fixed beta this recovers the known multiplier

```math
R_\beta(n,n/2)
\asymp
2^{2-2\beta}n^{\beta-1}.
\tag{SDB.5}
```

For \(\beta_n\) growing with \(n\), `(SDB.4)` is the exact scale of the
possible gain.

## 2. How large beta must be to pay the heat pulse

The heat-scale source-square pulse from the reserve test has first-moment
amplitude

```math
A_n=2^{-3n/2}
\tag{SDB.6}
```

and square reserve equal to one.  To see that pulse by multiplying the
first-moment tail with the balanced shifted-gamma factor, one needs

```math
R_{\beta_n}(n,n/2)A_n
\gtrsim1.
\tag{SDB.7}
```

Thus

```math
\log R_{\beta_n}(n,n/2)
\ge
{3\over2}n\log2+O(1).
\tag{SDB.8}
```

By `(SDB.4)`, this requires

```math
(\beta_n-1)(\log n-2\log2)
\ge
{3\over2}n\log2+o(n),
\tag{SDB.9}
```

so, at leading order,

```math
\boxed{
\beta_n
\ge
1+{(3/2)n\log2\over\log n}
+o\!\left({n\over\log n}\right).
}
\tag{SDB.10}
```

This is still \(o(n)\), so the expansion used above is self-consistent.  It is
far outside the fixed-beta shifted-gamma correction.

## 3. The same choice is radius rescaling

For \(\beta_n\) in the scale `(SDB.10)`, the denominator change in the
shifted-gamma weight has exponential size.  Again by `(SDB.3)`,

```math
\log{\Gamma(n+\beta_n)\over\Gamma(n+1)}
=
(\beta_n-1)\log n
+O\!\left({\beta_n^2\over n}+\log n\right).
\tag{SDB.11}
```

If

```math
\beta_n
=
1+{c n\over\log n}+o\!\left({n\over\log n}\right),
\tag{SDB.12}
```

then

```math
{\Gamma(n+\beta_n)\over n!}
=
\exp(cn+o(n)).
\tag{SDB.13}
```

Therefore the shifted-gamma weight satisfies

```math
{\rho^n\over\Gamma(n+\beta_n)}
=
{\left(\rho e^{-c+o(1)}\right)^n\over n!}.
\tag{SDB.14}
```

At exponential order, scale-dependent beta is just a rescaling of the analytic
radius.  For the heat-scale square pulse, \(c=(3/2)\log2\), so the required
weight is equivalent to

```math
\rho
\mapsto
\rho\,2^{-3/2}
\tag{SDB.15}
```

on the active rung.

## 4. Consequence for the attack

The beta options now split cleanly.

Fixed beta gives only a polynomial charge:

```math
\boxed{
\text{fixed beta}
\Longrightarrow
\text{polynomial moment}
\Longrightarrow
\text{does not pay the heat-scale square reserve.}
}
\tag{SDB.16}
```

Scale-dependent beta large enough to pay the pulse gives radius spend:

```math
\boxed{
\text{beta large enough to pay the pulse}
\Longrightarrow
\text{fixed positive logarithmic radius spend.}
}
\tag{SDB.17}
```

The moving-radius identity already says that repeated positive logarithmic
spend gives radius collapse.  The controlled-collapse and high-rung
countertests already say that radius collapse alone is not endpoint UI,
source-square, or selected-carrier action.

Thus dynamic beta tuning does not bypass the remaining wall.  It only changes
the language from beta to radius:

```math
\boxed{
\text{same-carrier reserve/no-waste/profile theorem}
\quad\text{or}\quad
\text{CM Pack/Part/Field consumption after admission.}
}
\tag{SDB.18}
```

## Verdict

The actual math result is:

```math
\boxed{
\text{scale-dependent beta is not an independent Navier-Stokes supplier;}
\quad
\text{at the needed size it is radius spend.}
}
\tag{SDB.19}
```

So the Stirling/binomial attack should not spend more effort tuning gamma
parameters.  Fixed beta is too weak, and strong beta is just controlled radius
collapse.  The remaining attack is the same selected-carrier mechanism:
source-square/CKN, active-height/no-waste, profile production, or CM face
consumption of the retained heat-scale pulse.
