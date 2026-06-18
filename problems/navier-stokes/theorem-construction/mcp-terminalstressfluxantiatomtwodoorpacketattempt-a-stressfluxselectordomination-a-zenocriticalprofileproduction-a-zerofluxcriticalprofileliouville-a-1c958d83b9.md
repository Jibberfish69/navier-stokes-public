# TerminalStressFluxAntiAtom Two-Door Packet Attempt

2026-06-18 repair: see
`mpp-forward-gold-two-door-sharp-form-repair-20260618.md`.  The finite vector
selector part of Door 1 is proved there; the real Door 1 bridge is
`ProjectedStressFluxNativeCarrierIdentification.A`.  The zero-flux Landau-class
Liouville consumer is conditionally solved there; the real Door 2 bridge remains
`ZenoCriticalProfileProduction.A`.

## Source surface read

This note audits the new gold-route surface:

```text
problems/navier-stokes/theorem-construction/mpp-gold-stress-flux-bridge-and-landau-liouville-test-20260617.md
```

That surface sharpens the previous forward-gold anti-atom problem into a two-door packet:

```text
Door 1: Phi_0 != 0 -> StressFluxSelectorDomination.A -> native source/new-production atom.
Door 2: Phi_0 = 0 -> ZenoCriticalProfileProduction.A -> ZeroFluxCriticalProfileLiouville.A.
```

## Door 1 target

```text
StressFluxSelectorDomination.A
```

Desired statement:

A nonzero limiting critical stress flux

```math
\Phi_0\ne0
```

forces a nonzero selected native positive source carrier:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\gtrsim \max_a |\ell_a\cdot\Phi_0|.
```

### Door 1 analysis

The distributional stress-flux identity gives a vector point-force/momentum-source residue:

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0.
```

This proves a nonzero vector stress residue. It does not automatically prove nonzero selected native positive source carrier, because the native source is not the full stress divergence. It is a one-sided local pre-Cauchy carrier after localization, cutoff, pressure projection, positive-part extraction, and selector choice.

Thus the missing step is not cosmetic. One must build finitely many selector directions / bounded-overlap active packets so that the positive local pre-Cauchy source sees a nonzero projection of `Phi_0`.

### Door 1 verdict

`StressFluxSelectorDomination.A` is not proved by the current stress-flux identity alone.

It reduces to an exact selector-domination theorem:

```text
Nonzero vector point-force residue -> nonzero selected positive local pre-Cauchy source carrier.
```

Claimed status:

```text
failed; exact missing bridge identified.
```

## Door 2 target A

```text
ZenoCriticalProfileProduction.A
```

Desired statement:

A terminal Zeno critical Mellin pole produces an exact stationary `(-1)`-homogeneous smooth-sphere profile, after quotienting translations, rotations, and scale.

### Door 2 production analysis

The current Zeno extraction gives an ancient/local suitable source-residue limit with positive native residue or terminal branch data. It does not yet supply all exact hypotheses required by the Landau/Sverak classification route:

```text
stationary equation on R^3 \ {0};
(-1)-homogeneity;
smooth profile on S^2;
zero point force when Phi_0=0;
no residual time-dependence, drift, or defect measure.
```

The jump from a terminal Zeno branch to an exact stationary homogeneous profile is a compactness/rigidity production theorem. It cannot be inferred merely from a critical Mellin-pole heuristic unless the error terms, time-dependence, translations, rotations, scale drift, and source residues are shown to vanish in the blow-up profile.

### Door 2 production verdict

`ZenoCriticalProfileProduction.A` is not proved from installed inputs.

It reduces to an exact profile-production theorem:

```text
terminal Zeno critical Mellin pole -> stationary (-1)-homogeneous smooth-sphere profile with controlled point force.
```

Claimed status:

```text
failed; exact production theorem missing.
```

## Door 2 target B

```text
ZeroFluxCriticalProfileLiouville.A
```

Desired conditional statement:

If `U` is a stationary `(-1)`-homogeneous Navier-Stokes profile on `R^3 \ {0}`, smooth on `S^2`, divergence-free, and has zero point-force flux `Phi_0=0`, then `U=0`.

### Door 2 Liouville analysis

This is plausible as a conditional theorem via Sverak's Landau classification. The external candidate is Vladimir Sverak, "On Landau's Solutions of the Navier-Stokes Equations", arXiv:math/0604550.

Use boundary:

```text
The external theorem can only be applied after the repo supplies the exact stationary (-1)-homogeneous smooth-sphere zero-force profile hypotheses.
```

Without `ZenoCriticalProfileProduction.A`, this Liouville theorem does not touch the actual Zeno branch.

### Door 2 Liouville verdict

`ZeroFluxCriticalProfileLiouville.A` is conditionally acceptable as a downstream theorem, not as a direct discharge of the terminal Zeno branch.

Claimed status:

```text
conditional; depends on ZenoCriticalProfileProduction.A.
```

## Final two-door status

The two-door packet is sharper than the generic forward anti-atom attempts, but it is not yet an installed gold proof.

Door 1 is blocked at:

```text
StressFluxSelectorDomination.A
```

Door 2 is blocked at:

```text
ZenoCriticalProfileProduction.A
```

If Door 1 is proved, nonzero stress flux feeds the native source atom route.

If Door 2 production is proved, zero-flux critical profiles can plausibly be killed by the Landau/Sverak Liouville route.

Until one of those production bridges is proved, the forward gold theorem remains open.

The CM contrapositive route remains unaffected and already consumed the terminal atom branch.
