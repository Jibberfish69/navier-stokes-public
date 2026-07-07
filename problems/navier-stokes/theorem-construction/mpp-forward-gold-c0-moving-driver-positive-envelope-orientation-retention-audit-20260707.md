---
theorem_id: forward-gold-c0-moving-driver-positive-envelope-orientation-retention-audit-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / moving low-high driver / three-measure admission
status: checked-no-go-positive-moving-driver-envelope-is-not-three-measure-admission; strict-reduction-to-pre-envelope-signed-current-retention
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
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - MovingDriverPreEnvelopeSignedCurrentRetention.A
  - RetainedRecordEdgePrimitivePLSDriverAdmission.A
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
  - ParentOwnedPositiveRecordBillCurrency.A
terminology_correction:
  deprecated:
    - clipping
  active_terms:
    - selected positive-part readout
    - pre-readout signed current
    - selected positive extraction
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/claim-ladder.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-full-tower-positive-channel-projection-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-theta-envelope-not-three-measure-packet-no-go-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-weighted-material-energy-identity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-pump-finite-work-circularity-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
completion_truth: >-
  The moving low-high pressure/strain pump is the current sharp representative
  of the c_0 bill-currency wall, but its positive envelope is not a retained
  three-measure packet. The exact weighted material identity supplies a signed
  interface M_w before selected positive-part readout. The useful Gate 2 object
  must retain this pre-envelope event as one same-carrier positive carrier, negative
  partner, and signed current. Taking [M_w]_+ after summing material interfaces,
  or replacing the event by an absolute-value envelope, forgets orientation,
  carrier ownership, and the counter-leg. Therefore finite positive moving-pump
  work, or a positive moving-driver envelope, does not by itself prove
  FullTowerPositiveChannelThreeMeasureAdmission.A. The current smaller theorem
  is MovingDriverPreEnvelopeSignedCurrentRetention.A: retain the raw signed
  moving-driver event before readout, or route every loss of sign/carrier to
  bill, legal, stop, Pack, Part, or Field. No c_0 closure is claimed.
---

# Moving-driver envelope is not admission

## 1. Physical object

The object is one transported Navier-Stokes packet. The pressure, viscosity,
incompressibility constraint, and material frame deformation are not separate
gadgets; the moving low-high pressure/strain pump is the interface where that
one packet can feed a higher active read.

In the weighted material identity the interface appears as a signed term:

```math
{d\over dt}E_w(t)+\nu D_w(t)=\mathcal M_w(t).
\tag{MDP.1}
```

The pump read used downstream is the positive part of that signed interface:

```math
\mathcal P_w^{pump}(t)=[\mathcal M_w(t)]_+.
\tag{MDP.2}
```

The exact identity proves that finite pump work is finite positive variation of
the weighted material record, modulo weighted viscous loss. It does not create
that finiteness from the unweighted energy inequality. In the current c0 lane,
this is why finite pump work is continuation-strength data, not an independent
producer.

## 2. What admission would have to preserve

The retained Perron/four-body step can price a positive record only after the
positive channel is admitted as a same-carrier three-measure packet:

```math
\mathcal Q^{ret}=(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N .
\tag{MDP.3}
```

For the moving driver this means more than a nonnegative number. One must retain
the pre-readout event:

```math
\mathcal M_w
=J^{+}_{w}-J^{-}_{w}
\quad\text{on one parent-known carrier, before selected positive-part readout.}
\tag{MDP.4}
```

The positive leg, negative partner, and signed current must all remain attached
to the same material edge and the same selected chart. Four-body activity can
then see the irreversible non-cancellation. Without that oriented packet, the
positive amount is only a readout.

## 3. No-go for the positive envelope

The implication

```math
[\mathcal M_w]_+\,dt
\quad\Longrightarrow\quad
(\mu^A,\mu^N,\mu^J)\ \text{on the same carrier}
\tag{MDP.5}
```

is false. Positive-part readout after summing interfaces erases the event that
made the sign.

A two-component interface already shows the loss:

```math
\mathcal M_w=J_1+J_2,\qquad
J_1=M,\qquad
J_2=-M+\eta,\qquad M\gg \eta>0 .
\tag{MDP.6}
```

The positive-part pump sees

```math
[\mathcal M_w]_+=\eta,
\tag{MDP.7}
```

while the large oriented exchange \(M\leftrightarrow M\) has disappeared from
the retained readout. Conversely, an absolute-value envelope sees

```math
|J_1|+|J_2|\simeq 2M,
\tag{MDP.8}
```

which overcounts possible activity but still does not say which parent-known
positive leg, negative partner, and current are retained. The positive-part
scalar and the absolute-value envelope fail in opposite directions, but both
fail the same admission test: neither is the pre-envelope signed current.

Therefore the positive moving-driver envelope is not a proof of
`FullTowerPositiveChannelThreeMeasureAdmission.A`.

## 4. The four failure modes

The admission loss has four concrete faces.

First, orientation can cancel. Signed low-high events can cancel before selected
positive-part readout, while an envelope records only unsigned activity or only
the small residual.

Second, the carrier can switch. The positive leg and the negative partner can
live on different active shells, charts, or stopped selector labels. Then there
is no one retained packet for four-body activity to price.

Third, the readout can be post-hoc. The selector may choose
\([\mathcal M_w]_+\) after the sum is formed, leaving no parent-known negative
partner attached to the selected positive event.

Fourth, the exchange can split in time or scale. A positive leg and its
counter-leg can occur on separated intervals or rungs. Without a retained
same-event address, the signed current delaminates into a bookkeeping measure.

Each face has only two lawful outcomes: retain the oriented same-carrier packet
before readout, or charge the loss of orientation/carrier to bill, legal, stop,
Pack, Part, or Field.

## 5. Smaller theorem left

The correct remaining theorem is:

```math
\texttt{MovingDriverPreEnvelopeSignedCurrentRetention.A}
\Longrightarrow
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}.
\tag{MDP.9}
```

Here `MovingDriverPreEnvelopeSignedCurrentRetention.A` means:

```math
\mathcal M_w
=J^+_w-J^-_w
\quad\text{is retained on the same parent-known selected material edge,}
\tag{MDP.10}
```

with defect terms for selector drift, chart rotation, interface leakage, legal
stopping, and Pack/Part/Field exit. Combined with the retained Perron
four-body theorem, this would make the moving-driver positive record visible to
the bill:

```math
\texttt{MovingDriverPreEnvelopeSignedCurrentRetention.A}
\Longrightarrow
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
\Longrightarrow
\texttt{RecordFeedingSurplusPerronClassExclusion.A}.
\tag{MDP.11}
```

This is a strict reduction. It sharpens the current first failed line from
generic "finite moving pump work" to pre-envelope signed-current retention for
the moving driver. It does not prove \(c_0>0\).

## 6. Physical reading

The pasted physical synthesis says the marginal relay must terminate uniformly
at the viscous edge. This note identifies the checked lower form of that same
claim in the current Gold lane. The viscous-edge story becomes proof-useful only
when the one-way feed is still an owned event of the same fluid packet. Once it
has been turned into a scalar positive envelope, the proof has lost the
orientation that distinguishes irreversible record from reversible exchange.

So the current c0 edge is not merely "show finite pump work." It is:

```math
\text{retain the moving-driver signed event before positive readout,}
\tag{MDP.12}
```

or prove that every failure to retain it is already a bill, legal/stop event, or
Pack/Part/Field exit.
