# MPP Forward-Gold Dynamic Tail-Square Evolution Direct Test

Date: 2026-06-19

## Status

Corrected direct test complete.  The earlier version of this note treated the
high-frequency dissipation tail as though it obeyed its own native heat-damped
state equation.  That is stronger than the installed Navier--Stokes shell
identity.

The native identity gives heat damping for the shell energy.  The square reserve
is a square of the dissipation tail.  Moving from the energy tail to a
dissipation-tail square costs exactly the missing source-square / reverse-Holder
/ no-waste theorem.

So this branch does not prove `SourceSquareReserve.A`.  It also does not install
a new theorem called "source-forcing reverse Holder" from the dynamic tail
calculation.  It only identifies the exact currency in which such a theorem
would have to be proved.

## 1. The reserve variable

Keep the current source-square notation:

```math
D_\ell(t):=\nu\|\nabla u_\ell(t)\|_2^2,
\qquad
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\tag{DTE.1}
```

and

```math
\mathcal R_N(W)
:=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt .
\tag{DTE.2}
```

The desired terminal reserve estimate is

```math
\mathcal R_N(W)
\le
o_N(1)+Loss_{\rm legal}(W)
\tag{DTE.3}
```

on the selected terminal heat windows.

## 2. The native damped state is energy, not \(T_k\)

The shell identity is energy-level.  For each dyadic shell it has the form

```math
{1\over2}{d\over dt}\|u_\ell(t)\|_2^2
+cD_\ell(t)
\le
\Psi_\ell^+(t)+L_\ell(t),
\tag{DTE.4}
```

where \(\Psi_\ell^+\) is the positive nonlinear/source input in the same
currency as the shell energy derivative, and \(L_\ell\) denotes legal pressure,
cutoff, commutator, and leakage terms.

Define the high energy tail

```math
A_k(t):=\sum_{\ell>k+4}\|u_\ell(t)\|_2^2 .
\tag{DTE.5}
```

Summing `(DTE.4)` gives

```math
{d\over dt}A_k(t)+cT_k(t)
\le
\Psi_{>k}^+(t)+L_{>k}(t),
\tag{DTE.6}
```

where

```math
\Psi_{>k}^+(t):=\sum_{\ell>k+4}\Psi_\ell^+(t),
\qquad
L_{>k}(t):=\sum_{\ell>k+4}L_\ell(t).
\tag{DTE.7}
```

Bernstein gives \(T_k(t)\gtrsim \nu2^{2k}A_k(t)\), so `(DTE.6)` does contain
heat damping for the energy tail \(A_k\).  It does not give

```math
T_k'(t)+c\nu2^{2k}T_k(t)
\le
B_{>k}^+(t)+L_{>k}(t)
\tag{DTE.8}
```

as an installed native identity.  `(DTE.8)` is a differentiated-dissipation
statement.  It would require an additional theorem controlling the time
derivative of the dissipation tail and its differentiated nonlinear forcing.

That distinction matters because `(DTE.8)` would charge pulses in a stronger
currency than the local energy ledger supplies.

## 3. What the energy identity actually gives

From `(DTE.6)` we get a first-moment estimate:

```math
\int_I T_k(t)\,dt
\le
A_k(a)
+\int_I\Psi_{>k}^+(t)\,dt
+\int_I L_{>k}(t)\,dt
\tag{DTE.9}
```

for \(I=[a,b]\).  This is useful, but it is an \(L^1_t\) statement for
\(T_k\).  The target reserve asks for an \(L^2_t\)-type statement:

```math
\int_I2^kT_k(t)^2\,dt .
\tag{DTE.10}
```

To pass from `(DTE.9)` to `(DTE.10)`, one needs a true height, square,
reverse-Holder, Carleson, or no-waste input on the same terminal packet.  The
energy identity alone does not supply it.

A sufficient forcing-level square theorem would be

```math
\int_W\sum_{k>N}2^k\left(\Psi_{>k}^+(t)\right)^2\,dt
\le
o_N(1)+Loss_{\rm legal}(W),
\tag{DTE.11}
```

together with a same-packet no-waste comparison

```math
T_k(t)
\le
C\Psi_{>k}^+(t)+Legal_k(t)
\tag{DTE.12}
```

on the selected source-balanced branch.  But `(DTE.11)` and `(DTE.12)` are
exactly source-square / reverse-Holder / no-waste content.  They are not
consequences of `(DTE.6)`.

## 4. The heat-scale pulse in the correct currency

The obstruction already appears in the scalar energy inequality

```math
A'(t)+T(t)\le\Psi(t).
\tag{DTE.13}
```

Let

```math
h_m:=2^{-2m},
\qquad
I_m=(T-h_m,T],
\qquad
A_m:=2^{-3m/2},
\tag{DTE.14}
```

and set

```math
T_m(t):=A_mh_m^{-1}{\bf 1}_{I_m}(t).
\tag{DTE.15}
```

Then

```math
\int_{I_m}T_m(t)\,dt=A_m\to0,
\tag{DTE.16}
```

but

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=1.
\tag{DTE.17}
```

The source-balanced choice

```math
\Psi_m(t):=T_m(t)
\tag{DTE.18}
```

has the same small first moment:

```math
\int_{I_m}\Psi_m(t)\,dt=A_m\to0.
\tag{DTE.19}
```

Thus the native energy ledger permits a heat-scale terminal pulse with
vanishing first moment and order-one square reserve unless a stronger
source-square, height, residence, or no-waste theorem is added.

This is the exact time-face problem: the source is not private, but its native
first-moment cost can shrink with the heat window while the normalized square
readout remains order one.

## 5. Why the differentiated-tail equation is too strong

If one instead assumes a dissipation-state equation

```math
T_m'(t)+c2^{2m}T_m(t)\le B_m(t),
\tag{DTE.20}
```

then sustaining `(DTE.15)` over \(I_m\) requires

```math
\int_{I_m}B_m(t)\,dt
\gtrsim
2^{2m}\int_{I_m}T_m(t)\,dt
=
2^{2m}A_m
=
2^{m/2}.
\tag{DTE.21}
```

That cost diverges.  A theorem giving `(DTE.20)` with \(B_m\) controlled by an
installed finite ledger would kill the pulse.

The current Navier--Stokes inputs do not give that theorem.  The local energy
identity gives `(DTE.6)`, not `(DTE.20)`.  Treating `(DTE.20)` as available
smuggles in an extra derivative of control and overcharges the terminal pulse.

## 6. Navier-Stokes reading

The participation fact remains important:

```math
\Psi_{>k}^+
\text{ is a native same-fluid source in the local energy ledger.}
\tag{DTE.22}
```

It gives visibility and ancestry.  It does not give coercivity.

The missing coercive statement is one of the following in the same selected
packet currency:

```math
\int_W\sum_{k>N}2^kT_k(t)^2\,dt
\le
o_N(1)+Loss_{\rm legal}(W),
\tag{DTE.23}
```

or

```math
\int_W\sum_{k>N}2^k\left(\Psi_{>k}^+(t)\right)^2\,dt
\le
o_N(1)+Loss_{\rm legal}(W)
\quad\text{plus}\quad
T_k\lesssim\Psi_{>k}^++Legal,
\tag{DTE.24}
```

or a strict pressure-corrected no-waste Lyapunov inequality strong enough to
replace `(DTE.24)`.

## Verdict

The corrected dynamic-tail test closes as a failed supplier, not as a proof.

```math
\boxed{
\text{native heat damping controls the energy tail;}
\quad
\text{it does not by itself control the dissipation-tail square.}
}
\tag{DTE.25}
```

The surviving heat-scale pulse is not an artifact of a free external force.  It
is compatible with the native energy-level source ledger because the
first-moment source cost can be \(A_m\to0\) while the normalized square reserve
stays order one.

The exact remaining supplier is still:

```math
\boxed{
\text{SourceSquareReserve.A}
\quad\text{or}\quad
\text{energy-currency source-square / reverse-Holder plus no-waste comparison}
\quad\text{or}\quad
\text{strict no-waste rigidity.}
}
\tag{DTE.26}
```

So dynamic tail evolution does not solve the gold branch.  It clarifies the
currency wall: differentiating the dissipation tail would solve too much, but
that differentiated-tail control is not installed by the Navier--Stokes local
energy balance.
