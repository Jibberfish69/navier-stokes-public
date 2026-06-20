# Zeno Test Endpoint Coherence Direct Test

Date: 2026-06-20

## Status

Direct theorem test complete.  `ZenoTestEndpointCoherence.A(Phi)` is not
installed by finite smooth tests, scalar Zeno compactness, or nonzero/zero flux
splitting alone.  It follows from a fixed normalized gauge with no drift and a
single endpoint tangent for the selected donor chain.

This identifies the test-norm no-free donor-chain branch with the existing
Door 2 production package.

## 1. Target under test

For a downstream test class `Phi`, the endpoint coherence target is

```math
\sup_{\phi\in\Phi,\ \|\phi\|_\infty\le1}
|\phi(R_m)-\phi(D_m)|
\longrightarrow0
\tag{ZEC.1}
```

for the terminal receiver packet `R_m` and the remote endpoint `D_m` of the
same-fluid Zeno donor chain, after both are expressed in the same normalized
gauge.

For finite Door 2 mode tests, this is

```math
\max_{1\le i\le N_{mode}}
|\psi_i(R_m)-\psi_i(D_m)|
\longrightarrow0.
\tag{ZEC.2}
```

## 2. Conditional proof from no drift and one endpoint tangent

Assume the selected chain has a fixed normalized gauge and one endpoint tangent:

```math
R_m\to z_*,
\qquad
D_m\to z_*
\tag{ZEC.3}
```

in the packet coordinate space on which the finite tests are realized.

Assume the finite tests are uniformly continuous in that coordinate space:

```math
|\psi_i(z)-\psi_i(w)|
\le
\omega(|z-w|),
\qquad
\omega(r)\downarrow0,
\tag{ZEC.4}
```

uniformly for `i=1,\dots,N_mode`.  Then

```math
\max_i|\psi_i(R_m)-\psi_i(D_m)|
\le
\omega(|R_m-D_m|)
\longrightarrow0.
\tag{ZEC.5}
```

Thus

```math
\boxed{
\text{FixedGaugeSameEndpointTangent.A}
+
\text{FiniteModeUniformContinuity.A}
\Longrightarrow
\text{ZenoTestEndpointCoherence.A}(\Phi_{mode}).
}
\tag{ZEC.6}
```

For all packet-indicator tests, uniform continuity is false.  Indicator tests
separate distinct packets even when they are close.  Therefore total variation
requires the stronger packet-level co-location/polar-saturation theorem, not
only geometric endpoint convergence.

## 3. What fixed endpoint tangent requires

`FixedGaugeSameEndpointTangent.A` contains the following content:

```math
\boxed{
\text{ZenoNoDriftUniqueTangent.A}
+
\text{SelectorStability.A}
+
\text{SameEndpointNormalization.A}
}
\tag{ZEC.7}
```

`ZenoNoDriftUniqueTangent.A` removes translation, rotation, scale-schedule,
and profile switching.

`SelectorStability.A` says the receiver endpoint and remote donor endpoint are
being evaluated on the same selected branch, not on two competing packet
choices.

`SameEndpointNormalization.A` says the endpoint `D_m` is transported into the
same normalized coordinate system as `R_m` before the tests are compared.

Without these three inputs, `(ZEC.3)` is not a consequence of compactness.

## 4. Countermodels to endpoint coherence

### 4.1 Translation drift

Let

```math
R_m\to0,
\qquad
D_m\to a,
\qquad
a\ne0.
\tag{ZEC.8}
```

For a mode with `psi(a) != psi(0)`,

```math
|\psi(R_m)-\psi(D_m)|
\to
|\psi(0)-\psi(a)|>0.
\tag{ZEC.9}
```

### 4.2 Rotation drift

Let `D_m` be evaluated after rotations `O_m` with no limit in the stabilizer of
the selected profile.  A non-radial mode can satisfy

```math
\psi(R_m)-\psi(D_m)
\not\to0.
\tag{ZEC.10}
```

### 4.3 Selector or profile switching

If the chain alternates between two selected profile branches, the endpoint
tests can alternate between two mode atlases:

```math
\psi_i^{(A)}(D_m)
\quad\text{and}\quad
\psi_i^{(B)}(D_m).
\tag{ZEC.11}
```

Then `(ZEC.2)` has no defined single limit without a selector-stability theorem.

These countermodels preserve finite smoothness of each test.  The failure is
not local regularity of `psi_i`; it is loss of one normalized endpoint object.

## 5. Exact reduction

At current input strength,

```math
\boxed{
\text{ZenoTestEndpointCoherence.A}(\Phi_{mode})
\Leftarrow
\text{ZenoNoDriftUniqueTangent.A}
+
\text{SelectorStability.A}
+
\text{SameEndpointNormalization.A}
+
\text{FiniteModeUniformContinuity.A}.
}
\tag{ZEC.12}
```

`FiniteModeUniformContinuity.A` is formal for a fixed finite smooth mode atlas.
The real content is the first three inputs.

## 6. Failure route

If `(ZEC.2)` fails, the telescoping identity gives a nonzero endpoint test
residue.  The failure must be routed as

```math
\boxed{
\text{MinimalZenoTraceDefectVisibility.A}
}
\tag{ZEC.13}
```

and then split into

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}
}
\tag{ZEC.14}
```

for a nonzero native/stress readout, or

```math
\boxed{
\text{MinimalZenoProfileProduction.A}
}
\tag{ZEC.15}
```

for the zero-flux compact profile branch.

## Verdict

`ZenoTestEndpointCoherence.A(Phi_mode)` is not an independent source-control
theorem.  It is the finite-test version of no drift and unique tangent.

For smooth finite Door 2 modes, endpoint coherence follows once the donor chain
has one stable normalized endpoint.  For packet-indicator tests, it does not:
full total variation still requires packet-level polar saturation or a
source-square/no-waste reserve.
