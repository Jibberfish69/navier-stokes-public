---
theorem_id: forward-gold-material-parabolic-selected-trace-observability-kernel-test-20260626
status: kernel-rigidity-proved-quantitative-observability-conditional-on-retained-compactness
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: MaterialParabolicSelectedTraceObservability.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-trace-observability-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-capacity-schur-complement-coercivity-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# Material parabolic selected-trace observability kernel test

The refined Gold hinge is:

```text
MaterialParabolicSelectedTraceObservability.A
```

The target is not pure parent-collar Schur coercivity.  The target is the
same-material statement:

```math
\sum_{Q'\in ch(Q)} A(Q')
\le
C_N\langle U_Q,\mathsf S_QU_Q\rangle
+C_N\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q).
\tag{MPO.1}
```

Here \(\mathsf S_Q\) is the parent-child pressure-Hodge DtN Schur complement
and \(\mathcal E_{\rm par}\) is the already-left-side material parabolic
service: coefficient/frame service, transported-collar service, viscous/radius
loss, Hodge/projector service, and legal lower-order residue.

This note proves the kernel part and isolates the remaining quantitative
observability condition.

## 1. Zero-service rigidity

Work on one retained transported material packet.  In material variables:

```math
\partial_t v+A^T\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0,
\qquad
G=AA^T.
\tag{MPO.2}
```

The metric satisfies:

```math
\partial_tG=-2ASA^T.
\tag{MPO.3}
```

Thus zero coefficient/frame service gives:

```math
ASA^T=0.
\tag{MPO.4}
```

On a retained material packet \(A\) is nondegenerate, so:

```math
S=0.
\tag{MPO.5}
```

The selected critical-strain density is built from \(S\) and the pressure-Hodge
strain partner.  With \(S=0\), the selected critical-strain action vanishes:

```math
A(Q')=0.
\tag{MPO.6}
```

The Hodge/projector service also vanishes because the moving constraint
geometry is driven by \(A\) and \(S\).  The transported collar has no remaining
materiality defect, and zero legal residue leaves no exit carrier.

Therefore:

```math
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q)
=0
\quad\Longrightarrow\quad
\sum_{Q'\in ch(Q)}A(Q')=0.
\tag{MPO.7}
```

This proves the static zero-loss kernel:

```text
kernel(parent Schur trace + material parabolic service + legal residue)
has no selected critical-strain action.
```

## 2. Compactness route to quantitative observability

The desired estimate `(MPO.1)` follows from `(MPO.7)` by contradiction if the
normalized retained packet class is compact after the standard gauge
normalizations.

Assume `(MPO.1)` fails.  Then there are retained normalized packets with:

```math
\sum_{Q'\in ch(Q_n)}A_n(Q')=1,
\tag{MPO.8}
```

but:

```math
\langle U_{Q_n},\mathsf S_{Q_n}U_{Q_n}\rangle
+\mathcal E_{{\rm par},n}(Q_n)
+R_{{\rm legal},n}(Q_n)
\to0.
\tag{MPO.9}
```

After passing to a subsequence in the retained same-material topology, the
limit packet has zero parent Schur trace, zero material parabolic service, and
zero legal residue.  Lower semicontinuity gives:

```math
\sum_{Q'}A_*(Q')\ge1.
\tag{MPO.10}
```

But `(MPO.7)` gives:

```math
\sum_{Q'}A_*(Q')=0,
\tag{MPO.11}
```

contradiction.

So the proof of `(MPO.1)` reduces exactly to the retained compactness and
lower-semicontinuity needed in the passage from `(MPO.8)`--`(MPO.9)` to the
limit packet.

## 3. What is proved and what remains

The kernel theorem is proved:

```math
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q)
=0
\Rightarrow
A(Q')=0.
\tag{MPO.12}
```

This rules out a literal zero-loss selected child.

The quantitative theorem still needs:

```text
RetainedMaterialParabolicCompactnessForSelectedTrace.A
```

meaning compactness, gauge normalization, and lower semicontinuity for
normalized retained packets whose parent Schur trace, material parabolic
service, and legal residue tend to zero.

This is strictly sharper than the previous pure-Schur hinge.  The one-child
half-tail is no longer being tested against elliptic trace capacity alone; it is
being tested against the full same-material zero-loss rigidity of the
pressure-viscosity-incompressibility-velocity packet.

## 4. Referee boundary

The Gold route is not closed by this note.

It proves the correct kernel rigidity and leaves one precise quantitative
passage:

```math
\text{zero-service compactness}
\quad\Longrightarrow\quad
\text{uniform selected-trace observability}.
\tag{MPO.13}
```

If `RetainedMaterialParabolicCompactnessForSelectedTrace.A` is installed, then
`MaterialParabolicSelectedTraceObservability.A` follows, the parent-drop gains
the selected action term, the capacity Bellman sum telescopes, and the Gold
full-clock continuation route receives its selected action Carleson reserve.
