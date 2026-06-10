# PressureSourceTimeFaceSpread.A cycle-breaker reentry

Date: 2026-06-09

## Target

Attack the pressure/Leray cycle-breaker left by the `B_ASAC` terminal atom:

```text
PressureSourceTimeFaceSpread.A.
```

The theorem must produce, for the native positive source marginal on the
`B_ASAC^closed` branch, a terminal strip modulus:

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
```

This is stronger than pressure/source absolute continuity. It must spread the
source in time.

## Checked pressure route

The pressure Poisson law and Leray projection give spatial partner structure:

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\qquad
\nabla^2p=\mathcal R\mathcal R(\nabla u\otimes\nabla u).
```

After localization, one-sided positive selection, terminal weighting, and
same-fluid packet restriction, the current pressure records show three
unpaid issues:

- carrier tether: the pressure residue must stay tied to the selected native
  source-current carrier;
- sign survival: the positive part must survive the projection, commutator,
  cutoff, and terminal packet weights;
- time-face spread: the spatial pressure relation must imply an epsilon-modulus
  in the final time layer.

The existing pressure/eigenframe attempts do not install those three items.
They leave either a source-carried pressure residue, which returns to the
source-residence cycle, or a pure pressure-sustain residue singular to the
native source measure.

## Direct test

Spatial Calderon-Zygmund / Leray control does not by itself improve temporal
integrability. A residue sequence can remain spatially tethered to pressure
partners while its source marginal has the terminal profile:

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

Pressure coupling controls spatial response at each time slice. It does not
turn finite `L^1_t` source mass into a terminal strip modulus unless a new
one-sided terminal Leray theorem supplies orientation, commutator pricing, and
saturation on the selected positive carrier.

## Judgment

`PressureSourceTimeFaceSpread.A` is not proved from the current inputs.

The next smaller pressure target is the independent terminal Leray gate package:

```text
TerminalLerayOrientation_ind.A
+ TerminalLerayCommutatorLegal_ind.A
+ TerminalLeraySaturation_ind.A.
```

An alternative is a pure pressure singular residue Liouville theorem:

```text
PurePressureSustainResidueLiouville.A.
```

Those are real new theorem gates. Reusing generic pressure Poisson control,
Calderon-Zygmund bounds, local energy, or already-paid legal pressure ledgers
returns to the same terminal time-face atom.

## New live criticism

`NS-LIVE-20260609-057`: pressure/Leray structure has not produced terminal
time-face spread for the `B_ASAC^closed` native positive source marginal. The
current proof still lacks the terminal one-sided Leray gates or a pure pressure
singular-residue Liouville theorem needed to break the source-residence cycle.
