# TerminalAnnularStressCurrentCompactness.A Stress-Current Balance Attempt

Date: 2026-06-18

Status: conditional compactness theorem only.  The installed Navier-Stokes
compactness package does not prove the required moving-current trace passage,
current realization, curvature control, orientation noncancellation, or
zero-defect stationarity.  This sharpens the Door 1 and Door 2 blockers; it
does not close either door.

Role: audit the stress-current balance for the terminal annular flux functional

```math
\Phi_n(\ell)
:=
\int_{T_n}
\ell\cdot\bigl(u_n\otimes u_n+p_nI-\nu\nabla u_n\bigr)n_n\,d\mu_n .
\tag{TASC.1}
```

The point is not to reprove finite vector selection.  The finite vector stress
residue is already available in the Door 1 packet.  The question here is
whether the current/varifold framework passes the stress flux through the
terminal limit without losing it into oscillation, frame curvature,
boundary/cutoff terms, or endpoint trace concentration.

This note incorporates the 2026-06-18 six-agent audit of the upgraded target:

```math
\boxed{\text{TerminalAnnularStressCurrentCompactness.A}.}
\tag{TASC.0}
```

The target is not a Weingarten theorem.  Weingarten identities are only the
smooth local chart inside a larger package:

```math
(T_n,\mu_n,n_n,h_n,\omega_n,\Phi_n),
\tag{TASC.0a}
```

where `T_n` is an oriented annular current, `mu_n` is the mass/varifold measure,
`n_n` is the approximate normal or orientation field, `h_n` is generalized
second fundamental form when available, `omega_n` is the moving-frame
connection, and `Phi_n` is the stress flux.

The proposed theorem must survive weak limits.  Its useful content is a
compactness/defect alternative, not a smooth-surface identity.

## Conditional theorem

Let

```math
\Sigma_n:=u_n\otimes u_n+p_nI-\nu\nabla u_n
\tag{TASC.2}
```

and let `T_n` be the selected oriented annular current with mass measure
`\mu_n` and normal `n_n`.  For each fixed vector `\ell`, define

```math
\Phi_n(\ell)
:=
\int_{T_n}\ell\cdot\Sigma_n n_n\,d\mu_n .
\tag{TASC.3}
```

A subsequential limit and honest stress-current split follow under the
following extra hypotheses.

1. Oriented current compactness.  The vector measures `n_n\mu_n` are locally
tight and converge to `n_\ast\mu_\ast`, the masses have no hidden collar loss,
the boundary currents either converge or have vanishing/legal mass, and the
moving frames/cutoffs have a controlled first-variation limit.

2. Stress normal-trace compactness.  The normal traces of
`\Sigma_n` on `T_n` exist and the vector measures
`(\Sigma_n n_n)\mu_n` have locally bounded total variation.  Equivalently, the
surface traces satisfy a compactness package strong enough to pass
`u_n\otimes u_n`, `p_nI`, and `\nabla u_n` against the moving singular measures
`n_n\mu_n`.

3. Surface product control.  Either

```math
u_n|_{T_n}\to u_\ast|_{T_\ast}
\quad\text{strongly in }L^2(d\mu_n),
\tag{TASC.4}
```

or the lost product is retained as an explicit surface Reynolds defect.

4. Pressure and viscous conormal trace control.  The measures

```math
p_n\,n_n\mu_n,
\qquad
(\nabla u_n)n_n\mu_n
\tag{TASC.5}
```

converge after subtracting the accepted pressure gauges.  Weak bulk
`L^{3/2}` pressure convergence and weak bulk `L^2` gradient convergence are
not enough to pair with moving codimension-one annular currents.

5. Terminal trace compactness or a terminal anti-atom modulus.  The endpoint
time face must satisfy strong trace convergence, or a modulus such as

```math
\mu_n^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_n(1),
\qquad
\omega_R(\varepsilon)\downarrow0,
\tag{TASC.6}
```

or an equivalent reverse-Holder/super-`L^1_t` native-source estimate.  Without
this, a terminal trace measure can survive while spacetime compactness holds.

Under those hypotheses, after a subsequence,

```math
\Phi_n(\ell)\to\Phi_\ast(\ell)
\tag{TASC.7}
```

and the limit has the decomposition

```math
\begin{aligned}
\Phi_\ast(\ell)
&=
\int_{T_\ast}
\ell\cdot
\bigl(u_\ast\otimes u_\ast+p_\ast I-\nu\nabla u_\ast\bigr)n_\ast
\,d\mu_\ast\\
&\quad
+D_{\mathrm{osc}}(\ell)
+D_{\mathrm{tr}}^{p,\nabla u}(\ell)
+D_{\mathrm{curv/frame}}(\ell)
+D_{\mathrm{bd/cut}}(\ell).
\end{aligned}
\tag{TASC.8}
```

Here `D_osc` is the surface product/Reynolds defect, `D_tr^{p,\nabla u}` is the
pressure and viscous conormal trace defect, `D_curv/frame` is the defect created
by moving frames, normals, and current first variation, and `D_bd/cut` is the
boundary, collar, time-face, and cutoff leakage.

If all four defect terms are legal or vanish, then the annular stress flux
passes to the native limit stress current.

## Proof attempt

For smooth approximants and smooth annular cutoffs `\chi_n` whose gradients
represent the oriented annular current, the flux can be written as

```math
\Phi_n(\ell)
=
-\int \Sigma_n:\nabla(\chi_n\ell)
+B_n(\ell),
\tag{TASC.9}
```

where `B_n` contains the boundary and cutoff faces not represented by the
chosen current.  This is the same distributional stress computation that gives
the vector point-force residue when the annulus collapses.

The conditional compactness proof is then a measure compactness argument.
The trace bound on `(\Sigma_n n_n)\mu_n` gives a weak-* convergent subsequence.
Adding and subtracting the limit stress on the limit current splits the
subsequence limit into the native limit stress current plus the four defect
classes in `(TASC.8)`.

The quadratic term passes without `D_osc` only with strong surface-trace
convergence.  Bulk strong `L^2_{loc}` convergence is enough for fixed smooth
test functions, but the sequence `\nabla\chi_n` is a moving singular annular
test.  A concentration can be invisible to the bulk distributional passage and
visible to `T_n`.

The pressure and viscous terms require their own normal trace compactness.
The pressure is only a bulk `L^{3/2}` object in the installed compactness
package, and `\nabla u_n` is only weak bulk `L^2`.  Neither has a stable
restriction to a moving codimension-one current without extra trace theory.

The frame/current terms are also real.  Passing from a cutoff annulus to a
varifold/current limit introduces first-variation, curvature, changing-normal,
and chart-frame terms.  These are legal only after a uniform geometry and
boundary/collar ledger has made their total contribution vanish or land in an
already paid defect channel.

Thus `(TASC.8)` is the best conditional balance available from this route.

## Installed-input audit

The installed compactness surfaces give, on fixed backward cylinders, local
suitable compactness:

```math
u_n\to u_\ast \text{ strongly in }L^2_{loc},
\qquad
\nabla u_n\rightharpoonup\nabla u_\ast \text{ weakly in }L^2_{loc},
\qquad
p_n\rightharpoonup p_\ast \text{ weakly in }L^{3/2}_{loc}.
\tag{TASC.10}
```

They also allow Radon source-residue limits.  This is enough to pass the
Navier-Stokes equation and the quadratic term against fixed smooth compact
tests.  It is not enough to pass the stress against the moving annular current
in `(TASC.1)`.

The missing installed hypotheses are exactly:

```text
MovingStressNormalTrace.A:
  existence and compactness of normal traces of
  (u_n tensor u_n + p_n I - nu grad u_n) on T_n.

SurfaceL2TraceCompactness.A:
  strong L2 trace convergence of u_n on the selected annular currents, or an
  explicit retained surface Reynolds defect.

PressureConormalTraceCompactness.A:
  convergence of p_n n_n mu_n after gauge normalization.

ViscousConormalTraceCompactness.A:
  convergence of (grad u_n)n_n mu_n as a surface measure or conormal trace.

FrameCurvatureLedger.A:
  controlled first variation / curvature / changing-frame contribution for
  the current or varifold limit.

BoundaryCutoffNoLoss.A:
  vanishing or legal routing of annular boundary, collar, time-face, and cutoff
  leakage.

TerminalNativeSourceTraceContinuity.A:
  endpoint trace compactness or a temporal anti-atom / reverse-Holder /
  super-L1_t modulus for the selected native source carrier.
```

The older terminal trace notes show why the last item cannot be skipped:
local Radon compactness admits a terminal measure

```math
d\mu_\ast^{src}(y,s)=\rho(y)\,dy\otimes\delta_{s=0}.
\tag{TASC.11}
```

That measure is exactly the possible time-face trace defect.  A current or
varifold limit can expose it, but does not make it vanish.

## Door 1 consequence

This attempt does not close Door 1.

It proves only the following conditional sharpening:

```math
\begin{aligned}
&\text{MovingStressNormalTrace.A}
+\text{SurfaceL2TraceCompactness.A}
+\text{PressureConormalTraceCompactness.A}\\
&\quad
+\text{ViscousConormalTraceCompactness.A}
+\text{FrameCurvatureLedger.A}
+\text{BoundaryCutoffNoLoss.A}\\
&\Longrightarrow
\text{TerminalAnnularStressCurrentCompactness.A}
\text{ with split }(TASC.8).
\end{aligned}
\tag{TASC.12}
```

Even after `(TASC.12)`, the output is still a vector/signed stress-current
residue.  Door 1 needs the same-family positive native carrier:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[\mathcal N_{preCauchy}^{loc}(u;P)\right]_+
\,dxdt .
\tag{TASC.13}
```

The conversion from the vector stress-current residue to `(TASC.13)` is still
`ProjectedLocalPreCauchyResidueIdentity.A` before minimality, and
`MinimalChainProjectedResidueIdentity.A` after the minimal Zeno donor-chain
reduction.  The stress-current framework can make the lost residue visible; it
does not identify that residue with the selected positive native pre-Cauchy
carrier.

So the stress-current passage sharpens the blocker as:

```math
\boxed{
\text{stress-current trace compactness and defect visibility}
}
\quad+\quad
\boxed{
\text{native positive carrier identification}
}
\tag{TASC.14}
```

The first box is conditional under the hypotheses above.  The second box is the
same Door 1 wall already isolated by the projected local pre-Cauchy and terminal
signed-saturation notes.

## Six-agent audit result

The upgrade is mathematically meaningful, but it does not solve the gold
obstruction from installed inputs.

### Stage 1: current precompactness

The abstract GMT step is valid:

```math
\sup_n \mathbf M(T_n)<\infty,
\qquad
\sup_n \mathbf M(\partial T_n)<\infty,
\qquad
\operatorname{spt}T_n\Subset K
\Longrightarrow
T_{n_j}\to T_\ast
\tag{TASC.15}
```

in flat/current topology after passing to a subsequence.

For the Navier-Stokes terminal annular packet this is only conditional.  The
repo does not currently derive:

```text
CurrentRealization.A
TerminalAnnularCurrentMassBound.A
TerminalAnnularBoundaryMassBound.A
TerminalAnnularSupportNormalization.A
```

The legal/collar/source ledgers track proof charges.  They are not yet a true
geometric current mass and boundary mass bound.

### Stage 2: varifold curvature compactness

The abstract varifold step is also valid under new hypotheses.  If the selected
annular surfaces define rectifiable varifolds with mass tightness and

```math
\sup_n\int |H_n|^2\,d\mu_n<\infty
\quad\text{or}\quad
\sup_n\int |dn_n|^2\,d\mu_n<\infty,
\tag{TASC.16}
```

then subsequential varifold compactness and curvature-defect measures follow.

This is not installed as a Navier-Stokes estimate.  Bulk strain, vorticity,
pressure, and viscous-stress controls do not directly control curvature of the
selected moving annular packet surfaces.  The missing bridge is a
surface-generation law plus moving trace/Hessian/nondegeneracy control.  In the
current notation this is part of:

```text
FrameCurvatureLedger.A.
```

### Orientation cancellation

The pair `(T_n,\mu_n,n_n\mu_n)` is not enough to prevent hidden cancellation.
It gives only

```math
\eta\ll\mu,
\qquad
\left|{d\eta\over d\mu}\right|\le 1,
\tag{TASC.17}
```

where `eta` is the weak limit of `n_n mu_n`.  Oppositely oriented sheets can
cancel in `T_n` and `eta_n` while `mu_n` retains positive carrier mass.

The direct countermodel is recorded in
`mpp-oriented-varifold-no-hidden-cancellation-attempt-20260618.md`.

The smallest valid noncancellation theorem is conditional:

```math
\boxed{
\text{PairedOrientationCompactness.A}
+
\text{PolarSaturationOnSelectedCarrier.A}
\Longrightarrow
\text{OrientedVarifoldNoHiddenCancellation.A}.
}
\tag{TASC.18}
```

Without polar saturation, or the Door 1 equivalent
`TerminalSignedSaturation.A`, orientation cancellation can hide the selected
positive terminal carrier.

### Stress-current passage

The stress-current balance `(TASC.8)` is conditional on moving singular trace
control.  Installed local-suitable compactness passes fixed smooth tests.  It
does not pass

```math
\bigl(u_n\otimes u_n+p_nI-\nu\nabla u_n\bigr)n_n\,d\mu_n
\tag{TASC.19}
```

against moving annular currents.

The missing trace inputs are:

```text
MovingStressNormalTrace.A
SurfaceL2TraceCompactness.A
PressureConormalTraceCompactness.A
ViscousConormalTraceCompactness.A
BoundaryCutoffNoLoss.A
TerminalNativeSourceTraceContinuity.A
```

With those inputs, the route produces a visible signed/vector stress-current
residue.  It still does not identify that residue with the selected positive
native pre-Cauchy carrier.

### Defect-to-ledger routing

`DefectToLedgerRouting.A` is not installed.

The routable defects are only those already identified as pressure, projection,
cutoff, collar, boundary, or off-family legal losses.  The stress defect returns
to Door 1 and still needs

```math
\text{ProjectedLocalPreCauchyResidueIdentity.A}
\tag{TASC.20}
```

before minimality, or

```math
\text{MinimalChainProjectedResidueIdentity.A}
\tag{TASC.21}
```

after the minimal terminal Zeno donor-chain reduction.

The source defect returns to the native positive source / donor-chain
obstruction, not to a generic legal ledger.

The smallest honest replacement is:

```math
\text{MinimalZenoTraceDefectVisibility.A}
+
\begin{cases}
\text{MinimalChainProjectedResidueIdentity.A}, & \Phi_\ast\ne0,\\
\text{MinimalZenoProfileProduction.A}, & \Phi_\ast=0
\end{cases}
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A}.
\tag{TASC.22}
```

### Zero-defect branch

A compact zero-defect stress-current limit with zero point-force flux is not
yet a Landau-class profile.  It may still have nonzero renormalized time motion
or neutral modulation:

```math
\partial_sU-\nu\Delta U+(U\cdot\nabla)U+\nabla P
=
F^{mod}.
\tag{TASC.23}
```

Thus this package can contribute to `AnnularDefectEvacuation.A`, but it does
not prove:

```text
ZenoNoDriftUniqueTangent.A
ZeroFluxDriftVisibility.A
SingleBubbleCanonicalGauge.A
RenormalizedActionFinite.A
RenormalizedZenoStationarity.A
```

The Landau/Sverak consumer remains conditional on producing an exact
stationary, `(-1)`-homogeneous, smooth-sphere, zero-force profile.

## Final audited frontier

The upgraded framework replaces the vague terminal trace/defect language by a
precise stress-current compactness package.  Its installed-input status is:

```math
\boxed{
\text{TerminalAnnularStressCurrentCompactness.A}
\text{ is conditional, not proved from current NS inputs.}
}
\tag{TASC.24}
```

The abstract GMT sublemmas are useful but conditional.  The live mathematical
obstructions are:

```text
CurrentRealization.A
TerminalAnnularCurrentMassBound.A
TerminalAnnularBoundaryMassBound.A
FrameCurvatureLedger.A
MovingStressNormalTrace.A
SurfaceL2TraceCompactness.A
PressureConormalTraceCompactness.A
ViscousConormalTraceCompactness.A
PolarSaturationOnSelectedCarrier.A / TerminalSignedSaturation.A
DefectToLedgerRouting.A
RenormalizedActionFinite.A
```

After minimal donor-chain accounting, this collapses to the sharper gold
frontier:

```math
\boxed{
\text{MinimalZenoTraceDefectVisibility.A}
+
\left(
\text{MinimalChainProjectedResidueIdentity.A}
\ \text{or}\
\text{MinimalZenoProfileProduction.A}
\right).
}
\tag{TASC.25}
```

So the GMT/current upgrade is the right language, but its present role is a
visibility engine.  It does not yet pay the terminal source atom or produce the
stationary zero-force profile.
