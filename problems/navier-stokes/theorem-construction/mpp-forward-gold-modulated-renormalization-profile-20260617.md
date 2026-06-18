# More Fluid Than Laurent: Transseries / Modulated Rescaled-Field Branch

Date: 2026-06-17

Status: new gold investigation branch; not proved.

Role: sharpen the factorial-radius and Laurent-annular line into a
Navier-Stokes-native terminal-radius normal form.  The live object is no longer
a fixed Laurent principal part.  It is a moving scale, moving center,
slowly-drifting rescaled field, and renormalization-flow trajectory.

This is a forward-positive supplier route toward
`TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A`.  It is
not a silver/CM consumption route.

## Source thought

Thomas's refinement is:

```math
\text{Laurent}
<
\text{Puiseux/log expansion}
<
\text{transseries}
<
\text{modulated self-similar profile}
<
\text{renormalization-flow description}.
\tag{MRP.1}
```

The reason is concrete.  A fixed Laurent form would mean an exact leading-order
asymptotic such as

```math
u(t,\cdot)
=(T^*-t)^{-K}u_{-K}
 + o_{X}((T^*-t)^{-K}),
\tag{MRP.2}
```

so the spatial shapes `u_j(x)` are fixed while the singular time approaches.
The annular/Zeno branch is not fixed in that way.  The collapse moves through
space, scale, pressure, viscosity, and source refill at the same time.

The more fluid candidate must be stated as a conditional decomposition, not as
an assumed terminal profile.  For each retained order `N`, the exact statement
has the form

```math
u(t,x)
 =
{1\over \lambda(t)}
\sum_{0\le n\le N} a_n(s)\,
U_n\!\left({x-x(t)\over \lambda(t)}\right)
 + R_N(t,x),
\qquad
\|R_N(t,\cdot)\|_{X_N(t)}\to0,
\qquad
s=-\log(T^*-t),
\tag{MRP.3}
```

with

```math
\lambda(t)\downarrow0.
\tag{MRP.4}
```

Here `x(t)` moves, the scale `\lambda(t)` may pass through a Zeno cascade, and
the coefficients `a_n(s)` may drift rather than freeze into constants.  The
norms `X_N(t)` and the residual estimate are part of the production theorem;
without them `(MRP.3)` is only notation.

## Modulated parabolic blowup variables

The stronger Navier-Stokes form is

```math
u(t,x)
=
{1\over \lambda(t)}
\big[U(y,s)+\varepsilon(y,s)\big],
\qquad
y={x-x(t)\over \lambda(t)},
\qquad
{ds\over dt}={1\over \lambda(t)^2}.
\tag{MRP.5}
```

This uses the Navier-Stokes parabolic normalization: time increments in the
rescaled clock satisfy `ds/dt=lambda(t)^{-2}`, and the velocity amplitude is
normalized by the exact factor `lambda(t)^{-1}` in `(MRP.5)`.

With the modulation convention

```math
\mu(s):={\lambda_s\over\lambda},
\tag{MRP.6}
```

and with `x_s` denoting the center-drift term in rescaled variables, the
rescaled-field equation has the form

```math
\partial_s U
-\nu\Delta_y U
+(U\cdot\nabla_y)U
+\nabla_y P
-{\lambda_s\over\lambda}
\big(U+y\cdot\nabla_y U\big)
-x_s\cdot\nabla_y U
=
\text{modulation/source/error}.
\tag{MRP.7}
```

The exact sign convention for the center term depends on whether `x_s` is
recorded as physical center velocity or rescaled center velocity.  The gold
content is invariant: center motion is an active modulation variable, not a
fixed-location perturbation.

## Zeno representation

This branch can represent

```math
\lambda_1>\lambda_2>\lambda_3>\cdots\downarrow0
\tag{MRP.9}
```

without forcing the terminal behavior into one pole order.  The Zeno endpoint is
read as a trajectory in renormalized state space:

```math
s\to+\infty,
\qquad
(U(s),\lambda(s),x(s),a_0(s),a_1(s),\ldots,\varepsilon(s)).
\tag{MRP.10}
```

Thus factorial-radius collapse becomes

```math
R_{\mathrm{fact}}(t)\downarrow0
\quad\leadsto\quad
\text{escape, convergence, or recurrence in renormalized variables}.
\tag{MRP.11}
```

This is the key improvement over the Laurent branch.  The target is not merely
to kill negative Laurent coefficients.  The target is to classify and exclude
terminal renormalization-flow behavior compatible with the same-solution source
ledger.

## Gold theorem obligations

The branch has four theorem obligations.

### 1. ModulatedProfileProduction.A

```math
\boxed{
\text{terminal factorial-radius collapse plus same-solution annular/Zeno
structure produces a controlled modulated parabolic rescaled field.}
}
\tag{MRP.12}
```

This is the production theorem that the fixed Laurent branch could not honestly
assume.  It must produce `\lambda(t)`, `x(t)`, rescaled components, and an
error `\varepsilon` with quantitative control.  It must also prevent the
failure modes already visible in the Zeno audits:

```math
\text{essential singular behavior, uncontrolled logarithmic drift,
oscillatory scale switching, diffuse parent clouds, lost radiation, or no
compact rescaled-field class.}
\tag{MRP.13}
```

### 2. RenormalizationFlowCompactness.A

```math
\boxed{
\text{the rescaled trajectory has a compact omega-limit set, or else its
escape pays a non-summable terminal cost.}
}
\tag{MRP.14}
```

This is where the gold route should use viscosity, pressure, and the annular
source ledger together.  A terminal atom may try to hide by moving to smaller
and smaller scales.  In the rescaled variables that hiding becomes either:

```math
\text{precompact flow, scale escape, center escape, or radiation escape.}
\tag{MRP.15}
```

The theorem must show that every noncompact alternative pays a cost already
forbidden by the terminal gold ledger.

### 3. NoForwardZenoRenormalizationOrbit.A

```math
\boxed{
\text{there is no nonzero admissible renormalization-flow orbit carrying a
terminal forward source atom.}
}
\tag{MRP.16}
```

This is the replacement for `LaurentPrincipalPartExclusion.A`.  Instead of
excluding only a stationary leading rescaled field, it excludes every admissible
renormalized orbit:

```math
U(s)\not\equiv0
\quad\Longrightarrow\quad
\text{pressure/source/no-incoming/viscous ledger violation}.
\tag{MRP.17}
```

This can be attacked by a Liouville theorem for stationary or periodic
omega-limits, a Lyapunov/entropy theorem for monotone renormalized quantities,
or a rigidity theorem for ancient parabolic rescaled fields generated by the terminal
branch.

### 4. RadiationErrorAbsorption.A

```math
\boxed{
\varepsilon(y,s)
\text{ cannot carry the terminal atom outside the controlled rescaled field.}
}
\tag{MRP.18}
```

This is the error theorem.  Without it, the branch only proves that the main
rescaled field has been normalized, while the residue still hides the terminal
source.
The right estimate should charge `\varepsilon` either to dissipation, source
residence, high-tower radius spend, or annular no-incoming flux.

## Relation to the earlier branch notes

The factorial-radius branch isolates the analytic symptom:

```math
R_{\mathrm{fact}}(t)\downarrow0.
\tag{MRP.19}
```

The Laurent-annular branch records the first rigid normal form:

```math
R_{\mathrm{fact}}(t)\downarrow0
\Longrightarrow
\text{rescaled principal field}
\Longrightarrow
\text{principal field impossible}.
\tag{MRP.20}
```

This modulated branch is the more Navier-Stokes-native continuation:

```math
R_{\mathrm{fact}}(t)\downarrow0
\Longrightarrow
\text{controlled modulated renormalization flow}
\Longrightarrow
\text{no nonzero admissible terminal orbit}.
\tag{MRP.21}
```

So the Laurent note should be treated as an intermediate rung.  The stronger
gold object is `(MRP.21)`.

## What this pushes further

The endpoint classifier changes shape.

The old fixed-principal-part question was:

```math
\text{can a nonzero Laurent principal coefficient survive?}
\tag{MRP.22}
```

The better gold question is:

```math
\boxed{
\text{can a same-solution terminal annular/Zeno branch generate any nonzero
renormalization-flow omega-limit or orbit without violating the terminal
source, pressure, viscosity, or no-incoming ledger?}
}
\tag{MRP.23}
```

If the answer is no, then terminal radius collapse cannot support a time-face
atom.  That would feed directly into `TerminalTimeFaceAntiAtom.A`.

## Working verdict

The transseries / modulated rescaled-field idea is stronger than the Laurent idea for
this lane.

Laurent is useful as a rigid comparison object.  The live gold route should
try to prove controlled modulation and then exclude nonzero renormalized
terminal orbits.  That is the branch capable of seeing a Zeno cascade rather
than only a fixed pole.
