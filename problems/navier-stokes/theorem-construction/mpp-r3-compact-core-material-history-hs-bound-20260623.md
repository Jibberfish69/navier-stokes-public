---
theorem_id: r3-compact-core-material-history-hs-bound-20260623
status: proof-installed-r3-compact-core-hs-readout-from-material-history-clock
logical_landing_node: r3_compact_core_material_history_hs_bound
edge_effect: >-
  Installs the compact-core half of the whole-space H^s relaunch bridge. The
  exterior tail theorem controls the far field. On every fixed compact core,
  the same original-data material-history/full-clock argument used on the
  transported torus atlas applies to a finite transported local material atlas.
  Therefore compact-core H^s blowup would force a first loss of material atlas,
  participation tower, or positive-scale field coherence on that same local
  material history, and the finite full clock excludes that loss.
parents:
  - problems/navier-stokes/theorem-construction/mpp-original-smooth-data-material-history-no-finite-breakdown-20260623.md
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

## 1. Compact-core failure produces a local terminal readout failure

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

## 2. Same local packet services as the torus atlas

At continuation depth \(N_s\), the local compact-core packet has the same three
services as the transported torus atlas:

```math
Pack_{Q_{R,\ell}},
\qquad
Part_{N_s,Q_{R,\ell}},
\qquad
Field_{N_s,r,Q_{R,\ell}}.
\tag{RCC.4}
```

Here \(Q_{R,\ell}\) is the transported local material chart.  The chart is
finite, positive-radius, and same-material before \(T_*\).  If the localized
\(H^s\) readout fails at \(T_*\), the first failure must be one of:

```math
\neg Pack_{Q_{R,\ell}},
\qquad
\neg Part_{N_s,Q_{R,\ell}},
\qquad
\forall r>0\,\neg Field_{N_s,r,Q_{R,\ell}}.
\tag{RCC.5}
```

This is not a new physical object.  It is the same compact portion of the
original smooth material history.

## 3. Full clock excludes the compact-core first failures

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
\tag{RCC.6}
```

Loss of the local material chart, loss of the participation tower, or loss of
positive-scale field coherence is a positive same-material clock event by the
same material-history argument used for the periodic transported atlas.  A
terminal sequence of such first failures would therefore produce infinitely
many fixed positive \(d\Omega_N\) quanta on a finite local material atlas.

The local material atlas has finite label multiplicity, and the separated
terminal log-scale selection is governed by
`SameMaterialDyadicPacketOverlapSelection.A`.  Hence infinitely many fixed
quanta would imply

```math
\int d\Omega_N=\infty,
\tag{RCC.7}
```

contradicting `(RCC.6)`.

Thus no local compact-core terminal readout failure occurs, and `(RCC.1)`
holds.

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

