---
theorem_id: forward-gold-endpoint-ui-from-field-towers-and-residue-policy-assembly-20260621
status: endpoint-ui-assembly-proved-from-interior-tower-annular-pressure-tower-and-residue-policy
logical_landing_node: endpoint_ui_field_tower_residue_policy_assembly
edge_effect: "Assembles the corrected endpoint-uniform-integrability theorem from the current proven subpieces. If the order-locked finite-jet endpoint density is controlled by the interior mixed temporal tower, the harmonic pressure-memory density is controlled by the enlarged annular velocity-pressure tower, and all legal/selector/signed/terminal/geometry residues are either endpoint-uniform-integrable densities, have uniformly vanishing singular terminal tails, or are absorbed before endpoint measure formation, then the full gold endpoint packet measure satisfies lim_theta sup_m mu_m((-theta,0])=0. Contrapositively, a surviving endpoint pulse must be interior finite-jet tower radius collapse, annular pressure-tower radius collapse/collar drift, or residue-policy failure; it cannot remain a hidden full-packet endpoint pulse under those three clauses."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-trace-temporal-tower-regularity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-pressure-tower-service-controls-harmonic-endpoint-density-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-residue-absorption-policy-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
---

# Endpoint UI From Field Towers and Residue Policy Assembly

Date: 2026-06-21

## 0. Target

The corrected gold theorem is endpoint uniform integrability:

```math
\boxed{
\lim_{\theta\downarrow0}
\sup_m
\mu_m((-\theta,0])
=0.
}
\tag{EIF.1}
```

The full endpoint measure is not allowed to contain arbitrary finite measures.
After the residue policy, it has the form

```math
d\mu_m
=
\rho_m(s)\,ds
+d\Lambda_m^{abs},
\tag{EIF.2}
```

where

```math
\lim_{\theta\downarrow0}
\sup_m
\Lambda_m^{abs}((-\theta,0])
=0.
\tag{EIF.3}
```

The density decomposes into field channels:

```math
\rho_m
=
[H_m^{jet}]_+
+[H_m^H]_+
+\rho_m^{res}.
\tag{EIF.4}
```

Here \(H_m^{jet}\) is the order-locked finite-jet density, \(H_m^H\) is the
harmonic pressure-memory density, and \(\rho_m^{res}\) is the sum of
residue channels that passed the endpoint density policy.

## 1. Interior finite-jet tower clause

The temporal tower note proves:

```math
\boxed{
\sup_m
\|[H_m^{jet}]_+\|_{W_s^{1,1}(-1,0)}
<\infty.
}
\tag{EIF.5}
```

Therefore

```math
\int_{-\theta}^{0}[H_m^{jet}(s)]_+\,ds
\le C_{jet}\theta.
\tag{EIF.6}
```

This is the endpoint modulus for the interior finite-jet channel.

## 2. Annular harmonic pressure tower clause

The annular pressure-tower note proves:

```math
\boxed{
\sup_m
\|[H_m^H]_+\|_{L_s^\infty(-1,0)}
<\infty.
}
\tag{EIF.7}
```

Therefore

```math
\int_{-\theta}^{0}[H_m^H(s)]_+\,ds
\le C_H\theta.
\tag{EIF.8}
```

This is the endpoint modulus for the harmonic pressure-memory channel.

## 3. Residue density policy clause

The residue policy admits a residue density channel only when it is uniformly
endpoint-integrable.  Thus:

```math
\boxed{
\lim_{\theta\downarrow0}
\sup_m
\int_{-\theta}^{0}\rho_m^{res}(s)\,ds
=0.
}
\tag{EIF.9}
```

The singular or non-density residue part is already contained in
\(\Lambda_m^{abs}\), whose terminal tail vanishes by `(EIF.3)`.

## 4. Assembly

For \(0<\theta<1\),

```math
\begin{aligned}
\mu_m((-\theta,0])
&=
\int_{-\theta}^{0}\rho_m(s)\,ds
+\Lambda_m^{abs}((-\theta,0])\\
&\le
C_{jet}\theta
+C_H\theta
+\int_{-\theta}^{0}\rho_m^{res}(s)\,ds
+\Lambda_m^{abs}((-\theta,0]).
\end{aligned}
\tag{EIF.10}
```

Taking \(\sup_m\), then \(\theta\downarrow0\), and using `(EIF.3)` and
`(EIF.9)`, gives `(EIF.1)`.

Thus:

```math
\boxed{
\text{interior finite-jet tower UI}
+\text{annular pressure-tower UI}
+\text{residue density/absorption policy}
\Longrightarrow
\texttt{EndpointUniformIntegrabilityReserve.A}.
}
\tag{EIF.11}
```

## 5. Contrapositive

The contrapositive is exact:

```math
\boxed{
\neg\texttt{EndpointUniformIntegrabilityReserve.A}
\Longrightarrow
\neg\text{interior finite-jet tower UI}
\ \text{or}\
\neg\text{annular pressure-tower UI}
\ \text{or}\
\neg\text{residue density/absorption policy}.
}
\tag{EIF.12}
```

Expanded:

```math
\boxed{
\text{a surviving terminal endpoint pulse must be one of:}
}
\tag{EIF.13}
```

```math
\boxed{
\text{interior finite-jet temporal tower radius collapse;}
}
\tag{EIF.14}
```

```math
\boxed{
\text{annular pressure-tower radius collapse or annular collar/carrier drift;}
}
\tag{EIF.15}
```

```math
\boxed{
\text{unabsorbed legal/selector/signed/terminal/geometry endpoint residue.}
}
\tag{EIF.16}
```

So the terminal \(L^1\)-pulse cannot remain as a hidden full-packet endpoint
measure after the three clauses are imposed.

## 6. What remains

This assembly proves the endpoint theorem from the current positive clauses.
It does not prove that the required tower radii survive for every retained
terminal heat-scale packet.

The remaining gold-side production question is therefore not generic endpoint
uniform integrability.  It is:

```math
\boxed{
\text{prove positive interior/annular mixed tower radius survival, or consume
its collapse as a typed endpoint/tower branch.}
}
\tag{EIF.17}
```
