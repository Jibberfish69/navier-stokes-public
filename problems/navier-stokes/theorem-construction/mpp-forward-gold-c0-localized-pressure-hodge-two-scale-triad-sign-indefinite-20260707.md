---
theorem_id: forward-gold-c0-localized-pressure-hodge-two-scale-triad-sign-indefinite-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / localized pressure-Hodge triad / two-scale sign test
status: checked-two-scale-counterexample-and-strict-reduction-no-c0-closure
target_object:
  - LocalizedPressureHodgeCommutatorTriadFloor.A
  - LocalizedPressureHodgeTriadPositiveFloor.NoGo
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
  - SelectorForceBalanceLegBillCurrency.A
  - SelectedLinearRouteMeasureCarleson.A
  - WLF.60
  - ODP.91
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-pressure-hessian-global-triad-zero-localized-commutator-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selector-force-hminusone-floor-to-bill-currency-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-rellich-selector-force-lower-bound-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-pure-local-xcomm-storage-no-go-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-uniform-cascade-depth-l2-l3-epsilon-reduction-20260707.md
completion_truth: >-
  This note proves no c_0, no epsilon_* > 0, and no WLF.60 / ODP.91 payment.
  It computes a clean localized two-scale pressure-Hodge triad and shows the
  localized commutator is nonzero but sign-indefinite. Therefore the previous
  global-zero correction cannot be replaced by a raw localized-triad positivity
  claim. The proof must retain selector orientation, positive-part ownership,
  same-edge bill admission, or a typed route-out. In existing route language the
  remaining target is SelectorForceBalanceLegBillCurrency.A / WLF.60 / ODP.91 on
  the actual order-locked selected packet.
---

# A localized pressure-Hodge triad is nonzero but sign-indefinite

## 1. The coefficient being tested

The global pressure-Hessian pairing vanishes. After a packet/localization mode
\(m\) is inserted, a Fourier coefficient has support

\[
\ell+K+m=0,
\tag{LPT.1}
\]

where \(\ell\) is the selected strain mode, \(K\) is the pressure-source response
mode, and \(m\) is the cutoff, moving projector, or packet-selection mode.

The geometric factor is

\[
K^T\widehat S(\ell)K.
\tag{LPT.2}
\]

For an incompressible strain mode

\[
\widehat S(\ell)
=
{i\over2}\left(\ell\otimes v+v\otimes\ell\right),
\qquad
\ell\cdot v=0,
\tag{LPT.3}
\]

this factor is

\[
K^T\widehat S(\ell)K
=
i\,(K\cdot\ell)(K\cdot v).
\tag{LPT.4}
\]

It vanishes only when \(K\) is locked to \(\ell\), or when the selected
polarization is orthogonal to \(K\). In a localized packet, \(K\) need not equal
\(\ell\).

## 2. Clean integer two-scale example

Take

\[
\ell=(1,0,0),
\qquad
v=(0,1,0),
\qquad
K=(1,1,0).
\tag{LPT.5}
\]

Then \(\ell\cdot v=0\), while

\[
(K\cdot\ell)(K\cdot v)=1.
\tag{LPT.6}
\]

Generate the pressure-source mode \(K\) from two incompressible velocity modes

\[
a=(2,0,0),\quad A=(0,1,0),
\qquad
b=(-1,1,0),\quad B=(1,1,0).
\tag{LPT.7}
\]

They satisfy

\[
a\cdot A=0,
\qquad
b\cdot B=0,
\qquad
a+b=K.
\tag{LPT.8}
\]

For the pressure source \(F=\operatorname{tr}(\nabla u\,\nabla u)\), the
coefficient at \(K\) from this pair is, up to the global sign convention,

\[
F_K=-(a\cdot B)(b\cdot A)=-2.
\tag{LPT.9}
\]

Let the localization mode be

\[
m=-(\ell+K)=(-2,-1,0).
\tag{LPT.10}
\]

The localized coefficient is therefore proportional to

\[
F_K (K\cdot\ell)(K\cdot v)=-2.
\tag{LPT.11}
\]

If the selected strain leg is reversed, \(v\mapsto -v\), all incompressibility
constraints and the pressure-source pair `(LPT.7)' remain unchanged, and

\[
F_K (K\cdot\ell)(K\cdot(-v))=+2.
\tag{LPT.12}
\]

Thus the clean localized pressure-Hodge triad is real, but it has both signs.

## 3. Consequence

The localized commutator is not empty. It is exactly the first place where the
pressure Hessian can do work after the global cancellation. But raw nonzero
localized work is not \(c_0\). There is no sign-definite lower bound at the level
of an unselected two-scale triad.

Therefore the proof target must keep the selected positive-part structure rather
than asking an unselected triad for a sign floor:

\[
\texttt{LocalizedPressureHodgeCommutatorTriadFloor.A}
\quad\leadsto\quad
\texttt{SelectorForceBalanceLegBillCurrency.A}
\quad\leadsto\quad
\texttt{SelectedLinearRouteMeasureCarleson.A / WLF.60 / ODP.91}.
\tag{LPT.13}
\]

The sign can contribute to \(\varepsilon_*>0\) only after the packet selector
chooses the positive orientation, keeps the same parent edge, and converts the
corresponding force into retained bill currency. Otherwise the same algebra
produces an opposite-sign packet.

## 4. State

This is a strict reduction and a no-go for a tempting shortcut:

\[
\text{localized pressure-Hodge triad is nonzero}
\not\Longrightarrow
\text{positive localized pressure-Hodge floor}.
\tag{LPT.15}
\]

The next proof-sized object is not the clean two-scale kernel. It is the
same-edge selected-orientation/bill-currency theorem on the actual full packet.
