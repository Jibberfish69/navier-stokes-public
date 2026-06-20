# Source-Action Domination Lower-Quantum Bridge

Date: 2026-06-20

## Status

Conditional bridge proved.  This note separates the two clauses that appeared in
the no-free Zeno normal form:

```math
\text{same-carrier source/action domination}
\quad\text{and}\quad
\text{lower action quantum per retained pulse}.
\tag{SAQ.1}
```

The lower action quantum is not an independent gold supplier.  Once the selected
source mass is dominated by the action density on the same carrier, the lower
quantum follows from the retained positive source mass.  The actual missing
bridge is same-carrier domination.

## 1. Reduced retained pulse

On a reduced terminal donor-chain branch, let \(a_m(s)\ge0\) be the normalized
selected positive source marginal on the retained heat-scale packet:

```math
a_m(s)
:=
\mu_m^{src,+}(B_1\times ds),
\qquad
-1\le s\le0.
\tag{SAQ.2}
```

The retained branch has a fixed positive source mass:

```math
\int_{-1}^{0}a_m(s)\,ds\ge c_0>0.
\tag{SAQ.3}
```

Let \(A_m(s)\ge0\) be the chosen normalized same-carrier action density.  It may
be the source-square density, a critical-strain density, a normalized CKN
density, or a strict no-waste action density.  The proof only uses
nonnegativity and same-carrier domination by \(A_m\) or by \(A_m^{1/2}\).

## 2. Same-carrier domination

There are two exact domination forms.

Linear action domination:

```math
a_m(s)
\le
C_{sa}A_m(s)+\ell_m(s),
\tag{SAQ.4}
```

Square-root action domination:

```math
a_m(s)
\le
C_{sa}A_m(s)^{1/2}+\ell_m(s).
\tag{SAQ.4a}
```

where the legal residue has vanishing retained total mass on this branch:

```math
\int_{-1}^{0}\ell_m(s)\,ds=o_m(1).
\tag{SAQ.5}
```

For terminal strip arguments `(SAQ.5)` may be replaced by a terminal strip
modulus for \(\ell_m\).  For the lower-quantum conclusion, the total retained
mass form is the exact needed input.

## 3. Lower action quantum

Under linear domination, integrating `(SAQ.4)` and using `(SAQ.3)` gives

```math
c_0
\le
C_{sa}\int_{-1}^{0}A_m(s)\,ds
+
o_m(1).
\tag{SAQ.6}
```

Thus, along the retained branch,

```math
\int_{-1}^{0}A_m(s)\,ds
\ge
{c_0\over 2C_{sa}}
\tag{SAQ.7}
```

for all sufficiently large \(m\).  This is the lower action quantum.

Under square-root domination, `(SAQ.4a)` gives

```math
c_0
\le
C_{sa}\int_{-1}^{0}A_m(s)^{1/2}\,ds
+
o_m(1).
\tag{SAQ.7a}
```

Since the normalized interval has length one, Cauchy--Schwarz gives

```math
\left(
\int_{-1}^{0}A_m(s)^{1/2}\,ds
\right)^2
\le
\int_{-1}^{0}A_m(s)\,ds.
\tag{SAQ.7b}
```

Thus, along the retained branch,

```math
\int_{-1}^{0}A_m(s)\,ds
\ge
{c_0^2\over 4C_{sa}^2}
\tag{SAQ.7c}
```

for all sufficiently large \(m\).

Therefore

```math
\boxed{
\text{retained selected source mass}
+
\text{linear or square-root same-carrier source/action domination}
\Longrightarrow
\text{lower action quantum}.
}
\tag{SAQ.8}
```

No additional PDE estimate is used in this step.

## 4. Killing an infinite terminal chain

Let the unweighted terminal action reserve be

```math
\lim_{N\to\infty}
\sum_{m:\ r_m\le2^{-N}}
\int_{-1}^{0}A_m(s)\,ds
=0.
\tag{SAQ.9}
```

If an infinite terminal Zeno donor chain survives, then for every \(N\) there
are retained packets with \(r_m\le2^{-N}\).  By `(SAQ.7)`, each retained packet
contributes at least \(c_0/(2C_{sa})\).  This contradicts `(SAQ.9)`.

Hence

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
+
\text{linear or square-root same-carrier source/action domination}
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{SAQ.10}
```

This is the exact implication used in the no-free Zeno normal form.

## 5. Why action reserve alone is insufficient

Without `(SAQ.4)`, the action reserve may live on a different carrier than the
selected positive source.  The formal two-channel model is:

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
A_m(s)=0,
\qquad
\ell_m(s)=0.
\tag{SAQ.11}
```

It violates `(SAQ.4)` and keeps unit selected source mass while the chosen
action is zero.  This is not a Navier-Stokes solution model.  It is the exact
logic test showing that an action reserve cannot control the selected source
until same-carrier domination has been proved.

In Navier-Stokes terms, the missing identification is the native positive
carrier comparison

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\le
C\,A_j+\operatorname{Legal}_j,
\tag{SAQ.12}
```

on the same selected packet after localization, projection, lifting, packet
selection, and positive-part extraction.

## 6. Relation to existing source-square route

For the source-square currency, \(A_m(s)=G_m(s)^2\), where

```math
G_m(s)=r_m^{1/2}T_{k_m}(T_m+r_m^2s).
\tag{SAQ.13}
```

The existing source-square-to-trace bridge uses a stronger pointwise form,

```math
a_m(s)\le C_{\rm car}G_m(s)+\ell_m(s),
\tag{SAQ.14}
```

and Cauchy--Schwarz gives endpoint UI.  The lower-quantum bridge here uses the
integrated square-root form `(SAQ.4a)` with \(A_m=G_m^2\).  Indeed,
`(SAQ.14)` gives a lower bound for \(\int G_m\), and `(SAQ.7b)` converts that
into a lower bound for \(\int G_m^2\).  The unpaid clause is still the same:
the selected native positive source must be identified with the square/action
density on the same carrier.

Thus the reduced fork is:

```math
\boxed{
\text{prove same-carrier source/action domination}
\quad\text{or}\quad
\text{the action reserve cannot see the selected source atom.}
}
\tag{SAQ.15}
```

## Verdict

The lower action quantum is paid once same-carrier source/action domination is
paid.  It is not a separate obstruction.  The remaining source-square/action
route is exactly the same-carrier domination problem for the native selected
positive trilinear carrier, or a stronger theorem that bypasses domination by
direct endpoint UI, strict no-waste, selected polar saturation, or rigid Zeno
source-residue evacuation.
