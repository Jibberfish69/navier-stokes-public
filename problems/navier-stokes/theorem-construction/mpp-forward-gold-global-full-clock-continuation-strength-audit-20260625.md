---
theorem_id: forward-gold-global-full-clock-continuation-strength-audit-20260625
status: proof-installed-continuation-strength-audit; full-clock-producer-still-open
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the remaining full material-history clock after the physical ontology
  reduction. The object is one original smooth material spike-wave history.
  The note proves that finite positive material-record variation is
  continuation-strength: once it is known, the installed material readout gives
  the fixed H^s continuation bound and classical relaunch; conversely,
  ordinary smooth continuation or a uniform continuation-depth material record
  immediately gives the finite clock. Therefore attachment, finite initial
  frequency amplitude, raw energy, and height-width thinning cannot be reported
  as the missing producer unless they prove this continuation-strength clock
  directly. The remaining theorem is a genuine same-packet a priori estimate
  for positive material-record variation.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-physical-ontology-to-material-record-clock-exact-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
---

# Global Full Clock Continuation-Strength Audit

Date: 2026-06-25

## 0. Object

The object remains one original smooth Navier--Stokes material history:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\tag{GFC.1}
```

with transported variables

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{GFC.2}
```

and

```math
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top .
\tag{GFC.3}
```

The center spike, the annular layers below it, the later stress/strain return,
the pressure response, incompressibility, viscosity, and nonlinear velocity
transfer are one material packet.  Heat-scale windows are samples of that
history.

For a fixed continuation target \(s>5/2\), choose the finite material depth
\(N=N_s\) used in the fixed-\(H^s\) readout.  Let

```math
Y_N(t):=1+\mathcal P_N^{mat}(t).
\tag{GFC.4}
```

The remaining full-clock theorem is

```math
\int_0^{T_*} d[\log Y_N(t)]_+<\infty
\tag{GFC.5}
```

together with the already-specified same-packet legal/service terms.

## 1. Finite positive record variation is enough for continuation

The solution is smooth on every compact preterminal interval, so for any
base time \(t_0<T_*\),

```math
Y_N(t_0)<\infty .
\tag{GFC.6}
```

For \(t\in[t_0,T_*)\),

```math
\log Y_N(t)
\le
\log Y_N(t_0)
+
\int_{t_0}^{t}d[\log Y_N(\tau)]_+ .
\tag{GFC.7}
```

Thus `(GFC.5)` gives

```math
\sup_{t<T_*}Y_N(t)<\infty .
\tag{GFC.8}
```

The installed material readout gives a nondecreasing function \(C_s\) such
that

```math
\|u(t)\|_{H^s_x}
\le
C_s(Y_N(t)).
\tag{GFC.9}
```

Therefore `(GFC.8)` gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty .
\tag{GFC.10}
```

Classical local Navier--Stokes theory then relaunches the same solution past
\(T_*\).  This is the gold-route continuation bridge.

## 2. Smooth continuation gives the finite record clock

Conversely, suppose the same solution is already known to remain bounded in a
fixed coordinate Sobolev norm high enough to control the material record:

```math
\sup_{t<T_*}\|u(t)\|_{H^{N+c}}<\infty
\tag{GFC.11}
```

for the finite margin \(c\) required by product, pressure, and composition
estimates.  Then the material flow map, pressure tower, coefficient tower, and
collar/interface records obey the standard smooth material estimates, so

```math
\sup_{t<T_*}Y_N(t)<\infty .
\tag{GFC.12}
```

The differentiated material equations give

```math
d[\log Y_N(t)]_+
\le
C_N\Theta_N(t)\,dt+dR_N^0,
\tag{GFC.13}
```

where \(\Theta_N\) is the same pressure-viscosity-incompressibility-velocity
service rate.  Under `(GFC.11)`, every coefficient in \(\Theta_N\) is bounded
on the finite interval and the legal residual is integrable, hence

```math
\int_0^{T_*}d[\log Y_N(t)]_+<\infty .
\tag{GFC.14}
```

So the finite full clock is not a weaker bookkeeping statement.  It is a
continuation-strength a priori statement in material variables.

## 3. What the physical picture has already proved

The accepted physical picture has real mathematical force.

It proves attachment through the transported stress identity:

```math
{d\over dt}\int {1\over2}|u|^2\phi\,dx
+
2\nu\int\phi |S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx .
\tag{GFC.15}
```

It proves finite-depth initial frequency amplitude:

```math
\sum_j2^{2Nj}\|\Delta_j u_0\|_2^2<\infty .
\tag{GFC.16}
```

It proves height-width thinning from finite energy:

```math
|\{x:|u(t,x)|\ge h\}|
\le
{\|u_0\|_2^2\over h^2}.
\tag{GFC.17}
```

It also proves that fixed transported annular flux variation is finite once
the same material record and service density are bounded.

These facts eliminate detached endpoint pulses, arbitrary annular signals,
bounded-record cycling, and pressure-only or viscosity-only substitutes.

## 4. What those facts do not prove

At the Navier--Stokes critical scale,

```math
U_\ell\sim \ell^{-1},
\qquad
\tau_\ell\sim \ell^2,
\qquad
|\nabla u|_\ell\sim \ell^{-2}.
\tag{GFC.18}
```

The raw kinetic energy and raw viscous dissipation of one sample have size

```math
E_\ell\sim \ell,
\qquad
D_\ell\sim \ell,
\tag{GFC.19}
```

while the material strain clock has size

```math
|\nabla u|_\ell\,\tau_\ell\sim 1.
\tag{GFC.20}
```

Therefore a sequence \(\ell_m\downarrow0\) with

```math
\sum_m\ell_m<\infty
\tag{GFC.21}
```

is compatible with finite raw energy accounting while carrying infinitely many
order-one material-record samples.  This is not a detached packet model.  It is
the native scale arithmetic of the same original material history.

Thus the following implication is not established by the physical attachment
facts:

```math
\text{finite energy + thinning + same-annulus return}
\Longrightarrow
\int_0^{T_*}d[\log Y_N]_+<\infty .
\tag{GFC.22}
```

## 5. Exact remaining theorem

The remaining theorem must prove one of the following equivalent
continuation-strength statements directly from the full coupled equation on
the same material history:

```math
\boxed{
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+<\infty ,
}
\tag{GFC.23}
```

or

```math
\boxed{
d\mathfrak L_N
+
c\,d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal L_N
\le
dR_N,
\quad
\mathfrak L_N\ge -C,
\quad
\int_0^{T_*}dR_N<\infty .
}
\tag{GFC.24}
```

Any claimed producer must be checked against this audit.  A route that proves
only attachment, initial frequency finiteness, raw energy depletion, fixed
annulus absolute continuity, or bounded-record variation has not proved the
finite full clock.  It has only proved one of the already-installed support
facts.

## 6. Result

The live MPP-facing statement is now exact:

```math
\boxed{
\text{prove finite positive continuation-depth material-record variation for
the original transported material history.}
}
\tag{GFC.25}
```

This is the same physical object Thomas described.  It is also the
continuation-strength part of the global regularity problem.  The proof is not
closed until `(GFC.23)` or `(GFC.24)` is proved without assuming the bounded
material record, bounded \(H^s\), or finite full clock it is meant to produce.
