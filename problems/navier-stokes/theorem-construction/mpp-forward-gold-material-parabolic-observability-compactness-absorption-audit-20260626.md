---
theorem_id: forward-gold-material-parabolic-observability-compactness-absorption-audit-20260626
status: compactness-rigidity-gives-quantum-observability-parabolic-service-absorption-remains-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge: MaterialParabolicSelectedTraceObservability.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-parabolic-selected-trace-observability-kernel-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-frozen-family-compactness-lsc-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-trace-observability-boundary-20260626.md
---

# Material parabolic observability compactness/absorption audit

The selected-trace observability boundary split the problem into:

```math
\text{parent Schur trace}
+\text{material parabolic service}
+\text{legal residue}
\quad\text{controls selected child action.}
\tag{MCA.1}
```

The kernel test proves the zero-loss part:

```math
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q)
=0
\Longrightarrow
A(Q')=0.
\tag{MCA.2}
```

This note checks what the installed compactness surfaces actually add.

## 1. Compactness converts zero-loss rigidity into a quantum

The retained frozen family compactness note proves compactness and lower
semicontinuity on the retained same-packet quotient:

```math
\mathcal K_N^{ret}/\mathcal G
\quad\text{is compact on normalized packet shells.}
\tag{MCA.3}
```

The four-body compactness/rigidity principle says that on a compact selected
packet space:

```math
\text{lsc loss}
+\text{continuous selected activity}
+\text{zero-loss rigidity}
\Longrightarrow
\text{positive loss quantum away from zero activity}.
\tag{MCA.4}
```

Apply this with the readout

```math
\mathcal L_{\rm tr}(Q)
:=
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q).
\tag{MCA.5}
```

Assuming retained convergence of \(U_Q\), lower semicontinuity of the Schur
quadratic form, and lower semicontinuity of the nonnegative parabolic service
components, `(MCA.2)` gives:

```math
A(Q')\ge\eta
\Longrightarrow
\mathcal L_{\rm tr}(Q)\ge c_\eta>0.
\tag{MCA.6}
```

So the compactness half is not missing.  On the retained compact packet class,
a unit selected child cannot be invisible to the combined parent trace plus
material service readout.

## 2. What this does not yet prove

The Gold parent-drop needed for the selected action Carleson/root reserve is a
Bellman inequality of the form:

```math
\sum_{Q'\in ch(Q)}A(Q')
+\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q).
\tag{MCA.7}
```

The observability quantum gives instead:

```math
\sum_{Q'\in ch(Q)}A(Q')
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q)
\tag{MCA.8}
```

after normalization/layer decomposition.

The Schur term telescopes into the capacity drop.  The legal residue is
allowed.  The remaining term is:

```math
\mathcal E_{\rm par}(Q).
\tag{MCA.9}
```

If `(MCA.9)` is already one of the globally finite nonselected losses, then
`(MCA.8)` closes the parent-drop up to legal terms.  If `(MCA.9)` contains the
same coefficient/frame or material-record service whose finiteness is the full
clock theorem, then `(MCA.8)` is circular as a Gold closure.

Thus the new exact absorption theorem is:

```text
ParabolicServiceAbsorptionForParentDrop.A
```

Statement:

```math
\sum_{Q\subseteq Q_0}\mathcal E_{\rm par}(Q)
\le
C_N\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0)
\tag{MCA.10}
```

with \(\mathcal R_{\rm root}\) finite from original data and not equal to the
tail integral of the desired full clock.

## 3. Result

Installed compactness plus the new zero-loss kernel proves a selected-trace
observability quantum on the retained packet class.

It does not by itself prove the Gold selected action Carleson/root reserve.
The remaining noncircular issue is absorption of the material parabolic service
appearing in that observability readout.

So the live Gold hinge is now:

```text
MaterialParabolicSelectedTraceObservability.A
+ ParabolicServiceAbsorptionForParentDrop.A
```

where the first part has its kernel/compactness mechanism identified, and the
second part is the exact place where the proof would otherwise reintroduce the
full-clock theorem as an assumption.
