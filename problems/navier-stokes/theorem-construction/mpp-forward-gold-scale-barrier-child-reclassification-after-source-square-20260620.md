# MPP Forward-Gold Scale-Barrier Child Reclassification After Source-Square

Date: 2026-06-20

## Status

Route-reclassification audit complete.  This note does not solve the
Navier-Stokes MPP.  It repairs the scale-barrier frontier after the later
strict-low, moving-spill, high-high, and source-square notes.

The older parent list

```math
\text{strict-low}
\quad+\quad
\text{threshold spill}
\quad+\quad
\text{lifted mesoscopic flux}
\quad+\quad
\text{high-high}
```

is no longer the sharp live list.  After the checked child notes, the fixed
classical scale-barrier route has one genuine remaining analytic family:

```math
\boxed{
\text{lifted middle-band/far-corona reserve}
}
```

together with the global control of the weighted-carrier coefficient that the
spill and near-corona pieces now spend.

## 1. Proof role

The scale-barrier route is a forward-gold supplier on the fixed classical
dyadic surface.  Its job is to produce a high-frequency tail bound such as

```math
\sup_n \int_0^T T_N^{(n)}(t)\,dt
\le
C 2^{-2\delta N}.
```

The retained damping version uses

```math
D_N(t)\ge c_{\rm LP}2^{2N}T_N(t),
```

so the bare Gronwall exponential is not the final obstruction once the
dissipative term is kept.  The real burden is the transport-defect estimate
that feeds the damped inequality on the same family.

## 2. Strict-low is no longer an independent child

The direct fixed-cutoff strict-low theorem failed because the inherited kernel
bound produces a coefficient too large for the tail damping.

The proportional split changes the object.  The deep-low region

```math
k\le {4\over5}j-\Gamma
```

is absorbed directly into the viscous term after choosing the fixed gap
\(\Gamma\).  The leftover region

```math
{4\over5}j-\Gamma<k<j-4
```

is a shallow mesoscopic band.  It is the dyadic face of the lifted middle-band
flux problem, not a separate global low-mode coefficient theorem.

Thus the strict-low child is reclassified as:

```math
\text{deep-low paid}
\quad+\quad
\text{shallow-low folded into lifted middle-band flux}.
```

## 3. Threshold spill is paid only on the weighted-carrier surface

The direct energy-only spill collar estimate remains false as a standalone
coefficient-free tail theorem.  The theorem-facing spill note proves the
coefficient-bearing estimate

```math
\sum_{j\ge N}|SP_j(t)|
\le
\varepsilon\nu D_N(t)
+
C_{\varepsilon,M,\nu}\Theta_N^\sharp(t)E_N(t),
```

and hence

```math
\sum_{j\ge N}|SP_j(t)|
\le
\varepsilon\nu D_N(t)
+
C_{\varepsilon,M,\nu}\widetilde\Lambda_N^\sharp(t)E_N(t).
```

So threshold spill is not independently closed by energy.  It is absorbed by
the route only after the surrounding scale-barrier package is allowed to spend
the weighted-carrier term

```math
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt.
```

The coefficient-free spill theorem remains stronger than the installed input
and is not used as a proved child.

## 4. Scale-side high-high is paid on the current surface

The genuine scale-side high-high packet is reduced to a near-diagonal cubic
dyadic tail:

```math
\mathfrak H_N^{scale,HH}(t)
\le
C\sum_{j\ge N-M}2^j\|\Delta_j u(t)\|_2^3.
```

The energy bound gives the missing small factor:

```math
2^j\|\Delta_j u\|_2^3
=
\left(2^{2j}\|\Delta_j u\|_2^2\right)
\left(2^{-j}\|\Delta_j u\|_2\right)
\le
C_E^{1/2}2^{-N+M}
2^{2j}\|\Delta_j u\|_2^2.
```

For \(N\) large enough this yields

```math
\sup_n\int_0^T\mathfrak H_N^{scale,HH}[u^{(n)}](t)\,dt
\le
{\eta\nu\over2}\int_0^T D_N^{(n)}(t)\,dt.
```

This pays the scale-side high-high child after the packet reduction has been
audited on the same surface.  It does not by itself prove every gradient-side
or enstrophy-bridge high-high statement in the repository.

## 5. Lifted middle-band flux is the remaining analytic child

The lifted residual repair reduces the high-side remainder to a coupled
stress-strain flux estimate:

```math
\sup_n
\int_0^T \Pi_N^{lift,\mathrm{dy}}[u^{(n)}](t)\,dt
\le
\eta\nu\sup_n\int_0^T D_N^{(n)}(t)\,dt
+
C_0 2^{-2\delta N}.
\tag{L-Flux}
```

After the strict-low proportional split, the shallow-low band belongs inside
this same lifted/middle-band theorem.

The middle-band split gives:

```math
\Pi_N^{mid}
=
\Pi_N^{mid,near}
+
\Pi_N^{mid,far}.
```

The near-corona term is a moving-spill packet modulo collar.  The installed
moving-spill result pays it on the weighted-carrier surface:

```math
\int_0^T\Pi_N^{mov\text{-}spill}(t)\,dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt
+
C_{\varepsilon,L,\nu}
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt.
```

The far-corona term is the only remaining nonlocal child.  The checked direct
routes reduce it to one of:

```math
\text{FarCoronaTwoScaleCarleson.A},
\qquad
\text{CTS},
\qquad
\text{ResidualSourceBalancedLPAS.A},
\qquad
\text{SourceSquareReserve.A}.
```

The raw unrenormalized LPAS theorem is not a valid supplier: the exact smooth
shear counterexample shows that heat-decaying modes with zero nonlinear source
can violate the raw active-square bill.  The live dyadic fallback is the
residual/source-balanced LPAS object after exact heat decay, through-flow,
legal losses, and paid dissipation have been removed.

The fixed-band endpoint survivor is not independent after the source-square
dominance and pass-or-CM-exit notes.  It is a source-square pass branch or a CM
Part/Field face exit after the selected branch is admitted to the CM
readout.

## 6. Sharp current scale-barrier statement

The scale-barrier transport defect is now governed by the schematic inequality

```math
\int_0^T\mathcal F_N(t)\,dt
\le
\eta\nu\int_0^T D_N(t)\,dt
+
C\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt
+
\mathcal R_N^{far}
+
C_0 2^{-2\delta N},
```

where:

```math
\mathcal R_N^{far}=0
```

after a genuine far-corona/CTS/residual-LPAS/source-square reserve is proved, and
otherwise the selected endpoint failure must be routed through the installed
CM Part/Field face machinery rather than kept as an unclassified
scale-barrier child.

Thus the parent frontier should no longer list four equal live children.  The
exact remaining alternatives are:

```math
\boxed{
\text{weighted-carrier control}
\quad+\quad
\text{far-corona/source-square reserve}
}
```

or the admitted failure branch becomes a CM Part/Field readout.

## Boundary

This reclassification prevents stale blocker multiplication.  It does not
prove the missing weighted-carrier control, does not prove the far-corona
reserve, and does not turn the CM readout side into a forward-gold smoothness
proof.  The mathematical effect is narrower: the scale-barrier branch now has
one exposed analytic reserve wall instead of four repeatedly respawned child
names.
