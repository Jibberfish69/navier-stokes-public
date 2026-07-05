---
theorem_id: forward-gold-angle-pincer-two-moduli-setup-and-crude-gap-20260704
status: calculation-setup-with-crude-thresholds-gap-exhibited-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / AnglePincer.A / two-moduli calculation
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - AnglePincer.A (AP.3 no-gap statement)
  - RSF.4
authorship: >-
  Claude (Fable), 2026-07-04. Setup and crude-constant evaluation of the
  pincer thresholds; gap exhibited honestly; refinement routes named.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rsf4-angle-pincer-coherence-backscatter-dichotomy-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-self-financing-dyadic-countermodel-alignment-tax-reduction-20260704.md
completion_truth: >-
  This note sets up the two-moduli calculation in one shared angle variable on
  one transported packet window and evaluates both thresholds at crude
  constants. Result: the pincer does NOT close at crude constants. The
  depletion jaw fires for angular spread below a small threshold; the
  backscatter jaw, if cancellation is priced quadratically (pointwise cosine
  deficit), needs order-one spread to beat the per-octave doubling. An
  intermediate band survives both jaws. The note records the gap as a
  computable interval and names the two refinement routes: temporal
  sign-decorrelation upgrading the backscatter tax from quadratic to
  square-root type (the strongest lever, martingale-flavored, transport-borne),
  and marginal-band rigidity (gap-dwellers must sit at the same marginal angle
  configuration at every rung of an infinite ladder; such configurations feed
  the profile/rigidity route or Silver CM entry). No closure claimed.
---

# Angle pincer: two-moduli setup and the crude gap

## 1. Window, frame, and the shared angle variable

Fix a transported parent window: the parabolic cylinder around a packet
trajectory, in the co-moving (Galilean-shifted) frame, selected from the
recombined full packet before positive-part extraction (order-lock
convention). All objects below live on this one window.

At rung \(\ell\) (dyadic scale inside the window), define:

\[
\tau_\ell := (u\otimes u)_\ell - u_\ell\otimes u_\ell,
\qquad
\alpha_\ell(x,t) := \frac{-\,\tau_\ell : \nabla u_\ell}{|\tau_\ell|\,|\nabla u_\ell|}
\in [-1,1].
\tag{TM.1}
\]

\(\alpha_\ell\) is the gate angle: flux is
\(\Pi_\ell = |\tau_\ell||\nabla u_\ell|\,\alpha_\ell\). Auxiliary direction
field: \(\xi_\ell := \omega_\ell/|\omega_\ell|\) (resolved vorticity
direction). Lemma target (L1, unproved here): a coherence modulus for
\(\xi_\ell\) on the window controls the spatial oscillation of
\(\alpha_\ell\), so both jaws speak the same variable.

## 2. Jaw A — depletion threshold

Constantin–Fefferman-type depletion in window form: if the direction field
is \(\varepsilon\)-coherent on the high-activity region of the window, the
stretching efficiency is depleted,

\[
\langle (\omega\cdot\nabla)u,\omega\rangle_{\text{window}}
\;\le\;
C_A\,\varepsilon \cdot \|\omega\|^2_{\text{window-normalized}},
\tag{TM.2}
\]

and the relay multiplier at the active rung drops from \(2\) to
\(2\,C_A\varepsilon\). The depletion jaw fires when

\[
\varepsilon \;<\; \varepsilon_{\mathrm{dep}} := \frac{1}{2C_A}.
\tag{TM.3}
\]

\(C_A\) is the constant in the window-localized CF inequality; crude
evaluations put \(\varepsilon_{\mathrm{dep}}\) small (an explicit small
angle, not order one).

## 3. Jaw B — backscatter threshold at crude (pointwise) pricing

If the angle field has spread \(\varepsilon'\) on the window (incoherence
modulus: \(\alpha_\ell\) varies by \(\varepsilon'\) across the window), the
pointwise cosine deficit prices the lost flux quadratically:

\[
\overline{\alpha_\ell} \;\le\; 1 - c_B\,(\varepsilon')^2,
\qquad
\text{tax}_k \;\ge\; c_B\,(\varepsilon')^2 .
\tag{TM.4}
\]

Beating the per-octave critical-mass doubling needs
\(\text{tax} > \tfrac12\), hence

\[
\varepsilon' \;>\; \varepsilon_{\mathrm{bs}} := \sqrt{\tfrac{1}{2c_B}}
\;=\; O(1).
\tag{TM.5}
\]

## 4. The crude gap, stated honestly

\[
\boxed{\;\varepsilon_{\mathrm{dep}} \ll \varepsilon_{\mathrm{bs}}:\quad
\text{the band } \varepsilon \in [\varepsilon_{\mathrm{dep}},\,
\varepsilon_{\mathrm{bs}}] \text{ survives both jaws at crude constants.}\;}
\tag{TM.6}
\]

An enemy holding intermediate angular spread — too disordered for depletion,
too ordered for quadratic backscatter — defeats the crude pincer. The
calculation is set up precisely so this band is a computable interval once
\(C_A, c_B\) are evaluated on the window; the burden is closing it.

## 5. Refinement route R1 — temporal sign-decorrelation (the strong lever)

The quadratic pricing `(TM.4)` treats the angle spread as a static cosine
deficit. But the window is parabolic: the flux is a time integral over many
sub-turnover fluctuations, and transport (sweeping) re-randomizes the
contraction sign within the window. If the signed contraction decorrelates
in time with \(N\) effective sign-independent subintervals per residence,
the integrated flux suffers square-root cancellation,

\[
\int \Pi_\ell \;\lesssim\; \frac{1}{\sqrt{N}}\int |\tau_\ell||\nabla u_\ell|,
\tag{TM.7}
\]

martingale-type, not cosine-type — upgrading the tax from
\((\varepsilon')^2\) to \(1 - N^{-1/2}\), which beats the doubling once
\(N \ge 4\). The refinement burden: prove sweeping gives temporal
sign-independence (a decorrelation-rate lower bound in the co-moving frame)
whenever the spatial spread exceeds \(\varepsilon_{\mathrm{dep}}\). This is
transport-borne, predictable-weight compatible, and in the
destroyed-by-averaging class — the correct ingredient signature. It is also
exactly where the earlier martingale translation of the Gold route stops
being analogy and becomes mechanism: the filtration is packet history, the
increments are per-turnover flux contributions, and the decorrelation claim
is the martingale property itself.

## 6. Refinement route R2 — marginal-band rigidity

A gap-dweller must hold the SAME marginal angle configuration at every rung
of an infinite ladder in a shrinking window: spread exactly in
\([\varepsilon_{\mathrm{dep}}, \varepsilon_{\mathrm{bs}}]\), forever.
Normalize by the strict-storage compactness (`TFE2748B.3`): the limit object
is an NS-constrained cascade profile with frozen intermediate alignment
statistics — a strongly self-organized object. Rigidity targets: exact
self-similarity is excluded (known theorems); quasi-periodic relays feed the
angle-lock finite-rotation collapse; whatever survives is a concrete
terminal record for Silver CM entry. Nothing in the gap escapes
classification; the question is whether anything in the gap exists.

## 7. Classification

Setup installed: shared angle variable, both jaws, both thresholds, on one
order-locked window; L1 named as the linking lemma target.

Checked (crude): the pincer does not close at pointwise pricing — the gap
`(TM.6)` is real and must be closed by refinement, not denied.

Strict reduction: closing the gap reduces to R1 (temporal sign-decorrelation
lower bound under sweeping — the strongest and most concrete new target this
line has produced) or R2 (marginal-band rigidity via the existing
compactness/profile machinery).

Open: R1's decorrelation-rate bound; L1; explicit window constants
\(C_A, c_B\).
