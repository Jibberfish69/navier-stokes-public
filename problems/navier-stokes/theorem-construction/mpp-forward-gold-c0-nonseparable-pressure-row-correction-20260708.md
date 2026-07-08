---
theorem_id: forward-gold-c0-nonseparable-pressure-row-correction-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / VPI pressure non-separability / correction
status: correction-note; retypes-endpoint-source-bound; no-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vpi-pressure-non-separability-reading-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-endpoint-handoff-from-fixed-sphere-source-bound-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-long-chain-endpoint-handoff-live-edge-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-fixed-sphere-odd-pressure-current-nullspace-test-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-pressure-row-adjoint-range-test-20260708.md
completion_truth: >-
  This note records the correction to the endpoint/source-bound framing. The
  previous formulation still separated the pressure source from participation
  by asking for a linear source to be admitted into an odd bill. Under VPI
  pressure non-separability, that is the wrong coordinate. The same Q that
  makes the retained record is its pressure row. The fixed-sphere computation
  is row visibility; the axial rigid-spin obstruction to the static
  pressure-only certificate is repaired by adjoining the same-record frame row,
  while non-axial skew motion requires full material-frame row admission. The
  remaining c0 route burdens are combined-row persistence, no silent
  row-dropping through retained tower passage, and relay-endpoint material-time
  Liouville. The exact critical-cone elliptic ownership subcase is now proved:
  on a degree -1 cone the pressure row is fixed by -(Delta_{S^2}+2)P=Q_V
  modulo the l=1 parent/source harmonic row, and an l=1 same-scale source forces
  log-scale pressure drift.
---

# Non-separable pressure-row correction

Physical sentence. A retained VPI participant does not carry Vieillefosse
record content and then purchase pressure response from outside itself. The
same current strain-vorticity content \(Q\) that makes it a record is the
source of its pressure row:

```math
-\Delta p=Q.
\tag{NPC.1}
```

So the old cell

```math
\text{record-size participation}
\quad+\quad
\text{transverse pressure channel zeroed at zero bill}
\tag{NPC.2}
```

is not a worst case. It is partial tower membership: the definition retained the
record and dropped one of the rows that makes it a VPI record.

## 1. What was wrong in the prior endpoint note

The prior endpoint note introduced
`LinearPressureCurrentSourceIsOddBill.A`. That was the same separability error
in sharper clothing. It treated the fixed-sphere pressure source as a readout
that later had to enter an external bill.

The corrected reading is:

```math
\texttt{RetainedPressureRowPersists.A:}
\qquad
\text{retained record}+[M']_+>0
\Longrightarrow
\text{own pressure row nondegenerate,}
\tag{NPC.3}
```

up to typed relay or route-out. This is not a price statement. It is a
membership statement inside one record.

## 2. What the fixed-sphere computation now means

At the affine Vieillefosse sphere,

```math
q(\theta)=\theta\cdot S\theta,\qquad S=\operatorname{diag}(1,1,-2),
\tag{NPC.4}
```

the calculation gives

```math
|M'(j)|\le C_S\|L_Sj\|_{L^2(S^2)}.
\tag{NPC.5}
```

This says that, in the fixed-sphere register, positive cubic drop cannot be
hidden while the full linear own pressure row is silent. It is a finite
row-visibility computation. The sharpened form is the adjoint certificate

```math
L_S^*\Psi=6q\nabla_{S^2}q,\qquad \Psi={4\over5}(3q-2),
\tag{NPC.5a}
```

so the positive cubic flux lies in the adjoint range of the own pressure-row
operator at the affine Vieillefosse sphere.

It does not prove \(c_0>0\). It must still pass through retained scale
compactness and same-field history.

## 3. The corrected trichotomy

For a long same-affine chain, the endpoint now has three readings:

```math
\text{own row persists}
\quad\vee\quad
\text{borrowed harmonic row is the parent's relay}
\quad\vee\quad
\neg\mathrm{Part}.
\tag{NPC.6}
```

The harmonic borrowed piece \(p_K\) has no same-scale interior source, so it is
not a detachable pressure bank. It is the parent's row. Iterating that relay
leaves the infinite marginal tower, which is the route-b material-time Liouville
object.

## 4. Remaining load

The correction does not close \(c_0\). It removes the separable fake worst case
and leaves two real proof obligations:

```math
\texttt{NoSilentPressureRowDropping.A}
\tag{NPC.7}
```

Retained VPI records cannot lose the pressure row through rung passage or
compactness while retaining service.

```math
\texttt{RelayEndpointMaterialTimeLiouville.A}
\tag{NPC.8}
```

The parent-row relay cannot continue forever as a retained marginal tower.

Those are the current live burdens. The fixed-sphere \(B1/K(\theta)\) nullspace
test is the finite computation both burdens point at, not a source-to-payment
conversion. In the corrected language, the next finite test is whether the
adjoint certificate persists for retained \(w=q+\eta\), or whether the
perturbation is necessarily visible in another retained VPI row or in the
parent relay. The retained-sphere adjoint-range form of that test is recorded
in `mpp-forward-gold-c0-retained-pressure-row-adjoint-range-test-20260708.md`.
That note also shows that affine skew motion added to the affine strain is not
a pressure-row counterexample. For \(\Omega x=b\times x\), the skew adjoint
term is exactly owned by the same-record material-frame rows: rigid spin and
strain-pattern turnover. Thus `AffineFullMaterialFrameRowCertificate.A` is
proved at the affine sphere. For retained \(w=q+\eta\), the pressure-only test
is replaced by `RetainedFullMaterialFrameRowAdmission.A` plus the combined-row
test `RetainedCombinedRowAdjointRangePersistence.A`.

The exact critical-cone pressure row has one additional closed subcase, recorded
in
`mpp-forward-gold-c0-critical-cone-pressure-row-elliptic-ownership-20260708.md`.
For

```math
u=r^{-1}V(\theta),\qquad p=r^{-2}P(\theta),\qquad Q[u]=r^{-4}Q_V(\theta),
\tag{NPC.9}
```

the slaved pressure equation is

```math
-(\Delta_{S^2}+2)P=Q_V.
\tag{NPC.10}
```

The kernel is exactly the \(\ell=1\) harmonic row, which has no same-scale
interior source and is therefore parent/source/relay material. A same-scale
\(\ell=1\) component of \(Q_V\) cannot be hidden by a homogeneous \(r^{-2}\)
pressure; it forces an \(r^{-2}\log r\) pressure term, hence log-scale row
drift. Thus an exact zero-row-loss cone cannot keep its same-scale pressure
source while silently dropping the pressure row. The open part of
`NoSilentPressureRowDropping.A` is the retained compactness/material-time
passage into that exact cone, not the elliptic ownership of the exact cone
itself.
