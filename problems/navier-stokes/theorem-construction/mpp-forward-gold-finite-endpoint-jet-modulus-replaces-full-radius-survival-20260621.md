---
theorem_id: forward-gold-finite-endpoint-jet-modulus-replaces-full-radius-survival-20260621
status: endpoint-ui-needs-finite-trace-modulus-not-full-analytic-radius
logical_landing_node: finite_endpoint_jet_modulus_replaces_full_radius_survival
edge_effect: "Corrects the tower-radius burden after the endpoint UI reorientation. Full positive analytic/Gevrey radius survival is stronger than the endpoint theorem needs. The local endpoint density is a finite-order order-locked functional; its endpoint UI follows from uniform control of the local finite jet set entering that density and one time rung of that finite jet set. Harmonic pressure memory remains a separate annular pressure-service component. Therefore high-rung-only analytic-radius collapse is irrelevant to endpoint UI unless it forces failure of the local finite endpoint jet modulus, annular pressure endpoint control, or residue policy. The live gold producer should be FiniteEndpointJetTemporalModulus.A plus AnnularPressureReverseHolder.A plus EndpointResidueDensityPolicy.A, not full CoupledMixedTowerRadiusLowerBound.A, for endpoint uniform integrability."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-from-field-towers-and-residue-policy-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-trace-temporal-tower-regularity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-radius-collapse-not-endpoint-ui-direct-test-20260621.md
---

# Finite Endpoint Jet Modulus Replaces Full Radius Survival

Date: 2026-06-21

## 0. Correction

The endpoint theorem is:

```math
\lim_{\theta\downarrow0}
\sup_m
\mu_m((-\theta,0])
=0.
\tag{FEJ.1}
```

This theorem does not require a full positive analytic/Gevrey radius for the
entire mixed tower.  It requires uniform endpoint control of the finite local
jet set that forms the local endpoint density, plus separate harmonic pressure
and residue endpoint control.

So the correct local tower producer is:

```math
\boxed{
\texttt{FiniteEndpointJetTemporalModulus.A}
}
\tag{FEJ.2}
```

not full

```math
\texttt{CoupledMixedTowerRadiusLowerBound.A}.
\tag{FEJ.3}
```

The full analytic radius is useful when available, but it is stronger than the
local finite-jet endpoint component needs.

## 1. Finite endpoint jet set

After residue policy and pressure decomposition, the gold endpoint density is:

```math
\rho_m
=
[H_m^{jet}]_+
+[H_m^H]_+
+\rho_m^{res}.
\tag{FEJ.4}
```

The local finite-jet part is finite-order.  There is a finite local jet set

```math
\mathcal J_K^{loc}
=
\{
\partial_y^\alpha U_m,\,
\partial_y^\alpha Q_m^{loc}
\ :\ |\alpha|\le K
\}
\tag{FEJ.5}
```

large enough to form the local finite-jet endpoint density.

The needed time rung is also finite:

```math
\partial_s\mathcal J_K^{loc}.
\tag{FEJ.6}
```

## 2. Finite temporal modulus theorem

Let \(\sigma>3/2\).  Assume:

```math
\sup_m
\|\mathcal J_K^{loc}\|_{L_s^\infty H_y^\sigma}
\le C_0,
\tag{FEJ.7}
```

and

```math
\sup_m
\|\partial_s\mathcal J_K^{loc}\|_{L_s^1 H_y^\sigma}
\le C_1.
\tag{FEJ.8}
```

Assume also that selector/cutoff/test coefficients are stable or have already
entered the residue policy with endpoint modulus.

Then, by the chain rule and the Sobolev algebra property,

```math
\sup_m
\|\partial_s \rho_m^{jet}\|_{L_s^1(-1,0)}
\le C(C_0,C_1),
\tag{FEJ.9}
```

where

```math
\rho_m^{jet}
:=
[H_m^{jet}]_+.
\tag{FEJ.10}
```

Since \(\rho_m^{jet}\) is already \(L_s^1\)-paid by the four-body/full-packet
identity,

```math
\sup_m
\|\rho_m^{jet}\|_{W_s^{1,1}(-1,0)}
<\infty.
\tag{FEJ.11}
```

Therefore

```math
\boxed{
\int_{-\theta}^{0}\rho_m^{jet}(s)\,ds
\le C\theta.
}
\tag{FEJ.12}
```

Adding harmonic pressure endpoint control and the residue-policy modulus gives
`(FEJ.1)`.

## 3. High-rung-only analytic collapse is harmless for endpoint UI

High-rung-only analytic collapse means full factorial/Gevrey radius fails while
every fixed finite rung remains bounded.

For the local finite-jet endpoint density, only the finite set
\(\mathcal J_K^{loc}\) and \(\partial_s\mathcal J_K^{loc}\) matters.  If
`(FEJ.7)` and `(FEJ.8)` hold, then `(FEJ.12)` holds even when every positive
analytic radius of the full tower is zero.

Thus:

```math
\boxed{
\text{high-rung-only analytic-radius collapse}
\not\text{ is a local finite-jet endpoint obstruction unless it breaks }(FEJ.7)
\text{ or }(FEJ.8).
}
\tag{FEJ.13}
```

This is stronger than merely saying high-rung collapse does not imply endpoint
UI failure.  For the local finite-jet component, high-rung-only collapse is
irrelevant after the finite endpoint jet modulus is established.

## 4. Corrected failure fork

On the residue-policy branch, failure of endpoint UI now forces:

```math
\boxed{
\neg(FEJ.7)
\quad\text{or}\quad
\neg(FEJ.8)
\quad\text{or}\quad
\text{harmonic pressure endpoint-control failure}
\quad\text{or}\quad
\text{residue-policy failure}.
}
\tag{FEJ.14}
```

Equivalently:

```math
\boxed{
\text{finite endpoint jet amplitude blowup}
\quad\text{or}\quad
\text{finite endpoint jet temporal variation blowup}
\quad\text{or}\quad
\text{harmonic pressure endpoint-control failure}
\quad\text{or}\quad
\text{unadmitted endpoint residue}.
}
\tag{FEJ.15}
```

The full tower radius lower bound remains useful as a sufficient condition:

```math
\texttt{CoupledMixedTowerRadiusLowerBound.A}
\Longrightarrow
\texttt{FiniteEndpointJetTemporalModulus.A}.
\tag{FEJ.16}
```

But it is not the minimal endpoint UI producer.

## 5. Result

The forward-gold endpoint wall is now smaller:

```math
\boxed{
\texttt{FiniteEndpointJetTemporalModulus.A}
+\texttt{AnnularPressureReverseHolder.A}
+\texttt{EndpointResidueDensityPolicy.A}
\Longrightarrow
\texttt{EndpointUniformIntegrabilityReserve.A}.
}
\tag{FEJ.17}
```

The remaining exact work is to prove `(FEJ.7)` and `(FEJ.8)` for the retained
same-carrier terminal packet, prove the harmonic pressure endpoint-control
component, and prove the residue policy; or route those failures as finite-rung
Field/Part, annular pressure, or residue readouts after same-witness admission.
