---
theorem_id: forward-gold-wkb-selector-force-nonlinear-stress-localization-split-20260706
status: exact-branch-split-nonlinear-cancellation-is-kinetic-stress-or-localization-defect
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.NonlinearStressSplit
  - SelectedAffineMoment.KineticStressBranch
  - NonlinearTransportToReynoldsDefect.Currency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-viscous-cancellation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-acceleration-impulse-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-nonlinear-same-packet-law-gap-or-construction-dichotomy-20260706.md
completion_truth: >-
  Exact branch split only. For the localized affine test used in the selector
  floor, if the projected nonlinear transport term cancels the selector force,
  F_sel+P div(v tensor v)=0, then
  M_A(T)=-int v tensor v : grad Psi_A. Since grad Psi_A=A on the selected ball,
  the selected moment is either carried by the interior kinetic stress
  int_B v tensor v:A, or by the cutoff-annulus localization term. Quantitatively
  |M_A(T)| <= C |A| int_{B_{2D}} |v|^2, so nonlinear cancellation is impossible
  with vanishing same-scale kinetic stress. If the carrier is only a weak WKB
  covariance, this is exactly the Reynolds-defect/certificate branch. This
  proves no dissipation floor, no kinetic-energy-to-custody conversion, no
  density anti-equidistribution theorem, no nonlinear same-packet law, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Selector-force nonlinear stress localization split

## 1. Question

The selector force is
\[
  F_{\rm sel}:=\mathbb P\,\operatorname{div}T,
  \qquad
  M_A(T):=\int T:A\,dx .
  \tag{SNS.1}
\]

The previous two follow-ups priced the viscous carrier and identified the
acceleration carrier as endpoint impulse / time variation. This note tests the
nonlinear transport carrier:
\[
  F_{\rm sel}+\mathbb P\,\operatorname{div}(v\otimes v)=0 .
  \tag{SNS.2}
\]

The nonlinear branch is not a dissipation floor. It is a quadratic stress split.

## 2. Localized affine test with bounded gradient

Use a divergence-free localized affine test
\[
  \Psi_A\in C_c^\infty(B_{2D}(X);\mathbb R^3),
  \qquad
  \Psi_A=A(x-X)\quad\hbox{on }B_D(X),
  \tag{SNS.3}
\]
with
\[
  \|\nabla\Psi_A\|_2\le C|A|D^{3/2},
  \qquad
  \|\nabla\Psi_A\|_\infty\le C|A|.
  \tag{SNS.4}
\]

This is the same affine test used for the \(H^{-1}\) selector floor, with the
standard scaled cutoff/Bogovskii correction chosen on a fixed annulus.

The selector-floor identity is
\[
  M_A(T)=-\langle F_{\rm sel},\Psi_A\rangle .
  \tag{SNS.5}
\]

Under the nonlinear cancellation balance (SNS.2),
\[
  M_A(T)
  =
  \left\langle
    \mathbb P\,\operatorname{div}(v\otimes v),\Psi_A
  \right\rangle .
  \tag{SNS.6}
\]

Since \(\Psi_A\) is divergence-free, the Leray projection drops out. Integration
by parts gives
\[
  M_A(T)
  =
  -\int_{\mathbb R^3} v\otimes v:\nabla\Psi_A\,dx .
  \tag{SNS.7}
\]

## 3. Interior stress or annulus defect

Let
\[
  C_D:=B_{2D}(X)\setminus B_D(X).
  \tag{SNS.8}
\]

Because \(\nabla\Psi_A=A\) on \(B_D(X)\),
\[
  M_A(T)
  =
  -\int_{B_D(X)} v\otimes v:A\,dx
  -
  \int_{C_D}v\otimes v:\nabla\Psi_A\,dx .
  \tag{SNS.9}
\]

Thus the nonlinear carrier has only two same-scale locations:
\[
\begin{array}{ll}
\text{interior kinetic stress}
  &\displaystyle \int_{B_D}v\otimes v:A,\\[2mm]
\text{cutoff-annulus localization stress}
  &\displaystyle \int_{C_D}v\otimes v:\nabla\Psi_A .
\end{array}
\tag{SNS.10}
\]

If the annulus term is at most \(\varepsilon |M_A(T)|\), then
\[
  \left|\int_{B_D}v\otimes v:A\,dx\right|
  \ge
  (1-\varepsilon)|M_A(T)|.
  \tag{SNS.11}
\]

Since \(|v\otimes v:A|\le |A||v|^2\),
\[
  \int_{B_D}|v|^2\,dx
  \ge
  {1-\varepsilon\over |A|}|M_A(T)|.
  \tag{SNS.12}
\]

So a localized nonlinear cancellation cannot be carried by vanishing interior
kinetic stress.

Without separating the annulus,
\[
  |M_A(T)|
  \le
  C|A|\int_{B_{2D}(X)}|v|^2\,dx .
  \tag{SNS.13}
\]

This is the exact same-scale kinetic-energy floor for nonlinear cancellation.

## 4. Meaning of the annulus term

The annulus term is not a new hidden free branch. It is the localization price
of using a compact affine test:
\[
  \int_{C_D}v\otimes v:\nabla\Psi_A .
  \tag{SNS.14}
\]

If the nonlinear stress is moved into the collar, the branch has become a
same-scale collar / localization / custody question. If the collar stress is
negligible, the interior kinetic stress floor (SNS.12) applies.

Thus nonlinear transport does not erase the selector force. It either supplies
the matching kinetic stress in the selected region or routes the cancellation to
the localization collar.

## 5. WKB covariance reading

For an oscillatory WKB carrier, the quadratic stress may survive only weakly:
\[
  v_j\rightharpoonup v,
  \qquad
  v_j\otimes v_j\rightharpoonup v\otimes v+R .
  \tag{SNS.15}
\]

Then (SNS.7) passes to
\[
  M_A(T)
  =
  -\int (v\otimes v+R):\nabla\Psi_A .
  \tag{SNS.16}
\]

The extra term \(R\) is exactly the Reynolds-defect / covariance branch already
typed by the pressure-law closure fork. If \(R\) is used as the nonlinear
carrier, it must vanish, be absorbed as pressure-compatible null stress with
the service coordinate adjusted, or be legally carried through the
certificate/tower rows. Otherwise the actual same-fluid law is lost.

So nonlinear transport does not bypass the WKB certificate problem. In the
prelimit it is kinetic stress; in the weak limit it is Reynolds defect.

## 6. Branch split

The selected-force nonlinear branch now splits as:
\[
\begin{array}{ll}
\text{interior kinetic stress carries }M_A
  &\Rightarrow \text{same-scale kinetic-energy floor }(SNS.12),\\[1mm]
\text{collar stress carries }M_A
  &\Rightarrow \text{localization/custody branch},\\[1mm]
\text{weak covariance }R\text{ carries }M_A
  &\Rightarrow \text{Reynolds-defect certificate/tower branch},\\[1mm]
\text{none of these carries }M_A
  &\Rightarrow \text{nonlinear cancellation impossible}.
\end{array}
\tag{SNS.17}
\]

This is a genuine shrink of the selector-force exit. It is not a full
confinement tax, because kinetic energy can be stored without immediate
dissipation unless a separate custody, refresh, or composition row prices it.

## 7. Four-sentence result

If nonlinear transport cancels the selector force, then the selected affine
moment satisfies
\[
  M_A(T)=-\int v\otimes v:\nabla\Psi_A .
\]
Since \(\nabla\Psi_A=A\) on the selected ball, the moment is carried by
interior kinetic stress or by the cutoff annulus. In particular,
\[
  |M_A(T)|\le C|A|\int_{B_{2D}}|v|^2\,dx,
\]
so nonlinear cancellation is impossible with vanishing same-scale kinetic
stress. In a WKB weak limit, the same identity becomes the Reynolds-defect
certificate branch, not a free escape.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
