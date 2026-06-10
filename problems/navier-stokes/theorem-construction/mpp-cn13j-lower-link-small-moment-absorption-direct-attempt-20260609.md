---
ns_viewer:
  theorem_id: cn13j-lower-link-small-moment-absorption-direct-attempt-20260609
  status: failed-lower-link-discharge
  proof_role: selector_normal_lower_link_attempt
  logical_landing_node: dgcal-exact-linear-frame-condition
  edge_effect: "Tests the exact lower-link child of CN.13j and reduces it to a concrete tangent-frame linearization/coercivity theorem, with shadow-support localization retained as an alternate route."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cn13j-quadratic-selector-normal-calibration-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md
    - problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md
    - problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md
  downstream_consequence: "The next theorem atom is DGCalExactLinearFrameCondition.A: compute the tangent linearization of the exact anchored observable and prove its readout channels span the projective tangent frame."
---

# MPP CN13j Lower-Link / Small-Moment Absorption Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `CN.13j`,
`PD.70z`, Pack survival, or CMI finality.

## Target

The active child from the `CN.13j` pass is:

```text
CN13jSelectorNormalAmplitudeFloorOrSmallMomentAbsorption.A.
```

The target asks for one of two things:

```text
1. a polarity/amplitude-floor lower link for the selector-normal moment on the
   active normal-defect support; or
2. absorption of the small-moment region by the existing error, shadow-support,
   or support-smallness ledger.
```

Either would turn the installed linear selector-normal calibration into the
quadratic `PD.70z` ledger, directly or through the support-smallness route.

## Installed Starting Point

The previous pass proved only the exact reduction:

```text
CN.10 linear calibration + lower-link/small-moment absorption
=> CN.13j
=> PD.70z.
```

The support-smallness route is also formal:

```text
CN.13t1 shadow-support localization
+ ST.12c quantitative occupancy
=> CN.13q
=> PD.70z.
```

The cycle-exact projective route gives a different formal exit:

```text
polarity / sign-compatible projective readout
=> PD.70z.
```

So the present pass tests whether any of those exits is already paid by the
installed notes.

## Attempt 1: Direct Amplitude Floor

A direct amplitude-floor theorem would say that on the active normal-defect
support the selector-normal moment cannot be too small:

```text
mathcal M_J^perp >= beta
```

or a scaled equivalent strong enough to convert the linear calibration into the
quadratic calibration.

The installed pair-defect PDE gives parabolic upper control on `W_J`. The
normal-covector witness-to-readout theorem gives an integrated linear readout
ledger. Neither gives a lower bound for the selector-normal moment on the
normal-defect support.

The obstruction is the same one identified in the cycle-exact no-go statement:
signless pair-defect control does not determine the expanding direction. A
signed or oscillatory pair-defect packet can have small selector-normal moment
while the geometric normal leakage is still nonzero.

So the direct amplitude-floor route is not proved.

## Attempt 2: Small-Moment Absorption By Shadow Support

The support-smallness route is formally sharp. The shadow-time packet supplies
the exact occupancy ledger `(ST.12c)` once the bad-residue mass and per-pair
shadow-time cost are priced.

What is not installed is the support localization premise:

```text
active normal defect lives inside the route-local shadow tube.        (CN.13t1)
```

This is not a harmless restatement. Normal leakage is a directional property of
the pair direction relative to the transported bundle. It can occur for
non-shadow separated pairs unless an additional theorem ties the active normal
defect to the shadow-tube regime. The current notes explicitly leave this as an
unproved route-local support theorem.

So the small-moment absorption route is not proved through shadow support.

## Attempt 3: Polarity / Projective Readout

The exact-potential notes already explain the correct replacement for a vague
polarity request.

The projective route reduces the missing input to an anchored local coercivity
theorem for the exact observable:

```text
F_J(P) = |W_J(P,N_J, local exact packet)|^2.
```

At the aligned projector `N_J`, the exact theorem burden is:

```text
F_J(N_J)=0,
DF_J(N_J)=0,
and D^2F_J(N_J) is coercive on T_{N_J} RP^2.
```

Equivalently, by the sharpened linear form in
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md),
one must compute the tangent linearization

```text
D mathcal W_J(N_J)
```

and prove that its scalar readout channels span `T_{N_J} RP^2` with quantitative
upper and lower bounds.

That theorem is not installed. The surrounding Cauchy-Green notes reduce parts
of the projective packet to pair-to-cocycle synchronization, selector shape,
commutator control, and spectral-gap persistence, but they still leave the
linearized frame-spanning/coercivity input as the exact object that would
produce the missing polarity/lower-link.

So the polarity route is not proved, but it has a concrete next theorem.

## Result

`CN13jSelectorNormalAmplitudeFloorOrSmallMomentAbsorption.A` is not proved from
the installed inputs.

The next live theorem atom is:

```text
DGCalExactLinearFrameCondition.A:
compute the tangent linearization D mathcal W_J(N_J) of the exact anchored
observable and prove that its readout channels span T_{N_J} RP^2 with
quantitative lower and upper bounds.
```

This atom is genuinely smaller than `CN.13j`: it supplies the missing
polarity/coercive square observation needed for the selector-normal lower link.

The alternate route remains:

```text
CN13t1ShadowSupportLocalization.A + ST.12c occupancy
=> CN.13q support-smallness
=> PD.70z.
```

Until one of these is proved and propagated, the paper cannot claim `CN.13j`,
`PD.70z`, h/F mass vanishing, Pack survival, or CMI-final closure.

## New Live Criticism

`NS-LIVE-20260609-132`: `CN13jSelectorNormalAmplitudeFloorOrSmallMomentAbsorption.A`
is still open. Direct amplitude floor is not installed, shadow-support
absorption needs the unproved `CN.13t1` localization theorem, and the polarity
route reduces to the unproved tangent-frame linearization/coercivity theorem
`DGCalExactLinearFrameCondition.A`. The PDFs cannot be CMI-final until that
lower-link or an alternate support/weight route is proved and propagated through
`PD.70z`, `SG.4B`, h/F mass vanishing, Pack restoration, and
`NoGenuineExitFromSmoothData.A`.
