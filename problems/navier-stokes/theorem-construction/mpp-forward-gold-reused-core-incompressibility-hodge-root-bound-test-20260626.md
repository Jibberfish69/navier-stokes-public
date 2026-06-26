---
theorem_id: forward-gold-reused-core-incompressibility-hodge-root-bound-test-20260626
status: direct-test-fails-incompressibility-hodge-attach-but-do-not-bound-root-positive-variation
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - RepeatedCorePositiveVariationRootBound.A
  - AdjointSelectedCapacityGain.A
  - RootPositiveFluxReserveCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-nonreuse-storage-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-time-cauchy-green-storage-sign-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-sign-cancellation-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
---

# Reused-Core Incompressibility/Hodge Root-Bound Test

The reused-core branch asks whether one original material ancestry line can
carry infinite selected first-ratio action:

```math
\sum_k A(Q_k)=\infty
```

while all visits remain on the same transported material core.

The installed single-line tax already gives the correct local payment:

```math
\sum_{Q_k\subset\mathcal A(a)} A(Q_k)
\le
C\,\mathcal V_{\rm core}(a)+R_{\rm legal}(a).
\tag{RCH.1}
```

Here \(\mathcal V_{\rm core}\) is rectified positive variation of the
Cauchy-Green deformation, pressure-Hodge frame, collar normal, and annular
turnstile records on the same material core.

The missing root theorem is:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
\tag{RCH.2}
```

This note tests whether incompressibility plus material Hodge coupling already
prove `(RCH.2)`.

## 1. Incompressibility gives attachment, not rectified finiteness

Let

```math
F=D_aX,
\qquad
C=F^TF.
\tag{RCH.3}
```

Incompressibility gives

```math
\det F=1.
\tag{RCH.4}
```

Equivalently, if \(s_i(F)\) are the singular values,

```math
\sum_{i=1}^3\log s_i(F)=0.
\tag{RCH.5}
```

The material strain identity is

```math
\partial_t C=2F^TSF.
\tag{RCH.6}
```

and for a material direction \(\xi\),

```math
{d\over dt}\log |F\xi|
=
{F\xi\cdot S F\xi\over |F\xi|^2}.
\tag{RCH.7}
```

Thus the positive variation is genuinely same-material.  But `(RCH.5)` is only
a zero-sum constraint.  It permits a trace-free stretch vector such as

```math
(\lambda,-\lambda/2,-\lambda/2),
\qquad
\lambda>0.
\tag{RCH.8}
```

For `(RCH.8)`, one material direction gains length while two transverse
directions lose length, and the determinant remains one.  The positive
variation of \(\log s_{\max}(F)\) is not bounded by the determinant identity.

More generally, the determinant identity controls net volume, not the
rectified variation of the condition number:

```math
\operatorname{Var}^+\log\kappa(F)
\quad\text{is not controlled by}\quad
\det F=1.
\tag{RCH.9}
```

So incompressibility prevents hidden volume creation, but it does not supply
the root positive-variation reserve needed in `(RCH.2)`.

## 2. Complete-frame payment is orientation payment, not root summability

The complete-frame trace-free identity says that for a retained principal
packet frame \((p,\widehat\xi,n)\),

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+.
\tag{RCH.10}
```

This is the correct same-packet orientation law.  A positive velocity-direction
strain pump is paid by wave-covector compression or packet-normal/collar
compression.

But `(RCH.10)` is pointwise in the visit.  It converts one selected positive
event into transverse compression records on the same material carrier.  It
does not prove that the total transverse compression record has finite root
mass:

```math
\sum_k [p_k\cdot S p_k]_+
\le
\sum_k
\Big(
[-\widehat\xi_k\cdot S\widehat\xi_k]_+
+
[-n_k\cdot Sn_k]_+
\Big).
\tag{RCH.11}
```

The right side is exactly the rectified core variation \(\mathcal V_{\rm core}\)
whose root bound is missing.  Therefore the complete-frame law closes the
orientation gap, but it does not close the reused-core root-bound branch.

## 3. Material Hodge coupling gives pressure attachment, not a one-way sign

In material variables,

```math
D_Aw=\operatorname{div}_a(Aw),
\qquad
\mathcal G_A\pi=A^T\nabla_a\pi,
\qquad
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A.
\tag{RCH.12}
```

Applying \(\mathbb P_A\) to the material Navier-Stokes law removes pressure
from the tangent equation:

```math
\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_av).
\tag{RCH.13}
```

The moving constraint geometry contributes through

```math
\dot{\mathbb P}_A v
=
\mathcal G_A L_A^{-1}\operatorname{div}_a(ABv)
\tag{RCH.14}
```

up to the fixed sign convention for \(L_A\).

This is an attachment identity.  The pressure/Hodge motion is driven by the
same material strain/metric geometry.  It is not a one-way positive-variation
bound.  Orthogonality gives normal/tangent separation; it does not give:

```math
\int\mathcal V_{\rm Hodge/frame}\,d\mathcal R_{\rm ancestry}
\le C_N(u_0).
\tag{RCH.15}
```

So Hodge coupling prevents a detached pressure source, but it does not make the
rectified projector/frame variation summable.

## 4. Local affine normal form shows why the identities cannot suffice

The linear trace-free profile

```math
u(x,t)=A(t)x,
\qquad
\operatorname{tr}A(t)=0,
\tag{RCH.16}
```

has

```math
\det D_aX(t)=1,
\tag{RCH.17}
```

and its pressure Hessian can balance the affine acceleration/nonlinear term at
the local principal level.  The special constant symmetric case is exact:

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
\Delta u=0,
\qquad
(u\cdot\nabla)u+\nabla p=0.
\tag{RCH.18}
```

This is not a global finite-energy counterexample.  Its role is narrower: it
shows that the local identities of incompressibility, pressure attachment, and
zero interior viscosity are compatible with persistent trace-free material
stretching.  Therefore those identities alone cannot imply `(RCH.2)`.

Any global proof of `(RCH.2)` must use a stronger original-history reserve,
not just local incompressibility, local pressure balancing, or Hodge
orthogonality.

## 5. Result

The direct test fails as a proof of
`RepeatedCorePositiveVariationRootBound.A`.

The checked conclusions are:

1. Cauchy-Green deformation attaches reused-core events to the same material
   strain history.
2. Complete-frame trace-free payment attaches each positive primitive event to
   transverse covector/collar compression.
3. Material Hodge coupling attaches pressure motion to the moving incompressible
   constraint geometry.
4. None of these identities bounds the root rectified positive variation
   measure \(\mathcal V_{\rm core}\).

Thus the reused-core branch remains open in exactly this form:

```math
\boxed{
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
}
\tag{RCH.19}
```

Equivalently, the Gold route still needs a global no-free-upward-transfer law,
a bounded-below same-material reserve, or a different argument that proves the
full selected first-ratio action bound directly.
