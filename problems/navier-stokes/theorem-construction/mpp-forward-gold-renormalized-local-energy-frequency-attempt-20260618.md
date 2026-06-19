# Forward-Gold Renormalized Local-Energy Frequency Attempt

Date: 2026-06-18

Status: direct monotonicity/frequency attempt; not closed.  The heat/viscous
part supplies a coercive term only after the nonlinear/pressure contribution
`F_{nl/pr}` is controlled; Navier-Stokes convection and pressure produce the
indefinite terms computed below.  A transported/material weight cancels part of
the convective leakage only under the admissible-adjoint-test hypothesis, while
the pressure-conormal term remains exactly the native flux/source bridge
problem.  No unconditional monotone frequency formula is installed by the
current local-energy package.

## Target

The terminal time-face ledger attempt leaves the need for:

```math
\boxed{
\text{RenormalizedLocalEnergyFrequencyMonotonicity.A}
}
\tag{RF.1}
```

The desired output would be a functional `M(s)` such that

```math
-{d\over ds}M(s)
\ge
c\Big(
\mathcal D_{\rm action}
+
\mathcal D_{\rm source}
+
\mathcal D_{\rm stress}
+
\mathcal D_{\rm scale}
\Big)
-
\mathcal R_{\rm legal}.
\tag{RF.2}
```

Then a terminal source atom could not remain hidden: it would either create a
positive drop in `M` or be routed into a legal residual.

## Gaussian self-similar energy

Use backward self-similar variables around `(T,x_0)`:

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x).
\tag{RF.3}
```

The attempt uses the following rescaled equation

```math
\partial_s v
=
\Delta v
-{1\over2}y\cdot\nabla v
-{1\over2}v
-(v\cdot\nabla)v
-\nabla q,
\qquad
\nabla\cdot v=0.
\tag{RF.4}
```

Let

```math
\rho(y)=(4\pi)^{-3/2}e^{-|y|^2/4},
\qquad
M_0(s)=\int {1\over2}|v|^2\rho\,dy.
\tag{RF.5}
```

The linear heat/Ornstein-Uhlenbeck part is coercive in Gaussian space.  The
estimate this attempt would need is

```math
{d\over ds}M_0(s)
\le
-c_1\int |\nabla v|^2\rho\,dy
-c_2\int |v|^2\rho\,dy
\mathcal F_{\rm nl/pr}(s),
\tag{RF.6}
```

where `\mathcal F_{\rm nl/pr}` is the convection and pressure contribution
computed in `(RF.7)` and `(RF.8)` below.

The obstruction is explicit.  The convection term gives

```math
-\int (v\cdot\nabla)v\cdot v\,\rho\,dy
=
-{1\over2}\int v\cdot\nabla(|v|^2)\rho\,dy
=
{1\over2}\int |v|^2 v\cdot\nabla\rho\,dy
=
-{1\over4}\int |v|^2(v\cdot y)\rho\,dy.
\tag{RF.7}
```

This has no sign.

The pressure term gives

```math
-\int\nabla q\cdot v\,\rho\,dy
=
\int q\,\nabla\cdot(v\rho)\,dy
=
\int q\,v\cdot\nabla\rho\,dy
=
-{1\over2}\int q(v\cdot y)\rho\,dy.
\tag{RF.8}
```

This also has no sign.

Thus the Gaussian self-similar energy is not a Navier-Stokes monotonicity
formula.  It gives a coercive linear core plus the exact nonlinear pressure-flux
terms that have been causing the source/stress readout problem.

## Native local-energy version

The same failure appears in the local energy inequality.  For a backward heat
kernel or cutoff `phi`,

```math
\partial_t\phi+\nu\Delta\phi=0,
\tag{RF.9}
```

the heat-weighted local energy inequality becomes

```math
\int |u|^2\phi(t_2)
+
2\nu\int_{t_1}^{t_2}\int |\nabla u|^2\phi
\le
\int |u|^2\phi(t_1)
+
\int_{t_1}^{t_2}\int (|u|^2+2p)u\cdot\nabla\phi.
\tag{RF.10}
```

The heat part has disappeared exactly as desired.  The remaining term

```math
\int (|u|^2+2p)u\cdot\nabla\phi
\tag{RF.11}
```

is the local-energy flux through the moving/weighted boundary.  It is not
nonnegative and it is not controlled by finite local energy alone.

## Material weight attempt

A better weight tries to follow the flow.  Let `phi` solve the backward
adjoint transport-diffusion equation

```math
\partial_t\phi+u\cdot\nabla\phi+\nu\Delta\phi=0.
\tag{RF.12}
```

Then the `|u|^2 u\cdot\nabla\phi` convection leakage cancels in the
differentiated weighted energy identity, provided the adjoint weight is an
admissible test.  The remaining conditional local energy inequality is

```math
\int |u|^2\phi(t_2)
+
2\nu\int |\nabla u|^2\phi
\le
\int |u|^2\phi(t_1)
+
2\int p\,u\cdot\nabla\phi
+
\text{cutoff/commutator terms}.
\tag{RF.13}
```

This is progress, but not closure.  The pressure-conormal term

```math
2\int p\,u\cdot\nabla\phi
\tag{RF.14}
```

still has no sign.  Controlling it is essentially a pressure-flux trace theorem:

```math
\boxed{
\text{MaterialPressureFluxCoercivity.A}
}
\tag{RF.15}
```

or a pressure-localized version of the native carrier identity:

```math
\boxed{
\text{LocalEnergyFluxNativeResidueIdentity.A}.
}
\tag{RF.16}
```

## Frequency quotient attempt

A frequency quotient would take the rough form

```math
N(s)={D(s)\over M(s)},
\qquad
D(s)=\int |\nabla v|^2\rho\,dy.
\tag{RF.17}
```

For heat, harmonic, or gradient-flow problems, differentiating `N` often yields
a square.  For Navier-Stokes, differentiating `D/M` produces the same pressure
and cubic flux terms as `(RF.7)` and `(RF.8)`, now one derivative higher.  The
system is not self-adjoint after projection, and the pressure is determined
nonlocally by

```math
-\Delta q=\partial_i\partial_j(v_i v_j).
\tag{RF.18}
```

No positive square emerges from the quotient without an additional structural
input that controls the pressure flux.

## Conditional theorem retained

The route would close under either of the following stronger statements:

```math
\boxed{
\text{RenormalizedPressureFluxAbsorption.A}
}
\tag{RF.19}
```

meaning the pressure and cubic flux terms in `(RF.7)`--`(RF.8)` are absorbed by
positive action/source/scale defects plus legal residuals, or

```math
\boxed{
\text{MaterialPressureFluxCoercivity.A}
}
\tag{RF.20}
```

meaning the transported adjoint weight makes the remaining pressure-conormal
term controlled by a positive defect.

With either installed, one could get the desired monotone defect identity:

```math
-{d\over ds}M(s)
\ge
c\mathcal D_{\rm terminal}(s)
-
\mathcal R_{\rm legal}(s).
\tag{RF.21}
```

Current inputs do not supply either theorem.

## Verdict

`RenormalizedLocalEnergyFrequencyMonotonicity.A` does not close from the native
local-energy inequality alone.

The attempted monotonicity formula exposes the real pressure point:

```math
\boxed{
\text{pressure/cubic flux absorption is the missing coercive sign.}
}
\tag{RF.22}
```

This does not make the final transcript pivot wrong.  It makes it precise.  The
right monotonicity object would have to be more than a Gaussian local energy or
a standard frequency quotient.  It must include a pressure/flux correction, a
material adjoint weight, or a new coercive pressure-flux theorem.  Without that,
the terminal time-face atom remains visible but not excluded.
