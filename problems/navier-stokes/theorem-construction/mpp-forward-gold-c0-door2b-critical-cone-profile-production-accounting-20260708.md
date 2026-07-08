---
theorem_id: forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Door 2 / critical pressure cone endpoint
status: door-2b-consumer-under-nonseparable-profile-row-admission; not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transverse-restoring-sign-local-no-go-borrowing-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-door-sharp-form-repair-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-gold-stress-flux-bridge-and-landau-liouville-test-20260617.md
completion_truth: >-
  This note attacks the remaining Door-2 endpoint after the fixed smooth-affine
  collar has been paid. The 2026-07-08 VPI pressure non-separability correction
  changes the admission row: pressure is a row of the retained record, not a
  separable bill charged to service. The note now proves only the consumer
  direction after the retained cone has admitted same-record material
  stationarity, no silent pressure-row dropping, point-force/source ownership,
  and the regularity needed for the Landau/Sverak consumer. The annular
  Navier-Stokes residual and angular roughness are not independent purchasable
  bills: residual vanishes once the actual same-field record is stationary in
  cone variables, and sphere regularity is a downstream elliptic/route-out
  issue. Arbitrary-original-data admission remains outside this note.
---

# Door 2b: Critical Cone Profile-Production Accounting

Physical sentence: the last retained endpoint is not a smooth affine collar.
It is a same-fluid critical cone trying to carry one retained VPI record through
every adjacent scale. The pressure row is part of that record: the same \(Q\)
that makes the cone record-sized is the pressure source. A retained zero-loss
cone therefore cannot silently drop its pressure row, drift in material time,
change frame, or hide a point-force parent/source. Once those same-record
defects are removed, the cone is exactly the zero-force stationary
\((-1)\)-homogeneous profile, hence zero.

## 1. The endpoint object

After the adjacent-scale pressure mismatch, the only possible zero-row-loss
wrong-sign bank has the critical form

```math
u(x,t)\sim r^{-1}V(\theta),
\qquad
p(x,t)\sim r^{-2}P(\theta),
\qquad
\nabla^2p(x,t)\sim r^{-4}\mathcal K(\theta).
\tag{D2B.1}
```

Use log-polar Navier-Stokes variables on a retained cone packet:

```math
x=x_0+e^\rho\theta,
\qquad
\tau=e^{-2\rho}(t-t_0),
\qquad
U(\rho,\theta,\tau)=e^\rho u(x,t),
\qquad
\Pi(\rho,\theta,\tau)=e^{2\rho}p(x,t).
\tag{D2B.2}
```

A true degree \(-1\) pressure cone is independent of \(\rho\). A true
stationary cone is independent of \(\tau\), after the lawful Galilean/frame
normalizations have been fixed by the retained packet.

## 2. Strict cone row

The strict Door-2b admission row is not a separable price paid by pressure to
participation. It records the same-field ways a retained cone can fail to be one
stationary VPI record:

```math
\mathsf R_{\rm cone}
\ge
c\int_{\mathcal C}
\left(
|\partial_\rho U|^2
+|\partial_\tau U|^2
+|\dot{\mathcal F}|^2
\right)
d\rho d\theta d\tau
+
c|\Phi_0|.
\tag{D2B.3}
```

Here:

- \(\partial_\rho U\) is adjacent-rung record mismatch / annular collar current.
- \(\partial_\tau U\) is material-time change of the retained record.
- \(\dot{\mathcal F}\) is translation, rotation, selector, or eigenframe drift
  of that same record.
- \(\Phi_0\) is the stress-flux point-force residue at the cone tip.

Two terms from the earlier version are deliberately removed from the bill:

- \(\mathcal R_{\rm NS}\) is not a purchasable bill for an actual solution.
  Once \(\partial_\rho U\), \(\partial_\tau U\), and \(\dot{\mathcal F}\) vanish
  in the retained variables, the annular stationary Navier-Stokes equation is
  the same-field equation itself, with pressure slaved to the same \(U\).
- \(|\nabla_\theta^mU|_{\rm rough}\) is not a payment channel. After an exact
  stationary \((-1)\)-homogeneous weak profile with zero force is obtained on
  annuli, angular smoothness is supplied by the stationary elliptic regularity
  needed to enter the Landau/Sverak consumer, or the nonsmooth/source residue
  routes out through Field/source ownership.

The load-bearing admission theorem is:

```math
\texttt{RetainedCriticalConeProfileProductionBillAdmission.A}
\tag{D2B.3a}
```

Corrected statement. In a lawful retained wrong-sign critical cone, the pressure
row cannot be separated from VPI participation. Every nonzero log-scale record
mismatch, material-time record change, frame/selector drift, or point-force
residue in (D2B.3) is either a retained same-record participation defect or the
claimed child-retained service routes to parent/Field/source/nonparticipation.
The theorem must be derived from the same velocity-pressure field and tower
ownership rule; it is not supplied by writing a norm.

Equivalently, Door 2b now splits into three smaller rows:

```math
\begin{gathered}
\texttt{RetainedConeMaterialStationarityAdmission.A},\\
\texttt{ConePointForceOwnershipOrRouteOut.A},\\
\texttt{ConeStationaryWeakProfileRegularity.A}.
\end{gathered}
\tag{D2B.3b}
```

`RetainedConeMaterialStationarityAdmission.A` includes
`NoSilentPressureRowDropping.A` / `ZPF.21a`: a retained cone with zero row defect
cannot keep record-size VPI content while dropping the pressure row or changing
the material frame between rungs. `ConePointForceOwnershipOrRouteOut.A` says a
nonzero \(\Phi_0\) is owned by the parent/source/Field face, not by a free child
cone. `ConeStationaryWeakProfileRegularity.A` is a consumer regularity row: an
exact stationary zero-force \((-1)\)-homogeneous weak profile retained on
annuli is smooth on \(S^2\), or its singular/source residue is not a retained
smooth-sphere child record.

These rows imply the earlier admission theorem:

```math
\texttt{D2B.3b}
\Longrightarrow
\texttt{RetainedCriticalConeProfileProductionBillAdmission.A}.
\tag{D2B.3c}
```

## 3. Zero row loss produces the exact consumer profile

Assume a retained cone sequence has positive normalized Vieillefosse service
and zero retained cone-row defect:

```math
\mathsf R_{\rm cone}(U_n)\to0.
\tag{D2B.4}
```

The material stationarity terms in (D2B.3) give

```math
\partial_\rho U_n\to0,
\qquad
\partial_\tau U_n\to0
\tag{D2B.5}
```

in the fixed log-cylinder topology. The frame term fixes the modulation, so no
translation, rotation, or selector drift remains. Since these are actual
Navier-Stokes fields and pressure is slaved to the same velocity, the annular
stationary equation is then not an additional bill but the limiting equation:

```math
-\nu\Delta U_n+(U_n\cdot\nabla)U_n+\nabla\Pi_n\to0,
\qquad
\nabla\cdot U_n\to0
\tag{D2B.6}
```

on every annulus in \(\mathbb R^3\setminus\{0\}\). The force-ownership row gives

```math
\Phi_0=0.
\tag{D2B.7}
```

The regularity row then supplies the smooth \(S^2\) representative required by
the Landau/Sverak consumer, or routes the object out as source/Field residue.
Therefore every zero-row-loss retained critical cone tangent is an exact
stationary smooth-sphere \((-1)\)-homogeneous zero-force Navier-Stokes profile:

```math
\begin{gathered}
U(x)=|x|^{-1}V(\theta),\qquad
P(x)=|x|^{-2}P(\theta),\\
-\nu\Delta U+(U\cdot\nabla)U+\nabla P=0
\quad\text{on }\mathbb R^3\setminus\{0\},\\
\nabla\cdot U=0,\qquad
V\in C^\infty(S^2),\qquad
\Phi_0=0.
\end{gathered}
\tag{D2B.8}
```

## 4. Landau/Sverak consumption

The downstream consumer already recorded in the two-door repair is:

```math
\begin{gathered}
U \text{ smooth, divergence-free, stationary, }(-1)\text{-homogeneous},\\
-\nu\Delta U+(U\cdot\nabla)U+\nabla P=0
\quad\text{on }\mathbb R^3\setminus\{0\},\\
\Phi_0=0
\end{gathered}
\Longrightarrow
U\equiv0.
\tag{D2B.9}
```

Thus a retained zero-row-loss critical cone has no nonzero Vieillefosse
service. In the zero-row-defect quotient,

```math
\mathsf R_{\rm cone}=0
\quad\Longrightarrow\quad
\mathsf S_{\rm Vieillefosse}=0.
\tag{D2B.10}
```

Equivalently, after `RetainedCriticalConeProfileProductionBillAdmission.A`,

```math
\texttt{NoRetainedWrongSignCriticalPressureCone.A}
\tag{D2B.11}
```

is discharged.

## 5. Remaining accounting boundary

This note does not say that an arbitrary pressure-bank source, finite jet, or
scalar cone is impossible. It says that a same-fluid retained cone with zero
same-record row defect is forced into the exact zero-force Landau/Sverak
consumer.

The remaining global task is not to price pressure as an external bill. It is
to prove the retained non-separable row admission in (D2B.3b) and insert that
row into the tower accounting without double-counting Door 1 or Door 2a. If
that admission is installed, the Door-2 endpoint chain becomes

```math
\text{fixed smooth-affine collar paid by Door 2a}
\quad+\quad
\text{critical cone killed by Door 2b}
\Longrightarrow
\texttt{NoFreeWrongSignPressureBorrowing.A}.
\tag{D2B.12}
```

Together with Door 1 service persistence, this would give the strict retained
tower inequality \(\mathsf P\ge c\mathsf S\), hence \(c_0>0\) for the retained
strict participation class. The companion global accounting note records that
conditional summation; it does not prove the non-separable pressure-row
admission, `NoSilentPressureRowDropping.A` / `ZPF.21a`, or
`RelayEndpointMaterialTimeLiouville.A`.
