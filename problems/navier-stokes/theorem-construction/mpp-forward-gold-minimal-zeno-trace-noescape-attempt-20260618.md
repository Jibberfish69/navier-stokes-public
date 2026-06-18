# MinimalZenoTraceNoEscape.A Attempt

Date: 2026-06-18

Status: conditional no-escape theorem proved as an abstract annular
observability skeleton.  It is not installed from the current Navier-Stokes
inputs.  The useful gain is that `MinimalZenoTraceDefectVisibility.A` is no
longer just a compactness slogan: it can be reduced to a concrete complete
annular readout estimate plus carrier-realization and residual-absorption
bridges.

Role: incorporate the YMG collar no-escape pattern into the forward-gold
terminal Zeno source problem.

The transferable object is the collar scheme

```math
\text{complete collar readout}=0
\Longrightarrow
\text{hidden state}=0,
\tag{NEX.1}
```

upgraded by compactness and high-frequency estimates into

```math
|B_{\rm ann}\mathcal Z|+\mathcal D_{\rm legal}
\ge c|\mathcal Z|.
\tag{NEX.2}
```

It is not the YMG mass-gap conclusion.

## Minimal package and readout

Let the normalized terminal annulus be

```math
A:=\{r_-<|y|<r_+\}\subset\mathbb R^3\setminus\{0\}.
\tag{NEX.3}
```

The minimal terminal Zeno package is written

```math
\mathcal Z=(T,\mu,n,h,\omega,U,P,\Phi,\mu^{src}),
\tag{NEX.4}
```

where `T` is the oriented annular current, `mu` its mass/packet measure, `n`
the normal or orientation field, `h` the curvature object when defined, `omega`
the frame connection, `U,P` the renormalized velocity and pressure, `Phi` the
stress-flux residue, and `mu^{src}` the selected native source trace/residue.

The complete annular readout proposed by the YMG-transfer note is

```math
B_{\rm ann}\mathcal Z
:=
\left(
\gamma_-U,\gamma_+U,
\mathcal T_-U,\mathcal T_+U,
\operatorname{Hol}_{\partial}\mathcal Z,
\partial T,
\operatorname{Tr}_{src}\mathcal Z
\right),
\tag{NEX.5}
```

with conormal stress traces

```math
\mathcal T_\pm U
:=
\left(U\otimes U+PI-\nu\nabla U\right)n_\pm .
\tag{NEX.6}
```

The norm `|\mathcal Z|_Z` cannot be raw geometric mass alone.  A pure ghost
annulus with `U=0`, zero source, zero stress flux, and arbitrary auxiliary
parametrization would defeat any NS estimate.  The norm must be the terminal
defect norm: current/geometry counts only through carrier realization,
stress/source trace, curvature ledger, or modulation action.

Thus the correct no-escape target is:

```math
\boxed{
|B_{\rm ann}\mathcal Z|_Y+\mathcal D_{\rm legal}
\ge c_{\rm noesc}|\mathcal Z|_Z .
}
\tag{NEX.7}
```

Here `D_legal` contains already paid pressure, cutoff, collar, projection,
finite-donor, pair-weight, and boundary spill costs.

## Abstract conditional theorem

The following theorem is the precise import of the collar no-escape scheme.

Assume:

1. Annular no-loss:

```math
c_0|\mathcal Z|_Z
\le
|R_{\rm ann}\mathcal Z|_{\rm col}
+\mathcal D_{\rm legal}.
\tag{NEX.8}
```

2. Low-mode injectivity.  For the finite-dimensional sector

```math
E_R:=\operatorname{Ran}\Pi_{\le R}\cap Z_{\rm ann},
\tag{NEX.9}
```

the complete readout has trivial kernel:

```math
Z_L\in E_R,\quad B_{\rm ann}Z_L=0
\Longrightarrow
Z_L=0.
\tag{NEX.10}
```

Equivalently, by finite-dimensional compactness,

```math
|Z_L|_Z\le C_R|B_{\rm ann}Z_L|_Y.
\tag{NEX.11}
```

3. High-mode collar observability.  For `Z_H:=\Pi_{>R}Z`,

```math
|Z_H|_Z
\le
\varepsilon_R|Z|_Z
+C_{\rm hf}|B_{\rm ann}Z|_Y
+C_{\rm res}|\operatorname{Res}_{ann}(Z)| .
\tag{NEX.12}
```

This is the high-frequency Stokes/collar estimate after commuting the
projection with the readout.

4. Residual absorption:

```math
|\operatorname{Res}_{ann}(Z)|
\le
\varepsilon |Z|_Z
+C_{\rm read}|B_{\rm ann}Z|_Y
+\mathcal D_{\rm legal}.
\tag{NEX.13}
```

5. The low/high split is compatible with the readout:

```math
|B_{\rm ann}Z_L|_Y
\le
|B_{\rm ann}Z|_Y
+C_B|Z_H|_Z .
\tag{NEX.14}
```

If `R` and the collar scale are chosen so that

```math
(1+C_RC_B)\,(\varepsilon_R+C_{\rm res}\varepsilon)<1/2,
\tag{NEX.15}
```

then

```math
|Z|_Z
\le
C\left(
|B_{\rm ann}Z|_Y+\mathcal D_{\rm legal}
\right).
\tag{NEX.16}
```

### Proof

Write `Z=Z_L+Z_H`.  By `(NEX.11)` and `(NEX.14)`,

```math
|Z_L|_Z
\le
C_R|B_{\rm ann}Z|_Y+C_RC_B|Z_H|_Z.
\tag{NEX.17}
```

By `(NEX.12)` and `(NEX.13)`,

```math
|Z_H|_Z
\le
(\varepsilon_R+C_{\rm res}\varepsilon)|Z|_Z
C'|B_{\rm ann}Z|_Y
C_{\rm res}\mathcal D_{\rm legal}.
\tag{NEX.18}
```

Adding `(NEX.17)` and `(NEX.18)` gives

```math
|Z|_Z
\le
C''|B_{\rm ann}Z|_Y
C''\mathcal D_{\rm legal}
(1+C_RC_B)(\varepsilon_R+C_{\rm res}\varepsilon)|Z|_Z.
\tag{NEX.19}
```

The smallness condition `(NEX.15)` absorbs the last term and proves
`(NEX.16)`.

This part is real.  It is a standard finite-dimensional kernel plus
high-frequency residual absorption argument.

## What the abstract theorem actually buys

If `(NEX.8)-(NEX.14)` are installed, then

```math
\text{MinimalZenoTraceNoEscape.A}
\Longrightarrow
\text{MinimalZenoTraceDefectVisibility.A}.
\tag{NEX.20}
```

A nonzero minimal terminal Zeno defect must appear in at least one component of
the complete annular readout:

```math
\gamma_\pm U,\quad
\mathcal T_\pm U,\quad
\operatorname{Hol}_{\partial}\mathcal Z,\quad
\partial T,\quad
\operatorname{Tr}_{src}\mathcal Z.
\tag{NEX.21}
```

That is exactly the shared Door 1 / Door 2 hinge.  The nonzero stress/source
readout returns to Door 1 through `MinimalChainProjectedResidueIdentity.A`.
The zero-stress, zero-source, zero-boundary branch returns to Door 2 through
`MinimalZenoProfileProduction.A`.

## Installed-input audit of the hypotheses

The theorem above is conditional.  Each input has a separate Navier-Stokes
bridge burden.

### 0. Boundary readout alone fails

The annular readout cannot be only a two-face boundary readout.  On a fixed
annulus `A`, choose a nonzero divergence-free field

```math
U_k\in C_c^\infty(A),
\qquad
\|U_k\|_{H^1(A)}=1,
\tag{NEX.20a}
```

for instance a high spherical-harmonic toroidal field with compact radial
cutoff away from both boundary components.  Set `P_k=0` and

```math
F_k=-\nu\Delta U_k .
\tag{NEX.20b}
```

Then all two-face velocity and conormal traces vanish:

```math
\gamma_-U_k=\gamma_+U_k=\mathcal T_-U_k=\mathcal T_+U_k=0,
\tag{NEX.20c}
```

but the interior state is nonzero.  Thus a true no-escape estimate requires one
of the following:

```text
ExactAnnularEquation.A:
  the relevant interior residual is zero in the annular defect class,

or

FullInteriorResidualCharge.A:
  the residual/source norm is included in the readout/legal charge at the same
  frequency and scale.
```

This is why `(NEX.12)` and `(NEX.13)` are not decorative.  They are the
mechanism that prevents an interior forced packet from being invisible to the
collar faces.

### 1. Annular no-loss

`(NEX.8)` requires:

```text
CurrentRealization.A
TerminalAnnularCurrentMassBound.A
TerminalAnnularBoundaryMassBound.A
CarrierRealizationNoGhost.A
```

The current repo tracks legal/collar/source costs, but it does not yet prove
that the selected terminal packet produces a normalized current whose mass and
boundary mass represent the terminal source/stress carrier without ghost
geometry.

This is the first real bridge.  Without it, the annular readout can control a
smooth annular field while the selected native carrier lives in a separate
bookkeeping object.

### 2. Low-mode kernel

For the velocity-pressure part, the low-mode kernel is plausible and standard:
on a fixed smooth annulus, a finite-dimensional set of Stokes/linearized-NS
modes with zero two-face Dirichlet and conormal data has zero velocity, after
fixing the pressure gauge.

The full package kernel is sharper.  Zero velocity readout does not kill
`T,mu,n,h,omega` unless those objects are tied to the NS carrier.  Thus the
actual low-mode kernel statement must be:

```math
Z_L\in E_R,\quad B_{\rm ann}Z_L=0,\quad
\text{carrier realization holds}
\Longrightarrow
Z_L=0.
\tag{NEX.22}
```

Without carrier realization, a low-mode ghost current is a countermodel.

### 3. High-mode collar estimate

For a fixed annulus and a linear Stokes operator, the velocity part has a
reasonable coercive estimate of the form

```math
\|U\|_{H^1(A)}
\|P\|_{L^2(A)/\mathbb R}
\lesssim
\|\operatorname{Res}_{Stokes}(U,P)\|_{H^{-1}(A)}
\|\gamma U\|_{H^{1/2}(\partial A)}.
\tag{NEX.23}
```

With smoother norms one can include conormal traces and separate high modes.
This is an elliptic boundary estimate, not a Navier-Stokes terminal source
estimate by itself.

For the nonlinear annular Zeno package, `(NEX.12)` needs:

```text
AnnularStokesCauchyResidualEstimate.A
ProjectionReadoutCommutatorBound.A
NonlinearRemainderSmallOnMinimalCollar.A
SurfaceTraceNormCompatibility.A
ExactAnnularEquation.A / FullInteriorResidualCharge.A
```

The dangerous term is not the formal Stokes estimate.  The dangerous term is
whether the selected terminal positive source appears in the residual/readout
norm being estimated.  Compactly supported interior Stokes residuals are the
simple countermodel to any boundary-only version.

### 4. Residual absorption

The needed residual estimate is:

```math
|\operatorname{Res}_{preCauchy}(\mathcal Z)|
\le
\varepsilon|\mathcal Z|_Z
+C|B_{\rm ann}\mathcal Z|_Y
+\mathcal D_{\rm legal}.
\tag{NEX.24}
```

This is not installed.  It is essentially the local native-source trace
identity in no-escape form.  The same obstruction appears under the Door 1
names:

```text
ProjectedLocalPreCauchyResidueIdentity.A
MinimalChainProjectedResidueIdentity.A
TerminalSignedSaturation.A
```

The annular estimate can expose a residual.  It does not automatically identify
the exposed residual with the selected positive native carrier after weighting,
lifting, projection, positive-part extraction, and selector choice.

### 5. Readout compatibility

The readout contains traces on moving annular currents.  The current installed
compactness package passes fixed smooth tests.  It does not install:

```text
MovingStressNormalTrace.A
SurfaceL2TraceCompactness.A
PressureConormalTraceCompactness.A
ViscousConormalTraceCompactness.A
TerminalNativeSourceTraceContinuity.A
```

These are exactly the trace bridges isolated by the stress-current note.

## Six coercive candidates under the no-escape lens

The six surface-geometry candidates are useful, but they become coercive only
after a bridge to the selected NS carrier.

### Candidate 1: Gauss map / `L^2` curvature

Desired bridge:

```math
\int_A |dn|^2\,d\mu
\quad\text{or}\quad
\int_A |h|^2\,d\mu
\lesssim
\text{viscous/stress/source ledger}.
\tag{NEX.25}
```

For material surfaces the smooth identities have the schematic form

```math
D_t n=-P_T(\nabla U)^Tn,
\qquad
D_t h=\nabla_\Sigma((\nabla U)^Tn)+h*\nabla U.
\tag{NEX.26}
```

The first identity controls rotation of normals by `grad U`, not curvature of
normals on the surface.  The second requires tangential derivatives of
`grad U`, hence Hessian or conormal trace control.  The installed energy gives
bulk `grad U` control, not a moving-surface `grad^2 U` trace or a nondegenerate
surface-generation law.

Countermodel: a smooth low-energy flow can be paired with highly wrinkled
diagnostic surfaces unless the selected packet surfaces are material or
level-set surfaces tied to `U` with quantitative nondegeneracy.  Thus
Gauss-map curvature is not yet an NS-controlled currency.

Missing bridge:

```text
MaterialSurfaceCurvatureTraceCoercivity.A
SurfaceGenerationNondegeneracy.A
HessianOrConormalTraceLedger.A
```

### Candidate 2: current mass and boundary mass

Federer-Fleming compactness is coercive once

```math
\sup_n{\bf M}(T_n)+\sup_n{\bf M}(\partial T_n)<\infty.
\tag{NEX.27}
```

The NS packet route still has to prove that the selected terminal annulus is a
real integral current with bounded multiplicity, bounded boundary mass, and no
loss between terminal carrier mass and collar current mass.

Countermodel: two oppositely oriented sheets can cancel the current while the
unsigned carrier remains, or many same-fluid sheets can stack with bounded
signed flux but unbounded unsigned carrier.

Missing bridge:

```text
BoundedMultiplicitySelectedPacketCurrent.A
TerminalAnnularBoundaryMassBound.A
PolarSaturationOnSelectedCarrier.A
```

### Candidate 3: annulus modulus / extremal length

Modulus detects necking and collar degeneration.  It becomes useful only when a
degenerating annulus forces a legal cutoff/collar/source cost:

```math
\operatorname{Mod}(A_n)\to0\ \text{or}\ \infty
\Longrightarrow
\mathcal D_{\rm collar}+\mathcal D_{\rm cutoff}
\ge c.
\tag{NEX.28}
```

This is plausible for chosen cutoffs, since bad modulus raises the cost of
separating inner and outer faces.  It does not by itself rule out the terminal
time layer

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
\tag{NEX.29}
```

whose total mass stays finite while time support collapses.  A modulus ledger
must be tied to source residence or stress readout to touch the real atom.

Missing bridge:

```text
ModulusToSelectedSourceResidence.A
CollarCapacityLegalCharge.A
```

### Candidate 4: connection / holonomy

Holonomy is the right readout for rotation and frame drift:

```math
\operatorname{Hol}_{\partial}\mathcal Z=0
\tag{NEX.30}
```

can remove some hidden moving-frame loops.  It does not see translations,
scale-schedule drift, selector switching, or symmetry-tangent rotations unless
the gauge is canonical and the modulation equations project onto native
stress/source tests.

Missing bridge:

```text
CanonicalGaugeCoercivity.A
ModulationForcingNativeProjection.A
NoNeutralModulationLoop.A
```

This matches the checked Door 2 drift surface.

### Candidate 5: Gauss-Codazzi weak compatibility

Gauss-Codazzi can expose incompatible weak limits of `(g,h,\omega)`.  It is a
defect-visibility tool:

```math
\text{weak Gauss-Codazzi failure}
\Longrightarrow
\text{curvature/connection defect measure}.
\tag{NEX.31}
```

It is not automatically a Navier-Stokes cost.  It needs `L^2` curvature or
connection-action control first, then a routing theorem sending the defect to a
legal ledger or to the annular readout.

Missing bridge:

```text
WeakGaussCodazziDefectMeasure.A
ConnectionDefectToLedgerRouting.A
FrameCurvatureLedger.A
```

### Candidate 6: Gauss-Bonnet / boundary curvature

Gauss-Bonnet gives signed accounting:

```math
\int_\Sigma K+\int_{\partial\Sigma}k_g=2\pi\chi(\Sigma).
\tag{NEX.32}
```

The terminal source problem needs positive or total-variation control.  Signed
curvature can cancel exactly like signed stress flux can cancel.  Gauss-Bonnet
is useful only after one-sided curvature, bounded topology/multiplicity, and
boundary ledger compatibility are proved.

Missing bridge:

```text
OneSidedBoundaryCurvatureCharge.A
TopologyMultiplicityBound.A
BoundaryCurvatureToCollarLedger.A
```

## Consequence for the live frontier

The YMG-transfer note genuinely improves the shape of the problem.  It gives a
workable central theorem:

```math
\boxed{
\text{MinimalZenoTraceNoEscape.A}
\Rightarrow
\text{MinimalZenoTraceDefectVisibility.A}.
}
\tag{NEX.33}
```

The no-escape skeleton itself is proved above, conditional on the four
substantive NS bridges:

```text
CarrierRealizationNoGhost.A
AnnularStokesCauchyResidualEstimate.A
ResidualPreCauchyAbsorption.A
MovingAnnularReadoutTraceCompactness.A
```

Expanded into existing names, those are:

```math
\begin{aligned}
&\text{CurrentRealization.A}
+\text{TerminalAnnularCurrentMassBound.A}
+\text{TerminalAnnularBoundaryMassBound.A}\\
&+\text{MovingStressNormalTrace.A}
+\text{SurfaceL2TraceCompactness.A}
+\text{PressureConormalTraceCompactness.A}
+\text{ViscousConormalTraceCompactness.A}\\
&+\text{MinimalChainProjectedResidueIdentity.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A}.
\end{aligned}
\tag{NEX.34}
```

Thus the collar scheme does not solve the terminal atom by itself.  It gives
the right coercive architecture: a nonzero minimal terminal Zeno defect must
pay through complete annular readout, and the only way that statement fails is
through one of the concrete missing bridges above.

## Current status

`MinimalZenoTraceNoEscape.A` is now a conditional theorem with a complete
low/high proof skeleton.  From installed NS inputs, it remains open at the
carrier and residual bridges.  The most promising next attack is not a new
global compactness package; it is the narrower pair

```math
\boxed{
\text{CarrierRealizationNoGhost.A}
}
\qquad
\boxed{
\text{ResidualPreCauchyAbsorption.A}
}
\tag{NEX.35}
```

because those are the exact places where a controlled annular field still has
to become the selected positive native source/stress carrier.
