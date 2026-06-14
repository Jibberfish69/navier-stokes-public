# SquareReserveEvolution.A Direct Attempt: First-Pulse Gate And Replacement Target

## Status

Claimed status: failed direct proof from installed inputs.

The direct Row 6 target remains the source-wall square reserve

```math
\mathcal R_N(I)
:=
\int_I
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
```

The attempted theorem was the dynamic parent-or-charge inequality

```math
SquareReserveEvolution.A:
\qquad
\mathcal R_N(W)
\le
Charge_N(W)+(1-\delta)\mathcal R_N(Past(W))+Loss_{legal}+o_N(1).
```

The charge required by this theorem must be payable from already installed tail-energy and legal-loss ledgers, for example

```math
Charge_N(W)
\le C_{charge}
\int_W\sum_{\ell>N}D_\ell(t)\,dt+Loss_{legal}+o_N(1).
```

## Direct first-pulse test

Set

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
S_N(t):=\sum_{k>N}2^kT_k(t)^2.
```

Take a scalar one-shell pulse on a terminal window `I_L`:

```math
D_L(t)=A_Lh_L^{-1}{\bf 1}_{I_L}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne L),
```

with `L>N+4` and `|I_L|=h_L`.

Then

```math
\int_{I_L}\sum_{\ell>N}D_\ell(t)\,dt=A_L.
```

For every `N<k<L-4`, the donor tail satisfies

```math
T_k(t)=A_Lh_L^{-1}{\bf 1}_{I_L}(t).
```

Thus

```math
\mathcal R_N(I_L)
=
\int_{I_L}
\sum_{k=N+1}^{L-5}2^kA_L^2h_L^{-2}\,dt
=
2^L A_L^2h_L^{-1}.
```

Choose

```math
A_L\to0,
\qquad
h_L:=2^LA_L^2.
```

Then the installed first-moment tail charge tends to zero while the square reserve stays order one:

```math
\int_{I_L}\sum_{\ell>N}D_\ell(t)\,dt=A_L\to0,
\qquad
\mathcal R_N(I_L)=1.
```

On an earliest pulse window, the past-reserve term contributes zero:

```math
\mathcal R_N(Past(I_L))=0.
```

Therefore the desired inequality cannot be derived from the installed first-moment tail charge plus past-reserve damping. A successful proof needs an additional theorem that prices the instantaneous square amplitude of the donor tail.

## Energy-potential attempt

Let

```math
G_k(t):=\sum_{\ell>k+4}e_\ell(t),
\qquad
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
```

The tail energy identity gives

```math
{d\over dt}G_k(t)+T_k(t)=\mathcal N_k(t),
```

where `\mathcal N_k` is the nonlinear tail flux/source term.

Pairing this identity with `2^kT_k` gives

```math
2^kT_k(t)^2
=
-2^kT_k(t){d\over dt}G_k(t)
+2^kT_k(t)\mathcal N_k(t).
```

The first term becomes a useful boundary term only after an integration-by-parts step that controls the time variation of `T_k`. The required missing object is a theorem-grade estimate for

```math
\int_W2^kG_k(t){d\over dt}T_k(t)\,dt
```

or an equivalent signed balance that converts the expression into legal boundary, charge, and tail errors.

The second term requires a square-level nonlinear tail estimate:

```math
\int_W2^kT_k(t)\mathcal N_k(t)\,dt
\le
\theta\int_W2^kT_k(t)^2dt+Charge_N(W)+Loss_{legal}.
```

This is exactly the missing dynamic law for the square reserve. It is stronger than the installed first-moment energy ledger.

## Result of the attempt

The direct attempt reaches the following exact gate:

```math
\boxed{
\text{SquareReserveEvolution.A requires a square-amplitude charge identity for }T_k.
}
```

The present installed inputs provide

```math
\int\sum_{\ell>N}D_\ell(t)\,dt\to0,
```

and the parent-square embedding reduces diffuse parentage to `\mathcal R_N`. They provide no dynamic estimate for the creation of `\mathcal R_N` on a first terminal pulse.

## Replacement theorem target

The next theorem-bearing subclaim is:

```math
SquareChargeEvolution.A:
\quad
\exists\,\Phi_N(t)\ge0\text{ and }Ch_N(t)\text{ such that}
```

```math
{d\over dt}\Phi_N(t)+c\sum_{k>N}2^kT_k(t)^2
\le
Ch_N(t)+Loss_N(t),
```

with

```math
\int Ch_N(t)\,dt=o_N(1),
\qquad
\int Loss_N(t)\,dt\le Loss_{legal}+o_N(1),
```

and with terminal/initial boundary control

```math
\Phi_N(T)-\Phi_N(0)\ge -Loss_{legal}-o_N(1).
```

This theorem would imply `ScaleCriticalTreeCarleson.A` by integration over `[0,T_*]`.

A signed-current version is also viable:

```math
TerminalSquareSkewLocalization.A
+WeightedLiftedSquareDefectLegal.A
+OffSaturationSquareBoundaryPricing.A
\Longrightarrow
SquareChargeEvolution.A.
```

## Consequence for the six-row table

Rows 1--5 remain blocked at the exact source-wall square-amplitude gate. The next executable frontier item is the replacement target `SquareChargeEvolution.A`, or a Zeno rigidity theorem proving that failure of this square charge law forces a bounded rigid terminal pulse class with zero residue.
