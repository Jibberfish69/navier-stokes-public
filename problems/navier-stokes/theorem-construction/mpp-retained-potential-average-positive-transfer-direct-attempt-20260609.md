# MPP Retained Potential-Average Positive-Transfer Direct Attempt

## Status

`RetainedPotentialAverageKillAndPositiveTransfer.A` is not proved by the
current theorem stack.

This pass attacks the live obstruction left by
`RetainedB1SignedToAffineSecondOrderTransfer.A`: the signed potential-average
term and its transfer to the positive far-corona stress source.

## Target

The previous reduction left the signed identity

```math
Y(\sigma,t)=\partial_\sigma\Psi(\sigma,t)+S^{spill}(\sigma,t)+E(\sigma,t),
```

on the one-sided scale interval `J=[\alpha,\beta]`. The affine coefficient
still sees

```math
\Omega_J[\Psi](t)
:=
\int_J \Psi(\sigma,t)\,d\sigma-|J|\,\Psi(\alpha,t).
```

The hoped-for theorem is a weighted kill of this term, together with a transfer
from the signed source channel to the positive stress source
`\widetilde Z`.

## Gauge test

The potential is invariant under adding any `\sigma`-independent gauge:

```math
\Psi(\sigma,t)\mapsto \Psi(\sigma,t)+C(t,x).
```

This does not affect `\partial_\sigma\Psi`. It also does not affect
`\Omega_J[\Psi]`, since

```math
\int_J(\Psi+C)\,d\sigma-|J|(\Psi(\alpha)+C)
=
\Omega_J[\Psi].
```

So ordinary mean-zero or endpoint-zero gauge normalization cannot kill the
surviving affine defect. The defect is gauge-invariant.

## Poincare test

A one-dimensional scale Poincare estimate gives

```math
\|\Omega_J[\Psi](t)\|_{L_x^2}
\le C_J
\|\partial_\sigma\Psi(\cdot,t)\|_{L_\sigma^2(J;L_x^2)}.
```

Using the signed identity, this becomes

```math
\|\Omega_J[\Psi](t)\|_{L_x^2}
\le C_J
\|Y(\cdot,t)\|_{L_\sigma^2(J;L_x^2)}
+
\|S^{spill}+E\|_{L_\sigma^2(J;L_x^2)}.
```

After multiplying by `H_w(t)` and integrating in time, this spends the full
signed source square on `J`. Passing from that signed square to the positive
stress source is exactly the old lower-prefix / `FCTS` burden. This route gives
control only by returning to the object the affine quotient was meant to avoid.

So Poincare control is circular as a completion theorem.

## Positive-source transfer test

The live far-corona source is

```math
\widetilde Z(\sigma,t,x)
=
\chi_{mid}(\sigma)^{1/2}\tau_{e^\sigma}^{H^1}[u](x,t)\ge0.
```

The signed source `Y` carries cancellation and scale exactness. The positive
source `\widetilde Z` carries no sign and no installed first-order descent.
No installed theorem transfers the signed potential-average kill to
`\widetilde Z`.

The useful fact on the positive source is different. Since
`\widetilde Z\ge0`, the affine coefficient

```math
c_F(t)=\int_J\frac{\beta-\sigma}{|I|}\widetilde Z(\sigma,t)\,d\sigma
```

satisfies

```math
0\le c_F(t,x)\le \frac{|J|}{|I|}M_0(t,x),
\qquad
M_0(t):=\int_J\widetilde Z(\sigma,t)\,d\sigma.
```

Thus the positive affine survivor is controlled by a single endpoint-mass
theorem:

```math
\int_0^T H_w(t)\|M_0(t)\|_{L_x^2}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
```

This is a genuine shrinkage. It uses positivity without asking the signed
potential to survive the absolute-value step.

## Moment-evolution test

The positive stress density obeys an exact parabolic identity of the form

```math
\partial_t\tau_\ell^{H^1}[u]
-\nu\Delta_x\tau_\ell^{H^1}[u]
+2\nu\mathfrak d_\ell[u]
=
\mathfrak n_\ell[u]+\nabla_x\cdot\mathfrak q_\ell[u].
```

After integration over `J`, the endpoint mass satisfies

```math
\partial_tM_0-\nu\Delta_xM_0+2\nu\mathfrak D_0
=
\mathfrak N_0+\nabla_x\cdot\mathfrak Q_0.
```

This identity is exact, but it is not yet a closed estimate for `M_0`. The
coercive term is the full scale-moment dissipation, and the nonlinear term is
not controlled by `M_0` alone on the current route. A closed theorem would need
to absorb `\mathfrak N_0` into `\mathfrak D_0` or prove compactness / decay of
the affine survivor directly.

## Verdict

`RetainedPotentialAverageKillAndPositiveTransfer.A` is reduced, not proved.

The signed potential-average side has no available gauge kill. Its Poincare
route cycles back to the full lower-prefix / `FCTS` source square.

The positive-source side gives the better next target:

```math
\textbf{RetainedPositiveAffineEndpointMassKill.A}.
```

It asks for a weighted endpoint-mass theorem for

```math
M_0(t)=\int_J\widetilde Z(\sigma,t)\,d\sigma,
```

or an equivalent closed coercive moment evolution / affine-survivor compactness
theorem that controls `M_0` without spending the full lower-prefix active-square
object.

## Closure impact

This pass shrinks the bridge as follows:

```math
\text{RetainedB1SignedToAffineSecondOrderTransfer.A}
\Longleftarrow
\text{RetainedPotentialAverageKillAndPositiveTransfer.A}
\Longleftarrow
\text{RetainedPositiveAffineEndpointMassKill.A}.
```

It does not close the affine quotient route, LPAS/CTS, `(L-Flux)`, retained
tail input, Part-row compactness, or PDF finality.
