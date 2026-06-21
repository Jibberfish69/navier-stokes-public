# RetainedFaceAmplitudeGain.A direct retained-face attempt

## Status

Failed direct discharge.  The retained-face amplitude strategy isolates a useful structure: `Pack_Q` controls accumulated linear strain along same-fluid paths, and `Part_{N,Q}` organizes the pressure/viscous participation ledger.  However, these two faces do not supply the high-frequency tail modulus needed to propagate scale-critical packet amplitude smallness to terminal windows.  The missing estimate is exactly the Field/high-tail side of the source wall.

## Target

For a terminal packet `P` of radius

```math
r_P=2^{-j_P},
```

define the dimensionless packet amplitude

```math
a_P(t):=\frac{\|U_P(t)\|_2}{\nu r_P^{1/2}}.
```

The proposed target was

```math
\boxed{
\textbf{RetainedFaceAmplitudeGain.A:}\qquad
Pack_Q+Part_{N,Q}\Longrightarrow
\sup_{P:j_P\ge N}a_P(t)\to0.
}
```

This estimate implies the conditional cycle estimate and then the local positive
source Carleson bound.

## Step 1. Pack controls the linear strain gain

The packet equation after following the low same-fluid flow is

```math
(\partial_t+u_{\le j-C}\cdot\nabla-\nu\Delta)U_P
=
-S_{\le j-C}U_P+R_P.
```

The dangerous linear term is the low/intermediate strain `S_{\le j-C}`.  Define the gain

```math
G_P(t)=\exp\left(\int_{t_0}^{t}\lambda_{\max}^+(S_{\le j-C}(X_P(s),s))\,ds\right),
```

and the gauged amplitude

```math
\widetilde a_P(t)=G_P(t)^{-1}a_P(t).
```

`Pack_Q` gives a finite deformation gauge

```math
\Gamma_{pack,Q}(t)=\sup_{a\in A_Q(t)}\max\{|F(a,t)|,|F(a,t)^{-1}|\}<\infty.
```

Since the deformation solves `\dot F=(\nabla u)(X(a,t),t)F`, this gives a finite bound on accumulated positive strain along retained same-fluid paths.  Thus the linear gain is controlled by the Pack face.

## Step 2. Part routes pressure/viscous participation but not high tails

`Part_{N,Q}` records the participation law through finite depth `N`:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

This is enough to keep pressure/viscous participation terms in the legal ledger at that finite depth.  It does not by itself impose a high-frequency modulus on `u` or on all dyadic packet amplitudes beyond the threshold.

## Step 3. Envelope inequality test

The desired first-crossing proof needs an inequality of the form

```math
D_s^+\widetilde A_N
\le
-c\widetilde A_N+C_Q\widetilde A_N^2+o_N(1),
\qquad
\widetilde A_N:=\sup_{P:j_P\ge N}\widetilde a_P.
```

The damping term comes from heat.  The finite linear gain is controlled by `Pack_Q`.  The remaining issue is the nonlinear remainder `R_P`.  The needed estimate is

```math
\|R_P\|_{packet}\le C_Q\widetilde A_N^2+o_N(1)+Loss_{legal}.
```

This estimate is not a consequence of `Pack_Q+Part_{N,Q}`.  It is a high-high tail/source estimate.  In source-wall language it is a form of

```math
LocalPositiveSourceCarleson.A
```

or, equivalently, a Field/high-tail modulus on the selected terminal packet family.

## Step 4. Why preterminal smoothness is insufficient

For any fixed `t_0<T_*`, classical smoothness gives high-frequency decay at
`t_0`.  A first-crossing argument propagates that decay after the envelope
inequality above is known.  The proof of that envelope inequality requires
control of terminal high-high transfer on shrinking windows.  That is exactly
the source wall.

Thus preterminal smoothness supplies the starting value, while the missing source-wall estimate is needed to prevent first terminal crossing.

## Step 5. Conditional theorem that does hold

A valid conditional statement is:

```math
Pack_Q+Part_{N,Q}+FieldTail_N(Q)
\Longrightarrow RetainedFaceAmplitudeGain.A,
```

where `FieldTail_N(Q)` is any high-tail modulus strong enough to imply

```math
\|R_P\|_{packet}\le C_Q\widetilde A_N^2+o_N(1)+Loss_{legal}.
```

But `FieldTail_N(Q)` is exactly the Field/readout side needed for CM membership and smoothness.  Using it to prove source-wall closure does not create an independent route.

## Conclusion

The direct implication

```math
Pack_Q+Part_{N,Q}\Longrightarrow RetainedFaceAmplitudeGain.A
```

is not proved from the current installed inputs.  `Pack_Q` controls linear strain gain, and `Part_{N,Q}` controls finite-depth participation, while the missing high-frequency packet amplitude decay is a Field/source-wall estimate.

Therefore the retained-face amplitude strategy refines the location of the obstruction:

```math
\boxed{
\text{the source wall is the failure to propagate high-tail amplitude smallness without a Field modulus.}
}
```

## Remaining primitive

A new route must prove one of the following without assuming Field/high-tail regularity:

```math
ScaleCriticalTreeCarleson.A,
\qquad
LocalPositiveSourceCarleson.A,
\qquad
TerminalAmplitudeGain.A,
\qquad
\text{or a rigid terminal-Zeno theorem.}
```
