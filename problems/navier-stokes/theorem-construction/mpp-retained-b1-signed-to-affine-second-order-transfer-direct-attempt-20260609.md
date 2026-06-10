# MPP Retained B1 Signed-To-Affine Second-Order Transfer Direct Attempt

## Status

`RetainedB1SignedToAffineSecondOrderTransfer.A` is not proved by the current
theorem stack.

This pass attacks the first bridge obligation between the gap-kernel survivor
family and the affine-quotient survivor family.

## Target

The bridge asks for a theorem that collapses the signed gap-kernel route onto
the affine quotient readout.

The far-gap kernel has logarithmic form

```math
(\mathcal K_L f)(s)
:=
\int_{s+L}^{s_1}e^{s-\rho}f(\rho)\,d\rho,
```

and satisfies

```math
(\partial_s-1)\mathcal K_Lf=-e^{-L}f(\cdot+L).
```

So the gap-kernel route is naturally first-order in log scale.

The affine quotient functional is

```math
\mathcal C_\theta[Y]
:=
\int_J\theta(\sigma)Y(\sigma)\,d\sigma,
\qquad
\theta''=0.
```

It kills exact second derivatives, not first derivatives.

The bridge target is therefore:

```math
\text{first-order gap-kernel structure}
\quad\Longrightarrow\quad
\text{effective second-order affine quotient kill}.
```

## Checked conditional theorem

The installed bridge attempt proves the right conditional shape.

If the signed source has the refined representation

```math
Y=(\partial_s-1)\partial_sG+R,
```

with boundary terms killed on the active one-sided scale interval, then

```math
\mathcal C_\theta[Y]=\mathcal C_\theta[R].
```

This is the correct collapse mechanism.

## Direct attempt

The currently installed signed descent gives only

```math
Y=\partial_s\Psi+S^{spill}+E.
```

Pairing with the affine kernel gives

```math
\mathcal C_\theta[Y]
=
-\theta(s_0)\Psi(s_0)
+
\frac1{|J|}\int_J\Psi(\sigma)\,d\sigma
+
\mathcal C_\theta[S^{spill}]
+
\mathcal C_\theta[E].
```

The scale-average of `\Psi` remains. That term is the precise obstruction:
first-order signed descent kills the constant part of the quotient but leaves
the affine mode alive.

The direct bridge also faces the positive-source gap. The signed descent is a
statement about the signed commutator channel. The far-corona `FCTS` / affine
quotient route uses the positivized stress source `\widetilde Z`, so the
bridge must either transfer the signed potential-average theorem to the
positive stress source or prove second-order exactness directly for
`\widetilde Z`.

No installed theorem supplies either step.

## Verdict

`RetainedB1SignedToAffineSecondOrderTransfer.A` is reduced, not proved.

The exact next target is:

```math
\textbf{RetainedPotentialAverageKillAndPositiveTransfer.A}.
```

It has two linked obligations:

```math
\int_0^T H_w(t)
\left\|
\frac1{|J|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N},
```

and

```math
\text{transfer the signed potential-average control to the positive stress
source }\widetilde Z\text{, or replace it by direct second-order exactness for }
\widetilde Z.
```

Equivalently, a proof may bypass the potential-average term by proving the
second-order representation

```math
Y=(\partial_s-1)\partial_sG+R
```

with a barrier-sized `R`, plus the signed-to-positive transfer needed by the
retained far-corona packet.

## Closure impact

This pass shrinks B1 to its first live scalar obstruction:

```math
\text{RetainedB1SignedToAffineSecondOrderTransfer.A}
\Longleftarrow
\text{RetainedPotentialAverageKillAndPositiveTransfer.A}.
```

It does not close the affine quotient route, LPAS/CTS, `(L-Flux)`, or the
retained Part-row tail input. PDF finality remains false.
