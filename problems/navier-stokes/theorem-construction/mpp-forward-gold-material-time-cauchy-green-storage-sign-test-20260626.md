---
theorem_id: forward-gold-material-time-cauchy-green-storage-sign-test-20260626
status: direct-test-installed-cauchy-green-records-high-ratio-action-but-does-not-supply-bounded-below-storage
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-time-high-ratio-profile-coercivity-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cauchy-green-annular-stress-work-lyapunov-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-metric-clock-sharpening-20260622.md
---

# Material-Time Cauchy-Green Storage Sign Test

The active Gold target is still

```math
\int_0^{T_*}d\Omega_N^{full}<\infty .
\tag{MTCG.1}
```

The previous high-ratio test shows that a bad terminal tail normalizes to a
material-time profile with unit full action and vanishing raw heat/viscous mass:

```math
\int e_j\,d\tau\simeq1,
\qquad
\int 2^{2j}e_j\,dt\to0.
\tag{MTCG.2}
```

This note tests whether the material deformation itself supplies the missing
bounded-below storage on that branch.

## 1. Cauchy-Green records the branch exactly

Let

```math
F=D_aX,
\qquad
C=F^TF,
\qquad
\det F=1.
\tag{MTCG.3}
```

Since

```math
\partial_tF=(\nabla u)(X,t)F,
\qquad
\nabla u=S+\Omega,
\qquad
\Omega^T=-\Omega,
\tag{MTCG.4}
```

we have

```math
\partial_tC=2F^TSF.
\tag{MTCG.5}
```

For a material tangent vector \(\xi\),

```math
{d\over dt}\log |F\xi|
=
{F\xi\cdot S F\xi\over |F\xi|^2}.
\tag{MTCG.6}
```

Thus Cauchy-Green is the right recorder for the spike thinning and outer
annular return: only the symmetric strain changes material lengths; pure
rotation does not.

In material time \(d\tau=\Theta_j^{mat}(t)dt\),

```math
{d\over d\tau}\log |F\xi|
=
{1\over\Theta_j^{mat}}
{F\xi\cdot S F\xi\over |F\xi|^2}.
\tag{MTCG.7}
```

On the high-ratio branch, this expression is not zero by heat-scale rigidity.
The heat coefficient is small, but the material action normalization is the
unit object.

## 2. The only local paying sign is unbounded below

To make a one-way storage pay positive material stretching in the active
direction, the local primitive must decrease when

```math
{d\over dt}\log |F\xi|>0.
\tag{MTCG.8}
```

The natural primitive is therefore

```math
X_\xi(t)=-c\log |F(t)\xi|.
\tag{MTCG.9}
```

Along an aligned positive strain history with

```math
{d\over dt}\log |F\xi|=\lambda(t)>0,
\tag{MTCG.10}
```

it satisfies

```math
{d\over dt}X_\xi(t)=-c\lambda(t).
\tag{MTCG.11}
```

So \(X_\xi\) has the right derivative sign.  It is bounded below exactly when
\(\log |F\xi|\) is already bounded above.

That is the circularity:

```math
X_\xi(t)\ge -C
\quad\Longleftrightarrow\quad
|F(t)\xi|\le C'.
\tag{MTCG.12}
```

But a uniform upper bound on the material stretch is part of the continuation
record being sought.

## 3. Positive Cauchy-Green storage has the wrong sign

The bounded-below orientation is

```math
Y_\xi(t)=+c\log |F(t)\xi|.
\tag{MTCG.13}
```

On the same positive strain history,

```math
{d\over dt}Y_\xi(t)=c\lambda(t)>0.
\tag{MTCG.14}
```

This increases during the event.  It records the action, but it does not pay
the action by descent.

Saturating the negative primitive also fails.  If

```math
X_\Phi(t)=-\Phi(\log |F(t)\xi|),
\qquad
0\le \Phi'\le1,
\tag{MTCG.15}
```

then paying a fixed fraction of every large positive event requires
\(\Phi'\ge c_0>0\) at arbitrarily large stretch.  That forces
\(\Phi(r)\to\infty\), hence \(X_\Phi\to-\infty\).  If \(\Phi'\to0\), the
storage remains bounded below but stops paying the high-stretch branch.

## 4. Incompressibility does not supply the missing lower bound

The identity

```math
\det F=1
\tag{MTCG.16}
```

only says that expansion in some material directions is matched by compression
in others.  It does not bound the condition number:

```math
\kappa(F)=\|F\|\,\|F^{-1}\|.
\tag{MTCG.17}
```

A storage such as

```math
-\log\kappa(F)
\tag{MTCG.18}
```

has the same problem as `(MTCG.9)`: it drops during anisotropic thinning, but it
is bounded below only after the material distortion has already been bounded.

## 5. Consequence for the Gold edge

Cauchy-Green is the correct material record for the annular spike geometry. It
proves attachment of thinning and stretching to the same strain history.

It does not prove the finite full-action estimate.  On the material-time
high-ratio branch, every local Cauchy-Green primitive has one of two failures:

1. it has the right sign and is bounded below only after the continuation
   deformation record is already controlled; or
2. it is bounded below but has the wrong sign, or loses payment after
   saturation.

Therefore the remaining Gold theorem is unchanged but sharper:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
\tag{MTCG.19}
```

or

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0),
\tag{MTCG.20}
```

or a genuine no-non-gauge material-time high-ratio profile theorem tied to the
original transported smooth solution.

The Cauchy-Green record is a coordinate of that theorem, not the missing
bounded-below reservoir.
