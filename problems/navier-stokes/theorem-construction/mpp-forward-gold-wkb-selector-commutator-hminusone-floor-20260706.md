---
theorem_id: forward-gold-wkb-selector-commutator-hminusone-floor-20260706
status: exact-scale-floor-selected-affine-moment-forces-hminusone-leray-force
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.HminusOneFloor
  - SelectedNullStress.NonzeroMomentQuantifiedForce
  - SignSelectedService.CustodyCurrency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-null-stress-selection-commutator-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-leray-null-affine-moment-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-signed-stress-certificate-variation-floor-20260706.md
completion_truth: >-
  Exact quantitative obstruction only. If a selected compact stress chi R is
  supported in a ball of radius D and has affine trace-free moment
  M_A=int chi R:A against a constant strain A in Sym_0(3), then the selected
  pressure-law force satisfies ||P div(chi R)||_{\dot H^{-1}} >=
  c |M_A|/(|A| D^{3/2}). The proof uses a divergence-free localized affine
  test field equal to A(x-X) on the support and with homogeneous H^1 norm
  O(|A|D^{3/2}). Thus nonzero selected affine service cannot hide in an
  arbitrarily small pressure-law commutator at the same scale. This is only a
  force-norm floor: it proves no conversion from H^{-1} force into a full
  selector-custody/tower payment, no WKB construction or exclusion, no crowd
  theorem, no confinement constant, and no MPP closure.
---

# Selector commutator has an \(H^{-1}\) floor

## 1. Question

The null-stress selection note proved the qualitative obstruction:
\[
  \int \chi R:A\,dx\ne0
  \quad\Longrightarrow\quad
  \mathbb P\,\operatorname{div}(\chi R)\ne0 .
  \tag{SHF.1}
\]

The remaining quantitative question is whether the selector force can be
arbitrarily weak while carrying a fixed selected affine moment.

At the support scale, the answer is no. The selected moment gives a direct
\(\dot H^{-1}\) lower bound for the Leray force.

## 2. Localized affine test

Let \(B_D(X)\) be a ball of radius \(D\). Let
\[
  A\in{\rm Sym}_0(3)
  \tag{SHF.2}
\]
be a constant trace-free strain.

There is a divergence-free test field
\[
  \Psi_A\in C_c^\infty(B_{2D}(X);\mathbb R^3),
  \qquad
  \operatorname{div}\Psi_A=0,
  \tag{SHF.3}
\]
such that
\[
  \Psi_A(x)=A(x-X)
  \quad\hbox{on }B_D(X),
  \tag{SHF.4}
\]
and
\[
  \|\nabla\Psi_A\|_{L^2(\mathbb R^3)}
  \le C |A|D^{3/2}.
  \tag{SHF.5}
\]

This is the standard localized affine construction: cut off \(A(x-X)\) on
\(B_{2D}\), then correct the compactly supported divergence by the Bogovskii
operator on the annulus. The divergence source has size \(O(|A|)\) on volume
\(O(D^3)\), so the correction has the same \(L^2\)-gradient scale.

## 3. Moment-force duality

Let
\[
  T:=\chi R
  \tag{SHF.6}
\]
be a smooth compactly supported symmetric selected stress with
\[
  \operatorname{supp}T\subset B_D(X).
  \tag{SHF.7}
\]

Define the selected affine moment
\[
  M_A(T):=\int_{\mathbb R^3} T:A\,dx.
  \tag{SHF.8}
\]

Since \(\nabla\Psi_A=A\) on the support of \(T\),
\[
  M_A(T)
  =
  \int T:\nabla\Psi_A\,dx.
  \tag{SHF.9}
\]
Integrating by parts,
\[
  M_A(T)
  =
  -\int \operatorname{div}T\cdot\Psi_A\,dx.
  \tag{SHF.10}
\]

Because \(\Psi_A\) is divergence-free, the gradient part of
\(\operatorname{div}T\) is invisible:
\[
  \int \operatorname{div}T\cdot\Psi_A\,dx
  =
  \int \mathbb P\,\operatorname{div}T\cdot\Psi_A\,dx.
  \tag{SHF.11}
\]

By the homogeneous dual norm,
\[
  |M_A(T)|
  \le
  \|\mathbb P\,\operatorname{div}T\|_{\dot H^{-1}}
  \|\nabla\Psi_A\|_{L^2}.
  \tag{SHF.12}
\]
Using (SHF.5),
\[
  |M_A(T)|
  \le
  C |A|D^{3/2}
  \|\mathbb P\,\operatorname{div}T\|_{\dot H^{-1}}.
  \tag{SHF.13}
\]

Therefore
\[
  \boxed{
  \|\mathbb P\,\operatorname{div}T\|_{\dot H^{-1}}
  \ge
  c\,{|M_A(T)|\over |A|D^{3/2}} .
  }
  \tag{SHF.14}
\]

For \(T=\chi R\), this is the selector commutator floor.

## 4. Reading for selected null stress

If \(R\) is a compact Leray-null aggregate and \(\chi\) selects a positive
patch, the previous note gives
\[
  \mathbb P\,\operatorname{div}(\chi R)
  =
  \mathbb P(S\nabla\chi),
  \qquad R=qI+S,\quad \operatorname{div}S=0.
  \tag{SHF.15}
\]

Combining (SHF.14) with \(T=\chi R\),
\[
  \|\mathbb P(S\nabla\chi)\|_{\dot H^{-1}}
  \ge
  c\,{\left|\int \chi R:A\,dx\right|\over |A|D^{3/2}} .
  \tag{SHF.16}
\]

Thus a selected positive affine moment at scale \(D\) cannot be accompanied by
an arbitrarily small pressure-law force at that scale. The sign selector has a
measurable force bill.

## 5. What this does and does not pay

This proves a force norm floor, not the full confinement constant.

It removes the branch:
\[
  \text{nonzero selected affine service}
  \quad+\quad
  \text{vanishing same-scale pressure-law commutator}.
  \tag{SHF.17}
\]

The remaining legal branches are:
\[
\begin{array}{ll}
\text{selected moment vanishes}
  &\Rightarrow \text{no affine active service},\\[1mm]
\text{selected moment nonzero}
  &\Rightarrow \dot H^{-1}\text{ Leray-force floor},\\[1mm]
\text{force legally carried}
  &\Rightarrow \text{selector/custody/certificate/tower payment},\\[1mm]
\text{force not legally carried}
  &\Rightarrow \text{actual-law / ancestry / cover / tower failure}.
\end{array}
\tag{SHF.18}
\]

To turn this into an order-one confinement tax, a later row must convert the
\(\dot H^{-1}\) commutator floor into the relevant same-fluid custody or tower
currency without losing the scale factor. That conversion is not proved here.

## 6. Four-sentence result

If a selected stress \(T=\chi R\) is supported in a ball of radius \(D\), then
any nonzero affine trace-free moment \(\int T:A\) forces a Leray pressure-law
force. Quantitatively,
\[
  \|\mathbb P\,\operatorname{div}T\|_{\dot H^{-1}}
  \ge
  c\,{|\int T:A| \over |A|D^{3/2}} .
\]
The proof tests the force against a divergence-free localized affine field
equal to \(A(x-X)\) on the support. So sign-selected active service has a
scale-normalized \(H^{-1}\) commutator bill, though the conversion of that bill
into the full custody/tower payment remains open.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
