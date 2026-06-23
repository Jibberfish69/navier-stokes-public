---
theorem_id: forward-gold-qc-cg-exact-current-vs-xprimitive-correction-20260622
status: qc-cg-retained-interface-current-criteria-installed-xprimitive-demoted
logical_landing_node: qc_cg_exact_current_vs_xprimitive_correction
edge_effect: >-
  Corrects the exact-concomitant frontier after checking the Body-II/III and
  Body-III/IV interface criteria. Q->C and C->G are not raw open X-primitive
  problems on their retained branches. Q->C is exact when the three-measure
  participation packet (mu^A, mu^N, mu^J) is retained on the same carrier; its
  failures are K_sel, K_C^+ and legal residual. C->G is exact when the
  canonical Eulerian packet is pulled back through the volume-preserving
  material geometry realization on the same labels/gauge; its failures are K_C^+,
  K_G^+ geometry components and legal residual. Thus X_QC and X_CG are set to
  zero on retained exact-current branches. The remaining work is not to invent
  cumulative primitives, but to include the named interface defects inside the
  simultaneous four-body loss/residual envelope.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-bodyiv-canonical-geometry-packet-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gs-return-exact-current-vs-xprimitive-correction-20260622.md
---

# Q->C / C->G Exact Current vs X-Primitive Correction

Date: 2026-06-22

## 0. Correction

The previous exact-concomitant note treated \(Q\to C\) and \(C\to G\) as if
they still required bounded instantaneous \(X_{QC}\) and \(X_{CG}\) primitives.
That was too strong.

The checked interface notes already give the lawful retained-branch form:

```math
\boxed{
Q\to C,\ C\to G
\quad\text{are exact-current-or-defect interfaces.}
}
\tag{QCG.1}
```

So the retained branches use

```math
\boxed{
X_{QC}=0,\qquad X_{CG}=0.
}
\tag{QCG.2}
```

The live burden is to keep the named defect terms inside the simultaneous
four-body packet, not to replace them by cumulative exchange primitives.

## 1. \(Q\to C\)

The Body-II/III criterion proves that the retained participation packet is the
three-measure same-carrier object

```math
(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N.
\tag{QCG.3}
```

On the retained branch, compactness preserves this polar identity:

```math
\boxed{
d\mu_*^J=d\mu_*^A-d\mu_*^N.
}
\tag{QCG.4}
```

When the retained packet is also canonically identified with the limiting
velocity-pressure tower packet, the note gives

```math
\boxed{
K_{C,A}^+=K_{C,N}^+=K_{C,J}^+=0.
}
\tag{QCG.5}
```

Thus in the lossless same-carrier branch

```math
K_{\rm sel}=0,\qquad K_C^+=0,\qquad R_{\rm legal}=0,
\tag{QCG.6}
```

and the \(Q\to C\) interface creates no new orientation defect:

```math
\boxed{
dK_{Q\to C}=0.
}
\tag{QCG.7}
```

The failure case is already typed by the same note:

```math
\boxed{
K_{Q\to C}^+
\le
K_{\rm sel}
+K_{C,A}^+
+K_{C,N}^+
+K_{C,J}^+
+R_{\rm legal}.
}
\tag{QCG.8}
```

These are packet defects, not external debts.  They belong to the four-body
loss/residual envelope.

## 2. \(C\to G\)

The Body-III/IV criterion proves that, once the canonical Eulerian limiting
packet is pulled back by the volume-preserving material map on the same labels,
cutoffs, rungs, and gauge, the current identity is exact:

```math
\boxed{
dJ_G^{\rm in}
=
\Xi^\sharp dJ_C^{\rm out}.
}
\tag{QCG.9}
```

Equivalently, after both sides are placed on the common selected four-body
carrier,

```math
\boxed{
dK_{C\to G}=0.
}
\tag{QCG.10}
```

So on the retained branch there is no \(X_{CG}\) primitive to construct.

The failure case is already typed:

```math
\boxed{
K_{C\to G}^+
\le
K_C^+
+K_{\rm geom,map}^+
+K_{\rm geom,gauge}^+
+K_{\rm geom,coef}^+
+R_{\rm legal}.
}
\tag{QCG.11}
```

The geometry components are Body-IV geometry defects unless the mismatch has
already been charged to \(K_C^+\).

## 3. Four-interface state

After this correction, the adjacent-interface state is:

```math
\boxed{
S\to Q
\text{ is exact as strict same-packet radius/viscous loss.}
}
\tag{QCG.12}
```

```math
\boxed{
Q\to C
\text{ is exact current on the retained three-measure packet branch.}
}
\tag{QCG.13}
```

```math
\boxed{
C\to G
\text{ is exact current on the retained material-pullback branch.}
}
\tag{QCG.14}
```

```math
\boxed{
G\to S
\text{ is exact current on the retained tower-recertification branch.}
}
\tag{QCG.15}
```

Thus the exact-concomitant problem no longer asks for cumulative \(X\)-primitive
repairs at the four interfaces.

The honest remaining problem is the simultaneous packet envelope:

```math
\boxed{
\text{all named interface defects must be included in }
dD_{4B,N}+dA_{4B,N}+dR_{4B,N}
\text{ on the same material packet.}
}
\tag{QCG.16}
```

This is still not a proof of smoothness.  It is a correction of the frontier:
the interface laws are criteria already installed; the open gold work is making
their hypotheses and defect charges live inside one simultaneous material
four-body coercivity inequality.

