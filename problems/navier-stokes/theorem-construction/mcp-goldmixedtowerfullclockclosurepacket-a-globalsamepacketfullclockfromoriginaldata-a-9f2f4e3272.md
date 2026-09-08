# GoldMixedTowerFullClockClosurePacket.A

Status: conditional closure packet.  This is the rehydrated Gold route from the Stirling/binomial thread: factorial mixed jets remove binomial overcount; the endpoint trace must gain temporal regularity on the same retained carrier; the enlarged full-tower four-body cancellation then gives finite total action for one same-material participation-law-strain history.

## 0. Target

Prove

```math
\int_0^{T^*}d\Omega_N^{PLS,full}<\infty
```

for one transported material history.  The clock is not the old coordinatewise raw PLS clock.  It is the full tower same-carrier action

```math
A_{4B,N}^{tower}
```

containing metric, coefficient, commutator, pressure/Helmholtz--Leray, viscous/collar, geometry, and radius-spend channels.

## 1. Factorial mixed tower removes the Stirling/binomial wall

For

```math
J_{m,\alpha}=\partial_t^m\partial_x^\alpha u,
```

use weights

```math
w_{m,\alpha}(\tau,\rho)=\frac{\tau^m\rho^{|\alpha|}}{m!\alpha!}.
```

Then the differentiated nonlinear term has binomial coefficients, but

```math
w_{m,\alpha}{m\choose a}{\alpha\choose\beta}
=
w_{a,\beta}w_{m-a,\alpha-\beta}.
```

Thus raw Stirling growth is diagnostic only.  The live quantity is radius spend.

With moving radii define

```math
\mu_t=-\tau'/\tau,
\qquad
\mu_x=-\rho'/\rho.
```

The mixed tower identity has the form

```math
\frac12\frac d{dt}\mathfrak E_s
+\nu\mathfrak D_s
+\mu_t\mathfrak M_t
+\mu_x\mathfrak M_x
=
\mathfrak N_s.
```

Finite radius survival is exactly finite logarithmic spend:

```math
\int^{T^*}\mu_t<\infty,
\qquad
\int^{T^*}\mu_x<\infty.
```

Divergent spend must therefore be charged as actual same-carrier terminal action, not hidden under binomial language.

## 2. Same-carrier endpoint trace identification

Let \(H_m(s)\) be the positive endpoint local-energy trace on the retained heat-scale packet.  The full-packet production density is \(h_m^E(s,y)\) only if the selected test is the endpoint base test, up to legal/selector mismatch.  The required identification is

```math
[H_m(s)]_+
\le
\int_{\text{retained carrier}}[h_m^E(s,y)]_+dy
+R_m^{trace/legal,+}(s).
```

This prevents changing carriers between the four-body density and the endpoint no-jump trace.

## 3. Temporal tower regularity kills the terminal strip pulse

The four-body loop gives only \(L_s^1\) endpoint mass.  That is not enough because

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has bounded \(L_s^1\) mass and unbounded \(L_s^p\) norm for every \(p>1\).

The correct producer is

```math
\|[H_m]_+\|_{W_s^{\beta,1}(-1,0)}
\le
C\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right)
```

for some \(\beta>0\), on the same retained packet.  In one dimension,

```math
W^{\beta,1}(-1,0)\hookrightarrow L^p(-1,0)
\qquad 1<p<\frac1{1-\beta}.
```

Therefore

```math
\sup_m\|[H_m]_+\|_{L_s^p}<\infty
```

for some \(p>1\).  Holder then gives endpoint Hardy control: for \(0<\alpha<1-1/p\),

```math
\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+ds
\le
\|[H_m]_+\|_{L^p_s}
\left(\int_{-1}^{0}(-s)^{-\alpha p'}ds\right)^{1/p'}<\infty.
```

This excludes the terminal strip pulse on the retained same carrier.

## 4. Full tower four-body cancellation gives finite total action

The enlarged tower action must satisfy four oriented inequalities:

```math
A_1+E_{12}\le E_{41}-\partial_\sigma\Phi_1,
```

```math
A_2+E_{23}\le E_{12}-\partial_\sigma\Phi_2,
```

```math
A_3+E_{34}\le E_{23}-\partial_\sigma\Phi_3,
```

```math
A_4+E_{41}\le E_{34}-\partial_\sigma\Phi_4.
```

Summing cancels the exchanges:

```math
A_{4B,N}^{tower}:=A_1+A_2+A_3+A_4
\le
-\partial_\sigma\Phi_{4B}.
```

If

```math
\Phi_{4B}\ge -C_N(u_0),
\qquad
\Phi_{4B}(\sigma_0)<\infty,
```

then

```math
\int_{\sigma_0}^{\infty}A_{4B,N}^{tower}(\sigma)d\sigma<\infty.
```

This is the finite total Gold action.

## 5. Finite action bounds the same-material record

The material-record channel identity is

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\,dA_{4B,N}^{tower}.
```

Integrating finite action gives

```math
\sup_{t<T^*}\mathfrak P_N^{mat}(t)<\infty.
```

Thus the original transported pressure-viscosity-incompressibility-strain packet retains its finite-depth material record.  That is the finite total participation-law-strain history.

## Closure implication

The Gold route closes under exactly these three installed theorem-grade inputs:

```math
\text{FullPacketDensityEndpointTraceIdentification.A}
```

```math
\text{EndpointTraceTemporalTowerRegularity.A}
```

```math
\text{FullTowerFourBodyCancellation.A}.
```

Then

```math
\boxed{
\int_0^{T^*}d\Omega_N^{PLS,full}<\infty.
}
```

## Boundary

This is a conditional closure packet, not a claimed public Clay proof.  The live hard work is to prove the two production inputs that are not installed at theorem grade: endpoint trace temporal tower regularity and enlarged full-tower four-body cancellation.