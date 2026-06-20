# Source-Active Endpoint Lobe-Expanded Reduction

Date: 2026-06-20

## Status

Reduction proof complete.  A source-active endpoint residue from an infinite
donor chain does not require `SingleLobeSourceCarrier.A`,
`SourceWeightedModeDeficit.A`, or `ModePositiveLobeCarrierConcentration.A` on
the original selected carrier.

The packet-level finite lobe expansion sees positive source on both signs of
each mode test by using both oriented tests \(\psi_i\) and \(-\psi_i\).  The
remaining positive-carrier work is the same-shadow signed identity on the lobe
shadows plus common-mode nodal evacuation.

## 1. Input from endpoint source-trace split

Let \(\Delta_N^{act}\) be the source-active endpoint residue from
`ZenoEndpointCoherenceSourceTraceSplit.A`.  Under
`SourceTraceCompleteness.A + UniformSourceTraceRank.A`, a finite native
carrier mode family reads it:

```math
\sum_i
|\langle \Delta_N^{act},\Psi_i^{src}\rangle|^2
\ge
c_{src}^2\|\Delta_N^{act}\|_{E_U}^2.
\tag{SAL.1}
```

Thus a nonzero source-active endpoint residue gives a nonzero finite signed
mode readout.

## 2. Packet lobe inequality

For packet source

```math
\mu_m^+(P):=[q_m(P)]_+,
\qquad
|\psi_i(P)|\le1,
\tag{SAL.2}
```

the common-mode lobe inequality is

```math
\begin{aligned}
\sum_{P\in F_m^{src}}\mu_m^+(P)
&\le
\kappa^{-1}
\sum_{i=1}^{N_{mode}}
\sum_{\substack{P\in F_m^{src}\\ \psi_i(P)\ge\kappa}}
[q_m(P)\psi_i(P)]_+
\\
&\quad
+
\kappa^{-1}
\sum_{i=1}^{N_{mode}}
\sum_{\substack{P\in F_m^{src}\\ -\psi_i(P)\ge\kappa}}
[q_m(P)(-\psi_i(P))]_+
\\
&\quad
+
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P),
\end{aligned}
\tag{SAL.3}
```

where

```math
F_{m,all,0}^{\kappa}
:=
\{P\in F_m^{src}:\max_i|\psi_i(P)|<\kappa\}.
\tag{SAL.4}
```

This is already proved by the common-mode nodal reduction.  It is a pointwise
packet inequality, so no cancellation or compactness is hidden in it.

## 3. Paid packet-level lobe infrastructure

The following lobe-infrastructure inputs are already reduced to lower objects.

First, finite packet expansion:

```math
\text{FiniteModeLobeCarrierExpansion.A}
\tag{SAL.5}
```

partitions each selected source family into positive, negative, and nodal
packet subfamilies with exact source mass partition and bounded finite
multiplicity.

Second, oriented lobe compatibility:

```math
\text{ModeTestCompatibility.A}
+
\text{FiniteModeLobeCarrierExpansion.A}
\Longrightarrow
\text{OrientedLobeModeTestCompatibility.A}
\tag{SAL.6}
```

at packet-label level.

Third, finite additivity:

```math
\text{same-shadow signed readout on each lobe}
\Longrightarrow
\text{LobeRefinedModeReadoutSummability.A}.
\tag{SAL.7}
```

Fourth, refined rank:

```math
\text{NondegenerateModulationJacobian.A}
+
\text{full positive/negative/nodal lobe partition}
\Longrightarrow
\text{RefinedCarrierModeJacobian.A}.
\tag{SAL.8}
```

The lower singular value degrades by at most the fixed factor \(\sqrt3\).

## 4. What remains after lobe expansion

The lobe-expanded positive source readout is obtained from `(SAL.3)` after two
inputs.

The first is the signed same-shadow residue identity on each oriented lobe:

```math
\sum_{P\in F_{m,i,+}^{src,\kappa}}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\psi_i(P)
=
\langle F^{mod},\Psi_i\rangle_{+,lob}
-\operatorname{Legal}_{m,i,+}-o_m(1),
\tag{SAL.9}
```

and

```math
\sum_{P\in F_{m,i,-}^{src,\kappa}}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)(-\psi_i(P))
=
\langle F^{mod},-\Psi_i\rangle_{-,lob}
-\operatorname{Legal}_{m,i,-}-o_m(1).
\tag{SAL.10}
```

This is

```math
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}.
\tag{SAL.11}
```

The second is the common nodal remainder:

```math
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)
\le
\operatorname{Legal}_{m,\kappa}+o_m(1).
\tag{SAL.12}
```

This is

```math
\text{CommonModeNodalSourceEvacuation.A}.
\tag{SAL.13}
```

## 5. Exact reduced source-active package

Combining the endpoint source-trace split with the lobe-expanded carrier
algebra gives the conditional theorem:

```math
\boxed{
\begin{gathered}
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}
+
\text{NondegenerateModulationJacobian.A}
\\
+
\text{ModeTestCompatibility.A}
+
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}
\\
+
\text{CommonModeNodalSourceEvacuation.A}
\\
\Longrightarrow
\text{source-active endpoint residue is native-positive visible on the
lobe-expanded selected carrier.}
\end{gathered}
}
\tag{SAL.14}
```

No single-lobe concentration theorem is used in `(SAL.14)`.

## 6. Remaining non-aliased walls

After `(SAL.14)`, the source-active branch has only three live lower inputs.

First, the signed same-shadow identity:

```math
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}.
\tag{SAL.15}
```

Second, common nodal evacuation:

```math
\text{CommonModeNodalSourceEvacuation.A}.
\tag{SAL.16}
```

Third, the source-null branch left by the endpoint split:

```math
\text{SourceNullTangentEvacuation.A}.
\tag{SAL.17}
```

The second and third both route to source-square, strict no-waste, complete
no-escape readout, or exact Zeno profile production unless an independent
pointwise source-coverage theorem is supplied.

## 7. Consequence

The following objects are no longer necessary as original-carrier demands for
the source-active endpoint branch:

```math
\text{SingleLobeSourceCarrier.A},
\qquad
\text{SourceWeightedModeDeficit.A},
\qquad
\text{ModePositiveLobeCarrierConcentration.A}.
\tag{SAL.18}
```

They remain valid stronger routes, but the lobe-expanded packet-label route
avoids them.

## Verdict

The source-active side of the minimal donor-chain residue is now reduced to:

```math
\boxed{
\text{lobe-shadow signed residue identity}
+
\text{common-mode nodal evacuation}
}
\tag{SAL.19}
```

plus the already separated source-null branch.  This is strictly sharper than
requiring the original selected positive source carrier to lie in one mode
lobe.
