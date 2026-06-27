---
theorem_id: forward-gold-native-reserve-weighted-fresh-current-capacity-reduction-20260627
status: gold-reduced-to-original-history-weighted-fresh-current-capacity-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold native reserve/current-capacity
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
superseded_live_hinge_by:
  - SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  - SelectedUnitRieszRepresentativeSourceGraphAdmission.A
attacks_hinge:
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - SelectedCompressionRootReserve.A
  - RoutedCurrentCapacityDrop.A
equivalent_open_forms:
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - OriginalScaleMemoryGeneratorEnergyBound.A
  - NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A, in quantitative weighted form
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-current-square-packing-root-reserve-branch-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-direct-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-routed-energy-noncircular-installation-20260627.md
---

# Native reserve weighted fresh-current capacity reduction

Once the original-history native reserve/current-capacity bound is proved,
smoothness follows by the already installed continuation consumers.  This note
records the remaining noncircular Gold burden more sharply: the producer must
bound the selected-critical weight before scalar selected readout, not merely
attach selected action to the original material current.

## 1. The useful downstream consequence

Let \(P\) be a retained stopped root and let \(\Gamma_N(P)\) be the selected
high-ratio births after carry, entrance, stop, reset, reselection, and legal
loss have been separated.  The desired original-history native reserve map is:

```math
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}+R_{\rm legal}(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{1}
```

with

```math
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{2}
```

Summing `(1)` and using bounded multiplicity gives

```math
\sum_{\gamma\in\Gamma_N(P)}\omega_\gamma
\le
C_N
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
+
R_{\rm legal}(P)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{3}
```

Thus the native reserve map implies finite selected critical action.  The
routed-current square packing, full same-material clock, and \(H^s\)
continuation route are consumers of `(3)`, not independent producers.

## 2. Raw participation current is not enough

The original material Navier-Stokes participation law gives a real raw current
capacity.  In material coordinates, divergence-free lifted tests kill the
pressure term and leave the viscous stress pairing:

```math
\Delta_QJ^S
=
\int_{\operatorname{Hist}(Q)}
2\nu S_A:\nabla_Av_Q.
\tag{4}
```

For an energy-normalized stopped Bessel family,

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^S|^2
\le
C\nu^2
\int_{\operatorname{Hist}(P)}
|S_A|^2
+
R_{\rm legal}(P)+Stop(P).
\tag{5}
```

By the material energy inequality, `(5)` is finite from the original data.  It
is noncircular, but it is only raw square packing.  The Gold target contains the
selected-critical weight:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{6}
```

where

```math
F_Q
=
(I-\Pi_{\rm spent(<Q)})\Delta_QZ_P^{orig}
\tag{7}
```

is the fresh original-history source/current increment after spent-source
projection.  Estimate `(5)` does not imply `(6)`.

## 3. The half-tail obstruction

On a one-child stopped laminar chain \(Q_0\supset Q_1\supset\cdots\), take
critical weights \(w_\ell=2^\ell\) and fresh orthogonal increments satisfying

```math
F_\ell\perp F_k\quad(\ell\ne k),
\qquad
\nu_\ell:=\|F_\ell\|_{\mathcal H_{\rm raw}}^2
=
\frac{2^{-\ell}}{\ell+1}.
\tag{8}
```

Then raw Bessel/current mass is finite:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\tag{9}
```

while the selected Gold clock diverges:

```math
\sum_{\ell\ge0}w_\ell\nu_\ell
=
\sum_{\ell\ge0}2^\ell\frac{2^{-\ell}}{\ell+1}
=
\sum_{\ell\ge0}\frac1{\ell+1}
=\infty.
\tag{10}
```

In physical heat-scale variables,

```math
r_m=2^{-m},\qquad
U_m\sim r_m^{-1},\qquad
\tau_m\sim r_m^2,\qquad
|\nabla u|_m\sim r_m^{-2},
\tag{11}
```

so the raw energy/dissipation price satisfies

```math
E_m\sim r_m,\qquad D_m\sim r_m,
\qquad
\sum_m(E_m+D_m)<\infty,
\tag{12}
```

but the material critical clock has size

```math
K_m\sim1,\qquad \sum_mK_m=\infty.
\tag{13}
```

This is why pressure killing, viscosity \(L^2\) strain, raw current attachment,
Bessel packing, silent-source rigidity, potential-average Poincare, reset
overlap, and return/BV support do not close Gold by themselves.  They see
`(9)`, while Gold needs `(10)` to be finite.

## 4. First-birth/no-reuse gives only the combinatorial half

A first-birth or minimal-bad-tree argument can remove reuse.  After carry,
entrance/legal, selector/order-lock, silent-exchange, return/reset, and paid
exchange are subtracted, a strict retained birth must be represented by a fresh
parent-known original-history increment:

```math
F_\gamma
=
(I-\Pi_{\rm spent(<\gamma)})
\Delta_\gamma Z_P^{orig}.
\tag{14}
```

The strongest useful conditional form represents this increment by a
parent-known scale-memory generator \(G\):

```math
F_\gamma
=
|I_\gamma|^{-1}
\int_{I_\gamma}G(\sigma)\,d\sigma
+
Err_\gamma^{legal}.
\tag{15}
```

For a parent-known weight \(a\) and dual scale-memory weight

```math
W_\gamma
=
\frac{|I_\gamma|^2}
{\int_{I_\gamma}a(\sigma)^{-1}\,d\sigma},
\tag{16}
```

Cauchy gives the candidate one-time atom

```math
\rho_\gamma
=
\int_{I_\gamma\times T_\gamma}
a(\sigma)\|G(\sigma)\|^2\,d\sigma
+
R_{\rm legal}(\gamma),
\qquad
\omega_\gamma
\lesssim
W_\gamma\|F_\gamma\|^2
\lesssim
\rho_\gamma.
\tag{17}
```

Maximal parent-known witnesses and the spent projection would then give bounded
multiplicity.  The missing estimate is the original-history root bound for the
generator:

```math
\int_{\operatorname{Hist}(P)}
a(\sigma,t)\|G(\sigma,t)\|^2\,d\sigma\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{18}
```

The weight \(a\), generator \(G\), and witness intervals must be built from the
original same-material pressure-viscosity-incompressibility history before
future selected readout.  If \(a\) is chosen from the future selected clock,
`(18)` is circular.

## 5. Exact sharpened open theorem

The superseded weighted-fresh producer could be stated as either of the following
equivalent open forms.

`OriginalHistoryWeightedFreshCurrentCapacity.A.`  For every retained stopped
root \(P\), with fresh increments `(7)` constructed from the original material
Navier-Stokes history before scalar selected readout,

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{19}
```

`OriginalScaleMemoryGeneratorEnergyBound.A.`  For the parent-known
scale-memory representation `(15)`, prove `(18)` with sparse stopped witnesses
and original-history weight \(a\).

Either theorem implies the native reserve assignment `(1)`--`(2)`: define the
reserve atom attached to a selected birth by the corresponding weighted fresh
current atom, use stopped maximality/spent projection for bounded multiplicity,
and sum the original-history root bound.

## 6. What this note proves and does not prove

This note proves a reduction:

```text
OriginalHistoryWeightedFreshCurrentCapacity.A
  or OriginalScaleMemoryGeneratorEnergyBound.A
    => NativeBirthChargePacking.A
    => CriticalFreshSourceTentCarleson.A / SelectedCompressionRootReserve.A
    => finite selected critical action
    => routed-current/full-clock consumers
    => H^s continuation.
```

It also rules out a weaker zero-motion interpretation of the no-fourth-branch
claim as a Gold closure.  Exact zero original-history motion would forbid a
literal free selected birth, but the heat-scale half-tail has nonzero
original-history bills whose raw sum is finite and whose critical weighted sum
diverges.  Gold needs the quantitative weighted original-history reserve, not
only exact zero-cost rigidity.

Gold is not closed by this weighted-fresh reduction.  After the bounded
original-packet/Riesz selected-action currency was installed, `(19)` and `(18)`
are historical pressure-test/support forms and must not be promoted ahead of
`SelectedActionCurrencyBoundedOriginalPacketEnforcement.A`.
