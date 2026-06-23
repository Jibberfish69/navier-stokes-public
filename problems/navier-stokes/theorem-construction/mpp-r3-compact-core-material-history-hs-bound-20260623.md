---
theorem_id: r3-compact-core-material-history-hs-bound-20260623
status: proof-installed-r3-compact-core-hs-readout-from-material-history-clock
logical_landing_node: r3_compact_core_material_history_hs_bound
edge_effect: >-
  Installs the compact-core half of the whole-space H^s relaunch bridge. The
  exterior tail theorem controls the far field. On every fixed compact core,
  the same original-data material-history/full-clock argument used on the
  transported torus atlas applies to a finite transported local material atlas.
  The finite local material clock controls the continuation-depth material
  record, and the direct material-clock-to-fixed-Hs readout gives the compact
  core H^s bound.
parents:
  - problems/navier-stokes/theorem-construction/mpp-original-smooth-data-material-history-no-finite-breakdown-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-same-material-dyadic-packet-overlap-selection-20260623.md
---

# R3 Compact-Core Material-History Hs Bound

Date: 2026-06-23

## 0. Claim

Let \((u,p)\) be a smooth rapidly decaying whole-space solution on
\([0,T_*)\).  Fix \(s>5/2\) and a smooth compact-core cutoff
\(\chi_R\in C_c^\infty(\mathbb R^3)\).  Then the material-history full-clock
closure gives

```math
\sup_{t<T_*}\|\chi_R u(t)\|_{H^s(\mathbb R^3)}<\infty .
\tag{RCC.1}
```

This is the compact-core input needed by the R3 exterior-tail relaunch.

## 1. Compact-core failure is read on a fixed local material atlas

Assume `(RCC.1)` fails for some fixed \(R\).  Choose a finite smooth partition
\(\{\chi_{R,\ell}\}_{\ell=1}^{L(R)}\) covering \(\operatorname{supp}\chi_R\).
Since \(L(R)<\infty\), failure of `(RCC.1)` gives at least one chart \(\ell\)
such that

```math
\limsup_{t\uparrow T_*}\|\chi_{R,\ell}u(t)\|_{H^s}=\infty .
\tag{RCC.2}
```

That chart is a positive-radius compact material region.  Pull it back by the
smooth preterminal material flow:

```math
x=X(a,t),\qquad v(a,t)=u(X(a,t),t),\qquad q(a,t)=p(X(a,t),t).
\tag{RCC.3}
```

For every \(t<T_*\), this is a smooth same-solution material packet carrying
the full pressure-viscosity-incompressibility-velocity law.

## 2. Full clock controls the local material record

The prelimit master balance supplies the finite same-material clock

```math
d\Omega_N
=
dA_{4B,N}
+
C_{\log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
+
d\mathcal L_{4B,N},
\qquad
\int d\Omega_N<\infty .
\tag{RCC.4}
```

For \(N_s\ge\lceil s\rceil+4\), the local continuation-depth material record
\(\mathcal P_{N_s,R,\ell}^{mat}\)
contains the localized velocity tower, pressure tower, deformation
coefficients, transported collars, and same-packet interface currents needed
to compare the transported local material chart with the fixed compact-core
coordinates.

Since \(d\Omega_N\) is finite, its positive logarithmic material-record part is
finite:

```math
\int d[\log(1+\mathcal P_{N_s,R,\ell}^{mat})]_+<\infty .
\tag{RCC.5}
```

The record starts finite at every preterminal base time because the solution is
smooth there.  Therefore the same positive-variation estimate used in the
periodic bridge gives

```math
\sup_{t<T_*}\mathcal P_{N_s,R,\ell}^{mat}(t)<\infty
\tag{RCC.6}
```

on the terminal tail, while the earlier compact time interval is bounded by
classical smoothness.

## 3. The local material record gives the compact-core \(H^s\) bound

The fixed-core version of the material-clock readout is the same composition
estimate as on the torus, with the fixed cutoff \(\chi_{R,\ell}\):

```math
\|\chi_{R,\ell}u(t)\|_{H^s(\mathbb R^3)}
\le
C_{s,R,\ell}
\left(
\mathcal P_{N_s,R,\ell}^{mat}(t)
\right).
\tag{RCC.7}
```

Combining `(RCC.6)` and `(RCC.7)` gives

```math
\sup_{t<T_*}\|\chi_{R,\ell}u(t)\|_{H^s}<\infty
\tag{RCC.7a}
```

for every chart in the finite compact-core partition.  Summing the finite
partition gives `(RCC.1)`.

## 4. Whole-space Hs assembly

Let \(\eta_R=1-\chi_R\).  Multiplication by fixed smooth cutoffs is bounded on
\(H^s\), and

```math
u=\chi_Ru+\eta_Ru.
\tag{RCC.8}
```

Therefore

```math
\|u(t)\|_{H^s}
\le
C_R\left(
\|\chi_Ru(t)\|_{H^s}
+
\|\eta_Ru(t)\|_{H^s}
\right).
\tag{RCC.9}
```

The compact-core theorem supplies the first term.  The exterior-tail theorem
supplies the second term uniformly for large \(R\).  Thus

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb R^3)}<\infty.
\tag{RCC.10}
```

Classical \(H^s\), \(s>5/2\), local theory then relaunches the same whole-space
solution past \(T_*\).
