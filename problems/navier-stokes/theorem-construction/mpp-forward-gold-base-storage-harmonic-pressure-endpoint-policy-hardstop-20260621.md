---
theorem_id: forward-gold-base-storage-harmonic-pressure-endpoint-policy-hardstop-20260621
status: hard-stop-same-terminal-l1-pulse-obstruction-at-next-producer-layer
logical_landing_node: base_storage_harmonic_pressure_endpoint_policy_hardstop
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-endpoint-trace-lp-producer-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-fixed-fourbody-storage-coercivity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-trace-lp-coercivity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-endpoint-measure-moments-direct-attempt-20260621.md
---

# Base Storage / Harmonic Pressure / Endpoint Policy Hard Stop

Date: 2026-06-21

## 0. Purpose

The previous endpoint-trace producer attempt reduced the gold-only route to three new producer obligations:

```math
\texttt{BaseGaugeFixedLocalEnergyStorageWithPaidFlux.A},
```

```math
\texttt{AnnularHarmonicPressureServiceLp.A},
```

and

```math
\texttt{WeightedLegalSelectorSignedGeometryEndpointPolicy.A}.
```

This note tests those obligations directly.  The result is a hard stop: each obligation reduces to the same missing endpoint upgrade from finite measure / \(L_s^1\) control to an \(L_s^p\), \(p>1\), or Hardy-weighted terminal control.  Current four-body storage, harmonic pressure routing, and legal endpoint routing do not provide that upgrade.

## 1. BaseGaugeFixedLocalEnergyStorageWithPaidFlux.A

Enlarge the four-body storage by the gauge-fixed local energy:

```math
M^{gq}_m(s)={1\over2}\int \eta_m^2 |V_m(s)-\langle V_m(s)\rangle_{\eta_m}|^2\,dy,
```

and set

```math
\widetilde L_{4B,m}=L_{4B,m}+M^{gq}_m.
```

This gives storage coercivity tautologically:

```math
M^{gq}_m(s)\le \widetilde L_{4B,m}(s)-L_{4B,m}(s).
```

The cost is the derivative identity:

```math
\partial_s M^{gq}_m+
u\int \eta_m^2|\nabla V_m|^2
=H^{gq}_{m}(s)+G^{gauge}_m(s),
```

where \(H^{gq}_m\) is the same local energy collar/pressure/cutoff trace and \(G^{gauge}_m\) records time-variation of the selected Galilean gauge.

To use this in the Hardy/no-jump route one needs

```math
[H^{gq}_m+G^{gauge}_m]_+\in L_s^p(-1,0),\qquad p>1,
```

or a Hardy moment for the corresponding measure.

Thus base storage enlargement does not independently produce the endpoint reserve.  It moves the missing estimate to the boundary flux of the added storage.  The same terminal pulse

```math
a_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)
```

is compatible with finite storage drop and finite \(L_s^1\) boundary flux, while its \(L_s^p\) norm and Hardy moment blow up.  Therefore:

```math
\boxed{
\texttt{BaseGaugeFixedLocalEnergyStorageWithPaidFlux.A}
\text{ reduces to the endpoint trace }L_s^p\text{ producer.}
}
```

It is circular as an independent closure theorem unless the added boundary flux is already known to have the required \(L_s^p\) / Hardy control.

## 2. AnnularHarmonicPressureServiceLp.A

The harmonic pressure memory trace is

```math
H_m^{p,H}(s)=\int Q_m^H V_m\cdot\nabla(\eta_m^2)\,dy.
```

After Galilean/affine-pressure quotient, the useful term is

```math
\int (Q_m^H-\Pi_{aff}Q_m^H) U_m\cdot\nabla(\eta_m^2)\,dy.
```

Harmonic estimates reduce collar control to annular pressure service:

```math
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_y^{3/2}(collar)}
\le C\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_y^{3/2}(annulus)}.
```

Hence an \(L_s^p\) trace follows from

```math
Q_m^H-\Pi_{aff}Q_m^H\in L_s^aL_y^{3/2}(annulus),\qquad
U_m\in L_s^bL_y^3(collar),\qquad {1\over a}+{1\over b}<1.
```

The local pressure Calderon-Zygmund estimate does not control this harmonic part.  Existing harmonic pressure routing proves the collar pressure-flux is a finite legal/terminal/collar measure.  That gives only \(L_s^1\)-level or measure-level control.

A terminal pulse pressure service

```math
Q_m^H U_m\cdot\nabla\eta_m
\sim a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}
```

has bounded total pressure-flux mass and no uniform \(L_s^p\), \(p>1\), bound.  Therefore:

```math
\boxed{
\texttt{AnnularHarmonicPressureServiceLp.A}
\text{ is a new endpoint pressure-service theorem, not a consequence of current routing.}
}
```

It reduces to the same missing endpoint upgrade: finite pressure-memory flux must become \(L_s^p\) / Hardy-weighted pressure-memory flux.

## 3. WeightedLegalSelectorSignedGeometryEndpointPolicy.A

For each endpoint measure

```math
\Lambda_j\in\{\Lambda_{legal},\Lambda_{sel},\Lambda_{sgn},\Lambda_{term},\Lambda_{geom}\},
```

the Hardy route requires

```math
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_{j,m}(s)<\infty
```

or an absolutely continuous density in \(L_s^p\), \(p>1\).

Current legal/selector/signed/terminal/geometry routing gives visibility and finite mass.  It classifies where the defect lives.  It does not provide the weighted terminal moment.  The same measure pulse

```math
d\Lambda_m=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)\,ds
```

has total mass \(a\) and infinite Hardy moment.

Thus:

```math
\boxed{
\texttt{WeightedLegalSelectorSignedGeometryEndpointPolicy.A}
\text{ is not installed by finite legal routing.}
}
```

It requires an additional endpoint-weighted policy for every non-smooth measure-valued residue in the full packet.

## 4. Hard stop

All three next-layer producers reduce to the same hard obstruction:

```math
\boxed{
\text{finite endpoint measure control does not imply }L_s^p,\ p>1,
\text{ or Hardy-weighted endpoint control.}
}
```

The terminal pulse

```math
a_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),\qquad \tau_m\downarrow0,
```

survives every finite \(L_s^1\) / finite-measure routing statement and defeats every Hardy or \(L_s^p\) endpoint producer.

Therefore the gold-only route is not closed by the current four-body storage, pressure-memory routing, or endpoint legal policy.  A genuine new theorem is required:

```math
\boxed{
\texttt{EndpointLpUpgradeFromFullNSPacket.A}}
```

with content:

```math
\boxed{
\text{the full same-carrier Navier-Stokes packet upgrades every endpoint flux/defect measure from finite mass to }L_s^p,\ p>1,
\text{ or to a Hardy-weighted endpoint moment.}
}
```

Absent that theorem, the forward-gold endpoint no-jump proof stops at the exact terminal \(L^1\)-pulse obstruction.

## 5. Final status of the gold-only chain

The proved chain remains:

```math
\texttt{EndpointLpUpgradeFromFullNSPacket.A}
\Longrightarrow
\texttt{FourBodyEndpointTraceLpProducer.A}
\Longrightarrow
\texttt{TerminalHardyNoWaste.A}
\Longrightarrow
\texttt{FullHodgeStokesEndpointNoJump.A}
\Longrightarrow
\int A_{native}<\infty.
```

The unproved item is exactly the first arrow.

This is a mathematical hard stop for the current installed inputs, not an organizational stop.