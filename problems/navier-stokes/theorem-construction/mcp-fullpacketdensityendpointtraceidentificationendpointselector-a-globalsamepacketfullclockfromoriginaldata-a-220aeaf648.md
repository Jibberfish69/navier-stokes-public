# FullPacketDensityEndpointTraceIdentificationEndpointSelector.A

Status: discharged for the retained endpoint base selector.

## Statement

On a retained normalized heat-scale packet, let `(V_m,Q_m)` solve the local normalized Navier-Stokes system

```math
\partial_s V_m+(V_m\cdot\nabla)V_m+\nabla Q_m=\nu\Delta V_m,
\qquad \nabla\cdot V_m=0.
```

Choose the full-packet selector to be the endpoint local-energy test

```math
\varphi_m^E=\eta_m^2V_m.
```

Let

```math
M_m(s)={1\over2}\int \eta_m^2|V_m|^2dy.
```

Then the endpoint trace density \(H_m(s)\) is the spatial integral of the endpoint full-packet density \(h_m^E(s,y)\), up to explicitly typed trace/legal/collar remainders:

```math
H_m(s)=\int h_m^E(s,y)dy+R_m^{trace/legal}(s).
```

Consequently

```math
[H_m(s)]_+\le \int [h_m^E(s,y)]_+dy+R_m^{trace/legal,+}(s).
```

## Proof

Test the equation against \(\eta_m^2V_m\). The time term gives

```math
\int \eta_m^2V_m\cdot\partial_sV_mdy={d\over ds}M_m(s)
```

up to the already typed cutoff-time legal term if \(\eta_m\) moves.

The transport term is

```math
-\int \eta_m^2 V_m\cdot (V_m\cdot\nabla)V_mdy
={1\over2}\int |V_m|^2V_m\cdot\nabla(\eta_m^2)dy.
```

The pressure term is

```math
-\int \eta_m^2V_m\cdot\nabla Q_mdy
=\int Q_m\nabla\cdot(\eta_m^2V_m)dy
=\int Q_mV_m\cdot\nabla(\eta_m^2)dy,
```

using \(\nabla\cdot V_m=0\).

The viscosity term is

```math
\nu\int \eta_m^2V_m\cdot\Delta V_mdy
=-\nu\int \eta_m^2|\nabla V_m|^2dy
-2\nu\int \eta_mV_m\cdot(\nabla\eta_m\cdot\nabla V_m)dy.
```

Move the nonnegative interior viscous term to the left and place the cutoff/collar viscous commutator in \(R_m^{trace/legal}\). The resulting local-energy identity is

```math
{d\over ds}M_m(s)+\nu\int\eta_m^2|\nabla V_m|^2dy
=H_m(s)+R_m^{trace/legal}(s),
```

where

```math
H_m(s)=\int \left[{1\over2}|V_m|^2V_m\cdot\nabla(\eta_m^2)+Q_mV_m\cdot\nabla(\eta_m^2)\right]dy.
```

But \(h_m^E\) is defined by the same endpoint full-packet test \(\varphi_m^E=\eta_m^2V_m\), so its spatial integral is exactly the displayed density \(H_m\), with only the same retained legal/collar remainders. Taking positive parts gives the claimed inequality.

## Boundary

This theorem is selector-sensitive. If the full-packet selector is not the endpoint base test, the statement is false unless the selector mismatch is paid by \(R_m^{trace/legal}\) or an explicit selector-loss measure.