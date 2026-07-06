---
theorem_id: forward-gold-wkb-null-stress-selection-commutator-20260706
status: exact-selector-obstruction-nonzero-selected-affine-moment-breaks-nullity
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - LerayNullEnvelopeStress.SignSelectionNotFree
  - SelectedNullStress.NonzeroAffineMomentImpliesLerayForce
  - SelectorBoundaryCommutator.Exact
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-leray-null-affine-moment-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-signed-stress-certificate-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-transport-defect-current-variation-floor-20260706.md
completion_truth: >-
  Exact selector obstruction only. A compact Leray-null stress R has zero
  affine trace-free moment. Therefore any compact selected sub-stress chi R
  with nonzero affine trace-free moment cannot itself be Leray-null: if
  P div(chi R)=0, the affine-moment obstruction applied to chi R would force
  int chi R:A=0 for every trace-free A. Equivalently, writing div R=grad q and
  S=R-qI with div S=0, the selector creates the exact force
  P div(chi R)=P(S grad chi). Thus positive-patch selection of a null aggregate
  is not free active service. It either keeps zero selected affine moment,
  creates a nonzero pressure-law force/boundary commutator, or must be carried
  as a legal selector/certificate/custody object. This proves no lower bound on
  that commutator, no selector-custody theorem, no WKB construction/exclusion,
  no crowd theorem, no confinement constant, and no MPP closure.
---

# Null-stress selection commutator

## 1. Question

The affine-moment obstruction says that a compact Leray-null stress has no net
trace-free affine moment:
\[
  \mathbb P\,\operatorname{div}R=0
  \quad\Longrightarrow\quad
  \int R:A\,dx=0
  \quad\forall A\in{\rm Sym}_0(3).
  \tag{NSC.1}
\]

The immediate escape is selection: keep only the positive patches of
\(A:R\). This note tests whether that selected positive subobject remains a
free null stress.

The answer is no. A selected sub-stress with nonzero affine moment cannot still
be Leray-null.

## 2. Moment obstruction for selected substresses

Let
\[
  R\in C_c^\infty(\mathbb R^3;{\rm Sym}(3)),
  \qquad
  \mathbb P\,\operatorname{div}R=0,
  \tag{NSC.2}
\]
and let
\[
  \chi\in C_c^\infty(\mathbb R^3).
  \tag{NSC.3}
\]

Assume the selected sub-stress \(\chi R\) is also Leray-null:
\[
  \mathbb P\,\operatorname{div}(\chi R)=0.
  \tag{NSC.4}
\]

Then applying the affine-moment obstruction to \(\chi R\) gives
\[
  \int \chi R:A\,dx=0
  \quad
  \forall A\in{\rm Sym}_0(3).
  \tag{NSC.5}
\]

Therefore the contrapositive is exact:
\[
  \boxed{
  \exists A\in{\rm Sym}_0(3):
  \int \chi R:A\,dx\ne0
  \quad\Longrightarrow\quad
  \mathbb P\,\operatorname{div}(\chi R)\ne0.
  }
  \tag{NSC.6}
\]

So a selector cannot both isolate nonzero affine active service and preserve
the pressure-law nullity of the selected stress.

## 3. Exact commutator formula

The same obstruction has a local commutator form. Since \(R\) is Leray-null,
\[
  \operatorname{div}R=\nabla q.
  \tag{NSC.7}
\]
Set
\[
  S:=R-qI.
  \tag{NSC.8}
\]
Then
\[
  \operatorname{div}S=0.
  \tag{NSC.9}
\]

For a selector \(\chi\),
\[
  \operatorname{div}(\chi R)
  =
  \chi\nabla q+R\nabla\chi.
  \tag{NSC.10}
\]
But
\[
  \chi\nabla q
  =
  \nabla(\chi q)-q\nabla\chi,
  \tag{NSC.11}
\]
so
\[
  \operatorname{div}(\chi R)
  =
  \nabla(\chi q)+(R-qI)\nabla\chi
  =
  \nabla(\chi q)+S\nabla\chi.
  \tag{NSC.12}
\]

Applying the Leray projector,
\[
  \boxed{
  \mathbb P\,\operatorname{div}(\chi R)
  =
  \mathbb P\,(S\nabla\chi).
  }
  \tag{NSC.13}
\]

The force created by selection is exactly the boundary commutator between the
divergence-free null stress \(S\) and the selector gradient.

## 4. Meaning for positive-patch service

Let \(A\in{\rm Sym}_0(3)\) be the affine producer strain and write
\[
  f_A(x):=A:R(x).
  \tag{NSC.14}
\]
The whole null aggregate has
\[
  \int f_A\,dx=0.
  \tag{NSC.15}
\]

If a selector \(\chi\) is chosen so that
\[
  \int \chi f_A\,dx>0,
  \tag{NSC.16}
\]
then (NSC.6) gives
\[
  \mathbb P\,\operatorname{div}(\chi R)\ne0.
  \tag{NSC.17}
\]

Thus positive-patch selection has only these readings:

1. the selected object is not an admitted Navier-Stokes pressure-law stress;
2. the selector force \(\mathbb P(S\nabla\chi)\) is carried by an explicit
   legal certificate/custody row;
3. the selected moment vanishes and supplies no affine active service.

The positive and negative patches of a null aggregate may cancel in the whole
object. They cannot be separated for free.

## 5. Reduced branch

The sign-selection escape from the null affine-moment obstruction is now:
\[
\begin{array}{ll}
\int\chi R:A=0
  &\Rightarrow \text{no selected affine service},\\[1mm]
\int\chi R:A\ne0
  &\Rightarrow \mathbb P\,\operatorname{div}(\chi R)\ne0,\\[1mm]
\text{selector force legally carried}
  &\Rightarrow \text{certificate/custody/variation branch},\\[1mm]
\text{selector force not legally carried}
  &\Rightarrow \text{actual-law / ancestry / cover / tower failure}.
\end{array}
\tag{NSC.18}
\]

This is a branch kill for free sign-selection, not a lower bound on the
selector commutator.

## 6. Four-sentence result

A positive-patch selector cannot extract nonzero affine service from a compact
Leray-null stress while keeping the selected stress Leray-null. If
\(\mathbb P\operatorname{div}(\chi R)=0\), the affine-moment obstruction
applied to \(\chi R\) forces \(\int\chi R:A=0\) for every trace-free affine
strain \(A\). Equivalently, writing \(R=qI+S\) with \(\operatorname{div}S=0\),
selection creates the exact force
\(\mathbb P\operatorname{div}(\chi R)=\mathbb P(S\nabla\chi)\). So positive
selection is a pressure-law force/custody problem, not free active service.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
