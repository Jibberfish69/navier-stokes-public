---
theorem_id: forward-gold-source-origin-kernel-classification-and-branch-refinement-20260627
status: source-origin-support-installed-global-branch-edge-refined
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
audits_user_idea:
  - silent interior source direct attack
  - boundary-flat pressure-Hodge source classification
  - retained selected carrier versus hidden-potential material
  - repeated-core versus shrinking-core branch split
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-normal-form-support-current-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-spent-source-projection-nonreuse-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-governing-hinge-realignment-20260627.md
---

# Source-origin kernel classification and branch refinement

The better attack is to classify the silent interior source before asking for
more boundary observability.

The silent kernel is

```math
\mathcal K_{\rm sil}
:=
\{f:\ f=L_Aw,\ w|_{\partial A}=0,\ \partial_{\nu_A}w|_{\partial A}=0\}.
\tag{1}
```

Boundary data alone cannot see all of this class.  The pressure-Hodge Schur
trace can vanish for a nonzero \(f=L_Aw\) when \(w\) is boundary-flat.  The
correct question is whether such an invisible source can still be a retained
selected critical-strain carrier at zero cost.

The installed source-origin normal form gives the fork:

```math
\mathcal K_{\rm sil}
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\subset
\{\text{hidden-potential / constraint material}\}
\cup
\{\text{same-material top-strain/exchange charged material}\}.
\tag{2}
```

In zero-cost form,

```math
\mathsf S_\infty U_\infty=0,
\qquad
d\Omega_\infty^{top\text{-}strain/ex}=0,
\qquad
dD_\infty^{vis/rad}=0
\quad\Longrightarrow\quad
A_\infty=0.
\tag{3}
```

This is the corrected invisible-child theorem.  It does not say boundary
Schur data detects every interior source.  It says a Schur-invisible source is
either unselected constraint material or it is selected only through the same
material strain/exchange packet.

## Source-origin proof

For the hidden-potential branch, the pressure force is

```math
\mathcal G_Aw=A^\top\nabla_aw.
\tag{4}
```

The material Hodge projector is

```math
\mathbb P_A
=
I-\mathcal G_A L_A^{-1}D_A,
\qquad
L_A=D_A\mathcal G_A.
\tag{5}
```

Therefore

```math
\mathbb P_A\mathcal G_Aw=0.
\tag{6}
```

As a projected material velocity force, this component is pure constraint
material.  It is not selected critical-strain activity.

For the selected branch, the only way the same \(w\) becomes selected is
through the strain-Hessian reading in the material strain equation:

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\mathcal C_A^{legal}.
\tag{7}
```

For \(q=w\) and a selected unit direction \(e\),

```math
-e\cdot\nabla_A^2w\,e
=
D_t(e\cdot Se)
+e\cdot S^2e
+e\cdot\Omega^2e
-\nu e\cdot\Delta_ASe
+\mathcal C_A^{legal}.
\tag{8}
```

Since \(\Omega\) is skew,

```math
e\cdot\Omega^2e=-|\Omega e|^2.
\tag{9}
```

Thus the positive selected silent reading satisfies

```math
\left[-e\cdot\nabla_A^2w\,e\right]_+
\le
\left[D_t(e\cdot Se)\right]_+
+|S|^2
+|\Omega e|^2
+\nu|\Delta_AS|
+|\mathcal C_A^{legal}|.
\tag{10}
```

Every term on the right is same-material service: top-strain log/exchange,
complete-frame strain/vorticity service, viscous/radius tower service, or legal
residual in the established normal form.

The transverse symbol kernel is handled by the complete-frame trace-free
primitive.  A single pressure-Hodge direction can miss the trace-free transverse
matrix, but the retained complete frame supplies the companion readings.  With
\((\hat\xi,p,n)\) and \(\operatorname{tr}S=0\),

```math
p\cdot Sp+n\cdot Sn=-\hat\xi\cdot S\hat\xi.
\tag{11}
```

So a transverse selected silent mode is not a zero-service carrier.  If it is
selected, it is seen by the complete-frame exchange packet.

Therefore

```math
dA_{\rm sel}^{silent}
\le
C\,d\Omega^{top\text{-}strain/ex}
+C\,dD^{vis/rad}
+dR^{legal}.
\tag{12}
```

This is exactly the silent-kernel classification needed by the parent-drop
argument.

## Consequence for the live Gold edge

The parent-drop line should be read in the augmented form

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{top\text{-}strain/ex}
+C\,D_Q^{vis/rad}
+C\,R^{legal}(Q).
\tag{13}
```

On the visible branch, the Schur defect pays.  On the silent branch, the
source-origin normal form pays.  The zero-defect, zero-exchange limit gives
\(A_\infty=0\).

So the silent-source problem is local support, not the global root producer.
The remaining global selected-density problem splits into two open producer
branches.

## Repeated-core branch

The first missing repeated-core theorem is

```text
PrimitivePLSSignedChannelDecomposition.A.
```

Its checked form is

```math
d\Omega_S^{PLS,primitive,+}
\le
C_N
\sum_{\kappa\in\mathcal K_N}
\left[
\partial_\sigma\Psi_{\kappa,S}
+S_{\kappa,S}^{spill}
+E_{\kappa,S}
\right]_+
dR_S^{paid}.
\tag{14}
```

The obligations are exact:

1. derive every channel from the material Navier-Stokes participation law on the
   same stopped chamber before positive-part selection;
2. prove channel potentials glue across chambers or have paid boundary
   mismatch;
3. prove upper-boundary and middle-remainder barriers for the channel set.

Only after those inputs does the record/return storage theorem become available.

## Shrinking-core branch

The shrinking-core branch has been sharpened.  Same-chain source nonreuse is
installed: a strict selected descendant cannot keep rereading an already-spent
native source atom except as lower-band carry, paid reselection, silent-source
exchange, full-exchange refund, or legal carry.

The local lower edge is also support:

```math
\omega_Q
\le
C_N\|F_Q\|_{\mathcal H_{\rm src}}^2
+R_{\rm paid}(Q)
+R_{\rm legal}(Q).
\tag{15}
```

The open theorem is the root upper bound with the selected-critical weight:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{16}
```

Here \(F_Q\) is the genuinely fresh original-history visible/silent/exchange
source increment after spent-source projection and paid removals, and \(w(Q)\)
is the selected first-ratio / heat-scale weight.

Raw Hilbert packing is already installed:

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N\|Z_P\|_{\mathcal H_{\rm raw}}^2+R_{\rm legal}(P).
\tag{17}
```

That raw estimate does not imply `(16)`.  The critical half-tail

```math
\|F_\ell\|_{\mathcal H_{\rm raw}}^2={2^{-\ell}\over \ell+1}
\tag{18}
```

has finite raw mass and divergent selected first-ratio mass.

So the shrinking-core live theorem is

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

## Current closure state

The silent interior source is no longer an independent observability blocker.
It has been reduced to the source-origin normal form and absorbed into the
parent-drop support.

The remaining Gold work is global:

```math
\text{CriticalFreshSourceTentCarleson.A}
\Leftarrow
\text{RepeatedCoreChannelRecordReturnStorageBound.A}
+
\text{FreshNativeRootUpperBound.A}.
\tag{19}
```

The repeated-core branch first needs
`PrimitivePLSSignedChannelDecomposition.A`.  The shrinking-core branch first
needs the selected-critical fresh root upper bound `(16)`.
