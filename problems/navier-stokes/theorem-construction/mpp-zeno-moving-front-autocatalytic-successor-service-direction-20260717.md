---
theorem_id: zeno-moving-front-autocatalytic-successor-service-direction-20260717
date: 2026-07-17
problem: navier-stokes
route: forward-gold / Zeno / moving frequency front / successor service
status: proved-local-front-reduction; isolated-successor-and-pathwise-no-recount-demoted; signed-prefix-open
authority_state: theorem-construction support only; no canonical frontier promotion
parents:
  - mpp-zeno-instantaneous-pressure-response-nonreuse-direction-20260717.md
  - mpp-zeno-instantaneous-pressure-response-route-exhaustion-20260717.md
  - codex-goal-ontology-cycle-115-critical-chord-envelope-product-gold-heat-bridge-20260714.md
  - codex-goal-ontology-cycle-159-critical-chord-product-source-absorption-20260715.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
  - mpp-forward-gold-transversality-relay-drift-lock-20260705.md
completion_truth: >-
  No no-Zeno proof is claimed.  This pass retracts the false completion that
  renamed the known no-recount/Carleson wall as irreducible.  It proves that
  the global chord maximum is only the endpoint critical Besov amplitude,
  derives a stopped moving-front tail inequality, splits amplitude escalation
  from octave proliferation, and gives an exact Navier--Stokes counterexample
  to every universal one-step sub-half relay law.  The two-interface causal
  split remains exact, but the later full-network Taylor test sharpens its
  landing: omitted arms reconverge immediately, so a pathwise positive
  no-recount charge is not canonical.  The surviving Gold object is the
  complete signed singleton-current aggregate after every reconvergent
  contribution is summed.  No datum-finite upper prefix bound for that
  aggregate, and hence no full decaying-R3 continuation theorem, is proved.
---

# Zeno after the pressure-memory failure: follow the moving active mixer

## 1. Correction and verdict

The instantaneous-pressure proposal did not solve the Zeno problem and did
not expose a new irreducible obstruction.  It showed only that pressure is the
wrong place to store the missing history.  Calling the known no-recount wall
the end of the route was a false completion.

The useful continuation is now more specific:

1. A global whole-field response can be instantaneous while its influence on
   a remote scale is quantitatively small.
2. The global chord maximum can be held by a harmless old octave while a
   terminal cascade advances elsewhere.
3. Viscosity and the Leray projection do not impose a universal loss on one
   parent-to-child transfer.
4. Large fine-scale critical height can be acquired passively.  At the next
   event, either that daughter becomes an active strain/current supplier or a
   fresh/background supplier replaces it.  Those are different causal
   branches and neither may be silently discarded.

The new object is therefore not a pressure-response defect and not a charge on
one doubling.  It is the **two-interface causal split between daughter
successor service and fresh/passive reset**.

## 2. The conversation's actual arc

The conversation moves through a coherent sequence of questions.

1. Why does viscosity look like diffusion?
2. How can diffusion stop arbitrarily sharp gradients?
3. Can vortex stretching continually move kinetic organization toward finer
   scales, and why is this not seen as an infinite cascade in nature?
4. What energy supplies stretching, and how quickly can that supply act?
5. Does a large eddy impose one turnover-time delay?
6. How can that be right in incompressible Navier--Stokes, where pressure
   enforces divergence freedom through an instantaneous elliptic solve?
7. If compressible flow can shed into acoustic/internal channels, what is the
   lawful incompressible analogue: pressure redistribution, geometric
   detuning, reconnection, or loss of productive alignment?

The decisive correction occurs at step 6.  A core and its supplier are not
independent machines waiting for a signal to cross the fluid.  They are parts
of one simultaneous pressure-constrained velocity field.

Several answers surrounding that correction were nevertheless wrong or too
strong:

- The heat equation has infinite propagation speed.  There is no continuum
  theorem that caps momentum diffusion by the speed of sound.
- A CFL condition is a numerical stability condition, not a lower bound on
  nonlinear transfer time.
- The elliptic pressure field is not a global energy sink.  Its total kinetic
  work vanishes, although it redistributes local work.
- Vortex stretching produces enstrophy and redistributes energy; it does not
  inject new energy.
- Compressibility is not a monotone safety parameter.  It adds acoustic and
  internal-energy channels but also permits shocks and density singularities.
- Reconnection, helicity, and misalignment are possible mechanisms, not
  automatic regularity theorems.

What survives is narrower and stronger:

> Incompressibility removes a causal waiting-time argument.  A successful
> no-Zeno proof must use the exact structure of the simultaneous nonlinear
> response, not a finite communication speed and not an independent pressure
> bank.

## 3. What the pressure test settled

For one smooth decaying history,

\[
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{MF.1}
\]

Pressure is reconstructed from the current velocity.  It has no independent
state that can retain a successor defect.  At a common endpoint, two complete
same-state responses coincide.  If different event selectors give different
responses, their difference records a changed observation, not an irreversible
fluid payment.

Following the same material region across two times repairs the identity but
returns to the exact stress-work balance

\[
\frac d{dt}\int_{\Omega(t)}\frac{|u|^2}{2}
=\int_{\partial\Omega(t)}u\cdot(-pI+2\nu S)n
-2\nu\int_{\Omega(t)}|S|^2.
\tag{MF.2}
\]

Nested internal tractions cancel.  The raw work and dissipation scale like a
length, whereas one critical-height doubling is scale invariant.  Dividing by
the event radius restores critical scale and loses the energy upper bound.
Thus pressure supplies coupling but not the missing historical multiplicity
control.

This is a pressure-carrier no-go only.  It is not a no-Zeno theorem.

## 4. The global chord maximum is not the cascade front

Let

\[
a_j=2^{j/2}\|\Delta_j u\|_2,
\qquad
H\simeq\sum_j a_j^2,
\qquad
\beta=\sup_j a_j.
\tag{MF.3}
\]

Write the critical octave masses as

\[
A_j=\int_{2^j}^{2^{j+1}}r e(r)\,dr.
\tag{MF.4}
\]

Cycle 115 supplies one direction between the chord envelope \(\mathscr M\)
and the octave masses.  The chord kernel also gives the reverse direction:

\[
\boxed{
\mathscr M\asymp\sup_jA_j\asymp\beta^2.
}
\tag{MF.5}
\]

Indeed, on an octave \(2^j\), the normalized chord multiplier is comparable
to

\[
g(R2^j)=\frac{R2^j}{1+R^22^{2j}},
\tag{MF.6}
\]

and the dyadic translates of \(g\) have uniformly bounded sum.

Consequently the Cycle 159 basin is a small
\(\dot B^{1/2}_{2,\infty}\) absorption criterion in chord coordinates.  It is
real, but its global maximizer is not a material or spectral front.

A static lacunary field can have one anchor octave of mass \(2m\) and \(N\)
widely separated finer octaves of mass \(m\).  Then

\[
\mathscr M\asymp m,
\qquad
H\asymp Nm,
\qquad
\mathcal E\asymp\sum_j2^{-j}A_j<\infty,
\tag{MF.7}
\]

while the active maximizing chord remains pinned near the anchor.  Therefore
moving one Danskin maximizer cannot see octave proliferation.

## 5. Amplitude escalation versus octave proliferation

Define the spectral breadth

\[
N_{\rm oct}:=\frac{H}{\mathscr M}.
\tag{MF.8}
\]

Every putative terminal \(H\)-divergence has two nonexclusive branches:

1. **amplitude escalation:** \(\mathscr M\to\infty\);
2. **octave proliferation:** \(N_{\rm oct}\to\infty\).

The standard energy interpolation gives

\[
\mathscr M^2\lesssim\mathcal E K,
\qquad
\int_0^T\mathscr M^2dt
\lesssim\frac{\mathcal E(0)^2}{\nu}.
\tag{MF.9}
\]

There is a stronger breadth-sensitive inequality.  Since every octave has
mass at most \(C\mathscr M\), a low/high cutoff argument gives

\[
\boxed{
K\gtrsim
\frac{H^2}{\mathcal E}
2^{cH/\mathscr M},
\qquad
D\gtrsim
\frac{H^3}{\mathcal E^2}
2^{cH/\mathscr M}.
}
\tag{MF.10}
\]

For the first inequality, choose indices \(a<b\) so that the low octaves carry
at most \(2^a\mathcal E\le H/4\) and the high octaves carry at most
\(2^{-b}K\le H/4\).  At least \(H/2\) remains in \([a,b]\), so

\[
b-a+1\gtrsim H/\mathscr M.
\tag{MF.11}
\]

Solving the two cutoff relations gives the first exponential factor.  Replacing
the high cutoff by \(4^{-b}D\le H/4\) gives the second.

Combining (MF.10) with the energy identity yields the datum-finite occupancy

\[
\boxed{
\int_0^T H(t)^2\,2^{cH(t)/\mathscr M(t)}dt
\lesssim\frac{\mathcal E(0)^2}{\nu}.
}
\tag{MF.12}
\]

This is new quantitative information, but it is not closure.  It forces a
bounded-amplitude breadth cascade into exponentially shorter windows.  The
sharp schedule

\[
A_j\simeq m\quad(j\le n),
\qquad
\Delta t_n\simeq4^{-n},
\tag{MF.13}
\]

still has

\[
H\simeq mn,
\quad
\mathscr M\simeq m,
\quad
K\simeq m2^n,
\quad
D\simeq m4^n,
\tag{MF.14}
\]

and pays only geometrically summable kinetic energy.  The inequalities alone
therefore permit Zeno.

## 6. A stopped moving-front theorem

The global maximum can be replaced by a genuine front-local estimate.  Put

\[
H_{\ge k}=\frac12\sum_{j\ge k}a_j^2,
\qquad
D_{\ge k}=\sum_{j\ge k}2^{2j}a_j^2,
\tag{MF.15}
\]

and, up to one fixed Littlewood--Paley overlap width \(c_0\), define

\[
A_k^+=\sup_{j\ge k}a_j,
\qquad
\Gamma_k^-=\sum_{\ell<k-c_0}2^{2(\ell-k)}a_\ell,
\tag{MF.16}
\]

\[
D_{\partial^-k}
=\sum_{k-c_0\le\ell<k}2^{2\ell}a_\ell^2.
\tag{MF.17}
\]

The divergence-free commutator cancellation in the low--high row and the
high--high boundary split give

\[
\boxed{
|P_{\ge k}|
\lesssim
(A_k^++\Gamma_k^-)D_{\ge k}
+A_k^+D_{\partial^-k}.
}
\tag{MF.18}
\]

Hence

\[
\boxed{
H_{\ge k}'
+\bigl(\nu-C(A_k^++\Gamma_k^-)\bigr)D_{\ge k}
\lesssim A_k^+D_{\partial^-k}.
}
\tag{MF.19}
\]

The factor \(2^{-2(k-\ell)}\) in \(\Gamma_k^-\) is the correct version of
"instantaneous but not equally strong."  A fixed remote octave can respond at
once, but it cannot directly maintain an arbitrarily fine front.

Let

\[
\tau_k=\inf\{t:H_{\ge k}(t)=\eta^2\nu^2\}.
\tag{MF.20}
\]

Before the first hit, \(A_k^+\lesssim\eta\nu\).  Integrating (MF.19) gives a
precise dichotomy:

1. the first hit receives a fixed payment from the adjacent parent band;
   or
2. \(\Gamma_k^-\gtrsim\nu\), which selects a superthreshold predecessor
   octave.

Iterating produces a moving locally superthreshold chain.  Energy controls
only its geometrically weighted payment,

\[
\sum_k2^{-k}
\int_0^{\tau_k}A_k^+D_{\partial^-k}dt
\lesssim\mathcal E(0),
\tag{MF.21}
\]

not the unweighted number of first hits.  Thus scale locality removes the
remote-anchor fiction but does not stop the Zeno chain.

On the bounded-amplitude branch this can be sharpened to a simultaneous-partner
statement.  The single-shell critical current obeys

\[
|\mathcal N_j|
\lesssim2^{2j}a_j\bigl(a_jL_j+B_j\bigr),
\tag{MF.21a}
\]

where

\[
L_j=\sum_{\ell<j}2^{\ell-j}a_\ell,
\qquad
B_j=\sum_{n\ge j-c_0}2^{j-n}a_n^2.
\tag{MF.21b}
\]

At an upward first crossing \(a_j=\varepsilon\nu\), viscosity therefore
forces

\[
c\nu\le L_j+\frac{B_j}{a_j}.
\tag{MF.21c}
\]

If \(\sup_na_n\le A_0\), the far-low and far-high pieces of (MF.21b) can
be made smaller than the right side of (MF.21c) by removing only
\(O(\log(A_0/\nu))\) octaves.  Hence every sufficiently fine first crossing
has a simultaneous order-\(\nu\) partner within a bounded logarithmic octave
gap.  The terminal object is a moving chain of two-shell current events, not
one old global maximizer.  The same partner can still become the next parent,
so this does not defeat the geometric half-tail.

## 7. Why a one-step half-retention theorem is false

There is an exact pressure-zero Navier--Stokes comparison on \(\mathbb T^3\):

\[
u=(Be^{-\nu t}\sin y,0,w(x,y,t)),
\qquad p=0,
\tag{MF.22}
\]

\[
w_t+Be^{-\nu t}\sin y\,w_x=\nu\Delta w,
\qquad w(0)=A\sin x.
\tag{MF.23}
\]

Use the integrated shear time

\[
\tau=\frac B\nu(1-e^{-\nu t}).
\tag{MF.24}
\]

For fixed \(0\le\tau\le3\) and \(B/\nu\to\infty\),

\[
w\longrightarrow A\sin(x-\tau\sin y).
\tag{MF.25}
\]

At \(\tau=3\), Jacobi--Anger expansion gives sideband fractions
\(J_n(3)^2\).  Direct evaluation yields

\[
2\bigl(J_2(3)^2+J_3(3)^2\bigr)
=0.6636089598\ldots,
\tag{MF.26}
\]

so more than \(66\%\) of the transported component's kinetic energy lies in
the adjacent dyadic child band \(2\le\sqrt{1+n^2}<4\).  Its critical-height
ratio is

\[
\sum_{n\in\mathbb Z}\sqrt{1+n^2}J_n(3)^2
=2.2179158807\ldots,
\tag{MF.27}
\]

and the \(n=\pm2\) pair alone carries

\[
2\sqrt5J_2(3)^2=1.0566973633\ldots
\tag{MF.28}
\]

times the initial parent critical mass.  Critical viscous loss over this
transfer is \(O(\nu/B)\).

This exact smooth solution proves:

\[
\boxed{
\text{Leray projection + viscosity}
\not\Rightarrow
\text{one-step sub-half transfer.}
}
\tag{MF.29}
\]

The example is periodic and comparison-only under the repo quarantine.  It
does not construct a decaying-R3 terminal cascade.  It does kill every
domain-insensitive attempt to obtain the needed contraction from one transfer
or from viscosity alone.

It also reveals the missing distinction.  The transported component gains
large fine-scale critical height, but it remains passive in this triangular
solution.  It does not become the advecting shear that would reproduce the
mechanism at the next scale.

## 8. The exact two-interface causal split

Earlier scalar accounts collapse three different roles:

1. **acquisition:** boundary service creates critical mass beyond interface
   \(k\);
2. **passive carriage:** the daughter is transported or strained by another
   part of the field;
3. **autocatalytic service:** the daughter enters the advecting/backreaction
   leg that helps create mass beyond interface \(k+1\).

The split can be made without inventing ancestry.  Write
\(B(a,b)=\mathbb P(a\cdot\nabla b)\), and let \(Q_k\) be the fixed smooth
receiver for the first event.  Its nonlinear Duhamel daughter is

\[
\begin{aligned}
d_k={}&Q_ku(t_{k+1})
-e^{\nu(t_{k+1}-t_k)\Delta}Q_ku(t_k)\\
={}&-\int_{t_k}^{t_{k+1}}
e^{\nu(t_{k+1}-s)\Delta}Q_kB(u,u)(s)\,ds.
\end{aligned}
\tag{MF.30}
\]

Continue only this acquired increment by the heat flow,

\[
r_k(t)=e^{\nu(t-t_{k+1})\Delta}d_k,
\qquad
v_k(t)=u(t)-r_k(t).
\tag{MF.31}
\]

For the next receiver \(Q\), its critical source splits exactly as

\[
-\langle QB(u,u),\Lambda Qu\rangle
=F_k+P_k+C_k,
\tag{MF.32}
\]

where

\[
\begin{aligned}
F_k&=-\langle QB(v_k,v_k),\Lambda Qu\rangle,
&&\text{fresh/background source},\\
P_k&=-\langle QB(v_k,r_k),\Lambda Qu\rangle,
&&\text{daughter passively advected},\\
C_k&=-\langle Q(B(r_k,v_k)+B(r_k,r_k)),\Lambda Qu\rangle,
&&\text{daughter in an advecting leg}.
\end{aligned}
\tag{MF.33}
\]

On its next stopped interval \(J_{k+1}\), define the exact required source

\[
R_{k+1}
:=\Delta_{J_{k+1}}H_Q
+\nu\int_{J_{k+1}}D_Qdt
=\int_{J_{k+1}}(F_k+P_k+C_k)dt.
\tag{MF.34}
\]

For a genuine upward event \(R_{k+1}>0\), hence

\[
R_{k+1}
\le\int[F_k]_+dt+
\int[P_k]_+dt+
\int[C_k]_+dt.
\tag{MF.34a}
\]

For any fixed \(0<\vartheta<1\), exactly one of the following must occur:

1. **fresh/passive reset:**
   \(\int([F_k]_++[P_k]_+)\,dt\ge(1-\vartheta)R_{k+1}\);
2. **autocatalytic handoff:**
   \(\int[C_k]_+dt\ge\vartheta R_{k+1}\).

The 2D3C solution (MF.22) lies entirely in the first branch for its transported
component: \(r_k=\rho e_z\) is independent of \(z\), so
\(r_k\cdot\nabla=\rho\partial_z=0\) and \(C_k=0\), even while passive mixing
more than doubles critical height.  Thus no universal lower bound on the
autocatalytic fraction is lawful.

The opposite extreme is also possible.  On \(\mathbb T^3\), take the real
Fourier datum generated by the modes

\[
\begin{array}{c|c}
p=(1,0,0)&e_p=(0,-1,1)\\
q=(0,-1,0)&e_q=(-1,0,1)\\
r=(0,0,-1)&e_r=(-1,1,0)
\end{array}
\tag{MF.35}
\]

and their conjugates.  The \(q+r=k=(0,-1,-1)\) interaction produces, after
Leray projection, \(e_k=(2,0,0)\).  The \(p+q\) and \(p+r\) outputs are pure
gradients and vanish.  At \(\ell=k+p=(1,-1,-1)\),

\[
e_p\cdot k=0,
\qquad
e_k\cdot p=2,
\qquad
\mathbb P_\ell e_p=e_p.
\tag{MF.36}
\]

Therefore the leading \(\ell\)-source is entirely \(B(u_k,u_p)\): the newly
created \(k\)-daughter is already the advecting leg of the next interaction.
This defeats any pointwise strict deficit in the catalytic fraction.  It does
not decide the finite-time handoff-versus-return race.

The full no-Zeno package must consequently contain both branches:

\[
\boxed{
\begin{aligned}
&\texttt{StoppedFreshOrPassiveSuccessorNoReset.A},\\
&\texttt{StoppedAutocatalyticSuccessorReturnRace.A}.
\end{aligned}
}
\tag{MF.37}
\]

The first is the existing fresh-source/reset Carleson burden in an exact causal
coordinate.  The second would have to prove, after a genuine handoff and over
the full return window,

\[
\mathfrak C_{k+1}
\le(1-\delta)\mathfrak C_k+B_k,
\qquad
\delta>0,
\tag{MF.38}
\]

with the errors admitted and summable in the same original-history ledger.
Neither branch is closed here.  The causal split is new bookkeeping precision,
not a new Gold strict reduction by itself.

**July 22 supersession.**  Section 11 executes the exact five-mode test and
shows that the isolated return/detuning mechanism cannot supply the strict
factor in (MF.38): the predecessor transfers completely to the successor
before the shared daughter returns, with no feedback on the daughter-producing
oscillator.  A theorem using the omitted full-network interactions remains
open; the isolated normal-form supplier is rejected.

## 9. Why the pressure insight belongs in the autocatalytic branch

In a helical triad, the pressure-completed interaction has two exact inviscid
invariants, energy and helicity.  Efficient forward acquisition is possible,
but the forward mixed-helicity branch carries a companion catalyst/waste mode.
The isolated triad is a spring: absent extraction into a new triad, its energy
exchange returns.

When the daughter is extracted to serve the next interface, the shared mode's
amplitude and phase change.  That detunes the preceding triad.  The proposed
two-payer mechanism is:

1. if the companion dies before handoff, viscosity pays;
2. if it persists through handoff, reverse instability and phase drift return
   part of the acquired mass or destroy the successor alignment.

This is the lawful version of incompressible "back-reaction."  Pressure is not
a stored opposing force.  The Leray constraint fixes the coupled triad
geometry, and the back-reaction is the same modes' return/detuning when a
daughter attempts to become the next catalyst.

The existing `return-race`, `transversality-relay-drift-lock`, and
mixed-helicity notes contain this proposed finite-dimensional mechanism.
Section 11 now disproves its isolated five-mode form.  The following
full-network questions remain open:

1. a stopped two-interface decomposition of the full boundary current;
2. identification of the same shared daughter before future selection;
3. a full-NS side-interaction or network-coupling inequality replacing the
   false isolated return/detuning contraction;
4. control of diffuse packets, side interactions, and sub-octave chopping;
5. summability of the admitted errors in one original-history ledger.

## 10. Falsification program

The direction should be tested before promotion.

1. **Completed July 22:** build the exact five-mode/two-triad Galerkin handoff
   with the true Leray coefficients.  It transfers the predecessor completely
   into the successor before return, so the proposed geometry-only reading of
   (MF.38) fails at normal-form level; see Section 11.
2. **Locally completed July 22:** the exact full periodic Taylor jet restores
   every Fourier interaction through the first feedback order.  It branches
   the relay and taxes a selected successor, but total critical height still
   rises.  It also reconverges into occupied modes immediately, so pathwise
   no-reconvergence/no-recount is not a lawful replacement theorem.  The
   remaining task is a datum-bound upper prefix estimate after all
   reconvergent contributions are summed.  Any missing side interaction must
   be shown paid, not dropped.
3. Prove the stopped LP interface decomposition leading from (MF.19) to the
   shared helical daughter current.
4. Only then attempt compactness from normalized first-hit windows on
   \(\mathbb R^3\).

This program uses genuinely finer structure than energy and harmonic-analysis
upper estimates.  That is necessary: energy-compatible averaged
Navier--Stokes cascade models can blow up, so any positive proof must use the
specific interaction geometry of the true bilinear term.

## 11. Exact five-mode falsification of the isolated return tax

Let \(S=\{\pm p,\pm q,\pm r,\pm k,\pm\ell\}\) with the vectors in (MF.35),
\(k=q+r\), and \(\ell=p+k\).  The true-Leray inviscid Galerkin equation on
\(S\) has the exact invariant ansatz

\[
\begin{array}{c|ccccc}
m&p&\ell&q&r&k\\ \hline
\widehat u_m&(0,-a,a)&(0,b,-b)&(c,0,1)&(c,1,0)&(id,0,0),
\end{array}
\]

with conjugate negative modes.  Direct Fourier convolution and Leray
projection give

\[
a'=bd,\qquad b'=-ad,\qquad c'=-d,\qquad d'=2c.
\]

For \(a(0)=1,b(0)=0,c(0)=-1,d(0)=0\),

\[
\begin{aligned}
c(t)&=-\cos(\sqrt2t),&d(t)&=-\sqrt2\sin(\sqrt2t),\\
a(t)&=\cos(1-\cos(\sqrt2t)),&
b(t)&=\sin(1-\cos(\sqrt2t)).
\end{aligned}
\]

At

\[
t_*=\frac{\arccos(1-\pi/2)}{\sqrt2}
<\frac{\pi}{\sqrt2}=t_{\rm ret},
\]

one has \(a(t_*)=0\), \(b(t_*)=1\), while
\(d(t_*)^2=2\pi-\pi^2/2>0\).  Thus all \(\pm p\)-pair energy reaches the
\(\pm\ell\) successor before the \(k\)-catalyst first returns.  Moreover the
\((c,d)\) subsystem is independent of \((a,b)\), so successor service causes no
detuning or depletion inside this exact normal form.

This rejects the isolated triad-spring supplier for a universal strict
contraction in (MF.38).  It does not reject a theorem whose coercivity comes
from the side interactions omitted by the Galerkin set, nor a datum-dependent
viscous payment in one full-PDE history.  The complete proof and direct
coefficient check are recorded in the
[five-mode countertest](mpp-vpi-five-mode-triangular-successor-relay-countertest-20260722.md)
and its [regression check](../tools/check_five_mode_triangular_relay_test.rb).

## 12. Full-network completion: local selected-path tax and native reconvergence

Restoring every Fourier output changes the physical event immediately.  With

\[
j=p-r=(1,0,1),\qquad h=p-q=(1,1,0),
\]

the full Euler Taylor jet through the datum (MF.35) begins with three equal
daughters:

\[
\partial_t\widehat u_k(0)=(-2i,0,0),\quad
\partial_t\widehat u_j(0)=(0,-2i,0),\quad
\partial_t\widehat u_h(0)=(0,0,2i).
\]

The five-mode chain retains the first and deletes the other two.  The exact
full recurrence generates three equal corner successors and six additional
outer modes at second order.  For the selected \(p\to\ell=p+k\) arm, write
\(\widehat u_p=(0,-a_F,a_F)\) and
\(\widehat u_\ell=(0,b_F,-b_F)\).  Then

\[
a_F=1-t^2+\frac12t^4+O(t^6),\qquad
b_F=t^2-\frac94t^4+O(t^6),
\]

whereas the isolated chain has

\[
a_G=1-\frac12t^4+O(t^6),\qquad
b_G=t^2-\frac16t^4+O(t^6).
\]

So the restored network depletes the selected predecessor at order \(t^2\)
and suppresses the selected successor by
\(-25t^4/12+O(t^6)\).  This is the first lawful back-reaction tax found in
this branch.  It is simultaneous branching, not delayed return.

But the full critical height satisfies

\[
H(t)=6+12(\sqrt2-1)t^2
+\bigl(12-24\sqrt2+6\sqrt3+6\sqrt5\bigr)t^4+O(t^6),
\]

whose displayed growth coefficients are positive.  The side network taxes
one selected relay while increasing total critical height.  A live Gold
theorem therefore cannot use branch counting alone.  The next Taylor
coefficient makes the stronger correction explicit.  With \(h=p-q\) and
\(j=p-r\), the two active diamonds \(q+h=p\) and \(r+j=p\) give

\[
U_p^{[2]}=(0,0,-1)+(0,1,0)=(0,1,-1)=-U_p^{[0]}.
\]

Thus the omitted arms reconverge into the original parent at the first
feedback order.  Moreover, splitting a merged scalar work entry \(x\) into
\(x+A\) and \(-A\) preserves the total but can make a sum of positive ancestry
parts arbitrarily large.  Multi-generation positive ancestry is not an
invariant current unless a canonical decomposition is separately proved.
The lawful object is the complete signed modal/triad source after
reconvergence, exactly the singleton-helicity current already isolated in
F7.123.  The exact proof and recurrence check are in the
[full-network Taylor note](mpp-vpi-full-network-three-arm-relay-taylor-tax-20260722.md)
and its [regression check](../tools/check_full_network_three_arm_taylor_test.rb).

## 13. External structural boundary check

Three primary references support the route boundary without proving any repo
theorem.

1. Waleffe's helical-triad analysis classifies forward and reverse instability
   by the helicities and the unstable member of one triad:
   <https://ntrs.nasa.gov/citations/19920038608>.
2. Tao constructs finite-time blowup for an averaged three-dimensional
   Navier--Stokes bilinear operator that retains the energy cancellation.  It
   proves that energy plus harmonic-analysis-size estimates cannot be the
   missing positive argument:
   <https://arxiv.org/abs/1402.0290>.
3. Albritton's non-endpoint critical Besov blowup theorem requires finite
   Besov summability index and explicitly leaves the endpoint \(q=\infty\)
   outside its result.  This is consistent with, but does not prove, the
   octave-proliferation diagnosis of (MF.5)--(MF.14):
   <https://arxiv.org/abs/1612.04439>.

## 14. Honest landing

Proved in this pass:

1. \(\mathscr M\asymp\|u\|_{\dot B^{1/2}_{2,\infty}}^2\);
2. the amplitude/breadth split and exponential breadth occupancy
   (MF.10)--(MF.12);
3. the stopped moving-front estimate (MF.18)--(MF.21);
4. a remote coarse anchor cannot directly service an arbitrarily fine front;
5. an exact Navier--Stokes solution refutes universal one-step sub-half
   transfer;
6. the exact five-mode true-Leray relay refutes a universal geometry-only
   return/detuning tax in the isolated two-triad normal form;
7. the exact full-equation Taylor jet proves an immediate three-arm branch and
   a selected-successor tax, while also proving simultaneous positive total
   critical-height growth;
8. those branches reconverge into occupied modes at the first feedback order,
   and positive multi-generation ancestry is not a canonical current.

Not proved:

1. a no-Zeno theorem;
2. a full-network autocatalytic successor-service contraction replacing the
   false isolated return/detuning mechanism in (MF.38);
3. a datum-finite upper prefix bound on the complete signed singleton current
   after every reconvergent contribution is summed before positivity;
4. a datum-finite unweighted first-hit sum;
5. the full decaying-R3 helical network lift;
6. any canonical Gold or Silver promotion.

The surviving direction is therefore neither "pressure remembers" nor
"isolated triad return pays each step."  It is:

\[
\boxed{
\text{sum every reconvergent full-network contribution with its sign intact
and bound the upper prefix primitive of the resulting singleton current from
the original datum; any
fresh/passive reset reduction must land in that same canonical aggregate.}
}
\tag{MF.39}
\]
