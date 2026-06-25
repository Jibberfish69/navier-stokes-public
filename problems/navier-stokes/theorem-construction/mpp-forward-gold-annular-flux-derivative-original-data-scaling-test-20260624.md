---
theorem_id: forward-gold-annular-flux-derivative-original-data-scaling-test-20260624
status: direct-scaling-test-original-data-does-not-by-itself-produce-unweighted-flux-derivative-clock
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Tests the exact remaining pay-it-back-later estimate against original smooth
  data. The transported annular flux derivative is a same-fluid material
  history quantity, but the heat-scale normalization shows that preterminal
  smoothness and physical energy bookkeeping do not by themselves give the
  unweighted terminal summability of the flux-derivative/material-service
  clock. A physical total-variation theorem for the annular stress-work flux
  would close this subgate, but proving that theorem is the signed same-packet
  commutator/coercivity estimate in physical variables.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-frequency-data-to-material-clock-pressure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-later-payback-preterminal-causality-clock-producer-test-20260624.md
---

# Annular Flux Derivative Original-Data Scaling Test

Date: 2026-06-24

## 0. Result

The pay-it-back-later object is the same transported outer annulus.  The
center pulse is attached to that annular stress/strain history before any
terminal limit is taken.

This note tests whether original smooth data alone turns that annular history
into the needed unweighted terminal clock.  The answer is no.  Original smooth
data supplies finite entrance records, and fixed preterminal annuli have
ordinary absolute continuity.  The shrinking heat-scale family still requires
a scale-critical total-variation/coercivity theorem for the same annular
stress-work transaction.

## 1. Heat-scale normalization of the same annular flux

Fix a heat scale \(r>0\) and write

```math
t=t_r+r^2s,\qquad x=x_r+ry,
\tag{AFS.1}
```

with the Navier--Stokes scaling

```math
V_r(s,y)=r\,u(t,x),
\qquad
Q_r(s,y)=r^2p(t,x).
\tag{AFS.2}
```

Let the normalized transported annular cutoff be

```math
\eta(s,y)=\phi(t_r+r^2s,x_r+ry).
\tag{AFS.3}
```

Then

```math
\nabla_y\eta=r\,\nabla_x\phi.
\tag{AFS.4}
```

The normalized stress is

```math
T_r=-Q_rI+2\nu S_y(V_r).
\tag{AFS.5}
```

Since

```math
S_y(V_r)=r^2S_x(u),
\tag{AFS.6}
```

we have

```math
T_r=r^2T_x,
\qquad
T_x=-pI+2\nu S_x(u).
\tag{AFS.7}
```

Define the normalized annular stress-work flux by

```math
F_r^{norm}(s)
=
\int V_r\cdot T_r\nabla_y\eta\,dy.
\tag{AFS.8}
```

The corresponding physical flux is

```math
F_r^{phys}(t)
=
\int u\cdot T_x\nabla_x\phi\,dx.
\tag{AFS.9}
```

Using \(dx=r^3dy\), `(AFS.2)`, `(AFS.4)`, and `(AFS.7)`,

```math
F_r^{phys}(t)
=
r^{-1}F_r^{norm}(s).
\tag{AFS.10}
```

Equivalently,

```math
F_r^{norm}(s)=r\,F_r^{phys}(t).
\tag{AFS.11}
```

Differentiating with \(t=t_r+r^2s\) gives

```math
{d\over ds}F_r^{norm}(s)
=
r^3{d\over dt}F_r^{phys}(t).
\tag{AFS.12}
```

Therefore, on one normalized heat interval,

```math
\int_{-1}^{0}\left|{d\over ds}F_r^{norm}(s)\right|\,ds
=
r\int_{t_r-r^2}^{t_r}
\left|{d\over dt}F_r^{phys}(t)\right|\,dt.
\tag{AFS.13}
```

This is the exact scaling law for the rectification clock.

## 2. Consequence for the terminal family

The clock needed by the annular rectification step is

```math
\sum_m
\int_{-1}^{0}
\left|{d\over ds}F_{r_m}^{norm}(s)\right|\,ds
<\infty .
\tag{AFS.14}
```

By `(AFS.13)`, this is the same as

```math
\sum_m
r_m
\int_{t_m-r_m^2}^{t_m}
\left|{d\over dt}F_{r_m}^{phys}(t)\right|\,dt
<\infty .
\tag{AFS.15}
```

Thus the needed theorem can be stated in physical variables, but it is still a
scale-critical terminal theorem.  It says that the total variation of the same
annular stress-work flux, with exactly the heat-scale weight shown in
`(AFS.15)`, is finite over the terminal family.

## 3. Why standard original-data bookkeeping does not produce `(AFS.15)`

Original smooth data gives finite entrance records:

```math
\mathcal P_N^{mat}(0)<\infty
\tag{AFS.16}
```

for every fixed continuation depth \(N\).  Smoothness before the terminal time
also gives finite variation for each fixed preterminal annular flux.

Those facts are not the same as `(AFS.15)`.  The family in `(AFS.15)` changes
scale and approaches the terminal face.  A self-similar heat-scale annular
stress-work event has

```math
F_r^{norm}=O(1),
\qquad
{d\over ds}F_r^{norm}=O(1),
\tag{AFS.17}
```

so `(AFS.12)` gives

```math
{d\over dt}F_r^{phys}=O(r^{-3}).
\tag{AFS.18}
```

Over a physical time interval of length \(r^2\),

```math
\int_{t_r-r^2}^{t_r}
\left|{d\over dt}F_r^{phys}(t)\right|dt
=
O(r^{-1}),
\tag{AFS.19}
```

and multiplying by the heat-scale weight \(r\) returns an order-one normalized
event:

```math
r\int_{t_r-r^2}^{t_r}
\left|{d\over dt}F_r^{phys}(t)\right|dt
=
O(1).
\tag{AFS.20}
```

So the physical scalar flux variation may blow like \(r^{-1}\) on a genuine
terminal heat-scale event while the normalized annular event remains unit-sized.
That is exactly why fixed-annulus absolute continuity does not settle the
terminal Zeno family.

## 4. Relation to physical energy

The transported annular storage obeys

```math
{d\over ds}M_r^{norm}

D_r^{norm}
=
-F_r^{norm}.
\tag{AFS.21}
```

The dissipation scaling is

```math
D_r^{norm}(s)
=
r\,D_r^{phys}(t),
\tag{AFS.22}
```

and hence

```math
\int_{-1}^{0}D_r^{norm}(s)\,ds
=
{1\over r}
\int_{t_r-r^2}^{t_r}D_r^{phys}(t)\,dt.
\tag{AFS.23}
```

Physical energy controls the unweighted physical dissipation

```math
\int D_r^{phys}(t)\,dt,
\tag{AFS.24}
```

which corresponds to the radius-weighted normalized dissipation clock

```math
r\int D_r^{norm}(s)\,ds.
\tag{AFS.25}
```

The same issue appears in the flux-variation form: standard energy gives
storage and dissipation bookkeeping, while the terminal annular no-Zeno route
needs a scale-critical total-variation clock for the full stress-work
transaction.

## 5. Exact pressure-test conclusion

The pay-it-back-later mechanism remains valid and same-fluid:

```math
\text{center storage change}
\le
\text{transported outer-annulus stress/strain history}.
\tag{AFS.26}
```

The rectification notes sharpen that history to signed stress-work plus the
same annular flux-derivative clock.

The current test proves that original smooth entrance data and fixed-annulus
absolute continuity do not by themselves supply the terminal sum

```math
\sum_m
\int_{-1}^{0}
\left|{d\over ds}F_{r_m}^{norm}(s)\right|\,ds
<\infty .
\tag{AFS.27}
```

To close the gold route at this edge, one must prove exactly the same-packet
scale-critical statement

```math
\sum_m
r_m
\int_{t_m-r_m^2}^{t_m}
\left|{d\over dt}F_{r_m}^{phys}(t)\right|\,dt
<\infty ,
\tag{AFS.28}
```

with \(F_{r_m}^{phys}\) the transported annular stress-work flux of the same
fluid history.  This is not a new proxy and not a detached readout; it is
`SignedSmoothSamePacketCommutatorCoercivity.A` written in the rectified
annular-flux language.
