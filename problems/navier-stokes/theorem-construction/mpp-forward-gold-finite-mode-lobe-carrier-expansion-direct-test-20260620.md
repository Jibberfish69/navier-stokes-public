# Finite Mode-Lobe Carrier Expansion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The algebraic lobe expansion is valid, and it is weaker
than `SingleLobeSourceCarrier.A`.  The full theorem is not installed because the
current proof architecture has not yet legalized replacing one selected mode
carrier by a bounded finite family of oriented lobe-refined carriers.

Update: the packet-level finite expansion itself is discharged in
`mpp-forward-gold-finite-mode-lobe-carrier-expansion-proof-20260620.md`.  The
packet-level oriented lobe compatibility is discharged relative to
`ModeTestCompatibility.A` in
`mpp-forward-gold-oriented-lobe-mode-test-compatibility-proof-20260620.md`.
The remaining live pieces for the packet-label route are the original
`ModeTestCompatibility.A` inputs, lobe-refined readout summability, refined mode
Jacobian, and nodal-zone source evacuation.

This route avoids the false demand that the original positive source carrier
live in one sign lobe.  It instead splits the carrier into two sign lobes and
uses the two oriented tests \(\psi_m\) and \(-\psi_m\).

## 1. Exact lobe split

Let

```math
\mu_m^+(P):=[q_m(P)]_+,
\qquad
|\psi_m(P)|\le1,
\qquad
0<\kappa<1.
\tag{FML.1}
```

Define the three lobe pieces

```math
F_{m,+}^{\psi,\kappa}
:=
\{P:\psi_m(P)\ge\kappa\},
\tag{FML.2}
```

```math
F_{m,-}^{\psi,\kappa}
:=
\{P:-\psi_m(P)\ge\kappa\},
\tag{FML.3}
```

and

```math
F_{m,0}^{\psi,\kappa}
:=
\{P:|\psi_m(P)|<\kappa\}.
\tag{FML.4}
```

On \(F_{m,+}^{\psi,\kappa}\),

```math
\kappa [q_m(P)]_+
\le
[q_m(P)\psi_m(P)]_+.
\tag{FML.5}
```

On \(F_{m,-}^{\psi,\kappa}\),

```math
\kappa [q_m(P)]_+
\le
[q_m(P)(-\psi_m(P))]_+.
\tag{FML.6}
```

Therefore the exact split estimate is

```math
\boxed{
\sum_P[q_m(P)]_+
\le
{1\over\kappa}
\sum_{P\in F_{m,+}^{\psi,\kappa}}
[q_m(P)\psi_m(P)]_+
+
{1\over\kappa}
\sum_{P\in F_{m,-}^{\psi,\kappa}}
[q_m(P)(-\psi_m(P))]_+
+
\sum_{P\in F_{m,0}^{\psi,\kappa}}
[q_m(P)]_+.
}
\tag{FML.7}
```

This is the core point: positive source on both sign lobes is not invisible if
the proof may use both oriented lobe tests.

## 2. Consequence for the two-lobe countermodel

For the countermodel

```math
\psi_m(P_+)=1,
\qquad
\psi_m(P_-)=-1,
\qquad
q_m(P_+)=q_m(P_-)=A>0,
\tag{FML.8}
```

the single-lobe deficit is nonzero:

```math
\inf_{\varepsilon\in\{-1,1\}}
\sum_{\varepsilon\psi_m(P)<\kappa}[q_m(P)]_+
=A.
\tag{FML.9}
```

But the finite lobe expansion sees both source packets:

```math
[q_m(P_+)\psi_m(P_+)]_+=A,
\qquad
[q_m(P_-)(-\psi_m(P_-))]_+=A.
\tag{FML.10}
```

So `(FML.7)` pays the full positive source mass \(2A\) without proving
`SingleLobeSourceCarrier.A`.

## 3. What this route changes

The original source/mode comparison tried to use one selected oriented mode
carrier.  The finite lobe expansion uses a bounded family:

```math
(F_m^{src},\psi_m)
\leadsto
(F_{m,+}^{\psi,\kappa},\psi_m)
\quad\text{and}\quad
(F_{m,-}^{\psi,\kappa},-\psi_m),
\tag{FML.11}
```

with the nodal piece \(F_{m,0}^{\psi,\kappa}\) paid separately.

The number of children is fixed.  For \(N_{mode}\) selected mode tests, this
creates at most \(2N_{mode}\) oriented lobe carriers plus the nodal remnants.
There is no infinite selector explosion at this algebraic level.

## 4. Required theorem package

The algebra `(FML.7)` becomes a legal proof route only after the following
inputs are installed.  The first input is discharged at packet level by the
finite-expansion proof note.  The second input is discharged relative to
`ModeTestCompatibility.A` by the oriented-lobe proof note.

```math
\boxed{
\text{FiniteModeLobeCarrierExpansion.A}
}
\tag{FML.12}
```

The native selected source carrier may be replaced by the finite disjoint
lobe-refined family `(FML.11)` with bounded overlap and no untracked source
loss except the nodal piece.

```math
\boxed{
\text{OrientedLobeModeTestCompatibility.A}
}
\tag{FML.13}
```

Both oriented tests \(\psi_m\) and \(-\psi_m\), after localization to their
lobe carriers, are legal local pre-Cauchy tests on the same refined shadows.

```math
\boxed{
\text{LobeRefinedModeReadoutSummability.A}
}
\tag{FML.14}
```

The downstream modulation/source readout may sum the finitely many oriented
lobe scores without destroying the finite selector, the modulation Jacobian, or
the selected-family identity.

```math
\boxed{
\text{RefinedCarrierCommutatorLegal.A}
}
\tag{FML.15}
```

The lobe cutoffs used to form `(FML.11)` produce only legal lift/projection,
cutoff, and gauge-time commutators.

For the packet-label route, no new lobe cutoff is inserted inside packets, so
this input is already covered by `ModeTestCompatibility.A`.  It remains live
only for a spatial-cutoff version of the lobe refinement.

```math
\boxed{
\text{NodalZoneSourceEvacuation.A}
}
\tag{FML.16}
```

The nodal remnant \(F_{m,0}^{\psi,\kappa}\) is paid.

## 5. Why this is not already installed

`ModeTestCompatibility.A` legalizes a chosen mode test on a chosen selected
family.  It does not legalize splitting that family by sign lobes and inserting
new lobe cutoffs.

`SourceResolvedNativeModeReadout.A` reads a signed mode source on a selected
shadow.  It does not say that the proof may replace the shadow by two oriented
subshadows and sum both readouts.

`RefinedCarrierModeJacobian.A` is still needed because a lobe-refined family can
lose a modulation direction.  Restricting a test to one lobe can make the mode
matrix rank-deficient even when the unrefined mode family was nondegenerate.

`RefinedCarrierCommutatorLegal.A` is still needed because sign-lobe
localization introduces cutoff derivatives near \(|\psi_m|=\kappa\) and near
the nodal collar.

## 6. Exact conditional route

The direct lobe-expansion route is:

```math
\boxed{
\begin{aligned}
&\text{FiniteModeLobeCarrierExpansion.A}
+\text{OrientedLobeModeTestCompatibility.A}
+\text{LobeRefinedModeReadoutSummability.A}\\
&\quad
+\text{RefinedCarrierModeJacobian.A}
+\text{RefinedCarrierCommutatorLegal.A}
+\text{NodalZoneSourceEvacuation.A}
\\
&\Longrightarrow
\text{SourceModeScoreComparison.A}
\text{ on the lobe-refined carrier family}.
\end{aligned}
}
\tag{FML.17}
```

After the packet-level finite expansion proof, `(FML.17)` reduces to

```math
\boxed{
\begin{aligned}
\text{ModeTestCompatibility.A}
+\text{LobeRefinedModeReadoutSummability.A}
+\text{RefinedCarrierModeJacobian.A}
+\text{NodalZoneSourceEvacuation.A}
\\
&\Longrightarrow
\text{SourceModeScoreComparison.A}
\text{ on the lobe-refined carrier family}.
\end{aligned}
}
\tag{FML.17a}
```

This bypasses the original-carrier implication

```math
\text{SourceWeightedModeDeficit.A}
\Longrightarrow
\text{SingleLobeSourceCarrier.A}.
\tag{FML.18}
```

The bypass is not free.  It pays by changing the carrier architecture and
requiring finite lobe-refined compatibility.

## Verdict

The single-lobe route is too strong for the sign-split countermodel.  The finite
mode-lobe expansion gives a sharper alternative: split the positive source
carrier by the sign of the mode and orient the mode separately on each lobe.

The algebraic inequality `(FML.7)` is proved in this note, the packet-level
finite expansion is discharged separately, and oriented lobe compatibility is
inherited from `ModeTestCompatibility.A`.  The remaining work is not source-sign
concentration.  It is the original mode-test compatibility package, retained
modulation rank, nodal-source payment, and same-shadow readout on every refined
lobe.
