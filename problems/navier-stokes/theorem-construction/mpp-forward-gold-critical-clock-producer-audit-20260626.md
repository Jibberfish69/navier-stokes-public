---
theorem_id: forward-gold-critical-clock-producer-audit-20260626
status: proof-audit-critical-norm-clock-is-continuation-readout-not-original-data-producer
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-osgood-subcritical-scaling-obstruction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-energy-enstrophy-pressure-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
---

# Critical Clock Producer Audit

The material-record Osgood audit left one formal alternative:

```math
\Theta_N(t)
\le
K(t)\bigl(1+\log Y_N(t)\bigr)+r(t),
\qquad
Y_N(t)=1+\mathcal P_N^{mat}(t),
\qquad
\int_0^{T_*}K(t)\,dt<\infty .
\tag{CCA.1}
```

This note checks whether such a critical \(K\) is a genuine producer from
original smooth data.

It is not, unless the proof supplies the same finite full same-material action
under another name.

## 1. What \(K\) must dominate

The current Gold edge has already reduced the remaining positive action to
the superheat material residence

```math
\mathcal R_{sh,N}(t)
=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}} .
\tag{CCA.2}
```

The finite-depth material record inequality has the shape

```math
d[\log Y_N]_+
\le
C_N\,d\Omega_N^{full}+dR_N^0,
\tag{CCA.3}
```

and, on the reduced live edge,

```math
d\Omega_N^{full}
\simeq
\mathcal R_{sh,N}(t)\,dt
+\text{already paid strict/legal pieces}.
\tag{CCA.4}
```

So an integrable critical \(K\) can close the theorem only if it controls the
same superheat residence:

```math
\mathcal R_{sh,N}(t)
\lesssim
K(t)\bigl(1+\log Y_N(t)\bigr)
+r(t).
\tag{CCA.5}
```

That is a continuation criterion.  It is not automatically supplied by
energy, enstrophy, pressure ellipticity, Hodge orthogonality, or global
divergence-free matching.

## 2. Classical critical criteria are consumers

BKM, Serrin, critical Besov, and related criteria have the same logical role:
if their critical quantity is integrable, then the continuation-depth record
stays bounded.  They do not prove that critical quantity is integrable from
finite energy alone.

For example, a BKM-type statement supplies

```math
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty
\quad\Longrightarrow\quad
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty .
\tag{CCA.6}
```

The Gold theorem needs the left side of `(CCA.6)`, or an equivalent full
same-material action, from the original smooth datum.  The criterion itself
does not provide that input.

Thus a critical \(K\) is useful only after a new theorem proves

```math
\int_0^{T_*}K(t)\,dt<\infty
\tag{CCA.7}
```

on the same transported material history.

## 3. Scaling test

The localized-affine global-matching audit gives the relevant scale check.
At radius \(r\),

```math
|u|\sim r^{-1},
\qquad
|\nabla u|\sim r^{-2},
\qquad
\tau_r\sim r^2.
\tag{CCA.8}
```

Any critical continuation quantity strong enough to see the active gradient
has order-one mass on the heat window:

```math
\int_0^{\tau_r} r^{-2}\,dt
\sim
1.
\tag{CCA.9}
```

Meanwhile the raw physical energy, raw dissipation, pressure force work,
viscous collar work, convective work, and global Hodge/Bogovskii matching cost
all have size \(O(r)\).  A dyadic terminal sequence can therefore have

```math
\sum_k O(r_k)<\infty,
\qquad
\sum_k 1=\infty .
\tag{CCA.10}
```

This does not construct an exact global Navier--Stokes solution.  It proves
that the original energy-scale budgets and matching costs do not produce
`(CCA.7)` by scaling alone.

## 4. Result

The critical-norm route is an equivalent readout unless it includes a new
same-material action theorem:

```math
\boxed{
\text{critical continuation criterion}
\neq
\text{finite full same-material action from original data}.
}
\tag{CCA.11}
```

To count as Gold progress, a \(K\)-route must prove the integrability of \(K\)
from the coupled pressure--viscosity--incompressibility--velocity material
history, and that proof must dominate `(CCA.2)`.  Otherwise it is only a
consumer of the same missing finite-action estimate.

Therefore the live Gold target remains the bounded-below same-material
entropy, no-free-upward-transfer theorem, or equivalent action-packing law for
the full action itself.

