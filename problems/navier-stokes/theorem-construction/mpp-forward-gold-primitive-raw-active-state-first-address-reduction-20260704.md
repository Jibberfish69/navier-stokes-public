---
theorem_id: forward-gold-primitive-raw-active-state-first-address-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive material channelization
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveRawActiveScaleCollarProjectorMultiplicityOrPaidBoundary.A
  - PrimitiveRawActiveStateFirstAddressOrPaidTransition.A
role: >-
  Reduces raw active scale/collar/projector multiplicity to a first-address
  theorem for the active state of one primitive same-fluid event, plus paid
  parent-announced first-exit transitions. Existing finite-band and reset-overlap
  machinery can count only after the raw active state has a parent-known first
  address before stopped/selector readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-raw-material-channel-atlas-multiplicity-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-fresh-cascade-packing-finite-band-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-priority-overlap-boundary-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveRawActiveScaleCollarProjectorMultiplicityOrPaidBoundary.A.
  It proves a strict reduction. The remaining open producer is
  PrimitiveRawActiveStateFirstAddressOrPaidTransition.A: before any stopped or
  selector readout, every primitive signed-channel event must have a parent-known
  first active scale/collar/projector state, and every additional active-state
  claim must be a same-packet paid transition, legal loss, stop, or exit.
---

# Primitive raw active-state first-address reduction

## 1. Physical active state

After the fixed-chart formula, a primitive signed-channel event is a piece of
one evolving Navier-Stokes packet:

```math
z=(\sigma,t,x,\kappa).
\tag{RAS.1}
```

Transport carries the material history, pressure and incompressibility determine
the projected stress, viscosity supplies the dissipative slot, and the channel
sign reads one pressure/strain/collar/projector coordinate of that same packet.

The raw atlas problem is the active state of this same event before selected
readout. An active state is

```math
s=(j,\psi,\mathbb P_A,\kappa),
\tag{RAS.2}
```

where \(j\) is the scale or finite scale band, \(\psi\) is the material collar
or window, \(\mathbb P_A\) is the moving material Hodge/projector coordinate,
and \(\kappa\) is the raw signed channel. The event \(z\) cannot be freely
claimed by many such states. If the state changes, the same packet has crossed
a scale boundary, moved a collar, changed projector/chart, rotated channel, paid
material service, stopped, become legal loss, or exited.

So the multiplicity theorem is not a child-counting theorem. It is active-state
custody for one physical event.

## 2. What installed support can count

The finite-band/reset note proves the right stopped mechanism. Inside a stopped
parent with a parent-known active band, a transit thread either stays in the
finite band or exits the band through a parent-announced first-exit reset/escape
slab. Parent-predictable transit inside the same band is carry, not fresh
selected action.

The reset-overlap note proves that maximal parent-announced first-exit slabs
have bounded overlap along the same retained material tree. Thus, once a change
of active state is represented as such a first-exit event, the overlap machinery
can count it.

These are real physical supports. They do not yet prove the raw atlas theorem,
because both supports start after the parent knows the stopped state being
exited. The raw theorem must first say which active state the primitive event
had before stopped/selector readout.

## 3. First active-state address

The lower producer is:

```math
\texttt{PrimitiveRawActiveStateFirstAddressOrPaidTransition.A}.
\tag{RAS.3}
```

For \(d\mu_{\kappa,S}\)-almost every primitive event \(z\), before stopped or
selector readout, one of the following holds:

1. the parent assigns a first raw active state \(s_0(z)\) to the event from the
   original same-material packet history; and
2. every other raw active state \(s\) that also claims \(z\) is reached from
   \(s_0(z)\) by a same-packet parent-announced transition/re-entry, represented
   by a maximal first-exit scale, collar, projector, or channel boundary;

or the extra claim is already paid as scale boundary, collar/projector transfer,
channel rotation, material service, legal loss, stop, or exit.

In measure form, the non-first claims satisfy

```math
d\mu_{\kappa,S}^{nonfirst}
\le
d\mu_{\kappa,S}^{firstexit}
dPaid^{scale}
dPaid^{collar/proj}
dPaid^{rotation}
dPaid^{material}
dLegal+dStop+dExit .
\tag{RAS.4}
```

This is the raw active-state analogue of the primitive return first-address
theorem and the address-cell overlap first-difference theorem. It identifies the
first physical address before it lets later labels count as transitions.

## 4. Strict reduction to active multiplicity

Assume `(RAS.3)' and the installed finite-band/reset-overlap support. On the
unpaid survivor set, the first state \(s_0(z)\) contributes bounded multiplicity
inside its parent-known finite band:

```math
\sum_{s\sim s_0}1_{C_s}(z)\le C_N.
\tag{RAS.5}
```

Every additional state claim is a parent-announced first-exit transition or a
paid boundary by `(RAS.4)'. The maximal first-exit overlap theorem gives

```math
\sum_{e\subset P}1_{W_e}(z)\le C_N+dR^{legal}_P.
\tag{RAS.6}
```

Therefore the full raw active-state multiplicity satisfies

```math
\sum_{s\in\mathcal A_{raw}}1_{C_s}(z)
\le
C_N
+dPaid^{scale}
+dPaid^{collar/proj}
+dPaid^{rotation}
+dPaid^{material}
+dLegal+dStop+dExit
\tag{RAS.7}
```

in the usual measure-dominating sense on the primitive signed-channel measure.
This is exactly

```math
\texttt{PrimitiveRawActiveScaleCollarProjectorMultiplicityOrPaidBoundary.A}.
\tag{RAS.8}
```

Hence

```math
\begin{aligned}
&\texttt{PrimitiveRawActiveStateFirstAddressOrPaidTransition.A}\\
&+\texttt{finite-band parent-predictable active-state support}\\
&+\texttt{maximal first-exit reset overlap}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveRawActiveScaleCollarProjectorMultiplicityOrPaidBoundary.A}.
\tag{RAS.9}
```

## 5. Checked obstruction

The shortcut

```math
\text{finite-band/reset overlap}
\Longrightarrow
\text{raw active-state multiplicity}
\tag{RAS.10}
```

is invalid. Reset overlap counts transitions after the state being exited is
already parent-known. Without a first raw active-state address, the same
primitive event can be placed in nested future-chosen states, and those nested
claims are not automatically maximal first-exit slabs.

This is the same physical warning as the atlas note, now at the right
coordinate: a fixed local material packet and a stopped reset tree are real,
but the raw primitive event still needs a parent-known first active state before
the stopped tree can count its later state changes.

## 6. Current proof truth

Installed support:

```math
\text{finite stopped active band and maximal first-exit overlap}.
\tag{RAS.11}
```

Strict reduction:

```math
\texttt{PrimitiveRawActiveStateFirstAddressOrPaidTransition.A}
\Longrightarrow
\texttt{PrimitiveRawActiveScaleCollarProjectorMultiplicityOrPaidBoundary.A}
\Longrightarrow
\texttt{PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A}.
\tag{RAS.12}
```

Still open:

```math
\texttt{PrimitiveRawActiveStateFirstAddressOrPaidTransition.A}.
\tag{RAS.13}
```

The physical story is now sharper: the formula on one material chart is proved;
ordinary geometric overlap is support; finite-band/reset counting is support
after a state exists; the unpaid producer is the first parent-known active
scale/collar/projector state of each primitive signed-channel event before
readout, with every later state claim paid as actual same-packet motion.
