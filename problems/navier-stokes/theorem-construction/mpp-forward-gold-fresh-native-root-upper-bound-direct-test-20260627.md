---
theorem_id: forward-gold-fresh-native-root-upper-bound-direct-test-20260627
status: root-upper-bound-reduced-to-fresh-one-way-selected-amplification
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh native root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - FreshNativeRootUpperBound.A
  - SelectedScaleFreshNativeRootReserve.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-selected-scale-lower-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weight-beating-tail-ns-structure-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-log-amplification-carleson-production-target-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-reserve-normal-form-20260626.md
---

# Fresh native root upper bound direct test

The lower edge is now separated:

```math
\omega_Q
\le
C_N\rho_Q^{fresh}
+R_{\rm legal}(Q).
\tag{1}
```

The root upper bound needed for Gold is:

```math
\sum_{Q\subset P}\rho_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{2}
```

This note checks whether `(2)` is already supplied by one of the native
coordinates.

## 1. Visible Schur coordinate

For the pressure-visible quotient, capacity monotonicity gives a genuine
telescoping root bound:

```math
\sum_{Q\subset P}\rho_Q^{vis}
\le
C B_{\rm cap}(P)+R_{\rm legal}(P).
\tag{3}
```

This branch is closed.  It cannot pay the boundary-flat or Schur-silent fresh
source component.

## 2. Silent/exchange coordinate

The silent branch is locally closed by source-origin rigidity:

```math
\omega_Q^{silent}
\le
C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+R_{\rm legal}(Q).
\tag{4}
```

The root upper bound would be

```math
\sum_{Q\subset P}\Omega_Q^{strain/ex}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{5}
```

Equation `(5)` is not installed.  It is the same selected first-ratio /
top-strain-log exchange root reserve that survived the previous audits.

## 3. Hodge/projector coordinate

Projector-first pressure removal gives

```math
\dot{\mathbb P}_A v
=
\mathcal G_A L_A^{-1}\operatorname{div}_a(ABv),
\tag{6}
```

so Hodge/projector motion is driven by the same material gradient
\(B=S+\Omega\), with metric motion depending on \(S\).

This proves attachment:

```math
\rho_Q^{Hodge/proj}
\lesssim
\rho_Q^{strain/frame}+R_{\rm legal}(Q).
\tag{7}
```

It does not give the root bound for the rectified selected projector motion.
After pure rotations are gauged, the remaining strain-frame service is again
the selected one-way material exchange coordinate.

## 4. Annular coordinate

The transported annular identity is exact:

```math
{d\over dt}M_\phi
+2\nu\int\phi |S|^2
=
-\int u\cdot T\nabla\phi.
\tag{8}
```

Thus annular stress is the correct same-fluid carrier.  The storage
\(-M_\phi\) is bounded below by physical energy.  It pays one orientation of
the stress transaction.

The missing root bound is for the rectified fresh selected part:

```math
\sum_{Q\subset P}
\left|\int_{I_Q}\int u\cdot T\nabla\phi_Q\right|_{\rm fresh,sel}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{9}
```

The signed identity `(8)` does not imply `(9)` without the already-separated
no-recirculation and one-way selected-amplification control.  The return branch
is paid; the fresh one-way branch remains.

## 5. Viscous/radius and frequency-native coordinates

Raw heat and frequency estimates give

```math
\sum_\ell \nu_\ell<\infty,
\tag{10}
```

and close entrance, subheat, and recirculation branches.  The selected action
requires

```math
\sum_\ell 2^\ell\nu_\ell<\infty.
\tag{11}
```

The high-ratio one-way transfer branch cancels the heat penalty and returns
exactly `(11)`.  So the frequency-native coordinate is finite only after the
fresh selected amplification theorem is proved.

## 6. Result

The fresh root upper bound is partially closed:

```math
\text{visible Schur quotient}
\quad\text{has root capacity packing.}
\tag{12}
```

Every remaining fresh selected coordinate reduces to the same theorem:

```text
FreshOneWaySelectedAmplificationCarleson.A
```

Plain statement: after pressure-visible capacity, spent-source reuse,
selector/reselection jumps, silent-source zero-cost rigidity, return
recirculation, entrance/legal, and subheat branches are removed, the remaining
fresh one-way selected material amplification has finite original-history
Carleson mass.

In formulas, the live bound is

```math
\sum_{Q\subset P}
\left(
\rho_Q^{strain/ex}
+\rho_Q^{Hodge/proj,sel}
+\rho_Q^{annular,sel}
+\rho_Q^{freq/native,high}
\right)_{\rm fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{13}
```

This is the weight-beating tail law in fresh-native coordinates.  It is the
same content as original-history selected log-amplification Carleson control,
with all stale silent-source, reuse, and selector-jump branches removed.
