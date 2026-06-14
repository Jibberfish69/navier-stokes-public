# SquareReserveEvolution.A direct dynamic-reserve attempt

## Status

Failed direct discharge.  The donor square reserve is a correct static price for diffuse parentage, but it does not have a closed dissipative evolution law under the currently installed Navier-Stokes packet equations.  Differentiating the square reserve produces the same positive local source terms that define the source wall.  Therefore `SquareReserveEvolution.A` is not proved independently from `OriginalSmoothData`.

## Target

The square-first-pulse attempt exposed the missing gate:

```math
\boxed{
\textbf{SquareReserveEvolution.A:}\quad
\mathcal R_N(W)
\le
Charge(W)+(1-\delta)\mathcal R_N(Past(W))+Loss_{legal}+o_N(1).
}
```

Here

```math
\mathcal R_N(W):=\int_W\sum_{P^-}|A_{P^-}(t)|^2\,dt
```

is the donor square reserve produced by the static parent-square embedding.  If this dynamic inequality held, first square-reserve pulse selection would imply `ScaleCriticalTreeCarleson.A`.

## Step 1. Static embedding is already enough only up to `R_N`

The installed static mechanism has the form

```math
\sum_P\left|\sum_{P^-\prec P}K(P,P^-)A_{P^-}\right|^2
\le C\sum_{P^-}|A_{P^-}|^2+o_N(1).
```

This prices diffuse parent clouds into the full donor reserve `\mathcal R_N`.  It removes the bounded-parent selector obstruction, but it supplies no time evolution for `\mathcal R_N` itself.

## Step 2. Attempt to differentiate the donor square

To prove `SquareReserveEvolution.A`, one would like a local law

```math
\frac{d}{dt}|A_{P^-}(t)|^2+c\,D_{P^-}^{sq}(t)
\le
Source_{P^-}^{sq}(t)+Loss_{P^-}(t).
```

But `A_{P^-}` is not itself a primary shell energy; it is a source/donor functional extracted from parent packets.  In the dyadic model use the weighted-tail donor factor

```math
A_k(t):=2^{k/2}\sum_{\ell>k+4}D_\ell(t)
```

or an equivalent localized parent-source packet factor.  Differentiating `A_k^2` differentiates the upper-tail dissipation/source rather than a closed energy.

The derivative produces terms of the form

```math
A_k(t)\sum_{\ell>k+4}\partial_tD_\ell(t).
```

Using the shell energy identity for `D_\ell` reintroduces nonlinear source terms at the same or higher level:

```math
A_k(t)\sum_{\ell>k+4}Source_\ell(t).
```

After localization and positive/square extraction, these are exactly the local positive source terms of `LocalPositiveSourceCarleson.A`.

## Step 3. Heat dissipation does not produce the required sign

The underlying shell energy has viscous damping.  However, the donor factor square has the scale-critical form

```math
\sum_k 2^k\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
```

Viscosity supplies first-moment dissipation

```math
\int\sum_\ell D_\ell(t)\,dt,
```

not a sign-definite differential decay of the square tail.  The map

```math
D_\ell \mapsto \sum_k2^k(\sum_{\ell>k+4}D_\ell)^2
```

is nonlinear and can grow by source-balanced transfer even when the first moment is finite.

## Step 4. First-pulse selection does not close the first creation event

Assume a first window `W` where

```math
\mathcal R_N(W)\ge\eta.
```

Firstness removes earlier square-reserve windows, but it does not rule out first-time creation of `\mathcal R_N` inside `W`.  To rule that out one needs exactly the dynamic parent-or-charge inequality above.  Without it, the scalar short-pulse model remains legal:

```math
F_k(t)=A_k h_k^{-1}\mathbf 1_{I_k}(t),
\qquad |I_k|=h_k,
```

with

```math
\int F_k=A_k,
\qquad
\int 2^kF_k^2=2^kA_k^2h_k^{-1}.
```

The first moment can remain small while the scale-critical square reserve remains positive on a short terminal interval.

## Step 5. Equivalence to the source wall

Every attempt to estimate the source term in the donor-square derivative lands on one of the already identified source-wall statements:

```math
ScaleCriticalTreeCarleson.A,
\qquad
LocalPositiveSourceCarleson.A,
\qquad
TerminalSourceCoherence.A,
\qquad
\text{or a rigid Zeno source-residue theorem}.
```

Thus `SquareReserveEvolution.A` is a valid sufficient theorem but not an independent consequence of current inputs.

## Conclusion

The direct proof of

```math
OriginalSmoothData\Longrightarrow SquareReserveEvolution.A
```

fails.  The donor square reserve is a static price for diffuse parentage, not a closed Lyapunov quantity.  A dynamic law for it requires the same square-source / local positive source Carleson control as the original target.

## Remaining primitive

The source-wall root remains:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
LocalPositiveSourceCarleson.A
```

through a genuinely new active-square/source-Carleson mechanism, or an external rigid-Zeno theorem not currently produced by the route.
