---
theorem_id: r3-duhamel-survivor-to-material-tower-clock-20260623
status: proof-installed-r3-duhamel-survivor-admitted-to-material-tower-clock
logical_landing_node: r3_duhamel_survivor_to_material_tower_clock
edge_effect: >-
  Repairs the R3 exterior dyadic survivor bridge. A high-frequency Duhamel
  response survivor is admitted by the heat-kernel/Duhamel inverse step: the
  response forces a positive amount of same-material nonlinear source/tower
  activity on a backward heat-time strip. That activity is a component of the
  smooth prelimit four-body clock before compactness, hence it is counted by the
  relaxed full material clock after passage.
parents:
  - problems/navier-stokes/theorem-construction/mpp-r3-tail-hs-duhamel-source-reduction-20260607.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-legal-residual-logscale-summability-correction-20260623.md
---

# R3 Duhamel Survivor To Material Tower Clock

Date: 2026-06-23

## 0. Claim

Let

```math
F_R=\chi_{\ge R/4}(u\otimes u),
```

and

```math
W_R(t)
=
\eta_R\int_0^t e^{\nu(t-\tau)\Delta}
\mathbb P\nabla\cdot F_R(\tau)\,d\tau .
\tag{DSM.1}
```

If an exterior dyadic Duhamel survivor exists,

```math
\Lambda_j^s\|P_{\Lambda_j}W_{R_j}(t_j)\|_{L^2}\ge\varepsilon_0,
\qquad
\Lambda_j\to\infty,
\tag{DSM.2}
```

then the original smooth solution carries a positive amount of same-material
tower/source clock on the backward heat-time strip

```math
I_j=[t_j-c\Lambda_j^{-2},t_j].
\tag{DSM.3}
```

More precisely, after localizing in the exterior packet atlas at scale
\(r_j=\Lambda_j^{-1}\), and after fixing once for this \(s\) a continuation
depth \(N_s\) large enough to control the finite \(H^s\) source readout,

```math
\int_{\mathcal P_j}
\left(
dA_{4B,N_s}
+C_{\log}d[\log(1+\mathcal P_{N_s}^{mat})]_+
+d\mathcal K_{\rm iface}
+d\mathcal L_{4B,N_s}
\right)
\ge \eta(\varepsilon_0)>0 .
\tag{DSM.4}
```

The point is that `(DSM.2)` is admitted through the material tower/source
coordinate of the full same-fluid packet.  The dyadic frequency
\(\Lambda_j\) tends to infinity, but the material derivative depth is the fixed
finite continuation depth \(N_s\); this is not an all-orders or
frequency-depth tower claim.

## 1. Heat-time localization of the Duhamel response

On a temporary dyadic frequency \(N\) (only in this heat-kernel estimate),

```math
\|P_N e^{\nu(t-\tau)\Delta}\mathbb P\nabla\cdot f\|_{L^2}
\le
C N e^{-c\nu(t-\tau)N^2}\|P_{\sim N}f\|_{L^2}.
\tag{DSM.5}
```

Therefore

```math
N^s\|P_NW_R(t)\|_{L^2}
\le
C\int_0^t
e^{-c\nu(t-\tau)N^2}
N^{s+1}\|P_{\sim N}F_R(\tau)\|_{L^2}\,d\tau
+R_{comm}(R,N,t),
\tag{DSM.6}
```

where \(R_{comm}\) is the standard finite-width cutoff/Leray commutator
created by \(\eta_R\) and the exterior cutoff.  In the selected high-frequency
exterior regime it is a legal prelimit residual: it has the residual normal
form used in the prelimit master balance.

Choose \(M\) large enough that the contribution from
\(\tau<t-MN^{-2}\) is less than \(\varepsilon_0/4\), and absorb the legal
commutator on the selected branch.  From `(DSM.2)` and `(DSM.6)` we get

```math
\int_{t-MN^{-2}}^t
N^{s+1}\|P_{\sim N}F_R(\tau)\|_{L^2}\,d\tau
\ge c\varepsilon_0 .
\tag{DSM.7}
```

This is the exact inverse Duhamel statement needed here.  It says the response
could not appear without a same-time nonlinear source record in the original
fluid.

## 2. Localization does not detach the source from the material history

Use a smooth bounded-overlap packet partition \(\{\psi_{\ell,N}\}\) at radius
\(N^{-1}\) on the exterior support.  The Littlewood--Paley square-function
and finite overlap give

```math
\sum_\ell
\int_{t-MN^{-2}}^t
N^{s+1}\|\psi_{\ell,N}P_{\sim N}F_R(\tau)\|_{L^2}\,d\tau
\ge c\varepsilon_0 .
\tag{DSM.8}
```

Each summand is read on the same smooth preterminal material flow.  Indeed,
\(F_R=u\otimes u\) is not a new field; it is the nonlinear product of the same
velocity in the same Navier--Stokes equation.  Pulling a selected packet back
by the material map gives the same transported variables

```math
v=V(X(a,s),s),\qquad q=Q(X(a,s),s),
\qquad A=(D_aX)^{-1},\qquad G=AA^\top .
\tag{DSM.9}
```

After applying the finite material derivative record of depth \(N_s\) and the
Bony/Littlewood--Paley split inside this transported packet, the lower bound
`(DSM.8)` is a finite \(H^s\)-source readout of the \(S\to Q\) part of the
smooth four-body master balance.  The frequency localization selects where the
source sits; it does not increase the derivative depth of the material record.
The finite Bony collar and cutoff commutators are the legal residuals already
allowed by the residual normal form.

Thus the selected exterior source clock

```math
d\mathcal S^{R3}_{s,R,\Lambda}
```

satisfies, on smooth prelimit packets,

```math
d\mathcal S^{R3}_{s,R,\Lambda}
\le
C\left(
dA_{4B,N_s}
+C_{\log}d[\log(1+\mathcal P_{N_s}^{mat})]_+
+d\mathcal L_{4B,N_s}
\right)
+dR^0_{s,\Lambda},
\tag{DSM.10}
```

with \(dR^0_{s,\Lambda}\) uniformly summable on bounded-overlap selected exterior
families after applying the corrected residual normal form: scale-neutral terms
are legal only with genuine physical bounded overlap or telescoping storage,
and nested terminal residuals require positive scale gain.

## 3. Passage to the relaxed clock

The prelimit master-balance passage gives the relaxed clock identity

```math
d\mu_{\rm clock}
=
dA_{4B,N_s}
+C_{\log}d[\log(1+\mathcal P_{N_s}^{mat})]_+
+d\mathcal K_{\rm iface},
\tag{DSM.11}
```

and the coercive inequality

```math
d\mathfrak L_{4B,N_s}
+
c\,d\mu_{\rm clock}
+
d\mathcal L_{4B,N_s}
\le
dR_{4B,N_s}.
\tag{DSM.12}
```

Combining `(DSM.8)`--`(DSM.12)` gives the survivor quantum `(DSM.4)`.

## 4. Consequence for the R3 branch

The exterior Duhamel survivor is therefore counted by the same material clock:

```math
\text{exterior Duhamel dyadic survivor}
\Longrightarrow
\text{positive same-material tower/source clock}.
\tag{DSM.13}
```

This is the exact bridge used by the R3 exterior dyadic survivor exclusion.
