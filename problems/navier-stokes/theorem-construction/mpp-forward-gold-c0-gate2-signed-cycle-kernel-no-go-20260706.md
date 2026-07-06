---
theorem_id: forward-gold-c0-gate2-signed-cycle-kernel-no-go-20260706
status: direct-signed-balance-to-positive-record-implication-refuted
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 2 signed-cycle pressure test
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - Gate2.FullTowerPositiveRecordRetention
  - FullTowerSignedTotalExchangeRetention.A
  - StrictSamePacketCycleExchangeCoercivity.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
completion_truth: >-
  This proves a no-go theorem for the direct Gate 2 implication from signed
  four-body cancellation to positive record retention. It does not refute
  NormalizedRelayBillCompactnessRecordPassage.A and does not prove c_0. It
  shows that the remaining Gate 2 theorem cannot be derived from the installed
  signed adjacent identities plus after-the-fact retained-packet compactness
  alone. The missing theorem is strict positivity of the payment functional on
  the signed-cycle kernel, equivalently production of the positive/negative/
  current packet or strict loss before compactness and before positive readout.
---

# Gate 2 signed-cycle kernel no-go

## 1. Physical object

The same transported material packet has four simultaneous readings:

```math
(S_N,Q_N,C_N,G_N).
\tag{KNG.1}
```

The installed four-body calculation gives signed adjacent exchanges between
those readings. The positive record used by \(dR_N^+\) counts one-way travel
through the tower. These are different observables of the same packet.

Physically: a reversible handoff can pass service around the packet and give it
back. The signed exchange ledger sees zero net displacement. The positive record
counter sees that the handoff happened.

## 2. The algebraic no-go

Forget every analytic difficulty and retain only the signed exchange structure
installed by the source. Write a two-leg exchange loop as

```math
j=(j_1,j_2)=(M,-M),
\qquad M>0.
\tag{KNG.2}
```

The signed four-body cancellation sees

```math
\partial j:=j_1+j_2=0.
\tag{KNG.3}
```

The total positive record sees

```math
R^+(j):=[j_1]_+ + [-j_2]_+ = 2M.
\tag{KNG.4}
```

Therefore no constant \(C\) can make

```math
R^+(j)\le C|\partial j|
\tag{KNG.5}
```

true on the installed signed-exchange data. The failure is not a limit effect,
not a collar term, and not a pressure tail. It is the finite-dimensional cycle
kernel of the signed exchange operator.

The same obstruction persists with the four adjacent currents

```math
j=(j_{SQ},j_{QC},j_{CG},j_{GS}).
\tag{KNG.6}
```

The signed sum kills oriented cycles. Positive total variation is a seminorm on
those cycles and is nonzero unless an additional payment functional is strictly
positive there.

## 3. What this refutes

The following direct implication is false:

```math
\text{signed adjacent exchange cancellation}
\quad\Longrightarrow\quad
\text{positive tower-record retention/payment}.
\tag{KNG.7}
```

It is also false after adding the installed compactness consumer alone. The
retained-packet compactness criterion preserves a packet

```math
(\mu^A,\mu^N,\mu^J),
\qquad d\mu^J=d\mu^A-d\mu^N,
\tag{KNG.8}
```

after that positive carrier, negative partner, and signed current have already
been produced on the same selected carrier. The no-go vector `(KNG.2)' lives
one step earlier: it says signed balance does not produce that retained
positive/negative/current packet.

So compactness cannot repair the lost sign. It can only preserve a sign-owned
packet that has already been admitted.

## 4. The exact remaining theorem

Let \(K\) be the same-packet signed-cycle kernel: the exchange modes whose
oriented four-body sum cancels. Let

```math
P(j)
=
dA_{Q,N}(j)
+dD_S(j)+dD_C(j)+dD_G(j)
+dR_{4B,N}(j)
\tag{KNG.9}
```

be the nonnegative payment visible to Gate 2: selected Q-activity, strict
loss, and legal/already-enveloped residual.

The missing theorem is the strict positivity statement

```math
j\in K,\quad R^+(j)>0
\quad\Longrightarrow\quad
P(j)>0,
\tag{KNG.10}
```

with the quantitative retained form

```math
R^+(j)\le C\,P(j)
\tag{KNG.11}
```

on the transported material tower, uniformly in the retained normalized
windows. This is exactly `(FTR.13)'--`(FTR.14)' in kernel language.

Equivalently, before compactness is used, every positive generated channel in

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\sum_\kappa d\mathcal A_N^\kappa
\tag{KNG.12}
```

must already be one of:

```math
\begin{array}{ll}
\text{a retained positive/negative/current packet},\\[1mm]
\text{strict loss or selected Q-activity},\\[1mm]
\text{legal or already-enveloped residual.}
\end{array}
\tag{KNG.13}
```

## 5. Effect on the active \(c_0\) proof

This note does not show that
`NormalizedRelayBillCompactnessRecordPassage.A` is false. The algebraic vector
`(KNG.2)' is a proof-theoretic countermodel to one attempted derivation, not a
Navier-Stokes minimizing sequence.

It does prove that Gate 2 cannot be closed by repeating the signed four-body
cancellation or by invoking retained compactness after admission. The active
proof has to supply `(KNG.10)' from the same pressure-viscosity-incompressibility
packet, or else the possible escape remains same-material participation-record
loss: the positive record has been counted, but its positive carrier, negative
partner, and signed current were never retained as one same-packet object before
readout.
