---
theorem_id: forward-gold-endpoint-singularity-to-retained-material-critical-packet-direct-attempt-20260622
status: retained-branch-assembled-annular-share-or-cm-consumption-pure-gold-share-still-open
logical_landing_node: endpoint_singularity_to_retained_material_critical_packet
edge_effect: >-
  Assembles the remaining preterminal bypass producer. On a retained bounded
  material frame/gauge branch, CKN contrapositive gives non-removable
  gauge-fixed critical visibility; the lower-bound note then admits retained
  material critical packets into A_4B. The cylinder-to-annulus step is exactly
  SameCarrierAnnularShare.A. Without annular share, the installed nested-core
  assembly lands the branch as Part/Field consumption. Thus the no-exit retained
  annular branch is killed by A_4B counting, while pure forward-gold still needs
  the annular-share theorem to remove the CM-consumption alternative.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cross-scale-strict-descent-annular-share-equivalence-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-pass-or-partfield-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mcp-moving-cylinder-ckn-admissibility-lemma-f2a546e26f.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
---

# Endpoint Singularity To Retained Material Critical Packet Direct Attempt

Date: 2026-06-22

## 0. Target

The previous note proved the retained lower-bound admission:

```math
\mathcal C^\perp(P)\ge\varepsilon_0
\Longrightarrow
\int_P A_{4B}\ge c(\varepsilon_0)
\tag{ESM.1}
```

inside the retained gauge-fixed compactness class.

The remaining producer is:

```math
\boxed{
\text{finite-time singularity}
\Longrightarrow
\text{infinitely many retained material packets with }
\mathcal C^\perp(P_j)\ge\varepsilon_0.
}
\tag{ESM.2}
```

This note tests `(ESM.2)` without replacing annuli by raw cylinders.

## 1. Retained moving-frame CKN visibility

Assume the endpoint branch retains a same-fluid material frame with the bounded
distortion and normalized frame bounds required by the moving-cylinder CKN
admissibility lemma.  In that frame, remove the Galilean velocity mode and the
affine pressure gauge as in `(PAL.3)`--`(PAL.4)`.

If the gauge-fixed critical density is small on some sufficiently small
retained moving cylinder, then the moving-cylinder CKN lemma applies the CKN
epsilon criterion in the normalized packet.  The pulled-back solution is
regular on the smaller cylinder; bounded frame/gauge transfer returns that
regularity to the Eulerian variables.

Therefore a finite-time singular endpoint on the retained material-frame branch
forces a sequence of retained moving cylinders \(Q_j^\Phi\) with

```math
\mathcal C^\perp(Q_j^\Phi)\ge\varepsilon_M>0.
\tag{ESM.3}
```

This is the correct CKN contribution: it gives non-removable critical
visibility in the retained material frame.  Raw CKN mass is not enough, because
removable Galilean or affine-pressure content does not represent selected
singular participation.

If the bounded material frame/gauge branch is not retained, the failure is
already loss of the same-packet participation record:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{ESM.4}
```

## 2. Cylinder-to-annulus is the annular-share fork

The four-body terminal counting route uses transported material annuli.  The
transition from a moving critical cylinder to an annular packet is exactly the
same-carrier annular-share question.

For a parent normalized critical carrier \(\mu_j\), with child scale
\(\lambda_j\), strict descent is equivalent to

```math
\mu_j(Q_1\setminus Q_{\lambda_j})
\ge
\kappa\,\mu_j(Q_1)-L_j.
\tag{ESM.5}
```

This is `SameCarrierAnnularShare.A`.  It is not automatic from CKN visibility,
from shell bookkeeping, or from recurrence.  It is the exact statement that a
fixed fraction of the non-removable critical carrier appears in the material
annulus between the parent and child microscopes.

When `(ESM.5)` holds with summable or vanishing legal tail, `(ESM.3)` produces
infinitely many retained material annular packets satisfying

```math
\mathcal C^\perp(P_j)\ge\varepsilon_0.
\tag{ESM.6}
```

Then `(ESM.1)` gives

```math
\int_{P_j}A_{4B}\ge c(\varepsilon_0).
\tag{ESM.7}
```

The fixed transported annular atlas gives bounded log-scale overlap, so

```math
\sum_j c(\varepsilon_0)
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty,
\tag{ESM.8}
```

which is impossible.  Thus the retained annular-share branch is killed by the
four-body reserve.

## 3. No annular share is already the nested-core branch

If the same non-removable critical carrier never gives annular share, the
installed annular-share assembly identifies the branch as nested-core
recurrence:

```math
\inf_N \mu_0(Q_{R_N})>0,
\qquad
R_N\downarrow0.
\tag{ESM.9}
```

Finite-measure continuity from above gives a point/time-face atom:

```math
\mu_0(\{(0,0)\})>0.
\tag{ESM.10}
```

The installed pass-or-Part/Field assembly then consumes the fixed-chain
no-share branch after same-witness admission:

```math
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{ESM.11}
```

This is not a hidden gold endpoint pulse.  It is the already identified
same-carrier nested-core atom branch.

## 4. Branch conclusion

For a finite-time singular endpoint, the retained material critical packet
producer has this exact fork:

```math
\boxed{
\begin{array}{ll}
\text{retained material frame/gauge fails}
&\Rightarrow Pack_Q+\neg Part_{N,Q},\\[2mm]
\text{gauge-fixed critical visibility plus annular share}
&\Rightarrow \text{fixed }A_{4B}\text{ lower bounds and contradiction},\\[2mm]
\text{gauge-fixed critical visibility with no annular share}
&\Rightarrow \neg Part_{N,Q}\text{ or }\forall r>0\,\neg Field_{N,r,Q}.
\end{array}
}
\tag{ESM.12}
```

Thus the no-exit retained annular branch is closed:

```math
\boxed{
Pack_Q+Part_{N,Q}+\exists r>0\,Field_{N,r,Q}
\quad\Longrightarrow\quad
\text{no infinite retained endpoint singular recurrence}.
}
\tag{ESM.13}
```

## 5. Pure gold boundary

The pure forward-positive gold route still needs the positive annular-share
theorem:

```math
\boxed{
\texttt{SameCarrierAnnularShare.A}
}
\tag{ESM.14}
```

or an equivalent source-square, critical-strain, strict no-waste, saturation,
or profile theorem that proves `(ESM.5)` on the same carrier.

Without `(ESM.14)`, the proof is a pass-or-CM-consumption result: the retained
annular branch is killed by \(A_{4B}\), while no-share or loss of retained
material packet lands in Part/Field.

## Verdict

The endpoint producer is now assembled without a detached proxy:

```math
\boxed{
\text{endpoint singularity}
\Longrightarrow
\text{retained gauge-fixed critical material activity}
\Longrightarrow
\text{annular }A_{4B}\text{ contradiction}
}
\tag{ESM.15}
```

on the retained annular-share branch.  The only remaining pure-gold deletion
of the alternative is the same-carrier annular-share theorem itself.
