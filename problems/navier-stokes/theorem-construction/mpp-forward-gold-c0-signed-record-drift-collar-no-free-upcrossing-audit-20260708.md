---
theorem_id: forward-gold-c0-signed-record-drift-collar-no-free-upcrossing-audit-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Gate A / carrier relay collar payment
status: strict-reduction-not-proof
target_object:
  - SignedRecordDriftCollarNoFreeUpcrossing.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-ownership-size-separation-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-owned-pressure-collar-direct-attempt-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-corrected-timeface-nojump-exhaustion-20260619.md
completion_truth: >-
  This note proves that the current ledger has the right signed collar/current
  object only as ownership and routing data, not as the non-telescoping lower
  bound. It reduces the Gate-A carrier relay obstruction to the signed
  forward-transfer flux theorem. It does not prove that theorem or c_0>0.
---

# Signed record-drift collar no-free-upcrossing audit

The carrier-level relay is a real material event: the selected positive record
passes from one material packet address to another across a collar. That is not
the same object as a spin-2 angle crossing inside one fixed strict atom.

## 1. What stopped-score already pays

The stopped selector theorem proves a bounded parent-known projection of the
original participation law before scalar readout. In a fixed route, the selected
score stays attached to the same material packet, and route-coordinate motion is
carried by the original participation current.

Thus, inside one strict atom with fixed carrier, material window, chart, collar
address, order-lock, eigengap, and spin-2 lower edge, finite detector-cell
crossings are just a finite-net description of the same spin-2 angle variation.
The stopped-score and Schur motion machinery can pay that relay.

## 2. What changes at a carrier hand-off

At a carrier hand-off the selected material packet changes. The score is no
longer the same function on the same domain with the same address. A stopped
score on the left packet and a stopped score on the right packet do not by
themselves pay the transfer between them.

The collar hand-off has to appear as a participation current or flux through
the interface, or it must be routed to stop, pass, Field, collar loss, or legal
material. Otherwise the moving argmax can evade every fixed parent-known score
by handing positive service from packet to packet.

## 3. Existing source audit

The ownership/size-separation note already blocks the shortcut from address to
payment. Same-carrier ownership of a pressure collar contribution does not imply
sublinear collar size, absorption, or route-out. An owned non-sublinear collar
flux still has two readings: legal/collar route-out, or retained-tail material.
Current sources do not choose between them.

The owned-pressure-collar attempt reaches the same split. It leaves only:

```math
\texttt{OwnedPressureCollarCarlesonSublinear.A}
\quad\text{or}\quad
\texttt{NonSublinearOwnedPressureCollarIsRouteOut.A}.
\tag{SRC.1}
```

Neither is installed.

The pressure-corrected time-face audit also blocks a magnitude-only fix. The
critical pressure/convection collar flux is sign-indefinite and scales at the
same order as viscosity. Replacing \(u\) by \(-u\) reverses the cubic collar
flux while leaving the viscous quadratic term unchanged. So a magnitude collar
bill is support only; it is not the signed \(c_0\) brake.

## 4. Exact remaining theorem

The carrier relay residual is therefore:

```math
\texttt{SignedRecordDriftCollarNoFreeUpcrossing.A}.
\tag{SRC.2}
```

Statement. For a retained same-fluid positive-record relay whose selected
service passes between material packets across collars, either

```math
\sum_{\text{handoffs }e}\mathsf F^{signed}_{e}
\ge
c\,\mathsf S_{\rm ret}
-dStop-dPass-dField-dCollar,
\tag{SRC.3}
```

or the relay is not retained positive Gate-A service.

This is a signed current theorem, not an absolute collar norm. The sign is the
orientation of service transfer in material time: compression/current through
the collar carrying the selected record. It cannot be a detached scalar flux
sign or a time-even magnitude bill.

## 5. Gate-A consequence

With the strict-atom spin-2 selector-menu proof, Gate A is now split into:

```math
\begin{aligned}
&\text{fixed strict-atom spin-2 angle relay}
&&\text{paid by stopped-score/Schur after lower-edge admission},\\
&\text{carrier/material-packet relay}
&&\text{requires }\texttt{SignedRecordDriftCollarNoFreeUpcrossing.A}.
\end{aligned}
\tag{SRC.4}
```

The current \(c_0\) Gate-A wall is exactly the non-telescoping signed
forward-transfer flux lower bound. The ledger names the flux and its route-outs;
it does not yet prove `(SRC.3)'.

## 6. Cascade-language boundary

It is useful to call `(SRC.2)' a forward-cascade monotonicity theorem, provided
the word "cascade" is read materially: selected service moves forward through
the retained packet relay with a consistent orientation.

Cancellation of signed collar terms is the obstruction. It may correspond to
classical backscatter/up-cascade transfer, but in the material relay it may also
appear as recirculation, merge/split ownership reversal, or another hand-off
that reverses the selected forward-transfer orientation. The theorem must rule
out all such telescoping while the record remains retained, or classify the
branch as stop/pass/Field/collar/service-loss/counterprofile material.

Thus the alias is:

```math
\texttt{ForwardCascadeSignedTransferNonTelescoping.A}
\equiv
\texttt{SignedRecordDriftCollarNoFreeUpcrossing.A}.
\tag{SRC.5}
```

## 7. Cycle-32 pressure test: signed current is not enough

The focused pressure test is now recorded in
`mpp-forward-gold-c0-forward-cascade-signed-transfer-pressure-test-20260708.md`.
It sharpens `(SRC.2)' as follows.

A raw signed collar/current identity has the same cancellation kernel as the
earlier signed-cycle no-go:

```math
j=(M,-M),
\qquad
\sum_e j_e=0,
\qquad
\sum_e |j_e|_+=2M .
\tag{SRC.6}
```

So Gate A cannot close from signed-current retention alone. The relay must
retain the three-measure packet

```math
(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N,
\tag{SRC.7}
```

on one parent-known relay event space, where \(\mu^A\) is the nonnegative
selected forward-record carrier and \(\mu^N\) is the negative/back-transfer
partner. The signed lower bound follows only after the no-free-return clause

```math
\mu^N(C_{\rm rel})
\le
(1-\eta)\mu^A(C_{\rm rel})
dStop+dPass+dField+dCollar+dMerge+dLegal,
\qquad \eta>0 .
\tag{SRC.8}
```

Thus the sharper sufficient theorem is

```math
\texttt{OrientedThreeMeasureRelayNoReturn.A}
\Longrightarrow
\texttt{ForwardCascadeSignedTransferNonTelescoping.A}.
\tag{SRC.9}
```

The new wall is `(SRC.8)': retained same-event custody of the positive carrier,
negative partner, and signed current, plus strict no-return/no-recount
domination of the negative partner. Without `(SRC.8)', backscatter,
recirculation, merge/split reversal, orientation reversal, or double-counted
return faces remain exactly the telescoping counterprofile.
