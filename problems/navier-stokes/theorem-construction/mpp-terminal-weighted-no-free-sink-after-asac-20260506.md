# MPP TerminalWeightedNoFreeSink.A After ASAC

Date: 2026-05-06

Status: theorem-facing reduction; non-Zeno and ASAC-paid branches discharged,
terminal Zeno source-residue rigidity remains the analytic open atom.

Purpose: prove the no-free-sink estimate needed by the post-ASAC near-band
source wall as far as the current route permits, without importing
`ScaleCriticalTreeCarleson.A`.

## 0. Target

Let `\mathcal F_N(W)` be a bounded-overlap retained same-fluid terminal packet
family on a heat window `W`.  After the endpoint, projected-cutoff, pressure,
and active-alignment ledgers have been removed, the remaining near-band
source-current carrier is:

```math
\mathcal S_{near}
=
\sum_{P\in\mathcal F_N(W)}
\omega_P\tau_P
\int_{I_P}Source_P^{loc}(t)b_P(t)\,dt.
\tag{TWNFS.1}
```

`TerminalWeightedNoFreeSink.A` is the estimate:

```math
\boxed{
|\mathcal S_{near}|
\le
\mathrm{Legal}_{N,Q}^{signed}(W)+o_N(1).
}
\tag{TWNFS.2}
```

The phrase "no free sink" means: an internal legal same-fluid donor sink cannot
feed terminal positive source without either staying in the signed ledger,
paying installed legal loss, spending finite donor reserve, or producing a
terminal Zeno source-residue branch killed by rigidity.

## 1. Exact edge trichotomy

For each selected positive terminal source-current edge:

```math
e:P^-\to P,
\qquad P\in\mathcal F_N(W),
\tag{TWNFS.3}
```

assign the bare signed counter-edge `e^*` from the pre-weighted dyadic exchange
ledger.  Relative to the usable terminal ledger, exactly one of the following
holds:

1. `e^*` remains inside the same usable terminal signed ledger;
2. `e^*` exits through boundary, off-family, heat-action, pressure, cutoff,
   projection, collar, or other already named legal loss;
3. `e^*` is an internal legal same-fluid donor sink feeding the selected
   receiver.

This is a taxonomy, not an analytic estimate: it is the partition of the
counter-edge endpoint relative to the selected terminal family and the named
legal ledgers.  The only non-legal case is case 3.

## 2. Case 1: retained signed partner

If the signed partner remains in the usable ledger, the bare exchange
antisymmetry gives:

```math
J_{e^*}=-J_e.
\tag{TWNFS.4}
```

After terminal weights:

```math
W_PJ_e+W_{P^-}J_{e^*}
=(W_P-W_{P^-})J_e.
\tag{TWNFS.5}
```

The positive receiver-side defect is:

```math
\big[(W_P-W_{P^-})J_e\big]_+.
\tag{TWNFS.6}
```

By `mpp-one-sided-pair-weight-defect-after-asac-20260506.md`,

```text
ASAC.A => PositivePairWeightDefectCharge.A,
```

so `(TWNFS.6)` is bounded by:

```math
\mathrm{Legal}_{N,Q}^{ASAC}(W)+o_N(1).
\tag{TWNFS.7}
```

The negative pair-weight mismatch is favorable because the partner carries the
larger weight.  Thus retained signed partners do not contribute an unpaid
positive terminal source after ASAC.

## 3. Case 2: legal exit

If the counter-edge leaves through a named legal channel, it is paid by the
corresponding already typed ledger:

```text
boundary / off-family / heat-action / pressure / cutoff / projection / collar.
```

The projected-cutoff and lifted residual part has already been localized in the
weighted-lifted audits and is consumed here as:

```text
ProjectedCutoffLedger.A + LegalBoundaryLedger.A.
```

Therefore case 2 contributes:

```math
\mathrm{Legal}_{N,Q}^{exit}(W)+o_N(1).
\tag{TWNFS.8}
```

## 4. Case 3: internal donor sink

The only hard case is a legal same-fluid donor sink internal to the packet
system.  This is the old obstruction:

```math
J(A\to B)=F>0,
\qquad
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
\tag{TWNFS.9}
```

Here `B` is the selected terminal receiver and `A` is an internal donor.  First
current selection does not remove `A`, because `A` is a negative source sink,
not an earlier positive arrival.

Attach to `A` its legal source-refill parents.  Iterating produces a legal
source-refill tree `\mathcal T(A)`.  By
`mpp-two-tower-donor-balance-modulo-refill-note.md`, the local donor balance
identity gives for every finite truncation:

```math
\sum_{e\in\mathcal T_L^{int}}\pi(e)
\le C_{\mathrm{TWNFS}}
\sum_{v\in\partial\mathcal T_L}E(v;t_v^-)
+\sum_{v\in\mathcal T_L}\ell(v)
+\operatorname{Boundary}_{overlap}(\mathcal T_L).
\tag{TWNFS.10}
```

The internal refill terms telescope.  Bounded overlap and legal packet
scheduling absorb `\operatorname{Boundary}_{overlap}` into legal loss.

### 4.1 Non-Zeno donor trees

If every branch reaches a fixed preterminal entrance surface, then
`EntranceLeafDecay.A` applies.  Original smooth data make the high-shell leaf
energy vanish as the terminal threshold tends to infinity:

```math
\sum_{v\in\partial\mathcal T_L}E(v;t_v^-)=o_N(1).
\tag{TWNFS.11}
```

Together with `(TWNFS.10)`, the internal donor sink is paid by legal loss plus
`o_N(1)`.

Thus non-Zeno internal donor sinks are discharged by:

```text
LocalDonorBalance.A + EntranceLeafDecay.A.
```

### 4.2 Zeno donor trees

If a branch does not reach a fixed entrance surface, then the heat-scale radii
form a terminal Zeno chain:

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
\tag{TWNFS.12}
```

The finite-tree telescoping cannot close this case by original tail decay.  The
non-circular closure is exactly:

```text
ZenoSourceResidueRigidity.A.
```

This theorem says that any uncharged Zeno source-refill branch extracts a rigid
ancient source-residue limit and the inherited active source residue vanishes
there.  If `ZenoSourceResidueRigidity.A` holds, the lower source mass carried by
the Zeno branch contradicts residue vanishing.  Hence no uncharged Zeno donor
sink remains.

This step deliberately does not use `ScaleCriticalTreeCarleson.A`; that would
be circular for the current height-flux/source-wall route.

## 5. Theorem

```math
\boxed{
\begin{aligned}
&ASAC.A\\
&\quad+
PositivePairWeightDefectCharge.A\\
&\quad+
ProjectedCutoffLedger.A\\
&\quad+
LegalBoundaryLedger.A\\
&\quad+
LocalDonorBalance.A\\
&\quad+
EntranceLeafDecay.A\\
&\quad+
ZenoSourceResidueRigidity.A\\
&\Longrightarrow TerminalWeightedNoFreeSink.A.
\end{aligned}
}
\tag{TWNFS.A}
```

Since `ASAC.A => PositivePairWeightDefectCharge.A`, the theorem can be read in
the shorter form:

```math
\boxed{
\begin{aligned}
&ASAC.A\\
&\quad+
ProjectedCutoffLedger.A
+LegalBoundaryLedger.A\\
&\quad+
LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A\\
&\Longrightarrow TerminalWeightedNoFreeSink.A.
\end{aligned}
}
\tag{TWNFS.A'}
```

Proof.  Apply the edge trichotomy in Section 1 to every selected positive
terminal source-current edge.  Case 1 is paid by the ASAC-derived one-sided
pair-weight charge.  Case 2 is paid by the named legal exit ledgers.  Case 3
generates a legal source-refill tree.  Finite non-Zeno trees telescope by
`LocalDonorBalance.A` and their entrance leaves vanish by `EntranceLeafDecay.A`.
An uncharged infinite terminal tree is a Zeno source-refill branch; by
`ZenoSourceResidueRigidity.A` its inherited source residue vanishes, contradicting
the normalized source lower bound on the selected branch.  Hence every selected
edge is paid by legal loss or `o_N(1)`.  Summing over the bounded-overlap
terminal family gives `(TWNFS.2)`.

## 6. Immediate closure consequence

Combining this theorem with
`mpp-nearband-material-source-after-asac-reduction-20260506.md` gives:

```math
\boxed{
\begin{aligned}
&ASAC.A\\
&\quad+
NearBandBoundaryPack.A\\
&\quad+
ProjectedCutoffLedger.A
+LegalBoundaryLedger.A\\
&\quad+
LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A\\
&\Longrightarrow NearBandMaterialSourceCharge.A.
\end{aligned}
}
\tag{NMS-ZENO}
```

Thus, after ASAC and the one-sided pair-weight correction, the near-band
source wall has been reduced to the Zeno source-residue rigidity atom.

## 7. Honest remaining atom

Installed:

```text
ASAC.A
PositivePairWeightDefectCharge.A
LocalDonorBalance.A
EntranceLeafDecay.A on non-Zeno branches
```

Still open:

```text
ZenoSourceResidueRigidity.A
```

At the current route resolution, the open atom splits as:

```text
ZenoBoundedClass.A + ZenoResidueLiouville.A.
```

This is now the clean post-ASAC donor/no-free-sink frontier.  A proof of
`ZenoSourceResidueRigidity.A` closes `TerminalWeightedNoFreeSink.A`, then
`NearBandMaterialSourceCharge.A`, then the post-ASAC height-flux microfrontier
modulo the already named frame, boundary, and Field ledgers.

The sharper Zeno audit is recorded in
`mpp-zeno-source-residue-frontier-after-asac-20260506.md`.  It identifies the
narrowest current Zeno atom as:

```text
TemporalNonAtomicSource.A.
```

The known sufficient route for that atom passes through
`HeatScaleSquareSource.A`, hence through `ScaleCriticalTreeCarleson.A`; that
route is circular here.  A non-circular proof must therefore supply terminal
temporal anti-concentration by a genuinely new mechanism.
