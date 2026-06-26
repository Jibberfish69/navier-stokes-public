---
theorem_id: forward-gold-strain-vorticity-combined-storage-test-20260625
status: direct-test-installed; combined-strain-vorticity-storage-does-not-close-primitive-positive-variation
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the natural combined storage after the projector-first pressure
  elimination and the R-driver strain-vorticity recombination.  Enstrophy pays
  the positive vorticity-compression orientation, and the top-strain logarithmic
  storage pays pure Riccati self-stretch.  The combined storage still does not
  control the localized rectified strain-vorticity material-record variation:
  the remaining vorticity-stretching / strain-rotation / viscous-shell
  interface is the primitive graph-compatible PLS driver itself.  Thus the
  pressure/collar sector stays closed as a sector reduction, but the full MPP
  gold closure still requires finite positive variation of the primitive
  material deformation record.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projector-first-pressure-elimination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rdriver-strain-vorticity-recombination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-strain-riccati-log-storage-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
---

# Strain-Vorticity Combined Storage Test

Date: 2026-06-25

## 0. Object

After projecting first, pressure is no longer a top-order tangent variable.
After the R-driver recombination,

```math
D_tR
=
D_t\operatorname{tr}(S^2)
+
D_t\operatorname{tr}(\Omega^2),
\qquad
R=\operatorname{tr}(B^2),
\qquad
B=S+\Omega .
\tag{SVC.1}
```

So the remaining top-order graph-compatible driver is the signed
strain-vorticity material-record variation, not a pressure/collar source.

The question in this note is whether the two natural storages together pay its
rectified positive variation.

## 1. The vorticity orientation is paid

Since

```math
\operatorname{tr}(\Omega^2)=-{1\over2}|\omega|^2,
\tag{SVC.2}
```

positive variation of \(\operatorname{tr}(\Omega^2)\) is negative variation of
enstrophy.  On a transported packet, with the usual collar and viscous
integration-by-parts terms,

```math
\left[d\operatorname{tr}(\Omega^2)\right]_+
\le
d\left[-{1\over2}|\omega|^2\right]_+
+dD_\omega^{vis}
+dR^{collar/legal}.
\tag{SVC.3}
```

Equivalently, the bounded-below storage

```math
E_\omega={1\over2}|\omega|^2\ge0
\tag{SVC.4}
```

pays the vorticity-compression orientation.  This is already installed in the
R-driver recombination note.

## 2. The pure top-strain self-stretch is paid

For a top strain eigenpair \(Se=\lambda e\),

```math
D_t\lambda
=
-\lambda^2
+|\Omega e|^2
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S\,e .
\tag{SVC.5}
```

On the superheat region \(\lambda>\delta2^{2j}\), the installed logarithmic
storage

```math
B_j=e_j
\left[
\log{\lambda\over\delta2^{2j}}
\right]_+
\tag{SVC.6}
```

gives

```math
dB_j+e_j\lambda\,dt
\le
(m_j-d_j)L_j\,dt
+e_j{|\Omega e|^2-e\cdot\nabla^2p\,e+\nu e\cdot\Delta S\,e\over\lambda}\,dt .
\tag{SVC.7}
```

Thus the pure Riccati self-stretch part is paid by a bounded-below storage.

## 3. The combined storage does not close the rectified record

The natural combined storage is

```math
\mathscr B_{SV,j}
=
B_j+c_\omega E_{\omega,j},
\qquad
c_\omega>0.
\tag{SVC.8}
```

This storage is bounded below.  Differentiating `(SVC.8)` combines `(SVC.7)`
with the vorticity energy identity

```math
{1\over2}{d\over dt}\|\omega_j\|_2^2
+D_{\omega,j}^{vis}
=
\int \omega_j\cdot S\omega_j
+R_{\omega,j}^{collar/legal}.
\tag{SVC.9}
```

The result pays two real pieces:

```math
e_j\lambda_+\,dt
\quad\text{and}\quad
\left[d\operatorname{tr}(\Omega^2)\right]_+ .
\tag{SVC.10}
```

But the remaining terms are still

```math
(m_j-d_j)L_j,
\qquad
e_j{|\Omega e|^2-e\cdot\nabla^2p\,e+\nu e\cdot\Delta S\,e\over\lambda},
\qquad
\int \omega_j\cdot S\omega_j .
\tag{SVC.11}
```

After the projector-first and R-driver recombination, `(SVC.11)` is not a
pressure residue.  It is the localized rectified strain-vorticity interface of
the same material packet.

The Betchov identity gives a signed global relation between
\(\operatorname{tr}(S^3)\) and \(\omega\cdot S\omega\), but it does not control
the positive part of `(SVC.11)` on transported annular shells.  Therefore no
choice of the fixed coefficient \(c_\omega\) converts `(SVC.8)` into a
bounded-below storage paying the full rectified driver.

## 4. Placement result

This test closes one possible false hope:

```math
\boxed{
B_j+c_\omega E_{\omega,j}
\text{ does not produce the finite graph-compatible full PLS clock.}
}
\tag{SVC.12}
```

It also preserves the correct sector placement:

```math
\boxed{
\text{the remaining driver is not pressure/collar; it is the positive
localized strain-vorticity material-record variation.}
}
\tag{SVC.13}
```

So the current gold frontier is still

```math
\boxed{
\int_0^{T_*}
d\left[
\operatorname{tr}(S_N^2)+\operatorname{tr}(\Omega_N^2)
\right]_+
<\infty
}
\tag{SVC.14}
```

in the graph-compatible material tower, equivalently finite positive variation
of the primitive material deformation record after pressure elimination,
normal Schur defect, top-strain Riccati storage, vorticity-compression
storage, viscosity, annular stress, Hodge/collar, recirculation, and legal
terms have been separated.

This note is therefore not a closure theorem.  It is the exact audit that the
remaining primitive driver has not been accidentally paid by the obvious
combined strain-vorticity storage.
