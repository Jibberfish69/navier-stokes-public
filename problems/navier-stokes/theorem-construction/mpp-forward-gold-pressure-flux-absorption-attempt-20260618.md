# Forward-Gold Pressure Flux Absorption Attempt

Date: 2026-06-18

Status: direct pressure-flux attempt; not closed.  The pressure/convection flux
is bounded by the Holder/CZ pressure estimate and local-cylinder interpolation,
but it has no sign and leaves the explicit `tau E_I^3` reserve after Young
absorption.  It cannot be absorbed coercively without smallness, a
pressure-trace theorem, or a new material-pressure cancellation principle.

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

## Holder-pressure estimate

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
C_{\rm CZ}
\|u\|_{L^3}^2.
\tag{PFA.7}
```

Thus the nonlinear pressure flux is controlled by a cubic velocity currency:

```math
|\mathcal P_\phi^{nl}|
C_{\rm CZ}\,
\|\nabla\phi\|_{L^\infty}
\|u\|_{L^3}^3.
\tag{PFA.8}
```

This is useful for local estimates, but it is not coercive.  It is a bound by a
critical flux currency, not a positive term with a sign.

## Young absorption only works with smallness

On a local cylinder `I x B`, set
`E_I:=sup_{t in I}\|u(t)\|_{L^2(B)}^2`, `D_I:=\int_I\|\nabla u(t)\|_{L^2(B)}^2dt`,
and `tau:=|I|`.  Sobolev interpolation and Holder in time give

```math
\int_I\|u(t)\|_{L^3(B)}^3dt
\le
C_S^{3/2}\tau^{1/4}E_I^{3/4}D_I^{3/4}.
\tag{PFA.9}
```

Young's inequality can produce the fixed-cutoff estimate

```math
\int_I\|u(t)\|_{L^3(B)}^3dt
\le
\epsilon D_I
+
C_\epsilon \tau E_I^3,
\tag{PFA.10}
```

For the moving terminal packet, the pressure/convection flux also carries
\(\|\nabla\phi_r\|_\infty\).  With
\(\phi_r(x)=\phi((x-x_m)/r)\), the estimate actually used by the terminal
packet is

```math
\|\nabla\phi_r\|_\infty
\int_I\|u(t)\|_{L^3(B_r)}^3dt
\le
\epsilon D_I
+
C_{\epsilon,\phi}\|\nabla\phi_r\|_\infty^4\tau E_I^3 .
\tag{PFA.10a}
```

Since \(\|\nabla\phi_r\|_\infty\simeq r^{-1}\), the remaining term is

```math
C_{\epsilon,\phi}r^{-4}\tau E_I^3.
\tag{PFA.10b}
```

For a critical heat-scale profile, \(E_I\simeq r\) and \(\tau\simeq r^2\), so
`(PFA.10b)` is of size \(r\), the same physical scale as the local dissipation
and flux.  After normalized packet division by \(r\), it is order one.

Thus pressure flux is absorbed only when this moving-packet critical remainder
is already controlled.  Current inputs do not supply that control.  The
terminal Zeno branch is precisely a scale-critical concentration branch.

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
