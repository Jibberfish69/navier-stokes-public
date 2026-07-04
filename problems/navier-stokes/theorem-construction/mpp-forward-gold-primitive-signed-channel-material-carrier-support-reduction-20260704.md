---
theorem_id: forward-gold-primitive-signed-channel-material-carrier-support-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive stopped-carrier admission
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveSignedChannelMaterialCarrierSupport.A
  - PrimitiveSignedChannelDirectMaterialRepresentation.A
  - PrimitiveSignedChannelOffCarrierServiceCharge.A
role: >-
  Lowers same-material carrier support for primitive signed-channel events to
  the two physical clauses that the event must be directly represented as a
  coordinate of the original Navier-Stokes participation packet, and every
  off-carrier piece must already be charged as same-packet service, legal,
  stopped, or exit before primitive readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-stopped-carrier-coverage-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-projection-commutator-pressure-operator-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-coercivity-split-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-primitive-pls-driver-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-identity-production-clause-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md
completion_truth: >-
  This note does not prove PrimitiveSignedChannelMaterialCarrierSupport.A. It
  proves a strict reduction: carrier support follows from direct material
  representation of the primitive signed-channel density plus a pre-readout
  charge for all off-carrier residue. Existing same-packet, Hodge, service, and
  retained-edge PLS surfaces prove attachment or post-admission support, not the
  all-event primitive carrier-support theorem.
---

# Primitive signed-channel material-carrier support reduction

## 1. Physical object

The event is one point of the primitive signed-channel measure

```math
z=(\sigma,t,x,\kappa),
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt.
\tag{MCS.1}
```

Before any stopped atlas or selector can count \(z\), the event has to be a
piece of the same evolving fluid. In physical terms, \(z\) must come from one
transported material history

```math
x=X(a,t),
\qquad
A=(D_aX)^{-1},
\qquad
G=AA^\top,
\tag{MCS.2}
```

with one high packet, one lower material coefficient, one scale, one collar or
projector state, and one pressure/strain/viscous channel. Pressure is the
elliptic incompressibility constraint of this same packet, viscosity is the
dissipative slot on this same packet, and the channel sign is a readout of the
same packet's pressure/strain work.

Thus carrier support is not a stopped label and not a selected threshold. It is
the physical support statement that the signed channel density has an underlying
same-material packet before the proof asks which stopped chamber or selector
owns it.

## 2. What current sources already prove

The PLS signed-channel decomposition identifies the correct channel alphabet.
On an already retained stopped common-selector chamber, it decomposes the
primitive driver into finitely many same-packet signed coordinates:

```math
d\Omega_S^{PLS,primitive,+}
\le
C_N\sum_{\kappa\in\mathcal K_N}
[Y_{\kappa,S}]_+\,d\sigma dt
+dR_S^{paid},
\tag{MCS.3}
```

where the channel list is strain/eigenframe, pressure Hessian, Hodge/Stokes
projector motion, coefficient/frame motion, transported collar motion, annular
interface stress work, viscous/radius graph service, and low-high transport
commutator. Those are coordinates of one transported material packet, not
separate suppliers.

The material Hodge note proves that the moving exact projector is also the same
packet. The projection uses

```math
L_G=-\operatorname{div}_a(G\nabla_a),
\qquad
\dot A=-A(\nabla_xu\circ X),
\qquad
\dot G=-2ASA^\top.
\tag{MCS.4}
```

So Hodge/projector motion is pressure/strain service of the same packet, not a
detached force.

The material-service calculation proves the same thing for sign-change and
rectification costs. The variation of annular stress-work is an explicit
finite expression made from

```math
v,\ q,\ A,\ G,\ \partial_tv,\ \partial_tq,\ \partial_{tt}v,\ \partial_{tt}q,
\ \partial_tA,\ \partial_{tt}A
\tag{MCS.5}
```

with all time derivatives closed by the material Navier-Stokes equation,
coefficient equations, and pressure elliptic equations. So service variation is
attached to the original same-material packet.

Together these sources prove same-packet attachment for the known coordinates.
They do not yet prove that every primitive signed-channel event has all-event
material carrier support before selection.

## 3. Lower physical clauses

The first lower input is direct material representation:

```math
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}.
\tag{MCS.6}
```

It states that the primitive signed-channel density is produced directly from
the original Navier-Stokes participation law on the material history. For
\(|Y_{\kappa,S}|\,d\sigma dt\)-almost every primitive event, there is a
same-packet support tuple

```math
K(z)=
(
X(a,t),
H_{j,N},
\mathcal M_{<j-C,N},
\psi,
\mathbb P_A,
j,\kappa
),
\tag{MCS.7}
```

where \(H_{j,N}\) is the high packet, \(\mathcal M_{<j-C,N}\) is the lower
strain/pressure/coefficient/collar/viscous material coefficient, \(\psi\) is
the material collar/window, and \(\mathbb P_A\) is the same material
Hodge/projector state. The representation must be before stopped readout and
before the selector chooses a useful positive event.

The second lower input is off-carrier service charge:

```math
\texttt{PrimitiveSignedChannelOffCarrierServiceCharge.A}.
\tag{MCS.8}
```

It states that any primitive signed-channel mass not represented by `(MCS.7)'
is already accounted for as same-packet pressure-silent service,
chart/projector/collar transfer, channel rotation, material service, legal
loss, stop, or exit:

```math
d\mu_{\kappa,S}
\bigl(\{z:K(z)\ \text{is absent}\}\bigr)
\le
dPaid+dLegal+dStop+dExit.
\tag{MCS.9}
```

This clause is necessary because a signed packet may be physically generated
while the chosen coordinate is not yet a lawful primitive carrier event. The
off-carrier part cannot silently become support after a later retained edge or
stopped chamber is selected.

## 4. Strict reduction

Assume `(MCS.6)' and `(MCS.8)'. On the survivor set outside
paid/legal/stop/exit service, `(MCS.6)' assigns every primitive
\(d\mu_{\kappa,S}\)-event a same-packet support tuple \(K(z)\). That tuple is
exactly the material carrier support requested by
`PrimitiveSignedChannelMaterialCarrierSupport.A`: it contains the same
transported history, high packet, low material coefficient, scale,
collar/projector state, and signed pressure/strain/viscous channel.

The missing set is charged by `(MCS.8)'. Hence

```math
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}
+
\texttt{PrimitiveSignedChannelOffCarrierServiceCharge.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}.
\tag{MCS.10}
```

This reduction gives only material support. It does not produce a stopped atlas,
does not choose a common selector, and does not prove positive signed-channel
coercivity.

## 5. Checked obstruction to shortcuts

`PrimitivePLSSignedChannelDecomposition.A` is support, not proof of `(MCS.6)'.
Its statement is explicitly inside retained stopped common-selector chambers.
It says what the channel alphabet is after chamber admission, not that every
primitive signed-channel event already has material support before admission.

The retained record-edge PLS admission notes are also support. They identify a
future-positive exact-projector record edge as same-packet pressure/strain
service and reduce admission to stopped primitive-channel inputs before record
readout. That scope is narrower than the primitive signed-channel measure,
which also contains negative return, detector-silent, cancellation, and
unretained events.

The global carrier-partition theorem-creation note suggests the right physical
mechanism for positive high-band birth, but it is marked conditional and
promotion-disallowed. It cannot be imported as installed all-event support.

The same-carrier identity recheck gives the cautionary rule: a controlled
signed, stress, tail, mode, or defect object is not automatically the selected
positive native carrier. Here the same warning becomes primitive: a same-packet
calculation is not automatically material carrier support for every primitive
signed-channel event unless the direct representation and off-carrier charge
are proved before readout.

## 6. Current proof truth

Installed here:

```math
\text{direct primitive material representation}
+
\text{off-carrier service charge}
\Longrightarrow
\text{same-material primitive signed-channel carrier support}.
\tag{MCS.11}
```

Still open:

```math
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}
\quad\text{and}\quad
\texttt{PrimitiveSignedChannelOffCarrierServiceCharge.A}.
\tag{MCS.12}
```

This is a strict reduction. The physical order is now: first prove that the
primitive signed event is a real coordinate of the same Navier-Stokes packet or
charge it as off-carrier service; then build the stopped carrier atlas; then
give that stopped carrier a common selector owner; only after that may the
primitive PLS channel be read as an address cell for signed-height Gold.
