---
theorem_id: forward-gold-target1-energy-testform-display-executed-20260705
status: codex-gated-energy-display-accepted-with-majorant-correction
created: 2026-07-05
problem: navier-stokes
route: forward-gold / FROZEN FRONTIER F3 / P1 open item 3 - target-1's pending energy test-form display, executed
authorship: >-
  Derivation: Claude (Fable), 2026-07-05, completing the pending
  display of my own target-1 note per its accepted regate. Physical
  story Thomas Birnie: the ledger's columns sum to the ledger because
  the split is made in the one slot where addition is addition - and
  here is the slot, written out: one increment factor enters linearly
  against the mollifier's gradient, the other two ride whole. Splitting
  the linear passenger band by band changes nothing about the fare;
  the display shows the fare table and the one line of analysis that
  lets infinitely many bands board.
depends_on:
  - mpp-forward-gold-codex-target1-regate-20260705.md
  - mpp-forward-gold-target1-exact-channel-flux-identity-20260705.md
  - mpp-forward-gold-codex-f3-p1-routing-correction-gate-20260705.md
  - mpp-forward-gold-codex-energy-reconstruction-tail-proof-20260705.md
completion_truth: >-
  CODEX GATE SAME DATE:
  mpp-forward-gold-codex-target1-energy-testform-display-gate-20260705.
  Accepted with one correction: the time majorant should be justified
  by the energy-class interpolation
  \|u(t)\|_3^3 <= \|u(t)\|_2^{3/2}\|u(t)\|_6^{3/2}, not by global
  L^{10/3}_{t,x} alone implying global L^3 on R^3.
  Executes the two items the target-1 regate left pending on the
  accepted energy side: the actual Duchon-Robert test-form formula and
  the Littlewood-Paley convergence statement in the linear slot. Scope:
  the MPP finite-energy lane (u(t) in L^2 cap L^6 subset L^3(R^3) at
  a.e. t - global, so no localization caveat on the LP partial sums).
  (D1 - THE DISPLAYED DEFECT FORMULA) At fixed mollification scale
  eps, with phi_eps the declared spatial mollifier and delta u(xi) =
  u(x + xi) - u(x), the Duchon-Robert defect density is
    D_eps(u)(x,t) = (1/4) int grad phi_eps(xi) . delta u(xi)
    |delta u(xi)|^2 dxi,
  an L^1_loc function of (x,t) for the class (Holder 1/3 + 2/3 per
  xi; majorant displayed in D3). The mollified local energy balance
  carries D_eps to the defect in the eps -> 0 limit by Duchon-Robert's
  classical structure theorem - cited, not re-proved; the other
  balance terms (transport, pressure divergence, viscous) are not
  decomposed, per the accepted item-1 narrowing. (D2 - THE CHANNEL
  PARTITION IN THE LINEAR SLOT, DISPLAYED) The linear slot is the
  increment factor contracted with grad phi_eps; insert the channel
  resolution there and leave the quadratic factor |delta u|^2 whole:
    D_eps^c(u)(x,t) = (1/4) int grad phi_eps(xi) . delta(P_c u)(xi)
    |delta u(xi)|^2 dxi.
  Finite additivity is literal (the slot is linear); the identity
    sum_c D_eps^c = D_eps  (at every fixed eps)
  holds in the tested topology by D3. (D3 - THE ONE-LINE CONVERGENCE,
  DISPLAYED) For a test function psi with compact spacetime support:
    |<psi, D_eps - D_eps^{<=L}>| <= (1/4) int |grad phi_eps(xi)|
    [ int int_{supp psi} |delta(u - P_{<=L}u)| |delta u|^2 ] dxi
    <= 2 int |grad phi_eps(xi)| dxi x sup_t ||u - P_{<=L}u||_{L^3}
    x int_{I_psi} ||u(t)||^2_{L^3} dt -- Holder 1/3 + 2/3 in x,
  and the right side -> 0 as L -> infinity because (i) LP partial
  sums converge strongly in L^3(R^3) (1 < 3 < infinity), pointwise
  a.e. t, and (ii) the whole expression carries the fixed-eps
  majorant C_phi eps^{-1} ||u(t)||^3_{L^3}, integrable in time by
  energy-class interpolation and Holder in time, so dominated
  convergence applies in (xi, t). The cubic tested against
  psi is continuous in the linear slot under L^3 convergence: that is
  the requested one line, now displayed with its majorant. (WHAT THIS
  CLOSES) P1's open item 3 - the pending energy test-form display -
  subject to gate; with it the energy-side channel partition stands
  as a fully displayed exact identity at every fixed eps: zero
  commutator, zero remainder, constants 1/4 and C_phi displayed or
  named. (WHAT THIS DOES NOT TOUCH) The eps -> 0 defect limit is
  Duchon-Robert's cited theorem consumed by the paid envelope
  machinery; the helicity lane (curl-diagonal surface, multiplier
  open) is not consumed by P1 and not touched; P1's remaining opens
  are exactly two: the kappa_c^{1/2} gross-production core, and the
  E-f1 interface (SRP readout comparison kappabar_SRP <= kappabar
  off priced tails, or diffuse high-channel SRP TV domination); P2,
  F2/F4, F5 unchanged. Payment type: execution of an
  accepted-pending display - explicit formulas, one displayed
  convergence line with its majorant, exact exponents; about the
  actual solution class throughout. Filed is not cleared. No closure
  claimed.
---

# Target-1 energy display, executed: the fare table for the linear slot

## Codex gate, same date

Codex gate filed:
`mpp-forward-gold-codex-target1-energy-testform-display-gate-20260705`.

The fixed-\(\varepsilon\) Duchon-Robert formula, linear-slot channel
partition, and tested countable-channel convergence are accepted. The
majorant citation is corrected: use
\[
  \|u(t)\|_{L^3}^3
  \le
  \|u(t)\|_{L^2}^{3/2}\|u(t)\|_{L^6}^{3/2}
\]
and \(u\in L^\infty_tL^2_x\cap L^2_tL^6_x\), not global
\(L^{10/3}_{t,x}\) alone, to obtain time integrability of
\(\|u(t)\|_{L^3}^3\) on compact intervals. With that correction, P1's
target-1 energy test-form display is gated as paid. The helicity lane,
gross-production core, E-f1, P2, F2/F4, and F5 remain open.

## 1. D1: the defect formula at fixed scale

MPP finite-energy lane; at a.e. \(t\), \(u(t)\in L^2\cap L^6\subset
L^3(\mathbb R^3)\) - global, so LP partial sums need no localization
caveat. With \(\varphi_\varepsilon\) the declared mollifier and
\(\delta u(\xi)=u(x+\xi)-u(x)\):

\[
  D_\varepsilon(u)(x,t)
  =
  \frac14\int\nabla\varphi_\varepsilon(\xi)\cdot\delta u(\xi)\,
  |\delta u(\xi)|^2\,d\xi ,
\]

an \(L^1_{\rm loc}\) function of \((x,t)\) for the class. The
\(\varepsilon\to0\) passage of the mollified local energy balance to
the defect is Duchon-Robert's classical structure theorem - cited,
not re-proved. The other balance terms (transport, pressure
divergence, viscous) are not decomposed, per the accepted item-1
narrowing: the defect is carried by the cubic alone.

## 2. D2: the channel partition in the linear slot

The LINEAR SLOT is the increment factor contracted with
\(\nabla\varphi_\varepsilon\); the quadratic factor \(|\delta u|^2\)
rides whole. Insert the channel resolution in the slot:

\[
  D_\varepsilon^c(u)(x,t)
  =
  \frac14\int\nabla\varphi_\varepsilon(\xi)\cdot
  \delta(P_cu)(\xi)\,|\delta u(\xi)|^2\,d\xi .
\]

Finite additivity is literal - the slot is linear. The full identity

\[
  \sum_cD_\varepsilon^c=D_\varepsilon
  \qquad\text{at every fixed }\varepsilon
\]

holds in the tested topology by the display of D3. Zero commutator,
zero remainder: the partition is an identity of integrals.

## 3. D3: the one-line convergence, with its majorant

For a test function \(\psi\) with compact spacetime support and
\(I_\psi\) its time support:

\[
  \big|\langle\psi,\,D_\varepsilon-D^{\le L}_\varepsilon\rangle\big|
  \le
  \frac14\int|\nabla\varphi_\varepsilon(\xi)|
  \Big[\iint_{{\rm supp}\,\psi}
  |\delta(u-P_{\le L}u)|\,|\delta u|^2\Big]d\xi
\]

\[
  \le
  2\,\|\psi\|_\infty
  \int|\nabla\varphi_\varepsilon(\xi)|\,d\xi\;
  \int_{I_\psi}
  \|u(t)-P_{\le L}u(t)\|_{L^3}\,
  \|u(t)\|^2_{L^3}\,dt
\]

by Holder \(\tfrac13+\tfrac23\) in \(x\) (each increment contributes
two translates; the factor 2 per slot is displayed, powers collected).
The right side vanishes as \(L\to\infty\):

1. LP partial sums converge strongly in \(L^3(\mathbb R^3)\)
   (\(1<3<\infty\)), at a.e. \(t\);
2. the integrand carries the fixed-\(\varepsilon\) majorant
   \(C_\varphi\,\varepsilon^{-1}\,\|u(t)\|^3_{L^3}\), integrable in
   \(t\) on compact intervals by
   \(\|u(t)\|_{L^3}^3
   \le
   \|u(t)\|_{L^2}^{3/2}\|u(t)\|_{L^6}^{3/2}\) and Holder in time;

so dominated convergence applies in \((\xi,t)\). The cubic tested
against \(\psi\) is CONTINUOUS IN THE LINEAR SLOT under \(L^3\)
convergence - the requested one line, now displayed with its
majorant.

## 4. Register

CLOSES (subject to gate): P1's open item 3 - the pending energy
test-form display. The energy-side channel partition now stands
fully displayed: an exact identity at every fixed \(\varepsilon\),
zero commutator, constants \(\tfrac14\) and \(C_\varphi\) displayed
or named.

DOES NOT TOUCH: the \(\varepsilon\to0\) defect limit (Duchon-Robert,
cited, consumed by the paid envelope machinery); the helicity lane
(curl-diagonal surface, multiplier open - not P1 currency). P1's
remaining opens are exactly TWO: the \(\kappa_c^{1/2}\)
gross-production core, and the E-f1 interface (SRP readout comparison
\(\bar\kappa_{\rm SRP}\le\bar\kappa\) off priced tails, or diffuse
high-channel SRP total-variation domination). P2 (dial, carry,
\(dK^{\rm tax}\)), F2/F4, F5: unchanged.

Filed is not cleared. No closure claimed.
