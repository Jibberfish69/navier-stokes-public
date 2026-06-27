---
theorem_id: forward-gold-extended-selector-carrier-root-bound-direct-test-20260627
status: extended-carrier-closes-finite-paid-label-branches-continuum-branch-equivalent-to-selected-density-carleson
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / selector-correct Hilbert lift
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - SelectorCarrierNondegeneracyOrPaidReselection.A
  - IndependentRootHilbertCarrierBound.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
---

# Extended selector-carrier root-bound direct test

This note tests whether the selector readout problem can be solved by enlarging
the Hilbert carrier to include the selector label itself.

The aim is to avoid the false unfrozen estimate

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm phys}}+e_Q,
\tag{1}
```

which fails when the selected carrier changes label while the physical Hilbert
state stays nearly fixed.

## 1. Extended carrier

Let \(\mathfrak L\) be the selector/cutoff/projection/rung label space and set

```math
\mathcal H_{\rm ext}(Q_0)
=
L^2\!\left(
\mathfrak L,\,
\mathcal H_{\rm vis}\oplus\mathcal H_{\rm sil}\oplus\mathcal H_{\rm ex};
d\nu_{Q_0}(\ell)
\right).
\tag{2}
```

For each label \(\ell\), let \(Z^\ell_Q\) be the signed original-history
visible/silent/exchange carrier for that label.  The selected readout becomes

```math
\rho_{\rm sel}(Q)
=
\sup_{\ell\in\mathfrak L_Q}
\rho^\ell(Q)
\tag{3}
```

or the corresponding order-locked selected branch.

If the selected label is fixed, `(1)` is replaced by the valid fixed-label
readout

```math
|\Delta_Q\log\rho^{\ell_\ast}|
\le
C\|\Delta_QZ^{\ell_\ast}\|_{\mathcal H_{\rm phys}}+e_Q.
\tag{4}
```

If the selected label changes, the extended carrier must pay the jump through
the label coordinate:

```math
|\Delta_Q\log\rho_{\rm sel}|^2
\mathcal R(Q)
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm ext}}^2
+C\,dK_{\rm lab}(Q)
+R_{\rm legal}(Q).
\tag{5}
```

Thus extended carrier geometry gives the correct readout only together with a
label-defect measure \(K_{\rm lab}\).

## 2. Finite menu closes

If

```math
\mathfrak L=\{\ell_1,\dots,\ell_M\},
\qquad M<\infty,
\tag{6}
```

then

```math
\mathcal H_{\rm ext}
=
\bigoplus_{j=1}^M
\mathcal H_{\rm phys}^{\ell_j}.
\tag{7}
```

The finite-menu heredity theorem gives a retained infinite subtail on which
one label \(\ell_\ast\) carries the selected mass.  On that subtail

```math
dK_{\rm lab}=0
\tag{8}
```

except for already declared legal/collar/projection defects.  The fixed-label
Hilbert martingale theorem applies.

So the finite-menu branch of `SelectorCarrierNondegeneracyOrPaidReselection.A`
is closed by existing selected-carrier heredity.

## 3. Already-paid compact/visible label motion closes

If the label motion has an installed finite-variation or tightness ledger,

```math
\sum_{Q\subseteq P}dK_{\rm lab}(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{9}
```

then `(5)` gives the required paid-error estimate for the stochastic-exponential
martingale consumer:

```math
\sum_{Q\subseteq P}|e_Q^{lab}|^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{10}
```

This is the compact retained selector branch.  It is a real closure only when
the label ledger is independently finite.

## 4. Continuum supremum branch does not close

For a continuum label family, the extended carrier root norm is

```math
\|Z_P\|_{\mathcal H_{\rm ext}}^2
=
\int_{\mathfrak L}
\|Z_P^\ell\|_{\mathcal H_{\rm phys}}^2\,d\nu_P(\ell).
\tag{11}
```

The selected supremum may follow a sequence of labels
\(\ell_1,\ell_2,\ldots\) such that each fixed label carries only finitely many
selected visits, while the moving selected label carries unit action at every
generation:

```math
A(Q_k,\ell_k)\simeq1,
\qquad
\ell_k\ne\ell_j\ (k\ne j).
\tag{12}
```

Then the selected log-density tail is controlled only if the label measure and
root norm satisfy the Carleson packing bound

```math
\sum_{Q\subseteq P}
\|\Delta_QZ\|_{\mathcal H_{\rm ext}}^2\mathcal R(Q)
+\sum_{Q\subseteq P}dK_{\rm lab}(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{13}
```

But `(13)` is exactly the selected-density Carleson theorem in extended-label
coordinates unless \(d\nu_P\) and \(K_{\rm lab}\) are independently controlled
by original-history data.

So the extended carrier is a correct representation, not a proof, for continuum
selectors.

## 5. No hidden improvement from order-lock

The order-lock gap satisfies

```math
0\le f_{ol}\le C f+f_{\rm legal}.
\tag{14}
```

Therefore a reverse-Holder or square-function theorem for \(f\) pays the
order-lock branch.  The converse does not hold: an unpaid order-lock pulse is
the same critical half-tail in full-packet admission variables.  Thus order-lock
does not supply an independent root bound for `(13)`.

## 6. Result

The extended selector carrier proves the readout theorem in exactly the
finite-label and already-paid-label branches:

```math
\text{finite menu or paid label motion}
\Longrightarrow
\text{selector readout is Hilbert/BMO compatible}.
\tag{15}
```

The continuum moving-selector branch remains equivalent to the selected-density
Carleson/root-reserve theorem:

```math
\sup_{P}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\left(
\|\Delta_QZ\|_{\mathcal H_{\rm ext}}^2
+dK_{\rm lab}(Q)
\right)\mathcal R(Q)
<\infty.
\tag{16}
```

Thus the combined current edge is:

```text
finite/paid selector branches are closed;
continuum selector motion needs an original-history label/root Carleson bound;
without that bound, the critical selected half-tail survives in extended-carrier coordinates.
```
