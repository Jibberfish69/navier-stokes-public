# MPP SquareReserveEvolution.A Next Attempt

## Status

Direct theorem-facing attempt on the post-`SourceWall.Reconcile.A` direct
source-wall interface:

```math
\boxed{SquareReserveEvolution.A.}
```

Verdict:

```math
\boxed{
SquareReserveEvolution.A
\text{ is not proved from the installed inputs in this note.}
}
```

The strongest valid output is a reduction of the desired evolution law to an
independent first-time square-reserve creation charge, equivalently a
scale-critical active-window height bound for the donor-tail Hardy expansion.
That input is not installed by `ParentSquareEmbed.A`, `WeightedAdjRes.A`,
finite-tree donor balance, first-moment dissipation, or local energy.

## Live Target

The installed direct branch is:

```math
ParentSquareEmbed.A
\quad\text{installed,}
```

and:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

The desired one-step dynamic law is:

```math
\boxed{
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
}
\tag{SRE}
```

Here:

```math
\mathcal R_N(W)
:=
\int_W\sum_{P^-}|A_{P^-}(t)|^2dt
=
\int_W
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt.
\tag{R}
```

The charge must be controlled by the installed high-frequency first-moment
dissipation tail:

```math
\sum_W Charge_N(W)
\le
C\int\sum_{q>N}D_q(t)dt+o_N(1).
\tag{C}
```

## Attempt 1: Lift Normalized-Adjoint Parent-Or-Charge

The normalized-adjoint package gives, for child packet mass,

```math
M(T)
:=
|\langle w_j(t_+),\chi_T(t_+)\rangle|^2,
```

a parent-or-charge inequality of the form:

```math
M(T)
\le
Charge(T)
+
\sum_{P\prec T}\kappa(P,T)M(P)
+
Loss_{legal}(T),
\tag{NA}
```

with residual charges controlled by `WeightedAdjRes.A`:

```math
\sum_T Charge(T)
\le
C\int\sum_{q>N}D_q(t)dt+o_N(1).
```

This is not `(SRE)`.  The reserve in `(R)` is built from the donor square
factor:

```math
|A_{P^-}(t)|^2,
```

which is the parent source factor left after the static diffuse-parent
embedding.  The installed `ParentSquareEmbed.A` statement is:

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right|^2
\le
C\sum_{P^-}|A_{P^-}|^2+o_N(1).
\tag{PSE}
```

It is an `\ell^2` operator bound.  It gives no inverse map from child adjoint
mass back to donor reserve, and no time evolution for the donor coefficients.
Thus the attempted lift would require an additional theorem:

```math
DonorReserveAdjointTrace.A:
\quad
\sum_{P^-\subset W}|A_{P^-}|^2
\le C_{\mathrm{DRAT}}
\sum_{T\subset W}M(T)+Loss_{legal}+o_N(1),
```

with the same parent graph and time orientation.  That theorem is not installed
and is not a consequence of `(PSE)`: `(PSE)` is one-sided in the wrong
direction for evolving reserve.

So the normalized-adjoint machinery controls creation of child mass, not
first-time creation of the donor square reserve.

## Attempt 2: Differentiate The Scalar Reserve

Write:

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
r_N(t):=\sum_{k>N}2^kT_k(t)^2.
```

Formally differentiating gives:

```math
{d\over dt}r_N(t)
=
2\sum_{k>N}2^kT_k(t)
\sum_{\ell>k+4}\partial_tD_\ell(t).
\tag{D1}
```

This is not a closed dissipative identity.  The installed shell energy balance
controls:

```math
\int\sum_{\ell>N}D_\ell(t)dt,
```

not `\partial_tD_\ell`.  Rewriting `\partial_tD_\ell` through the localized
shell equation introduces the same signed source and strain terms whose
positive part defines the source wall.  Schematically:

```math
T_k\sum_{\ell>k+4}\partial_tD_\ell
\leadsto
T_k\sum_{\ell>k+4}Source_\ell
+
Loss_{legal}
+
\text{favorable dissipation}.
\tag{D2}
```

After positive-part extraction and localization, `(D2)` is controlled only by
the same local positive source / active-square reserve.  Cauchy or Young
estimates return:

```math
\int_W r_N(t)dt
```

on the right-hand side, with no contraction factor `(1-\delta)` and no
first-moment charge.  Therefore differentiating the donor square does not prove
`(SRE)`; it reopens `ScaleCriticalTreeCarleson.A`.

## Attempt 3: Spend Finite Donor Balance

`LocalDonorBalance.A` supplies the finite-tree algebra:

```math
\text{finite source-refill trees}
\le
\text{leaf energy}
+
Loss_{legal}.
```

This is useful, but it does not give `(SRE)`.  A terminal reserve pulse may be
created on a first heat window with no earlier positive `\mathcal R_N` pulse.
Finite-tree telescoping then leaves a terminal refill boundary.  Controlling
that boundary requires one of:

```math
\text{active-window height control,}
\qquad
\text{scale-normalized branch reserve,}
\qquad
\text{Zeno source-residue rigidity.}
```

These are precisely the source-wall alternatives already recorded as open.
Finite donor balance does not add the missing contraction for the square
reserve itself.

## Scalar Obstruction To The Installed Ledgers

The obstruction is visible before using any geometry.  Let `I_m` be terminal
heat windows and set:

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
|I_m|=h_m,
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
```

Then the installed first-moment tail pays only:

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)dt=A_m.
```

But the donor square reserve has the `k=m` contribution:

```math
\int_{I_m}
2^m
\left(
\sum_{\ell>m+4}D_\ell(t)
\right)^2dt
=
2^mA_m^2h_m^{-1}.
```

Choosing:

```math
h_m=2^mA_m^2
```

makes this reserve contribution order one while `A_m\to0`.  This is not a
Navier-Stokes counterexample.  It is a scalar countermodel to the installed
ledger package: first-moment dissipation, static parent-square embedding, and
finite donor-balance bookkeeping do not imply a dynamic law for first-time
square-reserve creation.

For `(SRE)`, this is exactly the bad configuration:

```math
Past(W_m)=0,
\qquad
Charge_N(W_m):= A_m\to0,
\qquad
\mathcal R_N(W_m):=1.
```

Thus an additional theorem must forbid or charge such terminal heat-window
creation.

## Strongest Valid Reduction

The Hardy expansion gives the exact fixed-shift scalar comparison for an
integer `L_0` determined by dyadic overlap:

```math
c_H
\sum_{\ell>N+L_0}
D_\ell(t)
\left[
2^\ell
\sum_{m>\ell+L_0}D_m(t)
\right]
\le
\sum_{k>N}2^kT_k(t)^2
\le
C_H
\sum_{\ell>N}
D_\ell(t)
\left[
2^\ell
\sum_{m>\ell+L_0}D_m(t)
\right].
\tag{H}
```

Therefore `(SRE)` would follow from an independent active-window height /
reserve-creation theorem.  One clean sufficient form is:

```math
\boxed{
ActiveWindowHeight.A:
\quad
\sup_{t\in W}
\sup_{\ell>N}
2^\ell
\sum_{m>\ell+L_0}D_m(t)
\le
C_{legal}
}
\tag{AWH}
```

on the terminal same-fluid windows after legal losses.  Then `(H)` and the
installed first-moment tail give:

```math
\mathcal R_N(W)
\le C_H
C_{legal}\int_W\sum_{\ell>N}D_\ell(t)dt
+
Loss_{legal}(W)
+
o_N(1),
```

which is stronger than `(SRE)` with the inherited past term discarded.

The exact one-step version is:

```math
\boxed{
ReserveCreationCharge.A:
\quad
\left[
\mathcal R_N(W)
-
(1-\delta)\mathcal R_N(Past(W))
-
Loss_{legal}(W)
\right]_+
\le
Charge_N(W)+o_N(1).
}
\tag{RCC}
```

`ReserveCreationCharge.A` is precisely the missing content of
`SquareReserveEvolution.A`; `ActiveWindowHeight.A` is the strongest
non-tautological scalar sufficient condition found here.  Neither is installed
from the current route inputs.

## Proof Verdict

`SquareReserveEvolution.A` remains open.

The exact obstruction is:

```math
\boxed{
\text{no installed theorem charges first-time creation of the donor square
reserve }\mathcal R_N\text{ on terminal heat windows.}
}
```

`ParentSquareEmbed.A` is installed but static.  `WeightedAdjRes.A` charges
normalized-adjoint child mass, not donor reserve.  Differentiating the donor
square reintroduces the native positive source wall.  Finite donor balance
telescopes only finite refill trees and leaves the same terminal active-window
height / Zeno boundary.

Thus the live direct branch remains conditional:

```math
\boxed{
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A,
\qquad
SquareReserveEvolution.A\text{ not installed.}
}
```
