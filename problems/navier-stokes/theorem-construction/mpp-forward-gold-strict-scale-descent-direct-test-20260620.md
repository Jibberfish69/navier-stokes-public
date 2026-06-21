# MPP Forward-Gold Strict Scale Descent Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Strict scale descent is not supplied by the current
forward-gold inputs.  It would be a genuine new coercive theorem.

The target was:

```math
\boxed{
\text{retained same-carrier terminal heat-scale packet}
\quad\Longrightarrow\quad
\text{strictly smaller retained packet at the next scale.}
}
\tag{SSD.1}
```

In usable form this would say that along a selected terminal Zeno chain,

```math
A_{j+1}
\le
\theta A_j+\mathrm{Legal}_j,
\qquad
0<\theta<1,
\qquad
\sum_j\mathrm{Legal}_j<\infty.
\tag{SSD.2}
```

Together with a retained lower bound \(A_j\ge c_0>0\), `(SSD.2)` would kill an
infinite terminal chain by iteration.  The problem is that no current identity
produces the strict factor \(\theta<1\).

## 1. The normalized object

For a selected heat-scale packet

```math
Q_j=B_{r_j}(x_j)\times(t_j-r_j^2,t_j],
\qquad
r_j\downarrow0,
\tag{SSD.3}
```

use parabolic normalization

```math
s={t-t_j\over r_j^2},
\qquad
y={x-x_j\over r_j},
\qquad
u(t,x)=r_j^{-1}v_j(s,y).
\tag{SSD.4}
```

Let the normalized critical action be

```math
A_j
:=
\int_{-1}^{0}\int_{B_R}
\left(
|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}
\right)\,dy\,ds.
\tag{SSD.5}
```

The retained terminal pulse branch is

```math
A_j\ge c_0>0
\quad\text{for infinitely many }j.
\tag{SSD.6}
```

The physical ledgers give only radius-weighted control:

```math
\sum_j r_jA_j<\infty
\quad\text{or}\quad
\sum_j r_j^2\mathcal C_j<\infty.
\tag{SSD.7}
```

The gold anti-atom needs unweighted control:

```math
\sum_jA_j<\infty
\tag{SSD.8}
```

or an equivalent endpoint modulus.  Strict scale descent is one possible way to
upgrade `(SSD.7)` to `(SSD.8)`.

## 2. Heat scaling is neutral

Navier-Stokes parabolic scaling preserves the normalized equation and the
critical action `(SSD.5)`.  Thus a rescaled packet can reappear at the next
terminal scale with the same normalized size.

The scalar bookkeeping model is

```math
r_j=2^{-j},
\qquad
A_j=1.
\tag{SSD.9}
```

Then

```math
\sum_j r_jA_j<\infty,
\qquad
\sum_jA_j=\infty.
\tag{SSD.10}
```

This model is not asserted to be an exact Navier-Stokes solution.  It is the
necessary logic test for any proposed proof: radius-weighted physical control
plus scale-invariant recurrence cannot imply unweighted summability unless the
equation supplies a strict cross-scale loss.

The scale symmetry itself supplies no such loss.

## 3. Participation gives equality, not descent

The checked same-fluid participation identity on a normalized packet is

```math
M_R'(s)+D_R(s)=F_R(s),
\tag{SSD.11}
```

where \(F_R\) is the combined convection, pressure, cutoff-viscous exchange, and
dilation interface.

To get `(SSD.2)`, one would need a strict one-sided gap:

```math
F_R(s)
\le
(1-\gamma)D_R(s)+R_{\rm legal}(s),
\qquad
\gamma>0.
\tag{SSD.12}
```

But the installed participation theorem gives only the exact balance
`(SSD.11)`.  The neutral case

```math
F_R(s)=D_R(s),
\qquad
M_R'(s)=0,
\tag{SSD.13}
```

is not excluded by `(SSD.11)`.  In that case the packet has residence without
strict drop.

Equivalently, the route-native scalar form

```math
{d\over ds}A(s)+c_{\rm d}A(s)
\le
c_{\rm f}(s)A(s)+R(s)
\tag{SSD.14}
```

descends only if

```math
c_{\rm f}(s)\le c_{\rm d}-\gamma.
\tag{SSD.15}
```

Current inputs put \(c_{\rm f}\) and \(c_{\rm d}\) on the same heat clock.  They
do not prove the strict sign in `(SSD.15)`.

## 4. Minimality does not create the strict factor

Critical-element minimality can choose a smallest normalized retained
obstruction:

```math
\inf\{A_j:\ Q_j\text{ is selected and retained}\}=c_0.
\tag{SSD.16}
```

That condition is compatible with a chain where every selected copy has
approximately the same normalized size:

```math
A_j=c_0+o(1).
\tag{SSD.17}
```

Minimality gives no contradiction to `(SSD.17)`.  It says there is no smaller
retained obstruction; it does not say the same obstruction cannot repeat on a
smaller heat scale.  A descent proof would need an independent mechanism making
the next selected same-carrier packet strictly cheaper than the previous one.

Thus minimality cannot be the source of \(\theta<1\) in `(SSD.2)`.

## 5. What would make descent true

Strict scale descent would become available if one of the following genuinely
scale-breaking statements were installed:

1. a same-carrier source-square reserve, forcing repeated refill to pay an
   unweighted square cost;
2. a selected critical-strain or normalized CKN terminal reserve, forcing each
   recurrence slab to pay an unweighted critical quantum;
3. a strict pressure-corrected no-waste Lyapunov functional whose drop controls
   the normalized action;
4. polar/signed saturation plus no-free terminal Zeno donor chain, preventing
   positive recurrence from being fed by hidden signed cancellation;
5. selected profile decoupling plus compact orbit production, turning repeated
   scale copies into a rigid profile to which a Liouville theorem applies.

Each item is already another form of the unweighted terminal reserve or the
zero-defect compact-profile route.  None is a consequence of scale descent
alone.

## 6. Verdict

`StrictScaleDescent.A` fails as an independent supplier from current inputs.

The exact reduction is:

```math
\text{StrictScaleDescent.A}
\Leftarrow
\text{strict cross-scale asymmetry}
\tag{SSD.18}
```

and the current forward-gold package does not contain that asymmetry.  The
terminal heat-scale pulse therefore remains in the same position:

```math
\boxed{
\text{prove an unweighted terminal critical-action reserve}
\quad\text{or}\quad
\text{send the retained pulse to CM Pack/that face failure.}
}
\tag{SSD.19}
```

