---
theorem_id: forward-gold-finite-endpoint-jet-temporal-modulus-direct-test-20260621
status: direct-test-complete-producer-not-installed-failure-is-finite-rung-readout
logical_landing_node: finite_endpoint_jet_temporal_modulus
edge_effect: "Tests FiniteEndpointJetTemporalModulus.A, the smaller endpoint-UI producer isolated after replacing full analytic radius survival. The consumer is exact: uniform L_s^infty H_y^sigma control of the finite endpoint jet set plus uniform L_s^1 H_y^sigma control of one time rung gives W_s^(1,1) control of the endpoint density and endpoint tail O(theta). Current energy, local-energy, physical CKN, and four-body L1 payment do not produce this finite endpoint jet modulus on shrinking retained heat-scale packets; they give radius-discounted control or L1 trace payment. Failure is not hidden: it is finite endpoint jet amplitude blowup, finite endpoint jet temporal-variation blowup, annular pressure-service finite-rung blowup, or residue-policy failure, hence a Field/Part-facing readout after same-witness admission."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-endpoint-jet-modulus-replaces-full-radius-survival-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-normalized-local-energy-pressure-bound-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-ckn-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-from-field-towers-and-residue-policy-assembly-20260621.md
---

# Finite Endpoint Jet Temporal Modulus Direct Test

Date: 2026-06-21

## 0. Target

The smaller endpoint producer is:

```math
\boxed{
\texttt{FiniteEndpointJetTemporalModulus.A}.
}
\tag{FET.1}
```

Let \(\mathcal J_K\) be the finite jet set that forms the field endpoint
density:

```math
\mathcal J_K
=
\left\{
\partial_y^\alpha U_m,\,
\partial_y^\alpha Q_m^{loc},\,
Q_m^H-\Pi_{aff}Q_m^H
\ :\ |\alpha|\le K
\right\}.
\tag{FET.2}
```

For some \(\sigma>3/2\), the exact desired bound is:

```math
\boxed{
\sup_m
\|\mathcal J_K\|_{L_s^\infty H_y^\sigma}
+\sup_m
\|\partial_s\mathcal J_K\|_{L_s^1H_y^\sigma}
<\infty .
}
\tag{FET.3}
```

Together with the residue policy, `(FET.3)` implies
`EndpointUniformIntegrabilityReserve.A`.

## 1. Consumer proof

The field endpoint density is a finite same-carrier expression:

```math
\rho_m^{field}(s)
=
\int_{\Omega_\chi}
\Psi_m(\mathcal J_K(s,y),y)\,dy,
\tag{FET.4}
```

with stable cutoff/selector/test coefficients after residue-policy admission.

Since \(H_y^\sigma\) is an algebra for \(\sigma>3/2\), the chain rule gives

```math
|\partial_s\rho_m^{field}(s)|
\le
C
\left(1+\|\mathcal J_K(s)\|_{H_y^\sigma}^{d-1}\right)
\|\partial_s\mathcal J_K(s)\|_{H_y^\sigma}
+g_m^{coef}(s),
\tag{FET.5}
```

where \(g_m^{coef}\) is the admitted coefficient/cutoff variation density.
Under `(FET.3)` and

```math
\sup_m\|g_m^{coef}\|_{L_s^1}<\infty,
\tag{FET.6}
```

we get

```math
\sup_m
\|\partial_s\rho_m^{field}\|_{L_s^1(-1,0)}
<\infty.
\tag{FET.7}
```

The four-body/full-packet payment gives

```math
\sup_m
\|\rho_m^{field}\|_{L_s^1(-1,0)}
<\infty.
\tag{FET.8}
```

Therefore

```math
\sup_m
\|\rho_m^{field}\|_{W_s^{1,1}(-1,0)}
<\infty,
\tag{FET.9}
```

and hence

```math
\boxed{
\int_{-\theta}^{0}\rho_m^{field}(s)\,ds
\le C\theta.
}
\tag{FET.10}
```

This is the endpoint uniform-integrability modulus for the field density.

## 2. Current energy and CKN inputs do not produce `(FET.3)`

The physical energy inequality gives, on shrinking heat-scale packets,

```math
\sum_m r_m
\int_{-1}^{0}\int_{B_1}|\nabla_yV_m|^2\,dy\,ds
<\infty,
\tag{FET.11}
```

not a uniform unweighted bound on the finite jet set or its time rung.

Physical CKN mass similarly gives

```math
\sum_m r_m^2\mathcal C(Q_{r_m})<\infty,
\tag{FET.12}
```

not

```math
\sup_m\mathcal C(Q_{r_m})<\infty
\quad\text{or}\quad
\sum_m\mathcal C(Q_{r_m})<\infty.
\tag{FET.13}
```

The four-body loop gives \(L_s^1\) payment for the endpoint density after
order-locking.  It does not give the temporal variation bound `(FET.7)`.

Thus the current installed inputs do not prove `(FET.3)`.

## 3. PDE expression for the time rung

The time derivative of the velocity jets is not free.  From the rescaled
Navier-Stokes tower:

```math
\partial_s\partial_y^\alpha U_m
=
-
U_m\cdot\nabla\partial_y^\alpha U_m
-\partial_y^\alpha\nabla Q_m
+\nu\Delta\partial_y^\alpha U_m
-B_{m,0,\alpha}
+G_m^{gauge},
\tag{FET.14}
```

where \(B_{m,0,\alpha}\) contains lower-rung Leibniz terms and
\(G_m^{gauge}\) is the admitted gauge/cutoff motion.

Therefore `(FET.3)` can be produced by a finite parabolic jet estimate of the
form:

```math
\boxed{
\begin{aligned}
&\sup_m
\sup_s
\sum_{|\alpha|\le K+2}
\|\partial_y^\alpha U_m(s)\|_{H_y^\sigma}
+\sup_m
\sup_s
\sum_{|\alpha|\le K+1}
\|\partial_y^\alpha Q_m(s)\|_{H_y^\sigma}\\
&\qquad
+\text{admitted gauge/cutoff variation}
<\infty .
\end{aligned}
}
\tag{FET.15}
```

This is finite-rung control, not full analytic radius control.

## 4. Failure typing

Failure of `(FET.3)` means:

```math
\boxed{
\sup_m
\|\mathcal J_K\|_{L_s^\infty H_y^\sigma}
=\infty
}
\tag{FET.16}
```

or

```math
\boxed{
\sup_m
\|\partial_s\mathcal J_K\|_{L_s^1H_y^\sigma}
=\infty.
}
\tag{FET.17}
```

Using `(FET.14)`, the second failure is a finite-rung pressure, viscosity,
transport, nonlinear-coupling, or gauge/collar variation readout.

After same-witness admission, this is not a hidden endpoint pulse.  It is a
finite endpoint field/participation failure:

```math
\boxed{
\neg\texttt{FiniteEndpointJetTemporalModulus.A}
\Longrightarrow
\text{finite-rung Field/Part-facing readout}
}
\tag{FET.18}
```

unless the residue policy fails first.

## 5. Result

The direct producer is not installed:

```math
\boxed{
\text{current energy/CKN/four-body }L^1\text{ inputs do not prove }(FET.3).
}
\tag{FET.19}
```

But the endpoint obstruction is now finite:

```math
\boxed{
\text{prove finite endpoint jet temporal modulus, or route finite-rung failure
as Field/Part after same-witness admission.}
}
\tag{FET.20}
```

This is strictly smaller than proving full analytic tower-radius survival.
