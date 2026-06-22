---
theorem_id: forward-gold-endpoint-trace-temporal-tower-regularity-direct-attempt-20260621
status: finite-jet-endpoint-density-controlled-by-temporal-tower-harmonic-and-residue-channels-remain-separate
logical_landing_node: endpoint_trace_temporal_tower_regularity
edge_effect: "Attacks EndpointTraceTemporalTowerRegularity.A as the tower-shaped producer for EndpointUniformIntegrabilityReserve.A. The exact positive result is finite-jet only: if the endpoint density is an order-locked same-carrier finite-jet functional of the gauge-fixed velocity, local pressure, cutoff, and selected tests, and the mixed time-space tower controls one time derivative of those jets in a Sobolev algebra, then the endpoint density is uniformly W_s^(1,1), hence uniformly L_s^infty and endpoint uniformly integrable. The terminal L1 pulse is impossible under this temporal tower bound because its variation blows up. The result does not control naked legal/selector/signed/terminal/geometry measures or harmonic pressure memory; those channels still require EndpointResidueDensityPolicy.A and AnnularHarmonicPressureServiceSuperL1.A before they may enter the full endpoint density."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-endpoint-trace-lp-reserve-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
---

# Endpoint Trace Temporal Tower Regularity Direct Attempt

Date: 2026-06-21

## 0. Target

The endpoint uniform-integrability route needs a producer for the full endpoint
packet measure.  The tower-shaped candidate is:

```math
\boxed{
\texttt{EndpointTraceTemporalTowerRegularity.A}
}
\tag{ETT.1}
```

The useful form is:

```math
\boxed{
\sup_m
\|[H_m]_+\|_{W_s^{\beta,1}(-1,0)}
<\infty
\qquad
\text{for some }\beta>0.
}
\tag{ETT.2}
```

Then the one-dimensional Sobolev embedding gives

```math
W^{\beta,1}(-1,0)
\hookrightarrow
L^p(-1,0),
\qquad
1<p<{1\over1-\beta},
\tag{ETT.3}
```

and the endpoint density is uniformly integrable.  In the stronger case
\(\beta=1\),

```math
\|[H_m]_+\|_{L_s^\infty}
\le
C\left(
\|[H_m]_+\|_{L_s^1}
+\|\partial_s[H_m]_+\|_{L_s^1}
\right),
\tag{ETT.4}
```

so

```math
\int_{-\theta}^0[H_m(s)]_+\,ds
\le
C\theta.
\tag{ETT.5}
```

This is the direct endpoint uniform-integrability modulus.

## 1. Split the endpoint density before applying the tower

Write the full endpoint density as

```math
H_m
=
H_m^{jet}
+H_m^{H}
+H_m^{res}.
\tag{ETT.6}
```

Here:

```math
H_m^{jet}
```

is the order-locked same-carrier finite-jet density built from the gauge-fixed
velocity \(U_m\), the local pressure \(Q_m^{loc}\), the fixed cutoff, and the
selected tests.

```math
H_m^H
```

is the harmonic pressure-memory trace.

```math
H_m^{res}
```

contains legal, selector, signed, terminal, and geometry residues.

The temporal tower can act directly only on \(H_m^{jet}\).  The two other terms
must first be converted into endpoint densities with their own super-\(L^1\),
Hardy, Orlicz, or absorption policy.

## 2. Finite-jet normal form

Let

```math
Z_m(s,y)
:=
\left\{
\partial_y^\alpha U_m(s,y),
\partial_y^\alpha Q_m^{loc}(s,y)
\right\}_{|\alpha|\le k}.
\tag{ETT.7}
```

Assume the retained finite-jet density has the form

```math
H_m^{jet}(s)
=
\int_{\Omega_\chi}
\Psi_m\!\left(Z_m(s,y),y\right)\,dy,
\tag{ETT.8}
```

where:

1. \(\Omega_\chi\) is the fixed retained carrier/collar region after
   normalization;
2. \(\Psi_m\) is a finite polynomial or smooth finite-order expression in
   \(Z_m\);
3. the cutoff and selected tests are stable in \(C^1_sC^{k+1}_y\);
4. all coefficients of \(\Psi_m\) are uniformly bounded after gauge fixing.

This is the precise same-carrier/order-locked condition.  It excludes naked
endpoint measures by definition.

## 3. Tower control implies temporal \(W^{1,1}\)

Choose \(\sigma>3/2\), so \(H^\sigma_y\) is an algebra in three dimensions.
Assume the mixed tower gives, for some \(k\) large enough for `(ETT.8)`,

```math
\sup_m
\left(
\|Z_m\|_{L_s^\infty H_y^\sigma}
+\|\partial_s Z_m\|_{L_s^1 H_y^\sigma}
\right)
\le C_Z.
\tag{ETT.9}
```

The mixed derivative participation law supplies the relevant time rungs:

```math
W_{m,1,\alpha}
=
\partial_s\partial_y^\alpha U_m,
\qquad
Q_{m,1,\alpha}^{loc}
=
\partial_s\partial_y^\alpha Q_m^{loc}.
\tag{ETT.10}
```

By the chain rule and the Sobolev algebra property,

```math
\begin{aligned}
|\partial_s H_m^{jet}(s)|
&\le
C_\Psi
\left(1+\|Z_m(s)\|_{H_y^\sigma}^{d-1}\right)
\|\partial_s Z_m(s)\|_{H_y^\sigma}
+G_m^{sel/cut}(s),
\end{aligned}
\tag{ETT.11}
```

where \(d\) is the maximum polynomial degree of \(\Psi_m\), and
\(G_m^{sel/cut}\) is the already-explicit time variation of the selected test
and cutoff.  If this variation is stable or legally absorbed with

```math
\sup_m\|G_m^{sel/cut}\|_{L_s^1(-1,0)}<\infty,
\tag{ETT.12}
```

then `(ETT.9)` gives

```math
\sup_m
\|\partial_s H_m^{jet}\|_{L_s^1(-1,0)}
<\infty.
\tag{ETT.13}
```

The four-body payment or direct boundedness of `(ETT.8)` gives

```math
\sup_m
\|H_m^{jet}\|_{L_s^1(-1,0)}
<\infty.
\tag{ETT.14}
```

Therefore

```math
\boxed{
\sup_m
\|H_m^{jet}\|_{W_s^{1,1}(-1,0)}
<\infty.
}
\tag{ETT.15}
```

Since the positive part is \(1\)-Lipschitz on \(W^{1,1}\),

```math
\boxed{
\sup_m
\|[H_m^{jet}]_+\|_{W_s^{1,1}(-1,0)}
<\infty.
}
\tag{ETT.16}
```

Thus

```math
\boxed{
\int_{-\theta}^{0}[H_m^{jet}(s)]_+\,ds
\le
C\theta.
}
\tag{ETT.17}
```

This proves endpoint uniform integrability for the finite-jet part.

## 4. Why this kills the scalar terminal pulse

For

```math
a_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{ETT.18}
```

the \(L_s^1\) norm is fixed, but the variation satisfies

```math
\operatorname{Var}(a_m)
\simeq
a\,\tau_m^{-1}
\to\infty.
\tag{ETT.19}
```

So a uniform \(W_s^{1,1}\) or even positive fractional \(W_s^{\beta,1}\)
control forbids the endpoint pulse for the correct reason: the pulse has too
much terminal time variation.

## 5. What this does not prove

The finite-jet temporal tower estimate does not control:

```math
H_m^H
=
\int
(Q_m^H-\Pi_{aff}Q_m^H)
U_m\cdot\nabla\chi_m\,dy,
\tag{ETT.20}
```

because \(Q_m^H\) is determined by annular/exterior pressure service, not by
the local Calderon-Zygmund pressure generated by \(U_m\otimes U_m\).

It also does not control the residue measure

```math
d\Lambda_{legal,m}
+d\Lambda_{sel,m}
+d\Lambda_{sgn,m}
+d\Lambda_{term,m}
+d\Lambda_{geom,m}
\tag{ETT.21}
```

unless those residues have first been turned into absolutely continuous
density channels or absorbed before the endpoint measure is formed.

Therefore the exact implication is:

```math
\boxed{
\text{mixed temporal tower control}
\Longrightarrow
\text{endpoint UI for }H_m^{jet}.
}
\tag{ETT.22}
```

The full endpoint theorem still needs

```math
\boxed{
\texttt{AnnularHarmonicPressureServiceSuperL1.A}
}
\tag{ETT.23}
```

and

```math
\boxed{
\texttt{EndpointResidueDensityPolicy.A}.
}
\tag{ETT.24}
```

## 6. Result

`EndpointTraceTemporalTowerRegularity.A` closes for the order-locked
finite-jet endpoint density under the explicit mixed-tower time-rung bound
`(ETT.9)`.

It does not close `EndpointUniformIntegrabilityReserve.A` for the full endpoint
packet measure by itself.  To close the full theorem, the harmonic pressure
memory and residue channels must be made into endpoint densities with
super-\(L^1\), Hardy, Orlicz, or absorption control.

The updated producer split is:

```math
\boxed{
\texttt{FiniteJetEndpointDensityTemporalTowerRegularity.A}
}
\tag{ETT.25}
```

plus `(ETT.23)` and `(ETT.24)`.
