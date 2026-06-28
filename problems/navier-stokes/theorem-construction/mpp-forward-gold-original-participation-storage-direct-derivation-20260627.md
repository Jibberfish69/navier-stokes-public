---
theorem_id: forward-gold-original-participation-storage-direct-derivation-20260627
status: direct-derivation-reaches-affine-schur-identity-accretivity-gap-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - OriginalParticipationStorageCoercivity.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-generator-energy-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-gram-schur-participation-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-full-clock-original-history-attempt-20260625.md
effect: >-
  Runs the direct derivation of the remaining storage line after the stopped
  selector has been proved to be a bounded projection of the original
  Navier-Stokes participation law.  The original NS law supplies a same-packet
  signed stress balance and the affine Gram-Schur storage supplies the right
  route variables.  The derivation produces the affine Schur identity, but it
  does not produce the rectified accretive lower bound that would turn selected
  positive production into no-free-upcrossing payment.  The exact missing line
  remains a bounded-below original participation storage / affine Schur
  accretivity theorem for the whole same-material packet.
---

# Original participation storage: direct derivation

The stopped selector is already a bounded parent-known projection of the
original participation law.  The remaining line is to prove that the original
same-material participation density has finite storage:

```math
\Theta_{\rm part}^{\rm orig}
\le
-d\mathfrak M_P
+dR_{\rm legal}
+dStop,
\qquad
\mathfrak M_P\ge0,
\qquad
\mathfrak M_P(\operatorname{root}P)\le C(u_0).
\tag{1}
```

Equivalently,

```math
\int_{\operatorname{Hist}(P)}\Theta_{\rm part}^{\rm orig}
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{2}
```

This note derives what the original Navier-Stokes law gives toward `(1)`.

## 1. Original same-material law

In transported material variables,

```math
D_tU+A^T\nabla_aP
=
\nu\,\operatorname{div}_a(G\nabla_aU),
\qquad
D_A\cdot U=0.
\tag{3}
```

The stress is

```math
T_A=-PI+2\nu S_A.
\tag{4}
```

For a transported material cutoff \(\phi\), the original local energy/stress
identity is

```math
{d\over dt}
\int {1\over2}|U|^2\phi\,da
+
2\nu\int \phi |S_A|^2\,da
=
-\int U\cdot T_A\nabla_A\phi\,da.
\tag{5}
```

Pressure is coupled to the same packet through incompressibility.  It is not a
separate source.  Formula `(5)` is the physical exchange law: interior kinetic
storage, viscous strain, pressure stress, and annular boundary work are one
same-material transaction.

## 2. What `(5)` pays

Integrating `(5)` gives finite raw kinetic energy and finite raw viscous
dissipation:

```math
\sup_{t<T}\|U(t)\|_{L^2}^2
+
2\nu\int_0^T\|S_A(t)\|_{L^2}^2\,dt
\le
\|u_0\|_{L^2}^2.
\tag{6}
```

This pays the unweighted physical dissipation ledger.  It does not by itself
pay the rectified stopped participation density

```math
\Theta_{\rm part}^{\rm orig}
\simeq
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)\,d\sigma dt,
\tag{7}
```

because `(7)` counts normalized positive route action.  The right side of `(5)`
is signed annular stress-work.  Back-and-forth material exchange can have small
net energy change while still carrying positive route action.

Thus the energy identity gives attachment of the action to the original packet,
not the one-way bounded storage `(1)`.

## 3. Affine Gram-Schur storage test

The concrete storage candidate for the surviving scale mode is the affine
moment Schur energy.  On a stopped scale interval \(J\), let

```math
b(s)=\binom{1}{s},
\qquad
\mathsf G_J(t)=\int_Jw(s,t)^{-1}b(s)b(s)^*\,ds,
\tag{8}
```

and

```math
m_J(t,x)=\int_Jb(s)\widetilde Z^{S,new}(s,t,x)\,ds.
\tag{9}
```

Set

```math
\mathfrak S_J(t)
=
\int
\langle m_J,\mathsf G_J^{-1}m_J\rangle\,dx.
\tag{10}
```

The exact material derivative is

```math
D_t\mathfrak S_J
=
2\int\langle \mathsf G_J^{-1}m_J,D_tm_J\rangle\,dx
-
\int\langle
\mathsf G_J^{-1}m_J,
(D_t\mathsf G_J)\mathsf G_J^{-1}m_J
\rangle\,dx.
\tag{11}
```

The first term is motion of the affine moment.  The second term is motion of the
original stopped route metric.  Decompose

```math
D_tm_J=p_J-r_J+e_J,
\tag{12}
```

where \(p_J\) is positive fresh affine production, \(r_J\) is negative return of
the same material potential, and \(e_J\) is derivative-exact, collar, stop,
legal, or already-routed error.

The no-free-upcrossing estimate would follow from this identity only after a
coercive accretivity line is supplied:

```math
H_w\|c_J^+\|_{L_x^2}^2
\lesssim
\langle \mathsf G_J^{-1}m_J,p_J\rangle_+
+dR_{\rm legal}
+dStop .
\tag{13}
```

Under `(13)`, the structural inequality is

```math
H_w\|c_J^+\|_{L_x^2}^2
\le
C[D_t\mathfrak S_J]_+
+C\,H_w\|c_J^-\|_{L_x^2}^2
+C\,\mathfrak S_J\,d\mathcal K_J^{geom}
+dR_{\rm legal}
+dStop.
\tag{14}
```

Here

```math
d\mathcal K_J^{geom}
=
\|\mathsf G_J^{-1/2}
d\mathsf G_J
\mathsf G_J^{-1/2}\|_{\rm op,+}
\tag{15}
```

is generated by turnstile, exchange, covector, connection, reset/order-lock,
stop, and legal motion of the original stopped route.

The original packet supplies the signed pairing in `(11)`--`(12)`. It does not
force `(13)`: positive fresh production may be orthogonal to the current Schur
record or may enter through a new affine direction with tiny raw mass and large
inverse-Gram weight.

## 4. Where the proof stops

To turn `(14)` into `(1)`, the accretivity line `(13)` and the positive part of
\(D_t\mathfrak S_J\) must become bounded-below storage drop. That requires a
same-packet bound of the form

```math
\sum_J\mathfrak S_J(T)
+
\sum_J\int\mathfrak S_J\,d\mathcal K_J^{geom}
+
\sum_J\int H_w\|c_J^-\|_{L_x^2}^2\,dt
\le
C(u_0)+R_{\rm legal}+Stop.
\tag{16}
```

The original NS energy law `(5)` does not supply `(13)` or `(16)`. It supplies
the signed stress-work balance and raw viscous dissipation. The Schur identity
`(11)` puts the selected route variables in the right same-packet storage, but
it still contains the missing accretive lower bound, endpoint Schur size,
negative return, and inverse-Gram route motion. Those terms need a rectified
accretivity/no-free-return theorem of their own.

Equivalently, the formal candidate

```math
\mathfrak M_P
=
\sum_J\left(B_J-\mathfrak S_J\right)
\tag{17}
```

has the desired sign only after \(B_J\) is known to dominate terminal Schur
growth and geometric variation from original data.  Choosing \(B_J\) from the
future terminal action is the downstream full-clock construction and is
circular.

## 5. Mathematical conclusion

The direct derivation gives this checked implication:

```math
\text{bounded terminal Schur size}
+
\text{finite negative return}
+
\text{finite inverse-Gram route motion}
\Longrightarrow
\int\Theta_{\rm part}^{\rm orig}<\infty.
\tag{18}
```

It does not prove those three inputs from the installed original energy law.
So the remaining theorem is exactly:

```text
OriginalParticipationStorageCoercivity.A
```

in the sharper form:

```text
prove a bounded-below same-material Schur/participation storage whose drop pays
the rectified accretive lower bound, terminal Schur growth, negative return,
and inverse-Gram route motion for the whole original
pressure-viscosity-incompressibility-velocity packet.
```

Partial, not Gold closed.  The projection clause is proved; the storage clause
is still the smoothness-bearing mathematical line.
