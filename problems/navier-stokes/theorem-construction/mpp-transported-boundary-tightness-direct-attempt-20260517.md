# MPP TransportedBoundaryTightness.A Direct Attempt

Date: 2026-05-17

Status: failed direct theorem.

Purpose: test whether terminal source atoms can be excluded by tightness of transported boundary flux through same-fluid terminal shells.

## 0. Target

The desired theorem is

```math
\boxed{TransportedBoundaryTightness.A.}
```

A useful form would give, for transported cylinders `\mathcal C_R(t)`,

```math
\lim_{\varepsilon\downarrow0}\limsup_N
Flux_N^{src,+}(\partial\mathcal C_R\times[T-\varepsilon,T])=0.
```

Together with source conservation inside transported shells, this would imply `TerminalTimeFaceAntiAtom.A`.

## 1. Boundary accounting

Transported shells are natural for same-fluid ancestry.  They control material entry through the boundary and remove artificial fixed-frame flux.

The terminal obstruction can still arise from concentration of the source-current measure inside the transported shell during a shrinking terminal interval:

```math
F_N^{src,+}:= \tau_N^{-1}\mathbf 1_{[T-\tau_N,T]}\mathbf 1_{\mathcal C_R(t)}.
```

This creates a terminal time-face atom with small or controlled boundary flux.

## 2. No-incoming flux route

A stronger target is

```math
\boxed{NoIncomingFluxTerminalShell.A.}
```

For the full retained terminal class, this would rule out source mass entering through transported shell boundaries.  Existing no-flux survivors apply to restricted tangent classes such as the B_ASAC tangent class or transported-cylinder no-flux settings.  The current route lacks a theorem producing the full terminal source residue into those rigid classes.

## 3. Shrinking-shell obstruction

Terminal packets have shells whose natural spacetime thickness shrinks with scale.  A sequence can keep normalized terminal source mass while boundary flux terms tend to legal size.  The missing estimate is again a uniform terminal time-slab modulus or a full transported no-incoming theorem.

## 4. Verdict

`TransportedBoundaryTightness.A` fails from installed inputs.  It controls boundary transport, while the hard atom can be an interior terminal source concentration.

The remaining direct candidate is

```math
\boxed{LocalEnergyTraceAntiAtom.A.}
```

which tests whether the local energy trace itself forbids the terminal atom.
