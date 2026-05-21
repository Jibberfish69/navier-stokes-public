# MPP LocalEnergyTraceAntiAtom.A Direct Attempt

Date: 2026-05-17

Status: failed direct theorem.

Purpose: test whether the local energy trace across the terminal time face excludes terminal source atoms and hence proves `TerminalTimeFaceAntiAtom.A`.

## 0. Target

The desired theorem is

```math
\boxed{LocalEnergyTraceAntiAtom.A.}
```

A useful form would imply the terminal slab modulus

```math
\nu_N^{src,+}(B_R\times[T-\varepsilon,T])
\le \omega_R(\varepsilon)+o_N(1),
\qquad \omega_R(\varepsilon)\to0.
```

## 1. Local energy input

The local energy inequality controls the preterminal balance of kinetic energy, dissipation, pressure work, and flux through cutoffs. It supplies compactness of local energy measures and lower semicontinuity of dissipation.

This is enough to carry terminal defect measures in weak limits.

## 2. Terminal atom model

The obstruction model remains compatible with finite local energy and finite `L^1_t` source budget:

```math
F_N^{src,+}(t)=\tau_N^{-1}\mathbf 1_{[T-\tau_N,T]}(t),
\qquad \tau_N\downarrow0.
```

Then

```math
\int F_N^{src,+}(t)\,dt=1,
```

while

```math
F_N^{src,+}(t)dt \rightharpoonup \delta_T.
```

The local energy inequality admits such terminal concentration as a defect measure unless an additional time-spread estimate is present.

## 3. Trace strengthening test

A strengthened trace theorem would have to say that terminal defect mass cannot arise from the selected native source-current measure. That statement is precisely the anti-atom theorem:

```math
LocalEnergyTraceAntiAtom.A
\equiv_{route}
TerminalTimeFaceAntiAtom.A
```

up to the ordinary local energy, pressure, flux, and cutoff ledgers.

Thus the local-energy trace route restates the target in energy language.

## 4. Verdict

`LocalEnergyTraceAntiAtom.A` is not obtained from the installed local energy inequality. The inequality gives compactness and admissible terminal defect measures. It does not supply the terminal time-slab modulus.

The four direct mechanisms under `TerminalTimeFaceAntiAtom.A` have now been tested:

```math
ResidenceLowerBound.A,
```

```math
ScaleInvariantParentChargeQuantum.A,
```

```math
TransportedBoundaryTightness.A,
```

```math
LocalEnergyTraceAntiAtom.A.
```

All four require a new source of terminal time thickness. The next artifact should record the closure-grade hard obstruction certificate for this target.