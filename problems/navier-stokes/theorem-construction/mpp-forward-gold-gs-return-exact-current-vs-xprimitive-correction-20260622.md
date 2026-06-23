---
theorem_id: forward-gold-gs-return-exact-current-vs-xprimitive-correction-20260622
status: gs-return-current-criterion-installed-cumulative-xgs-demoted
logical_landing_node: geometry_to_scale_return_exact_current_correction
edge_effect: >-
  Corrects the G->S part of the exact concomitant frontier. The June 21
  Body-IV/Body-I criterion already proves that, under retained material metric,
  finite coefficient-commutator packet, commutator absorption/charge, and
  same-carrier tower transport, the geometry outgoing current equals the scale
  incoming current: dJ_S^in=dJ_G^out. Thus the retained G->S interface closes
  by exact current orientation, with no X_GS needed. The older remaining-arrows
  note's instruction to choose X_GS as the signed exchange storage associated
  with J_GS^tower is unsafe under the current bounded-instantaneous X-term
  standard: a cumulative signed exchange storage is not a bounded concomitant.
  The correction is to set X_GS=0 on the retained exact-current branch and to
  charge failures to K_ell, K_coef, K_comm, K_transport, K_G, or legal residual.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-bodyi-geometry-tower-recertification-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
---

# \(G\to S\) Return: Exact Current Versus \(X\)-Primitive Correction

Date: 2026-06-22

## 0. Correction

The \(G\to S\) return should not be described as needing a cumulative
\(X_{GS}\)-primitive.

The installed Body-IV/Body-I criterion already gives the exact retained-branch
current identity:

```math
\Theta_{G\to S}\mathcal T_N[v,G]
=
\mathcal T_N^{next}[u,p]
\quad\Longrightarrow\quad
dJ_S^{in}=dJ_G^{out}.
\tag{GXC.1}
```

So, on the retained branch where the criterion hypotheses are satisfied, the
interface mismatch is zero:

```math
d\mu_{GS}
=
dJ_G^{out}-dJ_S^{in}
=0.
\tag{GXC.2}
```

That is better than a bounded primitive.  It is exact orientation.

## 1. The unsafe older line

The remaining-arrows note contains the line:

```math
\text{Choose }X_{GS}\text{ to be the signed exchange storage associated with }
J_{GS}^{tower}.
\tag{GXC.3}
```

Under the current standard, this is not a proof.  A signed exchange storage can
mean the cumulative primitive

```math
X_{GS}(\sigma)
=
\int_{\sigma_0}^{\sigma} dJ_{GS}^{tower},
\tag{GXC.4}
```

and a cumulative primitive is exactly the construction that was demoted: it is
bounded below only if the no-free cumulative exchange theorem is already true.

Thus `(GXC.3)` must not be used as the \(G\to S\) concomitant.

## 2. Correct \(G\to S\) form

The correct form is:

```math
\boxed{
X_{GS}=0
\quad\text{on the exact retained-current branch.}
}
\tag{GXC.5}
```

The interface is closed by `(GXC.1)` itself.

When `(GXC.1)` fails, the installed criterion charges the positive interface
defect by

```math
\boxed{
K_{G\to S}^+
\le
K_{\rm ell}^+
+K_{\rm coef}^+
+K_{\rm comm}^+
+K_{\rm transport}^+
+K_G^+
+R_{\rm legal}.
}
\tag{GXC.6}
```

These are not outside accounts.  They are the same Body-IV/Body-I retained
packet requirements:

```math
\begin{aligned}
K_{\rm ell}^+ &: \text{material metric ellipticity loss},\\
K_{\rm coef}^+ &: \text{finite coefficient geometry failure},\\
K_{\rm comm}^+ &: \text{unabsorbed coefficient commutator packet},\\
K_{\rm transport}^+ &: \text{failure of material tower labels, cutoffs, radii,
and rungs to match the next Body-I carrier},\\
K_G^+ &: \text{geometry/frame record failure}.
\end{aligned}
\tag{GXC.7}
```

Thus the \(G\to S\) interface has the exact lawful dichotomy:

```math
\boxed{
\text{exact current orientation}
\quad\text{or}\quad
\text{same-packet geometry/tower defect.}
}
\tag{GXC.8}
```

## 3. Consequence for the exact concomitant frontier

The \(G\to S\) return is not the place to invent a bounded \(X\)-primitive.
The installed criterion already tells us how it closes.

The corrected status is:

```math
\boxed{
G\to S\text{ closes by exact current identity once its retained packet
hypotheses are present.}
}
\tag{GXC.9}
```

The remaining work is to ensure those hypotheses are part of the simultaneous
same-packet activity/loss, or else their failure is visible as \(K_{G\to S}^+\).

So the exact concomitant frontier is sharpened:

```math
\boxed{
\text{do not use cumulative }X_{GS};
\quad
G\to S\text{ is exact-current-or-defect.}
}
\tag{GXC.10}
```

The unresolved interfaces are the ones whose exact current identity is not yet
fully installed as a differentiated same-packet law:

```math
Q\to C,
\qquad
C\to G,
\tag{GXC.11}
```

together with the global requirement that all \(G\to S\) defect terms in
`(GXC.6)` are enveloped inside the same simultaneous four-body packet.
