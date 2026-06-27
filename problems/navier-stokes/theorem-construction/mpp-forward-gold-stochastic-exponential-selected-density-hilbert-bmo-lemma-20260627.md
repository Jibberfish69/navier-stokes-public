---
theorem_id: forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627
status: martingale-step-proved-under-fixed-carrier-hilbert-and-paid-error-hypotheses
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / selector-correct Hilbert lift
attacks_hinge:
  - StochasticExponentialSelectedDensityHilbertBMO.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - SelectedDensityUniformIntegrability.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
---

# Stochastic-exponential selected-density Hilbert BMO lemma

This note isolates the martingale step from the PDE/selector step.

The theorem here is not the missing Navier--Stokes carrier construction.  It
says that once the selected density has a selector-correct fixed-carrier Hilbert
representation with paid label errors, the reverse-Holder gain follows by
standard martingale BMO.

## 1. Setup

Let \((\mathcal T,\mathcal R)\) be the retained material tree with root \(Q_0\).
Let \(f\ge0\) be the selected density relative to \(d\mathcal R\), and define
dyadic martingale averages

```math
f_Q={1\over\mathcal R(Q)}\int_Q f\,d\mathcal R.
\tag{SE.1}
```

For \(Q\ne Q_0\), set

```math
r_Q={f_Q\over f_{\operatorname{par}(Q)}}.
\tag{SE.2}
```

Assume the ratios are normalized on each parent:

```math
\mathbb E_{\mathcal R}(r_Q\mid\operatorname{par}(Q))=1.
\tag{SE.3}
```

Assume also the fixed-carrier Hilbert representation

```math
\log r_Q
=
\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\tag{SE.4}
```

where:

```math
\|\ell_Q\|\le L,
\tag{SE.5}
```

the Hilbert increments satisfy the tree BMO square-function bound

```math
\sup_{P\subseteq Q_0}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\|\Delta_QZ\|_{\mathcal H}^2\mathcal R(Q)
\le B^2,
\tag{SE.6}
```

and the paid error satisfies

```math
\sup_{P\subseteq Q_0}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}|e_Q|^2\mathcal R(Q)
\le E^2.
\tag{SE.7}
```

Finally assume the jump-size or exponential-integrability bound needed to
apply martingale John--Nirenberg/Kazamaki:

```math
|\ell_Q(\Delta_QZ)|+|e_Q|\le J
\quad\text{or an equivalent conditional subgaussian bound.}
\tag{SE.8}
```

The compensator \(\psi_Q\) is chosen so that `(SE.3)` holds.

## 2. BMO control of the log density

Let

```math
M_Q=\log f_Q-\log f_{Q_0}.
\tag{SE.9}
```

Along every branch,

```math
M_Q=\sum_{P:\ Q_0\supsetneq P\supseteq Q}
\left(\ell_P(\Delta_PZ)-\psi_P+e_P\right).
\tag{SE.10}
```

The compensator terms are controlled by the same square function.  Under
`(SE.8)`,

```math
0\le\psi_P\le C_J\left(|\ell_P(\Delta_PZ)|^2+|e_P|^2\right).
\tag{SE.11}
```

Therefore `(SE.6)` and `(SE.7)` give a martingale BMO bound:

```math
\|M\|_{\mathrm{BMO}(\mathcal T,\mathcal R)}
\le
C_{L,J}(B+E).
\tag{SE.12}
```

## 3. Reverse Holder

Martingale John--Nirenberg gives exponential integrability of \(M-M_P\) on
every tree interval \(P\).  Equivalently, the stochastic exponential

```math
f_Q=f_{Q_0}\exp(M_Q)
\tag{SE.13}
```

is a martingale \(A_\infty\) weight.  Hence there exists

```math
\varepsilon=\varepsilon(L,J,B,E)>0
\tag{SE.14}
```

such that for every \(P\subseteq Q_0\),

```math
\int_P f^{1+\varepsilon}\,d\mathcal R
\le
C_{L,J,B,E}
f_P^{1+\varepsilon}\mathcal R(P).
\tag{SE.15}
```

In normalized root form,

```math
\int_{Q_0}f^{1+\varepsilon}\,d\mathcal R
\le
C_{L,J,B,E}\,f_{Q_0}^{1+\varepsilon}\mathcal R(Q_0).
\tag{SE.16}
```

This is exactly the selected-density uniform-integrability gain needed to rule
out the critical half-tail.

## 4. Consequence for the Gold route

The probabilistic/martingale step is therefore not the hard PDE step.  It is
available once the following same-material hypotheses are produced:

```math
\boxed{
\text{fixed-carrier Hilbert increment square function}
}
\tag{SE.17}
```

and

```math
\boxed{
\text{paid moving-selector / label-error Carleson control}.
}
\tag{SE.18}
```

Under `(SE.17)`--`(SE.18)`,

```math
\rho_{\rm sel}\in L^{1+\varepsilon}(d\mathcal R)
\tag{SE.19}
```

and the strict good-lambda half-barrier is beaten.

## 5. Result

`StochasticExponentialSelectedDensityHilbertBMO.A` is discharged as a standard
martingale theorem under the fixed-carrier Hilbert and paid-error hypotheses.

The remaining Navier--Stokes work is not the martingale lemma.  It is:

```text
FixedCarrierVisibleSilentHilbertLift.A
```

plus

```text
FullPacketOrderLockOrSelectorVariationPayment.A
```

or a direct selected-density reverse-Holder / martingale square-function
estimate from the original same-material history.
