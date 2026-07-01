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

So the mathematical solution is exact only after the stopped record includes
the scale-native selected generator, not merely the bounded-current part of the
route.  The physical content is that pressure feedback may reorganize the
remaining velocity state, but every reorganization has to enter the parent-known
stopped innovation/native-reserve record before any child finite-difference
readout can clip it as positive action.  Once that record has Carleson/BMO size
and native-reserve square coercivity, the continuum of heat-lag readouts is one
dissipative unfolding of one original signal, not infinitely many new positive
pushes.

## 10. Scale-native audit of the stopped-record solve chain

The stopped-current/BMO route is not allowed to hide the pure scale-native zoom
births.  The repo has already corrected the overstrong reading of bounded
original-packet projection: a unit rescaled selected test has original material
\(L^2\) pullback size \(r^{-1/2}\), so raw bounded-current energy does not pay
every retained high-ratio child readout.

Thus `(TFE.31)`--`(TFE.35)` must be read with the decomposition

\[
\nu^S
=
D_AJ^S
+\nu^{nat,S}
+\nu^S_{stop/legal},
\tag{TFE.42}
\]

where \(D_AJ^S\) is the bounded routed participation current and
\(\nu^{nat,S}\) is the scale-native selected-generator part.  The transform side
of \(D_AJ^S\) is a bounded Hodge projection, and its testing defects reduce to
current square packing.  The native term needs its own reserve map.

Let \(\Gamma_N(P)\) be the retained scale-native feedback/readout births after
parent reuse, bounded fresh Bessel directions, return, reset, reselection,
legal, and stop material have been removed.  The noncircular native line is

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{legal}(\gamma)+Stop(\gamma),
\tag{TFE.43}
\]

with bounded multiplicity and finite original-history native reserve

\[
\operatorname{mult}(\iota)\le C_N,
\qquad
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.44}
\]

Equivalently, in the selected-generator storage form, one needs

\[
\int_{\operatorname{Hist}(P)}
a\,\|G_{sel}\|^2
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{TFE.45}
\]

from parent-known accretive testing/storage data, not from future selected
tail normalization.  In the compressed critical-transfer face this is the
strict one-sided inequality

\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2dt,
\qquad
\theta<1.
\tag{TFE.46}
\]

The standard critical estimate proves `(TFE.46)` only for small
\(\dot H^{1/2}\) packets.  For arbitrary smooth data, `(TFE.43)`--`(TFE.45)` are
the scale-native part of the \(L^1\) theorem.

Consequently the full \(L^1\) solution chain is

\[
\begin{gathered}
\text{bounded routed-current square packing}
+
\text{scale-native reserve/storage coercivity}
\\
\Longrightarrow
\text{parent-known stopped innovation/native record}
\\
\Longrightarrow
\text{strict feedback transit `(TFE.16)`}
\Longrightarrow
\text{terminal-uniform \(L^1\) `(TFE.17)`.}
\end{gathered}
\tag{TFE.47}
\]

This is the accurate resolution of the parent/child/feedback picture: the
feedback loop is one coupled participation law, but it has two mathematical
faces before child clipping.  The bounded-current face pays admitted routed
motion.  The scale-native face pays the high-ratio selected generator that raw
current energy cannot see at bounded original-packet norm.  Gold closes only
when both faces are proved from the original coupled packet.

## 11. Minimal-bad profile for the remaining native line

The direct positive-transfer estimate stalls at arbitrary critical size, so the
nonpositive-forward attack is a minimal-bad reduction.  Failure of
`(TFE.43)`--`(TFE.45)` is equivalent to failure of the weight-beating tail

\[
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
\tag{TFE.48}
\]

while the raw tail remains finite:

\[
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{TFE.49}
\]

Choose terminal blocks \(B_m\) with ratio levels \(\ell\ge L_m\to\infty\) such
that

\[
\sum_{(j,\ell)\in B_m}2^\ell\mu_j(E_{j,\ell}\cap B_m)=1,
\qquad
\sum_{(j,\ell)\in B_m}\mu_j(E_{j,\ell}\cap B_m)\to0 .
\tag{TFE.50}
\]

After removing parent reuse, bounded Bessel directions, return, reset,
reselection, legal, stop, lower-band carry, and bounded routed-current
square-packing, the surviving block has:

\[
A_m^{sel,+}=1,
\qquad
R_m^{raw}+R_m^{current}+R_m^{paid}\to0 .
\tag{TFE.51}
\]

Use material time on each selected band:

\[
d\tau=\Theta_j^{mat}(t)\,dt,
\qquad
{2^{2j}\over\Theta_j^{mat}}\simeq 2^{-\ell}\to0 .
\tag{TFE.52}
\]

Thus the normalized bad block loses heat-time coercivity in the limit.  What
remains is not a detached source; it is a zero-heat-coefficient
material-time profile of the same pressure-viscosity-incompressibility packet.
In the notation of the selected readout differential, a retained selected
coordinate \(a_m\) still satisfies the exact material chain rule

\[
da_m
=
dC_m^{carry}
+dB_m^{hodge/projector}
+dB_m^{strain/frame}
+dB_m^{schur/collar}
+dB_m^{annular}
+dB_m^{freq}
+dR_m^{entr/stop/reset/legal}
-d\mathfrak S_m^{spent}.
\tag{TFE.53}
\]

The minimal-bad normalization forces all already-paid terms in `(TFE.53)` to
vanish in total mass, while

\[
\int [da_m]_+ \to 1 .
\tag{TFE.54}
\]

Therefore the exact rigidity theorem that would finish the \(L^1\) problem is:

```text
ScaleNativeMinimalBadProfileRigidity.A
```

No tangent profile obtained from `(TFE.50)`--`(TFE.54)` can have unit positive
selected material differential while every original-history channel in
`(TFE.53)` has zero limiting native reserve, zero bounded-current square mass,
and zero paid return/reset/legal/stop mass.

Equivalently, for every such minimal-bad profile there is a lower bound

\[
1
\le
C_N
\liminf_m
\left(
\sum_{\rho\in\mathcal R_N^{nat}(B_m)}\rho
+R_m^{current}
+R_m^{paid}
\right).
\tag{TFE.55}
\]

This is exactly the missing native-reserve coercivity in profile form.  It is
strictly sharper than saying "a selected birth has a source channel": the
source-channel statement is pointwise and already follows by differentiating
the selected readout before clipping.  `(TFE.55)` is the global lower
semicontinuity/packing statement saying that a unit positive material-time
selected differential cannot survive as a zero-reserve limit.

The physical reading is clean.  A failed \(L^1\) proof would have to produce a
sequence of smaller and smaller heat-scale children that still show one unit of
positive selected action, while heat, routed current, return, reset, exchange,
legal, stop, and every native-reserve atom disappear in the original packet.
The remaining theorem says that such a profile is impossible inside one coupled
pressure-viscosity-incompressibility law: the unit positive readout must leave a
nonzero original-history native reserve trace.

Thus the live route is now:

\[
\text{ScaleNativeMinimalBadProfileRigidity.A}
\Longrightarrow
\text{native reserve `(TFE.43)`--`(TFE.45)`}
\Longrightarrow
\text{strict feedback transit `(TFE.16)`}
\Longrightarrow
FGC.25 .
\tag{TFE.56}
\]

This is not yet a proof of Gold.  It is the current irreducible profile theorem
for the \(L^1\) problem after all installed no-recount, Schur/Bessel,
stopped-current, reset, return, and local no-fourth-branch mechanisms have been
consumed.

## 12. Affine audit: the profile theorem is same-history, not local

The previous paragraph must not be read as a local Liouville theorem.  The local
affine material jet

\[
u(t,x)=A(t)x,\qquad \operatorname{tr}A(t)=0,
\tag{TFE.57}
\]

is compatible with the local Navier-Stokes material equations after pressure
chooses

\[
p(t,x)
=
-{1\over2}x\cdot(\dot A(t)+A(t)^2)x .
\tag{TFE.58}
\]

So a local trace-free affine strain profile can carry positive material-time
selected action while satisfying pressure compatibility, incompressibility, and
the material acceleration law.  Local pressure/strain compatibility therefore
does not prove `(TFE.55)`.

The global matching audit also rules out the scaling shortcut.  A localized
divergence-free affine packet at radius \(r\) can have normalized material
action of order one while its raw kinetic energy, raw viscous heat-window cost,
pressure work, convective work, and collar matching cost are all \(O(r)\).
Thus a dyadic chain may satisfy

\[
\sum_k r_k<\infty,
\qquad
\sum_k A_k^{sel,+}=\infty .
\tag{TFE.59}
\]

Therefore the actual profile theorem is not

```text
no local affine material-time packet exists.
```

The actual theorem is:

```text
ScaleNativeSameHistoryNoZenoReserve.A
```

For one original smooth incompressible Navier-Stokes material history, a
laminar terminal ancestry of affine/high-ratio material-time visits with
summable raw heat, bounded-current, and collar/matching cost cannot have
divergent normalized selected action unless it leaves a weighted native-reserve
trace on that same ancestry.

Equivalently, for the laminar ancestry \(\mathcal A(P)\),

\[
\sum_{\gamma\subset \mathcal A(P)}A_\gamma^{sel,+}
\le
C_N
\int_{\mathcal A(P)}
\bigl(
dV_C+dV_F+dV_{collar}+dV_{hodge}+dV_{annular}
\bigr)
+R_{legal}(P)+Stop(P),
\tag{TFE.60}
\]

and the right-hand side must be bounded by an original-history weighted
native-reserve measure, not by ordinary volume or raw energy:

\[
\int_{\mathcal A(P)}
\bigl(
dV_C+dV_F+dV_{collar}+dV_{hodge}+dV_{annular}
\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.61}
\]

Equations `(TFE.60)`--`(TFE.61)` are the same content as `(TFE.55)`, but with
the missing same-history inheritance made explicit.  They say that each
order-one affine/high-ratio visit must either spend already-born native reserve,
create a new native reserve atom with bounded multiplicity, or exit through a
paid collar, Hodge/projector, annular, return, reset, legal, or stop channel.

The remaining \(L^1\) proof is therefore sharpened one more step:

\[
\text{ScaleNativeSameHistoryNoZenoReserve.A}
\Longrightarrow
\text{ScaleNativeMinimalBadProfileRigidity.A}
\Longrightarrow
\text{native reserve}
\Longrightarrow
\text{strict feedback transit}
\Longrightarrow
FGC.25 .
\tag{TFE.62}
\]

This removes the overstrong local-profile reading.  The impossible object is
not an affine packet in isolation.  The impossible object must be a whole
same-fluid terminal ancestry that keeps producing affine/high-ratio selected
action while all weighted native-reserve traces on the inherited annular,
Hodge/projector, strain-frame, collar, return, reset, legal, and stop channels
stay summable.

## 13. Branch proof audit of the same-history no-Zeno line

`ScaleNativeSameHistoryNoZenoReserve.A` is still too opaque unless the two ways
an infinite laminar ancestry can persist are separated.

Let \(\mathcal A(P)\) be the retained laminar terminal ancestry after all
bounded-current, parent-reuse, Bessel-fresh, selector/reselection, return,
reset, legal, stop, nonlaminar, and subheat branches have been removed.  Each
retained visit \(\gamma\subset\mathcal A(P)\) has a transported material core
\(K_\gamma\), a selected action \(A_\gamma^{sel,+}\), and a selected ratio
level.  Laminarity gives the structural dichotomy:

1. a repeated-core subfamily, where infinitely many retained visits reuse one
   persistent material core or nested core with the same material identity; or
2. a shrinking-core escape subfamily, where retained unit visits restart on
   smaller transported cores and no fixed material core carries infinite
   selected multiplicity.

This dichotomy is just the tree alternative for a nested laminar ancestry.  It
is a proved structural split, not the \(L^1\) estimate itself.

### Repeated-core branch

On a repeated material core, the required first PDE input is a signed
scale-potential lift before positive clipping:

\[
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_- .
\tag{TFE.63}
\]

Once `(TFE.63)` is constructed from the same material packet, the scalar BV
identity gives the record/return estimate

\[
\sum_{\gamma\subset\mathcal A_{rep}}
A_\gamma^{sel,+}
\le
C_N\Bigl(
\operatorname{Rec}_\infty(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A})
\Bigr)
+Paid(\mathcal A_{rep}).
\tag{TFE.64}
\]

This is the rigorous content of the physical claim that the same material core
cannot be pushed upward again without either making a new record in its
pressure-Hodge/strain/collar state or first returning downward.  The algebraic
descent after the lift is real.  The PDE theorems still needed for this branch
are the lift `(TFE.63)` and the root bound

\[
\int_{\mathcal F_{rep}}
\Bigl(
\operatorname{Rec}_\infty(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A})
\Bigr)\,
d\mathcal R_{\mathcal A}
\le
C_N(u_0)+Paid(P).
\tag{TFE.65}
\]

This is the precise repeated-core part of the original-history entropy loss:
records and returns must be finite from the original coupled packet, not from
the future selected tail.

### Shrinking-core escape branch

On the escaping subfamily, a one-core record storage can reset at every new
core.  The pressure-visible/null and complete-frame routing still give the
branch-local selected lower bound

\[
A_\gamma^{sel,+}
\le
C_N\Bigl(
\operatorname{Cap}^{sel}_{PH}(\gamma)
+\operatorname{Turn}^{sel}_{collar}(\gamma)
\Bigr)
+Paid(\gamma).
\tag{TFE.66}
\]

The word `selected` is essential.  Raw heat, raw pressure-Hodge capacity, raw
collar area, raw viscous cost, and raw material volume can all scale like the
child radius \(r_\gamma\), while \(A_\gamma^{sel,+}\simeq1\).  Therefore the
shrinking branch closes only from the root packing theorem

\[
\sum_{\gamma\subset\mathcal A_{esc}}
\Bigl(
\operatorname{Cap}^{sel}_{PH}(\gamma)
+\operatorname{Turn}^{sel}_{collar}(\gamma)
\Bigr)
\le
C_N(u_0)+Paid(P).
\tag{TFE.67}
\]

This is the selected-capacity no-escape theorem.  It is exactly the place where
the physical state-space picture becomes mathematical: every restart on a
smaller core must delete a definite amount of future accessible same-history
configuration, or the child has not been admitted as a real selected unit.

Combining the branch estimates gives the nonopaque form of
`ScaleNativeSameHistoryNoZenoReserve.A`:

\[
\begin{gathered}
\text{signed scale-potential lift}
+\text{record/return root bound `(TFE.65)`}
\\
+\text{selected-capacity escape packing `(TFE.67)`}
\Longrightarrow
\text{same-history no-Zeno reserve `(TFE.60)`--`(TFE.61)`.}
\end{gathered}
\tag{TFE.68}
\]

Equivalently, the entropy/accessibility functional must be an original-history
ancestry storage

\[
\mathcal E_N(P)
=
\mathcal R_N^{nat}(P)
+\int_{\mathcal F_{rep}}
\bigl(\operatorname{Rec}_\infty+V_-^{return}\bigr)\,d\mathcal R_{\mathcal A}
+\sum_{\gamma\subset\mathcal A_{esc}}
\bigl(\operatorname{Cap}^{sel}_{PH}
+\operatorname{Turn}^{sel}_{collar}\bigr),
\tag{TFE.69}
\]

with the differential loss law

\[
d\mathcal E_N
+c_N\,dA^{sel,+}
\le
dPaid_N,
\qquad
\mathcal E_N\ge0,
\qquad
\mathcal E_N(0)\le C_N(u_0).
\tag{TFE.70}
\]

This is the exact mathematical version of the finite-state feedback picture.
Pressure feedback can re-coordinate the remaining velocity state, but every
positive selected re-coordination must either consume repeated-core
record/return storage or consume shrinking-core selected capacity.  If neither
storage decreases, the child readout is recounting the same parent event rather
than producing new admissible \(L^1\) action.

The current proof state is therefore sharper than `(TFE.62)`: the laminar
same-history dichotomy is installed support, and the scalar BV record/return
algebra is available after the signed lift.  The exact remaining PDE inputs are
the lift `(TFE.63)`, the record/return root bound `(TFE.65)`, and the
selected-capacity escape packing `(TFE.67)`.  Together they imply `(TFE.70)`,
then `(TFE.16)`, then `(TFE.17)`, and hence `FGC.25`.

## 14. Current reduction of the branch PDE inputs

The branch inputs in `(TFE.63)`, `(TFE.65)`, and `(TFE.67)` are not equally
open.  The current repo surfaces separate what is already an identity from what
still needs a noncircular original-data reserve.

### Fixed stopped-channel lift

For a truly fixed stopped channel, the signed lift is constructed.  With
parent-known readout \(\Gamma_R\) and stopped routed carrier \(Z^S\), define

\[
P_R:=\Gamma_R Z^S .
\tag{TFE.71}
\]

Then the retained fixed-core increment satisfies

\[
A_{sel}(e)
\le
C[P_R(Q')-P_R(Q)]_+
+C R_{legal}(Q),
\tag{TFE.72}
\]

and

\[
|\partial_\sigma P_R|
\le
C\bigl(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
+|\operatorname{conn}_\sigma|
\bigr)
+Err_{legal}.
\tag{TFE.73}
\]

Thus `(TFE.63)` is installed only on the fixed stopped-channel branch.  If the
readout \(\Gamma_R\) changes by future child selection, the branch exits to
reselection/reset/legal material rather than remaining a fixed-core lift.

### Return BV is a square-reserve/admission problem

For a return interval \(I\), the original packet gives the weighted square
return estimate

\[
H_I
\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C\int_I w\bigl(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\bigr)
+R_I^{legal}.
\tag{TFE.74}
\]

Summing fixed-core returns is therefore controlled in harmonic square currency:

\[
\sum_{I\subset P}
H_I
\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C_N\mathfrak G_{root}(P)+R_{legal}(P)+Stop(P),
\tag{TFE.75}
\]

where \(\mathfrak G_{root}\) is the original routed-current/root-geometry square
reserve.

The missing step is not another scalar BV identity.  Linear negative return
requires selected admission into this square currency:

\[
\Delta_I^-P_R\ge \eta |I|
\quad\hbox{on retained selected returns}
\tag{TFE.76a}
\]

or an equivalent inverse-weight length bound

\[
\sum_I\int_I w^{-1}\,d\sigma
\le
C_N\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.76b}
\]

With `(TFE.76a)` or `(TFE.76b)`, `(TFE.75)` implies the repeated-core root
bound `(TFE.65)`.  Without one of these selected-admission clauses, square
return control still permits infinitely many tiny selected returns.

So the repeated-core branch is reduced to:

\[
\begin{gathered}
\text{fixed-channel lift `(TFE.71)`--`(TFE.73)`}
+\text{root-geometry square reserve `(TFE.75)`}
\\
+\text{selected return admission `(TFE.76a)` or `(TFE.76b)`}
\Longrightarrow
\text{record/return root bound `(TFE.65)`.}
\end{gathered}
\tag{TFE.77}
\]

This is a strict improvement over saying "prove return BV": the only unsupplied
piece is the selected root-geometry reserve/admission theorem, the same object
called `SelectedGeneratorStorageCoercivity.A` in the native-reserve notes.

### Shrinking-core escape is trace coercivity plus reselection no-escape

For a stopped parent \(S\) with stopped children \(S'\), the parent-stop-child
Dirichlet-to-Neumann Schur complement is

\[
\mathsf S_S^{stop}
:=
\Lambda_S-\bigoplus_{S'\in ch_{stop}(S)}\Lambda_{S'} .
\tag{TFE.78}
\]

Capacity monotonicity gives only nonnegativity of this Schur complement.  The
selected shrinking-core branch needs the stronger trace coercivity

\[
\sum_{S'\in ch_{stop}(S)}A(S')
\le
\langle U_S,\mathsf S_S^{stop}U_S\rangle
+R_{stop}(S)+R_{legal}(S).
\tag{TFE.79}
\]

This is the stopped selected-action trace coercivity form of the selected
capacity lower bound.  It pays genuine source-root / capacity-drop children.

The other shrinking mechanism is strict retained subset reselection.  A smaller
child can avoid material collar compression by selecting a smaller high-action
subset.  That case needs the reselection tax

\[
A(Q_{k+1})\simeq1,\quad Q_{k+1}\subsetneq Q_k,
\quad\hbox{no dyadic material compression}
\Longrightarrow
\mathcal B_{select}(Q_k,Q_{k+1})\ge c_0,
\tag{TFE.80}
\]

with the taxes summable from original stopped history:

\[
\sum_k\mathcal B_{select}(Q_k,Q_{k+1})
\le
C_N(u_0)+R_{legal}(P)+Stop(P).
\tag{TFE.81}
\]

Thus shrinking-core escape is reduced to

\[
\text{stopped selected trace coercivity `(TFE.79)`}
+
\text{retained reselection no-escape `(TFE.80)`--`(TFE.81)`}
\Longrightarrow
\text{selected-capacity escape packing `(TFE.67)`.}
\tag{TFE.82}
\]

Putting `(TFE.77)` and `(TFE.82)` into `(TFE.68)`, the current \(L^1\) closure
target is the single original-data reserve/admission package:

\[
\boxed{
\text{SelectedGeneratorStorageCoercivity.A}
+\text{StoppedSelectedActionTraceCoercivity.A}
+\text{StoppedReselectionNoEscape.A}
}
\tag{TFE.83}
\]

in the coupled original packet.  The first item supplies the repeated-core
root-geometry reserve/admission, while the second and third supply the
shrinking-core escape payment.  These three are not new mechanisms outside the
participation law; they are the exact places where the pressure-heat-viscous
feedback must show that each selected positive child readout consumes a finite
piece of the same original-history state space.

Consequently the active mathematical wall is narrower than the phrase
"prove \(L^1\)" but still not discharged:

\[
\text{`(TFE.83)` from original data}
\Longrightarrow
\text{`(TFE.70)`}
\Longrightarrow
\text{`(TFE.16)`}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.84}
\]
