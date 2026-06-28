---
theorem_id: forward-gold-effective-resistance-bellman-capacity-realization-20260627
status: demoted-effective-resistance-surrogate-projection-jump-reserve-live
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ScaleNativeActiveParticipationNativeReserveHinge.A
  - RetainedActiveRawBellmanCapacity.A
  - ParentCurrentCoboundarySquareFunction.A
  - AffineGramSchurParticipationStorage.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-route-metric-bellman-capacity-pressure-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-current-coboundary-square-function-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-gram-schur-participation-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
effect: >-
  Demotes the effective-resistance/log-det idea to a pressure-test surrogate.
  The exact live mechanism is stronger and simpler: unchanged inherited reuse
  contributes zero new selected current, fresh residuals are Bessel-paid, and
  changed reuse is exactly projection-jump reserve.  Do not use this note as the
  live Gold hinge.  The live theorem has moved past projection-jump support to
  the scale-native native-reserve map.
---

# Effective-Resistance Bellman Capacity Pressure Test

This note is now demoted. Effective resistance is a useful analogy for why
repeated same-channel reads should lose novelty, but it is not the theorem-grade
reserve.

The exact reserve is the projection-jump square function. With
\(a_i=b_i+d_i\), \(b_i=\Pi_{E_{i-1}}a_i\), and
\(d_i=(I-\Pi_{E_{i-1}})a_i\), selected new current is

\[
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\]

Thus unchanged reuse has \(d_i=0\) and no new selected refill. Fresh reuse is
Bessel-paid. Changed reuse is the projection jump
\[
\rho_i=\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle .
\]

The installed reset-support theorem is the finite projection-jump /
parent-announced first-exit
Carleson bound
\[
\sum_i\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\le
C_N(u_0)+R_{\rm legal}+Stop .
\]

The material below is retained only as a rejected/heuristic capacity pressure
test.

The capacity in `RetainedActiveRawBellmanCapacity.A` should not be scalar local
energy. It should be the parent-known effective resistance of the stopped
stress-test frame.

The reason is simple. A same stress channel can be used once as new information.
After it is in the parent record, using it again has smaller leverage. To count
it again as unit selected action, the stopped geometry must reset, rotate, move
the collar, or change selector state; those changes are already the reset branch
charged into \(\mathcal E_{\rm route}\).

## 1. Parent stopped covariance

On a stopped parent material history \(P\), keep the Hilbert space

\[
\mathfrak H_P
=L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G_P=2\nu S_A\,1_{\operatorname{Hist}(P)}.
\tag{1}
\]

Let \(k_\theta\) denote the parent-known stopped stress-test derivative vector
at route parameter \(\theta=(\sigma,t)\). The raw stress-square route measure is
the quadratic form of the positive covariance

\[
K_P(E)
:=
\int_E k_\theta\otimes k_\theta\,d\mu_{\rm raw}(\theta),
\qquad
\mu_G(E)=\langle K_P(E)G_P,G_P\rangle_{\mathfrak H_P}.
\tag{2}
\]

The Bessel construction gives \(K_P(\widehat P)\) bounded on the stopped
finite-aperture frame, and finite-rank/trace-class after the \(N\)-stopped
truncation:

\[
\operatorname{tr}K_P(\widehat P)\le C_N,
\qquad
\mu_G(\widehat P)\le C_N\|G_P\|_{\mathfrak H_P}^2.
\tag{3}
\]

## 2. Online leverage is the Bellman variable

For retained children \(Q_i\subset P\), let \(\Delta K_i\) be the covariance
added by the parent-known stopped tests admitted with \(Q_i\), after inherited
projection and before selected child-tail readout. Put

\[
V_0=\lambda I+K_{\rm past},
\qquad
V_i=V_{i-1}+\Delta K_i,
\qquad
\lambda>0.
\tag{4}
\]

The new effective-resistance charge of \(Q_i\) is

\[
\tau_i
:=
\operatorname{tr}\log
\left(
I+V_{i-1}^{-1/2}\Delta K_iV_{i-1}^{-1/2}
\right).
\tag{5}
\]

For rank-one increments \(\Delta K_i=x_i\otimes x_i\),

\[
\tau_i=\log\left(1+\|V_{i-1}^{-1/2}x_i\|^2\right).
\tag{6}
\]

Thus \(\tau_i\) is not raw size. It is how much new direction is left after the
parent record has already absorbed earlier uses.

The determinant identity gives the Bellman telescope exactly:

\[
\sum_{i=1}^m\tau_i
=
\log\det V_m-\log\det V_0
\le
\log\det\left(I+\lambda^{-1}K_P(\widehat P)\right).
\tag{7}
\]

Using \(\log\det(I+A)\le\operatorname{tr}A\),

\[
\sum_i\tau_i
\le
\lambda^{-1}\operatorname{tr}K_P(\widehat P).
\tag{8}
\]

For the actual Navier-Stokes stress current, the realized scalar shadow is

\[
s_0=\lambda+\mu_G({\rm past}),
\qquad
s_i=s_{i-1}+\mu_G(\widehat Q_i),
\tag{9}
\]

and

\[
\sum_i
\log\left(1+\frac{\mu_G(\widehat Q_i)}{s_{i-1}}\right)
=
\log s_m-\log s_0
\le
\log\left(1+\lambda^{-1}\mu_G(\widehat P)\right).
\tag{10}
\]

This is the one-dimensional shadow of `(7)`. It is useful only for the actual
stress \(G_P\). The operator log-det controls frame novelty; the scalar shadow
controls realized current novelty. Neither one is allowed to count a repeated
parent level as new selected action.

## 3. Bellman capacity

Let

\[
D_i:=\log\det V_i,
\qquad
D_P^{\max}:=\log\det\left(\lambda I+K_P(\widehat P)\right).
\tag{11}
\]

Define the remaining parent current capacity on the retained line by

\[
B_i:=C_N\bigl(D_P^{\max}-D_i\bigr).
\tag{12}
\]

Then `(5)`--`(7)` give the exact local Bellman decrement

\[
C_N\tau_i+B_i\le B_{i-1}.
\tag{13}
\]

Across a stopped tree, the same identity is applied on each parent-known
laminar branch. Bounded stopped overlap and legal/terminal stops add only
\(R_{\rm legal}\) and \(Stop_{\rm term}\).

There is also a more concrete stress-realized capacity:

\[
B_i^{G}
:=
C_N\bigl(\log s_P^{\max}-\log s_i\bigr),
\qquad
s_P^{\max}:=\lambda+\mu_G(\widehat P).
\tag{13a}
\]

Then `(10)` gives

\[
C_N
\log\left(1+\frac{\mu_G(\widehat Q_i)}{s_{i-1}}\right)
+B_i^{G}
\le
B_{i-1}^{G}.
\tag{13b}
\]

The Hilbert projection capacity from the coboundary note is the corresponding
energy version:

\[
\mathcal B_Q
:=
\|G_P-\Pi_{\mathcal P_Q}G_P\|_{\mathfrak H_P}^2.
\tag{13c}
\]

It satisfies the Pythagorean drop

\[
\|\Delta M_Q\|_{\mathfrak H_P}^2+\mathcal B_Q
\le
\mathcal B_{Q^-},
\qquad
M_Q=\Pi_{\mathcal P_Q}G_P.
\tag{13d}
\]

So there are two compatible views of the same parent capacity: the squared
unexplained stress current and the logarithmic/effective-resistance leverage of
the stopped frame. The first pays true projection increments; the second pays
scale-critical novelty after the parent frame has already seen the channel.

The operator decrement `(13)` is geometry, not yet physical payment. The Gold
payment comes from the stress-realized leverage shadow. Thus the algebraic part
of `RetainedActiveRawBellmanCapacity.A` is proved once the selected action is
admitted as parent-subtracted realized leverage:

\[
\omega_i^{new}
\le
C_N
\log\left(1+\frac{\mu_G(\widehat Q_i)}{s_{i-1}}\right)
+R_i^{legal}
+Stop_i^{term}
+Reset_i^{paid}.
\tag{14}
\]

Then `(13b)` gives

\[
\sum_{Q\in\operatorname{ch}_{ret}(P)}
\omega_Q^{new}
+
\sum_{Q\in\operatorname{ch}_{ret}(P)}B^G(Q)
\le
B^G(P)
+R_{\rm legal}(P)+Stop_{\rm term}(P).
\tag{15}
\]

The raw route measure is recovered by the coarse bound

\[
\log\left(1+\lambda^{-1}\mu_G(\widehat P)\right)
\le
\lambda^{-1}\mu_G(\widehat P).
\tag{16}
\]

Thus the realized route version is

\[
\sum_{Q\in\operatorname{ch}_{ret}(P)}
\omega_Q^{new}
+
\sum_QB^G(Q)
\le
B^G(P)
+C_N\mu_G(\widehat P)
+R_{\rm legal}(P)+Stop_{\rm term}(P),
\tag{17}
\]

which is the Bellman form needed by the active route metric.

## 4. Countermodel: level reuse cannot be counted

The failure mode is exact inherited reuse counted as new action. Let
\(\mathfrak H=\mathbb R^2\), \(G=e_1\), \(\ell_m=2^{-m}\), and

\[
a_m=\sqrt{\ell_m}\,e_1 .
\tag{18}
\]

Then

\[
\mu_m=|\langle G,a_m\rangle|^2=\ell_m,
\qquad
\omega_m^{level}=|\langle G,e_1\rangle|^2=1.
\tag{19}
\]

The raw stress-square bill is finite while the fake level action diverges:

\[
\sum_m\mu_m<\infty,
\qquad
\sum_m\omega_m^{level}=\infty.
\tag{20}
\]

The parent projection record does not move:

\[
M_m=M_{m-1}=e_1,
\qquad
\mathcal B_{m-1}-\mathcal B_m=0.
\tag{21}
\]

So no Bellman inequality can pay \(\omega_m^{level}\). This is not a bug in the
capacity. It is the theorem's admission boundary: exact inherited level reuse is
parent current, not new retained selected action. The admissible new readout is

\[
\Delta J_Q^{new}
=
\langle G_P,d_Q\rangle
+\langle \Delta M_Q,\widehat b_Q\rangle
+\langle M_{Q^-},
\widehat b_Q-\mathsf T_{Q^-\to Q}\widehat b_{Q^-}\rangle .
\tag{22}
\]

Only those three terms can enter \(\omega_Q^{new}\): fresh orthogonal residual,
parent current coboundary, and paid frame/selector/collar/reset drift.

## 5. Heat-scale pressure test

The old heat-scale counterprofile had

\[
\mu_G(Q_m)\sim \ell_m,
\qquad
\omega_{Q_m}\sim1,
\qquad
\sum_m\ell_m<\infty.
\tag{23}
\]

Raw energy cannot pay \(\sum_m1\). Effective resistance changes the count. With

\[
s_{m-1}=\lambda+\sum_{j<m}\ell_j,
\tag{24}
\]

the leverage charge is

\[
\tau_m
\simeq
\log\left(1+\frac{\ell_m}{s_{m-1}}\right),
\tag{25}
\]

and therefore

\[
\sum_m\tau_m
\le
\log\left(1+\lambda^{-1}\sum_m\ell_m\right)
<\infty.
\tag{26}
\]

So the repeated heat-scale train is killed without inventing a new physical
currency. It is the same parent current record becoming saturated. If the
selector still tries to count every \(Q_m\) as \(\omega_m^{new}\sim1\), then
`(14)` fails. That failure has a precise meaning: the packet is not retained
new action in the parent-known frame; it is either inherited reuse, paid reset
of the frame, legal/reselection loss, or terminal stop.

## 6. Relation to the installed reset branch

Changing the frame changes \(V_i\). The determinant identity is valid only
inside a fixed parent-known stopped frame. When \(V_i\) is replaced by a new
frame \(V_i'\), the transition cost is

\[
\left|
\log\det V_i'-\log\det V_i
\right|
\lesssim
\left\|
V_i^{-1/2}(V_i'-V_i)V_i^{-1/2}
\right\|_{\rm tr,+}.
\tag{27}
\]

This is the operator version of the inverse-Gram motion already isolated in
`AffineGramSchurParticipationStorage.A`. In the stopped selector, those changes
are turnstile, exchange, covector, connection, reset/order-lock, stop, or legal
motion. The parent-announced first-exit reset theorem charges them into
\(\mathcal E_{\rm route}\).

Thus exact reuse is handled by leverage saturation; changed reuse is handled by
the reset-to-\(\mathcal E_{\rm route}\) reduction.

## 7. Current role

This note does not supply selected-action currency.  The log-det/effective
resistance calculation is support for already-admitted parent reuse: once a
selected read is a bounded original-packet/Riesz read, the inherited/root
component can telescope through the parent stress record.

It does not pay a pure scale-native zoom birth.  A unit rescaled read may pull
back to an original test of size \(r^{-1/2}\), so Bellman leverage cannot be
promoted into full selected action unless the read is already admitted in a
lawful channel.

The remaining Gold producer is:

```text
NativeBirthChargePacking.A / SelectedGeneratorStorageCoercivity.A
```

as recorded in
`mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md`.

Partial, not Gold closed.
