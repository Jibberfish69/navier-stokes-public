# Forward-Gold Pressure Flux Absorption Attempt

Date: 2026-06-18

Status: direct pressure-flux attempt; not closed.  The pressure/convection flux
can be estimated in the usual local-energy currencies, but it has no sign and
cannot be absorbed coercively without smallness, a pressure-trace theorem, or a
new material-pressure cancellation principle.

## Target

The renormalized frequency attempt reduces the monotonicity obstruction to:

```math
\boxed{
\text{RenormalizedPressureFluxAbsorption.A}
}
\tag{PFA.1}
```

or, for material adjoint weights,

```math
\boxed{
\text{MaterialPressureFluxCoercivity.A}.
}
\tag{PFA.2}
```

The pressure term has the model form

```math
\mathcal P_\phi
:=
\int p\,u\cdot\nabla\phi.
\tag{PFA.3}
```

The desired coercive estimate would be something like

```math
|\mathcal P_\phi|
\le
\epsilon\,\mathcal D_{\rm positive}
+
C_\epsilon\,\mathcal R_{\rm legal},
\tag{PFA.4}
```

where `mathcal R_legal` is already finite/summable on the terminal branch, or
else a signed identity that makes `mathcal P_phi` part of a positive square.

## Standard estimate

On a local annulus or compact cylinder,

```math
|\mathcal P_\phi|
\le
\|\nabla\phi\|_{L^\infty}
\|p\|_{L^{3/2}}
\|u\|_{L^3}.
\tag{PFA.5}
```

The local pressure decomposition gives

```math
p
=
R_iR_j(u_i u_j)
+
p_{\rm harm},
\tag{PFA.6}
```

so

```math
\|p-p_{\rm harm}\|_{L^{3/2}}
\lesssim
\|u\|_{L^3}^2.
\tag{PFA.7}
```

Thus the nonlinear pressure flux is controlled by a cubic velocity currency:

```math
|\mathcal P_\phi^{nl}|
\lesssim
\|\nabla\phi\|_{L^\infty}
\|u\|_{L^3}^3.
\tag{PFA.8}
```

This is useful for local estimates, but it is not coercive.  It is a bound by a
critical flux currency, not a positive term with a sign.

## Young absorption only works with smallness

The usual interpolation gives, schematically on a cylinder,

```math
\|u\|_{L^3}^3
\lesssim
E^{3/4}D^{3/4}
\quad
\text{up to scale factors}.
\tag{PFA.9}
```

Young's inequality can produce

```math
\|u\|_{L^3}^3
\le
\epsilon D
+
C_\epsilon E^3,
\tag{PFA.10}
```

or a comparable scale-normalized version.  This absorbs pressure flux only when
the remaining energy/cubic currency is already controlled in the terminal
schedule.  Current inputs do not supply that control.  The terminal Zeno branch
is precisely a scale-critical concentration branch.

So `(PFA.10)` is not a no-waste theorem.  It moves the problem to a
scale-critical energy/cubic reserve:

```math
\boxed{
\text{ScaleCriticalCubicFluxReserve.A}
}
\tag{PFA.11}
```

which is not installed.

## Harmonic pressure and boundary data

The harmonic pressure piece is worse for coercivity.  It is determined by data
outside the local annulus and contributes

```math
\mathcal P_\phi^{harm}
=
\int p_{\rm harm}u\cdot\nabla\phi.
\tag{PFA.12}
```

This term can be estimated by local pressure decompositions and boundary
ledgers, but it has no sign.  Absorbing it requires a conormal pressure-trace
theorem:

```math
\boxed{
\text{PressureConormalTraceAbsorption.A}.
}
\tag{PFA.13}
```

That theorem is exactly one of the missing bridges exposed by the
current/varifold and local-energy audits.

## Material weight does not fix pressure

For a material adjoint weight satisfying

```math
\partial_t\phi+u\cdot\nabla\phi+\nu\Delta\phi=0,
\tag{PFA.14}
```

the convective `|u|^2u` leakage can be reduced, but the pressure term remains:

```math
2\int p\,u\cdot\nabla\phi.
\tag{PFA.15}
```

The weight follows the velocity field, not the nonlocal pressure projection.
No sign is created.  The pressure term still needs `(PFA.13)` or a new
pressure-corrected functional.

## Verdict

`RenormalizedPressureFluxAbsorption.A` and
`MaterialPressureFluxCoercivity.A` do not close from current inputs.

The strongest honest reduction is:

```math
\boxed{
\text{pressure/cubic flux absorption}
\Leftarrow
\text{ScaleCriticalCubicFluxReserve.A}
+
\text{PressureConormalTraceAbsorption.A}.
}
\tag{PFA.16}
```

Neither child is installed.

Thus the renormalized monotonicity route is not dead, but its missing ingredient
is no longer vague.  A successful functional must contain either:

1. a pressure-corrector that cancels `(PFA.3)`;
2. a conormal pressure trace theorem charging `(PFA.12)`;
3. a scale-critical cubic reserve strong enough to absorb `(PFA.8)`;
4. or a structural class where the pressure flux has a sign or vanishes.

Without one of these, the local-energy/frequency functional sees the terminal
atom but cannot coerce it away.
