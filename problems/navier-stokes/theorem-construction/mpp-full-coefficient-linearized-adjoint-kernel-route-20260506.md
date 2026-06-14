# MPP FullCoefficientLinearizedAdjointKernel.A Route

Date: 2026-05-06

Status: route mutation; exact adjoint identity proved on smooth slabs; kernel
packet theorem isolated as the real burden.

Depends on:

```text
mpp-full-linearized-response-adjoint-route-20260506.md
mpp-high-coefficient-response-residual-attempt-20260506.md
mpp-linearized-response-residual-pair-discharge-20260506.md
```

External kernel references used as orientation, not as an installed discharge:

```text
D.G. Aronson, Bounds for the fundamental solution of a parabolic equation,
Bull. AMS 73 (1967), 890-896, DOI 10.1090/S0002-9904-1967-11830-5.

Z. Qian and G. Xi, Parabolic equations with divergence-free drift in
L_t^l L_x^q, arXiv:1704.02173.
```

## 0. Why This Route Exists

The finite-collar correction leaves one residual channel:

```text
far-high response beat: u_q * Z_q returning to shell j, q >> j.
```

That channel exists only because the coefficient was truncated.  If the adjoint
is built for the full linearized response operator, there is no coefficient
residual:

```math
L_u Z
=
\partial_t Z
+\mathbb P(u\cdot\nabla Z+Z\cdot\nabla u)
-\nu\Delta Z.
\tag{FCK.1}
```

The price is no longer `HighCoefficientResponseResidual.A`.  The price is a
full-coefficient kernel theorem:

```math
\boxed{
FullCoefficientLinearizedAdjointKernel.A.
}
\tag{FCK.2}
```

## 1. Theorem `FullCoefficientAdjointIdentity.A`

### Statement

Let `u` be a smooth divergence-free Navier-Stokes solution on a compact slab
`[a,b]` with fixed `nu>0`.  Let `Z=partial_nu u` solve:

```math
L_u Z=\Delta u.
\tag{FCK.3}
```

Let `Psi` be any smooth backward adjoint solution:

```math
L_u^*\Psi=0
\tag{FCK.4}
```

with compatible divergence-free/Leray projection normalization.  Then:

```math
\boxed{
\langle Z(b),\Psi(b)\rangle
=
\langle Z(a),\Psi(a)\rangle
+\int_a^b\langle \Delta u,\Psi\rangle dt.
}
\tag{FCK.5}
```

### Proof

Differentiate the pairing:

```math
\frac{d}{dt}\langle Z,\Psi\rangle
=
\langle \partial_t Z,\Psi\rangle
+\langle Z,\partial_t\Psi\rangle.
```

Use `(FCK.3)` to substitute for `partial_t Z` and `(FCK.4)` to substitute for
`partial_t Psi`.  The transport term, strain term, Leray-projected pressure
term, and viscous term cancel by the definition of the Hilbert adjoint and the
divergence-free projected pairing.  The only noncancelled term is
`\langle\Delta u,\Psi\rangle`.  Integrating from `a` to `b` gives `(FCK.5)`.
`\square`

## 2. Corollary `CoefficientResidualRemoval.A`

### Statement

For the full-coefficient adjoint, the response parent-or-charge identity has
no coefficient residual:

```math
R_{coeff}=0.
\tag{FCK.6}
```

### Proof

All terms

```math
\mathbb P(u\cdot\nabla Z+Z\cdot\nabla u)
```

are part of `L_u`.  Since the adjoint is `L_u^*`, these terms cancel exactly in
the pairing identity `(FCK.5)`.  No dyadic high-coefficient split is made, so
there is no near-collar or far-high residual to estimate. `\square`

## 3. What External Parabolic Theory Gives

Classical Aronson theory gives Gaussian fundamental-solution bounds for scalar
uniformly parabolic equations under robust coefficient hypotheses.  Modern
drift results also show that divergence-free drift can preserve strong heat
kernel control in critical/supercritical drift classes.

This supports the route at the level of principle:

```text
positive viscosity supplies a uniformly parabolic carrier;
divergence-free drift is not automatically fatal to kernel bounds.
```

But it does not install `(FCK.2)` for this repo, because the response operator
is vectorial and contains:

```text
1. Leray projection;
2. the matrix potential Z dot grad u;
3. terminal strain-gain normalization;
4. packet Bessel / parent-kernel / lower-frame requirements;
5. constants that must not blow in the terminal contradiction limit.
```

So external parabolic theory is guidance, not a completed theorem import.

## 4. The Required Kernel Theorem

### Theorem target

`FullCoefficientLinearizedAdjointKernel.A` should assert that normalized
backward adjoint kernels for `L_u^*` on a terminal response tile admit:

```text
1. localized heat-tube decay after the same-fluid/strain gauge;
2. L_t^2 H_x^1 Bessel summability for packet superpositions;
3. endpoint parent-kernel decomposition on stopped earlier faces;
4. terminal lower-frame detection for the response-orthogonal functional;
5. legal cutoff/projection/frame errors;
6. constants controlled by coefficient stopping or by strain-gain
   normalization, not by an uncontrolled terminal coefficient tower.
```

Symbolically:

```math
\boxed{
\left\|\sum_T c_T\Chi_T^{full}\right\|_{L_t^2H_x^1}^2
\le C\sum_T|c_T|^2
}
\tag{FCK.7}
```

plus parent and lower-frame statements.

## 5. Proof Route For The Kernel Theorem

The bounded self-contained route is:

```text
FullCoeffGoodPacket.A:
  prove the normalized packet estimates on subtiles where the pulled-back
  full coefficient remainder is small.

FullCoeffStop.A:
  if the full coefficient remainder is not small, stop backward at the first
  coefficient threshold and treat the stopped endpoint as response parent or
  coefficient charge.

FullCoeffLowerFrame.A:
  prove that the terminal response packet frame remains a lower frame after
  Leray projection and strain-gain normalization.
```

Then:

```math
\boxed{
FullCoeffGoodPacket.A
+FullCoeffStop.A
+FullCoeffLowerFrame.A
\Longrightarrow
FullCoefficientLinearizedAdjointKernel.A.
}
\tag{FCK.8}
```

The first expansion is recorded in
`mpp-full-coefficient-good-packet-stop-attempt-20260506.md`.  It proves:

```text
FullCoeffGoodPacket.A
FullCoeffStopIdentity.A
ordinary Delta-u charge on stopped good segments
```

and sharpens the stopped-tile burden to:

```text
FullCoeffStopChargeLegal.A
```

So `(FCK.8)` should now be read as:

```text
FullCoeffGoodPacket.A
+ FullCoeffStopIdentity.A
+ FullCoeffStopChargeLegal.A
+ FullCoeffLowerFrame.A
=> FullCoefficientLinearizedAdjointKernel.A.
```

The stop-charge burden is sharpened further in
`mpp-full-coeff-stop-parent-gap-attempt-20260506.md`:

```text
FullCoeffStopIdentity.A
+ FullCoeffStopParentGap.A
+ OrdinaryDissipationTail.A
=> FullCoeffStopChargeLegal.A.
```

The key point is that coefficient badness is not priced directly.  A backward
coefficient stop is treated as an earlier response parent, and the first-pulse
threshold margin makes that parent too small to create terminal mass.

The parent-frame compatibility is pinned in
`mpp-full-coeff-stopped-parent-frame-pinning-20260506.md`, which upgrades the
no-parent license to:

```text
ResponseNoParent_full.A
```

where the parent relation includes both response Duhamel parents and stopped
full-coefficient frame parents.

The terminal lower-frame pinning is discharged in
`mpp-full-coeff-terminal-lower-frame-pinning-20260506.md`:

```text
SameTerminalFullResponseFrame.A
FullLinearizedTerminalLowerFrame.A
FullLinearizedRotationTestNormalization.A
```

Those are terminal packet-definition statements and do not depend on the
backward full-coefficient propagation.

The remaining response tether for detection is discharged in
`mpp-response-source-tether-terminal-slice-discharge-20260506.md` by
terminal-slice selection:

```text
PositiveTerminalSlice.A
=> SourceTether_resp.A
```

for the response-rotation detector used by the full-adjoint mass.

The theorem assembly is recorded in
`mpp-full-coefficient-response-drain-assembly-20260506.md`, which proves:

```text
FullCoefficientLinearizedAdjointKernel.A
FullCoeffParentOrCharge_resp.A
ResponseTPNI.A
```

from the full-coefficient identity, good-packet/stop-parent package, expanded
no-parent relation, terminal detection, and ordinary dissipation tail.

## 6. Consequence For The Response Route

Combining `(FCK.5)` with the ordinary dissipation tail:

```math
\|\Delta u_{>N}\|_{L_t^2H_x^{-1}}^2
\le
C_{\Delta}
\int\sum_{j>N}D_j(t)dt
\to0,
\tag{FCK.9}
```

gives:

```math
\boxed{
FullCoefficientLinearizedAdjointKernel.A
+PositiveRotationDetectsFullAdjointMass.A
+ResponseNoParent_full.A
+OrdinaryDissipationTail.A
\Longrightarrow
ResponseTPNI.A.
}
\tag{FCK.10}
```

The detection theorem is discharged in
`mpp-positive-rotation-detects-full-adjoint-mass-proof-20260506.md` from the
terminal lower-frame and test-normalization definitions:

```text
ResponseLowerFrame.A
+ ResponseTestNormalization.A
+ SameTerminalFullResponseFrame.A
=> PositiveRotationDetectsFullAdjointMass.A.
```

This does not use backward propagation.  The full adjoint affects the packet
inside the slab, while detection is entirely at the terminal face.

This bypasses:

```text
HighCoefficientResponseResidual.A
FarHighBeatNoReturn.A
FiniteCollarLinearizedAdjointPacket.A
```

because no coefficient truncation is performed.

## 7. Honest Boundary

Proved here:

```text
FullCoefficientAdjointIdentity.A
CoefficientResidualRemoval.A
```

Not proved here:

```text
FullCoefficientLinearizedAdjointKernel.A
terminal lower-frame/test-normalization pinning
```

The new route is honest only if it is read this way:

```text
full coefficient adjoint removes the high-coefficient PDE residual exactly;
it converts the remaining problem into a vector parabolic packet-frame theorem.
```

That theorem is likely the cleanest current expression of "fixed positive
viscosity cannot lose active participation."
