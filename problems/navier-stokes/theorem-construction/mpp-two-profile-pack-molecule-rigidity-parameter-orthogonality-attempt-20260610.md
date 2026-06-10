---
ns_viewer:
  theorem_id: two-profile-pack-molecule-rigidity-parameter-orthogonality-attempt-20260610
  status: partial-support-reduced-to-scale-nested-low-high-pack-molecule
  proof_role: active_completion_proof_pressure
  logical_landing_node: two_profile_pack_molecule_rigidity
  edge_effect: "Tests whether profile-parameter orthogonality rules out the near-resonant two-profile Pack molecule. The pass removes genuinely separated pairs but leaves the scale-nested low-high same-window molecule, which is exactly the Pack paraproduct geometry."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cross-profile-pack-atom-rigid-profile-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-positive-pack-defect-orthogonality-bilinear-decoupling-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-uniform-pack-cross-term-integrability-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-scale-normalized-cross-profile-square-reserve-direct-attempt-20260609.md
  downstream_consequence: "TwoProfilePackMoleculeRigidity.A is not proved. The live child is now ScaleNestedLowHighPackMoleculeRigidity.A / SelectedLowHighPackParaproductAntiAtom.A, because standard profile separation only kills separated pairs, not the selected low-high Pack paraproduct on the terminal heat window."
---

# MPP TwoProfilePackMoleculeRigidity Parameter-Orthogonality Attempt

Date: 2026-06-10

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The previous pass reduced one-profile capture to:

```text
TwoProfilePackMoleculeRigidity.A.
```

This pass tests whether ordinary profile-parameter orthogonality already forces
that molecule to vanish or merge into one profile.

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: rigidity theorem for the near-resonant cross-profile Pack atom.

Logical skeleton: cases by profile-parameter separation.

Mechanism tested: spatial, temporal, and scale orthogonality in the profile
decomposition.

## Separated Pairs

For distinct profiles with genuinely separated centers or times at the selected
heat scale, the cross Pack term is forced off the selected window. The cutoff
support and heat-window localization put the two factors in disjoint or
asymptotically disjoint spacetime regions, so the selected positive cross
source has no terminal atom.

This pays the easy half:

```text
SeparatedProfilePackMoleculeVanishes.A.
```

It is useful support, but it does not touch the hard survivor.

## Same-Parameter Pairs

If two supposed profiles have the same scale, center, and terminal time
parameters in the profile-decomposition sense, they are not two asymptotically
orthogonal profiles. They should be merged into one profile before the
critical-element pass is run.

This pays another support fact:

```text
SameParameterPackProfilesMerge.A.
```

Again, this is not the live obstruction.

## The Surviving Molecule

The Pack functional is low-high by design. The surviving molecule has:

```text
profile alpha supplies the selected low strain / carrier,
profile beta supplies the high packet,
both live on the same terminal heat window,
and the positive part is taken after the product is formed.
```

This is scale-nested rather than fully separated. Ordinary profile
orthogonality can make the raw signed interaction small in a global ledger
while the selected low-high positive part remains order one on the terminal
window.

The model is still the same terminal layer:

```math
g_m(s)=m{\bf 1}_{(-1/m,0]}(s),
```

now with `g_m` carried by a low-high pair rather than by a single selected
source density.

## Why Parameter Orthogonality Does Not Close It

The needed theorem would have to say that scale separation itself gives a
terminal anti-atom or a Pack-source reserve:

```text
scale-nested low-high Pack molecule
=> terminal strip modulus, source-Carleson reserve, one-profile capture,
   or rigid two-profile Liouville class.
```

Current profile orthogonality does not provide that. It is an unweighted or
signed statement before terminal positive selection. The live object is
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
SameWindowLowHighPositivePartCancellation.A,
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

`NS-LIVE-20260609-217`: two-profile Pack molecule rigidity is not proved by
ordinary profile-parameter orthogonality. The pass removes genuinely separated
profile pairs and same-parameter duplicate profiles, but it leaves the
scale-nested low-high same-window molecule: one profile supplies the selected
low strain/carrier, another supplies the high packet, and the terminal positive
part is taken after the product. The active loop must prove
`ScaleNestedLowHighPackMoleculeRigidity.A`,
`SelectedLowHighPackParaproductAntiAtom.A`,
`SameWindowLowHighPositivePartCancellation.A`,
`LowHighPackSourceCarlesonReserve.A`,
`ScaleNestedPackMoleculeLiouville.A`, or an equivalent theorem before the
two-profile molecule route can feed the CMI final gate.
