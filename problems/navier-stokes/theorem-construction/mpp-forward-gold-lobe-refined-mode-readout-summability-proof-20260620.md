# Lobe-Refined Mode Readout Summability Proof

Date: 2026-06-20

## Status

Relative finite-additivity proof complete.  `LobeRefinedModeReadoutSummability.A`
adds no new analytic obstruction once the oriented lobe readout identities exist
on the finite packet-label lobe family.

This proof does not install the lobe readout identities themselves.  Those still
come from `ModeTestCompatibility.A` plus the mode-resolved same-shadow residue
identity on the selected lobe shadows.

## 1. Inputs

Let the finite packet lobe expansion be

```math
\mathcal F_m^{src}
=
\mathcal F_{m,i,+}^{src,\kappa}
\dot\cup
\mathcal F_{m,i,-}^{src,\kappa}
\dot\cup
\mathcal F_{m,i,0}^{src,\kappa},
\qquad
i=1,\dots,N_{mode}.
\tag{LRM.1}
```

For each oriented non-nodal lobe \(\sigma\in\{+,-\}\), write

```math
\psi_{i,+}(P):=\psi_i(P),
\qquad
\psi_{i,-}(P):=-\psi_i(P).
\tag{LRM.2}
```

Assume that each oriented lobe has a legal same-shadow readout:

```math
R_{m,i,\sigma}
:=
\sum_{P\in\mathcal F_{m,i,\sigma}^{src,\kappa}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)
\psi_{i,\sigma}(P)\,dxdt
=
\mathcal M_{m,i,\sigma}
-\operatorname{Legal}_{m,i,\sigma}
-o_{m,i,\sigma}(1).
\tag{LRM.3}
```

Here \(\mathcal M_{m,i,\sigma}\) denotes the corresponding signed mode/source
projection after the chosen lobe readout identity has been installed.

## 2. Finite summability

There are at most \(2N_{mode}\) oriented non-nodal lobe readouts.  Therefore

```math
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+,-\}}
R_{m,i,\sigma}
=
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+,-\}}
\mathcal M_{m,i,\sigma}
-
\operatorname{Legal}^{lob}_{m}
-
o_m(1),
\tag{LRM.4}
```

with

```math
\operatorname{Legal}^{lob}_{m}
:=
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+,-\}}
\operatorname{Legal}_{m,i,\sigma},
\qquad
o_m(1)
:=
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+,-\}}
o_{m,i,\sigma}(1).
\tag{LRM.5}
```

Because \(N_{mode}\) is fixed,

```math
\sum_{i,\sigma}o_{m,i,\sigma}(1)=o_m(1).
\tag{LRM.6}
```

If each legal family is summable or bounded by the established legal ledger,
then so is their finite sum:

```math
\operatorname{Legal}^{lob}_{m}
\le
C_{mode}\operatorname{Legal}^{mode}_{m},
\qquad
C_{mode}\le 2N_{mode}.
\tag{LRM.7}
```

## 3. No selector explosion

The packet-level expansion creates at most \(2N_{mode}\) oriented lobe carriers
plus \(N_{mode}\) nodal remnants.  Thus a finite-selector argument remains
finite:

```math
\#\{(i,\sigma):i=1,\dots,N_{mode},\ \sigma\in\{+,-\}\}
\le2N_{mode}.
\tag{LRM.8}
```

No diagonal or Zeno selector tree is created by summing the oriented lobe
readouts.

## 4. What this proof does not supply

The assumption `(LRM.3)` is not automatic.  For each lobe it still requires a
same-shadow signed source identity of the same kind isolated in the Door 2
mode-residue notes:

```math
\boxed{
\text{ModeProjectedMinimalChainResidueIdentity.A}
}
\tag{LRM.9}
```

or its lobe-restricted version.  The summability proof only says that finitely
many such identities may be added without changing the proof currency.

This proof also does not supply `RefinedCarrierModeJacobian.A` or
`NodalZoneSourceEvacuation.A`.  It is independent of retained modulation rank
and independent of payment of the nodal lobe.

## 5. Discharged relative bridge

The proved implication is

```math
\boxed{
\text{finite oriented lobe readout identities}
\Longrightarrow
\text{LobeRefinedModeReadoutSummability.A}.
}
\tag{LRM.10}
```

Equivalently, in the current lobe route,

```math
\boxed{
\text{LobeRefinedModeReadoutSummability.A}
}
\tag{LRM.11}
```

is not an independent analytic supplier.  It is finite additivity once the
per-lobe same-shadow readout identities are installed.

## 6. Remaining lobe-route obligations

After this finite-additivity proof and the oriented compatibility proof, the
packet-label lobe route reduces to

```math
\boxed{
\text{ModeTestCompatibility.A}
+
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{NodalZoneSourceEvacuation.A}.
}
\tag{LRM.12}
```

If spatial lobe cutoffs are introduced inside packets, then
`RefinedCarrierCommutatorLegal.A` must also be restored to the live list.

## Verdict

`LobeRefinedModeReadoutSummability.A` is formally discharged as a finite
summability step.  It does not create the missing same-shadow readout.  It only
shows that once the finitely many lobe readouts exist, their legal and little-o
terms remain legal and little-o after summing.
