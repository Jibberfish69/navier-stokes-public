# MPP Forward-Gold No-Waste Topology Continuity No-Go

Date: 2026-06-20

## Status

Direct topology-continuity test complete.

This note tests a possible repair of strict no-waste: use compactness or
continuity of the terminal time-curve to force a crossing/payment event.  The
test shows that compactness in the physical energy topology is too weak.  The
terminal heat-scale pulse converges to zero in physical energy while retaining
fixed normalized critical action.

Thus any successful no-waste compactness argument must be compact in a critical
topology that sees the heat-scale action, or it must add a separate
source-square, selected critical-strain, normalized CKN, or no-free donor-chain
reserve.

## 1. The model pulse

Use the same shell variables as the source-square branch:

```math
I_j=(T-2^{-2j},T],
\qquad
D_j(t)=2^{3j/2}\mathbf 1_{I_j}(t).
\tag{NTC.1}
```

The physical shell energy scale is

```math
E_j(t):=2^{-2j}D_j(t)
=
2^{-j/2}\mathbf 1_{I_j}(t).
\tag{NTC.2}
```

Therefore

```math
\sup_{t\in I_j}E_j(t)=2^{-j/2}\to0.
\tag{NTC.3}
```

The normalized square reserve is

```math
A_j
:=
\int_{I_j}2^{-j}D_j(t)^2\,dt
=
\int_{T-2^{-2j}}^T
2^{-j}2^{3j}\,dt
=
1.
\tag{NTC.4}
```

So the pulse disappears in physical energy but not in normalized critical
action.

## 2. Physical-continuity hypothesis

Let \(L_j(t)\) be any candidate no-waste functional whose terminal values are
continuous with respect to the physical shell energy scale.  In the weakest
form needed here, assume there is a modulus \(\omega_E\) with

```math
\omega_E(\rho)\downarrow0
\quad(\rho\downarrow0)
\tag{NTC.5}
```

and

```math
|L_j(t)-L_j^0|
\le
\omega_E(E_j(t))
+Legal_j(t)
\tag{NTC.6}
```

on the selected branch, where \(L_j^0\) is the value assigned to the same packet
when the active source is absent.  Assume the legal oscillation on \(I_j\) has
already been removed:

```math
\operatorname{osc}_{I_j}Legal_j=o_j(1).
\tag{NTC.7}
```

Then `(NTC.3)`--`(NTC.7)` give

```math
\operatorname{osc}_{I_j}L_j
\le
2\omega_E(2^{-j/2})+o_j(1)
\to0.
\tag{NTC.8}
```

## 3. Strict no-waste needs fixed positive drop

A strict no-waste theorem for the same pulse would require constants
\(c>0\) and legal residue \(R_j\) with \(\int_{I_j}R_j=o_j(1)\) such that

```math
-{d\over dt}L_j(t)
\ge
c\,2^{-j}D_j(t)^2
-R_j(t).
\tag{NTC.9}
```

Integrating over \(I_j\) gives

```math
L_j(T-2^{-2j})-L_j(T)
\ge
c\int_{I_j}2^{-j}D_j(t)^2\,dt
-\int_{I_j}R_j(t)\,dt
=
c-o_j(1).
\tag{NTC.10}
```

For large \(j\), `(NTC.10)` is incompatible with `(NTC.8)`.

Therefore:

```math
\boxed{
\text{physical-energy continuity cannot imply strict no-waste drop.}
}
\tag{NTC.11}
```

## 4. Meaning for compactness of terminal curves

The same obstruction applies to any compactness theorem whose compact topology
is controlled by the physical energy scale \(E_j\).  A compact limit in that
topology sees the model pulse as the zero curve, because `(NTC.3)` holds.  The
critical action still equals \(1\) by `(NTC.4)`.

Thus a curve-compactness argument can help only after the curve is compact in a
critical topology that sees at least one of:

```math
\begin{gathered}
\int \lambda_j(\Pi_j^{part,+})^2\,dt,\\
\int\left(|v|^3+|q|^{3/2}\right)\,dy\,ds,\\
\int |S(v)|^{5/2}\,dy\,ds,\\
\text{same-carrier source-square density},\\
\text{or an equivalent selected donor-chain reserve.}
\end{gathered}
\tag{NTC.12}
```

Compactness below those critical currencies is visibility only.  It cannot
force the terminal pulse to pay.

## 5. Consequence

This closes the physical-topology version of the no-waste idea:

```math
\boxed{
\text{a Weierstrass/Arzela-type time-curve compactness argument must be
critical-topology compactness, not physical-energy compactness.}
}
\tag{NTC.13}
```

The remaining non-alias forms are exactly the critical ones already isolated:

```math
\boxed{
\begin{gathered}
\text{SourceSquareReserve.A},\\
\text{SelectedCriticalStrainCarleson.A},\\
\text{NormalizedCKNCarleson.A / UnweightedActionFinite.A},\\
\text{StrictRescaledNoWasteLyapunov.A carrying critical action},\\
\text{or no-free terminal Zeno donor-chain rigidity.}
\end{gathered}
}
\tag{NTC.14}
```

So the topology route is not useless.  It identifies the exact topology the
proof would need.  It does not supply that topology from the current physical
energy/local-energy inputs.
