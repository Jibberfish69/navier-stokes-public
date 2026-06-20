# Soft-Lobe Test-Class Residue Evacuation Proof

Date: 2026-06-20

## Status

Relative proof complete.  The bounded packet-test route opened by the soft-lobe
compatibility note adds no new obstruction beyond the finite mode test class.

For the finite soft-lobe test class, finite donor-forest residues are controlled
by `FiniteDonorBoundaryCoherence.A(Phi_mode)`, and infinite donor-chain
endpoint residues are controlled by `ZenoTestEndpointCoherence.A` for the
original finite mode tests.  Both implications use only the fixed Lipschitz
constant of the soft lobe functions.

The proof is relative to the existing donor-graph decomposition and endpoint
mass bound.  It does not prove those donor-chain hypotheses, and it does not
prove the boundary coherence or endpoint-coherence inputs.

## 1. Soft-lobe test class

Let the finite mode packet values be

```math
\psi(P):=(\psi_1(P),\dots,\psi_{N_{mode}}(P)).
\tag{STC.1}
```

For each `i`, orientation `sigma in {+,-}`, and fixed `0<kappa<1`, define

```math
f_{i,\sigma,\kappa}(z)
:=
\chi_\kappa((\sigma z_i)_+)(\sigma z_i)_+,
\qquad
z\in[-1,1]^{N_{mode}}.
\tag{STC.2}
```

The soft-lobe packet test is

```math
\zeta_{i,\sigma}^{\kappa}(P)
:=
f_{i,\sigma,\kappa}(\psi(P)).
\tag{STC.3}
```

With the cutoff convention from the soft-lobe notes,

```math
\|f_{i,\sigma,\kappa}\|_{L^\infty([-1,1]^{N_{mode}})}\le1,
\qquad
\operatorname{Lip}(f_{i,\sigma,\kappa})\le C_\kappa.
\tag{STC.4}
```

Let

```math
\Phi_{\rm soft}^{\kappa}
:=
\{\zeta_{i,\sigma}^{\kappa}:
i=1,\dots,N_{mode},\ \sigma\in\{+,-\}\}.
\tag{STC.5}
```

This class is finite.

## 2. Target

Let

```math
dE_m
=
q_m\,d\mu_m-\Sigma_m\xi_m\,d\mu_m
\tag{STC.6}
```

be the same-shadow residual after the scalar projected residue identity has
been reduced to the selected donor graph.  The bounded packet-function target is

```math
\sup_{\zeta\in\Phi_{\rm soft}^{\kappa}}
|\langle dE_m,\zeta\rangle|
\le
\operatorname{Legal}_{m,\kappa}+o_m(1).
\tag{STC.7}
```

This is `TestClassSameShadowResidueEvacuation.A(Phi_soft^kappa)`.

## 3. Finite donor forest

Use the finite donor-forest boundary telescoping identity

```math
dE_m^{fin}
=
\sum_\alpha
a_\alpha(\delta_{R_{\alpha,0}}-\delta_{D_{\alpha,L_\alpha}})
+dE_m^{legal}
+o_m(1),
\qquad
a_\alpha>0.
\tag{STC.8}
```

For any soft-lobe test `zeta=f(psi)`,

```math
|\zeta(R_{\alpha,0})-\zeta(D_{\alpha,L_\alpha})|
=
|f(\psi(R_{\alpha,0}))-f(\psi(D_{\alpha,L_\alpha}))|
\le
C_\kappa
|\psi(R_{\alpha,0})-\psi(D_{\alpha,L_\alpha})|_{\ell^\infty}.
\tag{STC.9}
```

Thus

```math
\begin{aligned}
|\langle dE_m^{fin},\zeta\rangle|
&\le
\sum_\alpha
a_\alpha|\zeta(R_{\alpha,0})-\zeta(D_{\alpha,L_\alpha})|
+\operatorname{Legal}_{m,\zeta}
+o_m(1)
\\
&\le
C_\kappa
\sum_\alpha
a_\alpha
|\psi(R_{\alpha,0})-\psi(D_{\alpha,L_\alpha})|_{\ell^\infty}
+\operatorname{Legal}_{m,\zeta}
+o_m(1).
\end{aligned}
\tag{STC.10}
```

Since the mode family is finite,

```math
|\psi(R_{\alpha,0})-\psi(D_{\alpha,L_\alpha})|_{\ell^\infty}
\le
\sum_{i=1}^{N_{mode}}
|\psi_i(R_{\alpha,0})-\psi_i(D_{\alpha,L_\alpha})|.
\tag{STC.11}
```

Therefore `FiniteDonorBoundaryCoherence.A(Phi_mode)` gives

```math
\sup_{\zeta\in\Phi_{\rm soft}^{\kappa}}
|\langle dE_m^{fin},\zeta\rangle|
\le
C_{\kappa,mode}\operatorname{Legal}_m^{bdry}+o_m(1).
\tag{STC.12}
```

So the soft-lobe finite-forest residue has no separate boundary-coherence
theorem.

## 4. Infinite Zeno donor chains

For an infinite donor-chain endpoint residual, the telescoping note gives

```math
\langle dE_N,\zeta\rangle
=
\sum_\alpha a_\alpha
\bigl(\zeta(R_{\alpha,0})-\zeta(D_{\alpha,N})\bigr)
+\operatorname{Legal}_{N,\zeta}.
\tag{STC.13}
```

Assume the endpoint mass bound

```math
\sum_\alpha a_\alpha\le A_\ast.
\tag{STC.14}
```

and finite-mode endpoint coherence

```math
\max_i
|\psi_i(R_{\alpha,0})-\psi_i(D_{\alpha,N})|
\le
\omega_N,
\qquad
\omega_N\to0,
\tag{STC.15}
```

uniformly over active chain components.  Then for every
`\zeta=f(\psi)` in `Phi_soft^kappa`,

```math
|\zeta(R_{\alpha,0})-\zeta(D_{\alpha,N})|
\le
C_\kappa\omega_N.
\tag{STC.16}
```

Hence

```math
\sup_{\zeta\in\Phi_{\rm soft}^{\kappa}}
|\langle dE_N,\zeta\rangle|
\le
A_\ast C_\kappa\omega_N
+\operatorname{Legal}_{N,\kappa}
+o_N(1).
\tag{STC.17}
```

Thus

```math
\boxed{
\text{ZenoTestEndpointCoherence.A}(\Phi_{mode})
\Longrightarrow
\text{ZenoTestEndpointCoherence.A}(\Phi_{\rm soft}^{\kappa}).
}
\tag{STC.18}
```

The soft-lobe test class does not require a new endpoint-coherence theorem.

## 5. Conditional theorem

Combining the finite-pair and endpoint calculations gives:

```math
\boxed{
\begin{gathered}
\text{TerminalDonorGraphDecomposition.A}
+
\text{UniformZenoChainMassBound.A}
\\
+
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
+
\text{ZenoTestEndpointCoherence.A}(\Phi_{mode})
\\
\Longrightarrow
\text{TestClassSameShadowResidueEvacuation.A}
(\Phi_{\rm soft}^{\kappa}).
\end{gathered}
}
\tag{STC.19}
```

Equivalently, the bounded soft-lobe packet-function residue identity is
supplied by the original finite-mode boundary and endpoint-coherence controls,
with fixed constants depending on `kappa` and `N_mode`.

## 6. Remaining unpaid inputs

The theorem above does not install the following inputs:

```math
\text{TerminalDonorGraphDecomposition.A},
\qquad
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode}),
\qquad
\text{ZenoTestEndpointCoherence.A}(\Phi_{mode}).
\tag{STC.20}
```

The first is the conditional donor-graph reduction after legal exits, retained
partners, ASAC pair-weight defects, finite donor trees, and entrance leaves are
paid.

The second reduces to retained endpoint coherence or selected polar saturation
in the finite mode test class, hence to same endpoint normalization, a direct
source-weighted endpoint charge, strict no-waste product domination, or
lower-frame/no-null source visibility plus selected polar saturation.

The third reduces to fixed-gauge same endpoint tangent: no drift, selector
stability, and same endpoint normalization; failure routes to the source-active
or source-null endpoint split.

## Verdict

The bounded packet-function route for soft lobes is discharged as a
relative theorem.  Soft lobe tests are Lipschitz functions of the finite mode
values, so they inherit finite-boundary and Zeno-endpoint control from the original
finite mode test class.

This removes `BoundedPacketFunctionTestEnrichedResidueIdentity.A` as an
independent lobe-specific wall.  The live walls remain:

```math
\boxed{
\text{FiniteDonorBoundaryCoherence.A}(\Phi_{mode})
+\text{ZenoTestEndpointCoherence.A}(\Phi_{mode})
+\text{TerminalDonorGraphDecomposition.A}.
}
\tag{STC.21}
```

Those are exactly the same-shadow product/no-waste wall and the no-drift
endpoint/profile-production wall already isolated elsewhere in the gold route.
