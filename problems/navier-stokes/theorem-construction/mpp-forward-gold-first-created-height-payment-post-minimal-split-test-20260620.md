# MPP Forward-Gold First-Created Height Payment Post-Minimal Split Test

Date: 2026-06-20

## Status

Direct post-minimal split test complete.  This note attacks the child left after
`mpp-forward-gold-minimal-counterexample-unweighted-reserve-direct-test-20260620.md`:
the first-appearance reserve branch.

The result is sharp and negative as an independent supplier.  First-created
square reserve forces large active height, but it does not force first-created
active height.  The missing payment is still a genuine same-carrier weighted
positive shell-flux domination, active-height cap, source-square reserve,
source-residence theorem, or strict no-waste/rigidity theorem.

## 1. Objects

Use the current source-square reserve notation

```math
D_\ell(t):=\nu\|\nabla u_\ell(t)\|_2^2,
\qquad
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\tag{FCH.1}
```

and

```math
\mathcal R_N(W)
:=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt .
\tag{FCH.2}
```

The first-moment tail on the same selected terminal family is

```math
M_N(W):=
\int_W\sum_{k>N}T_k(t)\,dt ,
\tag{FCH.3}
```

and the active tail height is

```math
H_N(W):=
\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{FCH.4}
```

Since

```math
2^kT_k(t)^2
\le
H_N(W)T_k(t),
\tag{FCH.5}
```

we have the exact factorization

```math
\mathcal R_N(W)
\le
H_N(W)M_N(W).
\tag{FCH.6}
```

## 2. What first reserve creation gives

On the minimal first-appearance branch, after inherited reserve and legal loss
are removed, one has a window \(W_m\) with

```math
\mathcal R_N(W_m)\ge\eta,
\qquad
M_N(W_m)=o_N(1).
\tag{FCH.7}
```

Then `(FCH.6)` implies

```math
H_N(W_m)
\ge
{\eta\over M_N(W_m)}
\to\infty .
\tag{FCH.8}
```

This is the useful consequence of first reserve creation.  A terminal
heat-scale reserve pulse must carry very large normalized active height.

## 3. What it does not give

The implication

```math
\text{first large }\mathcal R_N
\Longrightarrow
\text{first creation of large }H_N
\tag{FCH.9}
```

is false from the installed inputs.

The scalar countermodel is already inside the current reserve calculus.  At a
fixed donor index \(k\), put a previous thin pulse on \(J_m\):

```math
T_k(t)=B_m{\bf 1}_{J_m}(t),
\qquad
|J_m|=\sigma_m .
\tag{FCH.10}
```

Then

```math
H_N(J_m)\ge 2^kB_m,
\qquad
\mathcal R_N(J_m)=2^kB_m^2\sigma_m.
\tag{FCH.11}
```

Choosing \(\sigma_m\ll (2^kB_m^2)^{-1}\) makes the past reserve arbitrarily
small while the past height can be arbitrarily large.  Thus the first selected
square-reserve pulse may be the first time enough height has residence time, not
the first time the height exists.

So first-pulse minimality removes inherited square reserve.  It does not remove
inherited thin active height.

## 4. Dynamic height balance reaches the same wall

The shell energy balance has the form

```math
E_\ell'(t)+cD_\ell(t)
\le
F_\ell(t)+L_\ell(t).
\tag{FCH.12}
```

Formally differentiating the active height tail gives only the one-sided
statement

```math
\left[
H_N(W)-H_N(\operatorname{Past}(W))-Loss^{height}_{legal}(W)
\right]_+
\le
C
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+
dt .
\tag{FCH.13}
```

The right side is the weighted positive shell-flux carrier.  For Navier--Stokes,
the dangerous part of \(F_\ell\) is the same native positive trilinear source

```math
\left[
\langle S_{<\ell}^{loc}w_\ell,w_\ell\rangle
\right]_+ .
\tag{FCH.14}
```

Thus `(FCH.13)` is not a payment theorem unless the weighted positive shell-flux
carrier is itself controlled by an installed same-ledger charge.

Declaring the right side of `(FCH.13)` to be the charge is tautological.  It
names the source that creates height; it does not bound that source by any finite
native budget.

## 5. Heat-scale obstruction in this language

Let

```math
h_m=2^{-2m},
\qquad
I_m=(T_*-h_m,T_*],
\qquad
A_m=2^{-3m/2},
\tag{FCH.15}
```

and set

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t).
\tag{FCH.16}
```

Then

```math
M_N(I_m)\le A_m\to0,
\tag{FCH.17}
```

while

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=1,
\tag{FCH.18}
```

and

```math
H_N(I_m)\ge 2^mA_mh_m^{-1}=2^{3m/2}.
\tag{FCH.19}
```

The height diagnosis is correct: the pulse needs huge active height.  But the
installed energy-level and participation-level ledgers do not bound that height,
and first-appearance of square reserve does not prove first-appearance of height.

## 6. Exact reduced burden

This child branch closes only under one of the following noncircular inputs:

```math
\boxed{\text{ActiveWindowHeight.A}}
\tag{FCH.20}
```

in the global continuation-strength form;

```math
\boxed{\text{FirstCreatedHeightPayment.A}}
\tag{FCH.21}
```

with a same-ledger bound for the right side of `(FCH.13)`;

```math
\boxed{\text{NativeTrilinearDefectDomination.A}}
\tag{FCH.22}
```

for the selected positive carrier `(FCH.14)`;

```math
\boxed{\text{SourceSquareReserve.A / TerminalMovingPacketSourceResidence.A}}
\tag{FCH.23}
```

on the actual selected terminal family; or

```math
\boxed{\text{StrictRescaledNoWasteLyapunov.A / compact residue rigidity}}
\tag{FCH.24}
```

which forbids the terminal heat-scale pulse by rigidity rather than by a pointwise
height cap.

## Verdict

The first-created height route does not solve the forward-gold obstruction.

It proves the following exact reduction:

```math
\boxed{
\begin{gathered}
\text{minimal first-appearance reserve}
\Rightarrow
\text{large active height,}\\
\text{but not first-created active height.}
\end{gathered}
}
\tag{FCH.25}
```

The unresolved payment is still the same native terminal time-face problem:

```math
\boxed{
\text{a selected heat-scale positive trilinear feed can have vanishing first
moment while carrying unit unweighted reserve in the normalized model.}
}
\tag{FCH.26}
```

So this branch is exhausted as an independent supplier.  It returns to weighted
positive shell-flux domination, same-carrier source-square/source-residence, or
strict no-waste/rigidity.
