# Finite Mode-Lobe Carrier Expansion Proof

Date: 2026-06-20

## Status

Formal packet-level proof complete.  `FiniteModeLobeCarrierExpansion.A` is
proved for the packet-realized mode values used in the source-mode notes.

This proof only discharges the finite carrier expansion and bookkeeping piece.
It does not prove lobe-local mode-test legality, refined modulation rank,
refined commutator legality, nodal-zone source evacuation, or downstream
summability of the oriented lobe readouts.

## 1. Inputs

Let \(\mathcal F_m^{src}\) be the selected native positive source packet family.
Assume the existing packet overlap bound

```math
\sum_{P\in\mathcal F_m^{src}}{\bf 1}_{Q(P)}\le B_m.
\tag{FMLP.1}
```

Let \(\psi_i(P)\) be the packet-realized value of a finite selected mode test,
with

```math
|\psi_i(P)|\le1,
\qquad
i=1,\dots,N_{mode}.
\tag{FMLP.2}
```

Let

```math
\mu_m^+(P):=[q_m(P)]_+.
\tag{FMLP.3}
```

## 2. Packet-level lobe partition

For each \(i\) and \(0<\kappa<1\), define

```math
\mathcal F_{m,i,+}^{src,\kappa}
:=
\{P\in\mathcal F_m^{src}:\psi_i(P)\ge\kappa\},
\tag{FMLP.4}
```

```math
\mathcal F_{m,i,-}^{src,\kappa}
:=
\{P\in\mathcal F_m^{src}:-\psi_i(P)\ge\kappa\},
\tag{FMLP.5}
```

and

```math
\mathcal F_{m,i,0}^{src,\kappa}
:=
\{P\in\mathcal F_m^{src}:|\psi_i(P)|<\kappa\}.
\tag{FMLP.6}
```

These three families are disjoint and satisfy

```math
\mathcal F_m^{src}
=
\mathcal F_{m,i,+}^{src,\kappa}
\dot\cup
\mathcal F_{m,i,-}^{src,\kappa}
\dot\cup
\mathcal F_{m,i,0}^{src,\kappa}.
\tag{FMLP.7}
```

## 3. Exact source bookkeeping

Because `(FMLP.7)` is a disjoint partition,

```math
\sum_{P\in\mathcal F_m^{src}}\mu_m^+(P)
=
\sum_{P\in\mathcal F_{m,i,+}^{src,\kappa}}\mu_m^+(P)
+
\sum_{P\in\mathcal F_{m,i,-}^{src,\kappa}}\mu_m^+(P)
+
\sum_{P\in\mathcal F_{m,i,0}^{src,\kappa}}\mu_m^+(P).
\tag{FMLP.8}
```

No source mass is created or lost by the finite lobe expansion.

## 4. Bounded overlap

For each fixed mode \(i\),

```math
\sum_{\sigma\in\{+, -, 0\}}
\sum_{P\in\mathcal F_{m,i,\sigma}^{src,\kappa}}
{\bf 1}_{Q(P)}
=
\sum_{P\in\mathcal F_m^{src}}{\bf 1}_{Q(P)}
\le B_m.
\tag{FMLP.9}
```

For the full finite mode family,

```math
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+, -, 0\}}
\sum_{P\in\mathcal F_{m,i,\sigma}^{src,\kappa}}
{\bf 1}_{Q(P)}
\le
N_{mode}B_m.
\tag{FMLP.10}
```

Thus the expansion has fixed finite multiplicity.  It cannot create a Zeno
selector explosion by itself.

## 5. No new cutoff at this level

The partition `(FMLP.4)`--`(FMLP.6)` is by packet labels.  It does not multiply
the local pre-Cauchy density by a new spatial cutoff inside \(Q(P)\).  Therefore
this formal expansion creates no new lift/projection or gauge-time commutator at
the packet-bookkeeping level.

If a later step replaces packet-label subfamilies by spatial lobe cutoffs inside
packets, that is a different theorem:

```math
\text{RefinedCarrierCommutatorLegal.A}
\tag{FMLP.11}
```

or

```math
\text{OrientedLobeModeTestCompatibility.A}.
\tag{FMLP.12}
```

Those inputs are not proved here.

## 6. Discharged piece

The proved statement is:

```math
\boxed{
\text{FiniteModeLobeCarrierExpansion.A}
}
\tag{FMLP.13}
```

in the packet-level sense:

```math
\boxed{
\begin{gathered}
\mathcal F_m^{src}
\leadsto
\{\mathcal F_{m,i,+}^{src,\kappa},
\mathcal F_{m,i,-}^{src,\kappa},
\mathcal F_{m,i,0}^{src,\kappa}\}_{i=1}^{N_{mode}},\\
\text{with exact source mass partition and overlap at most }N_{mode}B_m.
\end{gathered}
}
\tag{FMLP.14}
```

## 7. Remaining pieces for the lobe-expansion route

After `(FMLP.13)`, the finite lobe-expansion route reduces to

```math
\boxed{
\text{OrientedLobeModeTestCompatibility.A}
+
\text{LobeRefinedModeReadoutSummability.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{RefinedCarrierCommutatorLegal.A}
+
\text{NodalZoneSourceEvacuation.A}.
}
\tag{FMLP.15}
```

These are the actual remaining obligations.  The finite carrier expansion itself
is no longer a live obstruction at packet level.

## Verdict

`FiniteModeLobeCarrierExpansion.A` is formally discharged for packet-realized
mode values.  This removes one artificial bridge from the lobe-refined route.
The remaining work is legality and readout after the finite expansion, not the
finite expansion itself.
