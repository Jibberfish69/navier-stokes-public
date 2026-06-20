# Oriented Lobe Mode-Test Compatibility Proof

Date: 2026-06-20

## Status

Relative packet-level proof complete.  `OrientedLobeModeTestCompatibility.A`
adds no new lobe-specific obstruction once `ModeTestCompatibility.A` is
available on the original selected source family and
`FiniteModeLobeCarrierExpansion.A` is used only as a packet-label expansion.

This does not prove `ModeTestCompatibility.A` itself.  The original local
multiplier realization, lift/projection commutator, gauge-time commutator, and
same-family selector compatibility inputs remain exactly the inputs recorded in
the mode-test compatibility note.

## 1. Inputs

Assume `ModeTestCompatibility.A` for a selected mode test \(\psi_i\) on the
native selected source family \(\mathcal F_m^{src}\).  In packet form this gives

```math
\left\langle F^{src},\Psi_i(U)\right\rangle
=
\sum_{P\in\mathcal F_m^{src}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\psi_i(P)\,dxdt
\operatorname{Legal}_{m,i}+o_m(1).
\tag{OLM.1}
```

It also supplies a legal local multiplier \(\phi_{i,m}\) with

```math
\psi_i(P)=\operatorname{Av}_{Q(P)}\phi_{i,m},
\qquad
|\psi_i(P)|\le1,
\tag{OLM.2}
```

and the legal commutator and gauge-time bounds already recorded in
`ModeTestCompatibility.A`.

Assume the packet-level lobe expansion

```math
\mathcal F_m^{src}
=
\mathcal F_{m,i,+}^{src,\kappa}
\dot\cup
\mathcal F_{m,i,-}^{src,\kappa}
\dot\cup
\mathcal F_{m,i,0}^{src,\kappa}.
\tag{OLM.3}
```

## 2. Oriented packet tests

Define the two oriented lobe tests by

```math
\psi_{i,+}(P):=\psi_i(P)
\quad
\text{on }\mathcal F_{m,i,+}^{src,\kappa},
\tag{OLM.4}
```

and

```math
\psi_{i,-}(P):=-\psi_i(P)
\quad
\text{on }\mathcal F_{m,i,-}^{src,\kappa}.
\tag{OLM.5}
```

The corresponding local multipliers are \(\phi_{i,m}\) and \(-\phi_{i,m}\).
Sign change preserves every multiplier bound:

```math
\|\pm\phi_{i,m}\|_{\mathcal T}
=
\|\phi_{i,m}\|_{\mathcal T},
\tag{OLM.6}
```

for each test norm \(\mathcal T\) used by the local pre-Cauchy ledger.

The lift/projection commutator changes sign:

```math
\operatorname{LiftProj}((-\phi_{i,m})\mathcal N^{loc}_{preCauchy})
-
(-\phi_{i,m})\operatorname{LiftProj}(\mathcal N^{loc}_{preCauchy})
=
-
\operatorname{Legal}^{comm}_{m,i}
+o_m(1).
\tag{OLM.7}
```

Thus its absolute/legal size is the same as for \(\phi_{i,m}\).  The
gauge-time derivative also changes sign and is paid by the same legal ledger.

## 3. No new cutoff at packet-label level

The lobe-restricted scores are packet sub-sums:

```math
S_{i,+}^{lob}
:=
\sum_{P\in\mathcal F_{m,i,+}^{src,\kappa}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\psi_i(P)\,dxdt,
\tag{OLM.8}
```

and

```math
S_{i,-}^{lob}
:=
\sum_{P\in\mathcal F_{m,i,-}^{src,\kappa}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)(-\psi_i(P))\,dxdt.
\tag{OLM.9}
```

No multiplier of the form

```math
{\bf 1}_{\{\psi_i\ge\kappa\}}\phi_{i,m}
\quad\text{or}\quad
{\bf 1}_{\{-\psi_i\ge\kappa\}}\phi_{i,m}
\tag{OLM.10}
```

is introduced.  The restriction is by packet labels after the original packet
localization has already been made.  Therefore the packet-level oriented lobe
route creates no new spatial lobe-cutoff commutator.

If a later argument replaces packet-label subfamilies by actual spatial cutoffs
inside packets, then `(OLM.10)` is no longer avoided and
`RefinedCarrierCommutatorLegal.A` becomes live again.  That is not the route
proved here.

## 4. Same-family inheritance

The lobe families are subfamilies of the original selected source family:

```math
\mathcal F_{m,i,+}^{src,\kappa}
\cup
\mathcal F_{m,i,-}^{src,\kappa}
\cup
\mathcal F_{m,i,0}^{src,\kappa}
\subset
\mathcal F_m^{src}.
\tag{OLM.11}
```

Thus the same-family support condition from `ModeTestCompatibility.A` is
inherited by every oriented lobe subfamily.  No new selected shadow is created
at the packet-label level.

## 5. Discharged relative bridge

The proved relative implication is

```math
\boxed{
\text{ModeTestCompatibility.A}
+
\text{FiniteModeLobeCarrierExpansion.A}
\Longrightarrow
\text{OrientedLobeModeTestCompatibility.A}
}
\tag{OLM.12}
```

in the packet-label sense described above.

For this same packet-label route, the lobe expansion also creates no additional
`RefinedCarrierCommutatorLegal.A` obligation beyond the commutator already paid
inside `ModeTestCompatibility.A`.

## 6. Remaining lobe-route obligations

After `(OLM.12)`, the lobe-expansion route no longer needs a separate
lobe-specific compatibility theorem.  It still needs:

```math
\boxed{
\text{ModeTestCompatibility.A}
+
\text{LobeRefinedModeReadoutSummability.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{NodalZoneSourceEvacuation.A}.
}
\tag{OLM.13}
```

If the proof switches from packet-label subfamilies to spatial lobe cutoffs,
then `RefinedCarrierCommutatorLegal.A` returns as an additional live input.

## Verdict

`OrientedLobeModeTestCompatibility.A` is not an independent analytic obstruction
for the packet-label lobe expansion.  It is inherited from
`ModeTestCompatibility.A` by sign symmetry and subfamily restriction.

The live obstruction in this part of the lobe-refined route is now the original
mode-test compatibility package plus lobe-readout summability, retained
modulation rank, and nodal-zone source evacuation.
