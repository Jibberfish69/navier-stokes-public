# MPP Forward Gold Pressure-Corrected Time-Face No-Jump Exhaustion

Date: 2026-06-19

Status: object-level attempt complete for this branch.  It proves the conditional
no-jump implication and the pressure-only obstruction.  It does not prove
Navier-Stokes regularity.

## Live object

The spatial defect branch is not the live obstruction here.  Spatial point-force
and higher-multipole residues are handled by the coercivity/Landau-class logic
up to the already recorded profile-production hypotheses.

The surviving object is a pure terminal time-face atom: a positive native source
or trace marginal that concentrates in the last time layer while remaining
compatible with finite raw \(L^1_t\) control.  The model is

```math
g_m(s)=\frac{a}{\tau_m}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
```

The local energy balance sees this as a terminal jump.  Visibility is not
exclusion.  Exclusion needs a no-jump mechanism.

## Exact local energy ledger

For a smooth compactly supported spatial cutoff \(\phi\), the local energy
identity is

```math
\frac{d}{dt}\int_{\mathbb R^3}\frac12 |u|^2\phi\,dx
+\nu\int_{\mathbb R^3}|\nabla u|^2\phi\,dx
=
\int_{\mathbb R^3}\frac12|u|^2(\partial_t\phi+\nu\Delta\phi)\,dx
+\int_{\mathbb R^3}\left(\frac12|u|^2+p\right)u\cdot\nabla\phi\,dx .
```

Thus a terminal atom can be excluded only after every terminal sink on the right
has a vanishing terminal strip modulus, or after those sinks are routed into
legal CM faces.

The needed modulus has the form

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\int_{-\varepsilon}^{0}
\left|
\int_{\mathbb R^3}
\left[
\frac12|u_m|^2(\partial_t\phi_m+\nu\Delta\phi_m)
+\left(\frac12|u_m|^2+p_m\right)u_m\cdot\nabla\phi_m
\right]dx
\right|dt
=0
```

after legal exits, finite donor chains, and retained signed partners have been
removed.

This is the concrete pressure-corrected no-jump theorem.  It is stronger than
bounded variation and stronger than finite \(L^1_t\) control.

## Conditional no-jump theorem

Assume a selected terminal source marginal satisfies the visibility identity

```math
\nu_{m,\chi}^{src,+}((-\varepsilon,0])
=
J_m(\varepsilon)
+D_m(\varepsilon)
+F_m(\varepsilon)
+P_m(\varepsilon)
+C_m(\varepsilon)
+L_m(\varepsilon)
+o_m(1),
```

where \(J_m\) is local energy trace variation, \(D_m\) is dissipation, \(F_m\)
is cutoff/convection flux, \(P_m\) is pressure conormal flux, \(C_m\) is retained
signed counter-current, and \(L_m\) is legal spill.

If the nonlegal terminal sink modulus holds,

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\left(
|J_m(\varepsilon)|
+D_m(\varepsilon)
+|F_m(\varepsilon)|
+|P_m(\varepsilon)|
+|C_m(\varepsilon)|
\right)=0,
```

and legal spill has already been paid, then

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\nu_{m,\chi}^{src,+}((-\varepsilon,0])=0.
```

So the anti-atom theorem is not mysterious at the trace level.  It is exactly a
terminal strip modulus for the nonlegal local energy sinks.

## Why pressure correction alone cannot supply the modulus

Pressure is recovered by the spatial Riesz law

```math
p(t)=R_iR_j(u_i u_j)(t).
```

This operator is spatial and time-slice elliptic.  It commutes with scalar time
multiplication.  If

```math
u_m(t,x)=a_m(t)U(x),
```

then the pressure has the time factor

```math
p_m(t,x)=a_m(t)^2\,R_iR_j(U_iU_j)(x).
```

For the terminal pulse

```math
a_m(t)=\tau_m^{-1/2}\mathbf 1_{(-\tau_m,0]}(t),
```

the quadratic pressure carrier is supported on exactly the same shrinking time
layer:

```math
a_m(t)^2=\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(t).
```

Spatial Calderon-Zygmund cancellation can redistribute angular and spatial
mass.  It does not spread the time support.  Therefore elliptic pressure
recovery cannot prove

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0,
```

without an additional temporal, material, or scale-critical hypothesis.

This is not just an installed-input gap.  It is a mechanism obstruction:
Riesz pressure has no temporal smoothing.

## Why localized pressure-corrected monotonicity fails unrestricted

For a pressure-projected localized quadratic energy

```math
M_A(t)=\frac12\langle u,A_tu\rangle,
```

the desired monotone inequality would have to absorb the localized convection
and projection commutator by viscosity plus legal terms:

```math
|\mathcal C_A(u)|+|\operatorname{Comm}_A(u)|
\le
\varepsilon\nu\langle\nabla u,A\nabla u\rangle
+\mathcal R_{\mathrm{legal}}
+\mathcal D_{\mathrm{visible}}.
```

For the basic pressure-corrected localization \(A=P\chi P\), the leading
transport term is

```math
\mathcal C_\chi(u)
=
\frac12\int |u|^2u\cdot\nabla\chi\,dx
+\mathcal R_\chi^P(u),
```

where \(\mathcal R_\chi^P\) is the Leray commutator tail.  The first term has no
fixed sign.  Replacing \(u\) by \(-u\) reverses the sign of the collar flux and
leaves the viscous quadratic term unchanged.

At critical scaling, for

```math
\chi_r(x)=\chi(x/r),
\qquad
u_r(x)=r^{-1}U(x/r),
```

both the cubic collar flux and viscous dissipation scale like \(r^{-1}\):

```math
\int |u_r|^3|\nabla\chi_r|\,dx
=
r^{-1}\int |U|^3|\nabla\chi|\,dy,
```

and

```math
\nu\int\chi_r|\nabla u_r|^2\,dx
=
\nu r^{-1}\int\chi|\nabla U|^2\,dy.
```

Thus shrinking the window does not make the flux perturbative.  A universal
pressure-corrected monotonicity inequality is false unless one adds a reserve
or a no-incoming condition.

## What would actually close the branch

The branch closes under any one of the following non-alias inputs:

```text
1. TerminalTraceStripModulus.A:
   all nonlegal local-energy sinks have a vanishing terminal strip modulus.

2. PressureSourceParabolicMemory.A:
   pressure/source sustain tied to the native selected carrier cannot be
   supported on arbitrarily thin terminal time layers.

3. ScaleCriticalCubicFluxReserve.A:
   the critical cubic collar and Leray commutator currency is Carleson or
   reverse-Holder in terminal strips.

4. NoIncomingLocalizedEnergyFlux.A:
   after selection, inward pressure/convection flux cannot remain positive on
   every shrinking terminal window.

5. CM-facing exit conversion:
   every retained terminal time-face pulse with nonvanishing pressure/convection
   sink fails Pack, Part, or Field rather than remaining a hidden forward-gold
   obstruction.
```

Items 1--4 are forward-positive suppliers.  Item 5 is the contrapositive
escape hatch.  None is proved by pressure ellipticity or bounded variation
alone.

## Exhaustion verdict

The time-face branch is now reduced to a precise statement:

```math
\boxed{
\text{terminal anti-atom}
\Longleftarrow
\text{vanishing terminal strip modulus for nonlegal local-energy sinks.}
}
```

The pressure-only version of that modulus fails as a mechanism because pressure
is spatially elliptic and has no temporal smoothing.  The unrestricted
pressure-corrected monotonicity version also fails because the critical
pressure/convection collar flux is sign-indefinite and scales at the same order
as viscosity.

So this branch does not solve the Navier-Stokes gold theorem.  It eliminates the
false hope that pressure correction alone closes the pure time-face atom, and it
isolates the exact missing theorem as a terminal strip modulus / parabolic
memory / critical flux reserve / CM exit conversion.
