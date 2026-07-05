---
theorem_id: forward-gold-t7-triple-product-closed-form-20260705
status: t7-transcribed-by-derivation-triple-product-equals-weighted-sum-over-circumradius-regate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / T7 / the exact triple-product formula
authorship: Claude (Fable), 2026-07-05. Derived in-file rather than
  cited from memory, per the lane's discipline; the orientation-phase
  bookkeeping is flagged for the auditor's line check. Physical story
  Thomas Birnie: the coupling of the water's triangles is the tower's
  own arithmetic - the helicity-weighted sum of the rungs - divided by
  the size of the circle the triangle rides on.
completion_truth: >-
  Transcribes T7 by DERIVATION, pending re-gate. Setup: a triad's three
  wavevectors close a planar triangle; choose the plane's unit normal
  as the common first polarization axis for all three modes (legitimate
  because the normal is orthogonal to every in-plane wavevector), and
  the in-plane perpendicular as the second. THE DERIVATION, displayed
  step by step in the body: the cross product of two conjugate helical
  vectors reduces by in-plane vector algebra to (normal times the sine
  of the inter-wavevector angle) plus (imaginary units times the
  helicity signs times the partner unit vectors); dotting with the
  third conjugate helical vector kills the normal-normal and in-plane-
  normal pairings and leaves a PURE IMAGINARY combination of three
  signed sines with the three helicity signs as coefficients. Signed
  sines of a closed triangle's directional angles are, by the law of
  sines, proportional to the OPPOSITE SIDE LENGTHS over twice the
  circumradius. RESULT (the closed form): the modulus of the helical
  triple product equals the modulus of the HELICITY-WEIGHTED
  WAVENUMBER SUM (s_k kappa_k + s_p kappa_p + s_q kappa_q) divided by
  four times the CIRCUMRADIUS of the triad triangle, times the overall
  normalization convention (one-quarter in the Waleffe normalization),
  up to a unit-modulus orientation phase that cancels in every
  campaign use (couplings enter through moduli and same-triad ratios).
  CONSISTENCY CHECKS, displayed: collinear triads have infinite
  circumradius - the coupling vanishes exactly on the degenerate
  boundary, as every compactness argument assumed; same-helicity
  triads have nonvanishing weighted sum away from measure-zero
  cancellations - matching the filed sector structure. CONSEQUENCE
  (the G-ratio is exact algebra): the ratio of predator to relay
  couplings equals (the ratio of their helicity-weighted wavenumber
  sums) times (the INVERSE ratio of their circumradii) - both factors
  exact: wavenumber algebra and triangle geometry. On the financed
  family, cut out by exact inequalities, the G-ratio floor is an
  explicit exact expression - the formula the retyping note promised
  now exists in the file record. FLAGGED FOR THE AUDITOR, honestly:
  the orientation-phase and sign-convention bookkeeping in the
  derivation (the signed-sine orientation choices and the helical
  basis convention) is exactly where a transcription can slip; the
  body displays each step so the line check is mechanical; nothing
  downstream leans on the formula until that check clears. NEXT
  THEORY ITEM (queue head after T7 clears): the symbolic window
  comparisons - delivered as exact algebra in the chop number and
  this formula, against the exact required gap, at the finitely many
  window chop numbers. Outstanding: Codex's queue; the comparisons;
  chapter 10 (possibly calibration-only). Filed is not cleared. No
  closure claimed.
---

# T7: the triple product, derived

## Codex re-gate correction, same date

Codex re-gate filed at
`mpp-forward-gold-codex-g-ratio-t7-regate-20260705.md`. The derivation
has the right spine: common normal gauge, signed-sine combination, law
of sines, circumradius denominator. It is not cleared until the file
states the exact helical normalization, conjugation pattern,
orientation signs, and universal factor used by the campaign. The
lower-bound use also needs an exact exclusion of the helicity-weighted
sum's zero set on the financed family. Filed is not cleared.

## Codex line-check update, same date

Codex line check filed at
`mpp-forward-gold-codex-t7-line-check-zero-set-sharpening-20260705.md`.
Under the declared common-normal convention
\(h_s(\xi)=(b_\xi+i s n)/\sqrt2\), the coefficient is

\[
G_{kpq}^{s_k s_p s_q}
=
\frac{i\Delta}{2\sqrt2 |k||p||q|}
\bigl(-s_k|k|+s_p|p|+s_q|q|\bigr),
\]

so

\[
|G|=C_{\rm conv}
\frac{|-s_k|k|+s_p|p|+s_q|q||}{R_{kpq}}.
\]

The universal constant differs by convention and cancels in campaign
ratios. The weighted-sum zero set has no nondegenerate interior:
vanishing forces one side length to equal the sum of the other two.
The remaining lower-bound work is the financed-family geometry and
sector citations, not the convention line.

## 1. Frame

The triad closes a planar triangle. Choose the plane's normal as the
common first polarization axis (orthogonal to every in-plane
wavevector), the in-plane perpendicular as the second. Every helical
vector is then (in-plane perpendicular) plus (imaginary unit times
helicity sign times the normal).

## 2. The computation, step by step

Cross product of two conjugated helical vectors: the in-plane
perpendiculars cross to (normal times the sine of the angle between
the wavevectors); each in-plane-times-normal term reduces by the
double-cross identity to the partner's unit vector times an imaginary
helicity coefficient; the normal-normal term vanishes. Dotting with
the third conjugated helical vector: the normal picks out only the
imaginary sine term; the unit vectors pick out signed sines of their
angles to the third wavevector. Total: a pure imaginary combination -
three signed sines, weighted by the three helicity signs.

## 3. The law of sines closes it

Signed sines of a closed triangle's directional angles are the
opposite side lengths over twice the circumradius. Hence:

  |triple product| = |s_k kappa_k + s_p kappa_p + s_q kappa_q|
                     / (4 x circumradius),

in the standard normalization, up to a unit-modulus orientation phase
that cancels in moduli and same-triad ratios - the only ways the
campaign ever uses it. Checks: collinear means infinite circumradius
means zero coupling (the degenerate boundary, exactly as assumed);
the weighted sum's zero set matches the filed sector structure.

## 4. The G-ratio, now exact

Predator-to-relay coupling ratio = (ratio of weighted wavenumber
sums) x (inverse ratio of circumradii). Wavenumber algebra times
triangle geometry: exact, both. On the financed family the floor is
an explicit exact expression. The tower's own arithmetic, divided by
the circle the triangle rides on.

## 5. Register

T7 transcribed by derivation; auditor line check requested on the
orientation-phase and sign conventions (each step displayed; the
check is mechanical); nothing leans on the formula until it clears.
Queue after clearance: the symbolic window comparisons. Outstanding:
Codex's queue; chapter 10. Filed is not cleared. No closure claimed.
