---
theorem_id: forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627
status: conditional-relay-closed-given-square-packing-original-energy-and-selector-identity
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - ParentDrop.A
  - SelectedActionTraceCoercivity.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Parent-drop / full-clock relay from stopped square-packing

## Inputs

Assume stopped routed-current square-packing:

```math
\sum_{Q\subseteq P}\|\Delta_QJ^S\|^2\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{1}
```

Assume finite original routed energy:

```math
\mathcal E_{route}(P)\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{2}
```

Assume selector-correct log amplification:

```math
\Delta_Q\lambda_{sel}=\ell_Q(\Delta_QJ^S)-\psi_Q+e_Q,
\qquad \psi_Q\ge0.
\tag{3}
```

## Selected action

Boundedness of \(\ell_Q\) and square-packing of \(e_Q\) give

```math
\sum_{Q\subseteq P}|\Delta_Q\lambda_{sel}|^2\mathcal R(Q)
\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{4}
```

The selected first-ratio action satisfies

```math
A_{sel}(Q)\le C[\Delta_Q\lambda_{sel}]_+^2\mathcal R(Q)+CR_{legal}(Q)+CStop(Q).
\tag{5}
```

Therefore

```math
\sum_{Q\subseteq P}A_{sel}(Q)\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{6}
```

## Parent drop

Capacity monotonicity gives

```math
\sum_{Q'\in ch(Q)}B_{cap}(Q')
\le B_{cap}(Q)+R_{legal}(Q).
\tag{7}
```

The selected-action estimate gives, in the routed-current Schur currency,

```math
\sum_{Q'\in ch(Q)}A(Q')
\le C\langle U_Q,S_QU_Q\rangle+CR_{legal}(Q)+CStop(Q).
\tag{8}
```

The stopped source construction identifies this Schur currency with the parent
capacity-drop ledger, hence

```math
\sum_{Q'\in ch(Q)}A(Q')+\sum_{Q'\in ch(Q)}B_{cap}(Q')
\le B_{cap}(Q)+CR_{legal}(Q)+CStop(Q).
\tag{9}
```

## Full material clock

Summing `(9)` over the laminar retained tree telescopes the capacity terms:

```math
\sum_QA(Q)\le B_{cap}(Q_0)+C(u_0)+CR_{legal}(Q_0)+CStop(Q_0)<\infty.
\tag{10}
```

The installed continuation relay is

```math
\sum_QA(Q)<\infty
\Longrightarrow
\mathcal T_{full}(u;[0,T))<\infty
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty.
\tag{11}
```

Thus the same-material full clock is finite under the inputs `(1)`--`(3)`.

## Result

Conditional relay closure:

```math
\boxed{
\text{stopped square-packing}
+\text{finite original routed energy}
+\text{selector log identity}
\Rightarrow
\text{parent drop}
\Rightarrow
\text{finite full material clock}.}
```

This note records the relay.  The remaining certification task is to verify that
inputs `(1)`--`(3)` are installed noncircularly and then promote the chain into
the manuscript with legal and stop ledgers explicit.