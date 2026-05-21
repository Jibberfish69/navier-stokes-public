# MPP BASACAtomForcesEscape.A Direct Attempt

Date: 2026-05-17

## Status

Direct attempt on the class-specific atom isolated in
`mpp-b-asac-residue-liouville-direct-attempt-20260517.md`.

Outcome: no closure from installed inputs.  The theorem is the right small
target, but the current class data do not force an escape.

## Target

Prove:

```math
\boxed{
BASACAtomForcesEscape.A
}
```

meaning: every nonzero terminal source atom in `B_ASAC` forces at least one
forbidden escape:

```text
earlier selected same-fluid source slice,
legal/projected/cutoff/boundary exit,
finite or non-Zeno donor-refill exit,
or nonzero ASAC-paid defect measure.
```

Together with the definition of `B_ASAC`, this would prove
`ZenoResidueLiouville_{B_ASAC}.A` and then close the no-free-sink route into
`PositiveRemainderDepletion.A`.

## Attempt 1: source-parent minimality

First-pulse selection gives:

```text
no earlier selected same-fluid source parent.
```

This is already one defining clause of `B_ASAC`.  It removes finite parent
trees and fixed earlier selected slices.  It does not remove a sequence of
source layers whose heat scales shrink to zero at the terminal time.

Thus minimality proves the finite/non-Zeno part of the escape theorem, which
is already paid by `LocalDonorBalance.A + EntranceLeafDecay.A`.  The remaining
case is exactly terminal Zeno refill.

## Attempt 2: local energy or raw source mass

The local energy and source-residue compactness controls give finite
terminal source mass on compact cylinders.  They do not distinguish a diffuse
near-terminal source layer from a terminal atom.

The same scalar concentration witness remains:

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

At the level of available temporal information, this has bounded `L^1_s` mass
and converges to a terminal atom.  No earlier fixed slice carries a stable
amount of mass.  Therefore raw source mass and first-pulse minimality do not
force an escape.

## Attempt 3: ASAC zero-defect pressure

Zero ASAC-paid defect removes the active-alignment / pair-weight charge that
ASAC already controls.  A nonzero terminal source atom can still remain in the
native positive source carrier after that paid defect is gone.

The pressure-Hessian and eigenframe-turnover attempts confirm the same
structure: pointwise strain or pressure identities do not give a one-sided
sign law on selected terminal packets.  Their signed partner routes return to
partner retention, legal exit, donor depletion, or terminal temporal
anti-atom rigidity.

So zero ASAC defect is not enough to force one of the forbidden escapes.

## Attempt 4: adjoint parent-drain

The installed `TPNI.A` parent-drain identity is homogeneous.  It rules out a
nonzero terminal tangent pulse when the adjoint expansion has no volume source
and no earlier tangent parent.

For a `B_ASAC` source-residue object, the adjoint pairing contains the
terminal source term:

```math
\int \Phi_T\,d\mu_\ast^{src}.
```

This is the object to be eliminated.  The identity therefore becomes a
source-parent-or-charge identity, not a homogeneous contradiction.  The
available first-pulse license removes selected source parents but does not
remove terminal source charge.

Thus the parent-drain route would need a new source-charge theorem, not just
the already installed `TPNI.A`.

## Exact stop

The direct attempt leaves one of three genuinely new, class-specific suppliers:

```text
BASACTerminalReverseHolder.A
```

super-`L^1_s` temporal integrability for the `B_ASAC` terminal source carrier;

```text
BASACNoIncomingSourceDrain.A
```

a source-residue adjoint drain saying terminal charge cannot remain without an
earlier selected source parent or legal/donor escape;

```text
BASACPressurePartnerEscape.A
```

a signed pressure/source-current partner theorem at the same selected terminal
weights, forcing retained partners, legal exits, donor exits, or ASAC-paid
defect.

The least circular formulation is:

```math
\boxed{
BASACNoIncomingSourceDrain.A
}
```

because it attacks the terminal charge in the produced `B_ASAC` class directly
without importing active-square Carleson, `LocalPositiveSourceCarleson.A`, or
`PositiveRemainderDepletion.A`.

## Verdict

`BASACAtomForcesEscape.A` is not discharged by the installed class clauses.
The exact surviving theorem-facing burden is:

```math
\boxed{
BASACNoIncomingSourceDrain.A:
\text{a nonzero }B_{ASAC}\text{ terminal source charge forces an earlier
selected source parent or a legal/donor/ASAC escape.}
}
```

This is the current smallest non-circular closure target for
`PositiveRemainderDepletion.A` on the no-free-sink route.
