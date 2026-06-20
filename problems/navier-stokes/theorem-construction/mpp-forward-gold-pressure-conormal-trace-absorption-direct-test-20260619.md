# MPP Forward Gold PressureConormalTraceAbsorption.A Direct Test

Date: 2026-06-19

Status: direct theorem test complete; not closed from installed inputs.

## Target

The terminal time-face branch keeps returning to the pressure sink

```math
\int p\,u\cdot\nabla\phi .
```

For a selected heat-scale packet

```math
Q_m
=
B_{r_m}(x_m)\times(T_m-r_m^2,T_m],
\qquad
r_m\downarrow0,
```

with cutoff \(\phi_m(x)=\phi((x-x_m)/r_m)\), the normalized pressure-conormal
quantity is

```math
\mathsf P_m(J)
:=
{1\over r_m}
\int_J\int
p(t,x)u(t,x)\cdot\nabla\phi_m(x)\,dx\,dt .
\tag{PCTA.1}
```

The theorem wanted by the gold no-jump route is a terminal strip modulus:

```math
\boxed{
\lim_{\varepsilon\downarrow0}\limsup_m
|\mathsf P_m((T_m-\varepsilon r_m^2,T_m])|
=0
}
\tag{PCTA.2}
```

after legal boundary spill, retained signed partners, finite donor trees, and
nonselected leakage have already been removed.

This is `PressureConormalTraceAbsorption.A`.

## Local pressure decomposition

On each packet, write

```math
p=p_{nl}+p_h,
\qquad
p_{nl}=R_iR_j(u_i u_j)
```

with \(p_h\) the local harmonic/background pressure.

For the nonlinear part, Holder, Young, and Calderon-Zygmund give

```math
\left|
\int_J\int p_{nl}u\cdot\nabla\phi_m
\right|
\le
{C_\phi\over r_m}
\int_J\int_{\operatorname{collar}(B_{r_m})}
\left(|u|^3+|p_{nl}|^{3/2}\right)\,dx\,dt .
\tag{PCTA.3}
```

After dividing by \(r_m\), this becomes

```math
|\mathsf P_m^{nl}(J)|
\le
C_\phi\,
{1\over r_m^2}
\int_J\int_{\operatorname{collar}(B_{r_m})}
\left(|u|^3+|p_{nl}|^{3/2}\right)\,dx\,dt .
\tag{PCTA.4}
```

Thus the nonlinear pressure conormal term is not absorbed.  It is exactly the
scale-critical cubic/pressure reserve already isolated as

```math
ScaleCriticalCubicFluxReserve.A
```

or, in endpoint form,

```math
TerminalMovingPacketTraceModulus.A.
```

## Scaling check

A heat-scale critical profile has

```math
u(t,x)=r_m^{-1}U(s,y),
\qquad
p(t,x)=r_m^{-2}\Pi(s,y),
\qquad
y={x-x_m\over r_m},
\qquad
s={t-T_m\over r_m^2}.
```

Then

```math
p\,u\cdot\nabla\phi_m\,dx\,dt
\sim
r_m^{-2}r_m^{-1}r_m^{-1}r_m^5
=r_m .
\tag{PCTA.5}
```

The physical pressure flux on one heat-scale packet is size \(r_m\).  The
normalized quantity in `(PCTA.1)` is size one.

So shrinking the packet does not make the pressure-conormal trace small after
the normalization used by the terminal packet.  The same scaling is what makes
the endpoint pulse dangerous.

## Why elliptic pressure gives no time spreading

Pressure is recovered on each time slice:

```math
-\Delta p(t)=\partial_i\partial_j(u_i(t)u_j(t)).
\tag{PCTA.6}
```

The Riesz transform improves neither the time support nor the endpoint time
modulus.  If the selected source or velocity packet concentrates as

```math
a_m(s)=\tau_m^{-1}1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{PCTA.7}
```

then pressure sees the same terminal time layer.  Spatial Calderon-Zygmund
control converts the pressure term into a critical spatial currency at each
time; it does not spread the layer over a longer time interval.

This is the precise reason pressure-conormal trace compactness is only
visibility.  It identifies a sink channel, but it does not exclude a terminal
time-face atom.

## Harmonic/conormal pressure

The harmonic part contributes

```math
\mathsf P_m^h(J)
=
{1\over r_m}
\int_J\int p_h u\cdot\nabla\phi_m .
\tag{PCTA.8}
```

This term has no sign.  It is determined by exterior pressure data and boundary
geometry, not by a positive local square.  Local pressure estimates can charge it
to pressure trace or boundary ledgers, but those ledgers again need a terminal
strip modulus to exclude a last-instant atom.

Thus the harmonic/conormal branch reduces to one of the already named pressure
memory or source-tether inputs:

```math
PressureSourceParabolicMemory.A,
\qquad
PressureLobeSourceTether.A+\text{terminal residence/source-square gain},
\qquad
FinitePacketLeraySourceAnchoring.A.
\tag{PCTA.9}
```

None of these is supplied by the pressure decomposition itself.

## Material and projected gauges

A material cutoff can reduce the pure convective leakage, and a Leray-projected
functional can remove the explicit pressure pairing.  In both cases the same
quantity returns in a different form.

For material weights, the remaining local energy term is still

```math
2\int p\,u\cdot\nabla\phi .
\tag{PCTA.10}
```

For projected localized functionals, the pressure term becomes the localized
Leray commutator and critical collar flux:

```math
{1\over2}\int |u|^2u\cdot\nabla\chi
+
\int (u\otimes u):\nabla([P,\chi]u).
\tag{PCTA.11}
```

The reserved commutator normal form controls `(PCTA.11)` only by the same
critical cubic/collar reserve.  It does not create the missing strip modulus.

## Verdict

`PressureConormalTraceAbsorption.A` does not close from installed inputs.

The direct test gives the exact reduction:

```math
\boxed{
PressureConormalTraceAbsorption.A
\Leftarrow
ScaleCriticalCubicFluxReserve.A
\text{ or }
TerminalMovingPacketTraceModulus.A
\text{ or }
PressureSourceParabolicMemory.A
\text{ or }
PressureLobeSourceTether.A+\text{residence/source-square}.
}
\tag{PCTA.12}
```

Without one of those inputs, pressure is a terminal sink/readout channel, not a
coercive no-jump theorem.

The useful conclusion is negative but sharp: pressure-conormal language does
not add a new independent gold supplier.  It collapses back to the same
endpoint strip-modulus problem already exposed by the selected carrier,
critical cubic reserve, and no-free trace-sink tests.
