# MPP B_ASAC^closed live burden sharpening

Date: 2026-05-17

Status: burden sharpened. The live theorem target is narrower than broad `PressureSourceAC.A`.

## Current canonical obstruction

The source-wall root now has a canonical terminal Pack-failure obstruction:

```math
B_{ASAC}^{closed}.
```

It is a selected terminal Zeno native source atom after the six audited doors have all failed to produce an unconditional discharge.

The surviving model is

```math
d\mu_m^{src}(y,s)
=
\rho(y)m\mathbf 1_{(-1/m,0]}(s)\,dy\,ds
\rightharpoonup
\rho(y)dy\otimes\delta_{s=0}.
```

## Sharpened burden

The next burden is the following anti-atom production theorem:

```math
\boxed{
PressureSourceTimeFaceSpread.A
}
```

Statement target:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0,
```

produced from pressure/Leray coupling on the `B_ASAC^closed` branch.

This is sharper than broad pressure-source absolute continuity. It asks for terminal time-face spread of the native source marginal, using pressure/Leray structure as the production mechanism.

## Required mechanism

A successful proof must supply all three items:

```text
1. carrier tether: pressure quadratic-gradient residue remains tied to the selected native source-current carrier;
2. sign survival: the tether survives localization, projection, terminal weighting, and positive-part selection;
3. time-face spread: elliptic pressure coupling supplies an epsilon-modulus near s=0 for the native source marginal.
```

The first two items prevent pressure/Leray mass from drifting to an unrelated signed channel. The third item kills the terminal atom.

## Boundary

Pack-before-Part zero-radius diagnostic placement is already done. It gives Part-side support when the same original-NS pointwise participation record remains and true Pack support only when that record is absent, while it leaves the production problem open.

Broad `PressureSourceAC.A` is too coarse. A proof of mere absolute continuity between pressure residue and source residue can still allow both residues to sit on the same terminal time face. The new burden needs a spread estimate.

General `LocalizedLeraySourceTether.A_ind` is also too coarse. If the tether ends at signed no-free-sink or PRD, it returns to an audited conditional door. It must instead create terminal time-face spread.

## Verdict

The remaining live theorem burden is:

```math
\boxed{
PressureSourceTimeFaceSpread.A
}
```

Future work should attack this theorem directly, then branch only into these narrower subtargets:

```text
PressureCarrierTrace.A
EllipticTimeSmearing.A
FinitePacketLeraySourceAnchoring.A
```

Each subtarget counts only if it produces the displayed epsilon-modulus for the native source marginal on `B_ASAC^closed`.
