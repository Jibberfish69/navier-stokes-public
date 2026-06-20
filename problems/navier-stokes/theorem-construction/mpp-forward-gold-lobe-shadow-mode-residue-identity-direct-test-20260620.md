# Lobe-Shadow Mode Residue Identity Direct Test

Date: 2026-06-20

## Status

Direct lobe-shadow test complete.  The packet-label lobe expansion does not
itself prove `ModeProjectedMinimalChainResidueIdentity.A` on the lobe shadows.

The lobe split pays the sign problem and avoids new spatial cutoff commutators.
It does not pay the signed donor-chain identity.  A scalar donor pair that
cancels before the lobe restriction can leave a nonzero lobe-weighted residue
after restriction.

The useful refinement is exact: hard packet lobes introduce a lobe-boundary
crossing charge, while soft packet lobe weights remove that boundary jump and
reduce the finite-chain part to boundary endpoint coherence in the soft lobe
test class.  The older source-weighted mode-travel / strict-no-waste currencies
remain sufficient edgewise routes, but they are stronger than the finite-chain
burden after donor paths telescope.  The infinite part remains the no-free
terminal Zeno donor-chain wall.

## 1. Hard lobe-shadow target

Fix a mode `i`, orientation `sigma in {+,-}`, and threshold `0<kappa<1`.  Put

```math
\psi_{i,+}(P):=\psi_i(P),
\qquad
\psi_{i,-}(P):=-\psi_i(P),
\tag{LSM.1}
```

and define the hard oriented packet lobe

```math
F_{m,i,\sigma}^{\kappa}
:=
\{P\in F_m^{src}:\psi_{i,\sigma}(P)\ge\kappa\}.
\tag{LSM.2}
```

The lobe-shadow signed identity needed by the source-active lobe route is

```math
\sum_{P\in F_{m,i,\sigma}^{\kappa}}
q_m(P)\psi_{i,\sigma}(P)
=
\left\langle F_m^{src},\Psi_{i,\sigma}^{\kappa}\right\rangle
-\operatorname{Legal}_{m,i,\sigma}
-o_m(1).
\tag{LSM.3}
```

Here `q_m(P)` is the signed local pre-Cauchy source on the selected source
shadow.  The lobe test in `(LSM.3)` is a packet-label restriction, so it creates
no new spatial lobe cutoff inside `Q(P)`.

## 2. Exact finite-edge defect for hard lobes

Let `e=(D,R)` be a retained finite donor edge with signed amount `a_e>0`.
The receiver contributes `+a_e` and the donor contributes `-a_e`.  Define the
hard lobe weight

```math
\eta_{i,\sigma}^{\kappa}(P)
:=
{\bf 1}_{F_{m,i,\sigma}^{\kappa}}(P)\psi_{i,\sigma}(P).
\tag{LSM.4}
```

The scalar edge cancels:

```math
a_e-a_e=0.
\tag{LSM.5}
```

The lobe-weighted edge leaves

```math
a_e\eta_{i,\sigma}^{\kappa}(R)
-a_e\eta_{i,\sigma}^{\kappa}(D)
=
a_e
\left(
\eta_{i,\sigma}^{\kappa}(R)
-\eta_{i,\sigma}^{\kappa}(D)
\right).
\tag{LSM.6}
```

Thus finite scalar donor telescoping proves the lobe identity only after

```math
\sum_{e=(D,R)\in G_m^{fin}}
a_e
\left|
\eta_{i,\sigma}^{\kappa}(R)
-\eta_{i,\sigma}^{\kappa}(D)
\right|
\le
\operatorname{Legal}_{m,i,\sigma}^{lobedge}
+o_m(1).
\tag{LSM.7}
```

The hard lobe edge variation decomposes into two parts:

```math
\begin{aligned}
\left|
\eta_{i,\sigma}^{\kappa}(R)
-\eta_{i,\sigma}^{\kappa}(D)
\right|
&\le
{\bf 1}_{R,D\in F_{m,i,\sigma}^{\kappa}}
\left|\psi_{i,\sigma}(R)-\psi_{i,\sigma}(D)\right|
\\
&\quad+
{\bf 1}_{R\in F_{m,i,\sigma}^{\kappa},\,D\notin F_{m,i,\sigma}^{\kappa}}
\left|\psi_{i,\sigma}(R)\right|
\\
&\quad+
{\bf 1}_{D\in F_{m,i,\sigma}^{\kappa},\,R\notin F_{m,i,\sigma}^{\kappa}}
\left|\psi_{i,\sigma}(D)\right|.
\end{aligned}
\tag{LSM.8}
```

The first line is internal mode variation.  The last two lines are
lobe-boundary crossing terms.

## 3. Hard-lobe counteredges

The boundary crossing term is not paid by sign coherence.  Take one donor edge
with

```math
a_e=A,
\qquad
\psi_{i,\sigma}(R)=1,
\qquad
\psi_{i,\sigma}(D)=0.
\tag{LSM.9}
```

The scalar ledger cancels, while the hard lobe with `0<kappa<1` records

```math
A\eta_{i,\sigma}^{\kappa}(R)
-A\eta_{i,\sigma}^{\kappa}(D)
=A.
\tag{LSM.10}
```

Both packets can belong to the same selected source family.  No new spatial
cutoff is used.  The defect comes from cutting the donor graph by a packet-label
lobe.

There is also an internal variation defect.  If

```math
\psi_{i,\sigma}(R)=1,
\qquad
\psi_{i,\sigma}(D)=\kappa,
\tag{LSM.11}
```

with both endpoints in the hard lobe, then the lobe edge residue is

```math
A(1-\kappa).
\tag{LSM.12}
```

Therefore the lobe-shadow identity is not a consequence of scalar signed
saturation plus packet-label sign coherence.

## 4. Hard-lobe conditional theorem

For hard packet lobes, the exact finite-chain input is

```math
\boxed{
\text{HardLobeDonorEdgeCharge.A}_{i,\sigma,\kappa}
}
\tag{LSM.13}
```

meaning `(LSM.7)`.  Then the same finite donor-graph proof used in the scalar
minimal-chain identity gives

```math
\boxed{
\begin{gathered}
\text{ModeTestCompatibility.A}
+\text{TestEnrichedMinimalChainResidueIdentity.A}
\\
+\text{HardLobeDonorEdgeCharge.A}_{i,\sigma,\kappa}
+\text{NoFreeTerminalZenoDonorChain.A on }F_{m,i,\sigma}^{\kappa}
\\
\Longrightarrow
\text{ModeProjectedMinimalChainResidueIdentity.A on the hard lobe shadow.}
\end{gathered}
}
\tag{LSM.14}
```

Current inputs do not install `HardLobeDonorEdgeCharge.A`.

## 5. Soft packet lobe replacement

The hard boundary jump is avoidable at packet level.  Choose a Lipschitz cutoff
`\chi_\kappa:[0,1]\to[0,1]` with

```math
\chi_\kappa(r)=0\quad (r\le\kappa),
\qquad
\chi_\kappa(r)=1\quad (r\ge2\kappa),
\qquad
\operatorname{Lip}(\chi_\kappa)\le C_\chi\kappa^{-1}.
\tag{LSM.15}
```

Define the soft oriented lobe weight

```math
\zeta_{i,\sigma}^{\kappa}(P)
:=
\chi_\kappa\!\left((\psi_{i,\sigma}(P))_+\right)
(\psi_{i,\sigma}(P))_+.
\tag{LSM.16}
```

Then

```math
0\le \zeta_{i,\sigma}^{\kappa}(P)\le1,
\tag{LSM.17}
```

and

```math
\left|
\zeta_{i,\sigma}^{\kappa}(R)
-\zeta_{i,\sigma}^{\kappa}(D)
\right|
\le
C_\kappa
\left|
\psi_i(R)-\psi_i(D)
\right|,
\qquad
C_\kappa\le C(1+\kappa^{-1}).
\tag{LSM.18}
```

The hard lobe-boundary term has been replaced by ordinary mode variation with a
fixed threshold-dependent constant.

## 6. Soft-lobe source visibility

For a packet with `q_m(P)>0` and

```math
\max_i|\psi_i(P)|\ge2\kappa,
\tag{LSM.19}
```

there is an orientation `(i,\sigma)` such that

```math
\zeta_{i,\sigma}^{\kappa}(P)
=
|\psi_i(P)|
\ge2\kappa.
\tag{LSM.20}
```

Hence

```math
\mu_m^+(P)
\le
(2\kappa)^{-1}
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+,-\}}
\left[q_m(P)\zeta_{i,\sigma}^{\kappa}(P)\right]_+
+{\bf 1}_{F_{m,all,0}^{2\kappa}}(P)\mu_m^+(P).
\tag{LSM.21}
```

where

```math
F_{m,all,0}^{2\kappa}
:=
\{P\in F_m^{src}:\max_i|\psi_i(P)|<2\kappa\}.
\tag{LSM.22}
```

Thus soft packet lobes keep the same positive-source comparison as the hard
lobe route, with the common nodal threshold changed from `kappa` to `2kappa`.

## 7. Soft-lobe residue identity

The edgewise soft lobe defect along a finite donor chain is

```math
\sum_{e=(D,R)\in G_m^{fin}}
a_e
\left|
\zeta_{i,\sigma}^{\kappa}(R)
-\zeta_{i,\sigma}^{\kappa}(D)
\right|.
\tag{LSM.23}
```

Using `(LSM.18)`, it is bounded by

```math
C_\kappa
\sum_{e=(D,R)\in G_m^{fin}}
a_e
\left|\psi_i(R)-\psi_i(D)\right|.
\tag{LSM.24}
```

This edgewise estimate is sufficient, but it is not the sharp finite-chain
target.  After the donor graph is decomposed into finite retained paths
`\gamma_\alpha`, the interior terms telescope.  If `D_\alpha` and `R_\alpha`
are the two boundary endpoints of `\gamma_\alpha` and `a_\alpha` is the
transported signed amount, then

```math
\sum_{e=(D,R)\in\gamma_\alpha}
a_\alpha
\left(
\zeta_{i,\sigma}^{\kappa}(R)
-\zeta_{i,\sigma}^{\kappa}(D)
\right)
=
a_\alpha
\left(
\zeta_{i,\sigma}^{\kappa}(R_\alpha)
-\zeta_{i,\sigma}^{\kappa}(D_\alpha)
\right).
\tag{LSM.25}
```

Thus the finite soft-lobe burden is

```math
\sum_{\alpha}
a_\alpha
\left|
\zeta_{i,\sigma}^{\kappa}(R_\alpha)
-\zeta_{i,\sigma}^{\kappa}(D_\alpha)
\right|
\le
\operatorname{Legal}_{m,i,\sigma}^{softbdry}
+o_m(1).
\tag{LSM.26}
```

By `(LSM.18)`, this boundary condition follows from the endpoint mode
coherence estimate

```math
\sum_{\alpha}
a_\alpha
\max_j
\left|
\psi_j(R_\alpha)-\psi_j(D_\alpha)
\right|
\le
\operatorname{Legal}_{m}^{bdry}
+o_m(1).
\tag{LSM.27}
```

This is the finite donor boundary theorem
`FiniteDonorBoundaryCoherence.A(Phi_soft^kappa)`.  The exact soft lobe
identity is therefore

```math
\boxed{
\begin{gathered}
\text{ModeTestCompatibility.A}
+\text{TestEnrichedMinimalChainResidueIdentity.A for the soft lobe tests}
\\
+\text{FiniteDonorBoundaryCoherence.A}(\Phi_{soft}^{\kappa})
+\text{NoFreeTerminalZenoDonorChain.A on the soft lobe shadow}
\\
\Longrightarrow
\text{soft-lobe ModeProjectedMinimalChainResidueIdentity.A.}
\end{gathered}
}
\tag{LSM.28}
```

The previous edgewise route remains a sufficient but overstrong supplier:

```math
\begin{gathered}
\text{ModeDonorEdgeCoherence.A}
\Leftarrow
\text{SameShadowSourceWeightedGaugeTravelCharge.A},
\\
\text{SameShadowSourceWeightedGaugeTravelCharge.A}
\Leftarrow
\text{SameShadowSourceSquareReserve.A}
+\text{SameShadowUnweightedModulationAction.A}.
\end{gathered}
\tag{LSM.29}
```

It also follows from a strict no-waste Lyapunov theorem whose action density
dominates the same edgewise product term.  Those currencies are alternate
sufficient routes for the boundary coherence condition.

## 8. What remains

The lobe-shadow route now has two exact versions.

Hard packet lobes:

```math
\boxed{
\text{TestEnrichedMinimalChainResidueIdentity.A}
+\text{HardLobeDonorEdgeCharge.A}
+\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{LSM.30}
```

Soft packet lobes:

```math
\boxed{
\text{TestEnrichedMinimalChainResidueIdentity.A for soft lobe tests}
+\text{FiniteDonorBoundaryCoherence.A}(\Phi_{soft}^{\kappa})
+\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{LSM.31}
```

The soft version is the sharper route, because it removes the artificial
packet-threshold crossing charge and uses endpoint boundary coherence for
finite donor paths.  It does not remove retained endpoint mismatch, positive
carrier-saturation failure, or the infinite terminal Zeno donor-chain charge.

By the finite-mode rank test, the test-enriched same-shadow identity itself
still needs either

```math
\text{TotalVariationSameShadowResidueEvacuation.A}
\tag{LSM.32}
```

or

```math
\text{FiniteDimensionalResidualAnsatz.A}
+\text{ModeResidualGramLowerBound.A}.
\tag{LSM.33}
```

The first is Door 1 terminal signed saturation in total variation.  The second
is Door 2 profile-production rigidity.

## Verdict

`ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows` is not proved
by the finite lobe expansion.  The hard lobe formulation has an extra
lobe-boundary donor charge.  Replacing hard lobes by soft packet lobe weights
removes that artificial charge and leaves the real obstruction:

```math
\boxed{
\text{same-shadow test-enriched residue identity}
+\text{finite retained-endpoint coherence in the soft test class}
+\text{no-free terminal Zeno donor chain}.
}
\tag{LSM.34}
```

Thus the lobe-shadow branch does not create a new independent endpoint.  It
collapses back to the same native currencies already isolated by the heat-scale
pulse and critical-element route: same-shadow source-square/no-waste action,
endpoint readout coherence plus positive carrier saturation, or exact Zeno
profile production with no residual defect measure.
