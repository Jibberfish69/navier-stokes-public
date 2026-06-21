---
theorem_id: forward-gold-bodyiv-recurrence-to-signed-saturation-bridge-20260621
status: bridge-proved-no-new-supplier
logical_landing_node: bodyiv_recurrence_to_signed_saturation_bridge
edge_effect: "Connects the Body-IV recurrence decomposition to the existing signed-polar saturation and signed-saturation residual reductions. Endpoint-bounded positive deformation recurrence creates a negative signed return obligation on the same material geometry, unless the endpoint metric grows or the selector/frame/collar drifts. If that negative partner is retained, the signed-polar criterion pays it; if it exits, it is legal/geometry/collar charged; if it remains internal through infinitely many shrinking packets, it is exactly the terminal Zeno donor chain already isolated as the signed-saturation child. Thus Body-IV recurrence adds no fifth residual and no independent supplier."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-return-recurrence-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-signed-saturation-residual-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-remaining-defect-core-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Body-IV Recurrence To Signed-Saturation Bridge

Date: 2026-06-21

## 0. Aim

The Body-IV recurrence decomposition gave

```math
\sum_k A_+(I_k,e_k)=\infty
\Longrightarrow
\text{metric growth}
\ \vee\
\text{infinite negative partner}
\ \vee\
\text{selector/frame/collar drift.}
\tag{BRS.1}
```

This note connects the middle branch to the already installed signed-saturation
machinery.

The target is not a new supplier.  It is the identification

```math
\boxed{
\text{Body-IV negative return partner}
=
\text{signed-polar negative partner in the full selected packet,}
}
\tag{BRS.2}
```

up to legal geometry/collar exits.

## 1. Same-carrier identification

Let the selected material line contribution be

```math
h_k(s)
=
\langle S(s)e_k(s),e_k(s)\rangle
\tag{BRS.3}
```

on the retained material packet during \(I_k\).  Define

```math
dA_k=[h_k]_+\,ds,
\qquad
dN_k=[h_k]_-\,ds,
\qquad
dJ_k=h_k\,ds.
\tag{BRS.4}
```

Then exactly

```math
dJ_k=dA_k-dN_k.
\tag{BRS.5}
```

This is the same polar identity used by the signed-polar saturation criterion,
now read on the Body-IV material return channel.

If the selected material packet, direction/eigenframe label, cutoff, and gauge
are retained across the Body-III to Body-IV interface, then the negative return
partner in `(BRS.1)` is precisely \(dN_k\) in `(BRS.4)`.

## 2. Exit cases

If the material packet is not retained, the failure is not a hidden signed
payment.  It belongs to one of the already named geometry or selector defects:

```math
\boxed{
K_{\rm geom,map}^+
+K_{\rm geom,gauge}^+
+K_{\rm geom,coef}^+
+\mathcal R_{\rm sel}
+R_{\rm legal}.
}
\tag{BRS.6}
```

If the endpoint metric grows, it is a Body-IV geometry defect.  If the selector,
frame, cutoff, or collar drifts, it is \(\mathcal R_{\rm sel}\) or legal/collar
loss.  In both cases the recurrence is charged before signed saturation is
needed.

Thus the only middle branch that reaches signed saturation is the same-carrier
branch where \(dN_k\) is a real negative partner.

## 3. Finite chain payment

On a finite recurrence/donor chain, the signed-polar criterion gives

```math
dA_{\mathcal S}
\le
dJ_{\mathcal S}^-
+dD_{\mathcal S}
+(dM_{\mathcal S})^+
+dN_{\rm ret}
+dR_{\rm legal}
+dN_{\rm miss}.
\tag{BRS.7}
```

The full selected packet has already retained the participation tuple before
this inequality is used.  If \(dN_{\rm miss}\) terminates in a retained partner,
legal exit, or finite donor path, the existing signed-saturation reduction
pays it by

```math
dN_{\rm ret}+dR_{\rm legal}+o(1).
\tag{BRS.8}
```

So finite endpoint-bounded Body-IV recurrence is not a new obstruction.

## 4. Infinite branch

If the negative partner remains internal through infinitely many shrinking
terminal packets, the signed-saturation reduction identifies the child as

```math
\boxed{
\text{terminal Zeno donor chain with inherited positive native source.}
}
\tag{BRS.9}
```

This is exactly

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A.}
}
\tag{BRS.10}
```

The Body-IV recurrence branch therefore does not create a new residual beyond
the current residual core.

## 5. Result

Combining the recurrence decomposition with signed-polar saturation gives the
exact bridge:

```math
\boxed{
\text{endpoint-bounded Body-IV positive recurrence}
\Rightarrow
\mathcal R_{\rm legal}
\cup
\mathcal R_{\rm sel}
\cup
\mathcal R_{\rm sat}.
}
\tag{BRS.11}
```

Here \(\mathcal R_{\rm sat}\) is not a finite signed mismatch.  It is the
infinite terminal Zeno donor chain already inherited from \(dN_{\rm miss}\).

So the Body-IV recurrence work tightens the residual map:

```math
\boxed{
\text{no extra geometry-recurrence branch remains outside the four residuals.}
}
\tag{BRS.12}
```

The unweighted reserve is still not produced.  The surviving signed branch is
again

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}
\quad\text{or}\quad
\text{StrictFourBodyNoWasteLyapunov.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A.}
}
\tag{BRS.13}
```
