---
theorem_id: forward-gold-primitive-signed-channel-pre-readout-material-channelization-partition-20260704
status: target-consolidation-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive stopped-carrier admission
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A
  - PrimitiveSignedChannelDirectMaterialRepresentation.A
  - PrimitiveSignedChannelOffCarrierServiceCharge.A
  - PrimitiveSignedChannelMaterialCarrierSupport.A
role: >-
  Consolidates the two newly exposed carrier-support inputs into one physical
  source theorem. The primitive signed-channel measure must be partitioned
  before stopped/selector readout into same-packet material channel events plus
  paid off-carrier residue. Same-packet attachment and post-admission charge
  menus remain support until they prove this pre-readout partition.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-material-carrier-support-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-stopped-carrier-coverage-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-projection-commutator-pressure-operator-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-primitive-pls-driver-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-nonselector-coordinate-lift-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-identity-production-clause-recheck-20260620.md
parallel_checks:
  - direct-material-representation explorer 2026-07-04: no proof found; PLS/Hodge/service surfaces are support only
  - off-carrier-service-charge explorer 2026-07-04: no proof found; post-admission charge menus are narrower support only
completion_truth: >-
  This note does not prove PrimitiveSignedChannelMaterialCarrierSupport.A. It
  prevents a false split. The direct-representation input and off-carrier-charge
  input are two faces of one pre-readout material channelization partition. If
  that partition is proved, both inputs follow; current repo sources do not yet
  prove it.
---

# Primitive signed-channel pre-readout material channelization partition

## 1. Physical object

The object is the full primitive signed-channel measure

```math
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt
\tag{MCP.1}
```

before a stopped atlas, selector owner, face fiber, or record-positive readout
has chosen the useful part. Physically this measure is supposed to be a readout
of one evolving Navier-Stokes packet: transport carries the material history,
pressure and incompressibility determine the projected stress, viscosity gives
the dissipative slot, scale and collar decide which local support is lawful, and
sign/alignment decide whether the event is positive work, negative return, or
cancellation/service.

The carrier-support split in the previous note exposed two names:

```math
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}
\tag{MCP.2}
```

and

```math
\texttt{PrimitiveSignedChannelOffCarrierServiceCharge.A}.
\tag{MCP.3}
```

These are not two unrelated chores. They are the two faces of one physical
partition: every primitive signed-channel event is either a same-packet material
channel event before readout, or it is already paid as off-carrier same-packet
service, legal, stopped, or exit before readout.

## 2. Single partition theorem

The consolidated theorem is:

```math
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}.
\tag{MCP.4}
```

It should construct a pre-readout decomposition

```math
d\mu_{\kappa,S}
=d\mu_{\kappa,S}^{mat}
+d\mu_{\kappa,S}^{off}
\tag{MCP.5}
```

on the original material history, before stopped/selector readout.

For \(d\mu_{\kappa,S}^{mat}\)-almost every event \(z\), there is a same-packet
support tuple

```math
K(z)=
(
X(a,t),
H_{j,N},
\mathcal M_{<j-C,N},
\psi,
\mathbb P_A,
j,\kappa
)
\tag{MCP.6}
```

where the entries are the transported material history, high packet, lower
pressure/strain/coefficient/collar/viscous material coefficient, material
window, moving material Hodge/projector state, scale, and channel label. This
is the direct material representation face.

The off part is charged before readout:

```math
d\mu_{\kappa,S}^{off}
\le
dPaid^{silent}
+dPaid^{chart/proj/collar}
+dPaid^{rotation}
+dPaid^{material}
+dLegal+dStop+dExit .
\tag{MCP.7}
```

The terms in `(MCP.7)' are not generic accounting bins. They name physical
routes for the same packet: pressure/root-silent service, chart/projector or
collar transfer, channel rotation, material service, legal loss, stopping, or
exit.

## 3. Reduction to the previous carrier-support inputs

Assume `(MCP.4)'. The material part `(MCP.6)' proves
`PrimitiveSignedChannelDirectMaterialRepresentation.A`. The off part `(MCP.7)'
proves `PrimitiveSignedChannelOffCarrierServiceCharge.A`. Therefore the
previous reduction gives

```math
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}
+
\texttt{PrimitiveSignedChannelOffCarrierServiceCharge.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}.
\tag{MCP.8}
```

This is a consolidation of the exact physical burden. It removes a bad proof
habit: proving attachment in one paragraph and charge in another paragraph can
still leave a gap where the represented events and paid events do not partition
the original primitive measure.

## 4. Why installed sources are support only

`PrimitivePLSSignedChannelDecomposition.A` supplies the correct channel
alphabet after a retained stopped common-selector chamber already exists. It is
not a proof of `(MCP.4)' because `(MCP.4)' must run before the stopped chamber
is selected.

The Hodge/projector and material-service notes prove same-packet attachment.
They show that pressure, projector motion, collar motion, coefficient motion,
viscous service, and annular stress-work are not detached signals. They do not
partition the full primitive signed-channel measure into represented events and
paid off-carrier residue.

Retained record-edge PLS admission is narrower. It handles a future-positive
record edge after the edge is under record-menu discussion. The primitive
measure also contains negative return, detector-silent, cancellation, and
unretained events.

The chamber-level nonselector lift and address-change charge notes are also
post-admission support. They pay chart/projector, detector/channel, face/polarity,
overlap, and address-change costs once an admitted stopped chamber or address
cell exists. They do not cover primitive mass that has not yet entered any
candidate stopped/address cell.

## 5. Checked obstruction

The shortcut

```math
\text{same-packet attachment}
+
\text{post-admission charge menus}
\Longrightarrow
\text{pre-readout material channelization partition}
\tag{MCP.9}
```

is false at the level of proof structure.

Same-packet attachment can identify what a term is physically while leaving its
event set unowned before readout. Post-admission charge menus can pay defects
on admitted chambers while saying nothing about primitive mass that never
entered a chamber. A later retained edge can be fully physical and fully paid
while the all-event primitive measure still contains negative or silent events
with no pre-readout material carrier.

The same-carrier identity recheck is the older version of this warning: a
controlled signed, stress, tail, mode, or defect object is not automatically
the selected positive native carrier. Here the primitive version is:

```math
\text{a same-packet coordinate formula is not automatically a pre-readout
partition of }d\mu_{\kappa,S}.
\tag{MCP.10}
```

## 6. Current proof truth

Installed here:

```math
\text{pre-readout material channelization partition}
\Longrightarrow
\text{direct representation plus off-carrier charge}
\Longrightarrow
\text{material carrier support}.
\tag{MCP.11}
```

Still open:

```math
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}.
\tag{MCP.12}
```

This is not Gold closure. It is the next clean physical producer under
primitive stopped-carrier coverage: construct the primitive signed-channel
measure from the original Navier-Stokes participation law as one pre-readout
material partition, with all nonrepresented mass already paid by same-packet
service, legal, stop, or exit.
