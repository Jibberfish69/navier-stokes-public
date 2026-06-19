# MPP Forward Gold Infinite Material Zeno Stress Chain Direct Test

Date: 2026-06-19

## Status

Direct infinite-chain test complete.  The finite nested-material identity is
exact, but it lives in physical currency.  A terminal Zeno chain is tested in
scale-normalized currency, where each annular interface is divided by its own
shrinking radius.  That change of currency destroys the finite telescoping
contradiction.

This note does not prove smoothness.  It identifies the exact missing theorem:
an unweighted terminal stress/action reserve along the same material Zeno chain.

## 1. Finite physical telescoping

The previous nested-annulus note proved that for material shells

```math
A_j(t)=\Omega_j(t)\setminus\overline{\Omega_{j-1}(t)}
```

and stress work

```math
W_j(I)
=
\int_I\int_{\partial\Omega_j(t)}
u\cdot(-pI+2\nu S)n_j\,dA\,dt,
```

one has, for every finite \(M\),

```math
W_0(I)
=
W_M(I)
-
\sum_{j=1}^{M}
\left(E_{A_j}(b)-E_{A_j}(a)\right)
-
\sum_{j=1}^{M}D_{A_j}(I).
\tag{IZS.1}
```

This is an exact same-fluid participation identity.  It pays every finite
internal donor chain by outer boundary stress work, donor energy depletion, or
dissipation.

## 2. Heat-scale normalization changes the currency

At a terminal scale \(r\), write

```math
x=x_\ast+r y,
\qquad
t=T_\ast+r^2 s,
\qquad
u(t,x)=r^{-1}v(s,y),
\qquad
p(t,x)=r^{-2}q(s,y).
\tag{IZS.2}
```

Then

```math
dx=r^3\,dy,
\qquad
dt=r^2\,ds,
\qquad
dA=r^2\,dA_y,
\tag{IZS.3}
```

and

```math
S_x(u)=r^{-2}S_y(v),
\qquad
-pI+2\nu S_x(u)
=
r^{-2}\left(-qI+2\nu S_y(v)\right).
\tag{IZS.4}
```

Therefore energy, dissipation, and boundary stress work all carry one physical
factor \(r\):

```math
E_{\Omega}^{\rm phys}
=
r E_{\Lambda}^{\rm ren},
\tag{IZS.5}
```

```math
D_{\Omega}^{\rm phys}
=
r D_{\Lambda}^{\rm ren},
\tag{IZS.6}
```

and

```math
W_{\partial\Omega}^{\rm phys}
=
r W_{\partial\Lambda}^{\rm ren}.
\tag{IZS.7}
```

Thus a unit-size normalized terminal packet costs only \(O(r)\) in the physical
energy ledger.

## 3. Why the infinite chain is not paid by global energy

Take a dyadic terminal chain

```math
r_j=2^{-j},
\qquad
j=1,2,\dots,
\tag{IZS.8}
```

and suppose the normalized stress/action seen at each selected heat-scale
annulus is bounded below:

```math
a_j
:=
\left[W_j^{\rm ren}\right]_+
\ge a_0>0.
\tag{IZS.9}
```

The unweighted recurrence cost is then infinite:

```math
\sum_{j=1}^{\infty}a_j
\ge
\sum_{j=1}^{\infty}a_0
=\infty.
\tag{IZS.10}
```

But the corresponding physical stress-work cost is only

```math
\sum_{j=1}^{\infty}W_j^{\rm phys}
\sim
\sum_{j=1}^{\infty}r_j a_j
\le
a^\ast\sum_{j=1}^{\infty}2^{-j}
<\infty
\tag{IZS.11}
```

when \(a_j\le a^\ast\).  The same scaling applies to physical dissipation and
stored energy depletion by `(IZS.5)` and `(IZS.6)`.

This is not a construction of a Navier-Stokes solution.  It is the exact scale
bookkeeping obstruction: physical finite energy can sum the Zeno costs, while
the normalized recurrence ledger still sees infinitely many order-one events.

## 4. Why finite telescoping cannot be divided shell-by-shell

For a finite chain, `(IZS.1)` is one identity in one physical currency.  Along a
Zeno chain, the normalized interface variables are

```math
\mathcal W_j:=r_j^{-1}W_j^{\rm phys},
\qquad
\mathcal D_j:=r_j^{-1}D_j^{\rm phys},
\qquad
\mathcal E_j:=r_j^{-1}E_j^{\rm phys}.
\tag{IZS.12}
```

Substituting these into the physical identity introduces the shrinking weights:

```math
W_0^{\rm phys}
=
W_M^{\rm phys}
-
\sum_{j=1}^{M}r_j\,\Delta\mathcal E_j
-
\sum_{j=1}^{M}r_j\,\mathcal D_j.
\tag{IZS.13}
```

The physical identity controls

```math
\sum_j r_j\,\mathcal D_j
\quad\text{and}\quad
\sum_j r_j\,\left[-\Delta\mathcal E_j\right]_+,
\tag{IZS.14}
```

not

```math
\sum_j \mathcal D_j
\quad\text{or}\quad
\sum_j\left[-\Delta\mathcal E_j\right]_+.
\tag{IZS.15}
```

So the finite telescoping theorem remains true, but it does not become the
unweighted terminal contradiction needed to exclude a recurrent heat-scale
Zeno chain.

## 5. Direct test of `NoFreeInfiniteMaterialZenoStressChain.A`

The desired theorem would have to say that a same-fluid material Zeno chain
cannot keep a positive normalized stress/action quantum at infinitely many
scales:

```math
\sum_{j\ge j_0}
\left[
W_j^{\rm ren}
\right]_+
<\infty
\tag{IZS.16}
```

or, more strongly, that

```math
\left[W_j^{\rm ren}\right]_+\to0
\tag{IZS.17}
```

on the selected terminal chain unless the branch has already paid by a legal
exit, a retained signed counter-edge, a strain/CKN/source-square reserve, or a
rigid zero-flux profile contradiction.

The installed material participation identity proves only the weighted version

```math
\sum_{j\ge j_0}
r_j\left[
W_j^{\rm ren}
\right]_+
<\infty.
\tag{IZS.18}
```

The implication from `(IZS.18)` to `(IZS.16)` is false in the dyadic model
`(IZS.8)`-`(IZS.11)`.

## 6. Exact reduced supplier

The direct infinite-chain test reduces the gold branch to one genuinely new
unweighted statement:

```math
\boxed{
\text{NoFreeInfiniteMaterialZenoStressChain.A}
}
\tag{IZS.19}
```

in the concrete form

```math
\boxed{
\text{weighted physical material stress control}
\ \Longrightarrow\
\text{unweighted normalized terminal-chain control}.
}
\tag{IZS.20}
```

Current inputs do not prove `(IZS.20)`.  The known possible suppliers remain:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{/}\quad
\text{UnweightedMaterialStressWorkCarleson.A}
\quad\text{/}\quad
\text{SelectedCriticalStrainCarleson.A}
\quad\text{/}\quad
\text{NormalizedCKNCarleson.A}
\quad\text{/}\quad
\text{SourceSquareReserve.A}.
}
\tag{IZS.21}
```

## 7. Relation to the CKN supplier tests

The normalized CKN route has the same structure in a different physical
currency.  For a heat cylinder \(Q_r\),

```math
\mathcal C(Q_r)
=
r^{-2}
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt.
\tag{IZS.22}
```

Finite physical cubic-pressure mass gives

```math
\sum_j r_j^2\mathcal C(Q_{r_j})<\infty,
\tag{IZS.23}
```

while the terminal anti-atom needs

```math
\sum_j\mathcal C(Q_{r_j})<\infty
\quad\text{or terminal-tail decay.}
\tag{IZS.24}
```

Thus the material-stress route and the CKN route fail at the same kind of
place:

```math
\boxed{
\text{physical finite measure controls a weighted normalized sum,}
\quad
\text{not the unweighted terminal packet count.}
}
\tag{IZS.25}
```

The material stress-work currency has weight \(r_j\).  The CKN
cubic-pressure currency has weight \(r_j^2\).  Both leave the dyadic terminal
Zeno stack compatible with finite physical cost.

## Verdict

The material participation law pays every finite donor chain exactly.  The
infinite terminal Zeno chain survives because each order-one normalized packet
has physical cost proportional to its radius, and the radii can be summable.

Thus the remaining obstruction is not pressure in isolation and not a missing
finite-chain conservation law.  It is the missing unweighted coercive theorem
that converts same-fluid participation into scale-normalized terminal control.
