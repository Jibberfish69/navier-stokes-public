---
theorem_id: forward-gold-annular-scattering-operator-half-retention-reduction-20260705
status: strict-reduction-to-normalized-annular-scattering-not-proof
created: 2026-07-05
problem: navier-stokes
route: forward-gold / participation impedance / annular scattering / strict half-barrier
logical_landing_node: participation throttle law / strict half-barrier
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-impedance-law-derivation-attempt-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-impedance-theorem-critical-branching-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-strict-half-barrier-minimal-bad-chain-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-exchange-no-self-feeding-physical-lyapunov-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-collar-enstrophy-balance-scaling-test-20260625.md
target_object:
  - AnnularScatteringHalfRetention.A
  - AnnularScatteringEchoSign.A
  - CoherentCollarCompactQuotient.A
  - StrictHighRatioGoodLambdaHalfBarrierBreak.A
completion_truth: >-
  Not a proof. The impedance constant is sharpened into a normalized annular
  scattering object. After parabolic normalization at local Reynolds number
  one, a loaded collar solves the unit-viscosity Navier-Stokes equation on a
  fixed annulus over one unwind time. The exact localized tower balance splits
  the parked reaction into heat, outward echo, inward coherent handoff, and
  paid leakage. The strict half-barrier would follow if the coherent inward
  transmission on the winding cone has gain below 1/2 and the outward echo has
  opposite sign. The audit exposes two necessary repairs: the finite-amplitude
  relaxation map is nonlinear, so "spectral radius" is lawful only after
  passing to a positive cone derivative or a proved cone envelope; and the
  unit-Reynolds family is compact only after quotienting rigid/affine modes
  and paying hidden high-tower oscillatory escapes. Thus the next exact theorem
  is a cone-scattering certification, not a bare scalar constant.
---

# Annular scattering operator: half-retention reduction

## 1. Physical object

The same-fluid object is one loaded collar between a center packet and its
neighboring shells.  The center has borrowed through that collar.  The collar
now unwinds on its own heat clock, but the unwind is still a Navier-Stokes
transfer through the same participating medium.

The previous impedance note named the three discharge channels:

1. dissipation in the collar;
2. outward export, the spring's payback wave;
3. coherent inward handoff, which can feed the next rung of the ladder.

This note makes the branch object precise enough to test.

## 2. Unit-Reynolds normalization

Let \(r\) be the collar scale and let the critical velocity increment be
\(\Delta u\sim\nu/r\).  Set

\[
x=x_0+r y,\qquad
t=t_0+\frac{r^2}{\nu}s,\qquad
u(x,t)=\frac{\nu}{r}v(y,s),\qquad
p(x,t)=\frac{\nu^2}{r^2}\pi(y,s).
\tag{ASO.1}
\]

Then the normalized field satisfies

\[
\partial_s v+(v\cdot\nabla)v+\nabla\pi=\Delta v,
\qquad
\nabla\cdot v=0,
\tag{ASO.2}
\]

on a fixed annulus

\[
A=\{1<|y|<2\}
\tag{ASO.3}
\]

over a fixed unwind interval \(0\le s\le c_0\).  The local Reynolds number is
order one.  All dependence on \(r\) has left the normalized equation.

The parked reaction scale from the impedance note is the normalized
first-tower content

\[
R_A(v)=\int_A |\nabla v|^2\,dy.
\tag{ASO.4}
\]

Returning to physical variables multiplies this by \(\nu^2/r\).

## 3. Exact channel split

Choose a smooth annular cutoff \(\chi\) supported in \(A\), equal to one on the
active collar core, with inner and outer transition bands.  The localized
\(H^1\)-tower balance has the schematic exact form

\[
\frac{d}{ds}R_\chi(v)
+D_\chi(v)
=
\mathcal F_{\rm in}(v,\pi)
+\mathcal F_{\rm out}(v,\pi)
+\mathcal E_{\rm cut}(v,\pi),
\tag{ASO.5}
\]

where

\[
D_\chi(v)\simeq\int \chi |\Delta v|^2
\tag{ASO.6}
\]

is the heat/tower drain, \(\mathcal F_{\rm in}\) is the inner transition flux
that can feed the next smaller packet, \(\mathcal F_{\rm out}\) is the outer
transition flux that returns work to larger shells, and
\(\mathcal E_{\rm cut}\) is the paid cutoff/legal/collar residual.

The exact formula for (ASO.5) is the localized enstrophy identity.  The June 25
collar scaling audit is the warning: \(D_\chi\) and the nonlinear
pressure/strain work in \(\mathcal F_{\rm in/out}\) have the same critical
size.  Therefore the scattering object must be a signed work split, not a
viscosity-only drain estimate.

## 4. Coherent winding cone

Let \(\mathcal C_{\rm wind}\) denote the cone of normalized collar states whose
inner trace produces the selected next-rung winding mode after the already
installed paid branches are removed.  Concretely, \(\mathcal C_{\rm wind}\)
is defined by:

1. unit parked reaction \(R_A(v)=1\);
2. no legal/stop/selector/cutoff exit in the fixed unwind window;
3. nonnegative pairing with the next-rung active winding covector
   \(\psi_{\rm in}\);
4. quotient by rigid motion, affine null motion, and flux-invisible rotations.

The coherent inward handoff is

\[
Q_{\rm in}(v)
=
\int_0^{c_0}
\bigl[\langle \mathcal F_{\rm in}(v,\pi),\psi_{\rm in}\rangle\bigr]_+
\,ds.
\tag{ASO.7}
\]

The outward echo, measured in the same winding orientation, is

\[
Q_{\rm out}^{opp}(v)
=
\int_0^{c_0}
\bigl[-\langle \mathcal F_{\rm out}(v,\pi),\psi_{\rm out}\rangle\bigr]_+
\,ds.
\tag{ASO.8}
\]

The signs are chosen so that \(Q_{\rm in}\) feeds the ladder and
\(Q_{\rm out}^{opp}\) opposes it.

## 5. The finite-amplitude scattering constant

The lawful retention constant is the finite-amplitude cone gain

\[
c_{\rm ret}
=
\sup_{v_0\in\mathcal K_{\rm coll}}
\frac{Q_{\rm in}(v[v_0])}
{R_A(v_0)}
\tag{ASO.9}
\]

where \(\mathcal K_{\rm coll}\) is the normalized retained collar class and
\(v[v_0]\) is the solution of (ASO.2) on the fixed unwind window.

The half-retention theorem is:

\[
\texttt{AnnularScatteringHalfRetention.A:}
\qquad
c_{\rm ret}<\frac12 .
\tag{ASO.10}
\]

The echo-sign theorem is:

\[
\texttt{AnnularScatteringEchoSign.A:}
\qquad
Q_{\rm out}^{opp}(v)
\ge c_{\rm echo}\bigl(R_A(v_0)-Q_{\rm in}(v)-D_\chi(v)\bigr)
-Paid(v).
\tag{ASO.11}
\]

Together, (ASO.10)--(ASO.11) are the operator version of Fable's
\((B\text{-ret})+(B\text{-coh})\).

## 6. When "spectral radius" is lawful

The Navier-Stokes relaxation map

\[
v_0\mapsto v(\cdot,s)
\tag{ASO.12}
\]

is nonlinear at unit Reynolds number.  So the statement
\(\rho(T_{\rm in})<1/2\) is not automatically meaningful for the full
finite-amplitude map.

There are two lawful replacements.

First, prove a cone envelope: construct a positive linear operator \(T_{\rm in}\)
on a finite/coercive winding-coordinate space such that

\[
Q_{\rm in}(v[v_0])\le \|T_{\rm in}a(v_0)\|,
\qquad
a(v_0)\in\mathcal C_{\rm wind},
\tag{ASO.13}
\]

and prove

\[
\rho(T_{\rm in})<\frac12 .
\tag{ASO.14}
\]

Second, certify the finite-amplitude gain (ASO.9) directly on the compact
normalized collar class.  In that route the number \(1/2\) is a nonlinear
optimization bound, not a spectral radius.

Thus "annular scattering operator" should be read as a cone-scattering problem
until (ASO.13) has been proved.

## 7. Compactness audit

The unit-Reynolds phrase is not enough by itself.  A normalized collar family
can still hide high-tower oscillations, rigid/affine null modes, or
flux-invisible rotations.  The compact class must be

\[
\mathcal K_{\rm coll}
=
\left\{
v_0:
R_A(v_0)=1,\quad
\operatorname{Re}\sim1,\quad
\text{paid exits removed},\quad
\|v_0\|_{X_m}\le C_m
\right\}/\mathcal N,
\tag{ASO.15}
\]

where \(\mathcal N\) is the rigid/affine/flux-invisible null space and
\(X_m\) is strong enough to make the fixed-window Navier-Stokes solution and
the channel functionals continuous.

The missing compactness theorem is:

\[
\texttt{CoherentCollarCompactQuotient.A:}
\tag{ASO.16}
\]

Every retained unit-Reynolds collar that remains after paid branches either
belongs to \(\mathcal K_{\rm coll}\) or exits through a charged high-tower /
oscillatory / affine-collar escape already counted in \(Paid\).

This is where the localized affine-collar scaling audit enters: a collar bill
is real, but it is not one-way loss until nonlinear work is assigned to the
same channel split.

## 8. Implication to the strict half-barrier

Assume (ASO.10), (ASO.11), and (ASO.16).  On every retained marginal rung,
normalize the collar by (ASO.1).  The coherent inward feed to the next rung is
at most \(c_{\rm ret}\) of the parked reaction, while the outward echo is
opposite-signed or paid.  Therefore the high-ratio tail satisfies

\[
N_{L+1}\le c_{\rm ret}N_L+B_L,
\qquad
c_{\rm ret}<\frac12,
\qquad
\sum_L2^L B_L<\infty .
\tag{ASO.17}
\]

This is exactly the installed strict half-barrier form.  Hence

\[
\texttt{AnnularScatteringHalfRetention.A}
+\texttt{AnnularScatteringEchoSign.A}
+\texttt{CoherentCollarCompactQuotient.A}
\Longrightarrow
\texttt{StrictHighRatioGoodLambdaHalfBarrierBreak.A}.
\tag{ASO.18}
\]

## 9. Failure modes

The reduction is falsifiable in three ways.

1. A smooth normalized collar in \(\mathcal K_{\rm coll}\) has
   \(Q_{\rm in}\ge\frac12 R_A\).  Then the impedance route fails by an explicit
   unit-Reynolds counterexample.
2. The outward channel has the wrong sign in the winding pairing.  Then the
   spring-payback picture is false; the echo can fuel the ladder.
3. The retained collar class is not compact after paid exits.  Then the route
   returns to the high-tower / affine-collar escape theorem rather than a
   finite certification problem.

## 10. Output

Proof: none.

Strict reduction: the impedance branching constant has been turned into the
normalized annular cone-scattering problem (ASO.9)--(ASO.11).

Checked obstruction: the word "operator" is lawful only after a cone envelope
or derivative reduction; the finite-amplitude Navier-Stokes scattering map is
nonlinear.

Remaining theorem package:

1. \(\texttt{CoherentCollarCompactQuotient.A}\);
2. \(\texttt{AnnularScatteringHalfRetention.A}\);
3. \(\texttt{AnnularScatteringEchoSign.A}\).

This is smaller than the original schedule-clearing theorem but not yet a
Gold closure.

