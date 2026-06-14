# HFG.alt: All-Scale Transfer-Loss No-Free-Gap Theorem

## Status

This note tests the proposed alternative to `HFG.low`: an all-scale
frequency-transfer inefficiency kernel that would bypass the strict low-mode
strain threshold.

The result is negative in the route-facing sense. A summable spectral-gap
kernel can control separated high-high and far-off-diagonal interactions, but
it cannot remove the near-diagonal low-high stretching term. That diagonal term
is exactly the `HFG.low` coefficient

```math
A_{j-1}(t)=\|\nabla S_{j-1}u(t)\|_{L^\infty}.
```

Thus `HFG.alt` does not supply an unconditional bypass. It reduces to the same
surviving primitive as `HFG.low`: control of the residual low-threshold
mixed enstrophy-gradient integral.

## Theorem `HFG.alt.no-free-gap`

Let a dyadic vorticity cascade estimate be decomposed into shell interactions.
Any transfer-loss theorem whose gain depends only on shell separation,

```math
K(|j-k|),\qquad \sum_{m\ge0}K(m)<\infty,
```

can absorb off-diagonal high-high or separated interactions. It cannot, by
itself, prove

```math
A_{j-1}(t)\|\Delta_j\omega(t)\|_2^2
\le
c\nu2^{2j}\|\Delta_j\omega(t)\|_2^2
```

on every shell. Consequently, a spectral-gap transfer-loss theorem closes HFG
only if it is supplemented by either:

```math
A_{j-1}(t)\le c\nu2^{2j}
```

on the active shell range, or by the residual summation control

```math
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2\,dt<\infty.
```

## Proof

In the vorticity shell identity, the low-high stretching term contains

```math
\langle \Delta_j((S_{j-1}\omega)\cdot\nabla S_{j-1}u),\Delta_j\omega\rangle
```

and after the usual commutator/paraproduct localization its size is bounded by

```math
C\|\nabla S_{j-1}u(t)\|_\infty\|\Delta_j\omega(t)\|_2^2.
```

This is a near-diagonal interaction in the shell `j`: the vorticity factor and
the output shell are the same, while the coefficient is the accumulated lower
strain. A kernel depending only on shell separation has no positive separation
to spend on this term. The relevant separation parameter is `0` or bounded
independently of `j`, so the kernel contributes only a fixed constant
`K(0)`, not a summable high-shell gain.

Therefore an all-scale transfer-loss estimate can improve the already separated
pieces, including the high-high packet closed in the HFG reduction note, but it
leaves the diagonal low-strain term in the form

```math
A_{j-1}(t)\|\Delta_j\omega(t)\|_2^2.
```

Absorption into viscosity is precisely the inequality

```math
A_{j-1}(t)\le c\nu2^{2j}.
```

By `HFG.low`, that inequality holds only above the dynamic threshold

```math
2^{j/2}\ge C_{HFG}\nu^{-1}\|\omega(t)\|_2.
```

The shells below that threshold contribute the residual law

```math
\sum_{j<J(t)}2^{3j/2}\|\Delta_j\omega(t)\|_2
\le C_{res}
\nu^{-1}\|\omega(t)\|_2\|\nabla\omega(t)\|_2.
```

Thus the all-scale transfer-loss alternative cannot remove the residual unless
it contains an additional amplitude theorem controlling that mixed integral.
This proves the no-free-gap statement.

## Surviving HFG primitive

The exact remaining HFG primitive is:

```math
MEG:
\qquad
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2\,dt<\infty.
```

Equivalently, one may prove a genuinely stronger low-mode amplitude theorem
implying `MEG`. A pure spectral-gap kernel is not enough.
