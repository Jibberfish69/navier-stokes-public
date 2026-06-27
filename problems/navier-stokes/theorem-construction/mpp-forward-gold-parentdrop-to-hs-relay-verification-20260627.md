---
theorem_id: forward-gold-parentdrop-to-hs-relay-verification-20260627
status: relay-verified-conditional-on-global-selected-action-producer
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / continuation readout
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
verifies:
  - InvisibleChildBlowupRigidity.A
  - AugmentedParentDrop.A
  - FreshNativeRootUpperBound.A
  - CriticalFreshSourceTentCarleson.A
  - MaterialClockToFixedHsContinuationReadout.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-identity-vs-global-root-reserve-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-overrun-tail-ui-nested-core-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-full-proof-closure-after-uniform-zeno-annular-return-20260623.md
edge_effect: >-
  Verifies the downstream relay without reopening stale proxy clocks. The
  invisible-child/silent-source issue is consumed by the source-origin normal
  form and augmented parent-drop. Finite global selected action, supplied by the
  fresh root/tent theorem or by a true source-square/overrun tail-UI branch,
  feeds the installed material-record positive-log-variation readout. That
  readout gives the fixed H^s continuation bound and classical relaunch. The
  relay is conditional because the global selected-action producer remains open.
downstream_consequence: >-
  Parent-drop, nested-core tightness, endpoint UI, critical-density Holder, and
  material-clock-to-Hs are consumer/relay surfaces. They should not be promoted
  to completed Gold closure unless FreshNativeRootUpperBound.A /
  CriticalFreshSourceTentCarleson.A, or the source-square branch's actual
  FreshSameCarrierIdentity plus FreshOverrunSameCarrierTailUI, is proved.
---

# Parent-Drop To Hs Relay Verification

## Status

The relay from parent-drop to \(H^s\) continuation is installed as a conditional
consumer chain. It is not an unconditional proof of smoothness.

The condition is finite global selected same-material action. In the current
Gold language that can arrive through the fresh root/tent theorem, or through
the source-square branch after actual carrier identity plus overrun tail UI.

## 1. Silent-source escape is removed

The corrected invisible-child theorem is not boundary observability of every
interior source. Boundary-flat sources of the form

```math
f=\mathcal L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0
\tag{PTH.1}
```

exist and can be Schur-invisible.

The installed source-origin normal form says that a Schur-invisible source is
either projected constraint material, hence unselected, or it is selected
through the pressure-Hessian / strain equation and is paid by same-material
top-strain/exchange:

```math
\mathsf S_QU_Q=0,
\qquad
d\Omega_Q^{strain/ex}=0
\quad\Longrightarrow\quad
A_{\rm sel}^{silent}(Q)=0.
\tag{PTH.2}
```

So the silent kernel is not a zero-cost selected carrier.

## 2. Correct augmented parent-drop

The parent-drop law after silent-source closure is

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C R_{\rm legal}(Q).
\tag{PTH.3}
```

Together with capacity monotonicity,

```math
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q),
\tag{PTH.4}
```

tree summation gives

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
C B_{\rm cap}(Q_0)
+C\sum_{Q\subseteq Q_0}\Omega_Q^{strain/ex}
+C\sum_{Q\subseteq Q_0}D_Q^{vis/rad}
+C R_{\rm legal}(Q_0).
\tag{PTH.5}
```

This verifies the parent-drop relay. It does not produce the global
strain/exchange sum.

## 3. Exact open producer

The current global producer is

```math
\boxed{
\text{FreshNativeRootUpperBound.A}
}
\tag{PTH.6}
```

equivalently

```math
\boxed{
\text{CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A}.
}
\tag{PTH.7}
```

In root form:

```math
\sum_{Q\subset P}\rho_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{PTH.8}
```

In critical fresh-source form:

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{PTH.9}
```

Raw Bessel packing is installed only without the selected-critical weight:

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{raw}}^2<\infty.
\tag{PTH.10}
```

The critical half-tail shows why `(PTH.10)` does not imply `(PTH.9)`:

```math
\|F_\ell\|_{\mathcal H_{raw}}^2={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell2^\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty.
\tag{PTH.11}
```

So the fresh root/tent theorem is the real global producer on this branch.

## 4. Source-square/overrun branch

The source-square route is a possible route to the same selected-action control,
but it is branch-specific. It first needs actual carrier identification for

```math
\Pi_j^+(t)
=
\int_{\Omega_j(t)}|w_j|^2\alpha_j^+(t,x)\,dx .
\tag{PTH.12}
```

Then the bounded coefficient branch is paid by the source-square parent tail,
and the open overrun target becomes same-carrier tail UI:

```math
\lim_{L\to\infty}\sup_j
\int_{\{a_{j,K}^{fresh,over}>L\}}
a_{j,K}^{fresh,over}(s)\,ds
=0.
\tag{PTH.13}
```

Failure of `(PTH.13)` is the terminal source-curve atom / terminal step
primitive. That is not a forward-Gold proof; it is a CM-facing failure after
same-witness admission and service certification.

## 5. Continuation readout

The installed material-clock readout says that for \(s>5/2\), with
\(N_s\ge\lceil s\rceil+4\),

```math
\int d[\log(1+\mathcal P_{N_s}^{mat})]_+<\infty
\quad\Longrightarrow\quad
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty .
\tag{PTH.14}
```

The proof uses the whole transported material history:

```math
v(a,t)=u(X(a,t),t),
\qquad
A=(D_aX)^{-1},
\qquad
\nabla_x=A^\top\nabla_a,
\tag{PTH.15}
```

and finite-depth chain-rule/elliptic pressure readouts. A uniform material
record controls the fixed-coordinate \(H^s\) norm. Classical \(H^s\) local
Navier-Stokes theory then relaunches the same solution past \(T_*\).

## 6. Verification verdict

The downstream relay is verified:

```math
\text{finite global selected action}
\Longrightarrow
\int d[\log(1+\mathcal P_{N_s}^{mat})]_+<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
\text{classical relaunch.}
\tag{PTH.16}
```

The missing theorem remains upstream:

```math
\boxed{
\text{produce finite global selected action from original smooth data.}
}
\tag{PTH.17}
```

Current exact forms are `(PTH.8)` / `(PTH.9)`, or the source-square branch
`(PTH.12)` plus `(PTH.13)`. Endpoint UI, nested-core tightness, Holder/CKN
visibility, and the material-clock readout are verified consumers, not the
producer itself.

