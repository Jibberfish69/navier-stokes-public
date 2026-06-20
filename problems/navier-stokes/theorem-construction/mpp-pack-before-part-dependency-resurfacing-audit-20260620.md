# MPP Pack-Before-Part Dependency Resurfacing Audit

Date: 2026-06-20

Status: route-facing audit for the Pack-before-Part dependency.

Proof mode: Navier-Stokes CM contrapositive class exit.

## Object

This note audits the dependency shape:

```text
not Pack_Q before Part_{N,Q} is tested.
```

The Silver Pack/Part/Field route is still valid after a legitimate Pack window,
carrier, readout, or jump-comparison structure has been admitted. The audit
targets only those branches that were disposed as `not Pack_Q` before the
participation question was asked.

The governing primitive remains:

```text
Exit(Q) := not Member(Q).
```

## Rule

For a pre-Pack, no-window, or singular terminal object, do not use `not Pack_Q`
as terminal disposal until the object has been typed.

First ask whether the object still has a meaningful pointwise original
Navier-Stokes participation status:

```text
same original smooth datum,
same preterminal Navier-Stokes evolution,
viscosity,
pressure,
incompressibility,
and a terminal point or limit record tied to that same law.
```

If that status is present, the object is resurfaced under `Part_{N,Q}` first.
The dead/blown question is then read from the pointwise participation/tower
mechanism before any Pack-window conclusion is spent.

If that status is absent, `not Pack_Q` remains a true carrier/window failure.
In that case Pack has not been asked to supply participation; it has only marked
that no usable window/carrier/readout object exists.

## Existing license

This audit uses the already-installed licensing note:

```text
PartFieldBeforePackLicensing.A
```

from:

```text
problems/navier-stokes/theorem-construction/mcp-partfieldbeforepacklicensing-a-packpositiveradiuscertification-a-770adef0d8.md
```

That note states that `Part_{N,Q}` and `Field_{N,r,Q}` have primitive service
content and may be tested before ordinary positive-radius `Pack_Q` on a
same-solution terminal witness. This audit narrows the operational consequence:
every pre-Pack `not Pack_Q` branch must be checked for pointwise original-NS
participation before it is allowed to remain a Pack-only exit.

## Classification table

| Branch condition | Classification |
| --- | --- |
| Pack has already been admitted as a legitimate window/carrier/readout/jump setting | Keep the Silver Pack/Part/Field order. |
| No Pack window exists, but the terminal object is still tied to the original NS participation law at a point or limiting record | Resurface under `Part_{N,Q}` first. |
| No Pack window exists and no meaningful same-solution original-NS participation record survives | Keep `not Pack_Q` as a true carrier/window failure. |
| A branch compares two surviving traces, readouts, or neighboring tower records | Keep Pack/window structure for the jump/readout comparison. |

## Downstream consequence

The affected corpus is not every Pack/Part/Field surface. The affected corpus is
the subset whose proof force depends on:

```text
not Pack_Q
=> no participation question is asked.
```

Those surfaces must be resurfaced and retyped.

The unaffected Silver corpus is the subset whose proof force depends on:

```text
global Navier-Stokes participation is already the law,
Pack_Q supplies a legitimate window/carrier/readout structure,
then Part and Field are tested inside that admitted structure.
```

## Bridge still owed

For each resurfaced pre-Pack branch, the exact bridge is:

```text
pointwise original-NS participation diagnosis
=> Part-side dead/blown classification or true no-participation failure
=> typed support for Exit(Q):=not Member(Q).
```

The bridge is branch-local. A generic `not Pack_Q` label no longer supplies it.
