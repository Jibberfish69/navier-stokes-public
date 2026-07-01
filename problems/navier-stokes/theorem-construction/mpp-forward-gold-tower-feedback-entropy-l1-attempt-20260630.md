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

### Shrinking-core escape is augmented trace plus exchange feedback

For a stopped parent \(S\) with stopped children \(S'\), the parent-stop-child
Dirichlet-to-Neumann Schur complement is

\[
\mathsf S_S^{stop}
:=
\Lambda_S-\bigoplus_{S'\in ch_{stop}(S)}\Lambda_{S'} .
\tag{TFE.78}
\]

Capacity monotonicity gives only nonnegativity of this Schur complement.  The
repo has already audited that the pure Schur estimate is too strong: a
boundary-flat pressure-Hodge source can be selected through the strain/Hessian
readout while leaving no parent boundary trace.  The installed local line is the
augmented stopped parent drop.  With

\[
\Xi(S):=\Omega_S^{strain/ex}+D_S^{vis/rad},
\tag{TFE.79}
\]

it is

\[
\sum_{S'\in ch_{stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{stop}U_S\rangle
+C\Xi(S)
+R_{stop}(S)+R_{legal}(S).
\tag{TFE.80}
\]

The Schur term pays the pressure-visible quotient.  The \(\Xi\) term pays the
same-material silent part: frame exchange, strain/Hessian exchange, viscous
radius loss, and the motion of the selected packet variables.  This keeps the
parent/child/feedback boundary healthy: the child is not paid by pressure alone,
and the silent child is not a new source outside the participation law.

The other shrinking mechanism is strict retained subset reselection.  A smaller
child can avoid material collar compression by selecting a smaller high-action
subset.  That case needs the reselection tax

\[
A(Q_{k+1})\simeq1,\quad Q_{k+1}\subsetneq Q_k,
\quad\hbox{no dyadic material compression}
\Longrightarrow
\mathcal B_{select}(Q_k,Q_{k+1})\ge c_0,
\tag{TFE.81a}
\]

but the repo's later reconciliation shows that this tax should not remain an
independent measure-theoretic object.  Reselection is a jump of the same
selector packet whose continuous motion is measured by \(\Xi\).  The needed
same-parent no-escape estimate is

\[
\sum_k\mathcal B_{select}(Q_k,Q_{k+1})
\le
C\sum_{S\subseteq P}\Xi(S)+R_{legal}(P)+Stop(P).
\tag{TFE.81b}
\]

Thus the shrinking-core branch closes once the full exchange/reset ledger packs
over the stopped original history:

\[
\sum_{S\subseteq P}\Xi(S)+Reset(P)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.82}
\]

The proof chain for this branch is

\[
\text{augmented stopped parent drop `(TFE.80)`}
+
\text{paid reselection `(TFE.81a)`--`(TFE.81b)`}
+
\text{full exchange packing `(TFE.82)`}
\Longrightarrow
\text{selected-capacity escape packing `(TFE.67)`.}
\tag{TFE.83}
\]

The repeated-core branch collapses to the same global producer.  The stopped
testing-defect charge note gives

\[
\text{StoppedFullExchangeActionCarleson.A}
+
\text{PaidReselectionStoppingCarleson.A}
\Longrightarrow
\text{MaterialAdjointAccretiveTestingData.A}
\Longrightarrow
\text{SelectedGeneratorStorageCoercivity.A}.
\tag{TFE.84}
\]

That supplies the selected root-geometry reserve/admission needed in `(TFE.77)`.
So the current \(L^1\) closure target is not three unrelated suppliers.  It is
the single stopped full-feedback packing package

\[
\boxed{
\text{StoppedFullExchangeActionCarleson.A}
+
\text{PaidReselectionStoppingCarleson.A}
}
\tag{TFE.85}
\]

inside the coupled original packet.  Equivalently, prove the differential
entropy loss

\[
d\mathcal E_N
+c_N\,dA^{sel,+}
\le
C_N\,d\Xi
+dReset+dR_{legal}+dStop,
\qquad
\int_P d\Xi+dReset
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.86}
\]

This is the mathematical version of the physical state-count feedback picture.
The pressure-compatible parent can re-coordinate the velocity state
instantaneously; the heat-lag child is the delayed readable velocity/strain
effect; the feedback loop recomputes pressure from that changed velocity.  The
quantity \(d\Xi\) is the actual motion of the selector/frame/strain packet
through that loop.  A positive selected child readout can be counted only when
that motion spends finite original-history exchange, makes a paid reselection
jump, or drops the Schur capacity.  Since the Schur part telescopes, `(TFE.86)`
is exactly the \(L^1\) state-deletion inequality.

Putting `(TFE.77)`, `(TFE.83)`, and `(TFE.84)` into `(TFE.68)`, the active route is

\[
\text{`(TFE.85)` from original data}
\Longrightarrow
\text{`(TFE.70)`}
\Longrightarrow
\text{`(TFE.16)`}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.87}
\]

The local augmented trace line is installed.  The remaining nonclosed line is
global: prove `(TFE.82)`, or equivalently `(TFE.85)`, from the original coupled
pressure-heat-viscous material history for arbitrary smooth finite-energy data.

## 15. Current collapse of the full-feedback packing line

The later native-birth and no-free-zoom audits sharpen `(TFE.85)` one level
further.  Paid reselection/reset is support once stopped full exchange/root
reserve is available.  The live producer is therefore the selected
scale-native root reserve, equivalently a parent-known critical material
capacity frame:

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{TFE.88}
\]

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.89}
\]

The no-free-zoom audit gives the noncircular form of `(TFE.88)`--`(TFE.89)`.
For a stopped parent \(P\), the selected child packet must be the active
Hodge--Stokes graph packet

\[
D_Q^{act}:=\left(S,\Pi_Q^{act}\nabla_A^2p\right),
\tag{TFE.90}
\]

where \(\Pi_Q^{act}\) is parent-announced before child readout.  Its null space
removes zero-stretch skew-inertial pressure balance, so rigid spin pressure is
not counted as selected squeeze.  The parent stress current is the original
coupled packet:

\[
\mathfrak J_P(\psi)
=
\int_P
u\cdot(-\partial_t\psi-\nu\Delta\psi)
+
(u\otimes u):\nabla\psi
+
p\,\nabla\cdot\psi .
\tag{TFE.91}
\]

The no-free-zoom bridge is then:

\[
a_Q^{act}+b_Q^{term}
\le
C\rho_Q^{term}+Ce_Q^{paid},
\tag{TFE.92}
\]

\[
\sum_{Q\subset P}\rho_Q^{term}
\le
C\|\mathfrak J_P\|_{\mathfrak C_{P,act}^{HS,*}}^2
+C\mathcal V_P^{act}
+CE_{\rm paid}(P),
\tag{TFE.93}
\]

with positive material variation

\[
\mathcal V_P^{act}
=
\int_P |K|^2\,d\mu_P,
\qquad
K=G^{-1/2}D_tG\,G^{-1/2},
\qquad
G=(\nabla_aX)^T\nabla_aX .
\tag{TFE.94}
\]

This is exactly where reversible affine stretch-return cycles are supposed to
be paid: they may erase endpoint \(G(t_2)-G(t_1)\), but they do not erase
positive material variation when the detector family is parent-announced.

The terminal detector audit adds the no-replay correction.  A terminal bill may
not replay an inherited parent detector level.  It must be admitted as a fresh
parent-subtracted increment

\[
\mathcal I_P(Q)
=
\left\|(I-\Pi_{\mathcal E_{Q^-}^{par}})\psi_Q^{act}\right\|_{\mathfrak C_P}^2
+
{(\Delta_B^+)^2\over A_B^{inv}}
+
\int_{I_B}
\left(
|K|^2
+\|\nabla^Pb^{term}\|_{\mathfrak C}^2
+\|\nabla^P\mathcal P^{act}\|_{\mathfrak C}^2
\right)d\mu_P
+Paid_Q .
\tag{TFE.95}
\]

The actual stopped-selector capture line is

\[
Q\notin Bundled_P\cup Stop_P\cup Legal_P\cup CM_P^{end}
\Longrightarrow
a_Q^{act}+b_Q^{term}
\le
C_N\mathcal I_P(Q).
\tag{TFE.96}
\]

The fresh detector part of `(TFE.95)` is Bessel-paid.  The inherited detector
record is paid only when it moves as a parent terminal record.  Low-normalized
terminal dust is not counted eventwise; it stays bundled until a
parent-announced first exit occurs:

\[
s_B^+
=
\inf\left\{
s>s_B^-:
\mathcal B^{term}(s)-\mathcal B^{term}(s_B^-)
\ge
\eta\int_{s_B^-}^{s}w^{-1}\,d\mu_P
\right\}.
\tag{TFE.97}
\]

On such first-exit blocks,

\[
\Delta_B^+
\le
\eta^{-1}{(\Delta_B^+)^2\over A_B^{inv}},
\qquad
{(\Delta_B^+)^2\over A_B^{inv}}
\le
C\int_{I_B}
\left(|K|^2+\|\nabla^Pb^{term}\|_{\mathfrak C}^2\right)d\mu_P
+Paid_B .
\tag{TFE.98}
\]

This pays square-to-linear terminal conversion for retained first exits.  The
interior zero-increment kernel is also paid.  Indeed,

\[
D_tG=2F^TSF,\qquad
K=G^{-1/2}D_tG\,G^{-1/2}=2O^TSO,
\tag{TFE.99}
\]

so \(K=0\) forces \(S=0\).  The remaining pressure curvature is the rigid-spin
inertial balance already removed by the active quotient.  Thus a retained
parent-announced chart has no positive interior active graph packet with zero
fresh detector increment, zero material metric motion, zero terminal-record
motion, and zero active quotient motion.

After these reductions, the only surviving Gold obstruction is fixed-core
terminal concentration of the same full packet.  The required no-atom storage is

\[
\mu_{P,fix}^{crit}(T_\rho(z_0))
\le
C\,\operatorname{Osc}_{T_{c\rho}(z_0)}\Phi_P
+
C(E_{\rm paid}+R_{\rm legal}+Stop)(T_{c\rho}(z_0)),
\tag{TFE.100}
\]

\[
\lim_{\rho\downarrow0}
\sup_{z_0}
\operatorname{Osc}_{T_{c\rho}(z_0)}\Phi_P
=0 .
\tag{TFE.101}
\]

A sufficient positive route is a root-fixed endpoint Hardy/no-jump modulus for
the same full-packet storage:

\[
-d\mathcal L_P
\ge
c\,d\mu_P^{end}-d\lambda_P,
\qquad
\sum_j[\mathcal L_P(t_j^-)-\mathcal L_P(t_j^+)]_+
\le
\mathcal L_P(t_0)-\inf\mathcal L_P+Paid(P),
\tag{TFE.102}
\]

\[
\lim_{\rho\downarrow0}\sup_{z_0}
\big[-\Delta_{T_\rho(z_0)}\mathcal L_P\big]_+=0
\quad\text{or}\quad
\sup_P\int_{-1}^{0}(-s)^{-\alpha}\,d(-\mathcal L_P)_+(s)<\infty .
\tag{TFE.103}
\]

Child-renormalized descent does not prove this; it can pay the same terminal
pulse once in every zoom coordinate.  The storage must be root-fixed on the
original parent material history.

Consequently the current \(L^1\) proof spine is:

\[
\text{root-fixed full-packet terminal no-jump `(TFE.100)`--`(TFE.103)`}
\Longrightarrow
\text{parent-current active graph no-free-zoom `(TFE.92)`--`(TFE.98)`}
\Longrightarrow
\text{native birth packing `(TFE.88)`--`(TFE.89)`}
\Longrightarrow
\text{stopped full exchange `(TFE.82)`/`(TFE.85)`}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.104}
\]

If `(TFE.101)`--`(TFE.103)` fails, the surviving endpoint pulse is not a hidden
Gold payment.  After same-witness admission it is the CM endpoint-face branch,
not Gold closure.

## 16. Terminal producer audit: what would actually solve the \(L^1\) problem

The July 1 audit checks the only remaining place where a false closure can hide.
The physical statement "finite initial energy is drained by viscosity" is true
in the original energy currency, but the selected terminal \(L^1\) bill is an
unweighted heat-scale readout.  Gold closure needs the theorem that removes this
weight inside the same root-fixed parent packet.

Let \(\mathcal Q_P^{term}\) be the retained terminal heat-scale children of a
root parent \(P\), after parent reuse, fresh Bessel entry, Schur update, return,
motion, reset, legal, stop, and CM endpoint-face exits have been removed.  Write
\(A_Q^{sel,+}\) for the selected normalized positive action of \(Q\).  The
terminal \(L^1\) line is equivalent to the unweighted parent-packet reserve

\[
\sum_{Q\in\mathcal Q_P^{term}} A_Q^{sel,+}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.105}
\]

The original physical energy and viscous drain only give weighted estimates of
the schematic form

\[
\sum_{Q\in\mathcal Q_P^{term}}
r_Q^\beta A_Q^{sel,+}
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P),
\qquad
\beta>0,
\tag{TFE.106}
\]

because parabolic normalization divides out powers of the child radius.  Thus
the model terminal family

\[
r_Q=2^{-Q},
\qquad
A_Q^{sel,+}\simeq 1
\tag{TFE.107}
\]

is invisible to `(TFE.106)` since \(\sum_Q r_Q^\beta<\infty\), but it defeats
`(TFE.105)` since \(\sum_Q A_Q^{sel,+}=\infty\).  This is the exact mathematical
form of the terminal heat-scale pulse obstruction.  It is not a new force and
not a decoupled pressure channel; it is the same coupled pressure--heat--
viscous packet being read in the child normalization without an unweighted
root reserve.

Equivalently, every attempted storage proof must prove a root-fixed domination
measure

\[
d\mu_{P,fix}^{crit}
:=
\sum_{Q\in\mathcal Q_P^{term}} A_Q^{sel,+}\,\delta_Q
\le
C\,d(-\mathcal L_P)_+
+d\lambda_P,
\tag{TFE.108}
\]

where \(\mathcal L_P\) is an original-history storage, bounded below on the
root parent, and \(d\lambda_P\) is already paid legal/stop/exit material.  The
terminal no-jump part is then the uniform tail condition

\[
\lim_{\theta\downarrow0}
\sup_{P}
\left(
\int_{T_*-\theta}^{T_*}d(-\mathcal L_P)_+
+\int_{T_*-\theta}^{T_*}d\lambda_P
\right)
=0 .
\tag{TFE.109}
\]

`(TFE.108)` plus `(TFE.109)` implies `(TFE.100)`--`(TFE.103)` and hence the
terminal-uniform \(L^1\) estimate.  Conversely, `(TFE.100)`--`(TFE.103)` imply
`(TFE.108)`--`(TFE.109)` after replacing \(\mathcal L_P\) by the oscillation
envelope \(\Phi_P\) and absorbing the paid terms.  So this is not another
support lemma; it is the same Gold wall in non-aliased measure language.

The older endpoint \(L^p\) and Hardy routes fit exactly here.  If the retained
terminal density satisfies, for some \(p>1\),

\[
\sup_{Q\in\mathcal Q_P^{term}}\|\rho_Q\|_{L_s^p(-1,0)}<\infty,
\tag{TFE.110}
\]

or satisfies a uniform Hardy moment, then Holder or Hardy gives `(TFE.109)`.
But `(TFE.110)` is not supplied by finite \(L^1_s\) mass or by preterminal
smooth density.  The pulse

\[
\rho_m(s)={a\over \theta_m}\mathbf 1_{(-\theta_m,0]}(s),
\qquad
\theta_m\downarrow0,
\tag{TFE.111}
\]

is smooth before the endpoint, has fixed \(L^1_s\) mass, converges to a terminal
atom, and has \(\|\rho_m\|_{L_s^p}\to\infty\) for every \(p>1\).  Therefore a
proof that uses only local preterminal absolute continuity, finite legal mass,
finite physical energy, or weighted viscous drain has not solved the \(L^1\)
problem.

The endpoint \(L^p\) route therefore has the exact producer split

\[
\begin{gathered}
\text{full-packet-first order lock}
\text{ or super-}L^1\text{ payment of the order-lock gap}
\\
+
\text{finite-jet temporal tower }W_s^{1,1}
+
\text{annular harmonic pressure super-}L^1
+
\text{residue density/absorption policy}
\\
\Longrightarrow
\text{`(TFE.110)'}
\Longrightarrow
\text{`(TFE.109)'} .
\end{gathered}
\tag{TFE.112a}
\]

The finite-jet tower piece is a real consumer theorem: a \(W_s^{1,1}\) bound
rules out the pulse because the pulse has unbounded time variation.  It is not
the full producer.  The order-lock gap, harmonic pressure memory, and residue
channels are exactly where a naked terminal \(L^1\) pulse can still enter.

The exact solve criterion is now:

\[
\boxed{
\text{prove `(TFE.105)`, equivalently `(TFE.108)`--`(TFE.109)`, from the
original coupled pressure--viscosity--incompressibility material history.}
}
\tag{TFE.112}
\]

In physical terms: pressure can put the compatibility signal everywhere at
once, viscosity can drain the readable velocity/strain response through heat
time, and incompressibility keeps this as one participation law.  The missing
Gold theorem is the unweighted statement that this same transaction cannot be
recounted as one fresh unit of selected terminal action at every smaller
heat-scale child while the original parent only spends the radius-weighted
physical drain.  Proving that unweighted upgrade is the \(L^1\) solution.
Failure of that upgrade is exactly the retained terminal endpoint pulse already
typed as a same-witness CM endpoint-face branch; it is not Gold closure.

## 17. Minimal-bad solve test for the unweighted terminal line

The clean way to attack `(TFE.105)` is by contradiction.  Assume the
root-fixed unweighted reserve fails for one original parent packet \(P\).  Then
there are retained terminal blocks \(B_m\subset\mathcal Q_P^{term}\) such that,
after normalizing the selected bill,

\[
\sum_{Q\in B_m}A_Q^{sel,+}=1,
\qquad
\sum_{Q\in B_m}r_Q^\beta A_Q^{sel,+}\to0,
\qquad
\lambda_P(B_m)\to0 .
\tag{TFE.113}
\]

The second condition says that the ordinary heat-radius weighted physical drain
does not see the block.  The third says that legal, stop, reset, and already
routed endpoint material have been removed.  The only possible survivor is
therefore a unit selected terminal train whose physical radius tends to zero
faster than the root parent spends unweighted material.

The installed admission gates let the block be chosen so that all fake
offspring have already been removed:

\[
B_m\cap
\big(
Reuse_P\cup Bessel_P\cup Schur_P\cup Return_P\cup Motion_P
\cup Reset_P\cup Legal_P\cup Stop_P\cup CM_P^{end}
\big)
=\varnothing
\tag{TFE.114}
\]

up to terms whose total selected mass tends to zero.  This is the formal
meaning of "no recount": retained mass is not old Schur current, not fresh
Bessel entry, not a return, not selector motion, not legal/stop material, and
not already a same-witness endpoint face.

The terminal-overlap and order-lock notes solve the next step only after
same-carrier admission.  On a fixed transported annular atlas they give

\[
\int_{-\theta_j}^{0} C_j(s)\,ds
\le
C\int_{J_j}A_{4B}(\sigma)\,d\sigma,
\qquad
\sum_j{\bf 1}_{J_j}\le K .
\tag{TFE.115}
\]

Thus a terminal pulse cannot repeat infinitely often after it has entered the
unweighted four-body activity \(A_{4B}\).  Bounded overlap is not the reserve
upgrade.  It is the no-double-counting argument after the reserve admission has
already happened.

Consequently a normalized bad block satisfying `(TFE.113)`--`(TFE.114)` must
leave one of the following non-aliased residuals:

\[
1
\le
C\liminf_{m\to\infty}
\sum_{Q\in B_m}
\left(
\Delta_Q^{ol}
+F_Q^{jet}
+H_Q^{har}
+R_Q^{res}
+C_Q^{crit}
\right).
\tag{TFE.116}
\]

Here \(\Delta_Q^{ol}\) is the full-packet order-lock overlap gap,
\(F_Q^{jet}\) is unbounded temporal variation in the finite derivative tower,
\(H_Q^{har}\) is the harmonic pressure-memory collar tail, \(R_Q^{res}\) is
unabsorbed endpoint residue density, and \(C_Q^{crit}\) is the parent-known
critical active Hodge-Stokes/native-reserve charge.  These are not separate
physical laws.  They are the possible coordinates in which the one coupled
pressure--heat--viscous packet can fail to be admitted into the root-fixed
unweighted parent reserve.

The exact closure theorem is therefore the following exhaustion with a root
bound:

\[
\sum_{Q\subset P}
\left(
\Delta_Q^{ol}
+F_Q^{jet}
+H_Q^{har}
+R_Q^{res}
+C_Q^{crit}
\right)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{TFE.117}
\]

with any failure of a listed channel routed to the same-witness CM endpoint
face rather than retained as Gold mass.  Combining `(TFE.116)` and `(TFE.117)`
contradicts `(TFE.113)`, hence proves `(TFE.105)`.

So the physical state-space picture becomes a sharp mathematical test:
pressure feedback may re-coordinate the future velocity state, and heat may
delay when that re-coordination becomes readable, but a retained selected unit
must delete one unit of root-fixed future accessibility in one of the five
coordinates in `(TFE.116)`.  If the selected unit deletes nothing in the
original parent history, it is a recount.  If it deletes something, `(TFE.117)`
is the finite root budget.  The current repo proves several admissions and the
post-admission bounded-overlap step, but the full root bound `(TFE.117)` is the
actual unweighted \(L^1\) solve line.

## 18. Collapse of `(TFE.117)` to the critical native / affine quotient root bound

The five terms in `(TFE.117)` are not five independent physical suppliers.  The
source audit gives the following reduction.

Once the selected packet is order-locked to the full same-carrier four-body
activity, the order-lock gap is a channel admission term:

\[
\sum_Q\Delta_Q^{ol}
\le
C\sum_Q A_{4B}(Q)
+Paid(P)
+EndpointFace(P).
\tag{TFE.118}
\]

The terminal-overlap no-jump note then gives bounded-overlap summation after
this admission.  So \(\Delta^{ol}\) is not a separate producer of unweighted
\(L^1\).  It is the name for failure to enter the same \(A_{4B}\) packet, and
that failure is selector/collar/legal/endpoint material.

The finite-jet temporal tower has the same status.  On a fixed stopped channel,
the signed primitive

\[
P_R=\Gamma_R Z^S
\tag{TFE.119}
\]

has positive increment control and derivative domination by the original routed
current, frame, turnstile, covector, and exchange variation.  Thus the
finite-jet term is paid on fixed stopped channels and exits to reset/legal when
the channel is not parent-known:

\[
\sum_Q F_Q^{jet}
\le
C\int_{\operatorname{Hist}(P)}
\left(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
+|\operatorname{conn}_\sigma|
\right)
+Paid(P).
\tag{TFE.120}
\]

This is a derivative/variation readout of the same packet, not an independent
terminal reserve.

The harmonic pressure-memory term is also routed rather than producer-grade.
After the local pressure trace has passed, the harmonic part enters the
localized packet only through the cutoff/collar pressure flux.  Hence

\[
\sum_Q H_Q^{har}
\le
CollarPressFlux(P)+SelectorCollar(P)+EndpointFace(P)+Paid(P).
\tag{TFE.121}
\]

Uniform terminal absolute continuity of that collar flux is a consumer route;
concentration of it is the endpoint face, not a hidden Gold payment.

Endpoint residues behave the same way.  The endpoint-uniform-integrability
notes prove that finite \(L^1\), finite BV, finite routing, or visible terminal
classification does not kill the terminal pulse.  A residue contributes to Gold
only after it is made density-level with a super-\(L^1\)/Hardy/Orlicz modulus or
absorbed into the same full packet:

\[
\sum_Q R_Q^{res}
\le
EUI_P^{res}
+EndpointFace(P)+Paid(P),
\tag{TFE.122}
\]

where \(EUI_P^{res}\) means an actually proved endpoint-uniform-integrability
modulus for the residue density.  Without that modulus, the residue is routed
to the same-witness endpoint face rather than retained in Gold.

Therefore `(TFE.117)` reduces, on the no-endpoint-face Gold branch, to the
critical selected native/root charge:

\[
\sum_{Q\subset P}
\left(
\Delta_Q^{ol}+F_Q^{jet}+H_Q^{har}+R_Q^{res}+C_Q^{crit}
\right)
\le
C\sum_{Q\subset P} C_Q^{crit}
+Paid(P),
\tag{TFE.123}
\]

with the understanding that any failure of `(TFE.118)`--`(TFE.122)` has already
left the retained Gold branch.

The remaining root theorem is exactly the native reserve map:

\[
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{TFE.124}
\]

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}
\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.125}
\]

Equivalently, in the heat-lag/Volterra coordinate this is the parent-known
critical-frame pair `(ODP.151)`--`(ODP.152)`.  The lower-triangular split shows
why the usual first-order scale descent does not prove it.  The fresh far-corona
response splits into a derivative half and a persistent affine quotient:

\[
\mathrm{FCTS}^{fr}_P
=
\mathrm{DER}^{fr}_P+\mathrm{AQK}^{fr}_P.
\tag{TFE.126}
\]

The derivative half is paid by real scale motion, route/return, legal, stop, and
viscous packet variation.  The persistent half is

\[
\mathrm{AQK}^{fr}_P
=
\int_0^{T_*}H_w(t)\|c_F(t)\|_{L_x^2}^2\,dt,
\tag{TFE.127}
\]

where \(c_F\) is the affine scale quotient of the fresh source.  First-order
signed scale descent gives

\[
c_F(t)
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+{1\over |I|}\int_J\Psi(\sigma,t)\,d\sigma
+\mathcal C_\theta[S^{spill}](t)
+\mathcal C_\theta[E](t).
\tag{TFE.128}
\]

The endpoint and spill terms are routed.  The surviving term is the weighted
potential average

\[
\int_0^{T_*}
H_w(t)
\left\|
{1\over |I|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt .
\tag{TFE.129}
\]

Current sources prove a consumer estimate for `(TFE.129)` only after an
endpoint-corrected parent-known stopped potential record has already been built
from original history.  They do not build that record.  The two noncircular
ways to finish the Gold \(L^1\) line are therefore:

\[
\text{OriginalHistorySelectedPotentialAmplificationBV.A}
\tag{TFE.130a}
\]

with parent-known \(H_w\) and endpoint-corrected \(\Psi^\sharp\), or

\[
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}
+R^{fresh}
\tag{TFE.130b}
\]

with the remainder controlled in the same root packet.

This is the sharpened answer to the physical question.  The possible number of
future packet states is controlled only after selected amplification has a
parent-known log-scale record.  Pressure feedback can rearrange the remaining
state, but it cannot be counted as new \(L^1\) action once its affine quotient
has entered that record.  The repo has the post-admission no-recount and
bounded-overlap machinery.  The remaining mathematical producer is the
original-history construction of that selected amplification / affine quotient
record, or an equivalent second-order exactness theorem for the positive fresh
stress source.

## 19. The amplification record is a stopped testing theorem, not a new name

The next source audit goes one level below `(TFE.130a)`.  The file
`mpp-forward-gold-original-history-selected-potential-amplification-bv-producer-20260627.md`
does not construct the record; it proves that fresh potential-average kill and
critical reset/overrun BV are two projections of one parent-known stopped
record

\[
\mathfrak Z^S=(Z^S,\Psi^S,\Lambda^S).
\tag{TFE.131}
\]

The desired record estimate is

\[
\mathcal E_{SPA}(P)
\le
C_N(u_0)+C R_{legal}(P),
\tag{TFE.132}
\]

where \(\mathcal E_{SPA}\) contains the weighted stopped potential average,
critical stopped variation of the selected amplification coordinate, the
stopped square function of \(\Delta_QZ^S\), testing defects, and stop material.
If `(TFE.132)` is available, `(TFE.130a)` follows.

The direct production test shows that `(TFE.132)` is not produced by entropy
language, selector kinematics, or the Hilbert bubble lift alone.  Entropy is a
super-\(L^1\) consumer; selector kinematics pays moving-label error; the Hilbert
lift is circular unless its root energy is bounded from original history rather
than from the future selected tail.

The noncircular bottom form is the stopped BMO/testing theorem.  Construct a
stopped routed source measure \(\nu^S\) and a stopped same-material
Hilbert/Riesz/martingale transform \(T_S\) such that

\[
Z^S=T_S\nu^S
\tag{TFE.133}
\]

and prove the testing estimate

\[
\sup_{P\subseteq S}
{1\over\mathcal R(P)}
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C_N(u_0)+{R_{legal}(P)\over\mathcal R(P)} ,
\tag{TFE.134}
\]

with cancellation defects and testing defects Carleson over the stopped tree:

\[
\sum_{P\subseteq P_0}Def_{test}(P)
\le
C_N(u_0)\mathcal R(P_0)+C R_{legal}(P_0).
\tag{TFE.135}
\]

Then stopped \(T1/Tb\) or martingale-transform theory gives the BMO
square-function bound

\[
\sup_{P'\subseteq P}
{1\over\mathcal R(P')}
\sum_{Q\subseteq P'}
\|\Delta_QZ^S\|^2\mathcal R(Q)
\le
C_N(u_0)+{R_{legal}(P')\over\mathcal R(P')}.
\tag{TFE.136}
\]

This gives the selected log-amplification Carleson estimate, hence the
endpoint-uniform-integrability consumer, hence the unweighted terminal \(L^1\)
line.

So the proof spine is now:

\[
\begin{gathered}
\text{StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A}
\\
\Longrightarrow
\text{OriginalHistorySelectedPotentialAmplificationBV.A}
\\
\Longrightarrow
\text{AQK / critical native root bound}
\Longrightarrow
\text{`(TFE.117)'}
\Longrightarrow
\text{`(TFE.105)'} .
\end{gathered}
\tag{TFE.137}
\]

The honest obstruction is therefore no longer a vague \(L^1\) service problem.
It is the stopped accretive testing problem for the original same-material
routed source.  Packetwise local payment proves size, not testing.  The missing
mathematical fact is cancellation plus local testing plus Carleson packing for
\(\nu^S\) before the child-selected positive readout is allowed to choose the
detector.

## 20. Parent-capacity drop: the exact \(L^1\) solve kernel

The preceding reductions leave one theorem-shaped object, not a list of
unrelated suppliers.  A retained selected child can be counted in \(L^1\) only
when it is paid by a drop of a parent-known same-material capacity.  The exact
one-step statement is the following.

For every stopped parent \(P\), construct a nonnegative capacity
\(\mathfrak C_P(Q)\) on the retained children \(Q\subset P\), built before
positive child clipping from the original coupled
pressure--viscosity--incompressibility material history, such that

\[
\sum_{Q'\in ch(Q)} A_{Q'}^{sel,+}
+
\sum_{Q'\in ch(Q)}\mathfrak C_P(Q')
\le
\mathfrak C_P(Q)
+R_{legal}(Q)+Stop(Q).
\tag{TFE.138}
\]

The root and terminal conditions are

\[
\mathfrak C_P(P)\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{TFE.139}
\]

and

\[
\lim_{\theta\downarrow0}
\sup_P
\sum_{\substack{Q\subset P\\ Q\cap (T_*-\theta,T_*)\ne\varnothing}}
\mathfrak C_P(Q)
=0
\tag{TFE.140}
\]

after legal, stop, and same-witness endpoint-face exits have been removed.
Summing `(TFE.138)` over the stopped tree gives

\[
\sum_{Q\subset P}A_Q^{sel,+}
\le
\mathfrak C_P(P)
+R_{legal}(P)+Stop(P)
+\liminf_{\theta\downarrow0}
\sum_{\substack{Q\subset P\\ Q\cap (T_*-\theta,T_*)\ne\varnothing}}
\mathfrak C_P(Q).
\tag{TFE.141}
\]

Using `(TFE.139)`--`(TFE.140)` gives `(TFE.105)`.  Thus `(TFE.138)` is the
minimal algebraic solve kernel for the unweighted terminal \(L^1\) problem.

The capacity cannot be just raw routed-current energy.  If

\[
\mathfrak C_P^{raw}(Q)
=
\int_{\widehat Q}|J^S|^2\,d\mathcal R,
\tag{TFE.142}
\]

then the pressure-Hessian-balanced affine half-tail has

\[
A_{Q_k}^{sel,+}\simeq1,
\qquad
\mathfrak C_P^{raw}(Q_k)\lesssim r_k,
\qquad
\sum_k r_k<\infty .
\tag{TFE.143}
\]

So raw current energy can satisfy
\(\sum_k\mathfrak C_P^{raw}(Q_k)<\infty\) while
\(\sum_kA_{Q_k}^{sel,+}=\infty\).  This is why bounded projection, finite
energy, local pressure-Hodge testing, and post-admission BMO all remain
downstream of the same missing first-ratio theorem.

Therefore the capacity in `(TFE.138)` must have a scale-native part:

\[
\mathfrak C_P
=
\mathfrak C_P^{route}
+
\mathfrak C_P^{nat}
+
\mathfrak C_P^{test}
+
\mathfrak C_P^{exit}.
\tag{TFE.144}
\]

Here \(\mathfrak C^{route}\) is the same-material routed current capacity,
\(\mathfrak C^{test}\) is the stopped testing/BMO defect capacity,
\(\mathfrak C^{exit}\) is legal/stop/endpoint material, and
\(\mathfrak C^{nat}\) is the native same-history reserve that must see the
shrinking affine child in the original parent history.  The native part is the
only term capable of turning the radius-weighted raw cost into unweighted
selected \(L^1\) action.

The exact native no-Zeno theorem is

\[
\sum_{Q'\in ch(Q)} A_{Q'}^{sel,+}
+
\sum_{Q'\in ch(Q)}\mathfrak C_P^{nat}(Q')
\le
\mathfrak C_P^{nat}(Q)
+
C\left(
\mathfrak C_P^{route}(Q)-\sum_{Q'}\mathfrak C_P^{route}(Q')
\right)_+
+Paid(Q).
\tag{TFE.145}
\]

Equivalently, in birth-packing language, every retained scale-native child
\(\gamma\) must be assigned to a bounded-multiplicity original-history reserve
atom:

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{TFE.146}
\]

with

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.147}
\]

`(TFE.145)` and `(TFE.146)`--`(TFE.147)` are the same theorem in two
coordinates.  In the critical fractional-energy coordinate they are the strict
positive-transfer estimate

\[
\int_0^\tau
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C_N(u_0)
+\theta\nu\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1 .
\tag{TFE.148}
\]

`(TFE.148)` is not a pressure-only or velocity-only assertion.  It is the
compressed Eulerian readout of the same coupled participation law.  The
physical content is that pressure can re-coordinate the remaining state and
heat can delay the readable child, but the feedback cannot create infinitely
many new selected positive states unless the original same-history native
capacity drops infinitely many times.

The direct local route to `(TFE.145)` is exhausted by the affine profile:

\[
u(x,t)=A(t)x,\qquad \operatorname{tr}A(t)=0,\qquad
p(x,t)=-{1\over2}x\cdot(\dot A(t)+A(t)^2)x,
\tag{TFE.149}
\]

for which the local incompressible Navier--Stokes law holds and \(\Delta u=0\).
Thus no local strain-equation, pressure-Hessian, or raw heat argument can prove
the native drop.  The theorem must use the fact that all retained affine visits
belong to one original transported material history:

\[
\text{one same-history laminar ancestry}
+\text{ pressure-Hessian-balanced affine visits}
\Longrightarrow
\sum_k A_{Q_k}^{sel,+}<\infty .
\tag{TFE.150}
\]

This is the current exact Gold \(L^1\) wall:

\[
\text{GlobalSameHistoryAffineBurstNoZeno.A}
\Longleftrightarrow
\text{NativeBirthChargePacking.A}
\Longleftrightarrow
\text{ParentCapacityDrop `(TFE.138)'}
\Longleftrightarrow
\text{terminal-uniform \(L^1\) `(TFE.105)'} .
\tag{TFE.151}
\]

The downstream proof after `(TFE.151)` is complete in this note: `(TFE.138)`
telescopes to `(TFE.105)`, `(TFE.105)` gives the endpoint-uniform \(L^1\)
line, and the existing full-clock/readout relay gives continuation.  The
remaining unsolved mathematical producer is precisely the same-history
native-capacity drop `(TFE.145)` for the affine half-tail; calling raw current
energy, entropy, local pressure compatibility, or BMO testing a producer would
reintroduce the already-audited half-tail gap.

## 21. Direct attack below `(TFE.145)`: branch split and surviving trace atom

The proof method below `(TFE.145)` is a minimal-bad-tree split.  Assume the
native capacity drop fails after all parent reuse, fresh bounded-Riesz entry,
Schur update, return, reset, reselection, legal, stop, and endpoint-face exits
already listed above have been removed.  Then the retained selected mass has an
extremal subtree with

\[
\sum_{Q\in\mathcal T_P}A_Q^{sel,+}=\infty .
\tag{TFE.152}
\]

The monotone selected multiplier has no hidden extremizer: because
\(A_Q^{sel,+}\ge0\), the maximal monotone test is the constant test.  Hence a
failure of `(TFE.145)` has only two non-aliased branches.

First, a reused material core carries divergent action on one laminar ancestry
line,

\[
Q_0\supset Q_1\supset Q_2\supset\cdots,
\qquad
\sum_k A_{Q_k}^{sel,+}=\infty .
\tag{TFE.153}
\]

The installed laminar/complete-frame tax pays each visit by positive
Cauchy--Green deformation, Hodge-frame rotation, collar-normal separation, or
annular turnstile variation on that same ancestry line:

\[
\sum_{Q_k\subset\mathcal A(a)}A_{Q_k}^{sel,+}
\le
C\,\mathcal V_{\rm core}(a)+R_{legal}(\mathcal A(a)).
\tag{TFE.154}
\]

This is a real support theorem, but it is not a root bound.  The exact missing
line in this branch is

\[
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.155}
\]

Second, every reused ancestry line has finite selected mass, but selected mass
escapes through shrinking cores:

\[
r_k\downarrow0,\qquad
A_{Q_k}^{sel,+}\simeq1,\qquad
\sum_k r_k<\infty .
\tag{TFE.156}
\]

This is exactly the pressure-Hessian-balanced affine half-tail.  A raw
capacity, raw energy, local pressure-Hodge, or local strain-equation estimate
cannot remove `(TFE.156)`, because the normalized child action is scale
invariant while the raw matching cost is radius-weighted.

The shrinking-core branch has a tight/escape compactness split.  Normalize a
bad family by a selected critical defect measure

\[
\mu_n^{crit}(\mathcal C_n)=1,
\qquad
E_{\rm paid}(P_n)+R_{legal}(P_n)+Stop(P_n)\to0,
\tag{TFE.157}
\]

where \(\mathcal C\) is the stopped carrier compactification: material chart,
metric frame, selector/collar/Hodge labels, active pressure-Hessian quotient,
parent filtration, and legal/stop chart.

If a positive fraction of \(\mu_n^{crit}\) stays tight in one compact
same-carrier class, then the zero-payment limit has

\[
\partial_\sigma Z_\infty=0,\qquad
Turnstile_\infty=0,\qquad
Exchange_\infty=0,\qquad
Covector_\infty=0,
\tag{TFE.158}
\]

while retaining a nonzero fresh selected quotient.  The parent-subtracted
dynamic-silent / same-carrier rigidity installed in the route forces that fresh
quotient to be inherited parent transport, hence zero after parent
subtraction.  Thus the tight zero-cost branch is contradictory.

If the mass escapes from every compact stopped carrier class, all escape except
high-weight first-exit tubes is already legal/stop/selector/covector/exchange
motion.  On parent-announced first-exit tubes \(W_e=I_e\times T_e\), the
installed Cauchy estimate gives

\[
\sum_{e\in\mathcal E_{esc}}
\int H_e(t)\|D_e^{fresh}(t)\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|Turnstile_\sigma|^2
+|Exchange_\sigma|^2
+|Covector_\sigma|^2
\right)
+CR_{legal}(P)+CStop(P).
\tag{TFE.159}
\]

So moving high-weight tube escape is paid once the reset/escape is represented
by a parent-announced first-exit derivative interval with bounded witness
overlap.  The surviving branch is therefore not reset escape.  It is fixed-core
pure terminal concentration: the same material carrier, selector chart,
active quotient, metric/covector frame, Hodge/collar chart, and legal/stop
status stay compact while the selected critical mass occupies smaller and
smaller same-carrier heat tents.

The exact remaining endpoint-native theorem is a parent-known no-residue trace
storage.  For stopped parabolic tents \(T_\rho(z_0)\) inside a fixed parent
carrier, prove

\[
\mu_{P,fix}^{crit}(T_\rho(z_0))
\le
C\,\operatorname{Osc}_{T_{c\rho}(z_0)}\Phi_P
+C(E_{\rm paid}+R_{legal}+Stop)(T_{c\rho}(z_0)),
\tag{TFE.160}
\]

where \(\Phi_P\) is a parent-known full-packet capacity potential for the same
selected carrier, and prove the no-terminal-jump modulus

\[
\lim_{\rho\downarrow0}\sup_{z_0}
\operatorname{Osc}_{T_{c\rho}(z_0)}\Phi_P=0
\tag{TFE.161}
\]

outside paid terminal/legal channels.  Then

\[
\lim_{\rho\downarrow0}\sup_{z_0}
\mu_{P,fix}^{crit}(T_\rho(z_0))=0,
\tag{TFE.162}
\]

so the fixed-core terminal atom cannot survive in Gold.  If `(TFE.160)`--
`(TFE.161)` fails after same-witness admission, the failure is the CM endpoint
face rather than a hidden Gold reserve.

Thus the current proof state below `(TFE.145)` is:

\[
\begin{gathered}
\text{reused-core root variation `(TFE.155)'}
\\
+
\text{fixed-core no-residue trace storage `(TFE.160)`--`(TFE.161)'}
\\
\Longrightarrow
\text{same-history native-capacity drop `(TFE.145)'}
\Longrightarrow
\text{parent-capacity drop `(TFE.138)'}
\Longrightarrow
\text{terminal-uniform \(L^1\)} .
\end{gathered}
\tag{TFE.163}
\]

This is a real narrowing.  The high-weight reset/tube escape subcase is paid by
`(TFE.159)` under its parent-announced first-exit hypotheses, and the tight
same-carrier zero-cost subcase is killed by rigidity.  The two still-unproved
positive-route producers are exactly the root variation bound for repeated
cores `(TFE.155)` and the fixed-core terminal anti-atom/no-residue trace
modulus `(TFE.160)`--`(TFE.161)`.  Those two are the remaining live \(L^1\)
mathematics; everything else in the branch split is support, consumer, or
already paid escape.

## 22. Entropy solution test: the exact noncircular closure form

The state-count picture solves the \(L^1\) problem only if the state count is
constructed before child clipping from the original parent packet.  Let
\(\mathscr A_{P,Q}\) be the set of same-parent coupled
pressure--heat--viscous packet histories still accessible below a retained
child \(Q\), measured in the stopped full-packet metric that includes the
material chart, Cauchy--Green metric, Hodge/pressure frame, selector/collar
chart, heat-lag child readout, and legal/stop labels.  A parent-known entropy
capacity has the form

\[
\Phi_P(Q)
:=
\log N_{\varepsilon(Q)}
\bigl(\mathscr A_{P,Q},d_{P,Q}^{full}\bigr)
+\mathcal K_P(Q),
\tag{TFE.164}
\]

where \(\mathcal K_P\) is the announced same-parent correction for Schur
current, fresh Bessel entry, return, reset/reselection, legal, stop, and
endpoint-face exits.  The metric and the correction must be fixed by the parent
history before the child-positive part is taken.

The noncircular entropy theorem is the one-step state-deletion inequality

\[
\sum_{Q'\in ch(Q)} A_{Q'}^{sel,+}
+\sum_{Q'\in ch(Q)}\Phi_P(Q')
\le
\Phi_P(Q)
+R_{legal}(Q)+Stop(Q),
\tag{TFE.165}
\]

with the root and terminal bounds

\[
\Phi_P(P)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{TFE.166}
\]

and

\[
\lim_{\theta\downarrow0}
\sup_P
\sum_{\substack{Q\subset P\\Q\cap(T_*-\theta,T_*)\ne\varnothing}}
\Phi_P(Q)
=0
\tag{TFE.167}
\]

outside legal, stop, and same-witness endpoint-face exits.  Summing
`(TFE.165)` over the stopped tree gives

\[
\sum_{Q\subset P}A_Q^{sel,+}
\le
\Phi_P(P)
+R_{legal}(P)+Stop(P)
+\liminf_{\theta\downarrow0}
\sum_{\substack{Q\subset P\\Q\cap(T_*-\theta,T_*)\ne\varnothing}}
\Phi_P(Q),
\tag{TFE.168}
\]

so `(TFE.166)`--`(TFE.167)` imply the terminal-uniform \(L^1\) line.  Thus
`(TFE.165)`--`(TFE.167)` are exactly `(TFE.138)`--`(TFE.140)` written in the
entropy/state-pruning coordinate.

The entropy construction has a built-in failure test.  If \(d_{P,Q}^{full}\)
does not charge complete-frame motion, then the affine profile `(TFE.149)` can
rotate the selected readout through many positive child faces while the raw
state count stays essentially unchanged.  That reproduces the finite-dimensional
skew example `(TFE.21)`--`(TFE.23)` inside the pressure-Hessian-balanced affine
tail.  Therefore the entropy metric must contain the repeated-core variation
record, and `(TFE.165)` reduces on reused cores to

\[
\sum_{Q_k\subset\mathcal A(a)}A_{Q_k}^{sel,+}
\le
C\,\mathcal V_{\rm core}(a)+R_{legal}(\mathcal A(a)),
\qquad
\int\mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.169}
\]

The first inequality in `(TFE.169)` is installed as the complete-frame/laminar
tax `(TFE.154)`.  The second inequality is exactly the reused-core root
variation theorem `(TFE.155)`.  This is where the physical "number of future
states is decreasing" idea has to become a quantitative root bound: every
pressure-feedback recoordination that lets the same material core be read as a
new positive child must spend finite original-history variation of the metric,
pressure frame, collar, or turnstile.

If the full stopped carrier does not move, `(TFE.169)` has no variation left to
spend.  The only possible survivor is then fixed-core terminal concentration.
In that branch the entropy theorem becomes the no-residue trace modulus

\[
\mu_{P,fix}^{crit}(T_\rho(z_0))
\le
C\,\operatorname{Osc}_{T_{c\rho}(z_0)}\Phi_P
+C(E_{\rm paid}+R_{legal}+Stop)(T_{c\rho}(z_0)),
\qquad
\sup_{z_0}\operatorname{Osc}_{T_{c\rho}(z_0)}\Phi_P\to0.
\tag{TFE.170}
\]

This is exactly `(TFE.160)`--`(TFE.161)`.  In physical terms, once the material
carrier, selected frame, pressure-Hodge quotient, collar, and legal/stop status
are fixed, a smaller heat tent cannot keep carrying one new positive unit unless
the parent capacity has a real terminal jump.  A real terminal jump is not Gold
payment; after same-witness admission it is the endpoint-face branch.

Therefore the entropy/state-pruning idea is now well-defined, but it is a
closure theorem rather than a free consequence of finite energy.  The complete
Gold \(L^1\) solve is:

\[
\text{prove `(TFE.169)' and `(TFE.170)' from the original coupled material
history}
\Longrightarrow
\text{`(TFE.165)'--`(TFE.167)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.171}
\]

The direct proof cannot replace `(TFE.169)` by physical drain alone, because
drain gives the radius-weighted estimate `(TFE.106)` and misses the affine
half-tail `(TFE.143)`.  It cannot replace `(TFE.170)` by preterminal smoothness
alone, because a smooth preterminal density can converge to a terminal atom as
in `(TFE.111)`.  The noncircular solution has to prove the parent-known
complete-frame root variation bound and the fixed-core no-residue trace
modulus.  Once those are proved, the \(L^1\) algebra is already closed by
telescoping.

## 23. Material-log comparison: what the entropy capacity must be

The entropy capacity in `(TFE.164)` cannot be an abstract count.  On a retained
parent packet it has to be represented by the material record of the same
coupled pressure--heat--viscous history.  Let

\[
\mathcal P_{P,N}
=
1+\Gamma_P+E_{P,N}^{v}+E_{P,N}^{A,G}+R_{P,N}^{full}
\tag{TFE.172}
\]

where \(\Gamma_P\) records the material map, inverse material map,
Cauchy--Green metric, transported collar thickness, Hodge/pressure frame, and
selector chart; \(E^v\) and \(E^{A,G}\) are the velocity and coefficient towers;
and \(R^{full}\) is the cumulative same-carrier pressure, viscous/collar,
coefficient, metric, geometry, radius-spend, selector/collar, and exchange
activity.  This is the material version of the state-accessibility count: two
candidate histories are no longer the same accessible state once this record
has changed by a distinguishable amount in the stopped full-packet metric.

The material equations give the positive log-growth channel

\[
d[\log(1+\mathcal P_{P,N})]_+
\le
C\,dA_{4B,N}^{ann}(P)+dPaid_P,
\tag{TFE.173}
\]

where \(dA_{4B,N}^{ann}\) is the full tower-level annular activity: metric,
coefficient, commutator, pressure, viscous/collar, geometry, radius-spend,
selector/collar, and exchange channels on the same transported packet.  This is
not a new estimate: it is the material-normal-form identity obtained by
differentiating the coupled material equations.  It is valid only for the full
tower-level object, not for lower-order raw energy or raw dissipation.

Consequently the reused-core variation in `(TFE.169)` is controlled by the
same log-growth channel:

\[
\mathcal V_{\rm core}(a)
\le
C\int_{\mathcal A(a)}d[\log(1+\mathcal P_{P,N})]_+
+R_{legal}(\mathcal A(a))+Stop(\mathcal A(a)).
\tag{TFE.174}
\]

Integrating `(TFE.174)` and using `(TFE.173)` shows that `(TFE.155)` follows
from the root full-annular-clock bound

\[
\int_{\operatorname{Hist}(P)}dA_{4B,N}^{ann}
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.175}
\]

This is the precise mathematical form of the physical claim that the feedback
loop reduces the number of accessible future packet states.  Pressure may
re-coordinate the remaining velocity state, but every recoordination that later
appears as a new positive selected child has to move the material map, pressure
frame, collar, coefficient tower, or exchange record.  The amount of such
motion is exactly \(dA_{4B,N}^{ann}\).

The fixed-core branch gives the matching terminal condition.  If the fixed-core
critical selected measure is dominated by the same full-annular clock,

\[
d\mu_{P,fix}^{crit}
\le
C\,dA_{4B,N}^{ann}
+dPaid_P,
\tag{TFE.176}
\]

and the root packet has a terminal-uniform no-atom tail

\[
\lim_{\theta\downarrow0}\sup_P
\int_{\operatorname{Hist}(P)\cap(T_*-\theta,T_*)}
dA_{4B,N}^{ann}
=0
\tag{TFE.177}
\]

outside legal, stop, and same-witness endpoint-face exits, then `(TFE.170)`
follows.  Indeed, on a fixed carrier the oscillation of \(\Phi_P\) over a
small heat tent is bounded by the \(A_{4B,N}^{ann}\)-mass of the tent plus paid
terms, so `(TFE.176)`--`(TFE.177)` give the no-residue trace modulus
`(TFE.160)`--`(TFE.161)`.

Thus the entropy story collapses the two surviving branches to one exact
producer:

\[
\boxed{
\text{full tower annular activity has root-finite mass and terminal-uniform
tail zero on the original coupled material history.}
}
\tag{TFE.178}
\]

Under `(TFE.175)` and `(TFE.177)`, the chain is complete:

\[
\begin{gathered}
\text{material-log entropy comparison `(TFE.173)`--`(TFE.176)'}
\\
+\text{root/tail full-annular-clock bound `(TFE.175)`, `(TFE.177)'}
\\
\Longrightarrow
\text{reused-core `(TFE.169)' and fixed-core `(TFE.170)'}
\\
\Longrightarrow
\text{entropy state deletion `(TFE.165)'--`(TFE.167)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\end{gathered}
\tag{TFE.179}
\]

The audit also shows the exact nonclosure point.  `(TFE.173)` is a derived
identity: it says where entropy loss lives.  `(TFE.175)` and `(TFE.177)` are
the true finite-production statements.  Finite kinetic energy, raw viscous
drain, complete-frame orientation, Cauchy--Green attachment, Hodge pressure
coupling, and BKM/Serrin-style continuation criteria are consumers or
coordinates unless they prove this same full-annular-clock root/tail bound.

Equivalently, the \(L^1\) problem is now the following single material-clock
question:

\[
\text{Can the original coupled pressure--viscosity--incompressibility packet
produce infinite full-annular activity while raw physical energy and weighted
viscous drain remain finite?}
\tag{TFE.180}
\]

If yes, Gold positive closure fails at this route and the retained object must
be routed to the same-witness CM endpoint/participation face.  If no, then
`(TFE.175)`--`(TFE.177)` install the entropy capacity, and the \(L^1\) proof is
closed by `(TFE.179)`.

## 24. Four-body audit of the full-annular-clock producer

The checked four-body surfaces show that `(TFE.175)` and `(TFE.177)` are not
the same production statement.  Root finiteness of the full annular clock is a
signed same-packet coercivity theorem.  Terminal tail zero is a same-carrier
no-atom/temporal-regularity theorem.

For root finiteness, the needed smooth/prelimit master balance is

\[
d\mathfrak L_{4B,N}
+c\left(
dA_{4B,N}^{ann}
+C_{log}d[\log(1+\mathcal P_{P,N})]_+
+d\mathcal K_{iface}
\right)
+d\mathcal L_{4B,N}
\le
dR_{4B,N},
\qquad
\int dR_{4B,N}<\infty,
\tag{TFE.181}
\]

with \(\mathfrak L_{4B,N}\) bounded below.  If `(TFE.181)` is proved for the
same transported packet, then integration gives

\[
\int_{\operatorname{Hist}(P)}dA_{4B,N}^{ann}
+\int_{\operatorname{Hist}(P)}d[\log(1+\mathcal P_{P,N})]_+
+\int_{\operatorname{Hist}(P)}d\mathcal K_{iface}
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{TFE.182}
\]

so `(TFE.175)` follows.

The limit-passage gates around `(TFE.181)` are largely support, not the
producer.  The legal-residual normal form proves that \(dR_{4B,N}\) is finite
after all scale-neutral/top-order positive terms have already been placed into
clock or loss.  The relaxed object match says the terminal clock must be the
weak-star limit of the prelimit positive clock, with

\[
d\mu_{clock}
=dA_{4B,N}^{ann}
+C_{log}d[\log(1+\mathcal P_{P,N})]_+
+d\mathcal K_{iface}.
\tag{TFE.183}
\]

These are correct passage rules.  They do not derive the left-side clock in
`(TFE.181)`.

The local producer for `(TFE.181)` is the signed same-packet symmetrizer
inequality

\[
-\left\langle
Z,
\left(
\partial_\sigma H_\sigma
+H_\sigma L_\sigma
+L_\sigma^\ast H_\sigma
\right)Z
\right\rangle
\ge
c\,W_{clock,\sigma}(Z)
+M_{loss,\sigma}(Z)
-R_\sigma(Z),
\tag{TFE.184}
\]

where

\[
W_{clock,\sigma}\,d\sigma
=dA_{4B,N}^{ann}
+C_{log}d[\log(1+\mathcal P_{P,N})]_+
+d\mathcal K_{iface}.
\tag{TFE.185}
\]

The installed interface envelope is weaker:

\[
dK_{orient}^+
\le
dD_S^{rad}+dD_Q^w+d\mathcal K_{iface}+dR_{legal}.
\tag{TFE.186}
\]

It identifies where the defects live, but it is unsigned.  It does not construct
the positive off-diagonal \(H_\sigma=I+K_\sigma\) whose commutator puts those
defects on the negative side of \(d\mathfrak L_{4B,N}\).  Thus `(TFE.184)` is
not installed by the current interface-envelope surfaces.

The full-tower cancellation audit says the same thing in channel language.  The
algebraic cancellation of four oriented body inequalities is proved, but the
enlarged channel list still needs an orientation/capacity theorem for the
metric and coefficient tower:

\[
\partial_tA=-A(\nabla u)\circ X\,A,
\qquad
\partial_tG=-2ASA^\top .
\tag{TFE.187}
\]

Positive growth of these material coefficients is generated by the same fluid
packet, but generation is eligibility, not payment.  Payment requires a
Body-IV or adjacent exchange capacity that is bounded below without already
assuming bounded material record.

For terminal tail zero, even `(TFE.181)` gives only finite \(L^1\) clock mass.
Finite \(L^1\) mass does not exclude a terminal strip pulse uniformly over a
selected family.  The no-residue part `(TFE.177)` therefore needs a same-carrier
temporal regularity or Hardy modulus such as

\[
\|[H_P]_+\|_{W_s^{\beta,1}(-1,0)}
\le
C\left(
D_S^{rad}+D_Q^w+D_G+R_{legal}
\right),
\qquad
\beta>0,
\tag{TFE.188}
\]

on the same retained packet.  This is the endpoint trace temporal tower
regularity input: it upgrades finite clock mass to the no-terminal-atom tail
needed by `(TFE.177)`.

Thus the entropy route now has the exact theorem-grade finish condition:

\[
\boxed{
\text{`(TFE.184)' for root clock mass}
\quad+\quad
\text{`(TFE.188)' for endpoint tail/no-atom}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
}
\tag{TFE.189}
\]

The checked repo state does not prove `(TFE.184)` or `(TFE.188)` at theorem
grade.  It proves the algebra after them, the local material-log placement
before them, the residual/object-match passage around them, and the support
orientation identities feeding them.

## 25. Entropy-source audit: what the state count still has to get from the packet

The entropy picture is now the correct parent object, but it is not an
independent source of payment.  The parent capacity \(\Phi_P\) counts
future same-material pressure--heat--viscous packet histories still accessible
before selected child clipping.  Therefore its positive variation must be
produced by actual motion of the same coupled material record:

\[
d[\Phi_P]_+
\lesssim
dA_{4B,N}^{ann}
+d[\log(1+\mathcal P_{P,N})]_+
+d\mathcal K_{iface}
+d\mathcal L_{4B,N}
+dPaid_P .
\tag{TFE.190}
\]

This is the point of `(TFE.172)`--`(TFE.179)`: entropy loss is not abstract
combinatorics.  It lives in the material map, pressure/Hodge frame, transported
collar, strain/viscous tower, coefficient tower, and annular stress-work record
of the same parent packet.  A selected child positive readout can be counted
only after this parent record has either moved by a distinguishable amount or
the branch has entered legal, stop, return, reselection, or endpoint-face
material.

The direct material tower calculation gives only the growth side of this
record:

\[
dE_{N,P}
+dD_{N,P}^{vis}
+dD_{N,P}^{rad}
\le
C\,\Theta_{N,P}E_{N,P}\,dt+dR^0_{N,P},
\tag{TFE.191}
\]

hence

\[
d[\log(1+E_{N,P})]_+
\le
C\,\Theta_{N,P}\,dt+dR^0_{N,P}.
\tag{TFE.192}
\]

Here \(\Theta_{N,P}\) is not a pressure-only clock.  It is the same coupled
pressure--viscosity--incompressibility--velocity service rate: material strain,
coefficient/metric motion, pressure/Hodge motion, collar motion, annular
stress-work, and viscous/tower loss in one transported packet.  Thus `(TFE.192)`
says how the accessible-state count can grow; it does not prove the state count
has finite positive variation.

The local bounded-storage route fails for a concrete reason.  In the persistent
affine-strain normal form

\[
E'(\sigma)=aE(\sigma),\qquad a>0,
\tag{TFE.193}
\]

one has \(d[\log(1+E)]_+\simeq a\,d\sigma\) on large-record intervals.  A local
bounded-below storage \(X\) paying this positive clock would imply

\[
dX+c\,a\,d\sigma\le dR,\qquad X\ge -C,\qquad \int dR<\infty .
\tag{TFE.194}
\]

Integrating over a long affine-strain interval gives

\[
c\,aT
\le
X(0)-X(T)+\int_0^T dR
\le
X(0)+C+\int_0^T dR,
\tag{TFE.195}
\]

which is impossible for arbitrarily long retained affine-strain service.  So
the missing producer cannot be a purely local finite-tower cross-storage.  It
has to be a nonlocal same-parent partner-retention theorem: every affine or
root-average pressure-memory recoordination that opens future accessible states
must retain its annular stress/strain, metric, collar, pressure/Hodge, and
viscous partner as finite original-history full-clock mass, or the branch must
exit through the same-witness endpoint/participation face.

The exact nonlocal full-clock statement is

\[
\int_{\operatorname{Hist}(P)} d\Omega_{P,N}^{full}
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{TFE.196}
\]

where

\[
d\Omega_{P,N}^{full}
:=
dA_{4B,N}^{ann}
+C_{log}d[\log(1+\mathcal P_{P,N})]_+
+d\mathcal K_{iface}
+d\mathcal L_{4B,N}.
\tag{TFE.197}
\]

Equivalently, `(TFE.196)` is either a bounded-below signed same-packet
symmetrizer

\[
\mathcal I_{N,P}
+dX_{P,N}
+c\,d\Omega_{P,N}^{full}
\le
\varepsilon dD_{N,P}^{vis}
+\varepsilon dD_{N,P}^{rad}
+dR^0_{N,P},
\qquad X_{P,N}\ge -C_N(u_0),
\tag{TFE.198}
\]

or an independently proved finite coupled service clock
\(\int\Theta_{N,P}<\infty\) strong enough to imply `(TFE.196)`.  The checked
`Coupled PLS` and signed-commutator construction attempts verify the one
transaction identity, but they do not construct `(TFE.198)`; the Riccati/Gramian
construction is circular unless no-return/full-clock finiteness is already
known.

The named \(\Theta_N\) and partner-retention surfaces confirm this source
state.  `FullMovingSameMaterialServiceCarrierThetaNL1.A` and
`FiniteTotalThetaNServiceCoordinateHardObstruction.A` identify
\(\int_0^{T_*}\Theta_N(t)\,dt<\infty\) as exactly the full moving same-material
clock estimate, not as an installed consequence of energy, fixed-collar
service, annular stress-work attachment, Hodge correction, or top-strain
storage.  `GlobalPressureStrainPartnerRetention.A` is a theorem-creation
surface whose solver verdict reduces to
`MovingLowHighPressureStrainPumpFiniteWork.A`; it is not an installed bridge.
So the current source-audited form of `(TFE.196)`/`(TFE.198)` is: prove finite
positive work of the moving low-high same-material pressure/strain pump below
each active terminal shell, or route the survivor to the same-witness
endpoint/participation face.

The endpoint piece should be read through the same lens.  The uniform terminal
annular-return argument is valid after same-packet admission and finite full
clock:

\[
\widehat\rho_{A,P}\,ds
\le
C\,d\Omega_{P,N}^{full}+dR^0_{P,N},
\qquad
\int d\Omega_{P,N}^{full}<\infty .
\tag{TFE.199}
\]

If a terminal strip keeps fixed normalized annular return, rescaling that strip
creates a daughter heat-scale packet carrying fixed \(d\Omega^{full}\)-mass.
The same-material dyadic overlap selection then contradicts finite
`(TFE.196)`.  Thus endpoint no-atom for admitted annular return is downstream
of the same full-clock producer; the Hardy/temporal regularity line `(TFE.188)`
is one sufficient way to get the same no-terminal-strip conclusion, not a
separate pressure-only payment account.

For selected critical-density atoms, raw finite mass is still insufficient:
\(\mu(B_r)\simeq r^\alpha\) gives a retained normalized density at every scale.
Those atoms are excluded only by the same entropy deletion theorem
`(TFE.165)`--`(TFE.167)`, by a terminal uniform-integrability improvement, or by
same-witness endpoint/participation routing.  So the endpoint audit does not
add a new Gold supplier; it says that admitted endpoint readouts are consumers
of the same finite parent clock.

The final audited Gold \(L^1\) chain is therefore:

\[
\text{nonlocal same-parent full-clock producer `(TFE.196)'/`(TFE.198)'}
\Longrightarrow
\text{entropy variation bound `(TFE.190)'}
\Longrightarrow
\text{state deletion `(TFE.165)'--`(TFE.167)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.200}
\]

This is stricter than finite initial energy and stricter than same-parent
ownership.  Finite smooth data gives finite entrance records.  Same-parent
ownership prevents recount.  The \(L^1\) line additionally needs the original
coupled packet to have finite positive full-clock variation while pressure
feedback, viscous descent, metric motion, collar motion, and endpoint readout
unfold through the same parent history.

## 26. Moving low-high pump: the strict half-barrier and record/return route

The source-audited primitive inside `(TFE.196)` is the stopped moving low-high
same-material pressure/strain pump.  In dyadic shell form it is

\[
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid},
\tag{TFE.201}
\]

where \(H_{j,N}\) is the active high shell of the same material packet and
\(\mathcal M_{<j-C,N}\) is the moving lower-band coefficient made from strain,
pressure Hessian through

\[
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S,
\tag{TFE.202}
\]

material coefficient/frame motion, Hodge/Stokes projection motion, transported
collar motion, annular stress-work, and viscous graph service.  This is the
same participation-law object as the full clock, not a pressure-only partner
and not a detached shell source.

The ratio variables isolate the exact \(L^1\) obstruction.  Let

\[
d\mu_j(t):=2^{2j}e_j(t)\,dt,\qquad
\rho_j(t):={\Theta_j^{mat}(t)\over 2^{2j}},
\tag{TFE.203}
\]

and define ratio bands

\[
E_{j,\ell}:=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell:=\sum_j\mu_j(E_{j,\ell}).
\tag{TFE.204}
\]

Energy, raw stress-work, subheat absorption, and support routing supply only
the zeroth moment

\[
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{TFE.205}
\]

The full moving pump clock requires the weighted first moment

\[
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{TFE.206}
\]

Equivalently, with \(N_L:=\sum_{\ell\ge L}\nu_\ell\), `(TFE.206)` follows from
a strict good-lambda recurrence

\[
N_{L+1}\le\theta N_L+B_L,\qquad
\theta<{1\over2},\qquad
\sum_{L\ge0}2^LB_L<\infty .
\tag{TFE.207}
\]

The threshold \(\theta<1/2\) is sharp.  The half-tail

\[
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{TFE.208}
\]

has finite raw mass but divergent full action:

\[
\sum_\ell\nu_\ell<\infty,\qquad
\sum_\ell2^\ell\nu_\ell=\sum_\ell {1\over \ell+1}=\infty .
\tag{TFE.209}
\]

It also satisfies \(N_{L+1}/N_L\to1/2\).  Therefore any recurrence with
\(\theta=1/2\) still admits the bad \(L^1\) tail.  This is the exact
mathematical meaning of the physical picture: finite original energy and
same-parent ownership prevent independent new pulses, but they do not by
themselves prevent a single same-parent pump from being harvested at the
critical half-tail rate.

The checked direct attacks do not beat this barrier.  Pointwise incompressibility
and trace-free strain only give a same-packet compression partner:

\[
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+[-n\cdot Sn]_+ .
\tag{TFE.210}
\]

Laminar ancestry says surviving visits lie on same-material lines and spend
Cauchy--Green, complete-frame, collar, or turnstile variation on those lines.
Volterra heat lag absorbs the subheat branch
\(\Theta_j^{mat}\le\delta2^{2j}\).  Annular payback attaches center motion to
same-material stress/strain return.  These are real support facts, but all are
compatible with `(TFE.208)` unless they create the missing strict factor in
`(TFE.207)`.

The repeated-core proof route is therefore the stopped record/return descent.
After paid selector/reselection, entrance/legal, silent-source, nonlaminar,
subheat, recirculation, and support exits have been removed, one must construct
a polar-compatible signed scale-potential lift

\[
Y=\partial_\sigma\Psi+S^{spill}+E,\qquad
Y_+=Y+Y_-,
\tag{TFE.211}
\]

where \(Y_+\) is the selected positive primitive source and \(Y_-\) is the
negative return needed to reset the same scale potential.  On one stopped
material ancestry line,

\[
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M).
\tag{TFE.212}
\]

Thus repeated selected positive pump births have only two non-support escapes:
unbounded scale-potential records/average, or paid negative scale return.  The
theorem-grade statement is

\[
\begin{aligned}
&\int_0^T H_w(t)
\left\|
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
+\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt\\
&\qquad\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\end{aligned}
\tag{TFE.213}
\]

Together with the signed lift `(TFE.211)` and the spill/error absorptions,
`(TFE.213)` kills the repeated-core half-tail.  It does not by itself kill the
shrinking-core escape branch, because a selected packet can leave one stopped
core and restart on smaller transported cores.  The exact Gold \(L^1\) finish is
therefore the two-branch no-Zeno statement sharpened below, not record/return
alone.

If record/return fails on a retained same-witness repeated-core branch after all
paid exits are removed, the survivor is not a hidden Gold bill.  It is a
same-witness endpoint/participation face candidate: a terminal retained positive
pump with no signed lift, no bounded record, and no paid return.

## 27. Entropy branch correction: repeated core and shrinking core

The entropy picture is parent-side state accessibility.  Once a selected child
readout has been admitted into the parent packet, the same original coupled
history can lose future states in two different ways.  It can keep revisiting
one stopped material core, where the same scale potential must record or return.
Or it can abandon that core and restart on smaller transported cores, where the
restart must pay selected pressure-Hodge capacity, collar/turnstile motion, or
parent-child reset.  These are different state-deletion mechanisms inside the
same parent packet.

After all installed paid exits have been removed, a failed strict half-barrier
has a minimal stopped one-material chain

\[
P=Q_0\supset Q_1\supset Q_2\supset\cdots,\qquad
\sum_k R_{raw}(Q_k)<\infty,\qquad
\sum_k A_{sel}^{fresh}(Q_k)=\infty .
\tag{TFE.214}
\]

The chain splits into repeated-core and shrinking-core pieces:

\[
\mathcal C_{bad}
=
\mathcal C_{rep}\dot\cup\mathcal C_{esc}
+\mathcal C_{paid}.
\tag{TFE.215}
\]

On the repeated-core piece the selector, order-lock, and signed primitive
channel are stopped before positive clipping.  The source-checked fixed-channel
lift is

\[
P_R=\Gamma_R Z^S,
\tag{TFE.216}
\]

with \(\Gamma_R\) parent-known.  For each retained repeated-core transaction,
the needed positive-increment realization is

\[
A_{sel}^{fresh}(Q_{k+1})
\le
C\,[P_R(Q_{k+1})-P_R(Q_k)]_+
+CR_{legal}(Q_k).
\tag{TFE.217}
\]

The checked lift note proves this only for a truly fixed stopped channel.  If
\(\Gamma_R\) is reselected from future child information, the transaction has
left this branch and is paid as reset, overrun, collar, selector/reselection, or
legal loss.

Once `(TFE.217)` holds, scalar variation gives

\[
\sum_{Q_k\in\mathcal C_{rep}}A_{sel}^{fresh}(Q_k)
\le
C\operatorname{Rec}_\infty(\Psi_{\mathcal A})
+CV_-^{return}(\Psi_{\mathcal A})
+CR_{legal}(\mathcal A).
\tag{TFE.218}
\]

The potential-record average is a consumer once the parent-known record and its
scale derivative have been built.  With
\(\Psi^\sharp(\sigma,t)=\Psi(\sigma,t)-\Psi(\sigma_0,t)\),

\[
\int_0^{T^*}H_w(t)
\left\|
{1\over |J|}\int_J\Psi^\sharp(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
|J|\int_0^{T^*}H_w(t)\int_J
\|\partial_\sigma\Psi^\sharp(\sigma,t)\|_{L_x^2}^2\,d\sigma dt .
\tag{TFE.219}
\]

The derivative side is original-history currency only after
\(\partial_\sigma P_R=\Gamma_R\partial_\sigma Z^S+(\partial_\sigma\Gamma_R)Z^S\)
is charged to routed-current, turnstile, exchange, covector, connection, and
legal variation.  Thus `(TFE.219)` does not construct the record; it consumes
the record once the stopped parent channel exists.

The negative-return half is the genuine no-free-oscillation theorem:

\[
\int_0^{T^*}H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{TFE.220}
\]

Bounded record oscillation alone does not imply `(TFE.220)`: a bounded scalar
record can oscillate with infinite negative variation.  The return must be a
real same-material event charged to strain/exchange reversal, selector or
polar-frame rotation, collar/spill separation, donor/order-lock repayment,
recirculation already classified as return, or legal synchronization loss.

The repeated-core branch is therefore finite exactly under

\[
\text{stopped signed lift}
+\text{parent-record derivative bound}
+\text{negative-return charge}
\Longrightarrow
\sum_{Q_k\in\mathcal C_{rep}}A_{sel}^{fresh}(Q_k)
\le C_N(u_0)+R_{legal}.
\tag{TFE.221}
\]

The shrinking-core branch needs a different estimate.  A single-core
record/return potential can restart at every smaller core, so the theorem must
charge the restarts themselves:

\[
\sum_{Q_k\in\mathcal C_{esc}}A_{sel}^{fresh}(Q_k)
\le
C_N\sum_{Q_k\in\mathcal C_{esc}}
\left(
\operatorname{Cap}_{PH}^{sel}(Q_k)
+\operatorname{CollarTurnstile}^{sel}(Q_k)
+\operatorname{Reset}^{sel}(Q_k)
+R_{legal}(Q_k)
\right).
\tag{TFE.222}
\]

The word selected is essential.  Raw heat capacity can be summable while the
normalized selected action remains order one at each restart.  The missing
packing theorem is

\[
\sum_{Q_k\in\mathcal C_{esc}}
\left(
\operatorname{Cap}_{PH}^{sel}(Q_k)
+\operatorname{CollarTurnstile}^{sel}(Q_k)
+\operatorname{Reset}^{sel}(Q_k)
\right)
\le
C_N(u_0)+R_{legal}.
\tag{TFE.223}
\]

Combining the repeated-core bound `(TFE.221)` and the shrinking-core packing
bound `(TFE.223)` gives the no-Zeno strict half-barrier:

\[
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{TFE.224}
\]

Then `(TFE.224)` gives the moving low-high pump clock `(TFE.206)`, the full
parent clock `(TFE.196)`, the entropy variation bound `(TFE.190)`, the state
deletion inequalities `(TFE.165)`--`(TFE.167)`, and terminal-uniform \(L^1\).

The current audited closure condition is therefore

\[
\begin{gathered}
\text{RepeatedCoreRecordReturnStorageBound.A}\\
+\\
\text{ShrinkingCoreEscapeCapacityLowerBound.A}
\end{gathered}
\Longrightarrow
\text{Gold terminal-uniform \(L^1\).}
\tag{TFE.225}
\]

Installed status after source check: the fixed stopped-channel signed lift is
available only when the channel is parent-known; the potential-average bound is
a consumer of that record; the negative-return charge and the selected
shrinking-core capacity lower bound are not discharged by the checked surfaces.
Thus the entropy story is being used, but it closes \(L^1\) only after both
state-deletion mechanisms are proved from the original coupled material
history.

## 28. Parent-child reset reserve: the entropy feedback form

The shrinking-core audit shows that ordinary capacity is on the wrong side of
the equation.  A child core of radius \(r\) can have raw pressure-Hodge/collar
cost of size \(r\) while its normalized selected action is order one:

\[
R_{raw}(Q_r)\sim r,\qquad A_{sel}(Q_r)\sim1.
\tag{TFE.226}
\]

So the feedback mechanism cannot say that every small child is expensive at its
own raw scale.  It has to say that a child is either not fresh, because it
inherits the same selected parent state and returns to the repeated-core
record/return branch, or it is genuinely fresh and pays a parent-child reset
charge in selected currency.

The branch-unifying reserve is the selected compression root reserve:

\[
\sum_{Q\in\mathcal T_{sel}(P)}
\left(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{normal}(Q)
+\mathcal S_{covector}(Q)
+\mathcal B_{select}(Q)
\right)
\le
C_N(u_0)+R_{legal}(P).
\tag{TFE.227}
\]

Equivalently, build a parent-known Bellman reserve \(B(Q)\ge0\) and a
parent-child reset charge \(J_{reset}(Q\to Q')\ge0\) so that every stopped
transition satisfies

\[
\sum_{Q'\in ch_{stop}(Q)}A_{sel}^{fresh}(Q')
+\sum_{Q'\in ch_{stop}(Q)}B(Q')
\le
B(Q)
+\sum_{Q'\in ch_{stop}(Q)}J_{reset}(Q\to Q')
+R_{legal}(Q),
\tag{TFE.228}
\]

with root control

\[
B(P)
+\sum_{Q\subseteq P}\sum_{Q'\in ch_{stop}(Q)}
J_{reset}(Q\to Q')
\le
C_N(u_0)+R_{legal}(P).
\tag{TFE.229}
\]

Tree summation of `(TFE.228)` and `(TFE.229)` gives

\[
\sum_{Q\in\mathcal T_{sel}(P)}A_{sel}^{fresh}(Q)
\le
C_N(u_0)+R_{legal}(P).
\tag{TFE.230}
\]

The noncircular content is the reset-or-repeated-core dichotomy.  For a retained
child \(Q'\subset Q\) with \(A_{sel}^{fresh}(Q')\simeq1\), either the selected
pressure-Hodge, collar, selector, and strain-exchange state is inherited from
\(Q\), in which case \(Q'\) belongs to the repeated-core record/return branch,
or

\[
J_{reset}(Q\to Q')\gtrsim1.
\tag{TFE.231}
\]

A carrier-observability form of the same statement is

\[
\begin{aligned}
A_{sel}^{fresh}(Q')
&\le
C\langle U_Q,\mathsf S_Q^{stop}U_Q\rangle
+C\Omega_Q^{strain/ex}
+CD_Q^{vis/rad}\\
&\qquad
+CJ_{reset}(Q\to Q')
+R_{legal}(Q).
\end{aligned}
\tag{TFE.232}
\]

Thus a selected child with no Schur defect, no strain/exchange motion, no
viscous/radius service, no legal/reselection loss, and no reset is not a fresh
child.  It remains inside the same parent state and must be paid by repeated-core
record/return.

The root side is the selected change-of-measure or exponent-lift statement:

\[
f_{sel}\in RH_{1+\varepsilon}(d\mathcal R_{raw})
\quad\text{or}\quad
S_{mart}(f_{sel})\in L^2(d\mathcal R_{raw}),
\tag{TFE.233}
\]

constructed from the original coupled material history before child selected
readout.  This is the analytic content that makes the Bellman reserve
non-tautological; without it, \(B\) can collapse into the future selected tail.

Therefore the entropy feedback proof now has a single parent form:

\[
\text{ParentChildSelectedResetReserve.A}
\Longrightarrow
\text{selected root reserve `(TFE.227)'}
\Longrightarrow
\text{strict half-barrier `(TFE.224)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.234}
\]

The two-branch statement `(TFE.225)` is the branch decomposition of this parent
reserve: no reset gives repeated-core record/return, and genuine reset gives the
shrinking-core selected-capacity charge.

## 29. Active-weight reset Cauchy: what part of the parent reserve is proved

The reset countertest says the reset charge has to carry the selected active
weight.  A raw fresh innovation square,

\[
\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{raw}}^2,
\tag{TFE.235}
\]

still admits the half-tail.  The corrected reset charge is critical-weighted:

\[
J_{crit}(Q\to Q')
\simeq
H_{I_e}(t)\|\Delta Z_e(t)\|_{\mathcal H_{lift}}^2
+J_{select/lock}^{crit}
+J_{collar/turn}^{crit}
+R_{legal}.
\tag{TFE.236}
\]

The noncircular analytic part is available for derivative-exact reset
increments.  Let the child scale interval \(I_e\) be announced by the stopped
parent history and suppose the fresh reset innovation has the same-material
representation

\[
D_e(t)=
{1\over |I_e|}
\int_{I_e}
\mathcal G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{TFE.237}
\]

where

\[
\mathcal G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\tag{TFE.238}
\]

With active scale density \(w(\sigma,t)\), the harmonic active weight is

\[
H_{I_e}(t)
=
{|I_e|^2\over\int_{I_e}w(\sigma,t)^{-1}\,d\sigma}.
\tag{TFE.239}
\]

Cauchy--Schwarz gives

\[
\left\|\int_{I_e}\mathcal G_e(\sigma,t)\,d\sigma\right\|^2
\le
\left(\int_{I_e}w^{-1}\,d\sigma\right)
\left(\int_{I_e}w\|\mathcal G_e\|^2\,d\sigma\right).
\tag{TFE.240}
\]

Dividing by \(|I_e|^2\) and multiplying by `(TFE.239)` cancels the dual factor:

\[
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+R_e^{legal}(t).
\tag{TFE.241}
\]

If the parent-announced intervals have stopped bounded overlap,

\[
\sum_{e\subset P}1_{I_e\times T_e}(\sigma,t)
\le C_N+R_{legal},
\tag{TFE.242}
\]

then summing `(TFE.241)` gives the derivative-exact reset Carleson estimate:

\[
\sum_{e\subset P}
\int H_{I_e}(t)\|D_e(t)\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w(\sigma,t)\|\mathcal G(\sigma,t)\|^2\,d\sigma dt
+CR_{legal}(P).
\tag{TFE.243}
\]

This is the precise mathematical version of the entropy feedback handoff: a
fresh child can carry a high selected weight only when its appearance is the
announced average of original parent-history motion across the scale interval.
The harmonic weight is then the reciprocal Cauchy weight, so the selected
readout is not being counted again as a new source.

The remaining producer is not `(TFE.241)`--`(TFE.243)`.  Those are proved
consumer algebra.  The open representation theorem is:

\[
\text{AnnounceableResetDerivativeRepresentation.A}
\tag{TFE.244}
\]

Every strict fresh reset innovation must have a parent-announced interval and a
representation of the form `(TFE.237)` with stopped bounded overlap, or the
non-derivative survivor must route to one of the already isolated parent
mechanisms: repeated-core record/return, negative scale return, second-order
exactness, parent-known affine span, selector/reselection/collar/legal loss, or
a same-witness endpoint/participation face.

The persistent affine quotient is exactly the part not automatically covered by
`(TFE.237)`.  A coefficient of the form

\[
c_F^{fresh}(t)
=
\int_I\theta_I(\sigma)Z^{fresh}(\sigma,t)\,d\sigma
\tag{TFE.245}
\]

is not a derivative average unless the proof first supplies scale descent,
turnstile/covector/exchange motion, or signed second-order exactness.  Applying
`(TFE.241)` directly to `(TFE.245)` would assume the selected-critical weighted
source norm.

Thus the current reset-reserve proof line is

\[
\begin{gathered}
\text{AnnounceableResetDerivativeRepresentation.A}\\
+\ \text{persistent-affine-quotient routing}
\end{gathered}
\Longrightarrow
\text{CriticalWeightedParentChildResetCarleson.A}
\Longrightarrow
\text{ParentChildSelectedResetReserve.A}.
\tag{TFE.246}
\]

The half-tail now has a sharper failure description.  It is no longer merely
"fresh selected children with finite raw square."  It is a parent-announced
sequence of increasingly active child intervals whose raw innovation mass is
summable, whose active-weighted mass diverges, and whose increments are not
representable as bounded-overlap original derivative/current averages and are
not routed back into any same-parent record, return, exactness, reset, legal, or
endpoint/participation face.

## 30. Source-audit correction: reset geometry is a consumer, parent entropy storage is the producer

The reset-representation audit changes the location of the live burden.  Under
the stopped finite-score construction, a strict reset is already a parent-known
first-exit event.  If \(q_e\) is the active stopped score and
\(I_e=[\sigma_{in},\sigma_{out}]\) is the first-exit interval, then

\[
D_e(t)
=
q_e(\sigma_{out},t)-q_e(\sigma_{in},t)+Err_e^{legal}(t)
=
\int_{I_e}\partial_\sigma q_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{TFE.247}
\]

and the material chain rule gives

\[
\partial_\sigma q_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
+Err^{legal}.
\tag{TFE.248}
\]

Maximal first-exit slabs in a finite stopped-score, laminar material tree have
bounded overlap:

\[
\sum_{e\subset P}1_{I_e\times T_e}\le C_N+R_{legal}(P).
\tag{TFE.249}
\]

Therefore `(TFE.247)`--`(TFE.249)` feed directly into the active-weight Cauchy
estimate `(TFE.241)`--`(TFE.243)`.  The reset branch is reduced to the routed
current energy:

\[
\sum_{e\subset P}
\int H_{I_e}(t)\|D_e(t)\|^2\,dt
\le
C_N\mathcal E_{route}(P)+R_{legal}(P)+Stop(P),
\tag{TFE.250}
\]

where

\[
\mathcal E_{route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right).
\tag{TFE.251}
\]

Thus the phrase `AnnounceableResetDerivativeRepresentation.A' should no longer
be read as a broad analytic mystery.  It is structurally proved for retained
finite-score first-exit resets.  The unresolved producer is the original
parent-side bound for the current energy that appears on the right of
`(TFE.250)`.

The same correction applies to the persistent affine quotient.  The quotient

\[
c_F^{fresh}(t)=\int_I\theta_I(\sigma)Z^{fresh}(\sigma,t)\,d\sigma
\tag{TFE.252}
\]

is not a derivative-exact reset average.  But once a parent-known selected
record

\[
\mathfrak Z^S=(Z^S,\Psi^S,\Lambda^S)
\tag{TFE.253}
\]

is constructed from original stopped history, the persistent quotient becomes a
readout of that same record: fixed-core return is a face of \(Z^S\), the affine
average is a face of \(\Psi^S\), and reset/amplification motion is a face of
\(\Lambda^S\).  The consumer statement is

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N\mathcal E_{SPA}(P)+R_{legal}(P)+Stop(P),
\tag{TFE.254}
\]

with \(\mathcal E_{SPA}\) the selected-potential/amplification BV/testing norm
of the parent-known record.  This removes the affine quotient as an independent
fourth bill; it does not construct the parent-known record.

The operator projection side of that construction is also already finite in the
repo's current audit.  In a retained stopped chart, the stopped route map is a
parent-known finite matrix from the original participation differential to the
routed coordinates:

\[
\mathcal R_S:
\mathfrak D_{\rm NS}
\longmapsto
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma),
\tag{TFE.255}
\]

and compactness of the stopped aperture/order-lock class gives

\[
w\left(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2
\right)
\le
C\,\Theta_{\rm part}^{orig}
+dR_{legal}+dStop.
\tag{TFE.256}
\]

The remaining \(L^1\) theorem is therefore the parent entropy/full-action
storage estimate, not reset Cauchy, not bounded overlap, and not scalar
affine-quotient bookkeeping:

\[
\int_{\operatorname{Hist}(P)}
\Theta_{\rm part}^{orig}
\le
C_N(u_0)+R_{legal}(P)+Stop(P).
\tag{TFE.257}
\]

Equivalently, there must be a bounded-below original material organization
functional \(\mathfrak M_P\) such that

\[
\Theta_{\rm part}^{orig}
\le
-d\mathfrak M_P+dR_{legal}+dStop,
\qquad
\mathfrak M_P(\operatorname{root}P)\le C_N(u_0).
\tag{TFE.258}
\]

This is the formal version of the entropy picture.  The parent packet carries a
finite accessible-history capacity before child clipping.  Pressure/heat/viscous
feedback may re-coordinate which future states remain accessible, but the same
coupled material law must make that re-coordination a projection of
\(\Theta_{\rm part}^{orig}\), not a new selected source.  Once `(TFE.257)` or
`(TFE.258)` is installed, the chain is direct:

\[
\begin{gathered}
\text{parent entropy/full-action storage `(TFE.257)' or `(TFE.258)'}\\
\Longrightarrow
\mathcal E_{route}(P)+\mathcal E_{SPA}(P)\le C_N(u_0)+R_{legal}+Stop\\
\Longrightarrow
\text{critical reset/affine quotient packing}\\
\Longrightarrow
\text{ParentChildSelectedResetReserve.A}\\
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\end{gathered}
\tag{TFE.259}
\]

So the \(L^1\) problem is now pinpointed in the entropy language: prove that the
original coupled pressure-viscosity-incompressibility-velocity packet has finite
parent-side accessible-history variation in the active route metric.  A retained
child readout can then delete or reveal states, but it cannot create an
unbounded new positive count after the parent capacity has already assigned the
event one material lifetime.

## 31. Entropy cutoff versus finite energy: the native-reserve obstruction

The physical entropy picture says that a finite initial packet cannot open an
unbounded number of future distinguishable states.  The mathematical caveat is
which metric counts distinguishable states.  The raw energy metric gives

\[
\|u(t)\|_2^2
+2\nu\int_0^t\|\nabla u(s)\|_2^2\,ds
=
\|u_0\|_2^2.
\tag{TFE.260}
\]

This controls the unweighted strain history.  It does not control the
scale-native active count.  On a packet of radius \(r\), a unit selected
rescaled read pulls back with original \(L^2\) size \(r^{-1/2}\).  Thus a chain
can have finite raw energy while the selected critical count sees

\[
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty .
\tag{TFE.261}
\]

So finite energy is the wrong entropy cutoff for the Gold \(L^1\) quantity.  It
limits raw arrangements, but the selected child is asking how many
scale-critical arrangements remain accessible after pressure/heat/viscous
feedback has re-coordinated the packet.

The correct parent-side entropy metric is the scale-native reserve

\[
\mathfrak R_{nat}(T)
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt.
\tag{TFE.262}
\]

This is exactly the active-route count of high-ratio states.  Testing the
original coupled equation in the critical half-derivative coordinate gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
B(t),
\tag{TFE.263}
\]

where

\[
B(t)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{TFE.264}
\]

Here \(\mathbb P\) is only the compressed coordinate of the full
pressure-incompressibility response.  The term \(B_+\) is not pressure-only and
not a detached scalar source; it is the critical face of the same
pressure-viscosity-incompressibility-velocity participation packet.

Therefore the parent entropy cutoff is equivalent to the strict one-sided
positive-transfer estimate

\[
\int_0^T B_+(t)\,dt
\le
C_N(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1.
\tag{TFE.265}
\]

If `(TFE.265)` holds, then `(TFE.263)` gives

\[
(1-\theta)\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
\le
C_N(u_0)+\|\Lambda^{1/2}u_0\|_2^2
+R_{legal}+Stop,
\tag{TFE.266}
\]

so the native reserve `(TFE.262)` is finite.  Combining `(TFE.262)` with the
parent-child reset reserve `(TFE.259)` gives terminal-uniform \(L^1\).

The standard estimate gives only

\[
|B(t)|
\le
C\|u(t)\|_{\dot H^{1/2}}
\|\Lambda^{3/2}u(t)\|_2^2,
\tag{TFE.267}
\]

which closes when the critical packet is small.  For arbitrary smooth data, the
coefficient in `(TFE.267)` is the critical state-count itself.  Using finite raw
energy to replace it would be the same exponent mistake as using
\(\sum\nu_\ell<\infty\) to infer \(\sum2^\ell\nu_\ell<\infty\).

Thus the entropy story does not remove the Gold wall; it identifies it without
the misleading scalar labels.  The state-count feedback theorem needed for
\(L^1\) is:

\[
\begin{gathered}
\text{each retained scale-native positive child read is either inherited,}\\
\text{first-exit/reset-paid, record/return-paid, legal/stop-paid,}\\
\text{or assigned with bounded multiplicity to }\mathfrak R_{nat}.
\end{gathered}
\tag{TFE.268}
\]

Equivalently,

\[
\omega_\gamma
\le C_N\rho_{\iota(\gamma)}
+R_{legal}(\gamma)+Stop(\gamma),
\qquad
\sum_\rho\rho\le C_N(u_0)+R_{legal}+Stop,
\qquad
\operatorname{mult}(\iota)\le C_N.
\tag{TFE.269}
\]

This is the entropy-feedback form of
`NativeBirthChargePacking.A` / `PositiveCriticalTransferBound.A`.  It is the
remaining large-data theorem.  All reset, affine-quotient, Schur/Bessel,
bounded projection, and first-exit overlap work are consumers once `(TFE.268)`--
`(TFE.269)` are installed; none of them by itself proves the parent entropy
cutoff in the scale-native active metric.

## 32. No-reuse audit: what it pays, and where first birth still survives

The no-reuse mechanism is real, but it does not by itself create the
scale-native reserve.  On a stopped parent \(P\), let \(Z_P\) be the
same-material source carrier and define the spent-source projection

\[
F_Q
=
(I-\Pi_{\mathcal S_{<Q}})\Delta_Q Z_P .
\tag{TFE.270}
\]

The installed nonreuse line is:

\[
\text{strict retained selected birth}
\Longrightarrow
\text{fresh source increment }F_Q
\text{ or paid carry/reselection/silent-exchange/legal/stop.}
\tag{TFE.271}
\]

In raw Hilbert currency this gives

\[
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{src}}^2
\le
C_N\|Z_P\|_{\mathcal H_{src}}^2+R_{legal}(P).
\tag{TFE.272}
\]

This closes the repeated-use loophole: an already-spent source atom cannot keep
being counted as fresh down the same retained chain unless the event is carry,
return, reset, exchange, legal, or stop.  The open line is the selected-scale
lower edge

\[
\omega_Q^{fresh}
\le
C_N\|F_Q\|_{\mathcal H_{src,active}}^2+R_{paid}(Q),
\qquad
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{src,active}}^2
\le C_N(u_0)+R_{legal}+Stop .
\tag{TFE.273}
\]

The active norm in `(TFE.273)` cannot be the raw norm in `(TFE.272)`.  The
half-tail

\[
\sum_\ell \|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell H_\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty
\tag{TFE.274}
\]

survives raw nonreuse.  Thus no-reuse is a gate after a root-native atom has
been created; it is not the producer of the selected-size root-native atom.

The physical first-birth form of the missing producer is the endpoint-seed
packing theorem.  After lower-band carry, spent-source reuse, reset,
reselection, silent exchange, legal, stop, and annular payback are removed, a
retained first native birth \(\gamma\) must leave a positive endpoint seed

\[
M_\gamma(t,x)
=
\int_{J_\gamma}
k_\gamma(\sigma)\,
\widetilde Z_\gamma^{fresh,+}(\sigma,t,x)\,d\sigma,
\qquad k_\gamma\ge0 .
\tag{TFE.275}
\]

The local admission line is

\[
\omega_\gamma
\lesssim
\int_{I_\gamma}H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt
+DER(\gamma)+R_{legal}(\gamma)+Stop(\gamma).
\tag{TFE.276}
\]

This is the part of the physical story where the child cannot be only a label:
retained first selected action has to leave a material endpoint seed in the
original pressure-viscosity-incompressibility packet.

The global line still missing is

\[
\sum_{\gamma\subset P}
\int_{I_\gamma}H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt
\le
C_N(u_0)
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1 .
\tag{TFE.277}
\]

Equivalently, the endpoint seed must be a parent-localized current of the
original coupled packet:

\[
M_\gamma
=
D_AJ_\gamma
+M_{\gamma,stop}
+M_{\gamma,legal}
+M_{\gamma,reset}
+M_{\gamma,return},
\tag{TFE.278}
\]

and the endpoint currents must satisfy the Carleson/native-reserve estimate

\[
\sum_{\gamma\subset P}
\int |J_\gamma|^2\,d\mathcal R_\gamma
\le
C_N(u_0)
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1 .
\tag{TFE.279}
\]

The compactness proof attempt does not remove `(TFE.279)`.  A failed endpoint
packing sequence normalizes to a nonzero retained endpoint current, not to a
seed with zero current.  Thus the rigidity theorem needed there is the same
one-sided positive-transfer/native-reserve theorem in compactness language.

The Schur/upcrossing audit says the same thing from the retained-current side.
Once the first birth is admitted into the paid parent-current span, repeated
same-carrier production is Schur work.  A geometrically known direction with
zero current is not already paid; first entry is Bessel novelty:

\[
m\mapsto m+\delta a,
\qquad
g=G^{-1}m\mapsto g+\delta G^{-1}a .
\tag{TFE.280}
\]

After `(TFE.280)`, repeated production in that coordinate is no longer
perpendicular in the payment sense.  So the old repeated-perpendicular channel
is gone.

The surviving Schur-thin obstruction is different.  A source can be too thin in
material time to build visible Schur residence before its selected square bill
is large.  In a scalar retained coordinate,

\[
D_th=q,\qquad h(0)=0,
\tag{TFE.281}
\]

thin pulses can satisfy

\[
\sum_n\int q_n\,dt<\infty,
\qquad
\sum_n\int q_n^2\,dt=\infty .
\tag{TFE.282}
\]

Schur memory pays residence after the record has time to form; it does not pay
arbitrarily thin impulses by itself.  Integration by parts identifies the parent
quantity that sees the thin pulse:

\[
\int_B q^2\,dt
=
[hq]_{\partial B}
-
\int_B h\,dq .
\tag{TFE.283}
\]

Thus Schur-thin blocks are paid only after a material source-variation /
parabolic-thickness theorem:

\[
\sum_{B:\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|\,
{\rm Var}_B^P(G_B^{-1/2}p_B)
\le
\theta\nu\sum_BD_B
+C_\eta(E_{fresh}+E_{motion}+A^-+Legal+Stop+End),
\tag{TFE.284}
\]

with \(\theta<1\).  The source variation in `(TFE.284)` must be differentiated
inside the same coupled material law.  For the full-output route, the high-high
object is

\[
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\tag{TFE.285}
\]

because this has the one-point parent-current identity.  Individual
input-coloured high-high triads are two-point bilinear currents and cannot be
admitted into the installed one-point parent current without adding a new
two-particle theory.

Therefore the narrowed L1 producer is:

\[
\begin{gathered}
\text{full-output parent-current admission/update}\\
+\ \text{first-birth endpoint-current Carleson `(TFE.279)'}\\
+\ \text{Schur-thin material source-variation estimate `(TFE.284)'}\\
\Longrightarrow
\text{NativeBirthChargePacking.A / PositiveCriticalTransferBound.A}.
\end{gathered}
\tag{TFE.286}
\]

This is the exact contribution of the entropy/no-reuse picture.  It proves that
recount is not the issue after admission; the remaining issue is first-birth
selected-size endpoint current and Schur-thin parabolic thickness, both in the
same original coupled packet and both with a strict \(\theta<1\) viscous
margin.

## 33. Phase-volume feedback audit: what the entropy story really supplies

The entropy picture has a precise finite-dimensional backbone.  Truncate the
original incompressible equation to divergence-free Leray modes \(|k|\le K\) and
write the Galerkin coefficients as \(a_K(t)\).  In fixed Leray coordinates,

\[
\dot a_K
=
\mathcal N_K(a_K)-\nu L_Ka_K ,
\tag{TFE.287}
\]

where \(L_K\) is the positive diagonal Stokes matrix.  The nonlinear
Euler-pressure part is phase-volume preserving:

\[
\operatorname{div}_{a_K}\mathcal N_K=0,
\qquad
\operatorname{div}_{a_K}(-\nu L_Ka_K)
=-\nu\operatorname{Tr}L_K .
\tag{TFE.288}
\]

Thus for any smooth packet of Galerkin states transported by the truncated flow,

\[
{d\over dt}\log \operatorname{Vol}_K(t)
=
-\nu\operatorname{Tr}L_K .
\tag{TFE.289}
\]

This is the rigorous version of the physical feedback statement: the
pressure-incompressibility/nonlinear part re-coordinates the state, while
viscosity deletes phase volume.  Pressure is not a detached source of new state
volume.

The Gold \(L^1\) readout is not this bulk volume contraction.  It is a selected
one-sided path trace through a moving parent-child packet frame.  If the active
metric, Hodge frame, material chart, collar, and selector projection are denoted
by \(G_K(t)\), \(\Pi_K(t)\), and \(e_\gamma(t)\), then the same finite
calculation in the moving active coordinates gives

\[
d\Phi_{P,K}^{act}
\le
-\nu\,\operatorname{Tr}_{act,K}(L_K)\,dt
+d\operatorname{Conn}_{P,K}^{act}
+dPaid_P ,
\tag{TFE.290}
\]

where the connection term is the actual parent-frame motion:

\[
d\operatorname{Conn}_{P,K}^{act}
\simeq
{1\over2}\left|d\log\det G_{act,K}\right|
+\|\dot\Pi_K\|_{HS}\,dt
+d{\rm Var}_P(e_\gamma,\text{Hodge},\text{collar},\text{material frame})
+dR_{legal}+dStop .
\tag{TFE.291}
\]

So the feedback loop gives the right sign only after the selected detector is
read in the same parent coordinates.  The selected positive action has the form

\[
A_{\gamma}^{sel,+}
\sim
\int_{I_\gamma}
\left(d\langle Z_{P,K}(t),e_\gamma(t)\rangle_{G_K}\right)_+ .
\tag{TFE.292}
\]

A determinant contraction does not by itself bound `(TFE.292)`.  The elementary
countermodel is a contracting two-dimensional state with a rotating active
detector:

\[
z(t)=r(t)(\cos\phi(t),\sin\phi(t)),
\qquad
r'(t)=-r(t).
\tag{TFE.293}
\]

The area contracts monotonically, but a fixed selected coordinate can have
arbitrarily large one-sided positive variation if the angle \(\phi(t)\) has
unbounded positive variation.  In the fluid packet, that angle is not a toy
variable: it is the pressure/Hodge frame, Cauchy--Green metric, collar, route
projection, and high-high parent-current detector moving inside the same
coupled material law.  Therefore the active connection term `(TFE.291)` is the
place where the \(L^1\) problem actually lives.

The exact bridge from entropy contraction to the Gold line is the active
trace/connection theorem

\[
\sum_{\gamma\subset P}
A_{\gamma}^{sel,+}
\le
C\left(
\Phi_{P,K}^{act}(\operatorname{root})
-\Phi_{P,K}^{act}(\operatorname{terminal})
+\int_{\operatorname{Hist}(P)}d\operatorname{Conn}_{P,K}^{act}
\right)
+Paid(P),
\tag{TFE.294}
\]

uniformly as \(K\to\infty\), together with the native-reserve domination

\[
\sup_K\left[
\Phi_{P,K}^{act}(\operatorname{root})
+\int_{\operatorname{Hist}(P)}d\operatorname{Conn}_{P,K}^{act}
\right]
\le
C_N(u_0)
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1 .
\tag{TFE.295}
\]

If `(TFE.294)`--`(TFE.295)` hold, then `(TFE.269)` follows.  Then
`(TFE.265)` follows, and `(TFE.266)` gives terminal-uniform native reserve and
the desired \(L^1\) control.

This audit also explains why the previous endpoint-current and Schur-thin
surfaces are not separate problems.  The endpoint seed Carleson estimate
`(TFE.279)` is the active trace theorem `(TFE.294)` for first-birth endpoint
seeds.  The Schur-thin material source-variation estimate `(TFE.284)` is the
native-reserve domination `(TFE.295)` for the moving pressure/Hodge/current
connection before Schur residence has time to form.  For the full-output route
the connection is read through

\[
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\tag{TFE.296}
\]

which has the one-point parent-current identity.  Individual input-coloured
high-high triads still require a two-point current because their moving detector
is not the one-point full-output connection.

Thus the entropy story contributes a real mathematical sign law: the coupled
pressure/transport part cannot create active phase volume; selected \(L^1\)
growth can only come from active connection/frame motion or from fresh native
reserve.  The next section audits `(TFE.294)`--`(TFE.295)` against the stopped
selector surfaces and corrects this compressed reading: parent-reuse is already
paid by the parent-Gram entropy telescope, while first birth must enter the
native-reserve term.

## 34. Active trace correction: parent-reuse is proved, first birth is the
native-reserve term

The source audit shows that `(TFE.294)` is too compressed if it is read as a
single trace theorem.  There are two different selected actions inside it:
parent-reuse action and first-birth action.  They share the same parent packet,
but they are not paid by the same one-step algebra.

Split the retained positive selected reads into

\[
\Gamma(P)
=
\Gamma_{\rm reuse}(P)
\dot\cup
\Gamma_{\rm birth}(P)
\dot\cup
\Gamma_{\rm paid}(P),
\tag{TFE.297}
\]

where \(\Gamma_{\rm paid}\) contains reset, return, reselection, legal, stop,
donor, and endpoint-face exits already routed before the selected positive part.

For \(\gamma\in\Gamma_{\rm reuse}\), the stopped selector notes give a
parent-known finite score identity

\[
\Delta_\gamma\lambda_{\rm sel}
=
\ell_\gamma(Y_\gamma)-\psi_\gamma+e_\gamma,
\qquad
\psi_\gamma\ge0,
\tag{TFE.298}
\]

but the bare linear identity is not enough: a square-summable sequence can still
have infinite positive linear variation.  The parent-Gram correction supplies the
missing entropy loss.  With parent record

\[
\mathsf C_{\gamma^-}
=
\lambda_P I+\sum_{\rho<\gamma}\alpha_\rho e_\rho\otimes e_\rho
+\mathsf C_P^{inh},
\qquad
\tau_\gamma
=
\alpha_\gamma
\langle e_\gamma,\mathsf C_{\gamma^-}^{-1}e_\gamma\rangle ,
\tag{TFE.299}
\]

the self-normalized selector theorem gives

\[
[\Delta_\gamma\lambda_{\rm sel}]_+
\le
C_N\log(1+\tau_\gamma)
+R_\gamma^{reset}
+R_\gamma^{legal}
+Stop_\gamma .
\tag{TFE.300}
\]

The determinant increment is

\[
\Delta_\gamma\mathcal B_{\rm Gram}
=
\log(1+\tau_\gamma),
\tag{TFE.301}
\]

so summing over \(\Gamma_{\rm reuse}\) telescopes:

\[
\sum_{\gamma\in\Gamma_{\rm reuse}(P)}A_\gamma^{sel,+}
\le
C_N\left(
\mathcal B_{\rm Gram}(P_{\rm root})
-\sum_{\eta\in{\rm term}(P)}\mathcal B_{\rm Gram}(\eta)
\right)
+C_N\int_{\operatorname{Hist}(P)}d\operatorname{Conn}_{P}^{act}
+Paid(P).
\tag{TFE.302}
\]

This proves the parent-reuse part of the active trace theorem.  The proof uses
only parent-known stopped scores, the self-normalized determinant loss, bounded
projection of the original participation law, and paid route/selector drift.  It
does not spend future child clipping.

For \(\gamma\in\Gamma_{\rm birth}\), the determinant leverage record has no
previous paid coordinate to telescope through.  The correct admission line is
instead the bounded original-packet selected projection:

\[
A_\gamma^{sel,+}
\le
C_N\,d\operatorname{Birth}_{P}^{act}(\gamma)
+Paid(\gamma),
\tag{TFE.303}
\]

where \(d\operatorname{Birth}_{P}^{act}\) is the endpoint-current/native-reserve
measure of the first selected unit in the original packet.  In the endpoint seed
notation this is exactly

\[
d\operatorname{Birth}_{P}^{act}(\gamma)
\simeq
\int_{I_\gamma}H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt,
\qquad
M_\gamma=D_AJ_\gamma+M_{\gamma,stop}+M_{\gamma,legal}
+M_{\gamma,reset}+M_{\gamma,return}.
\tag{TFE.304}
\]

Thus the corrected active trace theorem is

\[
\sum_{\gamma\subset P}A_\gamma^{sel,+}
\le
C_N\left(
\Phi_{P}^{act}(\operatorname{root})
-\Phi_{P}^{act}(\operatorname{terminal})
+\int_{\operatorname{Hist}(P)}d\operatorname{Conn}_{P}^{act}
+\int_{\operatorname{Hist}(P)}d\operatorname{Birth}_{P}^{act}
\right)
+Paid(P).
\tag{TFE.305}
\]

The parent-reuse contribution to `(TFE.305)` is now installed by
`(TFE.298)`--`(TFE.302)`.  The first-birth contribution is not a new mysterious
source; it is the endpoint-current Carleson/native-birth theorem `(TFE.279)`.

Consequently `(TFE.295)` must be read with the birth term included:

\[
\Phi_{P}^{act}(\operatorname{root})
+\int_{\operatorname{Hist}(P)}d\operatorname{Conn}_{P}^{act}
+\int_{\operatorname{Hist}(P)}d\operatorname{Birth}_{P}^{act}
\le
C_N(u_0)
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1 .
\tag{TFE.306}
\]

Now the Gold \(L^1\) line has a sharper two-step form:

\[
\text{active trace `(TFE.305)'}
+\text{native-reserve domination `(TFE.306)'}
\Longrightarrow
\text{state-count packing `(TFE.269)'}
\Longrightarrow
\text{terminal-uniform \(L^1\)}.
\tag{TFE.307}
\]

The remaining unproved content is therefore no longer the whole active trace
line.  It is the same-parent native-reserve domination `(TFE.306)`, whose
unproved analytic faces are exactly:

\[
\text{endpoint-current first-birth Carleson `(TFE.279)'}
\quad+\quad
\text{Schur-thin material source-variation `(TFE.284)'}.
\tag{TFE.308}
\]

Physically: pressure/transport can turn the active detector, and viscosity
contracts bulk phase volume.  Reusing an already admitted detector is now paid by
the parent-Gram entropy telescope.  A genuinely first selected detector has to
leave a native endpoint current in the original coupled packet; proving that
those first-birth currents Carleson-pack with strict viscous margin is the
remaining \(L^1\) theorem.

## 35. Schur-thin correction: retained non-endpoint thinness descends to
endpoint, so Gold still needs terminal no-atom storage

The older same-material storage note contains a stronger Schur-thin reduction
than `(TFE.308)` records.  Once first entry, reuse, return, motion, legal, stop,
and endpoint-face exits have been separated, the retained Schur-thin branch has
the frozen same-detector normal form

\[
D_th=q(t)\ge0,
\qquad
\Omega_B=\int_{I_B}H_Bq(t)^2\,dt .
\tag{TFE.309}
\]

The only way Schur storage can fail to see this impulse is loss of material
retention time:

\[
\Theta_B
:=
{(\int_{I_B}q\,dt)^2
\over
|I_B|\int_{I_B}q^2\,dt}
\ll1 .
\tag{TFE.310}
\]

If \(\Theta_B\ge\kappa>0\), the same detector has enough residence time to write
into the Schur record, and the square-positive read is paid by the same parent
current:

\[
\int_{I_B}H_Bq^2\,dt
\le
C_\kappa H_B|I_B|^{-1}
\bigl(h_B(t_1)^2-h_B(t_0)^2\bigr)
+Paid_B .
\tag{TFE.311}
\]

If `(TFE.310)` fails, the density-selection descent gives a smaller retained
child interval carrying a fixed fraction of the same selected square bill:

\[
B_0\supset B_1\supset B_2\supset\cdots,
\qquad
|I_{B_{n+1}}|\le\lambda |I_{B_n}|,
\qquad
\Omega_{B_{n+1}}\ge c\,\Omega_{B_n}.
\tag{TFE.312}
\]

This descent cannot accumulate at any interior time \(t<T_*\), because the
original solution is smooth on compact preterminal intervals and the selected
critical bill on shrinking parabolic cylinders tends to zero there.  Therefore
loss of retention time is not retained non-endpoint Gold fuel:

\[
\text{retained Schur-thin nonendpoint}
\Longrightarrow
\text{Schur time-floor payment}
\quad\text{or}\quad
\text{same-witness terminal endpoint face}.
\tag{TFE.313}
\]

This corrects the role of `(TFE.284)`.  Its retained nonendpoint part is a
consumer theorem: time-floor gives Schur payment, and no-time-floor descends to
endpoint.  The CM route may consume that endpoint face as a Pack/Part/Field exit
after same-witness admission, but a forward Gold \(L^1\) proof cannot count CM
endpoint consumption as smoothness closure.  Gold has to remove the endpoint
face by constructing terminal-uniform full-packet no-atom storage.

The needed forward Gold endpoint storage is the root-fixed absolutely continuous
same-parent functional

\[
\mathcal L_P(t)
=
\mathcal L_P(t_0)
+\int_{t_0}^{t}\ell_P(s)\,ds
+Paid_P(t),
\qquad
\int_{t_0}^{T_*}(\ell_P)_-\,dtdx
\le
C_N(u_0)+E_{\rm paid}(P),
\tag{TFE.314}
\]

together with same-parent domination of terminal endpoint measure,

\[
d\mu_P^{end}
\le
C(\ell_P)_-\,dtdx
+d\lambda_P
+dPaid_P,
\tag{TFE.315}
\]

where \(\lambda_P\) has an \(L^1\) space-time density or is already legal, stop,
or endpoint-face material.  Then terminal no-atom follows by absolute
continuity:

\[
\lim_{\rho\downarrow0}\sup_{z_0}
\mu_P^{end}(T_\rho(z_0))
=0 .
\tag{TFE.316}
\]

Thus `(TFE.306)` should now be read as the native-reserve domination line with
three non-replay components:

\[
\begin{gathered}
\text{parent-reuse trace: installed by the Gram entropy telescope,}\\
\text{retained Schur-thin nonendpoint: paid by time-floor Schur descent,}\\
\text{forward Gold endpoint: still needs `(TFE.314)`--`(TFE.315)`}.
\end{gathered}
\tag{TFE.317}
\]

Equivalently, the current forward Gold \(L^1\) producer is narrower than
`(TFE.308)`:

\[
\text{first-birth endpoint-current Carleson `(TFE.279)'}
+
\text{root-fixed terminal-uniform no-atom storage `(TFE.314)`--`(TFE.315)'}
\Longrightarrow
\text{native-reserve domination `(TFE.306)'}.
\tag{TFE.318}
\]

This is exactly where the entropy story remains active.  Parent phase volume is
contracting, and retained Schur-thin nonendpoint reads cannot keep opening new
states.  The only forward Gold object left after that correction is the
terminal-uniform \(L^1\) density of the same coupled pressure-viscosity-
incompressibility-strain packet, strong enough to prevent a terminal atom of
first-birth endpoint current.

## 36. Terminal \(L^1\) construction audit: projected original-history charge is
the noncircular storage input

The storage in `(TFE.314)`--`(TFE.315)` is not produced by local absolute
continuity and it is not produced by a bare BV lower bound.  The closest
noncircular construction in the repo is the heat-lag entropy route.  Its source
term is the active same-parent route measure

\[
\mu_A(\widehat Q)
:=
\sum_{k>N}
\int_{T(Q)}
2^k a_k(t)\mathcal D_k^\uparrow(t)\,dt ,
\tag{TFE.319}
\]

and the heat-lag entropy inequality closes if \(\mu_A\) is Carleson on stopped
subtrees:

\[
\sup_{Q\subset P}{\mu_A(\widehat Q)\over \mathcal R(Q)}
\le C_N(u_0)+Paid(Q).
\tag{TFE.320}
\]

Indeed, the native heat-lag source term factors at heat scale as

\[
2h_J|\langle Z_J,S_J\rangle|\,dt
\le
\varepsilon\,\nu h_J\lambda_J^2\|Z_J\|_2^2\,dt
+C_\varepsilon {h_J\over\nu\lambda_J^2}\|S_J\|_2^2\,dt .
\tag{TFE.321}
\]

The first square is pressure-memory residence and is absorbed by viscous
heat-scale service.  The second square is the native source residence.  Carleson
control of that second square on every stopped subtree is exactly `(TFE.320)`.
Then the parent entropy inequality gives

\[
d\mathcal E_P
+c\,d\mu_{P,trans}^{pw}
+(1-\theta)dVisc_{P,N}
\le
dPaid_P+C_N(u_0)d\mathcal R_P,
\tag{TFE.322}
\]

and integrating `(TFE.322)` supplies the root-fixed terminal-uniform \(L^1\)
density needed in `(TFE.314)`.

The noncircular parent-side candidate for `(TFE.320)` is not the raw Bessel
stress square.  It is the projected original-history charge

\[
D_e^{new}
:=
(I-\Pi_{\mathcal P_{e^-}})
\int_{I_e}\Pi_{new}(e)
\Big(
[D_t,\mathcal L_A]w_e
+\operatorname{covector}_e
+\operatorname{frame}_e
+\operatorname{turnstile}_e
+\partial_\sigma Z_e
\Big)\,d\tau
+R_e^{legal},
\tag{TFE.323}
\]

\[
\mathcal R_P^{proj}(\widehat Q)
:=
\sum_{e\subset Q}
H_{e^-}\|D_e^{new}\|_{\mathcal H_{vis}\oplus\mathcal H_{sil}\oplus\mathcal H_{ex}}^2
+Return(Q)+Reset(Q)+Stop(Q)+Legal(Q).
\tag{TFE.324}
\]

The exact sufficient root line is

\[
\sup_{Q\subset P}
{\mathcal R_P^{proj}(\widehat Q)\over\mathcal R(Q)}
\le C_N(u_0)+Paid(Q).
\tag{TFE.325}
\]

If `(TFE.325)` holds, the stopped endpoint representation and accretive testing
give

\[
M_{parent-sub}^{fresh}
=D_AJ_{EP}^{new}
+M_{stop}^{fresh}+M_{legal}^{fresh}+M_{return}^{fresh},
\tag{TFE.326}
\]

\[
\int H_w|M_{parent-sub}^{fresh}|^2
\le
C_N\int |J_{EP}^{new}|^2\,d\mathcal R
+C_N(Return+Reset+Stop+Legal),
\tag{TFE.327}
\]

and hence both first-birth endpoint-current Carleson `(TFE.279)` and terminal
measure domination `(TFE.315)`.  Therefore

\[
\boxed{
\text{projected-charge Carleson `(TFE.325)'}
\Longrightarrow
\text{`(TFE.279)' + `(TFE.314)'--`(TFE.315)'}
\Longrightarrow
\text{native-reserve domination `(TFE.306)'.}
}
\tag{TFE.328}
\]

This proves the formal construction route into the \(L^1\) theorem.  The remaining
question is whether `(TFE.325)` follows from the original coupled packet.
Concentration-compactness has already removed vanishing, carrier dichotomy,
derivative-exact high-weight tube escape, selector drift, legal loss, stop loss,
and zero-cost silent freshness.  The surviving term is the persistent
nonderivative affine/root quotient

\[
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})
\mathcal C_\theta[Z_e^{fresh}].
\tag{TFE.329}
\]

The required payment for this quotient is

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\,Return_-(P)
+C\,PotAvg(P)
+C\,Overrun_{sel}(P)
+Legal(P)+Stop(P).
\tag{TFE.330}
\]

The fixed stopped-score return branch is installed relative to the parent
root-geometry currency.  The two still-open original-history inputs are the
fresh potential-average positive-transfer bound and the strict reset/overrun
Carleson bound:

\[
PotAvg(P)
+Overrun_{sel}(P)
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.331}
\]

Thus the current construction state is:

\[
\text{`(TFE.331)'}
\Longrightarrow
\text{`(TFE.330)'}
\Longrightarrow
\text{`(TFE.325)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.332}
\]

Physically, this is the last pressure-memory backlog.  A pressure-compatible
instruction may arrive before the velocity-energy readout is visible, and the
heat-lag entropy factorization prevents the same read from being recounted at
every scale.  What remains is the nonderivative affine average of that instruction
while it is still parent-subtracted.  If that average has scale derivative, route
motion, frame/covector/turnstile motion, return, reset, legal, or stop, it is
paid.  If it has none of those, the proof must show it is inherited parent
transport rather than fresh \(L^1\) action.  That is exactly the content of
`(TFE.331)`, and it is the remaining noncircular input, not a separate pressure
law and not a child-created storage.

## 37. Selected-record reduction of `(TFE.331)`

The two terms in `(TFE.331)` are not two independent scalar estimates.  The
existing selected-record audit identifies them as two faces of one parent-known
record on the original stopped material history:

\[
\mathfrak Z^S
=
(Z^S,\Psi^S,\Lambda^S).
\tag{TFE.333}
\]

Here \(Z^S\) is the stopped signed routed carrier, \(\Psi^S\) is the affine
scale-potential coordinate left by the fresh Volterra/DER-AQK quotient, and
\(\Lambda^S\) is the selected amplification/reset coordinate.  The record is
allowed to be built from original scale derivative, pressure-Hodge/current
motion, turnstile/exchange/covector/frame motion, selector or reselection loss,
legal loss, and stop loss.  It is not allowed to be defined from the future
selected tail or from the terminal \(L^1\) quantity being proved.

Define the stopped selected potential/amplification size by

\[
\begin{aligned}
\mathcal E_{SPA}(P)
:={}&
\int_0^{T^\ast}
H_w(t)
\left\|
{1\over |J|}\int_J\Psi^S(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2\,dt
\\
&+
\operatorname{Var}_{crit}^{stop}(\Lambda^S;P)
\\
&+
\sup_{P'\subseteq P}
{1\over \mathcal R(P')}
\sum_{Q\subseteq P'}
\|\Delta_QZ^S\|_{\mathfrak H_P}^2\mathcal R(Q)
\\
&+
\operatorname{TestDef}_S(P)
+Legal(P)+Stop(P).
\end{aligned}
\tag{TFE.334}
\]

The exact selected-record Carleson statement is

\[
\mathcal E_{SPA}(P)
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.335}
\]

This statement implies `(TFE.331)`.  Indeed, the fresh affine quotient has the
signed scale-descent form

\[
Y=\partial_\sigma\Psi^S+S^{spill}+E,
\tag{TFE.336}
\]

and pairing against the affine quotient weight leaves

\[
\mathcal P_{avg}^{fresh}(t)
=
{1\over |J|}\int_J\Psi^S(\sigma,t)\,d\sigma
\tag{TFE.337}
\]

after the scale-derivative, spill, frame, selector, return, and legal pieces
are routed.  Therefore

\[
PotAvg(P)
\le
C
\int_0^{T^\ast}
H_w(t)
\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
+Paid(P).
\tag{TFE.338}
\]

For a strict reset \(Q\to Q'\), the child selected coefficient is compared to
the parent coefficient transported into the child chart:

\[
\Delta_{reset}\Lambda^S(Q,Q')
=
\Lambda^S_{new}(Q')
-
\Lambda^S_{old\to new}(Q).
\tag{TFE.339}
\]

The reset overrun is the positive critical variation of the same record:

\[
\Omega_{reset}(Q,Q')
\le
C\,\omega(Q,Q')
[\Delta_{reset}\Lambda^S(Q,Q')]_+
+Paid(Q,Q').
\tag{TFE.340}
\]

Summing stopped reset edges gives

\[
Overrun_{sel}(P)
\le
C\,\operatorname{Var}_{crit}^{stop}(\Lambda^S;P)+Paid(P).
\tag{TFE.341}
\]

Combining `(TFE.338)` and `(TFE.341)`,

\[
\text{`(TFE.335)'}
\Longrightarrow
PotAvg(P)+Overrun_{sel}(P)
\le
C_N(u_0)\mathcal R(P)+Paid(P),
\tag{TFE.342}
\]

which is `(TFE.331)`.

This is the formal version of the entropy feedback picture.  A retained child
readout cannot keep recounting the same pressure-compatible push as fresh
positive work once \(\mathfrak Z^S\) is fixed parent-side.  Reuse changes the
\(Z^S\)-score and is paid by the stopped-score/Gram telescope.  A fresh affine
average changes the \(\Psi^S\)-coordinate.  A genuine reset changes the
\(\Lambda^S\)-coordinate.  A child readout that is not charted by those
coordinates has left the retained same-record transaction class and pays
selector, reselection, legal, stop, or connection loss.

So `(TFE.331)` is no longer two loose bills.  It is the selected-record face of
the entropy law:

\[
\text{parent-known selected-record Carleson `(TFE.335)'}
\Longrightarrow
\text{persistent quotient payment `(TFE.330)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.343}
\]

The scalar selected record is still not the full parent packet.  The parent
packet is the coupled stopped routed participation current plus the scale-native
native reserve.  In current form, the source is

\[
\nu^S
=
D_AJ^S+\nu^S_{stop}+\nu^S_{legal},
\tag{TFE.344}
\]

and the current-side Carleson input is

\[
\sup_{Q\subset P}
{1\over\mathcal R(Q)}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(\widehat Q)+Legal(\widehat Q)
\right]
\le C_N(u_0).
\tag{TFE.345}
\]

This current input pays stopped testing, pressure-Hodge projection, fixed
return, reset chart motion, and selected-record construction.  It does not, by
itself, pay pure scale-native zoom births.  Those are supplied by the native
reserve map

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\tag{TFE.346}
\]

with

\[
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+Paid(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{TFE.347}
\]

and

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.348}
\]

Thus the coupled supplier for `(TFE.335)` is the pair

\[
\text{stopped routed-current Carleson `(TFE.345)'}
+
\text{native-birth reserve `(TFE.346)'--`(TFE.348)'}.
\tag{TFE.349}
\]

With `(TFE.349)`, the stopped Hilbert/BMO/testing machinery constructs
\(\mathfrak Z^S\) before descendant selected clipping and proves `(TFE.335)`.
Then `(TFE.343)` gives the terminal-uniform \(L^1\) line.  Without the
scale-native reserve, `(TFE.345)` only controls bounded original-packet
projections; it does not stop a unit rescaled child detector whose original
pullback has size \(r^{-1/2}\).  This is why finite raw energy and raw current
packing are not enough for the Gold \(L^1\) quantity.

The current unresolved Gold assertion is therefore the coupled original-history
supplier

\[
\boxed{
\text{`(TFE.349)' from the original pressure-viscosity-incompressibility-
velocity packet.}
}
\tag{TFE.350}
\]

It is exactly the entropy story with healthy boundaries: the parent packet is
the original coupled current/native-reserve object; the child is the selected
heat-lag readout; the feedback loop is the parent-known record
\(\mathfrak Z^S\) that tracks which future selected states remain accessible
before the child can clip them as positive \(L^1\).

## 38. Audit of the coupled supplier `(TFE.350)`

The coupled supplier `(TFE.350)` has two different jobs.  The stopped routed
current job is a source-origin/testing job: keep the selected source as

\[
\nu^S=D_AJ^S+\nu^S_{stop}+\nu^S_{legal}
\tag{TFE.351}
\]

and prove stopped Carleson square packing for \(J^S\).  This pays pressure-Hodge
testing, fixed-core return, strict reset chart motion, and the scalar
selected-record estimate `(TFE.335)`.

The native-reserve job is different.  It pays scale-native births whose unit
child detector is not a bounded original-packet test.  In a packet of radius
\(r\), a unit rescaled detector pulls back with original \(L^2\) size
\(r^{-1/2}\).  Therefore raw current energy and raw finite energy cannot by
themselves bound the selected critical count.

The native-reserve theorem is the bounded-multiplicity first-birth map

\[
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\tag{TFE.352}
\]

\[
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}+Paid(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{TFE.353}
\]

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.354}
\]

This is the exact state-deletion statement for first native births.  Once a
birth atom is admitted, repeated use is parent-reuse, reset, return, legal, or
stop.  The first admission itself must create a reserve atom that descendants
cannot spend again with unbounded multiplicity.

The analytic coordinate of `(TFE.352)`--`(TFE.354)` is the critical fractional
reserve

\[
\mathfrak R_{nat}(T)
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt.
\tag{TFE.355}
\]

Testing the coupled Leray-projected equation against \(\Lambda u\) gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{TFE.356}
\]

Thus the native reserve closes if the positive transfer obeys

\[
\int_0^T
\left(
-
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1.
\tag{TFE.357}
\]

This is the same theorem as selected-generator storage coercivity:

\[
\int_{\operatorname{Hist}(P)}a\|G_{sel}\|^2
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.358}
\]

The natural scale-memory storage

\[
M=\langle w,L_Aw\rangle
\simeq
\int|\nabla_Aw|^2
\tag{TFE.359}
\]

only gives a signed balance identity after material differentiation.  It does
not give `(TFE.358)` by itself, because signed pairings can cancel while the
selected square norm remains large.  A true proof of `(TFE.358)` needs a
parent-known accretive test or symmetrizer \(K_P\):

\[
\|G_{sel}\|^2
\le
C\langle G,K_PG\rangle+Paid(P),
\tag{TFE.360}
\]

with the right side controlled by original material-history quantities and
packing over stopped subtrees.

So the entropy story contributes the correct monovariant only after the native
reserve map exists.  The decreasing object is not raw kinetic energy and not
bulk phase volume.  It is the parent-side accessible-state capacity measured by
stopped current motion plus native first-birth reserve.  Pressure/transport may
re-coordinate that capacity; viscosity supplies the critical reserve only after
positive transfer satisfies `(TFE.357)` or equivalently after the native
birth-packing map `(TFE.352)`--`(TFE.354)` is built.

Therefore the current completion line for the \(L^1\) problem is

\[
\boxed{
\text{`(TFE.352)'--`(TFE.354)'}
\Longleftrightarrow
\text{`(TFE.357)' / `(TFE.358)'}
\Longrightarrow
\text{`(TFE.350)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
}
\tag{TFE.361}
\]

The existing repo surfaces prove the downstream arrows in `(TFE.361)` and the
record projection `(TFE.333)`--`(TFE.343)`.  They do not yet prove the first
native-reserve/positive-transfer arrow for arbitrary smooth data.  That is the
actual remaining mathematical content of the Gold \(L^1\) problem after the
entropy-feedback audit.

## 39. First-arrow proof-method audit: upcascade transit is routed, strict
selected-capacity gain remains

The first arrow in `(TFE.361)` is not an arbitrary frequency-cascade problem.
The dyadic positive-transfer form is

\[
\int_0^T\sum_j2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt
\le
C_N(u_0)\mathcal R(P)+Paid(P),
\tag{TFE.362}
\]

or, with absorption language, the same bound with a strict
\(\theta\,\mathfrak R_{nat}(T)\) term on the right.  This is the concrete
frequency face of `(TFE.357)`.

The residence/transit split already pays the residence part.  On a fresh
crossing interval \(I_j\),

\[
\int_{I_j}\nu2^{2j}E_j(t)\,dt
\ge
\varepsilon
\int_{I_j}[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt
\tag{TFE.363}
\]

implies

\[
2^j\int_{I_j}[\Pi_{j-1\to j}^{fresh}]_+\,dt
\le
C_\varepsilon
\int_{I_j}\nu2^{3j}E_j(t)\,dt.
\tag{TFE.364}
\]

Thus residence is native viscous cost, not a new source.

The complement is transit: the incoming fresh flux leaves the shell before
residing.  The threaded-cascade reduction shows that this transit is coherent
same-material motion, not a fresh birth at every level.  For maximal transit
threads \(\gamma\),

\[
\sum_{\gamma\subset P}
\sum_{j\in\gamma}2^jM_j^\gamma
\le
C_NE_{root}(P)
+C\,Res(P)
+C\,ResetEscape(P)
+C\,ReturnBV(P)
+Paid(P).
\tag{TFE.365}
\]

Finite-band parent-predictable transit telescopes.  Parent-predictable transit
has no fresh selected differential.  Top outflux is a first-exit reset/escape.
Return to an old stopped core is return/BV.  Therefore the open first-arrow
problem is no longer "can a pulse climb forever by transit?" in that loose
sense.  That branch is routed into the parent-child transition faces already
appearing in `(TFE.333)`--`(TFE.343)`.

After this routing, the nonduplicate first-arrow object is the selected root
reserve itself:

\[
\sum_{Q\in\mathcal T_{sel}}A(Q)
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.366}
\]

Equivalently, by finite laminar-tree duality, for every monotone ancestry
multiplier

\[
0\le \alpha_{Q'}\le\alpha_Q\le1,
\qquad Q'\in ch(Q),
\tag{TFE.367}
\]

one must prove

\[
\sum_{Q\in\mathcal T_{sel}}\alpha_QA(Q)
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.368}
\]

The constant multiplier \(\alpha_Q\equiv1\) is admissible, so `(TFE.368)` is not
a weaker sparse test.  It is the adjoint certificate for the whole selected
first-ratio action.

In PDE terms, `(TFE.368)` is the laminar adjoint stress-test estimate.  Given
\(\alpha\), form the selected stress carrier

\[
\mathcal M_\alpha
=
\sum_{Q\in\mathcal T_{sel}}\alpha_Q\mu_Q^{sel}.
\tag{TFE.369}
\]

The needed estimate is that the backward pressure-Hodge / critical-strain
adjoint response to \(\mathcal M_\alpha\) has legal original-data energy with a
strict selected-capacity gain.  Linear backward Stokes/Hodge energy reaches only
raw capacity:

\[
\sum_\ell\nu_\ell<\infty.
\tag{TFE.370}
\]

The Gold first-ratio action asks for

\[
\sum_\ell2^\ell\nu_\ell<\infty.
\tag{TFE.371}
\]

The half-tail

\[
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{TFE.372}
\]

has `(TFE.370)` but violates `(TFE.371)`.  Ordinary heat/Stokes smoothing,
pressure-Hodge order-zero boundedness, raw energy, and raw current packing see
only `(TFE.370)`.  They do not supply the strict selected-capacity gain.

Thus the first arrow in `(TFE.361)` is sharpened to the following equivalent
forms:

\[
\begin{aligned}
&\text{native-birth reserve `(TFE.352)'--`(TFE.354)'}\\
&\Longleftrightarrow
\text{positive critical transfer `(TFE.357)'}\\
&\Longleftrightarrow
\text{selected root reserve `(TFE.366)'}\\
&\Longleftrightarrow
\text{laminar adjoint selected-capacity gain `(TFE.368)'--`(TFE.369)'}.
\end{aligned}
\tag{TFE.373}
\]

The fresh affine endpoint surfaces give a useful child coordinate of the same
gain.  On the positive fresh carrier, the affine quotient satisfies

\[
0\le c_F^{fresh}(t,x)
\le
C\,M_0^{fresh}(t,x),
\qquad
M_0^{fresh}(t,x)=\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\tag{TFE.374}
\]

so the positive affine branch reduces to the endpoint-mass threading estimate

\[
\int_0^{T^\ast}
H_w(t)\|M_0^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE.375}
\]

But `(TFE.375)` is a coordinate face of the same selected-capacity gain, not a
separate source of it.  The direct endpoint threading attempts leave exactly the
same need: a Carleson/synchronization or full-packet rigidity theorem that beats
the coherent positive endpoint half-tail for the same selected carrier.

The proof-method audit is therefore:

\[
\text{local storage}
\quad
\text{compactness/Liouville}
\quad
\text{raw tree counting}
\quad
\text{linear adjoint Stokes}
\tag{TFE.376}
\]

all stop at raw capacity or local attachment.  They do not prove `(TFE.373)`.
The remaining possible proof methods are exactly the nonlinear same-history
ones: an accretive selected-capacity test, a bounded-below root-positive-flux
reserve, a depletion law for positive critical transfer, or a critical-element
rigidity theorem that rules out the half-tail while preserving the full coupled
pressure-viscosity-incompressibility-velocity participation law.

This is the narrowest current formulation of the \(L^1\) problem.  The entropy
story has removed recounting and routed transit.  What is still mathematically
unproved is the strict selected-capacity gain that turns finite raw parent
capacity into finite selected first-ratio action for arbitrary smooth data.

## 40. Entropy-density closure test: the state-count picture as a real
half-tail theorem

The state-count picture does give an exact \(L^1\) route.  It says that the
selected child count must be the density of accessible future states inside one
parent material history.  Let \(d\mathcal R_P\) be the finite raw/root native
measure carried by a stopped parent packet \(P\), and let \(f_P\ge0\) be the
parent-known selected amplification density before child positive clipping:

\[
dA_P^{sel}=f_P\,d\mathcal R_P.
\tag{TFE.377}
\]

On dyadic amplification levels

\[
E_\ell(P)=\{2^\ell\le f_P<2^{\ell+1}\},\qquad
\nu_\ell(P)=\mathcal R_P(E_\ell(P)),
\tag{TFE.378}
\]

raw root control sees

\[
\sum_{\ell\ge0}\nu_\ell(P)<\infty,
\tag{TFE.379}
\]

while the selected \(L^1\) action is

\[
A_P^{sel}(P)
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell(P).
\tag{TFE.380}
\]

The half-tail

\[
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{TFE.381}
\]

is exactly the failure mode: `(TFE.379)` holds, but `(TFE.380)` diverges.

The entropy/state-count cure is not an abstract metaphor.  Any parent-side
Orlicz entropy bound

\[
\int_P f_P\log(e+f_P)\,d\mathcal R_P
\le
C_N(u_0)\mathcal R(P)+Paid(P)
\tag{TFE.382}
\]

immediately gives the selected \(L^1\) bound, because

\[
\int_P f_P\,d\mathcal R_P
\le
e\,\mathcal R_P(P)
+\int_P f_P\log(e+f_P)\,d\mathcal R_P.
\tag{TFE.383}
\]

Equivalently, any parent-side reverse-Holder/exponent lift

\[
\int_P f_P^{1+\varepsilon}\,d\mathcal R_P
\le
C_{\varepsilon,N}(u_0)\mathcal R_P(P)+Paid(P)
\tag{TFE.384}
\]

also gives `(TFE.380)` by Holder.  This is the clean mathematical form of the
physical statement that the pressure-heat-viscous feedback loop is deleting
future accessible states rather than opening a fresh selected state budget at
every ratio level.

The passive-heat entropy identity would close this instantly for the wrong
object.  If \(f\) were a passive scalar in the parent material chart,

\[
\partial_t f+U\cdot\nabla f-\nu\Delta f=0,\qquad \nabla\cdot U=0,
\tag{TFE.385}
\]

then

\[
{d\over dt}\int \Phi(f)
+\nu\int \Phi''(f)|\nabla f|^2
\le0,
\qquad
\Phi(s)=s\log(e+s).
\tag{TFE.386}
\]

But \(f_P\) is not a passive scalar.  It is the selected amplification density
of the coupled pressure-Hodge/strain/collar/selector state.  Its logarithmic
increments have to be captured before clipping by an original-history process:

\[
\log {f_{Q'}\over f_Q}
=
\ell_Q(\Delta_Q Z^S)-\psi_Q+e_Q,
\tag{TFE.387}
\]

with the root Carleson square bound

\[
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\sum_{Q\subseteq P'}
\left(
\|\Delta_QZ^S\|_{\mathcal H}^2+|e_Q|^2
\right)\mathcal R(Q)
\le
C_N(u_0)+Paid(P').
\tag{TFE.388}
\]

Then the stopped John--Nirenberg/Kazamaki consumer gives `(TFE.384)`, hence
`(TFE.380)`.  Thus the entropy proof closes the \(L^1\) half-tail exactly when
the selected log-amplification process `(TFE.387)`--`(TFE.388)` is produced from
the original coupled material packet.

The normalized bad half-tail makes the point sharp.  For

\[
c_L^{-1}=\sum_{\ell=0}^{L}{1\over \ell+1},
\qquad
\nu_\ell^{(L)}=c_L\,{2^{-\ell}\over \ell+1},
\tag{TFE.389}
\]

one has

\[
\sum_{\ell=0}^{L}2^\ell\nu_\ell^{(L)}=1,
\qquad
\sum_{\ell=0}^{L}\nu_\ell^{(L)}\to0,
\tag{TFE.390}
\]

but

\[
\sum_{\ell=0}^{L}
\ell\,2^\ell\nu_\ell^{(L)}
\simeq {L\over\log L}\to\infty.
\tag{TFE.391}
\]

So a unit selected \(L^1\) child action can disappear from raw capacity only by
creating unbounded selected log-amplification entropy.  If `(TFE.387)`--`(TFE.388)`
holds for the actual same-parent density, that unbounded entropy has to show up
as parent-current square, selector/order-lock variation, collar/turnstile
motion, strain/exchange motion, or legal/stop material.  The half-tail is then
impossible.

This gives the exact entropy version of `(TFE.373)`:

\[
\begin{aligned}
&\text{original-history selected log-amplification Carleson `(TFE.387)'--`(TFE.388)'}\\
&\Longrightarrow
\text{parent entropy/exponent lift `(TFE.382)' or `(TFE.384)'}\\
&\Longrightarrow
\text{selected root reserve `(TFE.366)'}\\
&\Longrightarrow
\text{terminal-uniform \(L^1\).}
\end{aligned}
\tag{TFE.392}
\]

Conversely, a counterexample to the selected root reserve produces, after
truncation and normalization as in `(TFE.389)`--`(TFE.391)`, a unit selected
child action with vanishing raw root capacity and unbounded selected
log-amplification entropy.  Therefore the entropy story has one precise
noncircular input left:

\[
\text{produce `(TFE.387)'--`(TFE.388)' from the original
pressure-viscosity-incompressibility-velocity packet.}
\tag{TFE.393}
\]

This is the same mathematical object as the selected-capacity/root-reserve wall,
but it is now expressed in the physical state-count language.  Pressure and
self-advection can re-coordinate which future states are accessible; viscosity
contracts the passive heat part; the selected \(L^1\) line closes only after
the active selected density itself is captured by a parent-known entropy or
log-amplification process before the child readout is counted.

## 41. Where the selected entropy lives in the coupled packet

The selected entropy is not a new scalar placed on top of Navier--Stokes.  In a
material chart \(X(a,t)\), write

\[
F=\nabla_aX,\qquad G=F^\top F,\qquad \det F=1.
\tag{TFE.394}
\]

Then

\[
D_tG=2F^\top S F,\qquad
S={1\over2}(\nabla u+\nabla u^\top).
\tag{TFE.395}
\]

For a transported material direction \(\xi\), the logarithmic stretch satisfies

\[
D_t\log |F\xi|
=
\widehat{F\xi}\cdot S\,\widehat{F\xi}.
\tag{TFE.396}
\]

This is the physical state-count derivative.  Incompressibility gives only

\[
\sum_{i=1}^3D_t\log\sigma_i(F)=D_t\log\det F=0,
\tag{TFE.397}
\]

so pressure/transport can reshuffle shape without changing bulk material
volume.  It does not by itself bound the positive variation of one selected
stretch direction.  The selected \(L^1\) bill is exactly that one-sided shape
variation after heat-scale selection:

\[
dA_P^{sel}
\lesssim
\left[
D_t\log |F\xi_Q|
+D_t\log \mathsf H_Q
+D_t\log \mathsf C_Q
+D_t\log \mathsf O_Q
\right]_+d\mathcal R_P
+dPaid.
\tag{TFE.398}
\]

Here \(\mathsf H_Q\) is the pressure-Hodge/current frame, \(\mathsf C_Q\) is the
collar/turnstile state, and \(\mathsf O_Q\) is the selector/order-lock state.
These are not extra accounts.  They are the coordinates of the same parent
pressure-viscosity-incompressibility-velocity packet in which the child heat
readout is later measured.

Differentiating the material acceleration law in the same chart gives the
pressure actuator and the viscous/transport descendants in the same derivative:

\[
D_t^{k+1}v
=
-D_t^k(A^\top\nabla_a q)
+\nu D_t^k\operatorname{div}_a(G\nabla_av)
+\mathcal C_k(A,G,v,q).
\tag{TFE.399}
\]

Thus the pressure tower can re-coordinate the selected frame instantly, while
the same material derivative also contains viscous descent, coefficient motion,
and commutator/frame motion.  The log-density increment in `(TFE.387)` has to
be made from this whole derivative:

\[
\Delta_QZ^S
\sim
\int_{I_Q}
\Pi_Q^{par}
\left(
S,\ A^\top\nabla_a^2q,\ \nu\operatorname{div}_a(G\nabla_av),\
D_tA,\ D_tG,\ D_t\mathsf H,\ D_t\mathsf C,\ D_t\mathsf O
\right)dt.
\tag{TFE.400}
\]

The finite-energy estimate gives a square integral of \(S\) and viscous
derivatives, but the selected entropy asks for the parent-known square function
of `(TFE.400)` after the active detector has followed the pressure-Hodge and
collar frame:

\[
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\sum_{Q\subseteq P'}
\|\Delta_QZ^S\|_{\mathcal H}^2\,\mathcal R(Q)
\le
C_N(u_0)+Paid(P').
\tag{TFE.401}
\]

Equation `(TFE.401)` is not automatic from `(TFE.395)`.  The trace-free identity
`(TFE.397)` allows one direction to stretch while another contracts.  Ordinary
viscous energy controls the square mass of strain, but the half-tail
`(TFE.381)` shows square/raw mass can stay finite while selected positive
first-ratio action diverges.  The missing strict gain is therefore precisely the
parent-known capture of the active direction changes in `(TFE.400)`, before the
child clips them into positive action.

This also explains why uncoupling pressure and viscosity was the wrong mental
shape.  Pressure-only language sees the instantaneous re-coordination but misses
the material log-density budget.  Viscosity-only language sees the passive heat
contraction but misses the selected frame that decides which future state is
being counted.  The \(L^1\) theorem is the coupled statement

\[
\text{material log-stretch/pressure-Hodge/collar/order-lock increments
`(TFE.400)' satisfy `(TFE.401)'.}
\tag{TFE.402}
\]

Once `(TFE.402)` is proved, `(TFE.387)`--`(TFE.388)` follow, then the
entropy/exponent lift `(TFE.382)` or `(TFE.384)`, then selected root reserve,
then terminal-uniform \(L^1\).  Without `(TFE.402)`, the entropy picture is
structurally correct but not yet a proof from original data.

## 42. Splitting `(TFE.402)`: bounded parent projection is proved, scale-native
capacity is the remaining line

The square function in `(TFE.401)` has two different parts.  Let
\(\mathfrak H_P\) be the Hilbert space of original-packet stress/frame/current
increments over the stopped parent history.  A selected log-density increment
is a bounded parent projection when it has the form

\[
\Delta_QZ^S
=
\langle \mathcal G_P,A_Q\rangle_{\mathfrak H_P},
\qquad
\|A_Q\|_{\mathfrak H_P}\le1,
\tag{TFE.403}
\]

where \(\mathcal G_P\) is the original coupled packet:

\[
\mathcal G_P
=
\left(
2\nu S_A,\ -p_A I,\ D_tA,\ D_tG,\ D_t\mathsf H,\ D_t\mathsf C,\ D_t\mathsf O
\right).
\tag{TFE.404}
\]

For these bounded projections, the parent record splits

\[
A_Q=\Pi_{E_{Q^-}}A_Q+(I-\Pi_{E_{Q^-}})A_Q
=B_Q+F_Q.
\tag{TFE.405}
\]

The inherited part \(B_Q\) is parent reuse.  It is controlled by the stopped
score and parent-Gram determinant telescope already installed in
`(TFE.298)`--`(TFE.302)`:

\[
\sum_{Q\in\mathcal T_{reuse}(P)}
[\langle \mathcal G_P,B_Q\rangle]_+
\le
C_N\Delta\mathcal B_{\rm Gram}(P)+Paid(P).
\tag{TFE.406}
\]

The orthogonal part \(F_Q\) is genuinely fresh only relative to the already
paid parent span.  Since the tests are bounded in \(\mathfrak H_P\), Bessel
gives

\[
\sum_{Q\in\mathcal T_{fresh}^{bd}(P)}
|\langle \mathcal G_P,F_Q\rangle|^2
\le
\|\mathcal G_P\|_{\mathfrak H_P}^2
\le
C_N(u_0)+Paid(P).
\tag{TFE.407}
\]

Thus the bounded-projection part of `(TFE.402)` is proved:

\[
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\sum_{Q\subseteq P'}
\|\Delta_QZ^{S,bd}\|_{\mathcal H}^2\,\mathcal R(Q)
\le
C_N(u_0)+Paid(P').
\tag{TFE.408}
\]

This is the exact mathematical version of "same parent, no recount" for the
entropy density.  Reusing an admitted direction is a Gram-entropy event.  First
entry into a bounded new direction is a Bessel event.  Neither can generate the
half-tail.

The remaining selected entropy is the scale-native part.  A unit child detector
at heat radius \(r\) can pull back to the original parent with

\[
\|A_{Q_r}\|_{\mathfrak H_P}^2\simeq r^{-1},
\tag{TFE.409}
\]

while its raw endpoint/current size is only

\[
\|M_{Q_r}\|_{\operatorname{Cap}_{raw,P}^{-1}}^2\simeq r,
\qquad
A_{sel}(Q_r)\simeq1.
\tag{TFE.410}
\]

So bounded Bessel cannot pay this branch.  The selected state-count theorem
requires a critical parent capacity, not the raw one:

\[
\|M_{Q_r}\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
\simeq
r^{-1}\|M_{Q_r}\|_{\operatorname{Cap}_{raw,P}^{-1}}^2.
\tag{TFE.411}
\]

The exact scale-native admission line is

\[
A_{sel}(Q)
\le
C_N\|M_Q\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
+Paid(Q),
\tag{TFE.412}
\]

and the exact packing line is

\[
\sum_{Q\subseteq P}
\|M_Q^{fresh}\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
\le
C_N(u_0)\mathcal R(P)
+\theta\nu\int_{\operatorname{Hist}(P)}
\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1.
\tag{TFE.413}
\]

Equations `(TFE.412)`--`(TFE.413)` are the endpoint-current/native-birth form of
the unproved piece of `(TFE.402)`.  With them,

\[
\Delta_QZ^S
=
\Delta_QZ^{S,bd}
+\Delta_QZ^{S,nat}
\tag{TFE.414}
\]

satisfies the full parent-known square function:

\[
\text{bounded projection `(TFE.408)'}
+\text{scale-native capacity `(TFE.412)'--`(TFE.413)'}
\Longrightarrow
\text{selected entropy source `(TFE.401)'--`(TFE.402)'}.
\tag{TFE.415}
\]

The converse half-tail test is also sharp.  If `(TFE.412)`--`(TFE.413)` fail,
one can have a nested family with

\[
\sum_k
\|M_{Q_k}\|_{\operatorname{Cap}_{raw,P}^{-1}}^2<\infty,
\qquad
\sum_kA_{sel}(Q_k)=\infty,
\tag{TFE.416}
\]

because every child restarts as a parent-relative first birth while the original
root sees only the raw \(r_k\)-cost.  This is not a detached pressure channel
and not a failure of same-parent admission.  It is exactly the missing
scale-native capacity of the same original coupled packet.

Therefore the current \(L^1\) problem has the following nonduplicated form:

\[
\begin{gathered}
\text{bounded parent-projection selected entropy: proved by Gram+Bessel,}\\
\text{scale-native selected endpoint/current capacity: `(TFE.412)'--`(TFE.413)' still unproved.}
\end{gathered}
\tag{TFE.417}
\]

Once the scale-native line is proved, `(TFE.415)` gives `(TFE.402)`, hence
`(TFE.392)` and terminal-uniform \(L^1\).

## 43. Expanding the scale-native capacity line into endpoint testing and
current packing

The capacity line `(TFE.412)`--`(TFE.413)` is not allowed to hide the theorem.
For each retained scale-native first birth \(Q\), the endpoint seed has the
same-material divergence form

\[
M_Q
=
D_AJ_Q
+M_{Q,stop}
+M_{Q,legal}
+M_{Q,reset}
+M_{Q,return},
\tag{TFE.418}
\]

where \(J_Q\) is made from the original coupled stress/frame/current packet,
not from the future selected tail.

The selected endpoint readout is

\[
A_{sel}(Q)
\simeq
\int_{I_Q}H_Q(t)\|M_Q(t)\|_2^2\,dt.
\tag{TFE.419}
\]

By duality,

\[
\int H_Q\|M_Q\|_2^2
=
\sup_{\|g\|_{L^2(H_Q)}\le1}
\left|\int H_QM_Qg\right|^2.
\tag{TFE.420}
\]

Using `(TFE.418)` and integrating by parts in the material chart gives

\[
\int H_QM_Qg
=
-\int J_Q\cdot D_A^\ast(H_Qg)
+Paid_g(Q).
\tag{TFE.421}
\]

So scale-native admission `(TFE.412)` follows from the endpoint testing
estimate

\[
\int |D_A^\ast(H_Qg)|^2\,d\mathcal R_Q^{-1}
\le
C_N\int H_Q|g|^2
+Paid(Q),
\qquad
\|g\|_{L^2(H_Q)}\le1.
\tag{TFE.422}
\]

Indeed `(TFE.420)`--`(TFE.422)` give

\[
A_{sel}(Q)
\le
C_N\int |J_Q|^2\,d\mathcal R_Q
+Paid(Q).
\tag{TFE.423}
\]

Thus the critical capacity norm in `(TFE.412)` is the endpoint-testing norm of
the parent-known current \(J_Q\):

\[
\|M_Q\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
\simeq
\inf_{D_AJ=M_Q+Paid}
\int |J|^2\,d\mathcal R_Q
+Paid(Q),
\tag{TFE.424}
\]

where the selected weight \(H_Q\) is legal only when `(TFE.422)` is proved from
the parent packet before clipping.

Summing `(TFE.423)` shows that scale-native packing `(TFE.413)` is exactly the
fresh endpoint-current Carleson estimate

\[
\sum_{Q\subseteq P}
\int |J_Q^{fresh}|^2\,d\mathcal R_Q
\le
C_N(u_0)\mathcal R(P)
+\theta\nu\int_{\operatorname{Hist}(P)}
\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1.
\tag{TFE.425}
\]

Consequently,

\[
\text{endpoint testing `(TFE.422)'}
+\text{fresh endpoint-current Carleson `(TFE.425)'}
\Longrightarrow
\text{scale-native capacity `(TFE.412)'--`(TFE.413)'}.
\tag{TFE.426}
\]

The endpoint testing line is a parent-knownness/accretivity requirement: the
weight \(H_Q\) must be announced by the stopped material frame, pressure-Hodge
frame, collar, and selector before the child takes the positive square.  If
\(H_Q\) is chosen from the future selected tail, `(TFE.422)` is circular.

The fresh current Carleson line is the strict arbitrary-data Gold input.  It is
the current-energy form of positive critical transfer:

\[
\sum_Q\int |J_Q^{fresh}|^2\,d\mathcal R_Q
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathfrak R_{nat}(P)
+Paid(P),
\qquad
\mathfrak R_{nat}(P)
\simeq
\nu\int_{\operatorname{Hist}(P)}\|\Lambda^{3/2}u(t)\|_2^2dt.
\tag{TFE.427}
\]

This is where the proof still has to beat the half-tail.  The divergence
identity `(TFE.418)` and testing duality `(TFE.420)`--`(TFE.423)` transfer a
selected endpoint seed into current energy.  They do not by themselves prove
that fresh current energy has the strict \(\theta<1\) root bound `(TFE.427)`.

Thus the \(L^1\) chain is now expanded without hidden language:

\[
\begin{aligned}
&\text{fresh endpoint-current Carleson with strict margin `(TFE.425)'/`(TFE.427)'}\\
&\Longrightarrow
\text{scale-native capacity `(TFE.412)'--`(TFE.413)'}\\
&\Longrightarrow
\text{selected entropy source `(TFE.401)'--`(TFE.402)'}\\
&\Longrightarrow
\text{parent entropy/exponent lift `(TFE.382)'--`(TFE.384)'}\\
&\Longrightarrow
\text{terminal-uniform \(L^1\).}
\end{aligned}
\tag{TFE.428}
\]

This is the current exact form of the unfinished proof.  The entropy story has
identified the right quantity, the bounded parent projection part is paid, and
the scale-native part has been reduced to a strict same-parent fresh
endpoint-current Carleson estimate from the original coupled packet.

## 44. Active-weight split: first-exit Cauchy is proved, fixed-core
root-upcrossing is the entropy survivor

The selected-weight problem in `(TFE.425)` has already split into two physical
cases.  This matters because the entropy/state-count picture is not asking for
one vague positive count.  It is asking whether a parent packet can keep
reopening access to future selected states after the coupled pressure-heat-
viscous handoff has already assigned the current readout to the same material
history.

For a stopped first-exit/reset edge \(e\), the parent announces the material
interval \(I_e\) and witness tube \(W_e\) before the fresh endpoint derivative
is read.  The active weight is the reciprocal Cauchy weight

\[
H_{e^-}(t)=H_{I_e}(t)
=
{|I_e|^2\over\int_{I_e}w(\sigma,t)^{-1}\,d\sigma},
\tag{TFE.429}
\]

where \(w\) is the original stopped participation metric along the parent
history.  The fresh endpoint derivative has the parent-interval form

\[
D_e^{fresh}(t)
=
|I_e|^{-1}\int_{I_e}G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{TFE.430}
\]

with

\[
G_e
=
\partial_\sigma Z_e
+\operatorname{turnstile}_e
+\operatorname{exchange}_e
+\operatorname{covector}_e
+\operatorname{frame}_e .
\tag{TFE.431}
\]

Weighted Cauchy--Schwarz gives, pointwise in \(t\),

\[
\left\|\int_{I_e}G_e(\sigma,t)\,d\sigma\right\|_2^2
\le
\left(\int_{I_e}w^{-1}\right)
\left(\int_{I_e}w\|G_e\|_2^2\,d\sigma\right).
\tag{TFE.432}
\]

Multiplying `(TFE.432)` by `(TFE.429)` and using `(TFE.430)` gives

\[
H_{e^-}(t)\|D_e^{fresh}(t)\|_2^2
\le
C\int_{I_e}w(\sigma,t)\|G_e(\sigma,t)\|_2^2\,d\sigma
+CR_e^{legal}(t).
\tag{TFE.433}
\]

The first-exit tubes are stopped sparse:

\[
\sum_{e\subset P}1_{W_e}(\sigma,t,x)
\le
C_N+R_{\rm legal}(P).
\tag{TFE.434}
\]

Therefore the first-exit/reset contribution to the active weighted current
packs:

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{fresh}\|_2^2\,dt
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}|^2
+|\operatorname{exchange}|^2
+|\operatorname{covector}|^2
+|\operatorname{frame}|^2
\right)
+CR_{\rm legal}(P).
\tag{TFE.435}
\]

This is the rigorous form of the physical point: a large selected first-exit
read cannot be a free state count.  The high weight is announced by the parent
interval, and Cauchy forces real derivative/turnstile/exchange/covector/frame
energy on that same interval.  This branch is not the remaining \(L^1\) wall.

The survivor is the fixed-core/root-upcrossing branch.  There the interval and
route are parent-known, but the same endpoint record is read at higher active
weight without a new first-exit derivative average of the form `(TFE.430)`.
This is exactly the feedback-loop face of the entropy story: pressure and
transport can re-coordinate the remaining velocity/strain state inside the
same incompressible packet, and the selected detector can see a higher active
weight on the same retained core unless that upcrossing is charged before
positive clipping.

Let \(H_P^\ast\) be the least stopped parent-predictable majorant of all active
weights admitted below \(P\):

\[
H_I\le H_P^\ast
\quad\text{on every retained announced edge }e\subset P.
\tag{TFE.436}
\]

Write its stopped Doob--Meyer/Bellman decomposition schematically as

\[
H_P^\ast=H_{P,0}+M_P^{wt}+A_P^{wt},
\tag{TFE.437}
\]

where \(A_P^{wt}\) is the increasing predictable compensator recording newly
admitted active-weight upcrossings.  The noncircular fixed-core theorem is the
parent-known entropy/storage inequality

\[
\begin{aligned}
&\int_{\operatorname{Hist}(P')}dA_{P'}^{wt}
+
\sum_{e\subset P'}
\int H_{e^-}(t)
\|\Pi_e^{fresh}F_e(t)\|_2^2\,dt\\
&\qquad\le
C_N(u_0)\mathcal R(P')
+\theta\,\mathfrak R_{nat}(P')
+R_{\rm legal}(P')
+Stop(P'),
\qquad \theta<1,
\end{aligned}
\tag{TFE.438}
\]

for every stopped \(P'\subseteq P\).  Here

\[
F_e
\sim
[D_t,\mathcal L_A]w
+\partial_\sigma Z
+\operatorname{turnstile}
+\operatorname{exchange}
+\operatorname{covector}
+\operatorname{frame},
\tag{TFE.439}
\]

projected after the parent-predictable carried span has been removed.  In
physical language, `(TFE.438)` says that every increase in the number of
accessible selected future states is either an announced first-exit derivative
cost, an actual fresh original-history current, legal/stop material, or a
bounded parent storage drop.  It prevents the feedback loop from turning the
same coupled pressure-compatible readout into fresh positive \(L^1\) action at
each higher active-weight level.

The theorem surfaces now line up as follows:

\[
\begin{gathered}
\text{first-exit/reset active weight}
\Longrightarrow
\text{Cauchy packing `(TFE.429)'--`(TFE.435)'},\\
\text{fixed-core/root-upcrossing}
\Longleftrightarrow
\text{parent-known active-weight compensator `(TFE.436)'--`(TFE.438)'}.
\end{gathered}
\tag{TFE.440}
\]

Consequently the remaining \(L^1\) proof is no longer "prove endpoint testing"
as a single opaque line.  Endpoint testing and current duality are consumers.
The smoothness-bearing input is the fixed-core/root-upcrossing inequality
`(TFE.438)` from the original coupled pressure-viscosity-incompressibility-
velocity packet.  Once `(TFE.438)` is proved, it supplies the fresh
endpoint-current Carleson estimate `(TFE.425)` on the only branch not already
covered by `(TFE.435)`, then `(TFE.428)` gives terminal-uniform \(L^1\).

## 45. Fixed-core replay: square return is installed, linear return still needs
selected admission

The fixed-core part of `(TFE.438)` is not a new selector effect.  After
first-exit/reset and fresh orthogonal innovation are removed, the selector is
reading the same material core again.  Let \(\mathfrak A(P)\) be the stopped
laminar family of such retained fixed cores and write

\[
dU_{\mathcal A}
\simeq
\sum_{e\subset\mathcal A}dA_e^{wt}
+
\sum_{e\subset\mathcal A}
H_{e^-}\|B_e^{rep}\|_{\mathcal H_{\rm lift}}^2\,dt ,
\tag{TFE.441}
\]

where \(B_e^{rep}\) is the parent-predictable repeated-core component.  The
right signed object is a stopped stress-work potential
\(\Psi_{\mathcal A}\) built from the same transported material packet.  In
material variables,

\[
v=u\circ X,\qquad
q=p\circ X,\qquad
A=(D_aX)^{-1},\qquad
\mathcal T=-qI+2\nu S(u)\circ X,
\tag{TFE.442}
\]

and the model fixed-core channel is

\[
F_{\psi_{\mathcal A}}(t)
=
\int
v_i\mathcal T_{ij}A_{\ell j}\partial_{a_\ell}\psi_{\mathcal A}\,da .
\tag{TFE.443}
\]

The fixed-core lift asks for

\[
dU_{\mathcal A}
\le
C_N(d\Psi_{\mathcal A})_+
+dR_{\mathcal A}^{legal}
+dStop_{\mathcal A}.
\tag{TFE.444}
\]

Once `(TFE.444)` is available, the scalar part is complete.  On every stopped
subinterval \(I\),

\[
(d\Psi_{\mathcal A})_+(I)
\le
\operatorname{Rec}_{I}(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A};I),
\tag{TFE.445}
\]

so laminar summation gives

\[
U_{\rm fixed}(P)
\le
C_N
\int_{\mathfrak A(P)}
\left(
\operatorname{Rec}_\infty(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A})
\right)d\mu_P(\mathcal A)
+R_{\rm legal}(P)+Stop(P).
\tag{TFE.446}
\]

Thus fixed-core replay is paid once the same original packet supplies finite
record and finite negative return for this stopped potential.

The repo has the correct original-packet source for the return score.  With
\[
P_R=\Gamma_RZ^S,
\tag{TFE.447}
\]

where \(\Gamma_R\) is parent/root-known and \(Z^S\) is the routed carrier
coordinate of the same coupled packet,

\[
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S,
\tag{TFE.448}
\]

and therefore

\[
|\partial_\sigma P_R|
\le
C\left(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
+|\operatorname{conn}_\sigma|
\right)
+Err_{\rm legal}.
\tag{TFE.449}
\]

For a stopped return interval \(I\), with
\[
\Delta_I^-P_R=[P_R(\sigma_-)-P_R(\sigma_+)]_+,
\qquad
H_I={|I|^2\over\int_Iw^{-1}\,d\sigma},
\tag{TFE.450}
\]

weighted Cauchy gives the installed square return payment

\[
\sum_{I\subset P}
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)
+R_{\rm legal}(P)+Stop(P).
\tag{TFE.451}
\]

This is the exact physical/mathematical distinction.  The original packet pays
square return in the harmonic active-weight currency.  It does not by itself
prove raw linear negative variation

\[
\sum_I\Delta_I^-P_R<\infty .
\tag{TFE.452}
\]

Linear return follows only after retained selected returns are admitted into the
same harmonic currency, for example through either

\[
\Delta_I^-P_R\ge\eta |I|
\quad\text{on retained selected returns,}
\tag{TFE.453}
\]

or the bounded inverse-weight length condition

\[
\sum_I\int_Iw^{-1}\,d\sigma
\le
C_N\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.454}
\]

With `(TFE.453)`, `(TFE.451)` gives

\[
\sum_I\Delta_I^-P_R
\le
\eta^{-1}
\sum_I
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
+R_{\rm legal}(P),
\tag{TFE.455}
\]

and `(TFE.454)` gives the same conclusion by Cauchy in the stopped sum.

Therefore the fixed-core part of `(TFE.438)` has a precise noncircular
reduction:

\[
\begin{gathered}
\text{fixed-core signed stress-work lift `(TFE.444)'}\\
+\text{record bound and square return `(TFE.446)'--`(TFE.451)'}\\
+\text{retained-return admission `(TFE.453)' or `(TFE.454)'}\\
\Longrightarrow
\text{fixed-core active-weight compensator `(TFE.438)'.}
\end{gathered}
\tag{TFE.456}
\]

So the current \(L^1\) edge is even narrower.  First-exit/reset is paid by
`(TFE.435)`.  Fixed-core replay is paid by `(TFE.456)` once the retained returns
are admitted into the harmonic square currency of the original coupled packet.
The missing theorem is not raw scalar BV and not another Bessel projection; it
is the selected admission/root-reserve lower bound that turns the installed
square return payment into the linear \(L^1\) return bound required by
`(TFE.438)`.

## 46. Root-geometry currency: the next noncircular producer below retained
return admission

The apparent tension between the fixed-score closure note and the return-BV
producer test is resolved by typing the currency.  The fixed stopped-score
argument closes repeated-core return only relative to a parent-known
root-geometry currency.  The return-BV test correctly says that this currency
still has to be produced from original data; otherwise square return has merely
been named, not bounded.

The root currency combines active-weight upcrossing and connection/angle drift:

\[
dA_P^{root}=dA_P^{wt}+dA_P^{conn}.
\tag{TFE.457}
\]

The needed root-geometry estimate is

\[
\int_{\operatorname{Hist}(P')}dA_{P'}^{root}
+
\sum_{e\subset P'}
\int H_{e^-}
\|D_e^{vis}+D_e^{sil}+D_e^{ex}\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(P')
+R_{\rm legal}(P')+Stop(P')
\tag{TFE.458}
\]

for every stopped \(P'\subseteq P\), with all objects chosen before selected
positive child readout.

The only admissible generator for `(TFE.458)` is the parent-subtracted
root-material generator

\[
\mathcal G_P^{root}
=
\Pi_{\rm new}^{P}
\left(
\partial_\sigma Z
+[D_t,\mathcal L_A]w
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
+\operatorname{frame}_\sigma
+\operatorname{collar/endpoint}_\sigma
\right).
\tag{TFE.459}
\]

A noncircular proof of `(TFE.458)` would come from a bounded parent storage and
root ledger

\[
dA_P^{root}
+a_P\|\mathcal G_P^{root}\|^2\,d\sigma dt
\le
-D_{\sigma,t}M_P
+d\Lambda_P^{root},
\tag{TFE.460}
\]

with

\[
0\le M_P\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\qquad
\int_{\operatorname{Hist}(P)}d\Lambda_P^{root}
\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.461}
\]

Derivative-exact pieces of `(TFE.459)` are already compatible with the
first-exit Cauchy argument `(TFE.429)`--`(TFE.435)`.  The remaining obstruction
is the persistent affine/root quotient: a fresh selected root defect can be
represented formally as

\[
D_e=(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e],
\tag{TFE.462}
\]

but this is not yet the same as a parent-announced interval average of
\(\mathcal G_P^{root}\).  Applying Cauchy directly to \(Z_e\) would require the
selected-critical root bound already being proved.

Thus the next noncircular theorem is the root-defect tightness statement:

\[
\text{a normalized parent-subtracted root defect cannot carry unit selected
active weight while }d\Lambda_P^{root},R_{\rm legal},Stop\to0.
\tag{TFE.463}
\]

Equivalently, if a bad sequence satisfies

\[
\int dA_{P_n}^{root}
+
\sum_{e\in\mathcal E_n}
\int H_{e^-}\|D_e\|_{\mathcal H_{\rm lift}}^2
=1,
\tag{TFE.464}
\]

and

\[
\int_{\operatorname{Hist}(P_n)}d\Lambda_{P_n}^{root}
+R_{\rm legal}(P_n)+Stop(P_n)\to0,
\tag{TFE.465}
\]

then after stopping and passing to the parent frame, every possible survivor is
inherited parent-affine transport rather than fresh selected action:

\[
D_\infty=0.
\tag{TFE.466}
\]

This is the compactness form of the entropy story.  A selected state can only
remain accessible by moving the root geometry, changing the active weight,
changing connection/angle, or producing a true fresh quotient.  If all those
root motions vanish in `(TFE.465)`, the child is only the parent state carried
forward, so it cannot be counted as fresh positive \(L^1\) action.

The current reduction is therefore

\[
\begin{gathered}
\text{root-defect tightness `(TFE.463)'--`(TFE.466)'}\\
\Longrightarrow
\text{root-geometry compensator `(TFE.457)'--`(TFE.461)'}\\
\Longrightarrow
\text{retained-return admission/root reserve `(TFE.453)'--`(TFE.456)'}\\
\Longrightarrow
\text{active-weight compensator `(TFE.438)'}\\
\Longrightarrow
\text{terminal-uniform \(L^1\) by `(TFE.428)'.}
\end{gathered}
\tag{TFE.467}
\]

This is still not a Gold closure claim.  It is the current smallest
nonduplicate producer below the entropy \(L^1\) wall: prove root-defect
tightness from the original coupled material packet, or exhibit the surviving
defect as the exact obstruction.

## 47. Source-audit correction: the entropy survivor is persistent affine
scale-memory return

The source audit sharpens `(TFE.467)`.  The broad phrase "root-defect
tightness" is too coarse as the last live edge, because two of its apparent
escape faces are already handled under their stopped hypotheses.

First, a strict reset/high-weight tube is paid once it is a parent-announced
first-exit derivative interval with stopped bounded-overlap witnesses:

\[
\sum_{e\in\mathcal E_{\rm esc}}
\int H_e\|D_e^{fresh}\|^2
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{\rm legal}(P).
\tag{TFE.468}
\]

Second, a tight same-carrier zero-cost reset is rigid.  In the stopped carrier
coordinate \(q=\Gamma Z\), vanishing derivative, turnstile, exchange, covector,
legal, and stop motion gives

\[
\partial_\sigma q_\infty=0,
\qquad
D_\infty^{fresh}
=q_\infty(\sigma_1)-q_\infty(\sigma_0)=0.
\tag{TFE.469}
\]

Thus the reset escape and zero-cost replay faces are not the entropy \(L^1\)
survivor.  After those are removed, the remaining same-carrier object is the
persistent affine/root quotient

\[
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})
\mathcal C_\theta[Z_e^{fresh}],
\tag{TFE.470}
\]

where \(\mathcal C_\theta[Z_e^{fresh}]\) is not a parent-announced derivative
average.  This is the place where the entropy/state-count story has to become
a real parent scale-memory inequality.

In a signed scale-memory coordinate, write

\[
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_-.
\]

For the affine kernel \(\mathcal C_\theta\), integration by parts gives

\[
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(s_0)\Psi(s_0)
+{1\over |I|}\int_J\Psi(\sigma)\,d\sigma
+\mathcal C_\theta[Y_-]
+\mathcal C_\theta[S^{spill}]
+\mathcal C_\theta[E].
\tag{TFE.471}
\]

This is the exact mathematical form of the physical feedback picture.  A
positive selected affine readout on the same carrier is not a new state opened
from nowhere.  It is the signed scale-memory motion plus the negative return
needed to reset the scale potential before the next positive readout can be
presented.  Therefore the persistent quotient is controlled precisely by
potential average, negative return, selected overrun, and paid spill/error:

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\,\operatorname{PotAvg}_P(\Psi)
+C\,\operatorname{Return}_{-,P}(\Psi)
+C\,\operatorname{Overrun}_{sel}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{TFE.472}
\]

The noncircular Gold input is the parent estimate that makes those three
scale-memory terms original-history finite with strict native-reserve margin:

\[
\operatorname{PotAvg}_P(\Psi)
+\operatorname{Return}_{-,P}(\Psi)
+\operatorname{Overrun}_{sel}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathfrak R_{nat}(P)
+R_{\rm legal}(P)+Stop(P),
\qquad \theta<1.
\tag{TFE.473}
\]

Equivalently, in the generator language of the same packet, this is the
selected-generator storage/coercivity line

\[
\int_{\operatorname{Hist}(P)}
a(\sigma,t)\|G_{\rm sel}(\sigma,t)\|^2\,d\sigma dt
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathfrak R_{nat}(P)
+R_{\rm legal}(P)+Stop(P),
\qquad \theta<1.
\tag{TFE.474}
\]

The critical Leray scalar face is only a coordinate shadow of `(TFE.474)`:

\[
\int_0^\tau B_+(t)\,dt
\le
C_N(u_0)
+\theta\nu\int_0^\tau\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad \theta<1.
\tag{TFE.475}
\]

The object behind `(TFE.475)` is still the coupled material increment
`(TFE.400)`: pressure-Hodge/current frame, strain/log-stretch,
viscous descent, collar/turnstile, selector/order-lock, and commutator motion
inside one transported packet.  The scalar display must not be read as a
pressure-only or velocity-only replacement for that packet.

This is also the exact relation to the entropy density theorem.  The selected
state count is the density \(f_P=dA_P^{sel}/d\mathcal R_P\).  The half-tail
\(\nu_\ell=2^{-\ell}/(\ell+1)\) survives raw root capacity because
\(\sum\nu_\ell<\infty\) while \(\sum2^\ell\nu_\ell=\infty\).  It is killed by
parent \(L\log L\) entropy or reverse Holder only after the log-amplification
increments are produced by the same original packet:

\[
\text{persistent affine scale-memory return/coercivity `(TFE.472)'--`(TFE.474)'}
\Longrightarrow
\text{selected log-amplification Carleson `(TFE.387)'--`(TFE.388)'}
\tag{TFE.476}
\]

and then

\[
\text{selected entropy/exponent lift `(TFE.382)'--`(TFE.384)'}
\Longrightarrow
\text{selected root reserve `(TFE.366)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.477}
\]

So the entropy story is being used in its repo-accurate form: every positive
child readout must either delete/reveal an accessible future state in the
parent scale-memory record, or pay the negative return/overrun needed to reset
that record.  The remaining proof is not the broad root-defect wrapper; it is
the accretive same-parent scale-memory inequality `(TFE.473)`/`(TFE.474)` for
the original coupled pressure-viscosity-incompressibility-velocity packet.

This is still not a Gold closure claim.  It is a sharper target replacement:

\[
\begin{gathered}
\text{reset escape `(TFE.468)' and zero-cost replay `(TFE.469)' are handled under their stopped hypotheses,}\\
\text{persistent affine scale-memory return/coercivity `(TFE.472)'--`(TFE.474)'}
\Longrightarrow
\text{root-geometry compensator `(TFE.457)'--`(TFE.461)'}\\
\Longrightarrow
\text{active-weight compensator `(TFE.438)'}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\end{gathered}
\tag{TFE.478}
\]

## 48. Direct attack on `(TFE.473)`: entropy scalar closure versus coupled
lift/return production

The entropy story is the object being used here, not an analogy.  A selected
readout reduces the family of future parent-packet histories still compatible
with the coupled pressure-heat-viscous handoff.  Re-reading the same material
core at a higher active weight can create positive \(L^1\) only by one of two
state-count motions: the same scale-memory record rises, or the record first
returns/resets and then rises again.

This gives the decomposition

\[
\mathsf A_P^{pers}
:=
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\operatorname{Rec}_P(\Psi)
+C\operatorname{Ret}_{-,P}(\Psi)
+C\operatorname{Overrun}_{sel}(P)
+R_{\rm legal}(P)+Stop(P),
\tag{TFE.479}
\]

where \(\mathsf A_P^{pers}\) is the persistent same-core affine/root readout
from `(TFE.470)`.  The scalar part of `(TFE.479)` is closed: along one stopped
ancestry line,

\[
V_+(\Psi;I)
=
\Psi(\sigma_1)-\Psi(\sigma_0)+V_-(\Psi;I).
\tag{TFE.480}
\]

Thus positive visits of the selected scale-memory coordinate are exactly record
growth plus negative return, modulo already paid spill/error.  In the chess-state
picture, a later compatible state is not a new game; it is reached either by
advancing the same record or by moving backward enough that a later positive
move is a return-read of the same record.

The source audit shows precisely which parts of `(TFE.473)` are scalar and which
parts are still PDE production:

\[
\begin{gathered}
\text{scalar BV identity `(TFE.480)'}\\
+\text{endpoint-corrected record/potential-average consumer}\\
+\text{harmonic square return payment from the original packet}\\
+\text{selected admission/root-reserve lower bound}\\
+\text{polar-compatible signed lift before clipping}
\end{gathered}
\Longrightarrow
\text{`(TFE.473)' and `(TFE.474)'.}
\tag{TFE.481}
\]

The already installed original-packet return estimate is square, not raw linear:

\[
\sum_{I\subset P}
H_I\left({\Delta_I^-P_R\over |I|}\right)^2
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)
+R_{\rm legal}(P)+Stop(P).
\tag{TFE.482}
\]

To turn `(TFE.482)` into the linear negative-return term in `(TFE.479)`, each
retained selected return must be admitted into the same harmonic currency:

\[
\Delta_I^-P_R\ge \eta |I|
\quad\text{on retained selected returns,}
\qquad\text{or}\qquad
\sum_I\int_Iw^{-1}\,d\sigma
\le C_N\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.483}
\]

This is exactly where the entropy story touches the \(L^1\) wall.  The scalar
state-deletion law prevents a same-core positive readout from being counted as
fresh at every scale.  The coupled PDE proof must still show that the returns
and records seen by that scalar law are visible in the original
pressure-viscosity-incompressibility-velocity packet before the child clips the
positive part.

Equivalently, the direct contradiction form is:

\[
\mathsf A_{P_n}^{pers}=1,
\qquad
\operatorname{Rec}_{P_n}(\Psi)
+\operatorname{Ret}_{-,P_n}(\Psi)
+\operatorname{Overrun}_{sel}(P_n)
+R_{\rm legal}(P_n)+Stop(P_n)\to0
\tag{TFE.484}
\]

is impossible once the signed lift and selected return admission are installed.
Indeed `(TFE.480)` then forces the positive scale-memory variation to vanish,
while `(TFE.479)` says all persistent selected affine/root readout is made from
that variation plus paid defects.  Any nonzero survivor in `(TFE.484)` is
therefore not a new entropy state; it is a failure of one of the coupled
production inputs in `(TFE.481)`.

So the current proof state is sharp.  The entropy scalar theorem closes the
counting problem after the coupled variables have been lifted into a signed
same-parent scale-memory record.  Gold closure still requires the original
coupled packet to produce that lift and the retained-return admission with a
strict \(\theta<1\) margin:

\[
\operatorname{Rec}_P(\Psi)
+\operatorname{Ret}_{-,P}(\Psi)
+\operatorname{Overrun}_{sel}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathfrak R_{nat}(P)
+R_{\rm legal}(P)+Stop(P),
\qquad \theta<1.
\tag{TFE.485}
\]

When `(TFE.485)` is proved from the original
pressure-viscosity-incompressibility-velocity packet, `(TFE.479)` gives the
persistent affine/root contribution, `(TFE.476)` gives selected entropy
Carleson, `(TFE.477)` gives the exponent lift/root reserve, and `(TFE.478)` gives
terminal-uniform \(L^1\).  Without `(TFE.485)`, the note has a complete entropy
reduction but not Gold closure.

## 49. Linear currency split: what `(TFE.485)` must prove after entropy

The source audit also corrects the currency of `(TFE.485)`.  The fixed stopped
channel already has a signed scale-potential lift under its proper hypothesis:
for a parent-known stopped channel \(\Gamma_R\),

\[
P_R=\Gamma_R Z^S,
\qquad
\partial_\sigma P_R
=\Gamma_R(\partial_\sigma Z^S)+(\partial_\sigma\Gamma_R)Z^S,
\tag{TFE.486}
\]

and the derivative is controlled by original-history scale, turnstile, exchange,
covector, connection, legal, and stop motion.  Thus the fixed-channel signed lift
is not the present missing term.  The missing term is the conversion of retained
positive selected reads into the right original-parent currency before the child
clips the positive part.

For a heat-lag or scale-memory selected interval \(I\), write the same-parent
detector identity as

\[
\Delta_I U_I
=J_P(\psi_I^P)+Err_I,
\qquad
\widetilde\psi_I^P=\omega_I^{1/2}\psi_I^P,
\tag{TFE.487}
\]

where the weighted detector is parent-declared before the selected child value is
used.  The linear \(L^1\) bill is

\[
\mathsf L_P^{ret}
:=
\sum_{I\subset P}\omega_I|\Delta_IU_I|_+ .
\tag{TFE.488}
\]

Parent declaration and parent subtraction split each retained read into three
currencies:

\[
\omega_I|\Delta_IU_I|_+
\le
C[q_I\,dq_I]_+
+d\mathcal N_I^{heat/native}
+dMotion_I+dReturn_I+dLegal_I+dStop_I .
\tag{TFE.489}
\]

Here \(q_I\) is the charged same-parent Schur/current coordinate, so reuse is not
fresh child action; \(d\mathcal N_I^{heat/native}\) is the genuinely new
scale-native heat-lag/native-birth charge; and the remaining terms are actual
movement of the stopped material frame, return/reset, legal synchronization, or
stopping.

The first term is exactly where the entropy/record-return story applies.  On a
fixed stopped ancestry line,

\[
\sum_I [q_I\,dq_I]_+
\le
C\operatorname{Rec}_P(q^2)
+C\operatorname{Ret}_{-,P}(q^2)
+R_{\rm legal}(P)+Stop(P),
\tag{TFE.490}
\]

and `(TFE.480)` is the scalar reason: positive same-current reads are record
growth plus the negative return needed to reset the record.  This kills recount
of the same parent push.

The bounded-Riesz/fresh-Bessel channel gives only square novelty:

\[
\sum_{I\subset P}
\left|J_P\!\left(
(I-\Pi_{\mathcal P_{I^-}})\widetilde\psi_I^P
\right)\right|^2
\le C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.491}
\]

That is necessary and installed for bounded original-packet tests, but it does
not imply `(TFE.488)`.  The half-tail
\(\nu_\ell=2^{-\ell}/(\ell+1)\), \(\omega_\ell=2^\ell\) still has finite weighted
square mass while the weighted linear bill diverges:

\[
\sum_\ell\omega_\ell\nu_\ell^2<\infty,
\qquad
\sum_\ell\omega_\ell\nu_\ell=\infty.
\tag{TFE.492}
\]

Therefore the actual linear producer required by `(TFE.489)` is

\[
\sum_{I\subset P} d\mathcal N_I^{heat/native}
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathfrak R_{nat}(P)
+R_{\rm legal}(P)+Stop(P),
\qquad \theta<1.
\tag{TFE.493}
\]

This is the same object called `NativeBirthChargePacking.A`,
`SelectedGeneratorStorageCoercivity.A`, `OriginalScaleMemoryStorageCoercivity.A`,
or `PositiveCriticalTransferBound.A` in different coordinates.  It is not a
pressure-only theorem and not a viscosity-only theorem.  It says that a fresh
scale-native heat-lag read, once selected as positive linear action, must be a
finite original-history native increment of the same coupled
pressure-viscosity-incompressibility-velocity packet.

Combining the installed same-parent detector, the record-return scalar law, the
fixed-channel lift, and `(TFE.493)` gives the desired parent estimate:

\[
\mathsf L_P^{ret}
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathfrak R_{nat}(P)
+R_{\rm legal}(P)+Stop(P),
\qquad \theta<1.
\tag{TFE.494}
\]

Then `(TFE.494)` implies `(TFE.485)` by identifying the persistent affine
scale-memory readout with the retained heat/native intervals in `(TFE.488)` and
charging the record/return/overrun terms through `(TFE.490)` and `(TFE.493)`.
The downstream chain remains

\[
\text{`(TFE.494)'}
\Longrightarrow
\text{`(TFE.485)'}
\Longrightarrow
\text{`(TFE.479)'}
\Longrightarrow
\text{selected entropy Carleson}
\Longrightarrow
\text{terminal-uniform \(L^1\).}
\tag{TFE.495}
\]

The normal-form contradiction for the remaining open part is now:

\[
\mathsf L_{P_n}^{ret}=1,
\qquad
\sum_I[q_I\,dq_I]_+
+\sum_I d\mathcal N_I^{heat/native}
+Paid(P_n)\to0.
\tag{TFE.496}
\]

The entropy part rules out the first summand vanishing with nonzero repeated
same-parent action.  Bounded-Riesz/Bessel rules out bounded fresh square novelty
being recounted as unit selected action.  Any survivor in `(TFE.496)` is
therefore a scale-native heat-lag/native-birth event whose selected linear read
has not been admitted to original coupled packet currency.  That survivor is
exactly `(TFE.493)`, not another scalar BV issue.

## 50. Pushforward form of `(TFE.493)` and the exact PDE wall

The heat-lag audit proves one more structural step below `(TFE.493)`.  The
legitimate first-admission atoms already form a finite raw original-history
measure.  For a stopped parent packet \(P\), let

\[
F_Q
:=
(I-\Pi_{\mathcal S_{<Q}})\Delta_QZ_P^{orig}
\tag{TFE.497}
\]

be the first unspent native coordinate of a legitimate first-admission child
after carry, reuse, motion, return, viscosity, legal, and stop have been removed.
Then Bessel/orthogonality gives the raw parent measure

\[
\mu_P^{adm,raw}(P')
:=
\sum_{Q\subset P'}\|F_Q\|_{\mathcal H_P^{raw}}^2
\le
C_N\|Z_{P'}^{orig}\|_{\mathcal H_{P'}^{raw}}^2
+R_{\rm legal}(P')+Stop(P').
\tag{TFE.498}
\]

This proves the weightless first-admission fact: there is no retained
nonendpoint invisible square bill after first entry, return, motion, viscosity,
legal, and stop are removed.  Every legitimate first entry is counted once in
the original parent Hilbert record.

The selected-critical \(L^1\) wall is the weighted version:

\[
\mu_P^{adm,crit}(P)
:=
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_P^{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE.499}
\]

The half-tail is exactly the gap between `(TFE.498)` and `(TFE.499)`.  Raw
first-admission measure is finite; selected-critical first-admission measure is
not finite unless the original coupled packet supplies an additional
scale-native root upper bound.

The formal no-recount pushforward theorem isolates the remaining PDE estimate.
Let \(\mathcal A_P\) be the stopped set of legitimate first-admission native
atoms and let

\[
\pi:\{I:\ I\text{ selected heat-lag readout below }P\}\to\mathcal A_P
\tag{TFE.500}
\]

send each selected child read to its first-admitted parent pulse.  The
parent-weighted detector is built before child clipping:

\[
\Phi_I^P
:=
\omega_I\,\mathbf 1_I\,\mathcal H_I^{*,P}\xi_I .
\tag{TFE.501}
\]

After first admission the parent-current span is updated by

\[
\mathcal E_{\le I}^P
=
\mathcal E_{<I}^P
\oplus
\operatorname{span}\{(I-P_{\mathcal E_{<I}^P})\Phi_I^P\},
\tag{TFE.502}
\]

so later reads of the same carrier are retained Schur work or paid motion,
return, viscosity, legal, or stop.  Therefore the selected child bill is a
bounded-overlap pushforward of the parent-weighted first-admission measure:

\[
\sum_{I\subset P}\omega_I|\Delta_IU_I|
\le
C_N\mu_P^{pw}(P)+Paid_P.
\tag{TFE.503}
\]

Consequently `(TFE.493)` is equivalent in the heat-lag coordinates to

\[
\mu_P^{pw}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,\mathsf{Visc}_{P,N}
+Paid_P,
\qquad 0<\theta<1 .
\tag{TFE.504}
\]

This is the same theorem as `(TFE.499)` after translating the selected-critical
weight into the parent heat-lag detector measure.  It is also the same theorem
as the positive critical transfer coordinate

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
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad \theta<1 .
\tag{TFE.505}
\]

The direct residence/transit proof gets to the same wall.  Residence is paid by
viscous scale time.  Transit is one same-material thread.  Reset/escape Cauchy
reduces to the original root generator-energy bound

\[
\int_{\operatorname{Hist}(P)}w\|G\|^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{TFE.506}
\]

and the lower-triangular scale split leaves the affine quotient.  Thus the root
upper bound follows only after one of the two noncircular affine producer lines:

\[
\int_0^{T_*}
H_w(t)\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{TFE.507}
\]

or

\[
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}
+R^{fresh}
\tag{TFE.508}
\]

with the affine-kernel residual bounded by original-history paid terms.

The repo does not currently prove `(TFE.507)` or `(TFE.508)`.  Poincare in
\(\sigma\) would use the selected source square that `(TFE.499)` is trying to
prove, and ordinary gauge normalization changes the potential average rather
than paying it.  Thus the exact current wall is not no-recount, not raw
first-admission, not local lower edge, and not scalar entropy.  It is the
selected-critical parent-weighted first-admission root upper bound
`(TFE.504)`, equivalently `(TFE.505)`, equivalently the affine producer
`(TFE.507)`/`(TFE.508)`.
