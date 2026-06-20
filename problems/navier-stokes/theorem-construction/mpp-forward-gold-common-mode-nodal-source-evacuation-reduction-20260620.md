# Common-Mode Nodal Source Evacuation Reduction

Date: 2026-06-20

## Status

Reduction proof complete.  The finite-mode lobe route does not need
`NodalZoneSourceEvacuation.A` for each single mode separately.  It needs the
weaker common-mode statement: selected positive source cannot concentrate where
all finite mode tests are small at once.

This note proves the exact finite-mode algebra and identifies the remaining
inputs.  It does not prove the common-mode nodal source estimate.

## 1. Packet source and finite mode family

Let `F_m^{src}` be the selected positive source packet family.  Write

```math
\mu_m^+(P):=[q_m(P)]_+,
\qquad
P\in F_m^{src}.
\tag{CMN.1}
```

Let the finite mode tests have packet values

```math
\psi_i(P),
\qquad
i=1,\dots,N_{mode},
\qquad
|\psi_i(P)|\le 1.
\tag{CMN.2}
```

For `0<kappa<1`, define the common nodal packet family

```math
F_{m,all,0}^{\kappa}
:=
\{P\in F_m^{src}:\max_{1\le i\le N_{mode}}|\psi_i(P)|<\kappa\}.
\tag{CMN.3}
```

This is the only part of the source family invisible to every oriented finite
mode lobe.

## 2. Exact pointwise inequality

For every packet `P`,

```math
\begin{aligned}
\mu_m^+(P)
&\le
\kappa^{-1}
\sum_{i=1}^{N_{mode}}
\Big(
{\bf 1}_{\{\psi_i(P)\ge\kappa\}}[q_m(P)\psi_i(P)]_+
\\
&\qquad\qquad\qquad
+
{\bf 1}_{\{-\psi_i(P)\ge\kappa\}}[q_m(P)(-\psi_i(P))]_+
\Big)
\\
&\qquad
+
{\bf 1}_{F_{m,all,0}^{\kappa}}(P)\mu_m^+(P).
\end{aligned}
\tag{CMN.4}
```

Proof.  If `q_m(P)\le0`, then `mu_m^+(P)=0` and `(CMN.4)` is immediate.

If `q_m(P)>0` and `P` lies in the common nodal family, then the last term on
the right is exactly `mu_m^+(P)`.

If `q_m(P)>0` and `P` does not lie in the common nodal family, then some mode
`i` satisfies `|psi_i(P)|>=kappa`.  If `psi_i(P)>=kappa`, then

```math
[q_m(P)\psi_i(P)]_+
=q_m(P)\psi_i(P)
\ge
\kappa q_m(P)
=
\kappa\mu_m^+(P).
\tag{CMN.5}
```

If `-psi_i(P)>=kappa`, the same argument gives

```math
[q_m(P)(-\psi_i(P))]_+
\ge
\kappa\mu_m^+(P).
\tag{CMN.6}
```

Thus `(CMN.4)` holds in all cases.

## 3. Summed source comparison

Summing `(CMN.4)` over `F_m^{src}` gives

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
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P).
\end{aligned}
\tag{CMN.7}
```

So the finite lobe family sees all selected positive source except the common
nodal remainder.

## 4. Reduced nodal theorem

The exact remaining nodal statement is

```math
\boxed{
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)
\le
\operatorname{Legal}_{m,\kappa}+o_m(1).
}
\tag{CMN.8}
```

Call this `CommonModeNodalSourceEvacuation.A`.

It is strictly weaker than demanding `NodalZoneSourceEvacuation.A` for a fixed
single mode, because

```math
F_{m,all,0}^{\kappa}
\subset
\{P\in F_m^{src}:|\psi_i(P)|<\kappa\}
\qquad
\text{for every }i.
\tag{CMN.9}
```

Single-mode evacuation for any one fixed mode implies `(CMN.8)`.  The converse
is false: source can lie in the nodal collar of one mode while being seen by
another mode.

## 5. What does not prove the common-mode estimate

The original lower modulation-frame bound does not imply `(CMN.8)`.  A finite
mode family can be nondegenerate on the modulation tangent directions while all
mode values vanish on a selected source packet.

The packet countermodel is finite-dimensional.  Take packets
`P_0,P_1,\dots,P_d`.  Put all selected source mass on `P_0`:

```math
\mu_m^+(P_0)=1,
\qquad
\mu_m^+(P_j)=0
\quad (j\ge1).
\tag{CMN.10}
```

Let every mode vanish on the source packet:

```math
\psi_i(P_0)=0
\qquad
\text{for all }i.
\tag{CMN.11}
```

Choose the values of the same modes on `P_1,\dots,P_d` so that their pairings
with the modulation tangent directions have a positive lower singular value.
Then `NondegenerateModulationJacobian.A` holds for the finite mode matrix, but

```math
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)=1
\qquad
\text{for every }0<\kappa<1.
\tag{CMN.12}
```

Thus the common-mode nodal estimate needs source-support coverage or
same-carrier source integrability.  It is not a consequence of the frame lower
bound alone.

## 6. Exact suppliers for the common nodal remainder

### 6.1 Pointwise finite-mode source coverage

A direct sufficient input is

```math
\boxed{
F_m^{src}
\setminus
F_{m,legal}^{\kappa}
\subset
\{P:\max_i|\psi_i(P)|\ge\kappa\},
\qquad
\sum_{P\in F_{m,legal}^{\kappa}}\mu_m^+(P)
\le
\operatorname{Legal}_{m,\kappa}+o_m(1).
}
\tag{CMN.13}
```

This is `PointwiseModeFrameOnSelectedSource.A`.  Under `(CMN.13)`,
`CommonModeNodalSourceEvacuation.A` follows immediately.

### 6.2 Source-square plus common nodal packing

Let `w_m(P)>0` be a packet reference weight.  Assume a same-carrier source
square reserve

```math
S_m
:=
\sum_{P\in F_m^{src}}
{(\mu_m^+(P))^2\over w_m(P)}
\le
C_S,
\tag{CMN.14}
```

and a common nodal packing bound

```math
W_m(\kappa)
:=
\sum_{P\in F_{m,all,0}^{\kappa}}w_m(P)
\le
\varepsilon(\kappa),
\qquad
\varepsilon(\kappa)\downarrow0.
\tag{CMN.15}
```

Cauchy-Schwarz gives the exact estimate

```math
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)
\le
\left(
\sum_{P\in F_{m,all,0}^{\kappa}}
{(\mu_m^+(P))^2\over w_m(P)}
\right)^{1/2}
\left(
\sum_{P\in F_{m,all,0}^{\kappa}}w_m(P)
\right)^{1/2}.
\tag{CMN.16}
```

Using `(CMN.14)` and `(CMN.15)`,

```math
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)
\le
C_S^{1/2}\varepsilon(\kappa)^{1/2}.
\tag{CMN.17}
```

Thus

```math
\boxed{
\text{SelectedSourceSquareCarrierDomination.A}
+
\text{SourceSquareReserve.A}
+
\text{CommonModeNodalCollarPacking.A}
\Longrightarrow
\text{CommonModeNodalSourceEvacuation.A}.
}
\tag{CMN.18}
```

This is the clean coercive route for the nodal remainder.

### 6.3 Strict no-waste

A strict pressure-corrected no-waste Lyapunov theorem that dominates the same
selected source carrier also supplies `(CMN.8)`, because it supplies the
uniform-integrability strength represented by `(CMN.14)`.

## 7. Updated lobe-route reduction

Combining `(CMN.7)` with the existing packet-level lobe expansion,
oriented-lobe compatibility, finite-additivity, and refined-frame notes gives
the reduced packet-label route:

```math
\boxed{
\begin{gathered}
\text{NondegenerateModulationJacobian.A}
+
\text{ModeTestCompatibility.A}
+
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}
\\
+
\text{CommonModeNodalSourceEvacuation.A}
\Longrightarrow
\text{SourceModeScoreComparison.A on the finite lobe-expanded family}.
\end{gathered}
}
\tag{CMN.19}
```

If the proof uses spatial lobe cutoffs inside packets rather than packet-label
subfamilies, `RefinedCarrierCommutatorLegal.A` remains an additional input.

## Verdict

The lobe route is sharper than the previous single-mode formulation.  The
unseen source is not a nodal collar for one chosen mode; it is the common nodal
source where the entire finite mode family is small.

This removes one unnecessary burden from the reduced Door 2 route.  The live
nodal obstruction is now `CommonModeNodalSourceEvacuation.A`, supplied by either
pointwise finite-mode source coverage, or by a source-square/no-waste estimate
combined with common nodal packing.
