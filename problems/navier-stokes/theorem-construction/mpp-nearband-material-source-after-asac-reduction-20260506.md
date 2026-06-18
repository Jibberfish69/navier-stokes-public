# MPP NearBandMaterialSourceCharge.A After ASAC Reduction

Date: 2026-05-06

Status: theorem-facing reduction; ASAC side discharged, signed terminal
weight/no-free-sink side still open.

Purpose: update the near-band material-source wall after
`mpp-asac-parent-drain-assembly-20260506.md`.  The active alignment term that
previously kept `NearBandMaterialSourceCharge.A` tied to the full source wall is
now routed through `ASAC.A`.  What remains is the signed-partner / one-sided
terminal-weight obstruction.

## 0. Inputs now available

The current route has installed:

```text
ASAC.A
```

on the native terminal parent-drain route:

```text
PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
+ TerminalTangentNoParent.A
+ TPNI.A
=> ASAC.A.
```

Here `ASAC.A` is used only for the active strain-alignment carrier.  It does
not assert signed partner saturation and does not by itself control the
one-sided terminal weight mismatch.

## 1. Near-band material-source normal form

On a retained same-fluid terminal Field packet `P`, write the near-band
material coefficient as:

```math
B_P^{near}
=
\mathcal N_{j_P,L}^{near}
+\mathcal P_{j_P,L}^{near}
+\mathcal C_{j_P,L}^{near}.
```

The target is:

```math
\boxed{
\sum_{P\in F_N(W)}
\omega_P E_P\tau_P
\int_{I_P}\|B_P^{near}(t)\|_\infty\,dt
\le
\mathrm{Legal}_{N,Q}(W)+o_N(1).
}
\tag{NMS.1}
```

The material derivative packetization used in
`mpp-nearband-material-source-charge-audit-20260506.md` gives, after cutting to
the selected terminal positive carrier,

```math
\int_{I_P}\omega_PE_P\tau_P\,D_t b_P(t)\,dt
=
[\omega_PE_P\tau_P b_P]_{\partial I_P}
-\int_{I_P}\omega_P\tau_P(D_tE_P)b_P\,dt
+\mathrm{Com}_{P}^{near},
\tag{NMS.2}
```

where `b_P` is a scalar packet readout of `B_P^{near}` against the active frame
and `Com_P^{near}` is the cutoff/projector/material-commutator ledger.

The shell packet balance has the form:

```math
D_tE_P
=
2\sigma_PE_P
-c\tau_P^{-1}E_P
+Source_P^{loc}
+Legal_P.
\tag{NMS.3}
```

Substituting `(NMS.3)` into `(NMS.2)` splits the live carrier into four pieces:

```text
endpoint boundary,
active alignment,
localized signed source-current,
legal commutator/cutoff/pressure loss.
```

## 2. ASAC removes the active-alignment piece

The active-alignment contribution is:

```math
\mathcal A_{near}
=
\sum_P
\omega_P\tau_P
\int_{I_P}
E_P(t)\,\sigma_P(t)\,b_P(t)\,dt.
\tag{NMS.4}
```

After freezing the packet frame and passing to the terminal first-pulse normal
form, `(NMS.4)` is exactly an ASAC-typed active strain-alignment cost up to
the already licensed near-band cutoff and pressure residuals.  Therefore the
installed theorem `ASAC.A` gives:

```math
\boxed{
|\mathcal A_{near}|
\le
\mathrm{Legal}_{N,Q}^{ASAC}(W)+o_N(1).
}
\tag{NMS.5}
```

This is the concrete improvement over the earlier audit.  The near-band source
wall no longer has an active-alignment open branch once the parent-drain ASAC
assembly is accepted.

## 3. Remaining signed carrier

The source-current contribution is:

```math
\mathcal S_{near}
=
\sum_P
\omega_P\tau_P
\int_{I_P}
Source_P^{loc}(t)b_P(t)\,dt.
\tag{NMS.6}
```

The bare unweighted packet exchange has a signed counter-edge, but the live
object in `(NMS.6)` is terminal-selected, one-sided weighted, lifted,
localized, and positive-parted.  Thus the remaining missing assertion is not
ASAC.  It is:

```text
TerminalWeightedNoFreeSink.A
```

with the following meaning.

For every selected terminal positive near-band source-current edge, either:

```text
its signed partner remains inside the same usable terminal ledger,
```

or:

```text
the partner loss is paid by boundary, heat-action, legal off-family loss,
donor depletion, or terminal Zeno residue exclusion.
```

Equivalently:

```math
\boxed{
|\mathcal S_{near}|
\le
\mathrm{Legal}_{N,Q}^{signed}(W)+o_N(1).
}
\tag{TWNFS}
```

This is a name for the exact remaining primitive, not a disguised proof.  In
the existing file system it is represented by the intersection of:

```text
TerminalSignedSaturation.A,
ParabolicNoFreeSink.A,
PositivePairWeightDefectCharge.A,
TwoTowerDonorDepletion.A or ZenoSourceResidueRigidity.A.
```

The pair-weight entry above is no longer an independent open primitive after
`mpp-one-sided-pair-weight-defect-after-asac-20260506.md`: the positive
receiver-side pair defect is paid by `ASAC.A`.  The remaining live part is the
signed partner / donor-sink side.

## 4. Conditional theorem now proved

```math
\boxed{
\begin{aligned}
&ASAC.A\\
&\quad+
NearBandBoundaryPack.A\\
&\quad+
ProjectedCutoffLedger.A\\
&\quad+
TerminalWeightedNoFreeSink.A\\
&\Longrightarrow NearBandMaterialSourceCharge.A.
\end{aligned}
}
\tag{NMS-ASAC}
```

Proof.  Use `(NMS.2)` on each retained packet and sum with bounded overlap.
`NearBandBoundaryPack.A` pays the endpoint term.  `ProjectedCutoffLedger.A`
pays the pressure/projection/cutoff/material-commutator residue.  The damping
piece in `(NMS.3)` has favorable sign after terminal positive selection, or is
absorbed into the same legal heat ledger.  The active-alignment term is paid by
`ASAC.A` through `(NMS.5)`.  The only remaining term is `(NMS.6)`, which is
exactly `TerminalWeightedNoFreeSink.A`.  Summing the four ledgers gives
`(NMS.1)`.

## 5. Sharpened closure form

Since the current signed-current notes already reduce the no-free-sink carrier
to terminal signed saturation plus donor depletion, the previous theorem has a
more repo-native corollary:

```math
\boxed{
\begin{aligned}
&ASAC.A\\
&\quad+
NearBandBoundaryPack.A\\
&\quad+
ProjectedCutoffLedger.A\\
&\quad+
TerminalSignedSaturation.A\\
&\quad+
TwoTowerDonorDepletion.A\\
&\Longrightarrow NearBandMaterialSourceCharge.A.
\end{aligned}
}
\tag{NMS-TTD}
```

This is non-circular only if `TwoTowerDonorDepletion.A` is proved through its
own refill-tree well-foundedness or Zeno-rigidity branch, not by importing
`ScaleCriticalTreeCarleson.A`.

## 6. Verdict

The near-band wall has strictly shrunk.

Old live split:

```text
active alignment
+ signed terminal source-current
+ boundary/legal bookkeeping.
```

New live split:

```text
signed terminal source-current
+ boundary/legal bookkeeping.
```

After the boundary and projected-cutoff ledgers, the exact remaining
primitive is:

```text
TerminalWeightedNoFreeSink.A
```

or, in the existing theorem vocabulary:

```text
TerminalSignedSaturation.A + TwoTowerDonorDepletion.A
```

with `TwoTowerDonorDepletion.A` reduced to `RefillTreeWellFounded.A` and then
to the terminal Zeno source-residue alternatives by the existing donor notes.

## 7. Post-ASAC no-free-sink reduction

`mpp-terminal-weighted-no-free-sink-after-asac-20260506.md` proves the sharp
conditional form:

```text
ASAC.A
+ ProjectedCutoffLedger.A
+ LegalBoundaryLedger.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalWeightedNoFreeSink.A.
```

Therefore the near-band closure can now be read as:

```text
ASAC.A
+ NearBandBoundaryPack.A
+ ProjectedCutoffLedger.A
+ LegalBoundaryLedger.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> NearBandMaterialSourceCharge.A.
```

The remaining analytic atom is `ZenoSourceResidueRigidity.A`, not active
alignment and not pair-weight flattening.
