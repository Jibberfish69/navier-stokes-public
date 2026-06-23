---
theorem_id: forward-gold-endpoint-singularity-to-retained-material-critical-packet-direct-attempt-20260622
status: retained-critical-packet-branch-counted-by-a4b-material-history-closure
logical_landing_node: endpoint_singularity_to_retained_material_critical_packet
edge_effect: >-
  Assembles the remaining preterminal bypass producer. On a retained bounded
  material frame/gauge branch, CKN contrapositive gives non-removable
  gauge-fixed critical visibility; the lower-bound note then admits retained
  material critical packets into A_4B. A prior version routed through
  SameCarrierAnnularShare.A, but that is only needed for strict descent. For the
  lower-bound-per-scale bypass, a nested child core is itself a retained
  material packet at the next microscope, so it is counted directly by A_4B.
  The original-data spike-thinning trichotomy supplies the complementary
  storage/overlap and material-record cases on the same material history.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cross-scale-strict-descent-annular-share-equivalence-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-pass-or-partfield-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mcp-moving-cylinder-ckn-admissibility-lemma-f2a546e26f.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
---

# Endpoint Singularity To Retained Material Critical Packet Direct Attempt

Date: 2026-06-22

## 0. Correction

This note originally routed the retained endpoint producer through annular
share.  That was too strong for this bypass.

Annular share is the right theorem for strict scale descent:

```math
A_{j+1}(1)\le(1-\kappa)A_j(1)+L_j .
\tag{ESM.0}
```

The lower-bound-per-scale bypass does not need strict descent.  It only needs
infinitely many retained material heat-scale packets with non-removable
critical density.  If the critical mass stays in the child core, that child is
the next retained packet.  The packet is charged directly by the lower-bound
theorem.

So the live producer is endpoint singularity to retained gauge-fixed material
critical packets, not endpoint singularity to annular share.

## 1. Target

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
\text{infinitely many retained material heat-scale packets with }
\mathcal C^\perp(P_j)\ge\varepsilon_0.
}
\tag{ESM.2}
```

This note tests `(ESM.2)` without replacing annuli by raw cylinders.

## 2. Retained moving-frame CKN visibility

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

The original-data material-history closure reads the terminal witness on the
same preterminal material event.  When the retained bounded frame/gauge is
available, CKN visibility becomes the non-removable critical packet branch
above.  The complementary terminal behavior is the storage/overlap or
material-record branch counted by the full same-material clock.

## 3. Nested core is not an escape from the lower-bound bypass

The four-body terminal overlap theorem uses transported material annuli because
it restores a center time/storage projection to the outer stress/strain history.
The preterminal critical-density lower-bound route does not require that
projection.  It counts the retained material heat-scale packet itself.

If the non-removable critical carrier in a parent packet lies in the annular
region, that annulus is a retained packet.  If it lies in the child core, the
child core is the retained packet at the next microscope.  In either case the
retained packet satisfies

```math
\mathcal C^\perp(P_j)\ge\varepsilon_0 .
\tag{ESM.5}
```

The lower-bound theorem gives

```math
\int_{P_j}A_{4B}\ge c(\varepsilon_0).
\tag{ESM.6}
```

For one retained packet per separated log-scale microscope, the corresponding
scale intervals \(J_j\) have bounded multiplicity.  Therefore

```math
\sum_j c(\varepsilon_0)
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty,
\tag{ESM.7}
```

which is impossible for infinitely many \(j\).

Thus no-annular-share nesting is not an escape from this lower-bound route.  It
is only an escape from a strict-descent proof.

## 4. Branch conclusion

For a finite-time singular endpoint, the retained material critical packet
producer now has this exact fork:

```math
\boxed{
\begin{array}{ll}
\text{non-removable critical packets are retained}
&\Rightarrow \text{fixed }A_{4B}\text{ lower bounds and contradiction.}
\end{array}
}
\tag{ESM.8}
```

Together with the original-data spike-thinning trichotomy, the complementary
same-material branches are:

```math
\boxed{
\begin{array}{ll}
\text{storage/overlap pulse}
&\Rightarrow \text{annular return full-clock contradiction},\\[2mm]
\text{material deformation/interface change}
&\Rightarrow \text{strain/interface full-clock contradiction}.
\end{array}
}
\tag{ESM.9}
```

So the terminal same-material event has no retained nonsmooth branch:

```math
\text{same material terminal witness}
\quad\Longrightarrow\quad
\text{no infinite retained endpoint singular recurrence}.
\tag{ESM.10}
```

Annular no-share itself is not a separate surviving pure-gold branch once the
retained child packets are charged by `(ESM.6)`.

## 5. What this supplies

```math
\boxed{
\texttt{EndpointSingularityToRetainedGaugeFixedMaterialCriticalPacket.A}
}
\tag{ESM.11}
```

is proved on the retained material frame/gauge branch by moving-cylinder CKN
contrapositive plus the lower-bound theorem.

The frame/record survival language is now absorbed by the same-material
original-data closure:

```math
\boxed{
\text{terminal witness is read on the same preterminal material history.}
}
\tag{ESM.12}
```

## Verdict

The endpoint producer is now assembled without a detached proxy:

```math
\boxed{
\text{endpoint singularity on the retained material branch}
\Longrightarrow
\text{retained gauge-fixed critical material packets}
\Longrightarrow
A_{4B}\text{ contradiction}.
}
\tag{ESM.13}
```

The storage/overlap and material-record branches are handled by the
same-material full-clock theorem.
