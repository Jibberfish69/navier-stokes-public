---
theorem_id: forward-gold-prelimit-route-supersedes-postlimit-kawashima-burden-20260623
status: route-reconciliation-corrected-live-gate-is-signed-smooth-commutator-clock-producer
logical_landing_node: prelimit_route_supersedes_postlimit_kawashima_burden
edge_effect: >-
  Reconciles the older post-limit Kawashima/signed-symmetrizer burden with the
  newer prelimit master-balance route. The post-limit Kawashima compensator is
  an alternate direct operator route, not the current necessary wall, after the
  smooth same-carrier master balance is proved before compactness and the
  interface defect is defined as the lower-semicontinuity gap of the positive
  prelimit clock. The current repo-side proof gate is the signed smooth
  same-packet commutator/coercivity theorem that produces that prelimit clock.
  Family admission, bounded overlap, residual normal form, and relaxed lower
  semicontinuity are downstream gates once that producer exists.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-same-carrier-clock-lsc-defect-closure-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-kawashima-fourbody-operator-form-check-20260623.md
  - problems/navier-stokes/theorem-construction/mcp-legalresidualsummabilityonselectedterminalfamily-a-simultaneousmaterialfourbodypacketcoercivity-a-a9f387f77f.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
---

# Prelimit Route Supersedes Postlimit Kawashima Burden

Date: 2026-06-23

## 0. Result

The conditional route is:

```math
\text{signed smooth commutator/coercivity}
+\text{ prelimit smooth master balance}
+
\text{residual normal form}
+
\text{relaxed lower semicontinuity}
\Longrightarrow
\text{same-material four-body coercive identity}.
\tag{PRS.1}
```

This does not solve the MPP by itself. The direct commutator calculation shows
that the smooth tower currently gives a material strain/coefficient growth law,
not the finite full clock. The same-material four-body coercive gate is still
conditional on the signed smooth same-packet commutator/coercivity producer.

The older post-limit Kawashima/signed-symmetrizer burden is no longer the
preferred order on this route. It is an alternate way to prove a similar
coercive sign after taking a limit. The repaired route tries to prove the
smooth same-carrier balance before compactness, then pass the positive clock by
relaxation. The direct calculation keeps that attempt honest: the signed
commutator line is still open.

## 1. Why the post-limit burden is demoted

The direct Kawashima note proves a correct obstruction for the post-limit
operator route:

```math
L^\ast G_T+G_TL=e^{TL^\ast}We^{TL}-W.
\tag{PRS.2}
```

So a finite observable Gramian leaves an endpoint readout. A stable
infinite-time Gramian is circular unless no-return is already proved. The
post-limit route therefore asks for a signed compensator

```math
\partial_\sigma H_\sigma+H_\sigma L_\sigma+L_\sigma^\ast H_\sigma
\le
-cW_{\rm clock,\sigma}
-M_{\rm loss,\sigma}
+R_\sigma.
\tag{PRS.3}
```

That is a valid alternate route. It becomes necessary only if the proof has
already passed to the terminal limiting packet and left the interface defect as
a right-side residual.

The prelimit repair changes the order. At the smooth level there is one
transported material packet:

```math
X_m(a,s),\qquad
v_m=V_m(X_m(a,s),s),\qquad
q_m=Q_m(X_m(a,s),s),
```

```math
F_m=D_aX_m,\qquad
A_m=F_m^{-1},\qquad
G_m=A_mA_m^\top.
\tag{PRS.4}
```

At this level,

```math
d\mathcal K_{{\rm iface},m}=0.
\tag{PRS.5}
```

The interface defect is not estimated after the limit. It is defined after the
limit as the missing part of the positive smooth prelimit clock:

```math
d\mathcal K_{\rm iface}
:=
d\mu_{\rm clock}
-dA_{4B,N}
-d[\log(1+\mathcal P_N^{mat})]_+.
\tag{PRS.6}
```

Thus

```math
d\mu_{\rm clock}
=
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}.
\tag{PRS.7}
```

This makes \(d\mathcal K_{\rm iface}\) left-side clock mass by construction,
not a residual that has to be moved left by a post-limit signed operator
estimate.

## 2. What is actually proved on the current route

The prelimit master balance gives, on each smooth same-carrier material packet,

```math
d\mathfrak L_{4B,N,m}
+
c\,d\mathfrak C_{N,m}
+
d\mathcal L_{4B,N,m}
\le
dR_{4B,N,m},
\tag{PRS.8}
```

where

```math
d\mathfrak C_{N,m}
=
dA_{4B,N,m}
+
d[\log(1+\mathcal P_{N,m}^{mat})]_+.
\tag{PRS.9}
```

The residual must be split before compactness:

```math
dR_{4B,N,m}
\le
\varepsilon
\left(
d\mathfrak C_{N,m}
+
d\mathcal L_{4B,N,m}
\right)
+
dR^0_{N,m}.
\tag{PRS.10}
```

After absorption and relaxed lower semicontinuity, the limiting identity is

```math
d\mathfrak L_{4B,N}
+
c_0\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N},
\tag{PRS.11}
```

with

```math
\int dR_{4B,N}<\infty.
\tag{PRS.12}
```

Consequently,

```math
\int_{\sigma_0}^{\infty}
\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
<\infty.
\tag{PRS.13}
```

This is the same-material four-body coercive gate.

## 3. Noncircularity check

The commutator estimate is not allowed to use the conclusion as a hidden input.
It is noncircular only in this form:

```math
\left|
\sum_\alpha w_\alpha
\int \zeta^2D^\alpha v_m\cdot\mathcal C_{\alpha,m}
\right|
\le
\varepsilon dD_{Q,m}^{w}
+
\varepsilon dD_{S,m}^{rad}
+
C_\varepsilon d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
dR^0_{comm,m}.
\tag{PRS.14}
```

Here \(\mathcal P_{N,m}^{mat}\) is a prelimit material record large enough to
contain the coefficient, pressure, velocity, collar, and geometry tower whose
growth creates the commutators. The log-growth clock is part of the prelimit
left side before compactness. It is not the visible post-limit record alone.

The legal residual is restricted to subcritical finite-overlap form after
undoing heat-scale normalization:

```math
dR_{\rm legal,m}
\lesssim
\int_{Q_m^{collar}}
\left(
r_m^{\alpha_0}|u|^2
+
r_m^{\alpha_1}|u|^3
+
r_m^{\alpha_2}|\nabla u|^2
+
r_m^{\alpha_3}|p|^{3/2}
\right)\,dx\,dt,
\qquad
\alpha_j\ge0.
\tag{PRS.15}
```

Every top-order, critical, negative-scaling, or uncompensated pressure/current
term is excluded from the residual side. It must be in

```math
dD_{S,m}^{rad},
\qquad
dD_{Q,m}^{w},
\qquad
d[\log(1+\mathcal P_{N,m}^{mat})]_+,
\qquad
dA_{4B,N,m}
\tag{PRS.16}
```

before compactness.

## 4. Actual remaining repo-side gate

The remaining proof gate is not:

```math
\text{construct a post-limit }H_\sigma\text{ for }d\mathcal K_{\rm iface}.
\tag{PRS.17}
```

That is now an alternate route.

The remaining proof gate is:

```math
\boxed{
\texttt{OriginalSmoothDataToPrelimitMasterBalanceFamily.A}
}
\tag{PRS.18}
```

with the following content.

From original smooth data and a finite-time terminal obstruction, produce the
selected transported terminal material family to which the prelimit master
balance applies, or land the failure as the same-object participation failure
already identified on the Part side. The produced family must satisfy:

1. smooth prelimit material packets up to the terminal extraction time;
2. transported collars/cutoffs on the same material annulus;
3. bounded overlap in physical variables;
4. residual normal form `(PRS.15)`;
5. all critical/nonsummable terms absorbed into `(PRS.16)`;
6. relaxed clock/storage compactness as in `(PRS.6)`--`(PRS.11)`.

If these hold, the four-body identity gives the unweighted terminal clock and
rules out infinite same-material terminal recurrence on the no-exit branch.

If they fail because the same material packet cannot be retained, the failure
is not a new gold residual. It is the same-object participation failure:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{PRS.19}
```

If they fail because no positive-thickness field survives after participation
is retained, the failure is the endpoint-face field failure:

```math
Pack_Q+Part_{N,Q}+\forall r>0,\neg Field_{N,r,Q}.
\tag{PRS.20}
```

## 5. Completion truth

The MPP is not solved by `(PRS.11)` alone. What is solved is the conditional
same-material four-body coercive gate once the selected terminal material
family and residual normal form are available.

The next object-level repo work is therefore not PDF enforcement and not
post-limit \(H_\sigma\). It is the admission theorem `(PRS.18)`.
