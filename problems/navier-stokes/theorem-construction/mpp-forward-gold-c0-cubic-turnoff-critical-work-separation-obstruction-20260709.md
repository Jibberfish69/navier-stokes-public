---
theorem_id: forward-gold-c0-cubic-turnoff-critical-work-separation-obstruction-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / c0 / cubic turnoff / signed critical-height admission
status: proved-separation-obstruction; gold-not-closed
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-root-payment-physical-spine-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-face-constant-axis-localization-rigidity-20260709.md
completion_truth: >-
  This note proves that the cubic radial turnoff current cannot be identified
  with, or pointwise dominated by, the installed global signed critical-height
  production. A smooth finite-energy divergence-free field can retain a fixed
  positive cubic turnoff around an affine Vieillefosse core while a remote
  same-fluid divergence-free component tunes the global critical production to
  zero. The same construction defeats any uniform short-time domination by the
  positive global production. This does not refute a separately defined,
  localized, preannounced odd bill. It proves that such a bill and its
  original-data positive-selection storage are additional theorems; they do not
  follow from the critical-height identity or the cubic FTC identity. Gold
  remains open exactly at that admission/storage passage.
---

# Cubic turnoff and critical work are not the same quantity

## 1. The two exact objects

The installed signed critical-height production is

```math
P_H(u)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
=
-\int_{\mathbb R^3}(u\cdot\nabla u)\cdot\Lambda u\,dx.
\tag{CWS.1}
```

The last equality uses that `u` and `Lambda u` are divergence free. The cubic
radial turnoff coordinate around a selected center is

```math
w(\rho,\theta)=e^{-\rho}u(e^\rho\theta)\cdot\theta,
\qquad
M(\rho)=\int_{S^2}w(\rho,\theta)^3\,d\theta,
\tag{CWS.2}
```

with positive turnoff current

```math
J_M(u;I)=\int_I[M'(\rho)]_+\,d\rho.
\tag{CWS.3}
```

`(CWS.3)` is an exact spatial flux identity. It is not, by itself, a term in
the time evolution `(CWS.1)`.

## 2. A compact affine core with fixed positive turnoff

Take

```math
S=\operatorname{diag}(1,1,-2),
\qquad
\operatorname{tr}S=0,
\qquad
-\operatorname{tr}(S^3)=6>0.
\tag{CWS.4}
```

Let `chi` be a smooth radial cutoff equal to one on `B_1` and zero outside
`B_2`. Set

```math
A(x)=-\frac13 x\times Sx,
\qquad
u_0=\nabla\times(\chi A).
\tag{CWS.5}
```

The homogeneous identity

```math
\nabla\times(x\times Sx)=-3Sx
\tag{CWS.6}
```

shows that `u_0=Sx` on `B_1`. The field `u_0` is smooth, compactly supported,
and divergence free. On the inner spheres its cubic radial moment is

```math
M_{\rm aff}
=\frac{32\pi}{105}\operatorname{tr}(S^3)
=-\frac{64\pi}{35}.
\tag{CWS.7}
```

Since `u_0=0` on every sphere of radius at least two, the fundamental theorem
of calculus gives

```math
J_M(u_0;[0,\log 2])
=\int_0^{\log 2}[M_{u_0}'(\rho)]_+\,d\rho
\ge \frac{64\pi}{35}.
\tag{CWS.8}
```

Thus the localized positive-service affine imprint has a fixed, nonzero cubic
turnoff.

## 3. A remote component can cancel the global critical work

There exists a smooth compactly supported divergence-free field `v` with
`P_H(v) != 0`. One explicit nonzero Fourier triad on the three-torus has
wavevectors

```math
k_1=(1,0,0),
\qquad
k_2=(0,1,0),
\qquad
k_3=(-1,-1,0),
\tag{CWS.9}
```

and coefficients

```math
\widehat v(k_1)=(0,1,1),
\qquad
\widehat v(k_2)=(0,0,i),
\qquad
\widehat v(k_3)=(0,0,1+i),
\tag{CWS.10}
```

with conjugate coefficients at the negative modes. Each coefficient is
orthogonal to its wavevector. Direct substitution into `(CWS.1)` gives, up to
the positive torus-volume normalization,

```math
P_H(v)=2(\sqrt2-1)\ne0.
\tag{CWS.11}
```

Solenoidal smooth frequency localization of this triad gives a Schwartz
whole-space field with nonzero `P_H`; standard compact solenoidal approximation
then gives `v in C_c^infty(R^3)` with `P_H(v) != 0`. Translate `v` so that its
support lies outside `B_3`.

For

```math
u_t=u_0+t v,
\tag{CWS.12}
```

the map `t -> P_H(u_t)` is a real cubic polynomial whose leading coefficient is
`P_H(v)`. Hence it has opposite signs as `t -> +infinity` and
`t -> -infinity`, so there is `t_* in R` with

```math
P_H(u_{t_*})=0.
\tag{CWS.13}
```

The translated field `v` vanishes on every sphere of radius at most two.
Therefore the radial readout on the core collar is unchanged, and `(CWS.8)`
becomes

```math
P_H(u_{t_*})=0,
\qquad
J_M(u_{t_*};[0,\log 2])\ge\frac{64\pi}{35}.
\tag{CWS.14}
```

Consequently no universal constant `c>0` can make either of the inequalities

```math
[P_H(u)]_+\ge cJ_M(u;I),
\qquad
|P_H(u)|\ge cJ_M(u;I)
\tag{CWS.15}
```

valid on smooth finite-energy divergence-free data.

## 4. The density version also fails

Use `u_{t_*}` as smooth Navier-Stokes initial data. Local smooth existence makes
`P_H(u(t))` continuously differentiable and keeps the collar readout continuous.
At `t=0`, `(CWS.14)` gives `P_H=0` and `J_M>0`. Therefore, for small `delta>0`,

```math
\int_0^\delta[P_H(u(t))]_+\,dt=O(\delta^2),
\qquad
\int_0^\delta J_M(u(t);[0,\log2])\,dt
\ge c_0\delta
\tag{CWS.16}
```

for some `c_0>0`. Thus a density-level or arbitrary-short-window version of
`CubicRadialMomentOddPayment.A` also cannot use the positive part of the global
critical production as its left-hand side.

## 5. Exact Gold consequence

The fixed-axis result remains valid: a global finite-energy field with one
constant vorticity/strain eigenaxis is zero, and a confined axisymmetric axial
stretch creates transverse shell vorticity. The compactness argument still
needs to connect that rigidity to the signed critical-height record.

`(CWS.14)` identifies the missing connection. A localized odd bill could avoid
the remote cancellation only by being selected before the future record and by
retaining its positive local variation rather than the signed global sum. To
close Gold one must supply all three of the following as one theorem:

```math
\begin{aligned}
&\text{an explicit same-field localized trilinear current }dB_{\rm odd},\\
&dB_{\rm odd}^+\ge c[M'(\rho)]_+\,d\rho\,dt
  \text{ on the retained record packet},\\
&\sum_{\text{disjoint record windows}}\int dB_{\rm odd}^+
  \le C(u_0).
\end{aligned}
\tag{CWS.17}
```

The current corpus names the first two lines as
`CubicRadialMomentOddPayment.A` and the third as positive-selection storage, but
it does not define and prove `(CWS.17)` from `(CWS.1)`. Defining payment to
contain the retained BV variation makes the first inequality tautological and
leaves the third unproved. Using the signed critical work makes the inequality
false by `(CWS.14)`.

This is the checked obstruction after Fable's fixed-face run. The axisymmetric
shell kernel is bypassed by the transverse-vorticity identity; the remaining
Gold passage is the noncancelling local-to-global signed critical-work theorem
`(CWS.17)`, not pressure-shell algebra.
