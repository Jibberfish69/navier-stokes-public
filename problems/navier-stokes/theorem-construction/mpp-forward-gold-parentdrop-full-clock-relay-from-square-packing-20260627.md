---
theorem_id: forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627
status: superseded-square-packing-relay-needs-selected-entropy-margin
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - ParentDrop.A
  - SelectedActionTraceCoercivity.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Parent-drop / full-clock relay from stopped square-packing

2026-07-01 audit.  This note overclaimed the selected-action step.  Stopped
current square-packing plus the selector log identity gives log-square control
of the selected density increment; it does not give selected positive \(L^1\)
for arbitrary data.  The corrected relay is recorded in
`mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md`,
Sections 164--165: square-packing remains support, and the missing input is
parent-known entropy/reverse-Holder control for the selected exponent.

## Inputs

Assume stopped routed-current square-packing for the parent-subtracted current:

```math
\sum_{Q\subseteq P}\|\Delta_QJ^{new}\|^2\mathcal R(Q)
\le C\mathcal E_{route}(P)+CR_{legal}(P)+CStop(P).
\tag{1}
```

Assume finite original routed energy:

```math
\mathcal E_{route}(P)\le C(u_0)+CR_{legal}(P)+CStop(P).
\tag{2}
```

Assume selector-correct log amplification for that same parent-subtracted
increment:

```math
\Delta_Q\lambda_{sel}=\ell_Q(\Delta_QJ^{new})-\psi_Q+e_Q,
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

The old relay asserted that the selected first-ratio action satisfies

```math
A_{sel}(Q)\le C[\Delta_Q\lambda_{sel}]_+^2\mathcal R(Q)+CR_{legal}(Q)+CStop(Q).
\tag{5}
```

This is not valid as an arbitrary-data Gold \(L^1\) estimate.  A half-tail can
have finite raw mass and finite log-square mass while the selected first-ratio
sum diverges.  The selected-action step must be replaced by a strict
entropy/reverse-Holder input such as

```math
\sum_{Q\subseteq P}A_{sel}(Q)
\le
C\int f_P\log(e+f_P)\,d\mathcal R_P
+CR_{legal}(P)+CStop(P),
\tag{6}
```

with the entropy term proved from the same original parent packet before child
positive clipping.

## Parent drop

Capacity monotonicity gives

```math
\sum_{Q'\in ch(Q)}B_{cap}(Q')
\le B_{cap}(Q)+R_{legal}(Q).
\tag{7}
```

With the corrected selected entropy/reverse-Holder input, the selected-action
estimate gives, in the routed-current Schur currency,

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

Thus the same-material full clock is finite only after the selected entropy
margin replacing `(5)'--`(6)' has been proved from original data.

## Result

Conditional relay after the corrected selected-exponent input:

```math
\boxed{
\text{parent-subtracted stopped square-packing}
+\text{finite original routed energy}
+\text{selector log identity}
+\text{selected entropy/reverse-Holder margin}
\Rightarrow
\text{parent drop}
\Rightarrow
\text{finite full material clock}.}
```

This note is now a conditional relay surface, not a Gold closure surface.  Raw
inherited child stress reads are not inputs: exact inherited reuse is removed
before selected action is counted.  The missing certification is the selected
entropy/reverse-Holder transit theorem from the original coupled parent packet,
with legal, stop, and endpoint terms inside the same participation ledger.
