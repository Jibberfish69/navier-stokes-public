---
theorem_id: forward-gold-annular-pressure-tower-service-controls-harmonic-endpoint-density-20260621
status: conditional-positive-annular-pressure-tower-radius-controls-harmonic-endpoint-density
logical_landing_node: annular_pressure_tower_service_to_harmonic_endpoint_density
edge_effect: "Extends the endpoint temporal-tower route to the harmonic pressure-memory channel. The interior finite-jet tower does not control Q_m^H, because Q_m^H is determined by annular/exterior pressure service. However, a mixed velocity-pressure tower with positive radius on the enlarged annular service region does control Q_m^H-Pi_aff Q_m^H in L_s^infty L_y^(3/2) and controls the gauge-fixed velocity in L_s^infty L_y^3 on the collar. Therefore the harmonic pressure endpoint density is L_s^infty and has terminal tail O(theta). This proves AnnularHarmonicPressureServiceSuperL1.A under enlarged annular pressure-tower radius survival. Failure of the harmonic endpoint reserve is thus pushed to annular pressure-tower radius collapse, annular carrier drift, or residue/legal endpoint policy, not to local Calderon-Zygmund pressure."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-pressure-reverse-holder-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-trace-temporal-tower-regularity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
---

# Annular Pressure Tower Service Controls Harmonic Endpoint Density

Date: 2026-06-21

## 0. Target

The harmonic pressure subproducer left by endpoint uniform integrability is:

```math
\boxed{
\texttt{AnnularHarmonicPressureServiceSuperL1.A}.
}
\tag{APT.1}
```

The direct pressure attempt reduced it to annular service:

```math
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_s^aL_y^{3/2}(A)}
\le C,
\qquad
\|U_m\|_{L_s^bL_y^3(C)}
\le C,
\qquad
{1\over a}+{1\over b}<1.
\tag{APT.2}
```

Here \(C\) is the cutoff collar and \(A\) is the enlarged annular pressure
service region surrounding it.

The question is whether the derivative tower can supply `(APT.2)`.

## 1. The interior tower is the wrong carrier for \(Q^H\)

The local pressure satisfies

```math
-\Delta Q_m^{loc}
=
\partial_i\partial_j(U_{m,i}U_{m,j}),
\tag{APT.3}
```

so Calderon-Zygmund estimates control \(Q_m^{loc}\) from the retained velocity
product.

The harmonic memory is

```math
Q_m^H
=
Q_m-Q_m^{loc}.
\tag{APT.4}
```

It is harmonic in the retained interior and is determined by annular/exterior
pressure service and gauge choice.  Therefore a tower confined only to the
interior retained core cannot prove `(APT.2)`.

The pressure channel has to be carried on the enlarged annular pressure service
region.

## 2. Annular mixed pressure-tower hypothesis

Let \(\chi_A\) be a fixed normalized cutoff supported on the annular service
region and equal to \(1\) on the pressure-service annulus needed by `(APT.2)`.
Let \(\chi_C\) be the collar cutoff.

Assume a positive mixed tower radius on the enlarged annulus:

```math
\sup_m\sup_{-1\le s\le0}
\sum_{r,\alpha}
{\tau^{2r}\rho^{2|\alpha|}\over(r!)^2(\alpha!)^2}
\left(
\|\chi_A\partial_s^r\partial_y^\alpha Q_m(s)\|_{H_y^\sigma}^2
+\|\chi_A\partial_s^r\partial_y^\alpha U_m(s)\|_{H_y^\sigma}^2
\right)
\le C_A,
\tag{APT.5}
```

for some \(\tau,\rho>0\) and \(\sigma>3/2\).

The pressure tower is licensed by the mixed Navier-Stokes pressure identity:

```math
-\Delta Q_{m,r,\alpha}
=
\sum_{a=0}^{r}\sum_{\beta\le\alpha}
{r\choose a}{\alpha\choose\beta}
\partial_i(W_{m,a,\beta})_\ell
\partial_\ell(W_{m,r-a,\alpha-\beta})_i.
\tag{APT.6}
```

The factorial weights cancel the time-space binomial coefficients exactly.

## 3. Annular pressure service follows

Taking the \((r,\alpha)=(0,0)\) term in `(APT.5)` and using Sobolev embedding
on the bounded annulus gives

```math
\sup_m
\|Q_m\|_{L_s^\infty L_y^{3/2}(A)}
\le C.
\tag{APT.7}
```

The local pressure part obeys

```math
\sup_m
\|Q_m^{loc}\|_{L_s^\infty L_y^{3/2}(A)}
\le C,
\tag{APT.8}
```

provided the same annular tower controls \(U_m\) strongly enough to bound
\(U_m\otimes U_m\) and the local Calderon-Zygmund solve on the enlarged carrier.

Therefore

```math
\boxed{
\sup_m
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_s^\infty L_y^{3/2}(A)}
\le C.
}
\tag{APT.9}
```

Similarly,

```math
\boxed{
\sup_m
\|U_m\|_{L_s^\infty L_y^3(C)}
\le C.
}
\tag{APT.10}
```

Thus `(APT.2)` holds with \(a=b=\infty\).

## 4. Harmonic endpoint density is uniformly integrable

The harmonic endpoint density is

```math
H_m^H(s)
=
\int
(Q_m^H-\Pi_{aff}Q_m^H)
U_m\cdot\nabla\chi_C\,dy.
\tag{APT.11}
```

Using `(APT.9)` and `(APT.10)`,

```math
|H_m^H(s)|
\le
C
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_y^{3/2}(A)}
\|U_m\|_{L_y^3(C)}
\le C.
\tag{APT.12}
```

Hence

```math
\boxed{
\sup_m
\|[H_m^H]_+\|_{L_s^\infty(-1,0)}
\le C,
}
\tag{APT.13}
```

and therefore

```math
\boxed{
\int_{-\theta}^{0}[H_m^H(s)]_+\,ds
\le
C\theta.
}
\tag{APT.14}
```

This proves endpoint uniform integrability for the harmonic pressure-memory
channel under annular mixed pressure-tower radius survival.

## 5. Exact consequence

The positive statement is:

```math
\boxed{
\text{annular velocity-pressure mixed tower radius survives}
\Longrightarrow
\texttt{AnnularHarmonicPressureServiceSuperL1.A}.
}
\tag{APT.15}
```

Equivalently, failure of harmonic pressure endpoint uniform integrability
forces at least one of:

```math
\boxed{
\text{annular pressure-tower radius collapse;}
}
\tag{APT.16}
```

```math
\boxed{
\text{annular carrier/collar drift;}
}
\tag{APT.17}
```

```math
\boxed{
\text{unabsorbed legal/selector/terminal residue at the endpoint.}
}
\tag{APT.18}
```

## 6. Result

This closes the harmonic pressure endpoint-density producer under the right
tower hypothesis.  The earlier obstruction remains only when the annular
pressure service itself loses positive tower radius or leaves the retained
same-carrier packet.

So the endpoint uniform-integrability program now has two tower-positive
components:

```math
\boxed{
\text{interior finite-jet temporal tower}
\Rightarrow
\text{UI for }H_m^{jet},
}
\tag{APT.19}
```

```math
\boxed{
\text{annular pressure tower}
\Rightarrow
\text{UI for }H_m^H.
}
\tag{APT.20}
```

The remaining non-tower part is the residue density policy:

```math
\boxed{
\texttt{EndpointResidueDensityPolicy.A}.
}
\tag{APT.21}
```
