---
theorem_id: forward-gold-no-nongauge-material-time-profile-liouville-test-20260626
status: direct-test-installed-local-non-gauge-profile-rigidity-fails
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-time-high-ratio-profile-coercivity-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-time-cauchy-green-storage-sign-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
---

# No-Non-Gauge Material-Time Profile Liouville Test

The active Gold target is finite full same-material action:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty .
\tag{NGL.1}
```

The current edge offers three equivalent-looking ways forward:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
\tag{NGL.2}
```

or

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0),
\tag{NGL.3}
```

or a no-non-gauge material-time high-ratio profile theorem for the original
transported smooth solution.

This note tests the third option.

## 1. What the bad tail produces

The minimal-bad-tail reduction produces terminal material-time packets with

```math
\int e_j\,d\tau\simeq1,
\qquad
\int 2^{2j}e_j\,dt\to0,
\tag{NGL.4}
```

where

```math
d\tau=\Theta_j^{mat}(t)\,dt .
\tag{NGL.5}
```

So the candidate limiting object has nonzero normalized same-material action
and zero raw heat-time mass.  The heat-time zero-loss rigidity theorem does
not apply to this object.

A local Liouville version of the no-non-gauge route would assert:

```math
\text{zero raw heat mass}
+\text{material-time full-action normalization}
\Longrightarrow
\text{Galilean / affine-pressure gauge.}
\tag{NGL.6}
```

That implication is false.

## 2. Local affine strain is an exact non-gauge profile

Let

```math
u(x,t)=B(t)x,
\qquad
\operatorname{tr}B(t)=0,
\tag{NGL.7}
```

with \(B(t)=B(t)^\top\).  Then

```math
\partial_tu+(u\cdot\nabla)u
=
\left(\dot B+B^2\right)x,
\qquad
\Delta u=0.
\tag{NGL.8}
```

Choose pressure

```math
p(x,t)
=
-{1\over2}x\cdot(\dot B+B^2)x .
\tag{NGL.9}
```

Then

```math
\nabla p=-(\dot B+B^2)x,
\tag{NGL.10}
```

and the Navier--Stokes equation is satisfied locally:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{NGL.11}
```

The pressure Poisson equation also matches:

```math
-\Delta p=\operatorname{tr}(B^2),
\tag{NGL.12}
```

because \(\operatorname{tr}\dot B=0\).  For \(B\ne0\), this is not a
Galilean gauge packet.  It carries genuine strain/frame action.

Therefore material-time zero raw heat mass does not force a gauge profile.
The local non-gauge material-time profile is compatible with the coupled
pressure, viscosity, incompressibility, and velocity law.

## 3. Periodic localization does not change the scale conclusion

Cut off \(B(t)x\) on a ball of radius \(r\), add the divergence-free
Hodge/Bogovskii collar correction, and read the critical heat window around
the core.  The installed localized-affine matching audit shows that the global
periodic matching, pressure force work, viscous collar work, convective work,
raw energy, and raw dissipation retain the radius-weighted scale, while the
normalized material strain/action in the core remains order one.

Thus global same-fluid attachment is real, but the matching cost still has the
same scale weakness:

```math
\text{physical raw cost}=O(r),
\qquad
\text{normalized material action}=O(1).
\tag{NGL.13}
```

An infinite terminal sequence can have \(r_k\downarrow0\) with
\(\sum_k r_k<\infty\), so finite raw energy and finite raw dissipation do not
exclude the sequence.

## 4. Consequence for the original-history theorem

The no-non-gauge material-time profile route cannot be a local compactness or
Liouville theorem.  The limiting equations admit non-gauge strain profiles.
The Cauchy--Green record also cannot supply the missing lower-bounded descent:
the paying sign is bounded below only after the deformation record is already
controlled.

So any valid original-history version of the no-non-gauge statement must
contain the same missing global information as `(NGL.2)` or `(NGL.3)`.  It must
show that the original transported smooth history cannot pack infinitely many
one-way high-ratio material-time profiles with finite raw heat cost.  That is
exactly the weight-beating tail law or the bounded-below same-material action
storage in different language.

Thus the third apparent option is not independent.  After this test, the
remaining Gold proof edge is:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
\tag{NGL.14}
```

or equivalently a noncircular storage/entropy

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
\tag{NGL.15}
```

Complete-frame Hodge, pressure elimination, Cauchy--Green, and localized
affine matching are all same-packet admission/attachment facts.  They do not
by themselves prove the finite full same-material action theorem.
