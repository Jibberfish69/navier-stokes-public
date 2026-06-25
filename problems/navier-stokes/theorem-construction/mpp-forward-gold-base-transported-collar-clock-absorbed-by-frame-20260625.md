---
theorem_id: forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625
status: exact-reduction-installed-base-collar-clock-paid-by-frame-strain
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Removes the base transported-collar motion from the independent superheat
  producer list.  For a material cutoff \(\phi(x,t)=\psi(a)\) with
  \(x=X(a,t)\), the Eulerian collar normal is
  \(\nabla_x\phi=A^\top\nabla_a\psi\).  Its relative variation is governed by
  \(\dot A=-A\nabla u\), hence by the same coefficient-frame clock already
  absorbed into top-strain log storage.  This pays collar position, normal, and
  first-gradient thickness variation at the base level.  It does not pay
  higher collar derivative/tower terms involving \(D_aA,D_a^2A,\ldots\); those
  remain in the pressure/RHS and finite-depth tower service unless separately
  absorbed.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-annulus-bounded-record-controls-flux-variation-20260625.md
---

# Base Transported Collar Clock Absorbed By Frame

Date: 2026-06-25

## 0. Object

Let the annular cutoff be transported by the original material map:

```math
\phi(x,t)=\psi(a),
\qquad
x=X(a,t),
\qquad
\dot X(a,t)=u(X(a,t),t).
\tag{BTC.1}
```

Then

```math
(\partial_t+u\cdot\nabla_x)\phi=0.
\tag{BTC.2}
```

So the collar has no independent transport defect.  Its Eulerian deformation
comes from the material frame.

## 1. Collar gradient is a frame coordinate

With

```math
F=D_aX,
\qquad
A=F^{-1},
\tag{BTC.3}
```

the Eulerian gradient is

```math
\nabla_x\phi
=
A^\top\nabla_a\psi .
\tag{BTC.4}
```

Differentiating materially gives

```math
D_t\nabla_x\phi
=
-(\nabla_xu)^\top\nabla_x\phi .
\tag{BTC.5}
```

Equivalently, using \(\dot A=-A\nabla_xu\),

```math
{d\over dt}\left(A^\top\nabla_a\psi\right)
=
-(\nabla_xu)^\top A^\top\nabla_a\psi .
\tag{BTC.6}
```

This is the same coefficient-frame equation, not a new collar source.

## 2. Relative collar-thickness clock

Let \(n=\nabla_x\phi\).  Since

```math
\nabla_xu=S+\Omega,
\qquad
S=S^\top,
\qquad
\Omega^\top=-\Omega,
\tag{BTC.7}
```

one has

```math
{1\over2}D_t|n|^2
=
-n\cdot S n .
\tag{BTC.8}
```

Therefore

```math
\left|D_t\log |n|\right|
\le
\|S\|_{op}
\le
2\lambda_+ ,
\tag{BTC.9}
```

where \(\lambda_+=\lambda_{\max}(S)\) and the last inequality uses
\(\operatorname{tr}S=0\).

Thus base collar thickness, normal magnitude, and first-gradient variation are
controlled by the same positive top-strain rate.

## 3. Superheat absorption

Define the base collar rate

```math
\Theta_j^{collar,0}
:=
\left|D_t\log|\nabla_x\phi|\right|.
\tag{BTC.10}
```

Then

```math
\Theta_j^{collar,0}\le2\lambda_+ .
\tag{BTC.11}
```

For every \(\delta>0\),

```math
e_j\Theta_j^{collar,0}
\mathbf 1_{\{\Theta_j^{collar,0}>\delta2^{2j}\}}
\le
2e_j\lambda_+
\mathbf 1_{\{\lambda_+>{\delta\over2}2^{2j}\}} .
\tag{BTC.12}
```

The right side is paid by the same strain log storage

```math
B_{j,\delta/2}
=
e_j
\left[
\log{\lambda_+\over(\delta/2)2^{2j}}
\right]_+ .
\tag{BTC.13}
```

So the base transported-collar clock is not an independent producer.

## 4. What remains

This note only absorbs the base collar geometry:

```math
\phi,\quad \nabla_x\phi,\quad \text{collar thickness/normal magnitude}.
\tag{BTC.14}
```

Higher collar derivatives are different.  Since

```math
\nabla_x^2\phi
\quad\text{contains}\quad
D_aA
\quad\text{and higher derivatives contain}\quad
D_a^\beta A,
\tag{BTC.15}
```

their material variation belongs to the finite-depth coefficient/velocity/
pressure tower.  They are not paid by `(BTC.12)` unless the corresponding
tower record is also absorbed.

After this reduction, the remaining collar-side producer is only the
higher-derivative collar/tower service, not the base transported collar motion.
