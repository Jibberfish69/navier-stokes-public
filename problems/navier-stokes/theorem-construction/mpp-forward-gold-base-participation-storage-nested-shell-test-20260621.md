---
theorem_id: forward-gold-base-participation-storage-nested-shell-test-20260621
status: direct-nested-shell-test-complete-physical-participation-radius-discounted
logical_landing_node: base_participation_storage_nested_shell_test
edge_effect: "Tests the base participation/body-II storage idea directly on nested heat-scale shells. The coupled pressure-transport-viscosity-incompressibility law gives exact local material accounting: a packet cannot be fed without a shell flux, pressure/transport work, storage change, or viscous loss record. Under heat-scale normalization, however, the physical storage, dissipation, and flux work are all r times the normalized participation records. Thus finite physical material accounting gives a radius-discounted budget, not the unweighted same-carrier terminal modulus needed by FourBodyTerminalTraceAC.A. Fixed positive-radius feeding is ruled out by ordinary physical absolute continuity, but shrinking heat-scale feeding still requires UnweightedMaterialParticipationTraceAC.A, StrictFourBodyNoWasteLyapunov.A, polar saturation, or rigid profile production."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-solution-critical-recurrence-power-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Base Participation Storage Nested-Shell Test

Date: 2026-06-21

## 0. Aim

This note tests the strongest form of the base participation idea:

```math
\boxed{
\text{can the same coupled pressure-viscosity-incompressibility law forbid an
infinite normalized heat-scale feed by itself?}
}
\tag{BPS.1}
```

The test stays inside Body II.  It does not split pressure, viscosity, and
transport into independent suppliers.  The object is the coupled local energy
law, with its storage, dissipation, and shell flux read as one participation
record.

The result is exact:

```math
\boxed{
\text{participation is present and same-solution coupled, but its physical
budget is radius-discounted at heat scale.}
}
\tag{BPS.2}
```

So the direct nested-shell participation test does not close
`FourBodyTerminalTraceAC.A`.  It identifies the precise missing upgrade:
unweighted material participation trace absolute continuity, strict no-waste,
polar saturation, or rigid profile production.

## 1. Physical local participation identity

Let \(u,p\) be a smooth preterminal Navier-Stokes solution and let
\(\eta_r(x)=\eta((x-x_\ast)/r)\).  Set

```math
e_u={1\over2}|u|^2,
\qquad
F_u=(e_u+p)u-\nu\nabla e_u.
\tag{BPS.3}
```

The coupled local energy identity is

```math
\partial_t e_u+\nu|\nabla u|^2+\nabla\cdot F_u=0.
\tag{BPS.4}
```

Define the physical storage, loss, and shell work by

```math
E_r(t)=\int \eta_r^2 e_u(t,x)\,dx,
\tag{BPS.5}
```

```math
D_r(I)=\nu\int_I\int \eta_r^2|\nabla u|^2\,dx\,dt,
\tag{BPS.6}
```

and

```math
J_r(I)=\int_I\int F_u\cdot\nabla(\eta_r^2)\,dx\,dt.
\tag{BPS.7}
```

Then for every preterminal interval \(I=(t_1,t_2]\),

```math
\boxed{
E_r(t_2)-E_r(t_1)+D_r(I)=J_r(I).
}
\tag{BPS.8}
```

This is the base participation law in exact form.  A local packet is not fed
for free: the feed is recorded as storage change, viscous loss, or coupled
pressure-transport-viscosity shell work.

For fixed \(r\ge r_0>0\), ordinary absolute continuity of the physical
integrals gives a terminal modulus on shrinking time intervals.  Fixed positive
radius is not the live enemy.

## 2. Heat-scale rescaling of the same identity

Let

```math
V_r(s,y)=r\,u(T+r^2s,x_\ast+ry),
\qquad
Q_r(s,y)=r^2p(T+r^2s,x_\ast+ry).
\tag{BPS.9}
```

Then \(V_r,Q_r\) satisfy the same normalized Navier-Stokes law:

```math
\partial_sV_r+(V_r\cdot\nabla)V_r+\nabla Q_r
=\nu\Delta V_r,
\qquad
\nabla\cdot V_r=0.
\tag{BPS.10}
```

Set

```math
e_r={1\over2}|V_r|^2,
\qquad
F_r=(e_r+Q_r)V_r-\nu\nabla_y e_r.
\tag{BPS.11}
```

The normalized participation records are

```math
M_r(s)=\int \eta^2e_r(s,y)\,dy,
\tag{BPS.12}
```

```math
D_r^{ren}(I_s)
=
\nu\int_{I_s}\int\eta^2|\nabla_yV_r|^2\,dy\,ds,
\tag{BPS.13}
```

and

```math
J_r^{ren}(I_s)
=
\int_{I_s}\int F_r\cdot\nabla_y(\eta^2)\,dy\,ds.
\tag{BPS.14}
```

They obey

```math
\boxed{
M_r(s_2)-M_r(s_1)+D_r^{ren}((s_1,s_2])
=
J_r^{ren}((s_1,s_2]).
}
\tag{BPS.15}
```

Now compare `(BPS.8)` and `(BPS.15)` on the physical interval
\(I_t=T+r^2I_s\).  Since

```math
u=r^{-1}V_r,
\qquad
p=r^{-2}Q_r,
\qquad
dx\,dt=r^5\,dy\,ds,
\tag{BPS.16}
```

one has the exact scaling laws

```math
\boxed{
E_r(T+r^2s)=r\,M_r(s),
}
\tag{BPS.17}
```

```math
\boxed{
D_r(T+r^2I_s)=r\,D_r^{ren}(I_s),
}
\tag{BPS.18}
```

and

```math
\boxed{
J_r(T+r^2I_s)=r\,J_r^{ren}(I_s).
}
\tag{BPS.19}
```

The flux scaling in `(BPS.19)` is part of the same coupled law:

```math
F_u=r^{-3}F_r,
\qquad
\nabla_x(\eta_r^2)=r^{-1}\nabla_y(\eta^2),
\qquad
dx\,dt=r^5dy\,ds.
\tag{BPS.20}
```

Thus storage, dissipation, and shell work all carry the same radius factor.
This is the exact heat-scale form of participation.

## 3. What physical accounting controls

Let \(r_j\downarrow0\) be a terminal heat-scale chain.  If a normalized unit
strip has order-one participation activity at scale \(r_j\), the physical
record of that strip is order \(r_j\).

In symbols, a family with

```math
D_{r_j}^{ren}((-1,0])\simeq 1
\tag{BPS.21}
```

has physical dissipation size

```math
D_{r_j}((T-r_j^2,T])\simeq r_j.
\tag{BPS.22}
```

The same radius factor applies to storage variation and shell work by
`(BPS.17)` and `(BPS.19)`.

Therefore any physical material accounting argument gives, at best, the
radius-discounted control

```math
\sum_j r_j\,A_j^{ren}<\infty
\tag{BPS.23}
```

or in logarithmic radius \(\sigma=-\log r\),

```math
\int_{\sigma_0}^{\infty} e^{-\sigma}A^{ren}(\sigma)\,d\sigma<\infty.
\tag{BPS.24}
```

The gold reserve requires

```math
\boxed{
\sum_j A_j^{ren}<\infty
\quad\text{or}\quad
\int_{\sigma_0}^{\infty}A^{ren}(\sigma)\,d\sigma<\infty.
}
\tag{BPS.25}
```

The missing factor is exactly \(r_j=e^{-\sigma_j}\).

This is not a defect of the rescaling calculation.  It is the Navier-Stokes
critical scaling.  A dyadic ledger model with \(A_j^{ren}\simeq1\) and physical
cost \(r_jA_j^{ren}\simeq r_j\) has finite physical cost because
\(\sum_jr_j<\infty\).  That model is not asserted to be an actual
Navier-Stokes solution; it is the exact counter-scaling showing why physical
material accounting alone cannot imply `(BPS.25)`.

## 4. Consequence for Thomas's participation law

The participation law is not missing.  The center cannot receive a packet
without the surrounding shell carrying the same coupled pressure-transport-
viscosity record.  Body II proves that.

The issue is scale.  At a fixed positive radius, the physical and normalized
records are comparable.  At heat scale \(r\downarrow0\), the physical amount
paid by one normalized unit of participation is \(r\) times as large.  An
infinite chain can therefore have finite physical participation cost while its
normalized log-scale activity remains unweighted and recurrent.

So the direct participation conclusion is:

```math
\boxed{
\text{same-material nested-shell accounting sees the feed exactly, but it sees
it in the radius-discounted physical currency.}
}
\tag{BPS.26}
```

To close gold, the same coupled law must be upgraded to one of the following
strict statements:

```math
\boxed{
\text{UnweightedMaterialParticipationTraceAC.A}
}
\tag{BPS.27}
```

meaning

```math
\lim_{\theta\downarrow0}\limsup_m
\left(
D_m^{ren}((-\theta,0])
+J_m^{ren,-}((-\theta,0])
+[M_m(-\theta)-M_m(0)]_+
\right)=0,
\tag{BPS.28}
```

or a strict no-waste Lyapunov inequality

```math
\boxed{
-{d\over d\sigma}L_{4B}(\sigma)
\ge
cA_{\rm sel}(\sigma)-R_{\rm legal}(\sigma),
\qquad c>0,
}
\tag{BPS.29}
```

or a charged polar/compactness/geometry defect, or rigid profile production.

## 5. Relation to the four-body program

This note does not weaken the resurrected four-body program.  It clarifies
what it must add beyond physical material accounting.

The four-body atom accounting already proves:

```math
\text{same-carrier oriented four-body exchange}
\Longrightarrow
\int A_{4B}(\sigma)\,d\sigma<\infty
\tag{BPS.30}
```

up to bounded storage and legal residual.

The nested-shell test proves that Body II alone supplies only the signed
participation identity and the radius-discounted physical record.  Therefore
the full loop must supply the missing unweighted term through same-carrier
cycle payment:

```math
\boxed{
dL_{4B}+dD_{4B}+c\,dA_{\rm sel}\le dR_{\rm legal}.
}
\tag{BPS.31}
```

This is exactly `FourBodyStrictSameCarrierCycle.A` or, on the terminal strip,
`FourBodyTerminalTraceAC.A`.

## Verdict

The base participation/nested-shell route was tested directly.

It proves the coupled participation record is real and exact.  It also proves
that physical material accounting alone does not give the unweighted
log-scale reserve.  Heat-scale normalization converts normalized order-one
participation into physical order-\(r\) participation.

The frontier therefore stays inside the upgraded four-body program:

```math
\boxed{
\text{produce unweighted same-carrier four-body cycle payment,}
}
```

or

```math
\boxed{
\text{route the surviving terminal pulse through polar saturation, charged
defect, CM Part/Field consumption, or rigid profile production.}
}
```
