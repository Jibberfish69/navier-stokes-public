# Finite Donor Boundary Coherence Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `FiniteDonorBoundaryCoherence.A(Phi_mode)` is not
installed by scalar signed saturation, finite donor telescoping, retained
signed partners, finite selected source mass, or lower-frame/Bessel readout.

The finite donor-chain problem is smaller than edgewise donor travel, but it is
not empty.  After internal donor cancellation, the only finite-chain residue is
a boundary endpoint term.  That endpoint term is paid only by endpoint
coherence, endpoint readout polarization, legal endpoint charge, or a
source-square / strict no-waste supplier.  Positive carrier polarization is a
separate same-ledger theorem and is not supplied by boundary coherence.

## 1. Target under test

After finite donor-chain telescoping, the finite donor forest contributes

```math
dE_m^{fin}
=
\sum_\alpha
a_\alpha
(\delta_{R_{\alpha,0}}-\delta_{D_{\alpha,L_\alpha}})
+dE_m^{legal}
+o_m(1),
\qquad
a_\alpha>0.
\tag{FDB.1}
```

For a finite mode test family

```math
\Phi_{mode}
=
\{\psi_1,\dots,\psi_{N_{mode}}\},
\qquad
|\psi_i|\le1,
\tag{FDB.2}
```

the boundary coherence target is

```math
\boxed{
\sup_{1\le i\le N_{mode}}
\left|
\sum_\alpha
a_\alpha
\bigl(
\psi_i(R_{\alpha,0})-\psi_i(D_{\alpha,L_\alpha})
\bigr)
\right|
\le
\operatorname{Legal}_{m}^{bdry}+o_m(1).
}
\tag{FDB.3}
```

This is `FiniteDonorBoundaryCoherence.A(Phi_mode)`.

## 2. Exact one-pair obstruction

Take one retained signed endpoint pair with amount `A>0` and no legal spill:

```math
dE_m^{fin}
=
A(\delta_R-\delta_D).
\tag{FDB.4}
```

Scalar signed saturation is exact:

```math
\langle dE_m^{fin},1\rangle
=
A-A
=0.
\tag{FDB.5}
```

The signed partner is retained.  The donor chain is finite.  There is no
entrance leaf and no infinite terminal Zeno branch.

Choose one legal mode test with

```math
\psi_i(R)=1,
\qquad
\psi_i(D)=-1.
\tag{FDB.6}
```

Then the boundary residue is

```math
\left|\langle dE_m^{fin},\psi_i\rangle\right|
=
2A.
\tag{FDB.7}
```

Thus finite donor telescoping plus retained signed partners does not imply
`FiniteDonorBoundaryCoherence.A(Phi_mode)`.

## 3. What proves the boundary term

The endpoint term is paid by any one of the following exact inputs.

### 3.1 Uniform endpoint agreement

If

```math
\max_{i,\alpha}
\left|
\psi_i(R_{\alpha,0})
-
\psi_i(D_{\alpha,L_\alpha})
\right|
\le
\epsilon_m,
\qquad
\epsilon_m\to0,
\tag{FDB.8}
```

and

```math
\sum_\alpha a_\alpha\le A_\ast,
\tag{FDB.9}
```

then

```math
\sup_i
\left|
\sum_\alpha
a_\alpha
\bigl(
\psi_i(R_{\alpha,0})-\psi_i(D_{\alpha,L_\alpha})
\bigr)
\right|
\le
A_\ast\epsilon_m.
\tag{FDB.10}
```

For smooth finite mode tests, `(FDB.8)` follows from same endpoint
normalization:

```math
\boxed{
\text{SameEndpointNormalization.A}
+
\text{FiniteModeUniformContinuity.A}
\Longrightarrow
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
}
\tag{FDB.11}
```

on retained finite endpoint pairs with bounded total endpoint mass.

### 3.2 Source-weighted endpoint charge

If the endpoint difference itself is charged,

```math
\sum_\alpha
a_\alpha
\max_i
\left|
\psi_i(R_{\alpha,0})
-
\psi_i(D_{\alpha,L_\alpha})
\right|
\le
\operatorname{Legal}_{m}^{end}+o_m(1),
\tag{FDB.12}
```

then `(FDB.3)` follows immediately.  This is the endpoint version of the
source-weighted gauge/action charge.

### 3.3 Endpoint readout polarization

If the retained endpoint pairs are polarized in the signed endpoint test class,

```math
\sum_\alpha
a_\alpha
\left[
\psi_i(R_{\alpha,0})
-
\psi_i(D_{\alpha,L_\alpha})
\right]
=
\operatorname{Legal}_{m,i}^{pol}+o_m(1)
\tag{FDB.13}
```

for each mode test, then `(FDB.3)` follows after summing over the finite mode
family.  This is endpoint readout polarization restricted to the finite mode
boundary endpoints.

This is not the positive selected carrier theorem.  A nonnegative packet test
can have zero signed endpoint readout while its selected positive receiver
carrier remains positive.  The carrier version is the separate
`SelectedPositivePolarSaturation.A` / `TerminalSignedSaturation.A` problem.

## 4. Existing inputs do not supply these charges

`EndpointModeMismatchCharge.A` already tested the co-transported endpoint route.
It showed that finite selected source mass, Bessel bounds, lower-frame response,
and normalized-adjoint propagation do not control source-weighted endpoint
mode mismatch.

`SameEndpointNormalization.A` already tested the gauge route.  It showed that
relative parabolic gauge convergence requires the four-lock package:

```math
\text{ScaleRatioLock.A}
+
\text{CenterLock.A}
+
\text{HeatTimeFaceLock.A}
+
\text{RotationGaugeLock.A}.
\tag{FDB.14}
```

Those locks are not installed by local suitable compactness alone.

`SourceResolvedNativeModeReadout.A` already tested the native positive-carrier
route.  It showed that a signed mode readout becomes a positive native carrier
only after mode-compatible same-shadow identity and sign-coherent selected
shadow localization.

Thus the boundary endpoint theorem is not a new independent supplier.  It is
the finite endpoint face of the already isolated source-side visibility and
no-drift locks.

## 5. Exact reduction

At current input strength, the exact finite-chain replacement is

```math
\boxed{
\begin{gathered}
\text{TerminalDonorGraphDecomposition.A}
+
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
\\
+
\text{NoFreeTerminalZenoDonorChain.A in }\Phi_{mode}
\Longrightarrow
\text{finite/infinite donor residue paid in }\Phi_{mode}.
\end{gathered}
}
\tag{FDB.15}
```

and

```math
\boxed{
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
\Leftarrow
\text{SameEndpointNormalization.A}
}
\tag{FDB.16}
```

with finite mode uniform continuity and bounded endpoint mass understood, or

```math
\boxed{
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
\Leftarrow
\text{EndpointReadoutPolarization.A}(\Phi_{mode})
}
\tag{FDB.17}
```

or

```math
\boxed{
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
\Leftarrow
\text{SourceWeightedEndpointCharge.A}(\Phi_{mode}).
}
\tag{FDB.18}
```

The inputs `(FDB.16)`--`(FDB.18)` are not installed by the current forward-gold
package.

## Verdict

Finite donor-chain telescoping removes the need for edge-by-edge donor travel,
but it leaves a real retained endpoint obstruction.  The finite endpoint can
still carry a nonzero mode residue while scalar signed saturation is exact.

So the finite-chain side is now exhausted to this exact fork:

```math
\boxed{
\text{same endpoint normalization / endpoint readout polarization /
source-weighted endpoint charge}
}
\tag{FDB.19}
```

or the stronger source-square / strict no-waste supplier that pays the endpoint
term directly.  The infinite-chain side remains
`NoFreeTerminalZenoDonorChain.A`.
