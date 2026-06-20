# Soft-Lobe Product Charge Reentry

Date: 2026-06-20

## Status

Direct reentry test complete.  Soft packet lobe weights improve the lobe-shadow
residue identity by removing the hard threshold boundary-crossing term.  They
do not improve the heat-scale source-weighted product estimate.

After the soft replacement, the finite donor-edge defect is exactly a fixed
threshold constant times the same mode-travel product already isolated in
`SameShadowSourceWeightedGaugeTravelCharge.A`.

## 1. Input from the soft lobe identity

For a fixed threshold `0<kappa<1`, the soft oriented lobe weight

```math
\zeta_{i,\sigma}^{\kappa}(P)
=
\chi_\kappa((\psi_{i,\sigma}(P))_+)(\psi_{i,\sigma}(P))_+
\tag{SLP.1}
```

satisfies

```math
\left|
\zeta_{i,\sigma}^{\kappa}(R)
-\zeta_{i,\sigma}^{\kappa}(D)
\right|
\le
C_\kappa
\left|
\psi_i(R)-\psi_i(D)
\right|,
\qquad
C_\kappa\le C(1+\kappa^{-1}).
\tag{SLP.2}
```

Therefore, for retained donor edges with signed amount `a_e`,

```math
\sum_{e=(D,R)}
a_e
\left|
\zeta_{i,\sigma}^{\kappa}(R)
-\zeta_{i,\sigma}^{\kappa}(D)
\right|
\le
C_\kappa
\sum_{e=(D,R)}
a_e
\left|\psi_i(R)-\psi_i(D)\right|.
\tag{SLP.3}
```

The right side is the original mode-donor edge coherence target.

## 2. Conversion to gauge travel

If the mode atlas is Lipschitz in the selected gauge distance,

```math
\left|\psi_i(R)-\psi_i(D)\right|
\le
L_i d_e,
\tag{SLP.4}
```

then `(SLP.3)` gives

```math
\sum_{e=(D,R)}
a_e
\left|
\zeta_{i,\sigma}^{\kappa}(R)
-\zeta_{i,\sigma}^{\kappa}(D)
\right|
\le
C_\kappa L_i
\sum_{e=(D,R)}a_e d_e.
\tag{SLP.5}
```

Thus the soft-lobe finite-edge charge is paid by

```math
\boxed{
\text{SameShadowSourceWeightedGaugeTravelCharge.A}.
}
\tag{SLP.6}
```

No extra lobe-boundary theorem remains in the soft formulation.

## 3. Heat-scale product obstruction is unchanged

The terminal product model survives the soft lobe replacement.  On a terminal
interval `J_h` of length `h`, set

```math
Q_h(s)=h^{-1}{\bf 1}_{J_h}(s),
\qquad
v_h(s)={\bf 1}_{J_h}(s).
\tag{SLP.7}
```

Then

```math
\int_{J_h}Q_h(s)\,ds=1,
\qquad
\int_{J_h}v_h(s)^2\,ds=h,
\tag{SLP.8}
```

but

```math
\int_{J_h}Q_h(s)v_h(s)\,ds=1.
\tag{SLP.9}
```

Multiplication by the fixed soft-lobe constant gives

```math
C_\kappa
\int_{J_h}Q_h(s)v_h(s)\,ds
=C_\kappa.
\tag{SLP.10}
```

Thus soft lobe weights do not turn finite source mass plus finite or vanishing
quadratic travel into product control.

The missing source-square term is still

```math
\int_{J_h}Q_h(s)^2\,ds=h^{-1}.
\tag{SLP.11}
```

## 4. Threshold bookkeeping

The soft lobe positive-source comparison reads all selected positive source
outside the common `2kappa` nodal family:

```math
\mu_m^+(P)
\le
(2\kappa)^{-1}
\sum_{i,\sigma}
\left[q_m(P)\zeta_{i,\sigma}^{\kappa}(P)\right]_+
+
{\bf 1}_{F_{m,all,0}^{2\kappa}}(P)\mu_m^+(P).
\tag{SLP.12}
```

So the threshold cost is exact:

1. choosing fixed `kappa` keeps `C_kappa` finite;
2. the common `2kappa` nodal source must be paid separately;
3. taking `kappa` to zero increases the edge constant and cannot replace
   `CommonModeNodalSourceEvacuation.A`.

## 5. Exact reduction

The soft lobe route reduces to

```math
\boxed{
\text{TestEnrichedMinimalChainResidueIdentity.A for soft lobe tests}
+\text{SameShadowSourceWeightedGaugeTravelCharge.A}
+\text{NoFreeTerminalZenoDonorChain.A}
+\text{CommonModeNodalSourceEvacuation.A}.
}
\tag{SLP.13}
```

The product charge then reduces exactly as before:

```math
\boxed{
\text{SameShadowSourceWeightedGaugeTravelCharge.A}
\Leftarrow
\text{SameShadowSourceSquareReserve.A}
+\text{SameShadowUnweightedModulationAction.A},
}
\tag{SLP.14}
```

or to a strict no-waste Lyapunov theorem with product-action domination, or to
lower-frame/no-null source visibility plus selected polar saturation.

## Verdict

Soft lobe weights are the correct lobe formulation because they remove the
hard-threshold donor-boundary artifact.  They do not solve the terminal
heat-scale product problem.  The finite-edge lobe branch now lands exactly on:

```math
\boxed{
\text{same-shadow source-square/unweighted-action}
\quad\text{or}\quad
\text{strict no-waste product domination}
\quad\text{or}\quad
\text{selected no-null polar saturation}.
}
\tag{SLP.15}
```

Those are the same unweighted terminal critical-action currencies already
isolated by the participation, source-square, and no-waste exhaustion notes.
