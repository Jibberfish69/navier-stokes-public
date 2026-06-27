---
theorem_id: forward-gold-moving-selector-variation-carleson-direct-test-20260627
status: finite-menu-branch-closed-continuum-branch-reduces-to-selected-density-atom
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / selector-correct Hilbert lift
attacks_hinge:
  - MovingSelectorVariationCarleson.A
  - SelectorTieGapOrDriftCharge.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - TerminalSelectedDensityAtomExclusion.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-selection-tax-density-atom-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-selected-density-atom-exclusion-direct-test-20260626.md
---

# Moving-selector variation Carleson direct test

The selector-correct Hilbert lift splits the selected log-density increment into
a fixed-carrier part and a label-motion part:

```math
\Delta_Q\log\rho_{\rm sel}
=
\Delta_Q^{\rm fixed}\log\rho_{\rm sel}
+
\Delta_Q^{\rm lab}\log\rho_{\rm sel}.
\tag{MS.1}
```

The fixed-carrier term is the part available to the visible/silent/exchange
Hilbert packet. The label term is created when the selected carrier label,
cutoff, projection, rung, or packet changes.

This note tests whether the label term is already controlled by the installed
selector machinery.

## 1. Finite-menu branch

The finite-menu heredity theorem proves:

```math
\text{finite carrier menu}
+
\text{nonzero retained selected mass}
\Longrightarrow
\text{one fixed selected carrier on an infinite retained subtail}.
\tag{MS.2}
```

On that subtail,

```math
\Delta_Q^{\rm lab}\log\rho_{\rm sel}=0
\tag{MS.3}
```

except for legally declared cutoff/projection/rung defects. Thus the finite-menu
branch of `MovingSelectorVariationCarleson.A` is closed by pigeonhole and sparse
subtail extraction. The Hilbert lift may then be applied to the fixed carrier.

## 2. Paid label-defect branch

The selected-carrier tightness decomposition gives the exact escape coordinate:

```math
E_n^{\rm lab}(M)
=
\mu_n^A\big(\Omega\times(\mathfrak L\setminus\mathfrak L_M)\times\mathfrak R\big).
\tag{MS.4}
```

If label escape is dominated by an installed defect ledger,

```math
dK_{\rm lab}
\le
dK_{\rm sel}+dK_C^++dK_{4B}+dR_{\rm legal},
\tag{MS.5}
```

and the right side is summable on the retained tree, then

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q^{\rm lab}\log\rho_{\rm sel}|^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{MS.6}
```

This is not a new proof. It is the declared paid-defect case.

## 3. Unpaid continuum label motion

The remaining case is continuum moving selection with no finite subtail and no
summable label-defect ledger.

The retained-selection tax note already gives the countermodel shape. A nested
selected chain may follow a terminal density concentration:

```math
A(Q_k)\simeq 1,
\qquad
Q_{k+1}\subsetneq Q_k,
\qquad
\bigcap_kQ_k=\{a_\ast\},
\tag{MS.7}
```

with

```math
\mu_{\rm sel}(Q_k)\simeq r(Q_k)^\alpha.
\tag{MS.8}
```

This produces persistent selected mass at all retained scales without forcing a
separate selector-boundary tax from selection alone.

Thus the unpaid continuum branch is not solved by `MovingSelectorVariationCarleson.A`.
It is exactly the terminal selected-density atom / critical half-tail branch.

## 4. Relation to silent-source normal form

The silent-source normal form remains installed local support:

```math
\text{boundary-flat pressure-Hodge source}
\Longrightarrow
\text{unselected potential material}
\quad\text{or}\quad
\text{selected strain/exchange charge}.
\tag{MS.9}
```

That removes Schur-invisible selected pressure-Hodge sources from the local
parent-drop argument. It does not by itself control a selector that keeps
changing labels through a continuum of already-routed carriers.

Therefore the live moving-selector fork is:

```math
\boxed{
\begin{aligned}
&\text{finite menu / compact heredity}
\Rightarrow
\text{fixed carrier;}\\
&\text{paid label defect}
\Rightarrow
\text{Carleson label variation;}\\
&\text{unpaid continuum label motion}
\Rightarrow
\text{terminal selected-density atom / critical half-tail.}
\end{aligned}
}
\tag{MS.10}
```

## 5. Result

`MovingSelectorVariationCarleson.A` is proved only in the finite-menu or
already-paid label-defect cases. The general continuum-selector case is the same
missing strict selected-density gain:

```math
\int \rho_{\rm sel}^{1+\varepsilon}\,d\mathcal R
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0),
\qquad
\varepsilon>0,
\tag{MS.11}
```

or the equivalent selected-density martingale square-function / strict
good-lambda theorem.

The next nonduplicate target is therefore:

```text
StochasticExponentialSelectedDensityHilbertBMO.A
```

on a fixed retained carrier, plus either finite/compact selected-carrier
heredity or a genuine Carleson bound for the label-defect measure. Without that
label theorem, moving-selector variation collapses to the already identified
terminal density atom branch.
