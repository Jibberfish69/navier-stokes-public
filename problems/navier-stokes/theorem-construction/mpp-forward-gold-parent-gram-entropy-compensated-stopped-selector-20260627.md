---
theorem_id: forward-gold-parent-gram-entropy-compensated-stopped-selector-20260627
status: determinant-admission-proved-under-parent-gram-entropy-compensator
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - StoppedSelectorSelfNormalizedDeterminantAdmission.A
  - ParentStressGramDeterminantSelectedAdmission.A
  - SelectorCorrectLogAmplificationIdentity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-self-normalized-determinant-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-stress-gram-determinant-selected-novelty-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-log-amplification-identity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-score-identity-noncircular-installation-20260627.md
effect: >-
  Proves the determinant admission inequality once the stopped selector score
  is genuinely self-normalized by the parent stress Gram entropy compensator.
  It also proves that the currently installed finite stopped-score identity
  with only psi_Q >= 0 is insufficient: a linear score can turn square-summable
  tiny currents into infinite positive variation. The remaining source-graph
  obligation is to install the parent-Gram entropy compensator as part of the
  retained stopped selector, or route uncompensated score edges to reset, legal,
  stop, donor, or selector drift. Partial, not Gold closed.
---

# Parent-Gram entropy compensated stopped selector

The parent stress Gram determinant is the right novelty record. The local gap is
not the stress source. The gap is the selector normalization.

The installed stopped score identity is

\[
\Delta_Q\lambda_{\rm sel}
=
\ell_Q(\Delta_QJ^{new})-\psi_Q+e_Q,
\qquad
\psi_Q\ge0 .
\tag{1}
\]

This does not yet imply determinant admission. A bounded linear score can have
infinite positive variation along square-summable tiny currents.

## 1. The one-dimensional obstruction

On a fixed stopped score chamber, take scalar current increments \(x_m>0\) with

\[
\sum_m x_m^2<\infty,
\qquad
\sum_m x_m=\infty .
\tag{2}
\]

Let \(\ell(x)=x\), \(\psi_m=0\), and \(e_m=0\). Then `(1)` gives

\[
[\Delta_m\lambda_{\rm sel}]_+=x_m .
\tag{3}
\]

The raw square/Bessel ledger is finite, but the positive score variation is
infinite. So the implication

\[
\sum_m x_m^2<\infty
\quad\Rightarrow\quad
\sum_m [\Delta_m\lambda_{\rm sel}]_+<\infty
\tag{4}
\]

is false for a merely linear stopped score.

This is the exact scale-normalization failure. Finite raw stress-square does not
by itself stop a selector from promoting infinitely many tiny reads.

## 2. The required parent-Gram entropy compensator

Let \(\mathsf C_{Q^-}\) be the parent stress Gram record before the child \(Q\).
For a score functional \(\ell_Q\), define its parent-Gram dual size by

\[
\|\ell_Q\|_{\mathsf C_{Q^-}}^2
:=
\langle \ell_Q,\mathsf C_{Q^-}\ell_Q\rangle .
\tag{5}
\]

The retained stopped selector must be normalized as

\[
\Delta_Q\lambda_{\rm sel}
=
\ell_Q(Y_Q)
-
{1\over2}\|\ell_Q\|_{\mathsf C_{Q^-}}^2
-
\psi_Q^{stop}
+
e_Q,
\qquad
\psi_Q^{stop}\ge0 ,
\tag{6}
\]

where \(Y_Q\) is the parent-subtracted current increment before scalar positive
readout.

Equivalently, in the old notation, the entropy loss in `(1)` must satisfy

\[
\psi_Q
\ge
{1\over2}\|\ell_Q\|_{\mathsf C_{Q^-}}^2
-
r_Q^{legal/stop}.
\tag{7}
\]

Without `(7)`, the self-normalized determinant theorem is not installed.

## 3. Fenchel inequality gives the small-leverage bound

By the Hilbert-space Fenchel inequality associated to \(\mathsf C_{Q^-}\),

\[
\ell_Q(Y_Q)
-
{1\over2}\|\ell_Q\|_{\mathsf C_{Q^-}}^2
\le
{1\over2}
\langle Y_Q,\mathsf C_{Q^-}^{-1}Y_Q\rangle .
\tag{8}
\]

For the rank-one child current,

\[
Y_Q=\langle G,d_Q\rangle e_Q,
\qquad
\alpha_Q=|\langle G,d_Q\rangle|^2 ,
\tag{9}
\]

and therefore

\[
\langle Y_Q,\mathsf C_{Q^-}^{-1}Y_Q\rangle
=
\alpha_Q\langle e_Q,\mathsf C_{Q^-}^{-1}e_Q\rangle
=
\tau_Q .
\tag{10}
\]

Combining `(6)`--`(10)` gives

\[
[\Delta_Q\lambda_{\rm sel}]_+
\le
{1\over2}\tau_Q
+
[e_Q]_+ .
\tag{11}
\]

This is the exact small-leverage estimate.

## 4. Compact stopped score bounds the large-leverage side

On a fixed parent-known stopped score chamber, the score aperture and normalized
chart are compact. Thus the retained positive log increment has a fixed chamber
bound:

\[
[\Delta_Q\lambda_{\rm sel}]_+
\le
C_N
+
[e_Q]_+
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q .
\tag{12}
\]

Together `(11)` and `(12)` give

\[
[\Delta_Q\lambda_{\rm sel}]_+
\le
C_N\min\{1,\tau_Q\}
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q
+
[e_Q]_+ .
\tag{13}
\]

Since

\[
\min\{1,\tau_Q\}
\le
C\log(1+\tau_Q),
\tag{14}
\]

and

\[
\Delta\mathcal B_Q=\log(1+\tau_Q),
\tag{15}
\]

we obtain

\[
[\Delta_Q\lambda_{\rm sel}]_+
\le
C_N\Delta\mathcal B_Q
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q
+
[e_Q]_+ .
\tag{16}
\]

After the installed square-packable legal/error ledger absorbs \(e_Q\), `(16)`
is exactly `StoppedSelectorSelfNormalizedDeterminantAdmission.A`.

## 5. Consequence

The determinant telescope then gives

\[
\sum_{Q\subset P}[\Delta_Q\lambda_{\rm sel}]_+
\le
C_N
\sum_{Q\subset P}\Delta\mathcal B_Q
+
R_{\rm reset}(P)+R_{\rm legal}(P)+Stop(P)
<\infty .
\tag{17}
\]

Thus the Bellman/leverage chain closes after the parent-Gram entropy compensated
selector is installed.

## 6. Exact remaining source-graph obligation

The theorem is no longer a search for another stress reserve. The stress reserve
is the same Cauchy stress history of the same material packet. The required
source-graph clause is:

```text
ParentGramEntropyCompensatedStoppedSelector.A
```

Every retained stopped selector score is either represented in the
self-normalized form `(6)`, or the uncompensated part is routed to reset, legal,
stop, donor, or selector drift.

With that clause, the determinant admission theorem is proved by `(8)`--`(16)`.
Without that clause, the one-dimensional example `(2)`--`(3)` shows the local
admission theorem is false.

Partial, not Gold closed until the source graph installs this compensated
selector clause as the retained Gold selector definition.
