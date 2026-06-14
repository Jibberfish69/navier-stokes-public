# ESNS.B1 / ESNS.B2 Closure Attempt

## Status

Failed closure attempt for the two corrected-route burdens:

```math
EulerSmoothToNSnuSmooth.A
```

and

```math
NSNonsmoothOnlyAsEulerLimit.A.
```

The corrected route note remains valid as a strategy surface. The two theorem burdens remain open.

## Target 1: `EulerSmoothToNSnuSmooth.A`

Target statement:

```math
Euler\ smooth\ on\ S
\Longrightarrow
NS_\nu\ smooth\ on\ S
\qquad(\forall\nu>0).
```

### Direct attempt

Let `u^E` be the smooth Euler solution and `u^\nu` the fixed-viscosity Navier-Stokes solution with the same initial datum. Set

```math
w=u^\nu-u^E.
```

Then `w` obeys the forced viscous difference equation

```math
\partial_t w+u^E\cdot\nabla w+w\cdot\nabla u^E+w\cdot\nabla w+
\nabla q
=\nu\Delta w+\nu\Delta u^E,
\qquad
\nabla\cdot w=0.
```

For `s>5/2`, the standard `H^s` estimate gives a conditional inequality:

```math
\frac{d}{dt}\|w\|_{H^s}^2
+\nu\|\nabla w\|_{H^s}^2
\le
C_E(t)\|w\|_{H^s}^2
+C_s\|w\|_{H^s}^3
+C\nu^2\|u^E\|_{H^{s+2}}^2.
```

This proves finite-time stability when the right side is controlled, and it supports the usual inviscid-limit logic on intervals where the Euler solution is smooth and the difference remains controlled.

### Obstruction

The estimate uses Euler smoothness only through `C_E(t)` and the forcing term `\nu\Delta u^E`. It still contains the nonlinear difference growth of the Navier-Stokes solution. Closing the estimate for every fixed `\nu>0` and arbitrary large smooth datum requires an a priori Navier-Stokes `H^s` bound, or an already-closed source/receiver theorem such as the live `ACT.KX` / `LCI.A` / source-wall package.

So the direct proof imports the desired positive-viscosity regularity at exactly the step where it must produce it.

### Verdict for target 1

```math
EulerSmoothToNSnuSmooth.A
\quad\text{remains open.}
```

The installed estimates support conditional stability and small-viscosity comparison. They do not close the all-fixed-`\nu>0` theorem.

## Target 2: `NSNonsmoothOnlyAsEulerLimit.A`

Target statement:

```math
NS_\nu\ nonsmooth\ candidate
\Longrightarrow
\nu\to0\text{ boundary or defect-boundary behavior outside fixed-}\nu\text{ NS membership}.
```

### Direct attempt

Use the class-membership witness split:

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

The Part/Field route then tests the terminal candidate through the existing receiver and source-wall surfaces:

```math
ACT.KX,
\quad
LCI.A,
\quad
ACT.X\text{-TopVisc},
\quad
FVR.F,
\quad
SourcePulseExclusion.A,
\quad
ScaleCriticalTreeCarleson.A,
\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

The intended closure is to prove that any surviving terminal candidate loses
effective viscous participation and hence lands only on a `\nu\to0` boundary or
defect-boundary surface outside fixed-positive-viscosity NS membership.

### Obstruction

The existing positive-viscosity surfaces leave a residual fixed-`\nu` region:

```math
\nu>0\text{ coefficient retained}
\quad+
\text{scale-critical receiver/source reserve open}.
```

The raw coefficient `\nu>0` is available, yet the effective packet budget used by the terminal receiver chain can degenerate under scale-critical normalization. The repo has already isolated this in the unconditional viscosity-class separation attempt: coefficient positivity alone does not close `ACT.KX`, and actual dissipative expenditure can vanish on smooth class-member packets.

The zero-effective-budget side also lacks an Euler membership / defect
classification. Terminal compactness can yield source-residue or Zeno objects:

```math
(u_*,p_*,\mu_*^{src}),
\qquad
\mu_*^{src}\ne0,
```

which need a rigid class plus a Liouville theorem before they become usable
zero-budget exits from the fixed-viscosity NS object. The installed route
records this as:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

### Verdict for target 2

```math
NSNonsmoothOnlyAsEulerLimit.A
\quad\text{remains open.}
```

The current surfaces classify many terminal candidates, but they do not exhaust
every fixed-positive-viscosity NS nonsmooth candidate into a `\nu\to0` boundary
or defect-boundary family.

## Consequence for assembly

Since both source burdens remain open, the assembly theorem remains unavailable:

```math
ContrapositiveAssembly.A
\quad\text{awaits}
\quad
EulerSmoothToNSnuSmooth.A
+NSNonsmoothOnlyAsEulerLimit.A.
```

## Reduced next targets

The failed closure reduces the route to four sharp successor targets.

1. Fixed-viscosity comparison closure:

```math
EulerSmoothA\ priori.A:
\quad
Euler\ smooth\ on\ S
\Longrightarrow
\sup_{t\in S}\|u^\nu(t)\|_{H^s}<\infty
\quad(\forall\nu>0).
```

2. Effective viscous anti-degeneration:

```math
EffectiveViscosityRetention.A:
\quad
CM^\nu_{N,r,Q}+\text{terminal packet normalization}
\Longrightarrow
\inf\mathcal V^{\nu,eff}_{\mathcal W}>0.
```

3. Positive-budget receiver closure:

```math
PositiveBudgetACTKX.A:
\quad
\inf\mathcal V^{\nu,eff}_{\mathcal W}>0
\Longrightarrow
ACT.KX.
```

4. Zero-budget cleanup:

```math
ZeroBudgetEulerMember.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

These are the shortest honest theorem targets after the failed closure attempt.
