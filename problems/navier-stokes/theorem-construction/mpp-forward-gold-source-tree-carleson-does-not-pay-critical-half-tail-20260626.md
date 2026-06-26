---
theorem_id: forward-gold-source-tree-carleson-does-not-pay-critical-half-tail-20260626
status: audit-installed-stale-source-tree-carleson-surfaces-do-not-pay-gold-critical-half-tail
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-ratio-tail-obstruction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-scalecritical-tree-carleson-direct-irreducibility-note-20260505.md
  - problems/navier-stokes/theorem-construction/mcp-scalecriticaltreecarleson-a-activesquarereserve-a-scalecriticaltreecarleson-a-d3e81f46a9.md
  - problems/navier-stokes/theorem-construction/mpp-source-reserve-birth-charge-direct-attempt-20260525.md
  - problems/navier-stokes/theorem-construction/mpp-basac-source-ancestry-compactness-direct-attempt-20260517.md
---

# Source Tree Carleson Does Not Pay the Critical Gold Half Tail

The current Gold edge is not the old source-wall Carleson theorem.  It is the
same-material high-ratio tail:

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}},
```

with dyadic bands

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le 2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
```

The installed raw ledgers give only

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
```

The Gold full-action statement is the first ratio moment:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The critical half-tail obstruction is

```math
\nu_\ell\sim {2^{-\ell}\over \ell+1}.
```

It has finite zeroth moment and infinite first ratio moment.

## 1. What the old source-tree theorem controls

The old direct source-wall theorem is

```math
ScaleCriticalTreeCarleson.A:
\quad
\int_I\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le o_N(1)+Loss_{legal}.
```

The May direct irreducibility note records this as an uninstalled scalar
source reserve.  The failed active-square note gives the scalar obstruction:
finite first-moment source tail does not imply the active-square reserve.

Thus the source-tree theorem is not an installed input.  It is itself a hard
positive-forward supplier theorem.

## 2. Why it does not automatically pay the Gold tail

Even if a source-tree expression is written next to the Gold half-tail, it does
not control the Gold action until one proves a same-carrier comparison:

```math
\sum_{\ell\ge0}2^\ell d\nu_\ell
\lesssim
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
+dR^{legal}.
```

No installed surface proves this comparison.  The Gold half-tail variables
measure material-time high-ratio service on the original transported history.
The old Carleson theorem measures a scalar source-tree reserve for native
positive source residue.  Those are different readouts until a same-material
identification theorem relates them.

Adding that comparison would be the missing Gold theorem in another form.  It
would already contain the ratio weight \(2^\ell\) that the raw ledgers lack.

## 3. Source ancestry and BASAC notes do not close the Gold edge

The source-reserve birth note is explicitly superseded on the CM side by
Part/Field face consumption, and it leaves the positive-forward charge theorem
open.  Its surviving branch is a first-created positive-scale source-reserve
surplus, not a proved same-material Gold action estimate.

The BASAC source-ancestry note likewise reduces to terminal source
anti-concentration or a no-incoming source theorem.  It does not install an
unconditional \(L_s^p\), reverse-Holder, or global no-incoming estimate strong
enough to beat the Gold high-ratio tail.

Those surfaces are support and diagnostics for source-wall / CM-facing
branches.  They are not a proof of

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
```

for the full same-material Gold packet.

## 4. Verdict

The old tree-Carleson, active-square, source-birth, and BASAC ancestry surfaces
must not be reselected as though they close the Gold critical half-tail.

A valid Gold closure still has to prove one of the following directly on the
original same-material history:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
```

or a strict good-lambda recurrence

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
2\theta<1,
\qquad
\sum_L2^LB_L<\infty,
```

or a bounded-below same-material storage

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
```

Without one of those, the critical half-tail packing

```math
N_L\sim {2^{-L}\over L}
```

remains compatible with every installed raw ledger and with the checked local
affine/material-time profile audits.
