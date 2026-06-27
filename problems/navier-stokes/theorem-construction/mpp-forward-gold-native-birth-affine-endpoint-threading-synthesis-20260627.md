---
theorem_id: forward-gold-native-birth-affine-endpoint-threading-synthesis-20260627
status: native-birth-map-reduced-to-fresh-positive-affine-endpoint-threading-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / native birth charge packing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceWeightedPairedCarrierBound.A
  - PositiveFreshAffineQuotientKill.A
refined_hinge:
  - FreshPositiveAffineEndpointMassKill.A
  - FreshMuNCarlesonEndpointThreading.A
  - FreshEndpointMassShellPairThreading.A
  - FreshTerminalNuNWindowSeedSynchronization.A
branch_defects:
  - SignedStoppedPLSEvolutionIdentity.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-current-square-packing-root-reserve-branch-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-packing-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-tent-affine-quotient-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-positive-affine-endpoint-mass-threading-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-square-packing-branch-gates-audit-20260627.md
effect: >-
  Joins the native birth map with the fresh affine endpoint survivor. The selected-scale
  atom missing from NativeBirthChargePacking.A is not a raw source-channel atom.
  After the DER/AQK split of the fresh scale primitive, the positive affine quotient
  is controlled by the endpoint mass M_0 of the fresh positive stress source. Thus
  the noncircular reserve atom for a first selected birth should be an original-history
  fresh endpoint-mass window, with return/reset reuse paid separately by the already
  isolated branch theorems.
---

# Native birth to fresh affine endpoint threading

This note is a reduction, not a closure.  Gold remains open.

The current map form is

```math
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\tag{1}
```

with

```math
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}+R_{\rm legal}(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{2}
```

and

```math
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{3}
```

The side audits and existing route notes agree on the same point: `(1)`--`(3)`
are not proved by source attachment, raw Bessel packing, spent-source nonreuse,
or the dynamic silent-source correction.  Those facts prevent false reuse and
local zero-cost hiding.  They do not supply the selected-critical weight.

## 1. The selected-scale atom is the actual missing line

For a first retained selected high-ratio birth \(\gamma\), let \(F_\gamma\) be
the fresh original-history visible/silent/exchange increment after spent-source
projection and after the paid carry, entrance/legal, nonlaminar, selector,
silent-exchange, and reselection removals.

Raw freshness gives

```math
\sum_{\gamma\subset P}\|F_\gamma\|_{\mathcal H_{\rm raw}}^2
\le C_N\|Z_P^{orig}\|_{\mathcal H_{\rm raw}}^2+R_{\rm legal}(P).
\tag{4}
```

Gold needs the selected-critical version

```math
\sum_{\gamma\subset P}
w(\gamma)\|F_\gamma\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{5}
```

The fresh half-tail

```math
\|F_\ell\|_{\mathcal H_{\rm raw}}^2
=
{2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2<\infty,
\qquad
\sum_\ell2^\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2=\infty
\tag{6}
```

shows that `(4)` does not imply `(5)`.  Therefore the native atom in `(1)` must
be selected-scale.  It cannot be a raw Hodge/projector, annular, collar, strain,
or frequency-source attachment atom unless that atom also carries the missing
weight.

## 2. DER/AQK exposes the selected-scale atom

The fresh paired-carrier reduction rewrites the critical tent burden as a
one-sided scale primitive.  In logarithmic scale,

```math
F^{fresh}(s,t)
=
(\mathcal V_\kappa\widetilde Z^{fresh})(s,t),
\tag{7}
```

where \(\widetilde Z^{fresh}\) is the positive fresh original-history source
after paid removals.  The weighted lower-triangular split gives

```math
\mathcal V_\kappa\widetilde Z^{fresh}
=
(I-P_w)\mathcal V_\kappa\widetilde Z^{fresh}
+
P_w\mathcal V_\kappa\widetilde Z^{fresh}.
\tag{8}
```

The first term is the derivative-exact part.  The persistent survivor is the
affine quotient

```math
c_F^{fresh}(t,x)
=
A_\kappa M_0^{fresh}(t,x)+B_\kappa M_1^{fresh}(t,x),
\tag{9}
```

with

```math
M_0^{fresh}(t,x)
=
\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\qquad
M_1^{fresh}(t,x)
=
\int_J\sigma\,\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma.
\tag{10}
```

For the positive carrier, the affine kernel is nonnegative on \(J=[\alpha,\beta]\):

```math
c_F^{fresh}(t,x)
=
\int_J{\beta-\sigma\over |I|}
\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\qquad
\widetilde Z^{fresh}\ge0.
\tag{11}
```

Hence

```math
0\le c_F^{fresh}(t,x)
\le
{|J|\over |I|}M_0^{fresh}(t,x).
\tag{12}
```

So the positive affine quotient kill follows from the weighted endpoint mass
estimate

```math
\int_0^{T^*}
H_w(t)\|M_0^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{13}
```

This is the sharper native atom.  The selected-scale reserve for a first birth
should be a fresh positive endpoint-mass window, not a raw source-channel atom.

## 3. Endpoint-threaded reserve map

For each first selected birth \(\gamma\), choose its stopped scale interval
\(J_\gamma\), active weight \(H_{w,\gamma}\), and fresh positive endpoint
mass \(M_{0,\gamma}^{fresh}\).  Define the candidate endpoint reserve atom

```math
\rho_\gamma^{EP}
:=
\int_{I_\gamma}
H_{w,\gamma}(t)
\|M_{0,\gamma}^{fresh}(t)\|_{L_x^2}^2\,dt
+
DER(\gamma)
+
R_{\rm thread}(\gamma),
\tag{14}
```

where \(DER(\gamma)\) is the derivative-exact remainder in `(8)`, and
\(R_{\rm thread}\) is allowed only for already named shell-pair, Carleson,
terminal-window synchronization, stop, or legal threading errors.

The reduced theorem is:

```text
NativeBirthAffineEndpointThreading.A
```

For every \(\gamma\in\Gamma_N(P)\), after paid branch removals,

```math
\omega_\gamma
\le
C_N\rho_\gamma^{EP}
+R_{\rm legal}(\gamma),
\tag{15}
```

and the endpoint atoms pack:

```math
\sum_{\gamma\subset P}\rho_\gamma^{EP}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)
+C\,RetBV(P)+C\,ResetBV(P).
\tag{16}
```

Then `(15)`--`(16)` imply the native birth charge-packing map `(1)`--`(3)`, once
the fixed-core return and strict reset defects are paid.

## 4. Branch accounting

The endpoint atom may not be counted freely across descendants.

If a child inherits the same affine endpoint state, it is in the fixed stopped
core branch.  Reuse must be paid by

```text
SignedStoppedPLSEvolutionIdentity.A
+
StoppedReturnBVFiniteFromOriginalData.A.
```

If a child leaves the parent affine endpoint state, it is in the strict reset
branch.  The new endpoint window must pay

```text
CriticalWeightedResetBVFromOriginalHistory.A
+
LogScaleResetDerivativeCarrierBound.A.
```

Thus `(16)` is not permitted to hide branch payments inside the endpoint mass.
It has to split as

```math
\sum_{\gamma\subset P}\rho_\gamma^{EP}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)
+
C\,StoppedReturnBV(P)
+
C\,CriticalResetBV(P).
\tag{17}
```

The return and reset terms remain open.  This note only identifies the right
selected-scale atom that they have to govern.

## 5. Why this is smaller than the parent theorem

`CriticalFreshSourceTentCarleson.A` asks for the full selected-critical fresh
tent measure.  The fresh DER/AQK split separates that into:

```text
FreshExactScaleDerivativeAbsorption.A
+
PositiveFreshAffineQuotientKill.A.
```

On the positive carrier, `PositiveFreshAffineQuotientKill.A` shrinks again to
`FreshPositiveAffineEndpointMassKill.A`, namely `(13)`.

Therefore the birth-to-reserve map should be built at the endpoint-threading
level:

```text
first selected birth
  -> positive fresh affine endpoint mass
  -> endpoint atom spent once, returned, or reset-paid.
```

This is a real narrowing.  It does not prove Gold, but it prevents the route
from circling among broader names such as native reserve, critical fresh tent,
paired carrier, and affine quotient without naming the selected-scale atom they
share.

## 6. Remaining burden

The live proof work is now:

```text
FreshPositiveAffineEndpointMassKill.A
  via FreshMuNCarlesonEndpointThreading.A
  or FreshEndpointMassShellPairThreading.A
  or FreshTerminalNuNWindowSeedSynchronization.A,
```

plus the separate branch payments

```text
StoppedReturnBVFiniteFromOriginalData.A
+
CriticalWeightedResetBVFromOriginalHistory.A.
```

Gold remains open until those estimates produce `(15)`--`(17)` from original
same-material history before future selected-tail readout.
