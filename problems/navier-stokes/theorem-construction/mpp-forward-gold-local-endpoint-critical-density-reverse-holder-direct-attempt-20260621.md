---
theorem_id: forward-gold-local-endpoint-critical-density-reverse-holder-direct-attempt-20260621
status: direct-attempt-reduces-to-gauge-fixed-normalized-energy-pressure-or-positive-coupled-tower-radius-or-critical-density-reserve
logical_landing_node: local_endpoint_critical_density_reverse_holder
edge_effect: "Attacks LocalEndpointCriticalDensityReverseHolder.A, the smooth local-density clause of EndpointReverseHolderFullPacket.A. The exact positive estimate is that a gauge-fixed normalized local energy-dissipation plus local pressure L^(5/3) bound gives the local endpoint density in L_s^(10/9). A stronger positive coupled tower radius gives L_s^infty endpoint density. Current four-body L1 payment and physical energy do not produce either bound on the retained terminal heat-scale family. Thus the local clause reduces to GaugeFixedUniformNormalizedLocalEnergyPressure.A, positive coupled tower radius survival, SourceSquareReserve/SelectedCriticalStrain/NormalizedCKN reserve, or strict no-waste; without one of these, the L1 terminal pulse remains compatible with current inputs."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-normalized-local-energy-pressure-bound-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-to-source-square-upgrade-direct-test-20260621.md
---

# Local Endpoint Critical Density Reverse Holder Direct Attempt

Date: 2026-06-21

## 0. Target

The smooth local-density clause of `EndpointReverseHolderFullPacket.A` is:

```math
\boxed{
\texttt{LocalEndpointCriticalDensityReverseHolder.A}
}
\tag{LCD.1}
```

After the Galilean quotient

```math
U_m=V_m-\langle V_m\rangle_{\eta_m},
\tag{LCD.2}
```

define the local endpoint critical density

```math
F_m^{loc}(s)
=
\int_{\operatorname{collar}}
\left(
|U_m|^3
+|Q_m^{loc}|^{3/2}
+|U_m|^2
\right)\,dy
+\nu\int\eta_m^2|\nabla U_m|^2\,dy .
\tag{LCD.3}
```

The target is a super-\(L^1\) endpoint bound:

```math
\boxed{
\sup_m\|F_m^{loc}\|_{L_s^{1+\varepsilon}(-1,0)}<\infty
}
\tag{LCD.4}
```

or a reverse-Holder seed implying `(LCD.4)`.

## 1. Exact positive estimate from gauge-fixed normalized energy-pressure

Assume the gauge-fixed normalized packet bound

```math
\sup_m
\left(
\|U_m\|_{L_s^\infty L_y^2}^2
+\|\nabla U_m\|_{L^2_{s,y}}^2
+\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty.
\tag{LCD.5}
```

Then the velocity interpolation gives

```math
\|U_m\|_{L^{10/3}_{s,y}}^{10/3}
\le
C
\|U_m\|_{L_s^\infty L_y^2}^{4/3}
\|\nabla U_m\|_{L^2_{s,y}}^2
\le C.
\tag{LCD.6}
```

For

```math
F_m^u(s)=\int_{\operatorname{collar}}|U_m(s,y)|^3\,dy,
\tag{LCD.7}
```

bounded spatial volume gives

```math
\int_{-1}^{0}(F_m^u(s))^{10/9}\,ds
\le
C\int_{-1}^{0}\int_{\operatorname{collar}}|U_m|^{10/3}\,dy\,ds
\le C.
\tag{LCD.8}
```

Similarly, for

```math
F_m^p(s)=\int_{\operatorname{collar}}|Q_m^{loc}(s,y)|^{3/2}\,dy,
\tag{LCD.9}
```

one has

```math
\int_{-1}^{0}(F_m^p(s))^{10/9}\,ds
\le
C\int_{-1}^{0}\int_{\operatorname{collar}}|Q_m^{loc}|^{5/3}\,dy\,ds
\le C.
\tag{LCD.10}
```

The lower-order term

```math
F_m^2(s)=\int_{\operatorname{collar}}|U_m|^2\,dy
\tag{LCD.11}
```

is bounded in \(L_s^\infty\) by `(LCD.5)`.  Thus it is also bounded in
\(L_s^{10/9}\).

For the viscous density

```math
F_m^\nu(s)=\nu\int\eta_m^2|\nabla U_m|^2\,dy,
\tag{LCD.12}
```

`(LCD.5)` gives \(L_s^1\), not \(L_s^{10/9}\).  Therefore the viscous density
must either be kept on the dissipative side of the local energy inequality, or
it needs its own super-\(L^1\) drain-density theorem.

Consequently, the smooth collar density excluding the interior dissipative
term satisfies

```math
\boxed{
\left\|
\int_{\operatorname{collar}}
\left(
|U_m|^3+|Q_m^{loc}|^{3/2}+|U_m|^2
\right)\,dy
\right\|_{L_s^{10/9}}
\le C.
}
\tag{LCD.13}
```

This is an exact endpoint-uniform-integrability producer for the local
pressure/transport/cutoff trace.

## 2. Local pressure is licensed by Calderon-Zygmund

The local pressure solve is

```math
-\Delta Q_m^{loc}
=
\partial_i\partial_j(U_{m,i}U_{m,j})
\tag{LCD.14}
```

on the retained localized packet, with cutoff errors routed legally.  Hence

```math
\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\le
C
\|U_m\otimes U_m\|_{L^{5/3}_{s,y}}^{5/3}
\le
C\|U_m\|_{L^{10/3}_{s,y}}^{10/3}.
\tag{LCD.15}
```

So the local pressure part is not the independent obstruction.  It follows
from the gauge-fixed energy-dissipation bound.

## 3. Positive coupled tower radius gives a stronger pass branch

The coupled tower radius-survival note proves that a positive mixed
time-space tower radius gives a uniform \(L_s^\infty\) bound for finite-order
selected local functionals of the same rescaled velocity field.  Applied to
the local endpoint density, this gives

```math
\boxed{
\text{uniform positive coupled tower radius}
\Longrightarrow
\|F_m^{loc}\|_{L_s^\infty}\le C.
}
\tag{LCD.16}
```

Thus positive coupled tower radius is a valid endpoint-density producer.

The coupled-tower-to-source-square test also shows the limitation: current
inputs do not prove radius survival, and radius failure does not itself produce
the missing square or reverse-Holder reserve.  Radius failure splits into
finite-rung readout or high-rung analytic tail collapse, not into `(LCD.4)`.

## 4. Why current four-body payment does not prove the local reverse Holder

The four-body loop gives finite endpoint mass after the trace identification:

```math
\int_{-1}^{0}F_m^{loc}(s)\,ds\le C
\tag{LCD.17}
```

at best, modulo residue and pressure-memory terms.  The terminal pulse

```math
F_m^{loc}(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)
\tag{LCD.18}
```

satisfies `(LCD.17)` and violates every \(L_s^{1+\varepsilon}\) bound:

```math
\int_{-1}^{0}(F_m^{loc}(s))^{1+\varepsilon}\,ds
=
a^{1+\varepsilon}\tau_m^{-\varepsilon}\to\infty.
\tag{LCD.19}
```

Therefore the four-body \(L^1\) payment is not a reverse-Holder seed.

## 5. Relation to CKN/source-square/critical-strain suppliers

Any one of the following would supply `(LCD.4)`:

```math
\boxed{
\texttt{GaugeFixedUniformNormalizedLocalEnergyPressure.A}
}
\tag{LCD.20}
```

with the viscous density kept dissipative or upgraded separately;

```math
\boxed{
\texttt{PositiveCoupledTowerRadiusSurvival.A}
}
\tag{LCD.21}
```

on the retained terminal family;

```math
\boxed{
\texttt{SourceSquareReserve.A}
\quad\text{with selected endpoint-density domination;}
}
\tag{LCD.22}
```

or

```math
\boxed{
\texttt{SelectedCriticalStrainCarleson.A}
\quad\text{or}\quad
\texttt{NormalizedCKNCarleson.A}
}
\tag{LCD.23}
```

with terminal-tail depletion on the same carrier.

These are genuine producer theorems.  CKN epsilon regularity, Serrin-type
criteria, and finite critical mass are consumers unless they supply the
terminal-tail modulus or the super-\(L^1\) density bound above.

## 6. Result

`LocalEndpointCriticalDensityReverseHolder.A` is not produced by the current
four-body \(L^1\) payment.

The exact positive line is:

```math
\boxed{
\text{gauge-fixed normalized energy-pressure}
\Longrightarrow
F_m^{loc}\in L_s^{10/9}
}
\tag{LCD.24}
```

for the transport/local-pressure/lower-order trace, with the viscous density
kept on the dissipative side or upgraded separately.

The exact remaining production alternatives are:

```math
\boxed{
\text{produce }(LCD.5),
\quad
\text{produce positive coupled tower radius},
\quad
\text{or produce source-square/critical-strain/CKN/no-waste density reserve.}
}
\tag{LCD.25}
```

Without one of these, the local smooth endpoint density still admits the
terminal \(L^1\)-pulse model under the currently installed inputs.
