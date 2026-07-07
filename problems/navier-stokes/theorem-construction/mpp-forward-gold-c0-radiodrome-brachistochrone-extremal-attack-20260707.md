---
theorem_id: forward-gold-c0-radiodrome-brachistochrone-extremal-attack-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / radiodrome / brachistochrone extremal attack
status: strict-reduction-brachistochrone-attack-completed-to-channel-admission
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
target_object:
  - RadiodromeTowerRelayDefect
  - SameFluidRelayBrachistochroneFunctional.A
  - RecordFeedingSurplusPerronClassExclusion.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-surplus-zero-unit-cycle-kernel-test-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-feeding-perron-circulation-normal-form-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-high-frequency-transfer-surplus-cycle-equivalence-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-perron-circulation-fourbody-coercivity-20260707.md
completion_truth: >-
  This note completes the proposed brachistochrone attack as a formal
  same-fluid extremal reduction. It does not replace radiodrome. Radiodrome is
  the unpaid tower-relay defect coordinate dL_rad; the brachistochrone principle
  is the minimization of surplus bill among retained material-time relay paths
  with one unit of positive record service. If the normalized infimum is
  positive, the existing c_0 chain closes. If the infimum is zero, compactness
  and certificate closure produce a cheapest free relay path: a retained
  zero-surplus material-time extremal with positive record service. After the
  already installed finite-chart reductions, that extremal is exactly a
  record-feeding surplus-zero Perron class / high-frequency pressure-stress
  surplus cycle. The retained Perron four-body theorem proves that such a class
  cannot hide after positive channels are admitted as same-carrier
  three-measure packets. Therefore the completed attack lands on the same first
  unproved Navier-Stokes producer: FullTowerPositiveChannelThreeMeasureAdmission.A.
  The new insight is method-level, not closure-level: the brachistochrone move
  selects the sharp zero-surplus witness and turns the c_0 failure into an
  extremal boundary problem; it supplies no independent payer unless it proves
  channel admission, compact certified passage, or zero-surplus rigidity.
---

# Radiodrome-brachistochrone extremal attack

## 1. Same physical object

The physical object is one same-fluid Navier-Stokes history, read along a
retained material participation tower before the selected positive record is
counted. Transport, pressure, viscosity, incompressibility, sign, scale,
alignment, material time, and the selected record all stay inside that one
history.

Radiodrome supplies the coordinate of the possible failure:

```math
dR_N^+
\le
C\,dA_{4B,N}+dL_N^{rad}.
\tag{RBE.1}
```

Here \(dL_N^{rad}\) is the positive material-record relay growth that has not
been retained as same-packet four-body payment, strict loss, selected activity,
or legal residual.

The brachistochrone idea does not change this object. It asks for the cheapest
lawful same-fluid way to carry one unit of that relay service.

## 2. The variational functional

Let \(\mathcal A\) be the retained same-fluid material-time relay class after
the current admissions and quotients have been imposed: same tower, same parent
packet, retained finite parent-face chart, exact projector/chart license,
theta-payer admission when used, and legal/stop removal or charge.

For \(Z\in\mathcal A\), define the positive record service and surplus bill

```math
R(Z):=\int_Z dR_N^+,
\qquad
B(Z):=\int_Z
\left(dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}\right).
\tag{RBE.2}
```

The same-fluid relay brachistochrone value is

```math
\beta
:=
\inf\{B(Z):Z\in\mathcal A,\ R(Z)=1\}.
\tag{RBE.3}
```

This is the right extremal problem because \(R\) is the upward record service
and \(B\) is the same-packet bill currency that must stop free upward relay.
It is the variational form of the parent-owned positive record bill question.

## 3. Positive infimum closes the existing chain

If \(\beta>0\), then by homogeneity and subdivision on retained windows,

```math
B(Z)\ge\beta R(Z)
\tag{RBE.4}
```

for every retained normalized relay path in the class. This is exactly the
bill-currency estimate used by the current matrix criterion:

```math
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{RBE.5}
```

The installed consequence is

```math
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}
\Longrightarrow
c_0>0 ,
\tag{RBE.6}
```

with \(c_0\) read in the existing normalization of the tower-relay margin.

So a positive brachistochrone value is not a new proof route. It is the same
margin written as an extremal principle.

## 4. Zero infimum produces the fastest free relay

Assume instead that \(\beta=0\). Then there is a normalized sequence
\(Z_j\in\mathcal A\) with

```math
R(Z_j)=1,
\qquad
B(Z_j)\to0.
\tag{RBE.7}
```

The completed attack has only two branches.

First, if compactness, same-solution certificate closure, retained charting,
material-time shift-hull closure, theta-payer admission, terminal window
control, legal/stop removal, or same-parent tower ownership fails, the sequence
has already left the retained in-class problem. That failure is charged to the
named legal/stop, Pack, Part, Field, selector, chart, or certificate route-out.

Second, if those structures hold, lower semicontinuity gives a retained
material-time extremal \(Z_*\) with

```math
R(Z_*)=1,
\qquad
B(Z_*)=0
\quad\text{in surplus currency}.
\tag{RBE.8}
```

This is the brachistochrone object: the fastest free relay. It is a positive
record-service path whose same-packet strict surplus has vanished.

## 5. Extremal meaning inside the one-field story

The Euler-Lagrange content should be read physically before it is read as a
formal variational equation. At \(Z_*\), every admissible first-order attempt to
move the same packet's relay into cheaper pressure-viscosity alignment has
already been exhausted. The path can keep one unit of record service only by
living on the zero-surplus equality face of the same pressure-viscous tower.

Formally, for admissible retained variations \(\dot Z\) preserving the
Navier-Stokes tower constraint

```math
D_tU_k=-\nabla^{k+1}p+\nu\Delta U_k+\mathcal C_k ,
\tag{RBE.9}
```

the constrained extremal satisfies a calibrated first-variation condition

```math
\delta B(Z_*)=\lambda\,\delta R(Z_*)
\tag{RBE.10}
```

with all boundary, chart, legal, stop, and certificate variations either fixed
by the retained class or charged as route-outs. Equation `(RBE.10)' is useful
only after the one-field constraints are retained; detached geodesic or
pressure-Hessian extremals are not the object.

## 6. Identification with the current frontier

The zero-surplus extremal `(RBE.8)' is the same object already isolated by the
current c0 reductions.

In the finite retained parent-face chart, absence of a positive bill margin
gives a nonnegative feedback obstruction

```math
X_P\ge0,
\qquad
\ell_P\!\cdot X_P=1,
\qquad
X_P\le K_PX_P .
\tag{RBE.11}
```

The Perron normal form converts `(RBE.11)' into a record-feeding strongly
connected class \(C\) with

```math
\rho(K_C)\ge1 .
\tag{RBE.12}
```

In the ratio-one compact case, this class carries a balanced Perron edge
circulation. This is the finite retained-chart version of the radiodrome
zero-surplus recurrence, and the high-frequency pressure-stress transfer note
identifies it with the last retained theta branch:

```math
\texttt{HighFrequencyPressureStressSurplusCycleRigidity.A}
\quad\Longleftrightarrow\quad
\texttt{RecordFeedingSurplusPerronClassExclusion.A}.
\tag{RBE.13}
```

Thus the brachistochrone extremal does not create a new terminal witness. It
selects the existing one.

## 7. Where the attack lands

The retained Perron four-body theorem has already paid the edge-admitted
branch: once every positive edge of the Perron circulation is retained as a
same-carrier positive/negative/current three-measure packet, the circulation
posts positive four-body activity and cannot be a zero-surplus extremal.

Therefore the completed brachistochrone attack lands on the pre-readout
admission theorem:

```math
\boxed{
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
}
\tag{RBE.14}
```

Statement. Every positive generated tower-record channel from the same material
participation tower is retained before compactness as a same-carrier
three-measure packet \((\mu^A,\mu^N,\mu^J)\), or else it is charged to
\(B\), legal, stop, Pack, Part, or Field.

With `(RBE.14)', the extremal branch is impossible:

```math
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
\Longrightarrow
\texttt{RecordFeedingSurplusPerronClassExclusion.A}
\Longrightarrow
\beta>0
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}
\Longrightarrow
c_0>0 .
\tag{RBE.15}
```

## 8. Findings

1. Radiodrome and brachistochrone are not competing objects. Radiodrome is the
   unpaid relay coordinate \(dL_N^{rad}\). Brachistochrone is the extremal
   method that tries to minimize same-packet surplus bill at fixed radiodrome
   service.

2. The variational attack is formally complete as a dichotomy: either the
   normalized surplus infimum is positive and the existing c0 chain closes, or
   a cheapest free relay extremal exists after compactness.

3. That extremal is not a standalone self-similar/DSS profile and not a local
   pressure-Hessian chaser. It is a same-fluid material-time zero-surplus
   record-service path.

4. In the retained finite chart, the extremal is exactly the record-feeding
   surplus-zero Perron class / high-frequency pressure-stress surplus cycle.

5. Branching Perron cancellation is not an independent escape after channel
   admission. Retained positive Perron edges force four-body total variation.

6. The first unproved Navier-Stokes producer remains the same:
   `FullTowerPositiveChannelThreeMeasureAdmission.A`. The brachistochrone attack
   sharpens why that is the wall: it is the boundary condition needed to stop
   the fastest free relay from living outside the paid same-carrier packet.

No \(c_0\) closure is claimed here. The result is a completed extremal
reduction and a sharper explanation of why the open line is channel admission,
not radiodrome definition, Perron branching, or a separate variational geometry.
