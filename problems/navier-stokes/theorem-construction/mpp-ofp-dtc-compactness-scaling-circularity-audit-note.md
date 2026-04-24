# MPP OFP.A / DTC.A Compactness-Scaling-Circularity Audit Note

## Status

Theorem-facing audit surface.

Role: convert the current structural risk into exact proof obligations for the
receiver-side route

```math
DTC.A_{\mathfrak p}
\Longrightarrow
LCI.A
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A.
\tag{ODC.0}
```

This note does not replace `OFP.A`, `DTC.A`, `LCI.A`, `CSP.A`, or the endpoint
matrix. It records the tests those surfaces must pass before the route can be
read as a proof rather than only as a disciplined architecture.

## Audit License

The direct transported-center package keeps its existing non-smuggling license:

```math
DTC.A_{\mathfrak p}
\text{ cannot cite }
LCI.A,\ LCI.B,\ CSP.A,\ CSP.A_{\delta+\delta_{seg}},\ OFP.A,\ \text{or }Field.
\tag{ODC.1}
```

The one-field theorem keeps its existing branch license:

```math
OFP.A
\text{ may be proved inside a same-fluid still-live family with no visible jump}
\tag{ODC.2}
```

but that hypothesis is only a branch condition. It cannot be replaced by, or
quietly derived from, the endpoint theorem that the route is ultimately trying
to prove.

## Audit Gate `ODC.A`

The `OFP.A / DTC.A` seam passes the audit only if the following five conditions
are all installed with explicit quantifiers.

### `ODC.A1` Same-Family Gate

All transported centers, collars, packet labels, cutoffs, and finite covers used
in `DTC.A`, `LCI.A`, `CSP.A`, and `OFP.A` must live on one fixed same-fluid
still-live family over the interval under discussion.

Allowed:

```math
c_j(t)=\Phi(a^j,t)
\quad\text{with the labels }a^j\text{ fixed before the estimate.}
\tag{ODC.3}
```

Disallowed:

```math
\text{subsequence-dependent relabeling, endpoint-dependent recentering, or a
new cover chosen after a near-exit limit is taken.}
\tag{ODC.4}
```

This is the first compactness risk. A finite cover is harmless only if its
cardinality, radii, and labels are fixed by the pre-output packet data. It is
not harmless if it is refreshed using the coherence or lower-carrier conclusion.

### `ODC.A2` Scaling Gate

The constants in the direct moving-center estimate

```math
\frac{d}{dt}\mathcal Z_{\mathfrak p}^{TC}
+
\nu\mathcal Y_{\mathfrak p}^{TC}
\le
B_{\mathfrak p}^{TC}\mathcal Z_{\mathfrak p}^{TC}
+
F_{\mathfrak p}^{TC}
\tag{ODC.5}
```

must satisfy

```math
B_{\mathfrak p}^{TC},F_{\mathfrak p}^{TC}\in L^1(I)
\tag{ODC.6}
```

with constants depending only on the fixed parameter packet, viscosity, finite
energy/seed data, fixed radii, cutoff constants, and already-licensed bounded
pack gauge.

They may not depend on:

```math
(T_\ast-t)^{-1},\qquad
r_{N,\sigma}^{-1}\text{ when }r_{N,\sigma}\text{ is an }OFP.A\text{ output},
\qquad
\text{unbounded cover multiplicity}.
\tag{ODC.7}
```

This is the scaling-loss risk. A local estimate that closes only after spending
the future coherence scale or an endpoint gap is circular even if every displayed
inequality is locally true.

### `ODC.A3` Direct Pressure/Viscosity Gate

The pressure-center and top-viscous ledgers inside `DTC.A` must be obtained from
the classical equations, the pressure Poisson response, finite energy, bounded
pack gauge, and localized center-ball estimates:

```math
\mathfrak K_{n,\mu,\rho,\psi}^{press,ctr},
\quad
\mathfrak K_{n,\mu,\rho,\psi}^{visc,top,ctr},
\quad
\mathfrak K_{0,\rho,\psi}^{ctr},
\quad
\mathfrak K_{1,\rho,\psi}^{visc,ctr}
\in L^1(I)
\tag{ODC.8}
```

without importing the collar packet, the one-field modulus, or the endpoint
exclusion matrix.

In particular, any local pressure decomposition must expose the source of its
harmonic tail and any moving-cutoff commutator must be estimated before the
lower-carrier output is spent.

### `ODC.A4` One-Field No-Circularity Gate

Inside `OFP.A`, the later positive coherence scale

```math
r_{N,\sigma}>0
\tag{ODC.9}
```

is an output. It cannot be used to supply the pre-`CSP.A` receiver estimates
that are needed to obtain that output.

The already-recorded circularity warning remains binding:

```math
OFP.C3a
\text{ may read enlarged-ball oscillation from a propagated Field regime,}
\tag{ODC.10}
```

but it cannot be used to prove the receiver supplier that `OFP.B4` itself
requires. Any legitimate pre-`CSP.A` path must instead pass through the explicit
packet/reference, segment, and lower-carrier inputs already isolated on disk.

### `ODC.A5` Endpoint Independence Gate

The endpoint package

```math
\mathsf{End}_{NS}
\tag{ODC.11}
```

may be spent only after `CFI.A` has been obtained. Before that point the route
may work inside a branch that assumes no visible jump on the chosen still-live
family, but it cannot use the theorem that no jump, tower blowup, packing
detachment, or cross-entry can occur.

Equivalently:

```math
DTC.A+FCI.5f
\Longrightarrow
LCI.A+CSP.A+OFP.A+CFI.A
\tag{ODC.12}
```

must be proved without any appeal to

```math
END.Exh,\quad END.Field,\quad END.Tower,\quad END.Cross.
\tag{ODC.13}
```

Those objects remain terminal consumers, not suppliers.

## Audit Consequence `ODC.B`

If `ODC.A1`--`ODC.A5` hold, then the seam between the transported-center
receiver package and one-field forward preservation has no detected structural
smuggling. The remaining proof burden is then exactly the positive-estimate
burden already named in the direct transported-center note, plus the separate
source and endpoint blocks:

```math
\boxed{DTC.M\text{-}Linear}
+
\boxed{(FCI.5f)}
+
\boxed{END.Exh+END.TowerAmp+END.Cross}.
\tag{ODC.14}
```

If `(FCI.5f)` is already promoted from the source branch, the receiver-side
analytic residue reduces to

```math
\boxed{DTC.M\text{-}Linear}
\tag{ODC.15}
```

with the endpoint matrix still separate.

## Installed `DTC.M-Linear` Audit Read `ODC.C`

Reading the current direct transported-center package through `ODC.A1`--`ODC.A5`
gives a sharper internal split.

The raw linearized estimate `DTC.LINEAR` is only conditional because its visible
coefficient list still contains the very ledgers supplied downstream by
`EOC.A`, `AFD.A`, and `RCF.A`. Therefore the audit does not license
`DTC.LINEAR` as a closure proof by itself.

The affine-normalized replacement is the right candidate because it removes the
dangerous endpoint `U_1U_q` self-action into the frame equation:

```math
DTC.M\text{-}Affine_{\mathfrak p}
\Longrightarrow
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.PRE_{\mathfrak p}.
\tag{ODC.15a}
```

Under the installed affine-excess route, the current noncircular subtargets are:

```math
ACT.Actr_{\mathrm{core}},
\qquad
AXE.2\ /\ ACT.X\text{-}Press,
\qquad
RWS.A,
\qquad
ACT.X\text{-}Readout.
\tag{ODC.15b}
```

The moving-cutoff atom is structurally favorable because the cutoff sees

```math
u(x,t)-u(c_j(t),t)-A_j(t)(x-c_j(t)),
\tag{ODC.15c}
```

not the full center amplitude. So it is not the first audit failure candidate.

The first compactness-critical object is instead the scheduler

```math
RWS.A:
\quad
\text{finite retained-window cover satisfying the affine small-budget condition}
\Longrightarrow
ACT.X\text{-}Boot.
\tag{ODC.15d}
```

This bridge passes `ODC.A1` and `ODC.A2` only if the retained windows, restart
frames, and small affine-excess budgets are produced from direct pre-output data.
It fails the audit if the window selection uses `LCI.A`, `CSP.A`, `OFP.A`,
`Field`, or an endpoint-exclusion conclusion.

The dedicated scheduler audit
[mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md)
shows that partitioning the `L,F` budget is not the hard part; the missing
input is the restart smallness theorem `RWS.Reset`, unless the route bypasses
the scale-small branch through a non-small `ACT.E2` closure.

Thus the current receiver-side analytic wall is not a vague compactness issue.
It is the precise scheduler/pressure/center-amplitude triad:

```math
\boxed{RWS.A}
+
\boxed{AXE.2\ /\ ACT.X\text{-}Press}
+
\boxed{ACT.Actr_{\mathrm{core}}}
\quad
\text{feeding}
\quad
\boxed{DTC.M\text{-}Affine}.
\tag{ODC.15e}
```

## Failure Diagnostics

If the audit fails, the failure should be recorded in the following precise
form, not as a generic route collapse.

1. Compactness failure:

```math
\text{a cover, center family, cutoff, or parameter set is chosen using an
output of }LCI.A,\ CSP.A,\ OFP.A,\text{ or }Field.
\tag{ODC.16}
```

2. Scaling failure:

```math
B_{\mathfrak p}^{TC}\text{ or }F_{\mathfrak p}^{TC}
\text{ is not }L^1(I)\text{ with endpoint-independent constants.}
\tag{ODC.17}
```

3. Pressure/viscosity supplier failure:

```math
DTC.A_{\mathfrak p}
\text{ imports a collar, coherence, or endpoint conclusion to bound one of its
center ledgers.}
\tag{ODC.18}
```

4. One-field circularity failure:

```math
OFP.A
\text{ uses its propagated positive coherence scale to prove the receiver
packet that supplies that same propagation.}
\tag{ODC.19}
```

5. Endpoint circularity failure:

```math
\mathsf{End}_{NS}
\text{ is used before }CFI.A.
\tag{ODC.20}
```

## Route Position

This audit supports the current judgment that the route is structurally serious
but not yet a completed proof. It sharpens the danger point rather than changing
the route:

```math
\text{receiver-side substance}
\Longleftrightarrow
\text{noncircular proof of }DTC.M\text{-}Linear
\text{ with }ODC.A1\text{--}ODC.A5.
\tag{ODC.21}
```

No new fourth receiver theorem is introduced here. The note only makes explicit
the conditions under which the existing `DTC.A -> LCI.A -> CSP.A -> OFP.A`
assembly is allowed to be read as a valid proof spine.
