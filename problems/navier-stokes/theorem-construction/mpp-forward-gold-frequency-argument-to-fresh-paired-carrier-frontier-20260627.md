---
theorem_id: forward-gold-frequency-argument-to-fresh-paired-carrier-frontier-20260627
status: frequency-argument-closes-entrance-subheat-return-and-forces-fresh-paired-carrier-frontier
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / selected-scale fresh native root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
uses:
  - AugmentedStoppedSelectedActionTraceCoercivity.A
  - SpentNativeReserveNoReuse.A
  - SilentKernelSourceOriginNormalForm.A
  - PaidReselectionStoppingCarleson.A
  - subheat absorption from frequency-transfer test
attacks_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
  - FreshSourceWeightedPairedCarrierBound.A
  - SelectedScaleFreshNativeRootReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-stopped-selected-action-trace-coercivity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-visible-silent-exchange-root-reserve-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-full-clock-original-history-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-periodic-low-mode-exclusion-high-frequency-material-return-20260625.md
---

# Frequency argument to fresh paired-carrier frontier

The physical frequency argument is valid, but it lands at the paired-carrier
high-ratio transfer theorem.  It does not by itself prove the selected-scale
fresh root reserve.

## 1. The branch split

Work below a stopped same-material root \(P\), after the following removals:

- lower-band carry;
- spent source directions;
- legal/entrance pieces;
- finite-menu or already-paid selector variation;
- Schur-visible parent-child defect;
- Schur-silent selected material routed to top-strain/exchange;
- recirculation/return pieces.

Let \(e_j(t)\) be the dyadic fresh same-material shell energy left in the
visible/silent/exchange source carrier.  Its shell identity has the form

```math
{d\over dt}e_j(t)+c\nu 2^{2j}e_j(t)
=m_j^{fresh}(t)+r_j^{legal}(t),
\tag{1}
```

where \(m_j^{fresh}\) is the full participation-law--strain source service on
the same material packet, not a viscosity-only or pressure-only refill.

Duhamel gives

```math
e_j(t)
\le
e^{-c\nu2^{2j}t}e_j(0)
+
\int_0^t
e^{-c\nu2^{2j}(t-s)}
\bigl([m_j^{fresh}(s)]_+ + r_j^{legal}(s)\bigr)\,ds .
\tag{2}
```

This proves the physical point: high frequencies decay faster unless the same
solution rebuilds them through the coupled participation-law--strain service.

## 2. Closed branches

Smooth initial data gives, for every fixed continuation depth \(M\),

```math
\sum_j2^{2Mj}e_j(0)<\infty .
\tag{3}
```

Together with the heat factor in `(2)`, this makes the initial entrance and
linear high-frequency return finite.

Define the material service ratio

```math
\rho_j(t):={\Theta_j^{mat}(t)\over 2^{2j}}.
\tag{4}
```

On the subheat branch \(\rho_j\le\delta\), the positive source is absorbable:

```math
[m_j^{fresh}(t)]_+
\le
{1\over2}c\nu2^{2j}e_j(t)+r_j^{legal}(t).
\tag{5}
```

The recirculation/return branch is already routed into the installed
same-material return packing.  The spent/reselection/silent-source branches are
paid by the stopped source-carrier reductions and the augmented trace theorem.

So the physical frequency argument closes exactly these branches:

```math
\text{initial entrance}
+\text{linear heat return}
+\text{subheat refill}
+\text{return/reselection/silent-source paid pieces}.
\tag{6}
```

## 3. Remaining one-way high-ratio transfer

The only branch left is

```math
\rho_j(t)>\delta .
\tag{7}
```

On that branch the heat penalty is exactly matched by the rate of same-material
service:

```math
[m_j^{fresh}(t)]_+
\lesssim
\Theta_j^{mat}(t)e_j(t)+r_j^{legal}(t)
=
\rho_j(t)\,2^{2j}e_j(t)+r_j^{legal}(t).
\tag{8}
```

Thus the needed estimate is the weighted high-ratio moment

```math
\sum_j
\int_{\{\rho_j>\delta\}}
\rho_j(t)\,2^{2j}e_j(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{9}
```

For ratio bands \(E_{j,\ell}=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\}\) and

```math
\nu_\ell:=\sum_j\int_{E_{j,\ell}}2^{2j}e_j(t)\,dt,
\tag{10}
```

raw energy/dissipation gives only

```math
\sum_\ell\nu_\ell<\infty .
\tag{11}
```

Gold needs

```math
\sum_\ell2^\ell\nu_\ell<\infty .
\tag{12}
```

This is exactly the selected first-ratio/root-reserve gain.  The half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{13}
```

passes `(11)` and fails `(12)`.  It is not an initial-frequency stack; after the
closed branch removals it represents one-way high-ratio nonlinear transfer.

## 4. Same theorem in paired-carrier form

The paired-carrier note identifies `(9)` as the stopped fresh-source
two-scale estimate

```math
\int_0^{T^*}
\sum_{k>N+M}
2^k a_k^{fresh}(t)\mathcal D_k^{\uparrow,fresh}(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{14}
```

Here \(a_k^{fresh}\) is the lower/material fresh source amplitude and
\(\mathcal D_k^{\uparrow,fresh}\) is the upper active packet stress/dissipation
queue generated by the same original material history.

Equivalently, in continuous scale variables, one needs the same-material
two-scale Carleson bound

```math
\int
\int_{\ell<r/c}
\mathcal A_{\ell,r}^{fresh}(t)\,{d\ell\over\ell}{dr\over r}\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{15}
```

with \(\mathcal A_{\ell,r}^{fresh}\) built from the full
pressure--viscosity--incompressibility--velocity packet before terminal
positive selection.

## 5. Result

The frequency-controlled physical picture is now correctly placed.

It proves that the selected root-reserve obstruction is not caused by:

- infinite initial high-frequency amplitude;
- pure linear heat return;
- subheat refill;
- repeated reuse of an already-spent source direction;
- selector/reselection bookkeeping;
- silent pressure-Hodge kernel invisibility.

After those removals, the exact remaining producer is:

```text
FreshSourceWeightedPairedCarrierBound.A
```

equivalently:

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

The open mathematical line is therefore not another boundary-observability or
initial-frequency theorem.  It is the no-free-upward-transfer estimate `(14)`:
one-way high-ratio fresh nonlinear pressure-stress transfer must have a
weight-beating original-history paired-carrier bound.
