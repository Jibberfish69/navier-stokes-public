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

This is the first compactness risk. A finite cover is legitimate only when its
cardinality, radii, and labels are fixed by the pre-output packet data. It is
not legitimate if it is refreshed using the coherence or lower-carrier
conclusion.

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
ACT.X\text{-}Scale,
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

The first compactness-critical object is instead the scale seed

```math
ACT.X\text{-}Scale:
\quad
\text{retained smooth center-ball regularity}
\Longrightarrow
\exists R_a>0:\mathcal X^{exc}(s_a;R_a)\le\eta_X.
\tag{ODC.15d}
```

This bridge passes `ODC.A1` and `ODC.A2` only if the retained smooth
center-ball admission and radius choice are produced from direct pre-output
data. It fails the audit if the seed selection uses `LCI.A`, `CSP.A`,
`OFP.A`, `Field`, or an endpoint-exclusion conclusion.

The dedicated scheduler audit
[mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md)
shows that partitioning the `L,F` budget is not the hard part; the live input
is the scale-small seed theorem `ACT.X-Scale`, unless the route bypasses the
scale-small branch through a non-small `ACT.E2` closure.

Thus the current receiver-side analytic wall is not a vague compactness issue.
It is the precise scheduler/pressure/center-amplitude triad:

```math
\boxed{ACT.X\text{-}Scale}
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

## Averaged Replacement Gate

The 2026-04-26 audit splits the receiver route into two typed branches.

The old branch is a retained local smoothness / center-ball forcing
certificate:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX.
\tag{ODC.15f}
```

It is clean only if retained center-ball smoothness is an allowed input. It is
not a proof of point-center pressure or viscous forcing from finite energy,
bounded pack gauge, same-fluid geometry, and pressure Poisson structure alone.

The finite-energy-native branch must instead target the averaged packet:

```math
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{\mathrm{avg}}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{\mathrm{avg}}
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
\Longrightarrow
CFI.A_{\mathrm{avg}}
\Longrightarrow
End_{NS,\mathrm{avg}}.
\tag{ODC.15g}
```

The old pointwise object is separated as a later readout theorem:

```math
DTC.Read:
\qquad
DTC.A_{\mathrm{avg}}
+
\text{fixed-scale finite same-fluid cover}
+
ATD_m^\varepsilon
\Longrightarrow
DTC.A.
\tag{ODC.15h}
```

Thus `DTC.A` cannot be spent inside the proof of `SCF_avg^m`, `AACT.KX`, or
`DTC.A_avg`. Likewise `DTC.A_avg` cannot feed the endpoint tower packet as
pointwise `DTC.A` outside the fixed-scale finite-cover readout `DTC.Read`.

Similarly, `OFP.A_avg` supplies `Field_avg`, not the old pointwise `Field`.
The averaged class-membership object is

```math
CM_{\mathrm{avg}}
=
Pack\wedge Part\wedge Field_{\mathrm{avg}}.
\tag{ODC.15h1}
```

Old `CFI.A` is recovered only after

```math
Field.Read:
\qquad
Field_{\mathrm{avg}}
+\text{uniform positive-scale SCF-good finite cover}
+ATD_m^\varepsilon
\Longrightarrow Field
\qquad
\text{or}
\qquad
CM.Read:\ CM_{\mathrm{avg}}\Longrightarrow CM.
\tag{ODC.15h2}
```

Old `End_NS` is recovered only after

```math
READ.END:
\qquad
End_{NS,\mathrm{avg}}+Field.Read^\varepsilon+DTC.Read^\varepsilon
\Longrightarrow
End_{NS}.
\tag{ODC.15h3}
```

The corresponding direct audit gate is:

```math
\boxed{
\text{allowed global inputs}
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\text{ with the required scheduler-integrable tower packet off }\mathcal B_{\varepsilon_m}^{\Phi}
}
\tag{ODC.15i}
```

with no use of `LCI.A`, `CSP.A`, `OFP.A`, `Field`, endpoint exclusion,
retained point-center smoothness, or subsequential compactness chosen after
the target output.

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

6. Averaged-readout failure:

```math
DTC.A_{\mathrm{avg}}
\text{ is treated as pointwise }DTC.A
\text{ before }DTC.Read^\varepsilon\text{ is proved.}
\tag{ODC.20a}
```

7. Retained-smoothness smuggling failure:

```math
RSCB.NKF,\ NKF.Point,\text{ or point pressure-center smoothness}
\text{ is used inside the finite-energy-native }SCF_{\mathrm{avg}}^m\text{ route.}
\tag{ODC.20b}
```

8. Averaged class-membership readback failure:

```math
CFI.A_{\mathrm{avg}}
\text{ is treated as old }CFI.A
\text{ before }Field.Read^\varepsilon\text{ or }CM.Read\text{ is proved.}
\tag{ODC.20c}
```

9. Averaged endpoint readback failure:

```math
End_{NS,\mathrm{avg}}
\text{ is treated as old }End_{NS}
\text{ before }READ.END\text{ is proved.}
\tag{ODC.20d}
```

## Route Position

This audit supports the current judgment that the route is structurally serious
but not yet a completed proof. It sharpens the danger point and changes the
finite-energy-native receiver target:

```math
\text{receiver-side substance}
\Longleftrightarrow
\text{noncircular proof of }SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon\to SCF_{\mathrm{avg}}^m\to AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}\to DTC.A_{\mathrm{avg}}
\to AVG.RCV.A\to LCI.A_{\mathrm{avg}}
\text{ with }ODC.A1\text{--}ODC.A5\text{ and }ODC.15i.
\tag{ODC.21}
```

The retained pointwise assembly remains available only on the retained-smooth
branch. The finite-energy-native assembly must carry `DTC.A_avg` until
`DTC.Read` is separately proved, and must carry `CFI.A_avg` until
`Field.Read` or `CM.Read` is separately proved. It must carry `End_NS_avg`
until `READ.END` is separately proved.

## Conditional Unified-Survivor Packet Interface

The unified-survivor conditional theorem packet audit
[mpp-unified-survivor-conditional-theorem-packet-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-unified-survivor-conditional-theorem-packet-audit-note.md)
uses this seam as one of its load-bearing atoms. Its receiver export is valid
only in the `ACT.KX` ordering:

```math
ACT.X\text{-Cut}
+ACT.X\text{-Press}
+ACT.X\text{-MidRaw}
+ACT.X\text{-TopVisc}
+ACT.X\text{-Scale}
+RWS.C_{\mathrm{scale}}
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{ODC.22}
```

So the packet may say that a standalone fixed-scale `RWS.Reset` is not the
chosen route, but it may not erase the scale-seed and readout-compatibility
burdens `ACT.X-Scale` and `RWS.C_scale`.

For the averaged branch, the corresponding receiver export is:

```math
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
X_R\in L^\infty,\quad
N_R\in L^1,\quad
\mathcal K_{\le m}^{avg,R}\in L^1,
\tag{ODC.23}
```

followed by

```math
AACT.KX+RWS.C_{\mathrm{scale}}
\Longrightarrow
DTC.A_{\mathrm{avg}},
\tag{ODC.24}
```

then

```math
DTC.A_{\mathrm{avg}}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{\mathrm{avg}}
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
\Longrightarrow
CFI.A_{\mathrm{avg}}
\Longrightarrow
End_{NS,\mathrm{avg}},
\tag{ODC.25}
```

not by pointwise `DTC.A` unless `DTC.Read` is present, and not by old `CFI.A`
unless `Field.Read` or `CM.Read` is present. The next hard averaged endpoint
cell is `END.Exh_avg`, since it supplies the endpoint grammar for averaged
class failure.
