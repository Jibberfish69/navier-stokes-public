---
theorem_id: vpi-all-high-signed-current-efficiency-and-unparking-regate-20260722
date: 2026-07-22
problem: navier-stokes
route: forward-gold / signed q-adic scale current / all-high phase current
status: proved-normalized-current-threshold-and-route-regate; Gold open
authority_state: theorem-construction; not a continuation theorem
completion_truth: >-
  Normalizes the exact critical-height work by its q-envelope paraproduct
  majorant. At every rising time the resulting oriented-current efficiency
  need only exceed a threshold of order nu/sqrt(M_q), which tends to zero on
  the dangerous concentration branch. Consequently, phase motion, phase
  nonparking, or an unoriented phase-variation floor cannot by itself oppose
  critical growth. A usable phase theorem must at least bound the upper prefix
  primitive of the complete signed current; controlling its positive time
  integral or routing excess into reverse transfer or viscous loss is a
  stronger sufficient route on the same all-high triad population. This is an exact route regate,
  not a bound for M_q, critical height, or Navier--Stokes continuation.
---

# The all-high current needs vanishing phase efficiency to beat viscosity

## 1. The one-field capacity bound

Keep the same smooth, decaying, fixed-viscosity Navier--Stokes field and the
same critical quantities as the moving-band construction:

\[
 H(t)=\int_0^\infty k e(k,t)\,dk,
 \qquad
 M_3(t)=\int_0^\infty k^3e(k,t)\,dk,
\]

\[
 M_q(t)=\sup_{K>0}K\int_K^{qK}e(k,t)\,dk,
 \qquad
 H'(t)+2\nu M_3(t)=P_H(t).
 \tag{PE.1}
\]

The signed q-adic commutator estimate in (TL.1373)--(TL.1375) proves that,
for one fixed constant \(C_q<\infty\),

\[
 \boxed{
 |P_H(t)|\le C_q\sqrt{M_q(t)}\,M_3(t).
 }
 \tag{PE.2}
\]

The right side is not a second source. It is an amplitude majorant for the
same complete triadic current after donor--receiver antisymmetry and
common-face cancellation have been retained. Sections 171, 174, and 175
further show that on an unbounded q-envelope branch the nonabsorbable part is
a finite-span, all-high current; remote spans and fixed coarse deformation
cannot supply it.

## 2. Exact normalized signed-current efficiency

When \(M_qM_3>0\), define

\[
 \boxed{
 \eta_q(t):={P_H(t)\over C_q\sqrt{M_q(t)}M_3(t)},
 \qquad
 \rho_q(t):={C_q\sqrt{M_q(t)}\over2\nu}.
 }
 \tag{PE.3}
\]

Set \(\eta_q=0\) when the denominator vanishes. Equation (PE.2) gives

\[
 |\eta_q(t)|\le1.
 \tag{PE.4}
\]

The critical balance now has the exact dimensionless form

\[
 \boxed{
 H'(t)=2\nu M_3(t)\bigl(\rho_q(t)\eta_q(t)-1\bigr).
 }
 \tag{PE.5}
\]

Therefore every rising time satisfies

\[
 \boxed{
 H'(t)>0
 \quad\Longrightarrow\quad
 \eta_q(t)>{1\over\rho_q(t)}
 ={2\nu\over C_q\sqrt{M_q(t)}}.
 }
 \tag{PE.6}
\]

This is the exact phase/current threshold exposed by the q-envelope bound.
It does not say that \(\eta_q\) is literally one Fourier phase. It is the net
oriented efficiency of the complete signed triad population relative to the
best amplitude-only majorant available in (PE.2). Its sign contains the phase
and orientation information erased by \(M_q\).

## 3. The dangerous threshold degenerates

On a concentration sequence \(M_q(t_n)\to\infty\), (PE.6) requires only

\[
 \eta_q(t_n)>O\!\left({\nu\over\sqrt{M_q(t_n)}}\right)\longrightarrow0.
 \tag{PE.7}
\]

Thus an unbounded envelope does **not** require a fixed positive fraction of
the available all-high trilinear capacity to remain coherently forward. An
ever smaller oriented imbalance can beat viscosity because the nonlinear
capacity-to-loss ratio is itself

\[
 {C_q\sqrt{M_q}M_3\over2\nu M_3}=\rho_q.
 \tag{PE.8}
\]

At an active frequency \(K\), the corresponding paraproduct rate scale
\(C_q\sqrt{M_q}K^2\) is compared with the heat rate \(2\nu K^2\).
Their ratio is again \(\rho_q\); the frequency cancels. This is the critical,
not subcritical, all-high race.

## 4. Why un-parking alone has the wrong logical sign

The existing finite-chain relay-drift and un-parking results say that an
active phase cannot remain indefinitely at a cancellation pose. That is a
motion or non-dwell statement. By itself it supplies neither the orientation
nor the signed time average needed to make
\(\rho_q\eta_q-1\) nonpositive.

Equation (PE.6) makes the gap quantitative. On the dangerous branch it is
enough for the phase-resolved population to retain a positive imbalance of
size \(1/\rho_q\), and that required imbalance tends to zero. A theorem that
only proves nonzero phase motion, escape from exact cancellation, or a lower
bound for unsigned participation can therefore coexist with positive
critical-height growth. In fact, a positive participation floor points in
the forward direction unless the same theorem also identifies its reverse or
dissipative recipient.

This does not refute the relay-drift normal form at its stated scope. It
regates its use in the present PDE lane:

\[
 \boxed{
 \text{phase variation/nonparking}
 \ \not\Longrightarrow\
 \text{signed all-high current contraction}.
 }
 \tag{PE.9}
\]

The already filed predator-slot regate reached the same qualitative need for
an oriented Jordan integral. Equation (PE.6) now gives the exact amplitude-
dependent margin that any such lift must beat on the q-envelope branch.

The all-chord source-curvature lane reaches the same junction from the other
side. Cycle 121 proves that the positive angular Schur diagonal travels with
the next pressure-completed source, heat cross-row, angular flux, and
\(H'/H\); its equation (C121.22) explicitly forbids treating that positive
curvature as an automatic subtraction from scalar source work. Thus the
Cycle 117--121 phase/curvature construction and the present q-current are not
two candidate closures. They meet at one unpaid operation: orient the complete
source tangent against the simultaneous heat/loss row before selecting its
positive part.

## 5. Exact surviving theorem object

The next lawful phase theorem cannot merely show that the triads dance. It
must prove, for the same heat-filtered all-high population and before taking
positive parts, one of the following genuinely signed consequences:

1. the forward contribution has a time-integrated efficiency strictly below
   \(1/\rho_q\) after boundary terms and changing active bands are cancelled;
2. every excess above \(1/\rho_q\) produces a simultaneous reverse-transfer,
   transverse, or viscous payment with a datum-finite total; or
3. the complete network phase current has an oriented cancellation law with
   enough uniform margin to make the positive part of (PE.5) integrable.

The theorem must be uniform as \(\rho_q\to\infty\). A fixed phase-angle floor,
finite-chain nonparking identity, or unsigned activity count does not have
that consequence.

After the helicity quotient, the exact minimum consequence is weaker than the
three positive-part formulations above: a datum-finite upper bound for every
prefix primitive of \(\mathfrak J_{\rm sing}\) already controls critical
height.  The listed alternatives remain lawful stronger sufficient routes.

No item above is proved here. The exact open object remains the
finite-neighbour, all-high, phase-resolved signed q-current which creates
excess over the heat-surviving q/chord tail. Gold remains open; Silver is
unchanged.

## 6. Helicity quotient of the current

The subsequent helical audit sharpens the last paragraph without changing
(PE.2)--(PE.8). Homochiral triads can increase the moving q-envelope, so the
envelope tangent itself cannot be contracted pointwise. They nevertheless
contribute exactly zero to the numerator \(P_H\). If \(o\) is the
unique-helicity leg of a heterochiral triad, its contribution is

\[
 P_{1/2}^{\rm tri}=2\kappa_oT_o.
 \tag{PE.10}
\]

Thus the numerator already factors through the curl-spectral cross-origin
current

\[
 \boxed{
 \mathfrak J_{\rm sing}=\mathfrak Q(0)={1\over2}P_H.
 }
 \tag{PE.11}
\]

The q/chord envelope remains the amplitude and scale gate in the denominator
of \(\eta_q\); its homochiral motion is internal to a level set of total
critical height. The signed object whose upper prefix primitive remains open
is \(\mathfrak J_{\rm sing}\), after all heterochiral triads and q-faces have
been summed with their signs. This removes pointwise q-envelope contraction
and absolute current variation from the minimum live burden. It does not
supply the missing signed-prefix bound.

## Repository dependencies

- mpp-vpi-moving-band-throughput-lifetime-law-20260718.md, especially
  TL.1373--TL.1395;
- mpp-vpi-q-envelope-chord-envelope-equivalence-and-terminal-ancestry-20260722.md;
- mpp-vpi-homochiral-envelope-kernel-and-singleton-helicity-current-20260722.md;
- codex-goal-ontology-cycle-121-tau-normalized-source-block-whole-field-gold-curvature-20260714.md;
- mpp-forward-gold-transversality-relay-drift-lock-20260705.md;
- mpp-forward-gold-codex-f1-cancellation-routing-regate-20260706.md.
