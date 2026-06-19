# MPP Forward Gold ProjectedLocalizedFluxCommutatorCoercivity.A Attempt

Date: 2026-06-19

Status: direct attempt complete; the unrestricted theorem is too strong.

## Target

The pressure-corrected monotone functional route reduces to:

```text
ProjectedLocalizedFluxCommutatorCoercivity.A.
```

In useful form it would say that, for a localized projected quadratic
functional

```math
M_A(t)=\frac12\langle u,A_tu\rangle,
```

the localized convection, projection commutator, modulation, and cutoff terms
are absorbed by viscosity plus legal/visible ledgers:

```math
|\mathcal C_A(u)|
+|\mathrm{Comm}_{A,\nabla}(u)|
+|\mathrm{Mod}_A(u)|
\le
\varepsilon \langle\nabla u,A\nabla u\rangle
+\mathcal R_{\rm legal}
+\mathcal D_{\rm visible}.
```

If true, this would give the coercive upgrade missing from the terminal
time-face jump-sink branch.

## Localized Convection Test

Take the simplest pressure-corrected localization:

```math
A=P\chi P,
```

where `P` is Leray projection and `chi` is a smooth terminal cutoff.  For
divergence-free `u`, the nonlinear term contains

```math
\mathcal C_\chi(u)
=
-\langle P\nabla\cdot(u\otimes u),P\chi u\rangle.
```

Expanding the leading local part gives

```math
\mathcal C_\chi(u)
=
\int (u\otimes u):\nabla(\chi u)
+\text{Leray commutator tail}.
```

The interior `chi` term cancels by incompressibility:

```math
\int \chi (u\otimes u):\nabla u
=
\frac12\int \chi\,u\cdot\nabla |u|^2
=
-\frac12\int |u|^2u\cdot\nabla\chi.
```

Since `P` is self-adjoint and `Pu=u`, the exact decomposition is:

```math
\mathcal C_\chi(u)
\ =
\frac12\int |u|^2u\cdot\nabla\chi
+\mathcal R_\chi^P(u),
\qquad
\mathcal R_\chi^P(u)
:=\int (u\otimes u):\nabla([P,\chi]u).
```

This term has no sign.  It is inward or outward depending on the velocity
orientation through the cutoff collar.

## Scaling Obstruction

A universal coercive estimate would need the collar flux to be lower order
than viscous dissipation:

```math
\left|\int |u|^2u\cdot\nabla\chi\right|
\le
\varepsilon\nu\int \chi|\nabla u|^2
+\text{legal}.
```

This is false at critical scaling without an additional reserve.  The quantity
being spent is explicitly the cutoff flux

```math
\mathsf{Flux}_\chi(u)
:=
\int_{\operatorname{supp}\nabla\chi} |u|^3|\nabla\chi|.
```

For `\chi_r(x)=\chi((x-x_0)/r)` and
`u_r(x)=r^{-1}U((x-x_0)/r)`,

```math
\mathsf{Flux}_{\chi_r}(u_r)
=
r^{-1}\int_{\operatorname{supp}\nabla\chi}|U|^3|\nabla\chi|,
\qquad
\nu\int \chi_r|\nabla u_r|^2
=
\nu r^{-1}\int \chi|\nabla U|^2.
```

Shrinking the annulus gives no smallness advantage in the flux-to-dissipation
ratio.  Viscosity does not make the flux perturbative unless a separate
smallness, reserve, or no-incoming condition is present.

A smooth divergence-free packet crossing the cutoff collar gives the elementary
counter-shape.  Reversing the direction of the packet reverses the sign of the
collar flux while leaving the local dissipation size comparable.  Therefore no
sign-definite monotone inequality can follow from projection/localization
alone.

## Leray Commutator Test

The projection commutator has the form

```math
[P,\chi]\nabla\cdot(u\otimes u).
```

Calderon-Zygmund / Coifman-Meyer estimates bound it by a critical cubic
currency.  Precisely, for every `1<p<\infty` and smooth cutoff `\chi`, there is
a finite constant `C_{p,\chi,P}` such that

```math
\|[P,\chi]\nabla\cdot F\|_{L^p}
\le
C_{p,\chi,P}\|F\|_{L^p}.
```

With `F=u\otimes u` and `p=3/2`, Holder gives the exact consequence

```math
\bigl|\langle [P,\chi]\nabla\cdot(u\otimes u),u\rangle\bigr|
\le
C_{\chi,P}\|u\|_{L^3}^3.
```

Local versions split this cubic currency into collar terms and nonlocal tails,
but the estimate itself supplies neither sign nor coercivity.

## Material Gauge Test

One can try to move the cutoff with the flow so that

```math
\partial_t\chi+u\cdot\nabla\chi=0.
```

This cancels the pure transport flux.  But then the localization is solution
dependent, the admissibility of the test must be proved, and the pressure /
diffusion / projection commutators reappear:

```text
pressure conormal trace,
diffusive cutoff leakage,
Leray tail,
scale/center modulation.
```

This returns to the earlier material-frequency obstruction rather than closing
it.

## Verdict

`ProjectedLocalizedFluxCommutatorCoercivity.A` is not merely uninstalled in its
unrestricted form.  It is too strong as stated.

The corrected theorem must include at least one extra hypothesis or reserve:

```text
ProjectedLocalizedFluxCommutatorCoercivityWithReserve.A
```

where the reserve is one of:

```text
ScaleCriticalCubicFluxReserve.A,
NoIncomingLocalizedEnergyFlux.A,
TerminalPressureConormalAbsorption.A,
MaterialGaugeAdmissibility.A + pressure/diffusion commutator payment,
or CM-facing classification of the retained cubic/collar flux.
```

Thus the pressure-corrected monotone branch does not give an independent
forward-positive anti-atom theorem at current strength.  It cycles back to the
same core need:

```text
a terminal critical flux/source reserve,
or a no-free-sink theorem for the terminal trace.
```
