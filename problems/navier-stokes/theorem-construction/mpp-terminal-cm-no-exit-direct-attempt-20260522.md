# MPP Terminal CM No-Exit Direct Attempt

Date: 2026-05-22

Status: direct positive smoothness attempt; superseded for the live CM
contrapositive target by
`mpp-terminal-source-residue-cm-exit-20260522.md`.

## 2026-05-22 Polarity Correction

This note is not the live CM next target. It is a positive no-exit attempt.

For the CM contrapositive route, the terminal source residue should not be
deleted first. The live CM move is:

```math
\text{terminal source residue}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}.
```

That theorem is installed as `TerminalSourceResidueCMExit.A`. Use this note only
when explicitly switching to the separate positive smoothness/no-residue
program.

Theorem target:

```text
TerminalCMNoExit.A
```

## Statement

Assume original smooth Navier--Stokes data and let `(u,p)` be the corresponding
maximal classical solution on `[0,T_*)`. The desired no-exit theorem is:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\neg GenuineCMExit(T_*)
\quad\text{for every finite }T_*.
}
```

Using `CanonicalTerminalPacketCapture.A` and
`AnyFiniteFailureWitnessCMExit.A`, this is equivalent to ruling out all three
terminal CM faces on every alleged terminal tail:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\exists Q,r>0:
Pack_Q\wedge Part_{N_s,Q}\wedge Field_{N_s,r,Q}.
}
\tag{TCNE.1}
```

Here `N_s` is a continuation depth high enough for the installed `H^s`,
`s>5/2`, readout.

## Direct Attempt

Assume for contradiction that `T_*<\infty`. By
`CanonicalTerminalPacketCapture.A`, any terminal obstruction lands in the
Pack-first tree:

```math
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
```

We try to rule out the three alternatives from original smooth data.

### 1. Pack no-exit

Preterminal smoothness gives a flow map on every compact time interval below
`T_*`. To pass Pack through `T_*`, one needs a terminal same-fluid carrier with
positive scale and finite deformation gauge.

The deformation gauge obeys the usual strain ledger:

```math
\frac{d}{dt}\log\Gamma_Q(t)
\lesssim
\|\nabla u(\cdot,t)\|_{L^\infty(Q_t)}.
```

Thus a direct Pack proof asks for

```math
\int^{T_*}\|\nabla u(\cdot,t)\|_{L^\infty(Q_t)}\,dt<\infty
```

or a route-native substitute strong enough to keep the carrier scale positive.
Original smooth data plus the standard energy inequality do not give this. The
installed Pack-side work instead identifies selected unpaid donor-refill
ancestry as the Pack obstruction:

```math
\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\neg Pack_Q.
```

So Pack no-exit reduces to a positive supplier theorem such as

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A,
```

or to an equivalent theorem excluding terminal zero-scale source ancestry. That
is not installed.

### 2. Part no-exit

The differentiated Navier--Stokes tower law is exact before `T_*`:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The terminal problem is closedness of this same tower on the retained carrier
through the continuation depth `N_s`. A direct proof needs terminal control of
the pressure-viscosity readout, the next-rung amplitudes, and the forcing terms.

Those inputs are not supplied by finite energy or by smoothness on compact
preterminal intervals. The known Part closure is conditional on retained Field
scale and tower-amplitude/readout bounds. Therefore Part no-exit does not close
as an independent direct route without importing the desired continuation-scale
control.

### 3. Field no-exit after Part is licensed

Assume Pack and Part survive. The remaining failure is

```math
\forall r>0\,\neg Field_{N_s,r,Q}.
```

This is a one-field coherence/readout wall, not a raw source-residue wall.
`TerminalSourceResidueCMExit.A` now routes a terminal unpaid source residue
first:

```math
\mu_*^{sing}\ne0
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N_s,Q}.
```

So, once `Part_{N_s,Q}` is retained, the raw terminal source residue has already
been paid, absorbed, or rejected. It cannot be the Field obstruction without
first breaking Part.

The Field no-exit burden is therefore the narrower retained-coherence theorem:

```math
Pack_Q\wedge Part_{N_s,Q}
\Longrightarrow
\exists r>0\,Field_{N_s,r,Q}
```

for objects that have already passed the participation ledger: receiver
coherence, paraproduct readout, pressure readout, or another lawful same-field
residue. Source-control theorems such as

```math
NativeSourceAC.A,
\qquad
PositiveRemainderDepletion.A,
\qquad
NativeTrilinearDefectDomination.A,
\qquad
SourcePulseExclusion.A
```

belong to the positive supplier/no-source-residue program, or to the Part
no-exit problem. They do not make a raw source residue a Field face.

Installed inputs give conditional retained-Field diagnostics, but they do not
currently prove this positive Field no-exit theorem. Thus Field no-exit is also
not closed by the direct attempt.

## Verdict

The direct no-exit proof fails. The failure is informative:

```math
\boxed{
TerminalCMNoExit.A
\text{ is equivalent, at current route resolution, to closing all three
positive no-exit faces.}
}
```

The positive subprimitives are:

```math
\boxed{
\text{Pack no-exit,}\qquad
\text{Part no-exit,}\qquad
\text{licensed Field no-exit.}
}
```

Native source absolute continuity is a Part/supplier route in this list. It is
not the Field landing for raw residue in the CM contrapositive tree.

In plain route terms:

```text
Capture is installed.
No-fourth-residue is installed.
Smoothness now needs positive no-exit across Pack, Part, and licensed Field.
```

## Boundary

This note does not prove smoothness. It prevents a false promotion: the
Pack/Part/Field capture theorem is enough to classify terminal failure, while
`TerminalCMNoExit.A` is the positive analytic theorem that must still be
proved to eliminate terminal failure.
