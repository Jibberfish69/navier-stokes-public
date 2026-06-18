# HFG Dyadic Cascade Proof Attempt: Low-Mode Threshold Reduction

## Claim level

This is a mathematical proof attempt for

```math
OriginalSmoothData\Longrightarrow HFG,
```

where

```math
HFG:
\qquad
\sum_{j\ge0}2^{3j/2}\|\Delta_j\omega\|_{L^1_tL^2_x}<\infty.
```

The attempt closes the genuine high-high packet and reduces the remaining burden to a precise strict low-mode strain theorem. The current attempt fails to prove HFG from the baseline original-data energy layer.

## 1. Dyadic vorticity identity

The vorticity equation is

```math
\partial_t\omega+(u\cdot\nabla)\omega=(\omega\cdot\nabla)u+\nu\Delta\omega.
```

Apply `\Delta_j` and pair with `\omega_j:=\Delta_j\omega`:

```math
\frac12\frac{d}{dt}\|\omega_j\|_2^2
+\nu\|
abla\omega_j\|_2^2
=
\langle \Delta_j((\omega\cdot\nabla)u),\omega_j\rangle
-
\langle [\Delta_j,u\cdot\nabla]\omega,\omega_j\rangle.
```

Bernstein gives

```math
c_{\mathrm{B}}2^{2j}\|\omega_j\|_2^2
\le
\|\nabla\omega_j\|_2^2
\le
C_{\mathrm{B}}2^{2j}\|\omega_j\|_2^2.
```

So HFG follows from a shell inequality of the form

```math
cascade_j(t)
\le
\varepsilon\nu2^{2j}\|\omega_j\|_2^2
+C_\varepsilon2^{-2j}\|
abla\omega\|_2^2.
```

## 2. High-high packet closes after near-diagonal reduction

The genuine high-high packet has the near-diagonal cubic form

```math
\mathfrak H_N^{HH}(t)
\le
C_{\mathrm{HH}}
\sum_{j\ge N-M}2^{3j}\|\Delta_j u(t)\|_2^3.
```

Rewrite each summand as

```math
2^{3j}\|\Delta_j u\|_2^3
=
(2^{4j}\|\Delta_j u\|_2^2)(2^{-j}\|\Delta_j u\|_2).
```

Energy gives

```math
2^{-j}\|\Delta_j u(t)\|_2
\le
2^{-N+M}\|u(t)\|_2
\le
C_E^{1/2}2^{-N+M}.
```

The old loose step was to say that this is absorbed for large `N`.  The exact
shifted-tail statement is

```math
\mathfrak H_N^{HH}(t)
\le
C_{\mathrm{HH}}C_E^{1/2}2^{-N+M}
\sum_{j\ge N-M}2^{4j}\|\Delta_j u(t)\|_2^2.
```

Choose `N_*` so that

```math
C_{\mathrm{HH}}C_E^{1/2}2^{-N_*+M}\le \frac{\eta\nu}{2}.
```

Then for `N\ge N_*`,

```math
\mathfrak H_N^{HH}(t)
\le
\frac{\eta\nu}{2}
\sum_{j\ge N-M}2^{4j}\|\Delta_j u(t)\|_2^2.
```

The route form with `\sum_{j\ge N}` is valid only after the fixed collar
`N-M\le j<N` is included in the threshold-spill packet or after the high-side
cutoff is reindexed by the fixed width `M`.  Thus the genuine high-high packet
closes only under that shifted-tail or collar-bookkept interpretation.

## 3. Strict low-mode coefficient remains

The low-high and commutator principal terms contain the strict low-mode strain coefficient

```math
A_{j-1}(t)
:=
\|\nabla S_{j-1}u(t)\|_{L^\infty}
\le
C_{\mathrm{LH}}
\sum_{k<j}2^{5k/2}\|\Delta_k u(t)\|_2.
```

The shell term has the form

```math
A_{j-1}(t)\|\omega_j(t)\|_2^2.
```

To absorb it into viscosity at shell `j`, one needs

```math
A_{j-1}(t)
\le c\nu2^{2j}.
```

This is the exact low-mode strain suppression target.

## 4. Dynamic threshold estimate

Using Cauchy-Schwarz against enstrophy,

```math
A_{j-1}(t)
\le
C_{\mathrm{CS}}
\left(\sum_{k<j}2^{2k}\|\Delta_k u(t)\|_2^2\right)^{1/2}
\left(\sum_{k<j}2^{3k}\right)^{1/2}.
```

Since

```math
\left(\sum_{k<j}2^{2k}\|\Delta_k u\|_2^2\right)^{1/2}
\le
\|\nabla u\|_2
\le
C_{\omega}\|\omega\|_2,
```

one obtains

```math
A_{j-1}(t)
\le
C_A\|\omega(t)\|_2 2^{3j/2}.
```

Therefore low-mode absorption holds whenever

```math
\|
omega(t)\|_2 2^{3j/2}
\le c\nu2^{2j},
```

that is,

```math
2^{j/2}
\ge C\nu^{-1}\|
omega(t)\|_2.
```

So every shell above the dynamic threshold

```math
j\ge J(t):=2\log_2(C\nu^{-1}\|
omega(t)\|_2)
```

has absorbable strict low-mode strain.

## 5. Residual low-shell estimate

The remaining shells satisfy `j<J(t)`. Their instantaneous HFG weight obeys

```math
\sum_{j<J(t)}2^{3j/2}\|
Delta_j\omega(t)\|_2
\le
\left(\sum_{j<J(t)}2^{2j}\|
Delta_j\omega(t)\|_2^2\right)^{1/2}
\left(\sum_{j<J(t)}2^j\right)^{1/2}.
```

Thus

```math
\sum_{j<J(t)}2^{3j/2}\|
Delta_j\omega(t)\|_2
\le
C_{\mathrm{low}}
\|\nabla\omega(t)\|_2 2^{J(t)/2}.
```

By the definition of `J(t)`,

```math
2^{J(t)/2}
\le
C_J\nu^{-1}\|\omega(t)\|_2.
```

Therefore the residual low-shell contribution is bounded by

```math
C\nu^{-1}\|
\nabla\omega(t)\|_2\|\omega(t)\|_2.
```

The time-integrated residual requires

```math
\int_0^T\|
omega(t)\|_2\|
abla\omega(t)\|_2\,dt<\infty.
```

The baseline original-data energy layer supplies

```math
\int_0^T\|
omega(t)\|_2^2\,dt<\infty,
```

and it supplies no endpoint-uniform bound for the displayed mixed enstrophy-gradient integral.

## 6. Result of the attempt

The proof attempt proves the following conditional theorem:

```math
\left[
\int_0^T\|
omega(t)\|_2\|
abla\omega(t)\|_2dt<\infty
\right]
+
\left[
\text{high-high near-diagonal reduction}
\right]
\Longrightarrow HFG.
```

Equivalently, the raw HFG wall reduces to either of the following theorem targets.

### Target A: low-mode strain suppression

```math
\|
abla S_{j-1}u(t)\|_\infty
\le c\nu2^{2j}
```

on the required high-shell range, with a residual summation law for the remaining shells.

### Target B: residual mixed enstrophy-gradient control

```math
\int_0^T\|
omega(t)\|_2\|
abla\omega(t)\|_2dt<\infty.
```

### Target C: all-scale frequency-transfer inefficiency

A dyadic transfer law with a summable spectral-gap kernel that converts upward cascade into a controlled quantity and bypasses the strict low-mode strain threshold.

## Boundary

The high-high packet is no longer the live obstruction after near-diagonal reduction and cubic-tail absorption. The live obstruction is the strict low-mode strain coefficient and its residual low-shell sum below the dynamic absorption threshold.

The thresholded low-mode strain theorem is now recorded in
`strict-low-mode-strain-suppression-result.md`. The all-scale transfer-loss
alternative is tested in `hfg-alt-all-scale-transfer-loss-no-free-gap.md`; it
does not bypass the diagonal low-strain term without an additional amplitude
theorem.

Thus the exact surviving HFG primitive is

```math
MEG:
\qquad
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2\,dt<\infty.
```
