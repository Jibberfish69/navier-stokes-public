---
theorem_id: forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Door 2 / critical pressure cone endpoint
status: door-2b-consumer-under-profile-production-bill-admission; not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transverse-restoring-sign-local-no-go-borrowing-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-door-sharp-form-repair-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-gold-stress-flux-bridge-and-landau-liouville-test-20260617.md
completion_truth: >-
  This note attacks the remaining Door-2 endpoint after the fixed smooth-affine
  collar has been paid. It proves only the consumer direction: if the retained
  cone admits the strict profile-production bill charging log-scale drift,
  material-time drift, frame modulation, annular Navier-Stokes residual, angular
  roughness, and point-force/source ownership in the same cone, then zero
  payment produces an exact stationary smooth-sphere (-1)-homogeneous
  zero-force profile, and the Landau/Sverak consumer gives u=0. The
  load-bearing open theorem is the admission of that profile-production bill as
  legitimate retained strict participation currency, with no double counting in
  the tower. Arbitrary-original-data admission remains outside this note.
---

# Door 2b: Critical Cone Profile-Production Accounting

Physical sentence: the last retained endpoint is not a smooth affine collar.
It is a same-fluid critical cone trying to carry a wrong-sign pressure bank
through every adjacent scale. If it is really retained at zero bill, it cannot
drift in scale, drift in material time, rotate frames, hide a source residue,
or borrow a point force. With all of those payments removed, it is exactly the
zero-force stationary \((-1)\)-homogeneous profile, hence zero.

## 1. The endpoint object

After the adjacent-scale pressure mismatch, the only possible zero-bill
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

## 2. Strict cone bill

The strict profile-production bill on the retained cone must charge exactly
the same-fluid ways a cone can avoid becoming an exact zero-force profile:

```math
\mathsf P_{\rm cone}
\ge
c\int_{\mathcal C}
\left(
|\partial_\rho U|^2
+|\partial_\tau U|^2
+|\dot{\mathcal F}|^2
+|\mathcal R_{\rm NS}|^2
+|\nabla_\theta^m U|^2_{\rm rough}
\right)
d\rho d\theta d\tau
+
c|\Phi_0|.
\tag{D2B.3}
```

Here:

- \(\partial_\rho U\) is adjacent-rung mismatch / annular collar current.
- \(\partial_\tau U\) is material-time current in the retained packet.
- \(\dot{\mathcal F}\) is translation, rotation, selector, or eigenframe drift.
- \(\mathcal R_{\rm NS}\) is the stationary Navier-Stokes residual on the
  annular cone after the pressure is slaved to the same velocity field.
- \(|\nabla_\theta^mU|_{\rm rough}\) is the strict atom angular regularity
  defect needed to enter the smooth-sphere Landau/Sverak consumer.
- \(\Phi_0\) is the stress-flux point-force residue at the cone tip.

None of these is a detached scalar proxy. Each is a same-field way the retained
velocity-pressure cone fails to be an exact, smooth, zero-force stationary
Navier-Stokes profile.

The load-bearing admission theorem is:

```math
\texttt{RetainedCriticalConeProfileProductionBillAdmission.A}
\tag{D2B.3a}
```

Statement. In a lawful retained wrong-sign critical cone, every nonzero
log-scale drift, material-time drift, frame modulation, annular
Navier-Stokes residual, angular roughness defect, or point-force/source residue
appearing in (D2B.3) is either a legitimate same-field strict participation
payment on that cone, or the claimed child-retained service routes to
parent/Field/source/nonparticipation. The theorem must be derived from the
same velocity-pressure field and the tower ownership rule; it is not supplied
by writing the norm in (D2B.3).

## 3. Zero payment produces the exact consumer profile

Assume a retained cone sequence has positive normalized Vieillefosse service
and

```math
\mathsf P_{\rm cone}(U_n)\to0.
\tag{D2B.4}
```

The first two terms in (D2B.3) give

```math
\partial_\rho U_n\to0,
\qquad
\partial_\tau U_n\to0
\tag{D2B.5}
```

in the fixed log-cylinder topology. The frame term fixes the modulation, so no
translation, rotation, or selector drift remains. The residual term gives

```math
-\nu\Delta U_n+(U_n\cdot\nabla)U_n+\nabla\Pi_n\to0,
\qquad
\nabla\cdot U_n\to0
\tag{D2B.6}
```

on every annulus in \(\mathbb R^3\setminus\{0\}\). The angular regularity term
gives a smooth \(S^2\) limit after compactness. The flux term gives

```math
\Phi_0=0.
\tag{D2B.7}
```

Therefore every zero-payment retained critical cone tangent is an exact
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

Thus a retained zero-payment critical cone has no nonzero Vieillefosse service.
In the zero-bill quotient,

```math
\mathsf P_{\rm cone}=0
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
strict bill is forced into the exact zero-force Landau/Sverak consumer.

The remaining global task is bill admission: the terms in (D2B.3) must be
proved legitimate strict participation payments and inserted into the tower
accounting without double-counting Door 1 or Door 2a. If that admission is
installed, the Door-2 endpoint chain becomes

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
conditional summation; it does not prove
`RetainedCriticalConeProfileProductionBillAdmission.A`.
