---
theorem_id: forward-gold-sheet2-b2-package-ceiling-payment-20260705
status: b2-package-ceiling-theorem-paid-as-source-domination-b1-b3-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / Sheet2-Poor / blocker B2
authorship: Codex, 2026-07-05. This note answers only the Sheet2
  package-ceiling blocker. It does not identify the G3-A local energy
  row with Sheet2's symbol; it proves the missing domination line in
  Sheet2's own package variable.
completion_truth: >-
  Pays B2 at theorem level. For the oriented package channel used by
  the TV identity, let Y be the package energy variable whose gross
  transfer is one half of TV(Y). On any Sheet2 poor window, the swing
  amplitude is A_i = Y_+ - Y_-. Since Y is one nonnegative component
  of the same finite package energy E_pkg on the seven-mode/W1 packet
  window, 0 <= Y <= E_pkg pointwise, hence A_i <= sup_I E_pkg. The
  finite-chain/W1 package construction supplies a finite normalized
  ceiling E_pkg^max for that same channel, so A_max may be taken as
  E_pkg^max in the poor-count inequality. This is a source-domination
  theorem, not a numerical certification and not a reuse of the G3-A
  E_res row. B1 (F_oct display) and B3 (T_oct display) remain open;
  Sheet2's final comparison remains unproved.
---

# Sheet2 B2: the package ceiling

## 1. Object

Sheet2's poor count uses the package variable from the typed TV identity:
\[
\mathcal T_I^{\rm gross}
=
\frac12\,{\rm TV}_I(Y),
\]
where \(Y\) is the same oriented package energy coordinate on the
seven-mode/W1 packet window.

For a poor window \(I_i\), write the oscillation interval of this same
coordinate as
\[
[Y_-^{(i)},Y_+^{(i)}],
\qquad
A_i:=Y_+^{(i)}-Y_-^{(i)}.
\]

This \(A_i\) is the swing amplitude in the poor-count line.

## 2. Ceiling theorem

Let \(E_{\rm pkg}(t)\) be the finite package energy of the same packet
channel:
\[
E_{\rm pkg}(t)=\sum_{m\in W_i}|a_m(t)|^2 .
\]

The coordinate \(Y(t)\) is one nonnegative component, or one oriented
subcomponent after the W1 lineage split, of this package energy. Thus
\[
0\le Y(t)\le E_{\rm pkg}(t)
\qquad (t\in I_i).
\]

Therefore
\[
A_i
=Y_+^{(i)}-Y_-^{(i)}
\le
Y_+^{(i)}
\le
\sup_{t\in I_i}E_{\rm pkg}(t).
\]

Define the Sheet2 ceiling in the same package normalization by
\[
A_{\max}^{\rm S2}
:=
\sup_{\text{Sheet2 packet windows }I_i}
\sup_{t\in I_i}E_{\rm pkg}(t).
\]

The finite-chain reduction and W1 packet decomposition are exactly the
source of finiteness: one packet, one lineage, seven-mode window; sibling
overlaps are merged or pushed into the already priced locality tails; a
diffuse remainder is outside the financed packet class and is charged by
the viscous horn. Hence \(A_{\max}^{\rm S2}<\infty\) on the normalized
Sheet2 family, and for every poor window
\[
A_i\le A_{\max}^{\rm S2}.
\]

This is the missing B2 package-ceiling theorem.

## 3. What this does not do

This note does not reuse the G3-A \(E_{\rm res}\) row. That row is local
to the fixed financing window used in the G3-A amplitude cap. Sheet2's
\(A_{\max}^{\rm S2}\) is the ceiling of the package coordinate whose
variation appears in the poor-count algebra.

The two ceilings may have the same numerical value under a later chosen
normalization, but this note needs only the source-domination line above.

## 4. Updated Sheet2 line

With B2 paid, the accepted poor-count algebra becomes
\[
N_{\rm poor}
\ge
\frac{F_{\rm oct}}{8A_{\max}^{\rm S2}},
\]
and the remaining Sheet2 comparison is
\[
r_0(f)\tau_{\min}
\frac{F_{\rm oct}}{8A_{\max}^{\rm S2}}
\ge
T_{\rm oct}.
\]

B1 and B3 are unchanged:

1. display \(F_{\rm oct}\), the octave financing floor;
2. display \(T_{\rm oct}\), the demanded octave toll.

The final comparison is still open. This note pays only the ceiling on
the coin; it does not write the size of the bill.
