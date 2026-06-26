---
theorem_id: forward-gold-local-state-action-storage-no-go-20260626
status: direct-test-installed-local-state-storage-cannot-be-the-bounded-below-full-action-reservoir
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-nongauge-material-time-profile-liouville-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-time-cauchy-green-storage-sign-test-20260626.md
---

# Local State Action Storage No-Go

The active Gold estimate is still

```math
\int_0^{T_*}d\Omega_N^{full}<\infty .
\tag{LSN.1}
```

After the material-time profile test, the live alternatives are a weight-beating
tail law or a bounded-below same-material action storage.  This note checks
whether that storage can be a local finite-depth state functional of the
material packet.

## 1. Test path

Use the local affine strain path

```math
u(x,t)=B(t)x,
\qquad
B(t)=\lambda(t)E,
\qquad
\operatorname{tr}E=0,
\qquad
E=E^\top .
\tag{LSN.2}
```

With

```math
p(x,t)
=
-{1\over2}x\cdot(\dot B+B^2)x,
\tag{LSN.3}
```

this is an exact local incompressible Navier--Stokes packet:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{LSN.4}
```

The material deformation satisfies

```math
\partial_tF=BF,
\qquad
\partial_t(F^TF)=2F^TBF.
\tag{LSN.5}
```

For a stretched eigen-direction \(\xi\),

```math
{d\over dt}\log |F\xi|=\lambda(t).
\tag{LSN.6}
```

So the same-material action accumulated on this path contains

```math
\int \lambda_+(t)\,dt .
\tag{LSN.7}
```

## 2. Consequence for any paying local storage

Assume a local same-material state functional \(\mathscr A_{loc}\) supplies the
bounded-below action inequality on this path:

```math
d\mathscr A_{loc}+c\,\lambda_+(t)\,dt\le dR^{legal}_{loc},
\qquad
\mathscr A_{loc}\ge -C.
\tag{LSN.8}
```

On the exact affine core there is no interior viscous drain from \(\Delta u\).
After shrinking the periodic localization radius, the already-installed
matching audit makes the legal/core-collar residual lower order relative to the
normalized material action.  In the local material-time model, drop
\(dR^{legal}_{loc}\).  Then

```math
\mathscr A_{loc}(t_1)-\mathscr A_{loc}(t_0)
\le
-c\int_{t_0}^{t_1}\lambda_+(t)\,dt .
\tag{LSN.9}
```

The right side can be made arbitrarily negative by taking a longer one-way
stretch history, or by concatenating same-sign stretch blocks.  Therefore any
local state storage that pays the action with the correct sign is forced to
become unbounded below along the reachable affine material states.

This is the same obstruction seen in the Cauchy--Green primitive
\(-\log |F\xi|\), but it is not specific to that coordinate.  It applies to
any local finite-depth state functional whose derivative is supposed to pay
the one-way material-time action.

## 3. What remains possible

A bounded-below action storage can still exist only if it uses information
that the local affine state does not contain: the global original-history
packing, the nonlocal frequency-transfer tail, or an equivalent finite
available-action reservoir from the original datum.

So the storage option is not an independent local construction.  It is another
form of the weight-beating/no-free-upward-transfer law:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{LSN.10}
```

Equivalently, any valid \(\mathscr A_N\) must be a global same-material
history functional whose lower bound encodes that tail law.  A local
pressure, Hodge, Cauchy--Green, strain-log, shell-energy, or finite-depth
state primitive cannot provide the missing lower-bounded reservoir by itself.

The Gold edge is therefore sharpened to one statement: prove the global
same-material no-free-upward-transfer / weight-beating tail law for the
original transported smooth history.
