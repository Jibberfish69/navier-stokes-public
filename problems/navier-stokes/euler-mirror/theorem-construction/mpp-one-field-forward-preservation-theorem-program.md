# MPP Euler One-Field Regularity Preservation Program

## Status

Theorem-facing demotion note for the old Euler mirror `EOFP` surface.

Role: preserve the useful one-field question while removing it from primitive
Euler membership.

## Repaired Purpose

The one-field question is a regularity question:

```math
\boxed{
\text{if an Euler member starts with one coherent positive-scale field, what
Euler-native estimates keep that coherence from collapsing?}
}
\tag{EOFP.1}
```

It is not a membership question. `Member_E` has already been defined by
flux-volume and weak momentum-pressure fidelity.

## Optional Regularity Target

If this branch chooses a one-field regularity class, write it as:

```math
\mathrm{EReg}_{N,r,Q}(u,p)
\tag{EOFP.2}
```

or, when comparison with the old route is useful,

```math
\mathrm{EField}_{N,r,Q}(u,p).
\tag{EOFP.3}
```

Both names mean extra positive-scale coherence over `Member_E`; neither is
primitive membership.

The honest theorem target is:

```math
\boxed{
\mathrm{Member}_E
+ \mathrm{EReg}_{N,r_0,Q_0}
+ \text{Euler control estimates}
\Longrightarrow
\mathrm{EReg}_{N,r_{N,\sigma},Q_s}
\text{ on the evolved window.}
}
\tag{EOFP.4}
```

## What Still Looks Route-Native

The old packet/coherence spine may still be a useful regularity mechanism:

1. transported increment reduction, if the transport carrier is available;
2. reference-increment comparison, if the reference family is Euler-native;
3. localized defect propagation, without viscous absorption;
4. conversion from defect control to a positive coherence modulus.

At that level the live regularity question is:

```math
\boxed{
\text{can transport, pressure, and inviscid structure alone preserve a positive
coherence scale?}
}
\tag{EOFP.5}
```

## What Was Removed

This file no longer claims:

1. that failure of one-field coherence is base Euler class exit;
2. that `Field` is a primitive Euler face;
3. that `EOFP.A` is part of a `Pack / Part / Field` membership witness;
4. that pressure alone supplies the missing viscous participation.

## Honest Holdout

The parent Navier-Stokes route fed one-field preservation through the receiver
chain

```math
RSCB.NKF -> NKF.Native -> ACT.KX -> ACT.X\text{-Readout} -> ACT.A -> RCF.A -> LCI.A.
\tag{EOFP.6}
```

On Euler this chain is only comparison order. The `ACT.KX` cell spends viscous
absorption and top-viscous readout, and the surrounding route assumes the old
NS-style field/participation package. Any Euler replacement would be a
regularity-support theorem, not a membership theorem.

## Resulting Branch Discipline

The one-field program is allowed to continue only in this form:

```math
\boxed{
\mathrm{Member}_E
\quad+\quad
\text{chosen one-field regularity hypotheses}
\quad+\quad
\text{Euler-native estimates}
\Longrightarrow
\text{persistence of that regularity.}
}
\tag{EOFP.7}
```

That keeps the useful question alive while removing the false membership
ontology.
