---
theorem_id: forward-gold-multicurrency-invisible-child-to-stopped-compensator-synthesis-20260627
status: multicurrency-synthesis-installed-better-idea-open-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / primitive PLS no-free-upcrossing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
answers_prompt: attack invisible-child object from different mathematical currencies
current_relay_hinge:
  - PrimitivePLSNoFreeUpcrossing.A
  - PrimitivePLSBoundedBelowLyapunov.A
synthesizes:
  - SelectedCarrierBoundaryObservability.A
  - PressureHodgeRellichSelectedSign.A
  - NoInvisibleMicrolocalSelectedMeasure.A
  - DtNRiccatiSelectedPotentialDrop.A
  - SelectedAdjointPolarizationNoCancellation.A
  - ZeroDefectPacketClassification.A
refines_to:
  - StoppedQuotientVisibleSelectedTraceObservability.A
  - RetainedSelectedPhaseEllipticity.A
  - StoppedExchangeReselectionCompensator.A
  - StoppedFullExchangeActionCarleson.A
  - TopStrainLogExchangeRootReserve.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/fecb99eb-1583-4598-99bb-fa5a4a66021b/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-invisible-child-blowup-rigidity-route-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-invisible-child-lockpick-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-invisible-child-rigidity-closure-lock-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-normal-form-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-selected-density-hilbert-lift-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-hilbert-lift-audit-selected-tail-frontier-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parabolic-service-absorption-decomposition-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-to-primitive-half-tail-integration-20260627.md
---

# Multicurrency Invisible-Child To Stopped-Compensator Synthesis

The supplied invisible-child object is:

```math
A_\infty>0,
\qquad
\mathsf S_\infty U_\infty=0.
```

Plainly: the child carries real selected critical-strain action, but the parent
pressure-Hodge boundary sees no defect.

The multicurrency attack gives one stable conclusion.  Pure boundary detection
is the wrong final theorem.  Carleman, Rellich/Pohozaev, microlocal defect
measure, DtN Riccati, adjoint polarization, and zero-defect classification all
pay the same useful local object: the pressure-visible quotient.  They do not
kill every Schur-invisible interior source, because boundary-flat
pressure-Hodge potentials can exist.

The correct zero-defect statement is therefore augmented:

```math
\mathsf S_\infty U_\infty=0,\quad
\Omega_\infty^{strain/ex}=0,\quad
D_\infty^{vis/rad}=0,\quad
R_\infty^{legal}=0
\quad\Longrightarrow\quad
A_\infty=0.
\tag{1}
```

Equivalently, on a retained stopped parent,

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{stop}U_S\rangle
+C\Omega_S^{strain/ex}
+CD_S^{vis/rad}
+R_{stop}(S)
+R_{legal}(S).
\tag{2}
```

This is the right local theorem.  The pressure-visible child is paid by the
Schur/DtN/Rellich/Carleman boundary currency.  The Schur-silent selected child
is not free: the installed source-origin normal form says it is either
unselected pressure-constraint material or it enters through same-material
strain/exchange.

## 1. What each currency really proves

Carleman / boundary observability should be stated only on the quotient by the
boundary-flat silent kernel:

```math
A_{\rm qvis}^{stop}(S)
\le
C\langle U_S,\mathsf S_S^{stop}U_S\rangle
+CR_{legal}(S).
\tag{3}
```

Rellich / Pohozaev supplies the same quotient in multiplier form:

```math
\int_{\partial A_S}\mathcal B_{A,X}(W,\partial_{\nu_A}W)
=
\int_{A_S}\mathcal R_{A,X}(\nabla_AW,\nabla_AW)
+\int_{A_S}(X\cdot\nabla_AW+\gamma W)f_{\rm vis}
+Err_{A,X}.
\tag{4}
```

With selected-sign faithfulness on the visible quotient, `(4)` gives `(3)`.
It does not see the boundary-flat source

```math
f=\mathcal L_Aw,\qquad w|_{\partial A_S}=0,\qquad
\partial_{\nu_A}w|_{\partial A_S}=0.
\tag{5}
```

Microlocal defect measures state the same split at symbol level.  The false
Schur-only condition would be

```math
a_{\rm sel}(x,\xi,z)
\le C|b_{\rm vis}(x,\xi)z|^2.
\tag{6}
```

The repo-consistent condition is augmented ellipticity:

```math
a_{\rm sel}(x,\xi,z)
\le
C\bigl(
|b_{\rm vis}z|^2
+|b_{\rm sil}z|^2
+|b_{\rm ex}z|^2
\bigr),
\tag{7}
```

where the currencies are visible Schur, silent pressure-potential energy, and
same-material complete-frame exchange.  This is the phase-space form of the
visible/silent/exchange Hilbert lift.

DtN Riccati and adjoint polarization give useful formulas for the visible
quotient:

```math
\partial_r\Lambda_r
=
-\Lambda_r^2+V_{\Sigma,r}+E_{legal,r},
\tag{8}
```

and

```math
A_{\rm vis}
\lesssim
\langle \Pi_{\rm PH}\mu_{\Sigma}^{sel},\Phi\rangle
\sim
\langle U_S,\mathsf S_S^{stop}U_S\rangle.
\tag{9}
```

They do not prevent cancellation or silence by themselves.  They become proof
mechanisms inside `(2)`.

## 2. Why this is better than another scalar invisible-child estimate

The scalar invisible-child route asks the boundary to see every selected child.
That is too strong.  The better idea is to keep the local multicurrency split
and make the global selected tail into a stopped compensator / Hilbert
martingale problem.

The stopped Bellman inequality after `(2)` is:

```math
\sum_{S'\in ch_{\rm stop}(S)}
\bigl(A(S')+B(S')\bigr)
\le
B(S)
+C\Xi(S)
+R_{stop}(S)
+R_{legal}(S),
\tag{10}
```

where

```math
\Xi(S):=\Omega_S^{strain/ex}+D_S^{vis/rad}.
\tag{11}
```

So the global problem is not to make the silent child visible.  The global
problem is:

```math
\sum_{S\subseteq P}\Xi(S)+R_{stop}(P)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{12}
```

This is exactly the no-free-upcrossing burden in stopped form.  Unpaid
reselection and exchange summability should not be two branches.  They are the
continuous and jump parts of the same compensator attached to the original
same-material packet path.

The sharp compensator statement is:

```math
R_{stop}^{unpaid}(P)
\le
C\sum_{S\subseteq P}
\bigl(\Omega_S^{strain/ex}+D_S^{vis/rad}\bigr)
+R_{legal}(P).
\tag{13}
```

With `(13)`, the remaining theorem becomes the original-history exchange
Carleson/root-reserve bound:

```math
\sum_{S\subseteq P}
\bigl(\Omega_S^{strain/ex}+D_S^{vis/rad}\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{14}
```

In the full-clock language, `(14)` is the same as:

```math
\sum_{Q\subseteq Q_0}
\left(
d\Omega_N^{top\ strain/log}(Q)
+d\Omega_N^{comm/exchange}(Q)
\right)
\le
C_N\mathcal R_{root}(Q_0)+R_{legal}(Q_0),
\tag{15}
```

with the root reserve finite from original smooth data and not defined from the
future selected descendant tail.

## 3. Hilbert-lift formulation

The same idea can be written as a selector-correct Hilbert lift:

```math
\mathcal H_{lift}
=
\mathcal H_{vis}
\oplus
\mathcal H_{sil}
\oplus
\mathcal H_{ex}.
\tag{16}
```

The target is a readout bound

```math
|\Delta_Q\log\rho_{sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{lift}}+e_Q,
\tag{17}
```

with

```math
\sum_{Q\subseteq Q_0}|e_Q|^2\mathcal R(Q)
\le
R_{legal}(Q_0),
\tag{18}
```

and the original-data root square-function estimate

```math
\sum_{Q\subseteq Q_0}
\|\Delta_QZ\|_{\mathcal H_{lift}}^2
\le
C_N(u_0)\mathcal R(Q_0)+R_{legal}(Q_0).
\tag{19}
```

Then Bessel/Pythagoras gives martingale BMO for
\(\log\rho_{sel}\), and martingale \(A_\infty\) gives the strict
reverse-Holder gain that breaks the critical half-tail.

This is better because it prevents scalar selection from discarding signed
orthogonality after the fact.  The visible, silent, and exchange pieces are
orthogonal before terminal positive selection.

## 4. Relation to Primitive PLS

The current relay hinge is

```text
PrimitivePLSNoFreeUpcrossing.A
+
PrimitivePLSBoundedBelowLyapunov.A.
```

The multicurrency attack does not replace that hinge with Schur observability.
It explains the right way to prove it.

Primitive no-free-upcrossing should be attacked by constructing the stopped
visible/silent/exchange compensator or by proving the equivalent
top-strain/log exchange root reserve:

```math
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N,
\qquad
\mathscr A_N\ge -C_N(u_0),
\qquad
\int dR_N<\infty.
\tag{20}
```

The proposed content of \(\mathscr A_N\) is not a local metric storage and not
a descendant selected-tail reserve.  It is the Doob-Meyer / Hilbert
square-function storage for the stopped original material packet path:
visible Schur variation plus silent pressure-potential energy plus
same-material exchange variation, with unpaid reselection treated as the jump
part of the same compensator.

## 5. Result

The better idea is:

```text
Do not keep trying to make the parent boundary see every invisible child.
Use the invisible-child currencies to prove quotient-visible observability and
route Schur-silent selected sources into same-material exchange.  Then close
Gold by proving the stopped visible/silent/exchange compensator, equivalently
the top-strain/log exchange root reserve or selector-correct Hilbert
square-function bound.
```

The next exact theorem is therefore:

```text
StoppedVisibleSilentExchangeCompensatorRootReserve.A
```

Statement:

```math
R_{stop}^{unpaid}(P)
+\sum_{S\subseteq P}
\bigl(\Omega_S^{strain/ex}+D_S^{vis/rad}\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P),
\tag{21}
```

with every term generated from the original same-material history.  Proving
`(21)` gives the primitive PLS no-free-upcrossing / bounded-below Lyapunov
law.  Failing `(21)` exposes the exact remaining counterprofile: a retained
same-material path with finite raw service, finite visible Schur drop, silent
sources charged locally, but infinite stopped exchange/reselection
square-function.
