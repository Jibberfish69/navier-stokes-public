---
theorem_id: TowerFeedbackEntropyL1Attempt.A
date: 2026-06-30
route: forward-gold
status: proof-attempt; reduction-sharpened-not-closed
depends_on:
  - FGC.25_terminal_uniform_coupled_jet_service_L1
  - WLF.60_parent_weighted_detector_measure
  - ODP.151_parent_known_critical_frame_lower_edge
  - ODP.152_parent_known_critical_frame_upper_edge
  - ODP.160_affine_root_pressure_memory_quotient
  - ODP.176_ODP.179_parent_weighted_affine_transition_admission_update
verdict: >
  The pressure-heat-viscous feedback loop gives the correct tower-rescaled
  object for the Gold L1 problem. It proves the local damped-gap identity and
  identifies the needed strict feedback-transit inequality. It does not by
  itself close Gold, because kinetic energy cancellation for pressure/transport
  is not a one-sided variation bound for selected child readouts.
---

# Tower feedback entropy attempt for the Gold L1 line

This note records the sharper object produced by the June 30 discussion.  The
physical object is one coupled participation loop:

\[
u(t)
\longmapsto
p[u(t)]
\longmapsto
\hbox{heat-lag viscous readable update}
\longmapsto
u(t+dt)
\longmapsto
p[u(t+dt)].
\tag{TFE.1}
\]

The pressure-compatible parent, the heat-lag child, and the feedback update are
roles inside this same loop.  They are not separate fluids and not separate
payment channels.

## 1. Boundaries of the three roles

The parent packet at time \(t\) is the coupled acceleration instruction

\[
\mathcal F(u)
:=
-u\cdot\nabla u-\nabla p[u],
\qquad
-\Delta p[u]=\partial_i\partial_j(u_i u_j),
\qquad
\nabla\cdot u=0 .
\tag{TFE.2}
\]

Its jurisdiction is instantaneous compatibility: it tells the material packet
which pressure/self-advection acceleration is legal for the current velocity
geometry.

The child packet is the readable velocity/strain output after one heat window.
For a frequency scale \(\lambda\) and heat time \(h_\lambda\sim(\nu\lambda^2)^{-1}\),

\[
u(t+h_\lambda)
=
e^{\nu h_\lambda\Delta}u(t)
+
\int_0^{h_\lambda}
e^{\nu(h_\lambda-\sigma)\Delta}\mathcal F(u(t+\sigma))\,d\sigma .
\tag{TFE.3}
\]

Its jurisdiction is delayed readability: it is the same parent transaction after
parabolic transfer.

The feedback loop starts after this readable update changes \(u\).  Pressure is
then recomputed from the updated velocity geometry:

\[
\mathcal F(u(t+h_\lambda))
=
-u(t+h_\lambda)\cdot\nabla u(t+h_\lambda)
-\nabla p[u(t+h_\lambda)] .
\tag{TFE.4}
\]

Its jurisdiction is recursion: the child update becomes the next parent state.

## 2. Tower-rescaled row

Let \(D_t=\partial_t+u\cdot\nabla\) along the stopped material history.  At tower
rung \(k\),

\[
D_t^{k+1}u
=
\nu\Delta D_t^k u
+
D_t^k\mathcal F(u)
+
\mathsf C_k ,
\tag{TFE.5}
\]

where \(\mathsf C_k\) contains the differentiated material-frame, selector,
Hodge, collar, and commutator terms.

For a dyadic scale \(\lambda\), define the normalized child and parent variables

\[
W_{k,\lambda}
:=
\lambda^s P_\lambda D_t^k u,
\tag{TFE.6}
\]

\[
Y_{k,\lambda}
:=
\nu^{-1}\lambda^{s-2}
P_\lambda\bigl(D_t^k\mathcal F(u)+\mathsf C_k\bigr).
\tag{TFE.7}
\]

Use dimensionless heat time \(r=\nu\lambda^2\sigma\).  On one heat window,
the localized row has the normalized form

\[
D_rW_{k,\lambda}
=
Y_{k,\lambda}-W_{k,\lambda}+E_{k,\lambda},
\tag{TFE.8}
\]

where \(E_{k,\lambda}\) records finite selector motion, packet motion, route,
return, legal, and stop terms.  This is the tower-rescaled version of the
pressure-parent to heat-lag child handoff.

## 3. Local positive-readout inequality

Set the parent-child gap

\[
G_{k,\lambda}:=Y_{k,\lambda}-W_{k,\lambda}.
\tag{TFE.9}
\]

Then

\[
D_rG_{k,\lambda}
=
D_rY_{k,\lambda}-G_{k,\lambda}-E_{k,\lambda}.
\tag{TFE.10}
\]

On the set where \(G_{k,\lambda}>0\),

\[
G_{k,\lambda}
=
D_rY_{k,\lambda}-E_{k,\lambda}-D_r(G_{k,\lambda})_+ .
\tag{TFE.11}
\]

Since \(D_rW_{k,\lambda}=G_{k,\lambda}+E_{k,\lambda}\), the positive child
motion satisfies

\[
(D_rW_{k,\lambda})_+
\le
(D_rY_{k,\lambda})_+
-
D_r(G_{k,\lambda})_+
+
2|E_{k,\lambda}| .
\tag{TFE.12}
\]

After integrating over the heat-time row,

\[
\int (D_rW_{k,\lambda})_+\,dr
\le
(G_{k,\lambda}(0))_+
+
\int (D_rY_{k,\lambda})_+\,dr
+
2\int |E_{k,\lambda}|\,dr .
\tag{TFE.13}
\]

Thus the \(L^1\) problem is pushed exactly onto the positive motion of the
moving parent target \(Y\).  The already-known no-recount logic says that the
same parent child cannot be declared a new parent merely by changing the selected
ratio level.  The remaining issue is whether the parent target's feedback motion
has a strict same-parent bound.

## 4. Strict feedback-transit line needed for closure

Let \(\alpha=(k,\lambda,\gamma)\) include tower rung, scale, packet, and selected
direction.  Let \(b_\alpha\) be the predictable weight announced in the parent
history before the child clips a positive readout.  Define

\[
L_N
:=
\sum_{\alpha\in\mathcal A_N}
b_\alpha
\int_0^{T_*}(D_rW_\alpha)_+\,dr .
\tag{TFE.14}
\]

Summing `(TFE.13)` gives

\[
L_N
\le
G_N(0)
+
\sum_{\alpha\in\mathcal A_N}
b_\alpha\int_0^{T_*}(D_rY_\alpha)_+\,dr
+
Err_N .
\tag{TFE.15}
\]

Here \(G_N(0)\) is the finite initial gap tower and \(Err_N\) is the finite
route/motion/return/legal/stop packet variation.

Gold closure from this formulation is exactly the strict feedback-transit
inequality

\[
\sum_{\alpha\in\mathcal A_N}
b_\alpha\int_0^{T_*}(D_rY_\alpha)_+\,dr
\le
\theta L_N
+
C_N(u_0),
\qquad
\theta<1 .
\tag{TFE.16}
\]

Then `(TFE.15)` absorbs:

\[
L_N
\le
{1\over 1-\theta}
\bigl(G_N(0)+Err_N+C_N(u_0)\bigr).
\tag{TFE.17}
\]

This is the direct tower-feedback version of the terminal-uniform \(L^1\)
positive-readout line.

## 5. Entropy/accessibility reading

For a parent packet \(P\), let \(\mathscr A_{\varepsilon,N}(P,t)\) be the set of
tower-rescaled packet states that are still accessible at resolution
\(\varepsilon\) after the pressure-compatible parent has passed through the
heat-lag child update and the feedback pressure has been recomputed.  The
corresponding state-count readout is

\[
S_{\varepsilon,N}(P,t)
:=
\log N_\varepsilon(\mathscr A_{\varepsilon,N}(P,t)).
\tag{TFE.18}
\]

In this language `(TFE.16)` says:

\[
\hbox{positive motion of parent targets}
\le
\theta\,\hbox{positive motion of readable children}
+
\hbox{finite loss of accessible coupled states}.
\tag{TFE.19}
\]

That is the formal version of the physical picture: pressure may re-coordinate
the remaining velocity state, but the recomputation must be a same-parent
transit through the heat window.  It may rotate or relocate the remaining
accessible states; it may not create a second independent accessibility budget.

## 6. What energy cancellation proves and what it does not prove

The global kinetic identity gives

\[
\int u\cdot(-u\cdot\nabla u-\nabla p)\,dx=0,
\qquad
{d\over dt}{1\over2}\|u(t)\|_2^2
=
-\nu\|\nabla u(t)\|_2^2 .
\tag{TFE.20}
\]

This proves pressure and self-advection are not net kinetic-energy sources.
It does not prove `(TFE.16)`.  The reason is that `(TFE.16)` is one-sided and
selected: it counts positive coordinate motion before cancellation.

The finite-dimensional model

\[
\dot x=a(t)Jx-\mu x,\qquad J^*=-J,
\tag{TFE.21}
\]

has

\[
{d\over dt}|x|^2=-2\mu |x|^2,
\tag{TFE.22}
\]

but a selected coordinate can have arbitrarily large positive variation if
\(a(t)\) rotates the vector many times before damping removes its size:

\[
\int_0^T(\dot x_1)_+\,dt
\quad\hbox{is not bounded by}\quad
|x(0)|^2+\mu\int_0^T|x(t)|^2\,dt
\tag{TFE.23}
\]

uniformly in the rotation speed \(a\).  This is the clean audit of the pressure
feedback problem.  Energy neutrality of the skew part is not enough; Gold needs
same-parent weighted transition admission, or an equivalent entropy
nonexpansion theorem, to prevent selected positive recounting.

In Navier-Stokes the skew rate is not arbitrary.  It is generated by the same
velocity geometry and pressure Poisson law.  Therefore `(TFE.23)` is not a
counterexample to the fluid theorem.  It only proves that the physical statement
"pressure is not an energy source" cannot be used as the missing \(L^1\) proof.

## 7. Direct tower attack on the strict feedback line

The natural attempt is to differentiate the parent target in the tower and
identify it with the next child rung.  From `(TFE.5)`--`(TFE.8)`,

\[
D_rY_{k,\lambda}
=
\mathcal T_{k,\lambda}W_{k+1,\lambda}
+
\mathcal L_{k,\lambda}W_{k,\lambda}
+
\mathcal E_{k,\lambda}^{frame}
+
\mathcal E_{k,\lambda}^{comm},
\tag{TFE.24}
\]

where \(\mathcal T_{k,\lambda}\) is the normalized same-scale tower shift,
\(\mathcal L_{k,\lambda}\) is the local parabolic return term, and the remaining
terms are frame, selector, Hodge, collar, legal, and stop material.

This proves the nonpersistent half of the scale response: a changing parent
target is real packet variation.  It is the tower-feedback version of
`(ODP.159)`.

It does not prove the persistent affine/root half `(ODP.160)`.  The reason is
that the bad survivor is not the ordinary derivative part of \(Y\); it is the
scale-affine average

\[
c_F(t)
=
\int_J\theta_\kappa(\sigma)\,
\widetilde Z^{fr}(\sigma,t)\,d\sigma,
\tag{TFE.25}
\]

the same object as `(ODP.162)`.  Differentiating the tower in time/rung gives a
same-parent derivative identity, but the affine kernel in the scale variable
survives unless one has a second-order scale exactness formula

\[
\widetilde Z^{fr}
=
(\partial_\sigma-1)\partial_\sigma G^{fr}
+R^{fr},
\tag{TFE.26}
\]

or the stopped potential-average bound

\[
\int_0^{T_*}
H_w(t)
\left\|
{1\over |I|}\int_J\Psi^{fr}(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2\,dt
\le
\eta\nu\int_0^{T_*}D_{P,N}(t)\,dt
+C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.27}
\]

Thus the tower-feedback formalization supplies the correct loop and the correct
normalization, but it does not create the affine/root quotient kill for free.
It shows exactly why the proof remains at `(ODP.176)`--`(ODP.179)`: every
feedback transition must be admitted into the parent-announced weighted state
before the selected child clips it, and the persistent affine average must be
paid by Schur storage, potential-average control, second-order scale exactness,
return, reset, legal, or stop material.

## 8. Landing against the current repo hinge

The strict feedback-transit line `(TFE.16)` is the same burden as the current
affine/root quotient package:

\[
(TFE.16)
\Longleftrightarrow
(ODP.176)\text{--}(ODP.179)
\Longrightarrow
(ODP.174)
\Longrightarrow
(ODP.160)
\Longrightarrow
FGC.25 .
\tag{TFE.28}
\]

The equality of role is as follows.

1.  Parent-predictable inherited motion in `(TFE.16)` is \(B_e\) in
    `(ODP.176)`.
2.  Fresh feedback directions not already in the parent span are \(D_e\), and
    must Bessel-pack in the parent-known weighted Hilbert space as `(ODP.177)`.
3.  Repeated admitted motion is Schur storage work in `(ODP.174)`.
4.  Return, reset, selector, legal, and stop terms are the finite packet-motion
    errors \(Err_N\) in `(TFE.15)`.

Thus the June 30 tower-feedback picture fixes the object and the normalization.
It does not erase the remaining theorem.  The remaining theorem is now stated
without the old category error: every pressure-feedback transition selected by
a child heat-lag readout must be parent-announced, admitted, and packed before
positive clipping.

Equivalently, prove `(TFE.16)` from the original coupled
pressure-viscosity-incompressibility packet.  Once `(TFE.16)` is proved,
`(TFE.17)` gives the terminal-uniform \(L^1\) bound and feeds the existing Gold
chain to `FGC.25`.

## 9. How this \(L^1\) line would actually be solved

The solution cannot be a bare energy statement.  It has to build a
parent-known stopped record for the same coupled packet before selected child
readout.  In the existing branch language this is

```text
StoppedRoutedSourceInnovationTesting.A
+ BranchPaidStoppedTestingDefects.A
=> OriginalHistoryHilbertBMOProducer.A
=> OriginalHistorySelectedPotentialAmplificationBV.A
=> (TFE.16)
=> (TFE.17).
```

The required construction is as follows.  For every stopped same-material region
\(S\), decompose the routed original-history source into stopped innovations

\[
\nu^S
=
\sum_{Q\subset S}d\nu_Q^S+\nu^S_{stop/legal},
\tag{TFE.29}
\]

where each retained increment is adapted to the stopped parent filtration and
is built from the original coupled source channels:

\[
d\nu_Q^S
=
d\nu^S_{vis,Q}
+d\nu^S_{press/ex,Q}
+d\nu^S_{return,Q}
+d\nu^S_{reset,Q}
+d\nu^S_{legal,Q}.
\tag{TFE.30}
\]

The first admission line is the martingale/innovation law

\[
\mathbb E(d\nu_Q^S\mid \mathcal F^S_{par(Q)})=0
\quad\hbox{modulo root, legal, and stop mean defects.}
\tag{TFE.31}
\]

Physically, `(TFE.31)` says that after the parent packet has already announced a
pressure-compatible push, the child readout is not allowed to reintroduce that
same push as a new mean force.  Any nonzero mean is not hidden; it is recorded
as root, legal, or stop material.

Let \(T_S\) be the stopped same-material Hilbert/Riesz/martingale transform that
turns the routed source into the stopped record

\[
Z^S=T_S\nu^S.
\tag{TFE.32}
\]

The proof-bearing estimate is the local stopped testing inequality

\[
\sum_{Q\subset P}
\|T_Sd\nu_Q^S\|_{L^2(Q,\mathcal R)}^2
+
\operatorname{Def}_{test}(P)
\le
C_N(u_0)\mathcal R(P)
+C R_{legal}(P)+C Stop(P)
+C\operatorname{Def}_{branch}(P),
\tag{TFE.33}
\]

for every retained stopped subpacket \(P\subset S\).  The branch defect must then
be exactly the finite return/reset variation already isolated elsewhere:

\[
\operatorname{Def}_{branch}(P)
\le
C\operatorname{RetBV}(P)
+C\operatorname{ResetBV}(P)
+C R_{legal}(P)+C Stop(P),
\tag{TFE.34}
\]

and

\[
\operatorname{RetBV}(P)+\operatorname{ResetBV}(P)
\le
C_N(u_0)\mathcal R(P)
+C R_{legal}(P)+C Stop(P).
\tag{TFE.35}
\]

Then stopped \(Tb\) / martingale-transform theory gives the parent-known BMO
record:

\[
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\left[
\sum_{S'\subseteq P'}\sum_{Q\subseteq S'}
\bigl(\|\Delta_Q Z^{S'}\|^2+|e_Q^{S'}|^2\bigr)\mathcal R(Q)
+Stop(P')
\right]
\le
C_N(u_0)+{C R_{legal}(P')\over\mathcal R(P')}.
\tag{TFE.36}
\]

This record carries the three coordinates needed by the \(L^1\) problem:

\[
\mathfrak Z^S=(Z^S,\Psi^S,\Lambda^S).
\tag{TFE.37}
\]

The \(Z^S\) coordinate pays fixed-core inherited return; the \(\Lambda^S\)
coordinate pays reset/overrun variation; the \(\Psi^S\) coordinate pays the
affine/root pressure-memory average:

\[
\int_0^{T_*}
H_w(t)
\left\|
{1\over |J|}\int_J\Psi^S(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+C R_{legal}(P)+C Stop(P).
\tag{TFE.38}
\]

Now decompose the positive motion of the parent target \(Y\) on every selected
edge \(e\):

\[
b_e(D_rY_e)_+\,dr
\le
\theta\,b_e(D_rW_e)_+\,dr
+d\mathcal S_e
+d\mathcal B_e
+d\mathcal R_e,
\qquad \theta<1.
\tag{TFE.39}
\]

Here \(d\mathcal S_e\) is Schur storage/current work on already admitted parent
directions, \(d\mathcal B_e\) is the fresh Bessel/BMO increment from
`(TFE.36)`--`(TFE.38)`, and \(d\mathcal R_e\) is return/reset/legal/stop
variation.  Summing `(TFE.39)` over the stopped tree gives

\[
\sum_{\alpha\in\mathcal A_N}
b_\alpha\int_0^{T_*}(D_rY_\alpha)_+\,dr
\le
\theta L_N+C_N(u_0)+Err_N,
\tag{TFE.40}
\]

which is `(TFE.16)`.  Substitution into `(TFE.15)` gives

\[
L_N
\le
{1\over 1-\theta}
\bigl(G_N(0)+Err_N+C_N(u_0)\bigr).
\tag{TFE.41}
\]

This is the terminal-uniform \(L^1\) estimate.

So the mathematical solution is exact: prove `(TFE.31)`--`(TFE.35)` from the
original coupled Navier-Stokes packet.  The physical content is that pressure
feedback may reorganize the remaining velocity state, but every reorganization
has to enter the parent-known stopped innovation record before any child
finite-difference readout can clip it as positive action.  Once that record has
Carleson/BMO size, the continuum of heat-lag readouts is one dissipative
unfolding of one original signal, not infinitely many new positive pushes.
