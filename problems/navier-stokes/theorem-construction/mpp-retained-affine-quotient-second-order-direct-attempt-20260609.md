# MPP Retained Affine-Quotient Second-Order Direct Attempt

## Status

`RetainedAffineQuotientSecondOrder.A` is not proved by the current theorem
stack.

This pass attacks the exact survivor left by
`mpp-retained-lpas-active-square-direct-attempt-20260609.md`: the far-corona
weighted quotient mode selected by the one-sided Volterra primitive.

## Target

The Volterra / lower-triangular route reduces the far-corona stress square to a
persistent weighted quotient:

```math
\int_0^T H_w(t)\,\|c_F(t)\|_{L_x^2}^2\,dt,
```

with

```math
c_F(t)=A_\kappa M_0(t)+B_\kappa M_1(t),
```

and

```math
M_0(t):=\int_{s_0}^{s_1-\kappa}\widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t):=\int_{s_0}^{s_1-\kappa}\sigma\,\widetilde Z(\sigma,t)\,d\sigma.
```

Here `\widetilde Z` is the positive stress source coming from
`\tau_\ell^{H^1}[u]`. The affine kernel kills exact second derivatives in
scale, so the strongest possible direct route is to show that this source is
second-order exact modulo a barrier-sized remainder, or to prove an equivalent
potential-average kill theorem.

## Checked reductions

The existing quotient audit rules out two shortcuts.

First, the harmonic-weight route collapses back to the old `CTS` / `LPAS`
geometry. It bounds the quotient by the same lower-prefix active-square object
that this pass is trying to avoid.

Second, the direct mixed-readout route is circular at this stage. It bounds the
persistent quotient by the full `FCTS` object.

Only the affine-quotient route is a genuine shrinkage:

```math
\text{full prefix object}
\rightsquigarrow
\text{affine quotient readout }(M_0,M_1).
```

The strongest signed exactness currently installed is first-order:

```math
Y=\partial_\sigma\Psi+S^{spill}+E.
```

Pairing this with the affine kernel leaves

```math
-\theta_\kappa(s_0)\Psi(s_0,t)
+
\frac1{|I|}\int_J\Psi(\sigma,t)\,d\sigma
+
\mathcal C_\theta[S^{spill}](t)
+
\mathcal C_\theta[E](t).
```

The scale-average of `\Psi` survives. The affine quotient is therefore one
scale derivative beyond the current signed descent.

There is also a source-type gap. The signed identity applies to a signed
commutator channel. The Volterra quotient uses the positivized stress source
`\widetilde Z`, so first-order signed exactness does not directly transfer to
the positive source.

## Direct attempt

The direct theorem would need one of the following statements.

### Route 1: second-order exactness of the positive stress source

Prove

```math
\widetilde Z=\partial_\sigma^2G+R
```

on the retained far-corona scale interval, with boundary conditions killing the
affine functional and with

```math
\int_0^T H_w(t)\,
\left\|
\int\theta_\kappa(\sigma)R(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
```

No installed note supplies this for the positive stress source.

### Route 2: potential-average kill plus signed-to-positive transfer

Use the signed descent, but prove

```math
\int_0^T H_w(t)
\left\|
\frac1{|I|}\int_J \Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N},
```

and then transfer the result from the signed commutator channel to the positive
stress source `\widetilde Z`. The current stack contains neither the
potential-average kill theorem nor the signed-to-positive transfer theorem.

### Route 3: direct two-scale factorization

Prove a direct factorization

```math
\mathcal A_{\ell,r}(t)\le U(\ell,t)V(r,t)
```

with `U` paid by dissipation and `V` paid by the barrier tail. The current
direct attacks reduce this back to `CTS` / `LPAS`; they do not install such a
factorization.

### Route 4: `DER+EP`

Prove the operator decomposition estimates `(DER)` and the endpoint /
persistent quotient estimate `(EP)`. The operator notes expose this as a
sharper route, but the endpoint quotient theorem is exactly the affine survivor
still open here.

## Verdict

`RetainedAffineQuotientSecondOrder.A` is reduced, not proved.

The exact next target is the retained B1 bridge:

```math
\textbf{RetainedB1SignedToAffineSecondOrderTransfer.A}
```

meaning:

```math
\text{collapse the signed gap-kernel route onto the affine quotient readout}
```

by one of:

```math
\text{effective second-order scale exactness,}
\quad
\text{a potential-average kill theorem,}
\quad
\text{or a signed-to-positive transfer that turns signed descent into a positive stress theorem.}
```

Without that bridge, the retained far-corona packet remains outside the fixed
`(L-Flux)` theorem, so the retained tail input and the Part-row compactness
route stay open.

## Closure impact

This pass shrinks the active far-corona survivor one more step:

```math
\text{RetainedAffineQuotientSecondOrder.A}
\Longleftarrow
\text{RetainedB1SignedToAffineSecondOrderTransfer.A}.
```

It does not close `(LPAS)`, `(CTS)`, `(L-Flux)`, or the retained Part-row tail
input, and it does not support PDF finality.
