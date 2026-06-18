# TerminalAtomPartFieldFirstExit.A

## Target

Prove the corrected terminal-atom theorem under the `Part_{N,Q}` / `Field_{N,r,Q}` service definitions:

```text
TerminalAtomPartFieldFirstExit.A
```

Statement:

```text
A terminal source atom / zero-heat-time endpoint strip extracted from the Navier-Stokes breakdown candidate exits through Part or Field before Pack_Q is used as an exclusion test.
```

Equivalently:

```text
same-solution terminal atom
=> fails `Part_{N,Q}` or fails `Field_{N,r,Q}` at every tested readout scale,
```

where `Part_{N,Q}` and `Field_{N,r,Q}` are the existing participation and one-field tests, used before Pack rather than as Pack-dependent tests.

## Inputs

Use the installed facts:

```text
LowHighTerminalSourceCostDichotomy.A:
finite L1 endpoint mass + positive mass on shrinking terminal windows
=> infinite every-super-L1 residence cost.
```

```text
UniformServiceTopologyCertification.A:
valid class survival requires uniform service topology, not mere weak terminal measure existence.
```

```text
Zeno terminal atom diagnostic:
a retained same-solution terminal source atom, once treated as an internal pressure-viscosity source/readout event, breaks Field rather than creating a fourth CM face.
```

The new proof must not use `not Pack_Q` as the exclusion step.

## `Part_{N,Q}` / `Field_{N,r,Q}` readings for this theorem

``Part_{N,Q}`` means:

```text
The terminal witness has a finite same-solution participation service: a finite pressure-viscosity/tower participation record, including finite terminal source residence or equivalent donor-readout participation budget, along the terminal approach.
This does not require a positive terminal Pack carrier, a finite Pack cover, or Pack deformation/readout comparability.
```

``Field_{N,r,Q}`` means:

```text
The terminal witness has one-field coherence at the tested scale/readout level: terminal neighboring readouts belong to one coherent field, with no nonzero terminal source/readout jump after legal losses.
The tested scale/readout level is a same-solution terminal readout scale from the same-solution tower, or a scale-indexed terminal limiting regime. It is not ordinary Pack_Q positive-radius admission.
```

These tests are asked before ordinary Pack_Q. They use same-solution terminal admissibility, not positive-radius Pack admissibility. If either test is interpreted as requiring ordinary Pack_Q, the theorem becomes circular and this route is invalid.

## Proof

Let `Q_*` be the terminal atom / endpoint strip. Then there are shrinking terminal windows `I_m=(T_m-tau_m,T_m]`, `tau_m -> 0`, and selected nonnegative source density `g_m` such that

```text
integral_{I_m} g_m(s) ds >= M0 > 0,
```

while every super-L1 residence cost diverges:

```text
integral_{I_m} g_m(s)^p ds >= M0^p tau_m^{1-p} -> infinity,
qquad p>1.
```

There are two cases.

### Case 1: finite participation fails

If the same-solution pressure-viscosity/tower participation record does not supply a finite source-residence or equivalent donor-readout participation budget, then by definition:

```text
`Part_{N,Q}` failure.
```

The terminal atom exits through Part before Pack_Q is tested.

### Case 2: finite participation is asserted

Assume instead that ``Part_{N,Q}`` is asserted. Then the atom is not external noise and not a detached diagnostic object. It is being treated as an internal terminal source/readout event of the same differentiated Navier-Stokes participation law.

But the endpoint strip has zero heat-time participation and nonzero terminal source mass:

```text
mass survives at T_*,
positive terminal-window residence modulus is absent,
source/readout contribution collapses onto the terminal slice.
```

A `Field_{N,r,Q}` survivor would require one-field coherence of this terminal readout. In particular, it would require the terminal source/readout defect to be represented by one coherent field across a same-solution tested scale/readout regime supplied by the same-solution approach records, or equivalently to have no retained terminal jump/source residue after legal losses.

The terminal atom has exactly the opposite structure: nonzero source/readout mass remains while the participation interval collapses to the terminal time face. In the one-field readout language, this is a terminal source/readout jump.

Therefore:

```text
`Field_{N,r,Q}` fails at every tested readout scale.
```

So if Part survives, Field fails.

Combining the cases:

```text
Terminal atom
=> fails `Part_{N,Q}` or fails `Field_{N,r,Q}` at every tested readout scale.
```

This proves `TerminalAtomPartFieldFirstExit.A` as a Part/Field-first route theorem: the terminal atom exits through the participation face or the one-field readout face before `Pack_Q` is used.

## Why this avoids the Pack(Q) circularity

The proof never says:

```text
terminal atom has no positive radius, therefore not Pack_Q, therefore class exit.
```

Instead it says:

```text
terminal atom either lacks finite participation service, or if treated as same-solution participant, it creates a terminal one-field readout jump.
```

So the singularity exits through Part/Field before Pack_Q is invoked.

## Audit scope

This proof uses only:

```text
same-solution terminal admissibility,
finite participation/residence service as the `Part_{N,Q}` requirement,
one-field terminal readout coherence as the `Field_{N,r,Q}` requirement,
and the installed endpoint-strip cost/measure profile.
```

It does not use:

```text
not Pack_Q,
positive-radius Pack admissibility,
ordinary Pack-dependent Part/Field tests,
or Pack noncollapse.
```

So the result is exactly the corrected terminal-atom move:

```text
terminal atom => fails `Part_{N,Q}` or `Field_{N,r,Q}`
```

before `Pack_Q` enters the argument.

## Consequence

The terminal atom branch now supports the user's corrected certification order:

```text
terminal zero-radius singularity
=> Part/Field exit
=> not Member(Q)
=> Pack_Q positive-radius requirement is not doing the exclusion work.
```

The next theorem is:

```text
AllSingularitiesPartFieldFirstExit.A:
Every zero-radius/singular terminal family exits by Part or Field before Pack_Q is used.
```
