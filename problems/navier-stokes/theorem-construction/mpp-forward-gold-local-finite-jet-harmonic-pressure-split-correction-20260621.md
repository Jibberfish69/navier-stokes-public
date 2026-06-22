---
theorem_id: forward-gold-local-finite-jet-harmonic-pressure-split-correction-20260621
status: correction-installed-local-finite-jet-seed-separated-from-harmonic-pressure-seed
logical_landing_node: local_finite_jet_harmonic_pressure_split
edge_effect: "Corrects the component split inside the endpoint uniform-integrability route. The finite endpoint jet temporal modulus applies to the local finite-jet density built from the gauge-fixed velocity and local pressure. It does not pay the harmonic pressure-memory trace, which remains the AnnularPressureReverseHolder.A / AnnularHarmonicPressureServiceSuperL1.A component. Therefore EndpointUniformIntegrabilityReserve.A requires the three component seeds FiniteEndpointJetTemporalModulus.A, AnnularPressureReverseHolder.A, and EndpointResidueDensityPolicy.A before the EndpointLpUpgradeFromFullNSPacket assembly applies."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-endpoint-jet-temporal-modulus-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-endpoint-jet-modulus-replaces-full-radius-survival-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-lp-upgrade-component-seed-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-pressure-reverse-holder-direct-attempt-20260621.md
---

# Local Finite-Jet / Harmonic Pressure Split Correction

Date: 2026-06-21

## 0. Correction

The endpoint density has three different kinds of terms:

```math
\rho_m
=
[H_m^{jet}]_+
+[H_m^H]_+
+\rho_m^{res}.
\tag{LHS.1}
```

The finite endpoint jet temporal modulus applies only to \(H_m^{jet}\), not to
\(H_m^H\).

The local finite jet set is:

```math
\mathcal J_K^{loc}
=
\left\{
\partial_y^\alpha U_m,\,
\partial_y^\alpha Q_m^{loc}
\ :\ |\alpha|\le K
\right\}.
\tag{LHS.2}
```

It excludes the harmonic pressure memory

```math
Q_m^H-\Pi_{aff}Q_m^H.
\tag{LHS.3}
```

That harmonic pressure term is controlled only by the annular pressure-service
component.

## 1. Local finite-jet seed

If, for some \(\sigma>3/2\),

```math
\sup_m
\|\mathcal J_K^{loc}\|_{L_s^\infty H_y^\sigma}
+\sup_m
\|\partial_s\mathcal J_K^{loc}\|_{L_s^1H_y^\sigma}
<\infty,
\tag{LHS.4}
```

then the Sobolev-algebra chain rule gives

```math
\sup_m
\|[H_m^{jet}]_+\|_{W_s^{1,1}(-1,0)}
<\infty.
\tag{LHS.5}
```

Hence

```math
\int_{-\theta}^{0}[H_m^{jet}(s)]_+\,ds
\le C\theta.
\tag{LHS.6}
```

This is the endpoint tail modulus for the local finite-jet component.

## 2. Harmonic pressure seed

The harmonic pressure-memory trace is:

```math
H_m^H(s)
=
\int
(Q_m^H-\Pi_{aff}Q_m^H)
U_m\cdot\nabla\chi_m\,dy.
\tag{LHS.7}
```

Its endpoint seed is:

```math
\boxed{
\sup_m
\|[H_m^H]_+\|_{L_s^{p_H}(-1,0)}
<\infty
\qquad p_H>1.
}
\tag{LHS.8}
```

This is supplied by `AnnularPressureReverseHolder.A`, or by the stronger
annular pressure tower service theorem.

## 3. Residue seed

The remaining endpoint channels must satisfy:

```math
\rho_m^{res}
=
\lambda_{legal,m}
+\lambda_{sel,m}
+\lambda_{sgn,m}
+\lambda_{term,m}
+\lambda_{geom,m},
\tag{LHS.9}
```

with

```math
\sup_m\|\lambda_{j,m}\|_{L_s^{p_j}(-1,0)}<\infty,
\qquad
p_j>1,
\tag{LHS.10}
```

or else they must be absorbed before endpoint measure formation.

## 4. Correct endpoint implication

The correct component implication is:

```math
\boxed{
\texttt{FiniteEndpointJetTemporalModulus.A}
+\texttt{AnnularPressureReverseHolder.A}
+\texttt{EndpointResidueDensityPolicy.A}
\Longrightarrow
\texttt{EndpointLpUpgradeFromFullNSPacket.A}.
}
\tag{LHS.11}
```

Then the already-proved component assembly gives:

```math
\boxed{
\texttt{EndpointLpUpgradeFromFullNSPacket.A}
\Longrightarrow
\texttt{EndpointUniformIntegrabilityReserve.A}.
}
\tag{LHS.12}
```

So the finite-jet seed is a real positive component, but it is not allowed to
carry harmonic pressure by notation.
