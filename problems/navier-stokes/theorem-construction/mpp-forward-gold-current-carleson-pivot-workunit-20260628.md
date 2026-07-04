---
theorem_id: forward-gold-current-carleson-pivot-workunit-20260628
status: superseded-predictability-is-causality-gate-source-payment-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - PositiveCriticalTransferBound.A
  - NativeBirthChargePacking.A
  - StoppedRoutedParticipationCurrentCarleson.A
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
completion_truth: partial-not-mpp-closed
---

# Current Carleson pivot workunit

The proof cannot keep asking Schur, raw Bessel, or compactness to pay first
birth.  The next real workunit is the current Carleson theorem for the
parent-subtracted endpoint innovation.

The endpoint source current note already identifies the exact noncircular
quantity:

\[
\sup_{P'\subseteq P}
{1\over\mathcal R(P')}
\sum_{e\subset P'}
\int H_{e^-}
\|D_{e,EP}^{sil}+D_{e,EP}^{vis}+D_{e,EP}^{ex}\|^2\,dt
\le
C_N(u_0)+{R_{\rm legal}(P')\over\mathcal R(P')}.
\tag{1}
\]

The right side must come from original material-history charges:

\[
\int_{\operatorname{Hist}(P')}
w\Bigl(
|\Pi_{\rm sel}^{ex}[D_t,\mathcal L_A]w|^2
+|\operatorname{covector}|^2
+|\operatorname{frame}|^2
+|\operatorname{turnstile}|^2
+|\partial_\sigma Z|^2
\Bigr)
+R_{\rm legal}(P').
\tag{2}
\]

Thus the active theorem is:

\[
\texttt{OriginalHistoryParentPredictableFreshInnovationCarleson.A}
\tag{3}
\]

not another endpoint-mass, Schur, or compactness label.

## 1. Physical statement

After parent-predictable transport is subtracted, a retained first endpoint seed
can only come from a changed physical innovation in the same material packet:
commutator motion, covector rotation, frame motion, turnstile exchange, or scale
derivative of the original source.  If all of these projected charges vanish,
the endpoint read is inherited record, not fresh birth.

So `(1)` says: fresh first endpoint seeds are exactly fresh projected
material-innovation charges, and those charges square-pack in original history.

## 2. Formal split

For each retained edge \(e\), decompose the parent-subtracted endpoint current as

\[
D_{e,EP}^{new}
=
\Pi_{e}^{fresh}
\Bigl(
D_{e}^{comm}
+D_{e}^{cov}
+D_{e}^{frame}
+D_{e}^{turn}
+D_{e}^{scale}
\Bigr)
+D_{e}^{legal}
+D_{e}^{stop}.
\tag{4}
\]

The pieces are:

\[
D_{e}^{comm}:=[D_t,\mathcal L_A]w,\quad
D_{e}^{cov}:=\operatorname{covector},\quad
D_{e}^{frame}:=\operatorname{frame},\quad
D_{e}^{turn}:=\operatorname{turnstile},\quad
D_{e}^{scale}:=\partial_\sigma Z .
\tag{5}
\]

The zero-charge branch is already rigid:

\[
\Pi_{e}^{fresh}
\Bigl(
D_{e}^{comm}+D_{e}^{cov}+D_{e}^{frame}+D_{e}^{turn}+D_{e}^{scale}
\Bigr)=0
\quad\Rightarrow\quad
D_{e,EP}^{new}=0
\quad\text{mod inherited/paid terms}.
\tag{6}
\]

Therefore the only live estimate is the square-packing of the nonzero projected
charges.

## 3. Orthogonality that is actually available

Along one stopped laminar chain, the projection \(\Pi_e^{fresh}\) removes the
closed span of previously spent parent-known charges.  Hence

\[
\sum_{e\in \mathcal C}
\|\Pi_{e}^{fresh}F_e\|_{\mathcal H_{orig}}^2
\le
\|F_{\mathcal C}\|_{\mathcal H_{orig}}^2
+R_{\rm legal}(\mathcal C)
\tag{7}
\]

for a fixed original-history charge field \(F\).  Across siblings, the retained
atlas gives bounded overlap.  Thus the raw fresh innovation packing is not the
problem.

The problem is the selected weight \(H_{e^-}\).  The needed weighted form is

\[
\sum_{e\subset P'}
\int H_{e^-}
\|\Pi_{e}^{fresh}F_e(t)\|_2^2\,dt
\le
C_N
\int_{\operatorname{Hist}(P')}w|F|^2
+R_{\rm legal}(P').
\tag{8}
\]

Equation `(8)` is exactly the weighted no-free-upcascade/native-birth theorem in
current language.

## 4. What to prove next

The 2026-06-28 working conclusion below is superseded by the July 4 physical
roof. It correctly identified the before-readout causality gate, but it
promoted that gate to the source theorem.

The proof must still show that \(H_{e^-}\) is parent-predictable with respect to
the same stopped filtration that defines \(\Pi_e^{fresh}\), up to paid reset
and stop. That prevents the selected tail from choosing the weight after seeing
the fresh increment. Under that causality hypothesis, the consumer estimate has
the martingale/Bessel shape:

\[
\sum_{e\subset P'}
\mathbb E_{e^-}
\| \Pi_e^{fresh}F_e\|^2
\le
C\|F\|^2 .
\tag{9}
\]

The obstruction is exact: if \(H_{e^-}\) is chosen after seeing
\(\Pi_e^{fresh}F_e\), `(9)` is false and the selector has smuggled the future
selected tail into the weight.  If \(H_{e^-}\) is genuinely parent-predictable,
the weighted fresh innovations square-pack.

Thus the next theorem is:

\[
\texttt{StoppedSelectorPredictableWeight.A}
\tag{10}
\]

Statement: after paid reset, reselection, stop, legal, parent leverage, and
inherited record are removed, the active weight \(H_{e^-}\) used to retain a
first endpoint seed is measurable from the parent material history before the
fresh projected charge \(\Pi_e^{fresh}F_e\) is read.

That statement is necessary, but it is not sufficient. Parent predictability
alone still allows a predictable half-tail:

\[
\sum_\ell\|D_\ell\|^2<\infty,
\qquad
\sum_\ell H_{\ell^-}\|D_\ell\|^2=\infty.
\tag{11}
\]

So the live source theorem is stronger:

\[
\texttt{OriginalHistoryParentPredictableFreshInnovationCarleson.A}
/
\texttt{SelectedGeneratorStorageCoercivity.A}.
\tag{12}
\]

It must prove that the same original packet generates the active weight and
fresh innovation currency from commutator, covector, frame, turnstile, exchange,
scale derivative, or equivalent same-material source motion before readout.
Then the Bessel consumer can spend that currency; Bessel cannot create it.

## 5. Current truth

This is not closed here. The workunit is corrected as follows:

```text
StoppedSelectorPredictableWeight.A
= before-readout causality support.

OriginalHistoryParentPredictableFreshInnovationCarleson.A
/ SelectedGeneratorStorageCoercivity.A
= proof-sized source theorem.
```

The physical story is one retained parent packet. The fresh endpoint seed is a
parent-subtracted material innovation. Predictability says the parent did not
choose the weight from the future seed. The remaining Gold theorem says the
parent's own pressure-viscosity-incompressibility-velocity history supplies the
weighted selected-critical currency that pays all such fresh seeds.
