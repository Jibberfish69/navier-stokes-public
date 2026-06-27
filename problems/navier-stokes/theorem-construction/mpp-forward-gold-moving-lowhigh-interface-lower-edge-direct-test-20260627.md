---
theorem_id: forward-gold-moving-lowhigh-interface-lower-edge-direct-test-20260627
status: joint-interface-lower-edge-reduced-to-primitive-pls-no-free-upcrossing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / moving low-high interface
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - MovingLowHighInterfaceSelectedAtom.A
  - MovingLowHighInterfaceLowerEdge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-native-reserve-atom-joint-interface-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nontopstrain-pump-graphdriver-absorption-bridge-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-finalplsfullclockfiniteness-a-globalsamepacketfullclockfromoriginaldata-a-5957499660.md
  - problems/navier-stokes/theorem-construction/mcp-fullmovingsamematerialservicecarrierthetanl1-a-globalsamepacketfullclockfromoriginaldata-a-cee9b9b065.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
  - problems/navier-stokes/source-frontier.yaml
refined_hinge:
  - PrimitivePLSNoFreeUpcrossing.A
  - PrimitivePLSBoundedBelowLyapunov.A
---

# Moving low-high interface lower-edge direct test

The joint-interface target asks for a bounded-below storage for the first
uncharged retained selected birth in the moving low-high pressure-stress /
cubic-collar interface.  This note tests the most direct storage idea and records
the nonduplicate remainder.

## 1. Start from the bounded center storage

For a transported center cutoff \(\phi_C\),

```math
M_C(t)=\int {1\over2}|u(x,t)|^2\phi_C(x,t)\,dx
\tag{1}
```

has an original-data lower and upper bound from the global energy.  The exact
same-fluid identity is

```math
{d\over dt}M_C(t)
+
2\nu\int\phi_C|S|^2\,dx
=
F_C(t),
\qquad
F_C(t):=-\int u\cdot T\nabla\phi_C\,dx .
\tag{2}
```

Taking \(Z_C=-M_C\) gives the correct lower-edge orientation:

```math
dZ_C
+
[F_C]_+\,dt
=
2\nu\int\phi_C|S|^2\,dxdt
+
[F_C]_-\,dt,
\qquad
Z_C\ge -\|u_0\|_2^2/2 .
\tag{3}
```

Thus the center-energy storage would pay the positive annular entrance if the
opposite-sign annular return \([F_C]_-\) were already paid.

## 2. What the installed reductions do to the opposite sign

The repo has already separated the oscillatory return branch from the live
one-way growth branch.  The trajectory and source-frontier records say that
recirculation, backscatter, top-frequency regeneration, subheat refill,
top-strain/coefficient-frame superheat, legal residue, and finite raw
same-material service have been reduced or paid.  In particular, the remaining
branch is not an arbitrary oscillatory signal and not detached annular return.

After those reductions, the non-top-strain pump bridge identifies the unclosed
part as the primitive free-material PLS driver:

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+
dR_N^{paid}.
\tag{4}
```

The driver \(\mathcal M_{<j-C,N}\) is built from strain, pressure Hessian through
the strain equation, coefficient motion, Hodge/Stokes projection motion, and
transported collar motion.  This is exactly the joint low-high interface in the
current hinge.

So the direct center-energy sign split is useful, but it does not close the
joint-interface lower edge.  It says that the storage problem has no remaining
opposite-sign recirculation branch to exploit.  What remains is one-way positive
growth of the primitive PLS driver.

## 3. Why the flux-storage route still fails

The natural annular flux storage \(F_\phi^\sharp\) is not a bounded-below
Lyapunov variable.  Differentiating it gives the same pressure-viscosity-
incompressibility-velocity density:

```math
\left|{d\over ds}F_\phi^\sharp(s)\right|
\le
\mathcal A_\phi^{FA}(s),
\tag{5}
```

where \(\mathcal A_\phi^{FA}\) contains

```math
|\nabla\cdot T^\sharp|\,|T^\sharp|,
\qquad
|U|\,|D_sT^\sharp|,
\qquad
|U|\,|T^\sharp|\,|\nabla V|.
\tag{6}
```

A storage \(Z=-F_\phi^\sharp\) would pay only the positive variation after the
negative variation of \(F_\phi^\sharp\) is controlled and after \(F_\phi^\sharp\)
has an original-data upper bound.  The installed force-action attempts do not
prove those facts from energy.  They reduce the issue to the same material
stress-time variation / full PLS action density.

Thus neither \(M_C\) nor \(F_\phi^\sharp\) gives a closed lower edge by itself:
\(M_C\) removes the bounded-storage obstruction but leaves the one-way primitive
PLS driver; \(F_\phi^\sharp\) sees the full density but lacks the original-data
lower edge.

## 4. Exact nonduplicate remainder

The final PLS full-clock attempt already gives the right algebraic form.  Write

```math
d\Omega_N^{PLS}
=
d\Omega_N^{recirc}
+
d\Omega_N^{grow}
+
d\Omega_N^{finite}.
\tag{7}
```

The recirculation term and finite terms are support-paid.  The live part is

```math
d\Omega_N^{grow}
\simeq
d[\log(1+\mathcal P_N^{mat})]_+.
\tag{8}
```

The currently installed estimate is only an inclusion/accounting law:

```math
d\Omega_N^{grow}
\le
C_N\bigl(
d\Omega_N^{recirc}
+
d\Omega_N^{grow}
+
d\Omega_N^{finite}
\bigr)
+
dR_N^0 .
\tag{9}
```

There is no strict coefficient.  Therefore the next theorem has to be:

```text
PrimitivePLSNoFreeUpcrossing.A
```

Prove a strict noncircular absorption of the one-way growth:

```math
d\Omega_N^{grow}
\le
\theta\,d\Omega_N^{PLS,primitive}
+
dR_N,
\qquad
0\le\theta<1,
\qquad
\int dR_N<\infty .
\tag{10}
```

Equivalently:

```text
PrimitivePLSBoundedBelowLyapunov.A
```

Construct a same-material storage \(\mathscr A_N\), finite at the initial time
and bounded below by original data, satisfying

```math
d\mathscr A_N
+
c_N\,d\Omega_N^{PLS,primitive}
\le
dR_N,
\qquad
\mathscr A_N\ge -C_N(u_0),
\qquad
\int dR_N<\infty .
\tag{11}
```

## 5. Result

`MovingLowHighInterfaceSelectedAtom.A + MovingLowHighInterfaceLowerEdge.A` is not
closed by center-energy storage, annular flux storage, graph-driver attachment,
or fixed-annulus L1 service.  Those checks reduce the hinge to the strict
no-free-upcrossing problem for the primitive free-material PLS driver:

```text
PrimitivePLSNoFreeUpcrossing.A
+
PrimitivePLSBoundedBelowLyapunov.A
```

This is the sharpened Gold obstruction: after recirculation and opposite-sign
return are removed, prove that one-way positive continuation-depth material
record growth cannot keep creating selected low-high interface births without a
bounded-below same-material storage drop or a strict absorption gain.
