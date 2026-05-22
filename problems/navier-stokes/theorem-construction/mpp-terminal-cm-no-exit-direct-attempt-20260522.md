# MPP Terminal CM No-Exit Direct Attempt

Date: 2026-05-22

Status: direct smoothness attempt; blocked at the native source / carrier
supplier wall.

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

### 3. Field no-exit

Assume Pack and Part survive. The remaining failure is

```math
\forall r>0\,\neg Field_{N_s,r,Q}.
```

This is the one-field coherence/source wall. The current route has already
identified the exact surviving obstruction: after legal, pressure, cutoff,
boundary, signed-current, and finite ledger terms are removed, a terminal
native positive source component may remain singular to the installed route
measure:

```math
\mu_*^{sing}\ne0.
```

The needed domination theorem is the native source absolute-continuity theorem:

```math
NativeSourceAC.A:
\qquad
\mu_{src,N}^+
\le
C\rho_{inst,N}+o_N(1)
```

on every bounded-overlap terminal same-fluid family. Equivalently, prove

```math
\mu_*^{sing}=0.
```

The repo records this same wall through the positive supplier language

```math
PositiveRemainderDepletion.A,
\qquad
NativeTrilinearDefectDomination.A,
\qquad
SourcePulseExclusion.A.
```

Installed inputs route legal terms and pay ASAC alignment, but they do not
currently supply super-`L^1_t` source residence, Zeno residue evacuation, a
produced rigid residue class with Liouville, or a scale-critical active-square
reserve. Thus Field no-exit is also not closed by the direct attempt.

## Verdict

The direct no-exit proof fails. The failure is informative:

```math
\boxed{
TerminalCMNoExit.A
\text{ is equivalent, at current route resolution, to closing the terminal
native-source/carrier supplier wall.}
}
```

The cleanest live subprimitive is:

```math
\boxed{
NativeSourceAC.A
\quad\text{or equivalently}\quad
\mu_*^{sing}=0
}
```

on bounded-overlap same-fluid terminal families, together with the Pack-side
Carleson/zero-scale consequences it pays.

In plain route terms:

```text
Capture is installed.
No-fourth-residue is installed.
Smoothness now needs no terminal native source/carrier residue.
```

## Boundary

This note does not prove smoothness. It prevents a false promotion: the
Pack/Part/Field capture theorem is enough to classify terminal failure, while
`TerminalCMNoExit.A` is the positive analytic theorem that must still be
proved to eliminate terminal failure.
