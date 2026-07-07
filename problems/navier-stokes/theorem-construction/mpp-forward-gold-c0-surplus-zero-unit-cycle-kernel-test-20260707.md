---
theorem_id: forward-gold-c0-surplus-zero-unit-cycle-kernel-test-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / radiodrome / unit-cycle kernel test
status: proved-conditional-kernel-application-and-isolated-surplus-zero-obstruction
target_object:
  - AbsoluteZeroUnitCycleKernelApplication.A
  - RecordAdmittedSurplusZeroUnitCycleRigidity.A
  - RecordAdmittedZeroBillUnitCycleExclusion.A
  - ZeroLossTowerRelayRigidity.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-admitted-zero-bill-unit-cycle-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
completion_truth: >-
  This note tests the tempting collapse "unit zero-bill cycle + zero-bill
  relay-record kernel => c_0". The collapse is valid only under an extra
  absolute-zero realization hypothesis: the unit Perron cycle must be realized
  by a retained same-fluid relay window whose selected record is the kernel
  record and whose Field, four-body, and viscous bills vanish as measures. Under
  that hypothesis the kernel immediately excludes the cycle. The current
  radiodrome/unit-cycle sources do not supply that hypothesis. They identify a
  zero-surplus, ratio-one, scale-covariant cycle: dissipation, pressure
  re-aiming, Field following, and signed four-body exchange may all be nonzero
  while their strict surplus/reserve is zero. The zero-bill kernel uses absolute
  zero in its horizontal-freeze and ratchet-removal steps, so it does not yet
  exclude the ratio-one cycle. The active smaller theorem is therefore
  RecordAdmittedSurplusZeroUnitCycleRigidity.A, equivalently an
  AbsoluteZeroAdmissionForRecordAdmittedUnitCycle.A route-out/upgrade theorem.
  Proving that theorem gives RecordAdmittedZeroBillUnitCycleExclusion.A and then
  the existing c_0 chain; current sources do not prove it and no actual
  retained Navier-Stokes counterexample is produced.
---

# Surplus-zero unit cycle kernel test

## 1. Same physical object

The physical object is one retained same-fluid parent packet before positive
record readout. The record is a one-way scale-translation event on the packet's
participation tower. The three bills are the visible ways this event can stop
being free:

```math
B=dE^{Field}+dA_{4B}+dVisc .
\tag{SZU.1}
```

The zero-bill relay-record kernel proves a statement about **absolute** zero:

```math
dE^{Field}=dA_{4B}=dVisc=0
\quad\Longrightarrow\quad
dR_N^+=0
\tag{SZU.2}
```

inside the retained class, after the affine/co-rotating common-mode quotient and
the legal/stop exits.

The radiodrome and finite matrix surfaces are testing a different zero unless
an extra theorem upgrades it: **surplus** zero. A ratio-one scale-covariant
profile can have nonzero viscosity, nonzero pressure re-aiming, nonzero Field
following, and nonzero signed exchange while the strict surplus/reserve is zero.

## 2. The tempting proof and the conditional theorem

The finite parent-face unit cycle has

```math
x_P\ge0,\qquad
\ell_P\!\cdot x_P=1,\qquad
dB_P=0,\qquad
x_P\le K_Px_P .
\tag{SZU.3}
```

The tempting proof is to read \(\ell_P\!\cdot x_P=1\) as \(R(W)=1\), read
\(dB_P=0\) as \(B(W)=0\), and apply the kernel. That proof is correct under the
following stronger hypothesis.

**AbsoluteZeroUnitCycleKernelApplication.A.** Suppose a tuple `(SZU.3)' is
realized by a retained same-fluid relay window \(W\), on the same selected
record channel, with

```math
R(W)=\ell_P\!\cdot x_P>0
\tag{SZU.4}
```

and with actual payer measures

```math
dE^{Field}(W)=0,\qquad
dA_{4B}(W)=0,\qquad
dVisc(W)=0
\tag{SZU.5}
```

after the legal/stop quotient. Then the tuple is impossible.

Proof. The hypotheses `(SZU.4)'--`(SZU.5)' are exactly the zero-bill kernel
hypotheses with positive retained relay record. The kernel gives \(dR_N^+(W)=0\),
contradicting \(R(W)>0\). Therefore an absolute-zero retained unit cycle cannot
exist. \(\square\)

Thus the kernel is strong enough for the absolute-zero version of the unit-cycle
problem.

## 3. Where the proof fails for the current unit cycle

The checked unit-cycle and radiodrome files do not give `(SZU.5)'. They give
zero **surplus** in the critical, scale-covariant bill currency.

In the finite matrix language, \(dB_P=0\) says the retained parent-face
circulation has no strict reserve left after the face payments are accounted
for. It does not say the physical payer measures vanish. A ratio-one loop can
still have

```math
\nu\!\int|\nabla\delta|^2
=
\text{production in the defect-energy identity}
\tag{SZU.6}
```

with both sides nonzero. That is the marginal radiodrome/DSS equality geometry
described by the canonical radiodrome surface.

This distinction is exactly where the kernel cannot be applied:

- the kernel's horizontal-freeze step uses vanishing Field and viscous measures
  to make neighboring tower differences unable to grow, sharpen, or hide fine
  scale;
- the unit cycle only says the neighbor-following and viscous production are
  balanced at ratio one;
- the kernel's ratchet-removal step uses vanishing four-body activity/positive
  variation to remove one-way memory;
- the unit cycle only says the signed exchange has no strict surplus after the
  cyclic face payments.

So the phrase "zero-bill unit cycle" is safe only if "bill" means absolute payer
measure. In the active c_0 matrix/radiodrome wall, the object should be read as
a **record-admitted zero-surplus unit cycle**.

## 4. The smaller theorem that would close the chain

The remaining theorem is the surplus-zero rigidity statement:

```math
\texttt{RecordAdmittedSurplusZeroUnitCycleRigidity.A}.
\tag{SZU.7}
```

Statement. No retained same-fluid Navier-Stokes parent packet, after
record-admission, exact charting, and legal/stop quotienting, carries a
normalized nonnegative record-admitted ratio-one cycle `(SZU.3)' whose zero is
only zero surplus rather than absolute zero.

Equivalently, prove the upgrade/route-out theorem

```math
\texttt{AbsoluteZeroAdmissionForRecordAdmittedUnitCycle.A}.
\tag{SZU.8}
```

Every record-admitted zero-surplus unit cycle either upgrades to an absolute-zero
retained relay record and is killed by `(SZU.2)', or posts positive
Field/four-body/viscous bill, legal residual, stop, or retained-class exit.

Either `(SZU.7)' or `(SZU.8)' implies the previously named qualitative producer:

```math
\texttt{RecordAdmittedSurplusZeroUnitCycleRigidity.A}
\Longrightarrow
\texttt{RecordAdmittedZeroBillUnitCycleExclusion.A}.
\tag{SZU.9}
```

Then the existing finite-chart compactness gives

```math
\texttt{RecordAdmittedZeroBillUnitCycleExclusion.A}
\Longrightarrow
\rho(K_P)\le1-\eta
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}
\Longrightarrow
c_0>0 .
\tag{SZU.10}
```

## 5. Completion truth

This is not a proof of \(c_0>0\). It is a strict reduction of the attempted
kernel shortcut.

The zero-bill kernel excludes positive record only on the absolute-zero
invariant set. The current radiodrome/unit-cycle bad sequence lives on the
zero-surplus ratio-one set. The missing mathematical content is the same
self-similar difference-operator coercivity named in the radiodrome note as
`ZeroLossTowerRelayRigidity.A`: prove that the zero-surplus set has no retained
positive record, or route every such record to an admitted payer/exit.
