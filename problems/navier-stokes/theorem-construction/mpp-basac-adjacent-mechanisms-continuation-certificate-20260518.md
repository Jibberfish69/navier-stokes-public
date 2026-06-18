# MPP B_ASAC Adjacent Mechanisms Continuation Certificate

Date: 2026-05-18

## Status

Continuation certificate after the all-reduced-routes exhaustion pass.

Outcome: adjacent surfaced mechanisms were rechecked. Supplier discharge did not land. The branch remains completed at current resolution as

```math
B_{ASAC}^{closed}
\leadsto
Field_{N,r,Q}\text{-face selected terminal Zeno source atom diagnostic.}
```

Authority surfaces remain unchanged.

## Mechanisms tested

### 1. TransportedBoundaryTightness.A

This theorem isolates the spatial-flux half of `TransportedCylinderNoFlux.A`.

Current inputs give fixed-cylinder local compactness, finite original energy before blowup, zero ASAC defect, selected no-parent ancestry, and local pressure decompositions. These do not give transported-shell exhaustion. Rescaled global energy carries the factor `r_m^{-1}`. Selected ancestry misses nonselected flux. ASAC controls a selected source-current defect rather than full field tails. Pressure estimates require shell decay.

Result:

```math
TransportedBoundaryTightness.A
```

remains open and reduces to strain-adapted boundary splitting, pressure-tail Hardy cancellation, global ancient spatial exhaustion, or nonselected flux control.

### 2. StrainAdaptedTransportedBoundaryDecomposition.A

The strain-adapted split separates transported boundary flux into unstable outgoing, stable incoming, and mixed/pressure sectors.

The unstable sector has favorable sign intuition. The stable sector can import ancient far-field kinetic or pressure work. Trace-free strain gives volume balance and does not provide positive-flux cancellation after terminal/local-energy selection. Pressure work couples sectors.

Result:

```math
StrainAdaptedTransportedBoundaryDecomposition.A
```

remains open as a full tightness theorem and reduces to

```math
StableIncomingTailControl.A
\quad\text{and}\quad
PressureTailHardyTransportedShells.A.
```

### 3. PressureTailHardyTransportedShells.A

This theorem would control pressure work on anisotropic transported shells.

Classical spherical Hardy cancellation uses radial geometry and mean-zero kernel structure. Transported shells are anisotropic and strain-adapted. Their normals, measures, and shell weights introduce uncontrolled geometry errors. Pressure mean subtraction leaves pressure oscillation coupled to `u\cdot n_{tr}`. Local pressure estimates on fixed cylinders give no transported-shell tail decay. Stable/unstable sector cancellation lacks a signed global shell balance.

Result:

```math
PressureTailHardyTransportedShells.A
```

remains open as an external geometric pressure-tail theorem.

### 4. TerminalTimeFaceAntiAtom.A

This theorem is the required temporal component:

```math
\nu_N^{src,+}(B_R\times[T-\varepsilon,T])
\le \omega_R(\varepsilon)+o_N(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

Spatial transported-boundary controls do not remove a compactly supported native source atom on the terminal time face. The local-energy trace route gives compactness and terminal defect-measure structure. Finite `L^1_t` source mass still permits

```math
F_N^{src,+}(t)=\tau_N^{-1}\mathbf 1_{[T-\tau_N,T]}(t),
\qquad \tau_N\downarrow0.
```

Result:

```math
TerminalTimeFaceAntiAtom.A
```

remains the minimal required temporal theorem.

### 5. BASACOutsideAuditedFamiliesSearch.A

The outside-family search checked parabolic capacity, weak trace continuity, heat-kernel smoothing, backward uniqueness, frequency monotonicity, and compensated compactness.

Each candidate requires an additional theorem supplying time-face anti-atom control, a rigid class, or restored signed cancellation after positive selection.

Result:

```math
BASACOutsideAuditedFamiliesSearch.A
```

finds no installed supplier outside the audited families.

## Consolidated obstruction

The persistent endpoint time-marginal witness remains

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)\rightharpoonup\delta_{s=0}.
```

It is compatible with finite local `L^1_s` source mass, fixed-cylinder compactness, local energy trace compactness, zero ASAC defect, selected no-parent ancestry, paid legal exits, and finite donor telescoping.

## Required future theorem classes

Forward supplier progress requires at least one genuinely new theorem from the following classes:

```math
TerminalTimeFaceAntiAtom.A,
```

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,
```

```math
LocalPositiveSourceCarleson.A / PositiveRemainderDepletion.A,
```

```math
TransportedBoundaryTightness.A
+TerminalTimeFaceAntiAtom.A,
```

```math
PressureSourceAC.A / LocalizedLeraySourceTether_{ind}.A,
```

```math
PurePressureSustainResidueLiouville.A,
```

```math
TerminalPressurePureStrainLegal.A,
```

```math
QuantizedParentCharge.A / MinimalBadAncestryRigidity.A.
```

## Final verdict

This adjacent-mechanism continuation pass is complete.

The stable result remains:

```math
\boxed{
B_{ASAC}^{closed}\text{ is a Field-face selected terminal Zeno source atom diagnostic.}
}
```

The forward supplier problem remains open at production-theorem level. Current installed surfaces contain no discharge among the reduced or adjacent candidate families tested here.