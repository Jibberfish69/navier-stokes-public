---
ns_viewer:
  theorem_id: two-profile-pack-molecule-rigidity-parameter-orthogonality-attempt-20260610
  status: partial-support-reduced-to-scale-nested-low-high-pack-molecule
  proof_role: active_completion_proof_pressure
  logical_landing_node: two_profile_pack_molecule_rigidity
  edge_effect: "Tests whether profile-decomposition parameter orthogonality rules out the near-resonant two profile-decomposition-frame Pack molecule. The pass removes genuinely separated pairs but leaves an exact selected low-high positive measure on the terminal heat window; this is the Pack paraproduct obstruction, not a profile-picture consequence."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cross-profile-pack-atom-rigid-profile-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-positive-pack-defect-orthogonality-bilinear-decoupling-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-uniform-pack-cross-term-integrability-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-scale-normalized-cross-profile-square-reserve-direct-attempt-20260609.md
  downstream_consequence: "TwoProfilePackMoleculeRigidity.A is not proved. The live child is now ScaleNestedLowHighPackMoleculeRigidity.A / SelectedLowHighPackParaproductAntiAtom.A: one must prove vanishing, a terminal anti-atom modulus, one-profile-frame absolute continuity, or a Part/Field Part/Field failure for the exact selected low-high positive measure."
---

# MPP TwoProfilePackMoleculeRigidity Parameter-Orthogonality Attempt

Date: 2026-06-10

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The previous pass reduced one-profile-frame capture to:

```text
TwoProfilePackMoleculeRigidity.A.
```

This pass tests whether ordinary profile-decomposition parameter orthogonality already forces
that molecule to vanish or merge into one profile-decomposition frame.

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: rigidity theorem for the near-resonant cross-profile Pack atom.

Logical skeleton: cases by profile-parameter separation.

Mechanism tested: spatial, temporal, and scale orthogonality in the profile
decomposition.

## Exact Selected Molecule Object

Use the selected positive interaction measure from the preceding cross-profile
pass.  On a selected terminal heat window `W_m` and cutoff `chi_m^{sel}`,
write

```math
d\mu_{\alpha\beta,m}^+
:=
\chi_m^{sel}
\left[
\left\langle
S_{\alpha,<j_m}^{loc} U_{\alpha,<j_m},
U_{\beta,j_m}
\right\rangle
\right]_+\,dx\,dt .
```

Here `alpha` supplies the selected low strain/carrier, `beta` supplies the high
packet, and the positive part is taken after the product is formed.  A surviving
two-profile-frame Pack molecule means an exact nonvanishing condition, for example
after normalization of the tested Pack unit,

```math
\limsup_{m\to\infty}\mu_{\alpha\beta,m}^+(W_m)\ge \eta>0,
\tag{TPM}
```

while no displayed single-frame Pack measure carries this terminal mass with
the absolute-continuity density or anti-atom modulus needed for one-profile-frame
capture.  The object under test is the measure in `(TPM)`, not a generic
profile-decomposition geometry description of the interaction.

## Separated Pairs

For distinct profile parameters, the paid statement is the separation
hypothesis, not a shape picture.  Along the selected heat window `W_m`, assume
the profile-decomposition frames obey

```text
|x_{\alpha,m}-x_{\beta,m}|/ell_m
  + |t_{\alpha,m}-t_{\beta,m}|/ell_m^2 -> infinity
```

after passing to the common selected scale `ell_m`, or the corresponding scale
ratio tends to `0` or `infinity` in the profile-decomposition sense.  With
fixed constants `C_x,C_t`, take the selected cutoffs to be supported in
`B_{C_x ell_m}(x_{\alpha,m})` and terminal windows of length
`C_t ell_m^2`.  The exact vanishing input is

```math
\int_{W_m}\chi_{\alpha,m}^{sel}\chi_{\beta,m}^{sel}\,dx\,dt \to 0,
\tag{SEP}
```

or the zero-overlap statement obtained after scale separation.  Under `(SEP)`,
the selected positive cross source has vanishing terminal mass in the tested
Pack measure.

This pays the easy half:

```text
SeparatedProfilePackMoleculeVanishes.A.
```

It is useful support, but it does not touch the hard survivor.

## Same-Parameter Pairs

If two supposed profile-decomposition frames have the same scale, center, and terminal time
parameters in the profile-decomposition sense, they are not two asymptotically
orthogonal profile-decomposition frames.  The exact bookkeeping consequence is that their sum is
one profile-decomposition frame for the critical-element pass; no two-frame
rigidity theorem is obtained from duplicating the same frame.

This pays another support fact:

```text
SameParameterPackProfilesMerge.A.
```

Again, this is not the live obstruction.

## The Surviving Molecule

The Pack functional is low-high by design. The surviving molecule has:

```text
frame alpha supplies the selected low strain / carrier,
frame beta supplies the high packet,
both live on the same terminal heat window,
and the positive part is taken after the product is formed.
```

This is scale-nested rather than fully separated. The profile-decomposition
orthogonality already paid above is only the separated-overlap limit `(SEP)`,
or the same-parameter bookkeeping merge. In the scale-nested same-window case
it supplies no estimate of the form
`\mu_{\alpha\beta,m}^+(W_m)\to0`; `(TPM)` remains open because the selected
measure is one-sided and localized to the bad terminal heat window before any
global signed cancellation is recorded.

The model is still the same terminal layer:

```math
g_m(s)=m{\bf 1}_{(-1/m,0]}(s),
```

now with `g_m` carried by a low-high pair rather than by a single selected
source density.  The measure statement is the operative claim: a model layer is
relevant only when it produces a normalized subsequence satisfying `(TPM)`.

## Why Parameter Orthogonality Does Not Close It

The needed theorem would have to say that scale separation itself gives a
terminal anti-atom or a Pack-source reserve:

```text
scale-nested low-high Pack molecule
=> vanishing of mu^+_{alpha beta,m}, terminal anti-atom modulus,
   source-Carleson reserve, one-profile-frame absolute continuity with density
   control, rigid two-frame Liouville class, or a Part/Field face
   failure for the selected measure.
```

Current profile-decomposition orthogonality does not provide that. In this
branch it is either the overlap limit `(SEP)` or the same-parameter merge, not
an estimate for the selected positive terminal measure. The live object is
weighted, scale-normalized, one-sided, and chosen on the bad terminal heat
window.

## Result

`TwoProfilePackMoleculeRigidity.A` is not proved by parameter orthogonality.

The pass installs two support facts:

```text
SeparatedProfilePackMoleculeVanishes.A,
SameParameterPackProfilesMerge.A.
```

The live obstruction is sharper:

```text
ScaleNestedLowHighPackMoleculeRigidity.A.
```

Equivalent useful forms are:

```text
SelectedLowHighPackParaproductAntiAtom.A,
SameWindowLowHighPositiveMeasureVanishing.A,
LowHighPackSourceCarlesonReserve.A,
or ScaleNestedPackMoleculeLiouville.A.
```

Until one of these is installed and propagated through
`TwoProfilePackMoleculeRigidity.A`,
`CrossProfilePackAtomBelongsToRigidProfile.A`,
`PackCriticalElementStability.A`,
`ProducedMinimalFirstPackBubbleRigidity.A`,
`NoGenuineExitFromSmoothData.A`, and both rendered PDF rereads, both PDF tracks
remain non-final.

## New Live Criticism

`NS-LIVE-20260609-217`: two-profile-frame Pack molecule rigidity is not proved by
ordinary profile-decomposition parameter orthogonality. The pass removes genuinely separated
profile-decomposition pairs and same-parameter duplicate profile-decomposition frames, but it leaves the
scale-nested low-high same-window molecule: one frame supplies the selected
low strain/carrier, another frame supplies the high packet, and the terminal positive
part is taken after the product. The active loop must prove
`ScaleNestedLowHighPackMoleculeRigidity.A`,
`SelectedLowHighPackParaproductAntiAtom.A`,
`SameWindowLowHighPositiveMeasureVanishing.A`,
`LowHighPackSourceCarlesonReserve.A`,
`ScaleNestedPackMoleculeLiouville.A`, or an equivalent theorem before the
two-profile-frame molecule route can feed the CMI final gate.
