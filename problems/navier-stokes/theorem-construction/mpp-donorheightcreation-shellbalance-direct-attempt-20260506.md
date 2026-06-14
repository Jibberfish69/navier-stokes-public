# MPP DonorHeightCreation.A Shell-Balance Direct Attempt

Date: 2026-05-06

Status: direct attempt; obstruction recorded; theorem not discharged.

Target:

```math
\boxed{
DonorHeightCreation.A
}
```

from `mpp-reserve-creation-charge-height-variation-reduction-20260506.md`.

## 1. Target object

For the donor tail:

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
```

define the scale-normalized donor height:

```math
H_k(t):=2^kT_k(t),
\qquad
H_N(W):=\sup_{t\in W}\sup_{k>N}H_k(t).
```

`DonorHeightCreation.A` asks for a native same-fluid charge inequality:

```math
\left[
H_N(W)-H_N(Past(W))-Loss^{height}_{legal}(W)
\right]_+
\le
C\,Charge_N^{height}(W)+o_N(1).
```

If installed, it closes the first-pulse direct source-wall branch:

```math
DonorHeightCreation.A
\Longrightarrow
ReserveCreationCharge.A
\Longrightarrow
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

## 2. Native shell balance input

The available dyadic shell energy balance has the differential inequality form:

```math
\frac{d}{dt}E_\ell(t)+c\nu D_\ell(t)
\le
F_\ell(t)+L_\ell(t),
```

where:

```math
D_\ell(t)=2^{2\ell}E_\ell(t),
```

`F_\ell` is the native nonlinear shell flux/source term, and `L_\ell` denotes
legal pressure/cutoff/off-packet losses.

Thus:

```math
\frac{d}{dt}D_\ell(t)
=
2^{2\ell}\frac{d}{dt}E_\ell(t)
\le
2^{2\ell}F_\ell(t)
-c\nu2^{2\ell}D_\ell(t)
+
2^{2\ell}L_\ell(t).
```

Summing over `\ell>k+4` and multiplying by `2^k` gives:

```math
\frac{d}{dt}H_k(t)
\le
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
-c\nu 2^k\sum_{\ell>k+4}2^{2\ell}D_\ell(t)
2^k\sum_{\ell>k+4}2^{2\ell}L_\ell(t).
```

The viscous term has the correct sign.  The legal loss term is acceptable if
the weighted legal-loss ledger exists.  The obstruction is the positive part
of:

```math
\boxed{
\mathcal F_k^{height}(t)
:=
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t).
}
```

## 3. Direct consequence

The shell balance proves only the tautological estimate:

```math
\left[
H_N(W)-H_N(Past(W))-Loss^{height}_{legal}(W)
\right]_+
\le
C_{\mathrm{height}}
\int_W
\sup_{k>N}
\left[
\mathcal F_k^{height}(t)
\right]_+
dt.
```

Therefore a non-tautological `DonorHeightCreation.A` requires:

```math
\boxed{
HeightFluxControl.A:
\quad
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+
dt
\le
Charge_N^{height}(W)+o_N(1).
}
```

This is not supplied by scalar shell damping.

## 4. Why scalar damping is insufficient

Consider the damped scalar shell model:

```math
E'(t)+c\nu2^{2\ell}E(t)=F(t),
\qquad
D(t)=2^{2\ell}E(t).
```

A short forcing pulse can create donor height while keeping first-moment area
small.  The damping term only reacts after the height exists.

Equivalently, for a steady local balance:

```math
F(t)=c\nu D(t),
```

the shell balance permits fixed positive height.  It gives no reason that
first creation of that height must be small unless the nonlinear structure of
`F` supplies cancellation, depletion, or a legal charge.

Thus:

```text
shell damping controls persistence after source is known;
it does not by itself price creation of the source height.
```

## 5. Relation to the native trilinear wall

For Navier-Stokes, the dangerous part of `F_\ell` is the native trilinear
positive strain/source carrier:

```math
\left[
\langle S_{<\ell}^{loc}w_\ell,w_\ell\rangle
\right]_+.
```

Substituting this into `\mathcal F_k^{height}` yields a one-sided weighted
positive shell-flux carrier.  The weight `2^k2^{2\ell}` is stronger than the
unweighted shell energy identity and still sees the same active alignment
obstruction:

```math
|w_\ell|^2
\left[
e_\ell\cdot S_{<\ell}^{loc}e_\ell
\right]_+.
```

So the direct shell-balance route reduces to the already-known native positive
source wall unless an additional structural theorem is installed.

## 6. Exact obstruction

The attempt fails at:

```math
\boxed{
HeightFluxControl.A
}
```

not at the algebraic derivative of `H_k`.

The derivative is straightforward.  The missing theorem is a noncircular
control of the positive weighted shell flux:

```math
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+
dt.
```

Allowed proof mechanisms:

```text
signed cancellation that survives the one-sided height weight,
active strain decorrelation,
pressure/viscous depletion of the active expanding direction,
or a native height-charge theorem that is not just the source wall renamed.
```

Forbidden mechanisms:

```text
scalar energy area,
endpoint Field/Jump exclusion,
READ.COVER_downstream,
absolute-value commutator estimates,
or assuming ScaleCriticalTreeCarleson.A.
```

## 7. Current route update

The sharpened direct chain is now:

```text
HeightFluxControl.A
=> DonorHeightCreation.A
=> ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A.
```

But `HeightFluxControl.A` is not currently lower than the source wall.  It is a
more precise PDE face of the same wall unless one proves a genuinely new
signed/decorrelation/depletion theorem.

## 8. Verdict

`DonorHeightCreation.A` is not proved by shell balance alone.

The valid gain is conceptual:

```text
square-reserve first creation
-> donor-height first creation
-> positive weighted shell-flux control.
```

The next theorem-crank target is therefore not scalar damping.  It is:

```math
\boxed{
HeightFluxControl.A
}
```

with one of the structural mechanisms listed above.
