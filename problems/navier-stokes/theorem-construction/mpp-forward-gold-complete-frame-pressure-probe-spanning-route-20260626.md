---
theorem_id: forward-gold-complete-frame-pressure-probe-spanning-route-20260626
status: better-route-algebraic-spanning-closed-geometric-availability-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - NoSilentSelectedPressureHodgeCarrier.A
  - PressureActiveSelection.A
  - SelectedSymbolKernelExclusion.A
  - ParentDrop.A
---

# Complete-frame pressure-probe spanning route

This note improves the previous pressure-Hodge symbol route.

## 1. Problem with the one-probe route

For one pressure-Hodge probe at frozen frequency direction `xi`, the symbol sees only

```math
m_{PH}(\xi)Z \simeq {\xi_i\xi_j Z_{ij}\over |\xi|^2}.
```

With `xi=e_1`, a transverse trace-free tensor

```math
Z=\begin{pmatrix}0&0&0\\0&1&0\\0&0&-1\end{pmatrix}
```

has `m_PH(e_1)Z=0` but `Z ne 0`. Thus a single pressure-Hodge probe cannot control arbitrary selected critical-strain tensor action.

## 2. Algebraic repair: finite complete-frame probes

Let `Z` be a symmetric trace-free `3 x 3` tensor. Choose the six unit directions

```math
\mathcal N=
\left\{
 e_1,e_2,e_3,
 {e_1+e_2\over\sqrt2},
 {e_1+e_3\over\sqrt2},
 {e_2+e_3\over\sqrt2}
\right\}.
```

Define the probe map

```math
\mathcal P_{\mathcal N}Z
:=
\bigl(n^T Z n\bigr)_{n\in\mathcal N}.
```

This map is injective on `Sym^2_0(R^3)`. Indeed the first three probes recover the diagonal entries `Z_11,Z_22,Z_33` with trace constraint. The diagonal-pair probes recover the off-diagonal entries:

```math
2Z_{12}=
2\left({e_1+e_2\over\sqrt2}\right)^T
Z
\left({e_1+e_2\over\sqrt2}\right)
-Z_{11}-Z_{22},
```

and similarly for `Z_13` and `Z_23`.

Therefore, by finite-dimensional norm equivalence, there exists `c_N>0` such that

```math
|Z|^2
\le
C_N\sum_{n\in\mathcal N}|n^T Z n|^2.
\tag{CFP.1}
```

So the transverse-kernel counterexample is not fatal if the retained same-material packet supplies enough independent pressure-Hodge probes.

## 3. PDE interpretation

Each scalar `n^T Z n` is exactly the kind of longitudinal contraction seen by a pressure-Hodge Schur defect in direction `n`. Thus a complete-frame family of parent-collar probes would yield

```math
A_{sel}(Q')
\lesssim
\sum_{n\in\mathcal N_Q}
\langle U_Q^{(n)},\mathsf S_Q^{(n)}U_Q^{(n)}\rangle
+R_{legal}(Q),
\tag{CFP.2}
```

provided the actual retained packet contains a probe family `N_Q` comparable to `N` after material-frame transport.

## 4. Exact remaining theorem

The new necessary theorem is not raw pressure-Hodge faithfulness. It is

```text
RetainedCompleteFramePressureProbeAvailability.A
```

Statement:

For every retained high-ratio same-material selected packet, either:

1. the parent-collar pressure-Hodge Schur probes contain a uniformly nondegenerate complete-frame family on the selected critical-strain tensor bundle, so `(CFP.2)` holds; or
2. failure of such probe availability is itself paid by complete-frame variation, material-service action, legal/nonlaminar exit, or another finite original-data ledger.

Equivalently:

```math
A_{sel}(Q')
\le
C\sum_{n\in\mathcal N_Q}
\langle U_Q^{(n)},\mathsf S_Q^{(n)}U_Q^{(n)}\rangle
+C R_{frame/legal/service}(Q).
\tag{CFP.3}
```

## 5. Result

This is better than `PressureActiveSelection.A` as previously stated.

The raw kernel problem is real, but it is a one-probe problem. A finite complete-frame family of pressure-Hodge probes controls every trace-free selected strain mode algebraically. The remaining burden is geometric/dynamical: prove retained packets supply those probes, or prove probe-rank failure is paid by an installed service/frame/legal ledger.

Updated closure chain:

```math
\text{RetainedCompleteFramePressureProbeAvailability.A}
\Longrightarrow
\text{PressureActiveSelection.A}
\Longrightarrow
\text{NoSilentSelectedPressureHodgeCarrier.A}
\Longrightarrow
\text{SelectedActionTraceCoercivity.A}
\Longrightarrow
\text{ParentDrop.A}
\Longrightarrow
\sum_Q A(Q)<\infty.
```