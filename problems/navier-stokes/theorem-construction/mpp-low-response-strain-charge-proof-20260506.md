# MPP LowResponseStrainCharge.A Proof Run

Date: 2026-05-06

Status: partial proof; finite response-norm branch proved; terminal uniform
branch reduced to ResponseLowNormNoBlow.A.

Depends on:

```text
mpp-response-flux-derivative-control-direct-attempt-20260506.md
mpp-first-height-creation-dichotomy-expansion-20260506.md
```

## 0. Target

The response-flux derivative expansion leaves the low-response-strain term:

```math
\int\langle ZS_{<j}^{loc}u_j,u_j\rangle,
```

where:

```math
ZS_{<j}^{loc}
=
\frac12(\nabla z_{<j}^{loc}+(\nabla z_{<j}^{loc})^T),
\qquad
z=\partial_\nu u.
```

The target is:

```math
\boxed{
LowResponseStrainCharge.A
}
```

in the form:

```math
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell>0\}}
\left[
\int\langle ZS_{<\ell}^{loc}u_\ell,u_\ell\rangle
\right]_+dt
\le
LegalResponseCharge_N(W)+o_N(1).
\tag{LRS.1}
```

## 1. Proved Finite-Norm Estimate

### Lemma `FiniteResponseLowStrainTail.A`

Assume on `W`:

```math
\int_W\|\nabla z(t)\|_{L^\infty}\,dt
\le
M_z(W)<\infty.
\tag{LRS.2}
```

Then:

```math
\boxed{
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
\left|
\int\langle ZS_{<\ell}^{loc}u_\ell,u_\ell\rangle
\right|dt
\le
M_z(W)
\int_W\sum_{\ell>N}2^{-\ell}D_\ell(t)\,dt.
}
\tag{LRS.3}
```

In particular, for every fixed smooth solution and finite response norm,

```math
\lim_{N\to\infty}
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
\left|
\int\langle ZS_{<\ell}^{loc}u_\ell,u_\ell\rangle
\right|dt
=0.
\tag{LRS.4}
```

### Proof

For each shell:

```math
\left|
\int\langle ZS_{<\ell}^{loc}u_\ell,u_\ell\rangle
\right|
\le
\|\nabla z_{<\ell}^{loc}\|_{L^\infty}\|u_\ell\|_2^2
\le
\|\nabla z\|_{L^\infty}E_\ell.
```

Since:

```math
E_\ell=2^{-2\ell}D_\ell,
```

and `\ell>k+4` implies `2^k2^{-2\ell}\le 2^{-\ell}`, we get:

```math
2^k\sum_{\ell>k+4}
\left|
\int\langle ZS_{<\ell}^{loc}u_\ell,u_\ell\rangle
\right|
\le
\|\nabla z\|_{L^\infty}
\sum_{\ell>k+4}2^{-\ell}D_\ell
\le
\|\nabla z\|_{L^\infty}
\sum_{\ell>N}2^{-\ell}D_\ell.
```

Integrating over `W` proves `(LRS.3)`.  For a fixed smooth solution, the
weighted high tail on the right tends to zero by monotone convergence and
finite dissipation on `W`.  This proves `(LRS.4)`.  `\square`

## 2. What This Proves For The No-Fold Route

The low-response-strain branch is controlled on every compact positive-viscosity
subinterval where:

```math
\int_W\|\nabla \partial_\nu u^\nu(t)\|_{L^\infty}dt
```

is bounded uniformly in `nu`.

Thus:

```math
\boxed{
ResponseLowNormNoBlow.A
\Longrightarrow
LowResponseStrainCharge.A.
}
\tag{LRS.5}
```

where:

```math
ResponseLowNormNoBlow.A:
\quad
\sup_{\nu\in J}
\int_W\|\nabla\partial_\nu u^\nu(t)\|_{L^\infty}dt
<\infty
```

for every compact `J\Subset(0,\infty)` used in the no-fold integration.

## 3. Direct Attempt At ResponseLowNormNoBlow.A

The response equation is:

```math
\partial_t z
+\mathbb P(u\cdot\nabla z)
+\mathbb P(z\cdot\nabla u)
=
\nu\Delta z+\Delta u,
\qquad
z(0)=0.
\tag{LRS.6}
```

For `s>5/2`:

```math
\frac{d}{dt}\|z\|_{H^s}^2
+\nu\|z\|_{H^{s+1}}^2
\le
C\|\nabla u\|_{L^\infty}\|z\|_{H^s}^2
+C\nu^{-1}\|u\|_{H^{s+1}}^2.
\tag{LRS.7}
```

Therefore `ResponseLowNormNoBlow.A` follows from a uniform bound on:

```math
\int_W\|\nabla u^\nu(t)\|_{L^\infty}dt
\quad\text{and}\quad
\int_W\|u^\nu(t)\|_{H^{s+1}}^2dt
```

on the same compact viscosity interval.

But those are exactly high-regularity NS bounds near the candidate boundary.
Using them unconditionally imports what the no-fold theorem must prove.

Thus the direct `H^s` response estimate is conditional.

## 4. Noncircular Split

To avoid importing full smoothness, split the response low strain into:

```text
finite-depth low modes;
near-terminal response modes.
```

### Finite-depth low modes

For every fixed cutoff `M`, the projection `P_{\le M}z` satisfies a
finite-dimensional forced ODE with parabolic damping.  On compact positive
viscosity intervals it is controlled by low-mode data and low-mode forcing.
Thus:

```math
FiniteLowResponseControl.A:
\quad
\int_W\|\nabla P_{\le M}z\|_{L^\infty}dt<\infty
```

is lower than the terminal source wall.

### Near-terminal response modes

The remainder `P_{>M}z` is not controlled by finite-dimensional compactness.
If it feeds `(LRS.1)`, then the response itself has developed high-frequency
height.  That is not a low-response-strain issue; it is a response-height
creation event:

```math
ResponseHeightCreation.A.
```

So the noncircular dichotomy is:

```math
\boxed{
LowResponseStrainCharge.A
\Longleftarrow
FiniteLowResponseControl.A
+ResponseHeightCreationControl.A.
}
\tag{LRS.8}
```

## 5. Verdict

Proved:

```text
FiniteResponseLowStrainTail.A
ResponseLowNormNoBlow.A => LowResponseStrainCharge.A
```

Not proved unconditionally:

```text
ResponseLowNormNoBlow.A
ResponseHeightCreationControl.A
```

The useful reduction is that the low-response-strain term is not a new native
source wall.  It vanishes under any finite response low-norm control because
the height weight hits `E_l`, not `D_l`, and gains the factor `2^{-l}`.

The remaining threat is only:

```text
high-frequency response-height creation in z.
```

That should be merged with the signed response-height packet, not tracked as a
separate source-wall primitive.

## 6. Full-Coefficient Response Height Drain

The high-frequency response-height threat is discharged in
`mpp-full-coefficient-response-height-drain-20260506.md`:

```text
ResponseHeightNoFirstPulse.A
=> ResponseHeightCreationControl.A.
```

Therefore the noncircular low-response-strain route becomes:

```text
FiniteLowResponseControl.A
+ ResponseHeightCreationControl.A
=> LowResponseStrainCharge.A.
```

with the second input installed by the full-coefficient adjoint drain.  The
remaining low-response item is only finite-depth low-mode response control on
compact positive-viscosity intervals.

## 7. Finite Low Response Control

The final finite-mode item is discharged in
`mpp-finite-low-response-control-proof-20260506.md`:

```text
ResponseHeightCreationControl.A
=> FiniteLowResponseControl.A.
```

Therefore:

```text
LowResponseStrainCharge.A
```

is installed after the full-coefficient response-height drain.
