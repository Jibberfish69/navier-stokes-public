# Projected packet pressure discharge `PPP.A`

## Status

Claimed local discharge on the torus/global projected branch.

## Statement

Let `\mathbb P` be the Leray projector. Define the principal packet equation on the solenoidal subspace by

```math
L^P_{j,k}w_j=R^P_{j,k},
```

where

```math
L^P_{j,k}
=
\partial_t+
\mathbb P(b_k\cdot\nabla\cdot)-\nu\Delta-
\mathbb P(A_k\cdot).
```

Choose terminal packet data in the projected class:

```math
\psi_T(t_+)=\mathbb P\phi_T^{term},
\qquad
\nabla\cdot\psi_T(t_+)=0.
```

Let `\psi_T` solve the adjoint projected equation on the solenoidal subspace. Then the pressure gradient has zero adjoint pairing:

```math
\int_{I_T}\langle \nabla p,\psi_T\rangle dt=0.
```

All costs produced by the projected formulation are residual commutators satisfying

```math
\|R^{proj}\|_{L_t^2H_x^{-1}}^2
\le C(\varepsilon_M^2+c_M^2)
\int_I\sum_{q>N}D_q(t)dt+o_N(1)+Loss_{cut}^{legal}.
```

Consequently `ProjectedPacketPressure.A` holds and the pressure term in `WAR.A` is discharged on the projected packet branch.

## Proof

The Leray projector is the orthogonal projection from `L^2` vector fields onto divergence-free vector fields. On the periodic branch,

```math
\langle \nabla p,v\rangle_{L^2}=0
```

for every divergence-free `v`. Since `L^P_{j,k}` is defined on the projected subspace, its adjoint evolution preserves the solenoidal test class. Therefore every adjoint packet satisfies

```math
\nabla\cdot\psi_T(t)=0
```

for all `t\in I_T`, and pressure cancels directly:

```math
\int \nabla p\cdot\psi_T dx
=-\int p\nabla\cdot\psi_T dx=0.
```

The remaining issue is the cost of replacing the raw localized equation by its projected form. The relevant terms are

```math
[\mathbb P,b_k\cdot\nabla]w_j,
\qquad
[\mathbb P,A_k]w_j,
\qquad
[\mathbb P,\eta_T]w_j.
```

Since `\mathbb P` is an order-zero Fourier multiplier, the Coifman-Meyer commutator theorem gives, for high-frequency `w_j` and low-frequency coefficients with gap `k<j-M`,

```math
\|[\mathbb P,b_k\cdot\nabla]w_j\|_2
\le c_M 2^j\|w_j\|_2,
```

where `c_M\to0`. Thus

```math
\|[\mathbb P,b_k\cdot\nabla]w_j\|_{H^{-1}}
\le Cc_M\|w_j\|_2.
```

After summing over the high-frequency shells and using the dissipation normalization, this gives a contribution bounded by

```math
Cc_M^2\int_I\sum_{q>N}D_q(t)dt.
```

For the strain multiplier,

```math
[\mathbb P,A_k]w_j
```

has the same multiplier structure. The central value of `A_k` is already in the principal strain gauge; the remaining coefficient-good part is controlled by

```math
r_T\|\nabla A_k\|_{L^\infty(Q_T^*)}.
```

Thus its `L_t^2H^{-1}` contribution is bounded by

```math
C\varepsilon_M^2\int_I\sum_{q>N}D_q(t)dt.
```

The cutoff-projection commutator `[\mathbb P,\eta_T]w_j` is a Calderon-Zygmund commutator supported on the packet collar. Its kernel has the same heat-scale derivative cost as the ordinary cutoff commutators. Hence it belongs to `Loss_{cut}^{legal}` and is absorbed in the cutoff residual ledger.

Combining these estimates gives the stated bound on `R^{proj}`. Since the actual pressure gradient pairs to zero against projected adjoint packets, all pressure cost is now accounted for inside already legal residual classes.

## Consequence

The pressure hypothesis in `WAR.A` is removed on the torus projected-packet branch:

```math
PPP.A+WAR.A\Longrightarrow WeightedAdjRes.A
```

with pressure entering only through legal projection commutator residuals.

## Boundary

This discharge uses the projected formulation as the final packet convention. A
local nonprojected pressure-normalized proof requires a separate carrier theorem.
