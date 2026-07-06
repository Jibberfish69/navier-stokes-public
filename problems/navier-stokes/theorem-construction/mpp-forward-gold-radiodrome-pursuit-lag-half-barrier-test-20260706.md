---
theorem_id: forward-gold-radiodrome-pursuit-lag-half-barrier-test-20260706
status: checked-obstruction-not-wlf60-proof
created: 2026-07-06
problem: navier-stokes
route: forward-gold WLF.60 / pursuit-lag total-turning test
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - WLF.60
  - ODP.91
  - HLG.12a
  - strict half-barrier N_{L+1} <= theta N_L + B_L with theta < 1/2
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-goodlambda-requires-epsilon-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-strict-half-barrier-minimal-bad-chain-direct-audit-20260627.md
completion_truth: >-
  Tests whether the radiodrome/pursuit geometry can pay the WLF.60 fresh
  first-entry half-tail by treating the selected heat-lag response as a moving
  target chase. The test does not prove WLF.60, ODP.91, HLG.12a, or the strict
  half-barrier. It shows that a pursuit-lag functional reproduces the installed
  same-parent detector unless it carries the selected first-ratio weight. Once
  it carries that weight, its finiteness is exactly the missing native
  heat-lag/reserve theorem, not a consequence of radiodrome geometry. The only
  usable descendant is a conditional repeated-core nonreuse storage theorem; it
  is the existing branch in the stopped strict half-barrier audit, not a new
  independent payer.
---

# Radiodrome pursuit-lag half-barrier test

## 1. Target

The live WLF.60 branch is not the existence of a lagged same-parent response.
That is already the detector statement

\[
\Delta_IU_I=J_P(\psi_I^P)+Err_I.
\tag{RAD.1}
\]

The open line is the fresh first-entry linear bill

\[
\sum_{I\in\mathcal F(P)}
\omega_I
\left|
J_P(P_{F_I}\psi_I^P)
\right|
\le
C_N(u_0)+C\,\mathsf{Visc}_{P,N}+C\,\mathsf{Paid}_{P,N},
\tag{RAD.2}
\]

or equivalently a native charge \(d\mathcal N_I^{heat}\) from the original
pressure-viscosity-incompressibility packet with finite total mass.

In layer-count form, this is the strict half-barrier

\[
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<\frac12,
\qquad
\sum_L2^LB_L<\infty.
\tag{RAD.3}
\]

## 2. Pursuit functional

For one selected heat-lag window \(I\) at frequency \(\lambda_I\), let

\[
H_I:=\nu\lambda_I^2|I|\simeq c_0
\tag{RAD.4}
\]

be the heat-response clock. Let \(\widehat\Phi_I^P(t)\) denote the normalized
full-packet selected carrier after recombination and before positive-part
extraction. Its pursuit/turning cost is

\[
\Omega_I^{rad}
:=
\int_I
\left|
D_t\widehat\Phi_I^P(t)
\right|\,dt
\tag{RAD.5}
\]

where \(D_t\) is the material/frame derivative including pressure-Hodge frame,
selector, collar, and localization motion already allowed in the WLF.60 carrier.
The dimensionless chase ratio is

\[
\kappa_I^{rad}
:=
\frac{\Omega_I^{rad}}{H_I}.
\tag{RAD.6}
\]

A radiodrome proof would need more than bounded lag. It would need a strict
survival estimate

\[
N_{L+1}^{rad}
\le
\left(\sup_{I\in\mathcal F_L(P)}\kappa_I^{rad}\right)N_L+B_L^{rad}
\tag{RAD.7}
\]

with

\[
\sup_I\kappa_I^{rad}<\frac12.
\tag{RAD.8}
\]

Equivalently, it would have to construct a finite original-data charge

\[
d\mathcal R_I^{rad}
\quad\text{such that}\quad
\omega_I
\left|
J_P(P_{F_I}\psi_I^P)
\right|
\le
d\mathcal R_I^{rad}
+dMotion_I+dReturn_I+\theta dVisc_I+dLegal_I+dStop_I
\tag{RAD.9}
\]

and

\[
\sum_{I\subset P}d\mathcal R_I^{rad}\le C_N(u_0)+C\,\mathsf{Paid}_{P,N}.
\tag{RAD.10}
\]

The test is whether \((RAD.8)\) or \((RAD.10)\) follows from the original
Navier-Stokes packet rather than being another name for \(d\mathcal N_I^{heat}\).

## 3. Failure of the unweighted turning charge

If \(d\mathcal R_I^{rad}\) is built from unweighted carrier turning, it belongs
to the already installed same-parent detector branch. It can say that the child
readout keeps chasing the same parent impulse, but it does not see the selected
first-ratio weight \(\omega_I\).

The half-tail model shows the mismatch. With

\[
\nu_\ell={2^{-\ell}\over \ell+1},
\tag{RAD.11}
\]

the raw ledger is finite:

\[
\sum_{\ell\ge0}\nu_\ell<\infty,
\tag{RAD.12}
\]

while the selected linear bill diverges:

\[
\sum_{\ell\ge0}2^\ell\nu_\ell
=
\sum_{\ell\ge0}{1\over \ell+1}
=\infty.
\tag{RAD.13}
\]

Thus any pursuit cost controlled only at zeroth-moment scale can be finite while
the WLF.60 bill remains infinite. This is exactly the same failure as raw Bessel
square support: it identifies the parent geometry without paying the selected
linear service.

## 4. Failure of the selected-weighted turning charge

If the pursuit cost is strengthened to include the selected first-ratio weight,
then it can dominate the bill only by taking the form

\[
d\mathcal R_I^{rad}
\gtrsim
\omega_I
\left|
J_P(P_{F_I}\psi_I^P)
\right|.
\tag{RAD.14}
\]

But then \((RAD.10)\) is exactly the missing native reserve theorem. On the
critical half-tail \((RAD.11)\), the total weighted pursuit cost is the divergent
series \((RAD.13)\). Radiodrome geometry has not supplied an original-data
reason that this branch is impossible; it has only renamed the branch that must
be excluded.

This is the same arithmetic as the sharp half-barrier:

\[
{N_{L+1}\over N_L}\to\frac12.
\tag{RAD.15}
\]

At coefficient \(1/2\), the weighted action can still diverge. A valid Gold
recurrence needs strict improvement below that value, or an epsilon reserve:

\[
N_L\lesssim2^{-(1+\varepsilon)L}+B_L^{tail}
\tag{RAD.16}
\]

with weighted-summable error. A pursuit-lag identity by itself gives no such
\(\varepsilon\).

## 5. NS speed-margin check

The only way for the radiodrome idea to become a payer is through a genuine
Navier-Stokes speed-margin theorem:

\[
\Omega_I^{rad}
\le
\left(\frac12-\varepsilon\right)H_I
+Paid_I
\tag{RAD.17}
\]

on the order-locked full-packet selected carrier after motion, return, legal,
stop, overlap, and viscosity payments are removed.

The current source surfaces do not prove \((RAD.17)\). The available critical
estimate has the form

\[
\left|
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right|
\le
C\|u(t)\|_{\dot H^{1/2}}
\|\Lambda^{3/2}u(t)\|_2^2.
\tag{RAD.18}
\]

For arbitrary smooth original data, the critical factor on the right is not a
subhalf constant. In the affine/material-time high-ratio survivor, the carrier
drift and the heat-response scale are both critical-size quantities. The pursuit
ratio is therefore marginal, not uniformly below \(1/2\).

So the radiodrome test fails at the exact expected point: it can express bounded
lag, and it can express conditional turning payment, but it does not produce the
strict speed margin that WLF.60 needs.

## 6. What remains useful

The useful descendant is not a new WLF.60 proof. It is the repeated-core branch
already isolated in the stopped strict half-barrier audit:

\[
\sum_{Q_k\subset\mathcal A}
A_{\rm sel}^{fresh}(Q_k)
\le
C_N\left(
V_C(\mathcal A)
+V_F(\mathcal A)
+V_{\rm collar}(\mathcal A)
+V_{\rm turnstile}(\mathcal A)
\right)
+R_{\rm legal}(\mathcal A).
\tag{RAD.19}
\]

Radiodrome language makes \((RAD.19)\) visually natural: retained pursuit of the
same moving carrier must spend frame, collar, pressure-Hodge, or turnstile
variation. But the global bound

\[
\int_{\mathcal F_{\rm lam}}
\left(
V_C+V_F+V_{\rm collar}+V_{\rm turnstile}
\right)d\mathcal R_{\rm ancestry}
\le
C_N(u_0)+R_{\rm legal}
\tag{RAD.20}
\]

is still the theorem. Without \((RAD.20)\), one can assign a turning cost to each
selected visit and still leave the critical half-tail.

## 7. Result

The radiodrome/pursuit-lag idea is demoted to support.

It is a good picture for:

1. the installed same-parent heat detector;
2. the conditional repeated-core nonreuse storage branch;
3. the exact speed-margin test a future theorem must pass.

It does not currently pay:

1. WLF.60;
2. ODP.91;
3. the native heat-lag charge \(d\mathcal N_I^{heat}\);
4. the strict half-barrier with \(\theta<1/2\).

The remaining proof object is unchanged:

\[
\text{original-data active/root payment on the order-locked full-packet carrier}
\Longrightarrow
\text{finite parent-weighted first-admission pulse measure}.
\tag{RAD.21}
\]

Radiodrome becomes live again only if one proves the genuine speed-margin
estimate \((RAD.17)\) from the original pressure-viscosity-incompressibility
packet. A bound with coefficient below \(1\) is retained-loop support. The Gold
branch needs below \(1/2\).
