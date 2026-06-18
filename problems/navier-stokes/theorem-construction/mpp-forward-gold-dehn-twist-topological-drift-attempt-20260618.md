# Dehn Twist Topological Drift Attempt

Date: 2026-06-18

Status: useful defect channel; not a closure theorem from installed
Navier-Stokes inputs.  Dehn twists sharpen the annular no-escape readout by
adding an integer mapping-class drift mode.  On a fixed-modulus annular collar,
nonzero twist forces connection/modulation action.  If collar modulus
degenerates, twist can become cheap and must be routed to the collar/modulus
legal ledger.

Role: pursue the missing topological drift channel suggested by the Dehn twist
page and the existing `MinimalZenoTraceNoEscape.A` readout.

## Local model

On an annular collar

```math
A\cong S^1\times[0,1],
\qquad (\theta,t)\in\mathbb R/2\pi\mathbb Z\times[0,1],
\tag{DT.1}
```

the `k`-fold Dehn twist is modeled by

```math
\Theta_k(\theta,t)
=
(\theta+2\pi k\,t,\ t).
\tag{DT.2}
```

It is the identity on both boundary components because `2pi k` is a full
circle rotation, but it changes the way transverse arcs cross the annulus.
This is exactly the kind of drift a boundary-only annular readout can miss.

Thus the complete annular readout in `MinimalZenoTraceNoEscape.A` should
include a topological component

```math
\operatorname{Tw}_{ann}(\mathcal Z)\in\mathbb Z
\tag{DT.3}
```

or, more robustly under weak limits, a twist-action term

```math
\mathcal A_{tw}(\mathcal Z)
:=
\int_A |\alpha-\alpha_{\rm can}|^2\,d\mu,
\tag{DT.4}
```

where `alpha` is the annular frame/connection angle form and `alpha_can` is the
canonical zero-twist gauge on the same boundary data.

## Fixed-collar coercion

On a flat cylinder of length `L`, the representative

```math
\varphi_k(\theta,t)=\theta+{2\pi k\over L}t
\tag{DT.5}
```

has twist derivative

```math
\partial_t\varphi_k={2\pi k\over L}.
\tag{DT.6}
```

Hence the connection/twist action satisfies schematically

```math
\mathcal A_{tw}
\gtrsim
{k^2\over L}.
\tag{DT.7}
```

Equivalently, in annulus language,

```math
|\operatorname{Tw}_{ann}(\mathcal Z)|^2
\lesssim
\operatorname{Mod}(A)\,\mathcal A_{tw}(\mathcal Z).
\tag{DT.8}
```

For bounded modulus, a nonzero Dehn twist has a definite cost.  Therefore a
fixed-collar no-escape theorem may safely add:

```text
AnnularTwistActionLedger.A:
  nonzero annular mapping-class drift is controlled by connection/modulation
  action plus legal collar errors.
```

This is a genuine coercive route, not just terminology.

## Degenerating-collar escape

The estimate `(DT.8)` also shows the escape.  If the collar length/modulus grows
without a legal charge, one unit of twist can cost arbitrarily little:

```math
\mathcal A_{tw}(\Theta_1)\sim {1\over L}\to0.
\tag{DT.9}
```

So Dehn twists do not by themselves close the Zeno branch.  They split it:

```math
\text{twist drift}
\Longrightarrow
\begin{cases}
\text{connection/modulation action cost}, & \text{bounded modulus},\\
\text{collar/modulus degeneration}, & \text{unbounded modulus}.
\end{cases}
\tag{DT.10}
```

The second case must be paid by one of the already exposed collar routes:

```text
CollarCapacityLegalCharge.A
ModulusToSelectedSourceResidence.A
TerminalAnnularBoundaryMassBound.A
AnnularDefectEvacuation.A
```

Without such a modulus ledger, an infinite Zeno cascade could hide one small
twist per scale at summable action cost.

## Relation to Door 2 drift

The current Door 2 drift note reduces zero-flux drift visibility to

```math
\text{CanonicalGaugeCoercivity.A}
+
\text{ModulationForcingNativeProjection.A}
+
\text{NoNeutralModulationLoop.A}.
\tag{DT.11}
```

Dehn twists add a discrete/topological version of the same problem:

```math
\boxed{
\text{MappingClassGaugeCoercivity.A}
+
\text{TwistActionNativeProjection.A}
+
\text{NoNeutralTopologicalLoop.A}.
}
\tag{DT.12}
```

Here `MappingClassGaugeCoercivity.A` fixes a canonical annular marking and
turns twist number into a measured defect.  `TwistActionNativeProjection.A`
says the twist action appears in the stress/source/connection readout.
`NoNeutralTopologicalLoop.A` rules out returning to the same boundary/core data
after a nontrivial interior mapping-class loop at zero readout cost.

This is smaller than `MinimalZenoProfileProduction.A`: it only addresses the
topological part of no-drift.

## Relation to Door 1 carrier pairing

Door 1 needs a source-resolved paired trace

```math
W_m=(x,s,\xi_m,\Sigma_m\xi_m,q_m,e_m)_\#\mu_m.
\tag{DT.13}
```

Dehn twist drift can act on the edge label `e_m` by monodromy around the
annular core.  Then the source carrier may remain on the same annulus while
the donor/counter-edge pairing is transported through a nontrivial twist.

Thus the Door 1 paired-trace package should include:

```text
DonorEdgeMonodromyReadout.A:
  the same-shadow donor edge label has trivial annular monodromy, or its
  monodromy is charged to twist action / legal collar cost.
```

This does not replace `MinimalChainProjectedResidueIdentity.A`.  It prevents a
new way for that identity to fail: the positive source and signed counter-edge
live on the same geometric annulus but in different twist markings.

## Conditional theorem

The precise conditional contribution is:

```math
\boxed{
\begin{aligned}
&\text{AnnularMarkingCompactness.A}
+\text{BoundedModulusOrCollarCharge.A}
+\text{AnnularTwistActionLedger.A}\\
&\quad
\Longrightarrow
\text{TopologicalDriftVisibility.A}.
\end{aligned}
}
\tag{DT.14}
```

where `TopologicalDriftVisibility.A` says:

```math
\operatorname{Tw}_{ann}(\mathcal Z)\ne0
\Longrightarrow
\mathcal A_{\rm conn}(\mathcal Z)
+\Pi_{\rm mod}F^{mod}
+\mathcal D_{\rm legal}
\ne0.
\tag{DT.15}
```

Adding this to the no-escape readout gives the refined implication:

```math
\text{MinimalZenoTraceNoEscape.A}
+
\text{TopologicalDriftVisibility.A}
\Longrightarrow
\text{MinimalZenoTraceDefectVisibility.A with no hidden twist channel}.
\tag{DT.16}
```

## Verdict

Dehn twists contribute.  They do not solve the terminal atom, and they do not
produce Landau-class stationarity.  Their exact use is to expose a missing
topological drift term in the annular readout.

The new live subchannel is:

```math
\boxed{
\text{TopologicalDriftVisibility.A}
}
\tag{DT.17}
```

with children:

```text
AnnularMarkingCompactness.A
BoundedModulusOrCollarCharge.A
AnnularTwistActionLedger.A
DonorEdgeMonodromyReadout.A
```

If these are installed, Dehn-twist drift is no longer an invisible Zeno escape.
If they are not installed, Dehn twists remain a concrete countermodel to any
annular no-escape theorem that uses only boundary traces, endpoint holonomy, or
continuous modulation parameters.
