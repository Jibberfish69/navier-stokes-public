---
theorem_id: forward-gold-material-time-high-ratio-profile-coercivity-test-20260626
status: direct-test-installed-material-time-high-ratio-limit-not-rigid
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-one-way-transfer-minimal-bad-tail-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-sign-cancellation-audit-20260626.md
---

# Material-Time High-Ratio Profile Coercivity Test

The live target is finite full same-material action:

```math
\int_0^{T_*} d\Omega_N^{full}<\infty .
\tag{MTHR.1}
```

The deprecated clock shorthand is only historical shorthand.  The object is
the original smooth solution and its transported material history.

This note tests the profile produced by failure of the weighted high-ratio tail.

## 1. Forced profile from a bad tail

The minimal-bad-tail test shows that failure of finite action gives terminal
blocks with

```math
\sum_{(j,\ell)\in B_k}2^\ell \mu_j(E_{j,\ell}\cap B_k)=1,
\qquad
\sum_{(j,\ell)\in B_k}\mu_j(E_{j,\ell}\cap B_k)\to0,
\tag{MTHR.2}
```

where

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}},
\qquad
E_{j,\ell}=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\}.
\tag{MTHR.3}
```

On \(E_{j,\ell}\),

```math
\Theta_j^{mat}\simeq2^\ell 2^{2j}.
\tag{MTHR.4}
```

Use material time

```math
d\tau=\Theta_j^{mat}(t)\,dt .
\tag{MTHR.5}
```

Then the normalized block has unit same-material action,

```math
\int e_j\,d\tau\simeq1,
\tag{MTHR.6}
```

while the heat/viscous mass is

```math
\int 2^{2j}e_j\,dt
=
\int {2^{2j}\over\Theta_j^{mat}}e_j\,d\tau
\simeq
2^{-\ell}\int e_j\,d\tau
\to0 .
\tag{MTHR.7}
```

So the forced limit is not a heat-time packet with positive viscous thickness.
It is a material-time packet with unit full-action normalization and vanishing
raw heat mass.

## 2. Material-time equations

In material variables,

```math
\partial_t v+\mathcal G_A q
=
\nu\operatorname{div}_a(G\nabla_a v),
\qquad
D_Av=0,
\tag{MTHR.8}
```

and

```math
\partial_t A=-A(\nabla_a v)A,
\qquad
\partial_t G=-2ASA^\top .
\tag{MTHR.9}
```

After the time change `(MTHR.5)`,

```math
\partial_\tau v
+{\Theta_j^{mat}}^{-1}\mathcal G_A q
=
{\nu\over\Theta_j^{mat}}\operatorname{div}_a(G\nabla_a v),
\tag{MTHR.10}
```

and

```math
\partial_\tau A
=
-{\Theta_j^{mat}}^{-1}A(\nabla_a v)A,
\qquad
\partial_\tau G
=
-2{\Theta_j^{mat}}^{-1}ASA^\top .
\tag{MTHR.11}
```

The ratio normalization does not detach pressure, incompressibility, velocity,
strain, Hodge/projector motion, collar motion, or annular stress.  It only says
that the heat coefficient seen by the active shell is small:

```math
{2^{2j}\over\Theta_j^{mat}}\simeq2^{-\ell}\to0 .
\tag{MTHR.12}
```

Thus the installed heat-time zero-loss rigidity is not the right rigidity
theorem for this limit.

## 3. Local non-gauge model

The material-time limit admits the usual trace-free affine strain normal form
as a local model:

```math
u(x,t)=B(t)x,
\qquad
\operatorname{tr}B(t)=0,
\tag{MTHR.13}
```

with the pressure Hessian chosen from the constraint equation.  In the
symmetric strain case \(B=S\),

```math
S\ne0,
\qquad
\Delta u=0,
\qquad
-\Delta p=\operatorname{tr}(B^2).
\tag{MTHR.14}
```

This profile is not a Galilean/affine-pressure gauge packet: it carries
strain/frame action.  It also has no interior viscous drain from \(\Delta u\).
After localization and divergence-free global matching, the already-installed
global-matching audit shows that raw energy, raw dissipation, pressure force
work, and collar work can scale like the physical radius while the normalized
material strain/action remains order one.

Therefore a material-time high-ratio limit is not ruled out by saying that
vanishing raw heat mass forces gauge.  That implication is false for the local
affine strain normal form.

## 4. What Hodge/projector elimination contributes

The material Hodge projector removes pressure as an autonomous top-order
dynamic source:

```math
\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_a v).
\tag{MTHR.15}
```

The projector motion is strain/metric service:

```math
\dot{\mathbb P}_A v
=
\mathcal G_A L_A^{-1}\operatorname{div}_a(ABv),
\qquad
\dot G=-2ASA^\top .
\tag{MTHR.16}
```

This proves attachment of the pressure/Hodge/collar sector to the same material
action.  It does not give a sign-definite one-way positive-variation bound in
material time.  Orthogonal projection geometry supplies constraint attachment;
the finite-action theorem still needs a monotone storage, a no-free-upward
transfer law, or a weight-beating tail.

## 5. Result of the test

The material-time high-ratio profile is the correct remaining branch after the
minimal-bad-tail reduction.  Installed inputs do not make it rigid.

The profile has:

```math
\int e_j\,d\tau\simeq1,
\qquad
\int 2^{2j}e_j\,dt\to0,
\tag{MTHR.17}
```

and may retain non-gauge strain/frame action in the material-time limit.

Therefore the Gold-only finite-action theorem is still equivalent, at this
edge, to one of the following noncircular statements:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty ,
\tag{MTHR.18}
```

or

```math
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0),
\tag{MTHR.19}
```

or

```math
\text{no non-gauge material-time high-ratio same-material profile exists
for the original transported smooth solution.}
\tag{MTHR.20}
```

The current installed complete-frame and Hodge/projector surfaces give
same-packet admission.  They do not yet prove `(MTHR.18)`, `(MTHR.19)`, or
`(MTHR.20)`.
