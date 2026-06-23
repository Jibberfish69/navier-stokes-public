---
theorem_id: forward-gold-endpoint-bodyiv-same-material-clock-unification-direct-attempt-20260622
status: direct-attempt-sharpens-two-live-edges-to-one-unweighted-same-material-clock-theorem-not-installed
logical_landing_node: endpoint_bodyiv_same_material_clock_unification
edge_effect: >-
  Audits the current endpoint uniform-integrability edge and the Body-IV
  material-record edge as projections of the same transported material packet.
  The fixed-annulus facts are exact: later annular stress/strain return is an
  L1 time density on a fixed retained material annulus, finite nested material
  chains telescope, and zero full four-body loss forces harmless
  Galilean/affine-pressure gauge by the installed kernel theorem. The remaining
  non-installed producer is a uniform unweighted same-material terminal clock
  controlling both the normalized annular return density and the positive
  logarithmic growth of the material tower record. Without that clock, the
  endpoint branch appears as NoFreeInfiniteMaterialZenoStressChain.A and the
  Body-IV branch appears as UniformHeatScaleMaterialRecordSurvival.A /
  UnweightedMaterialStrainActionReserve.A; these are not separate proxy
  routes, but two readouts of the same missing same-packet reserve.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-legal-selector-tail-summability-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-geometry-tower-production-or-kgplus-summability-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-later-annular-stress-return-to-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-later-annular-return-modulus-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-infinite-material-zeno-stress-chain-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-material-stress-work-carleson-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622.md
---

# Endpoint/Body-IV Same-Material Clock Unification Direct Attempt

Date: 2026-06-22

## 0. Point

The endpoint time-face branch and the Body-IV material-record branch are not
two independent proof objects.

They are two ways the same transported material packet can fail to keep its
terminal history.

The endpoint branch asks whether the center/time overlap can hide as a last
time-face pulse after the later annular stress/strain return is restored.

The Body-IV branch asks whether the same transported annulus keeps the material
metric, frame, collar, pressure, velocity, and finite derivative tower record
needed for the four simultaneous coordinates to remain one packet.

Both require the same missing object: an unweighted normalized same-material
terminal clock.

## 1. Fixed annulus facts already proved

Let \(A(t)\) be a transported material annulus.  With

```math
T(u,p)=-pI+2\nu S(u),
\qquad
S(u)={\nabla u+\nabla u^\top\over2},
\tag{EBC.1}
```

the exact material energy identity is

```math
{d\over dt}
\int_{A(t)}{1\over2}|u|^2\,dx
+
2\nu\int_{A(t)}|S(u)|^2\,dx
=
\int_{\partial A(t)}u\cdot T(u,p)n\,dA .
\tag{EBC.2}
```

Thus the annular return density

```math
\rho_A(t)
:=
\int_{\partial A(t)}|u\cdot T(u,p)n|\,dA
+
2\nu\int_{A(t)}|S(u)|^2\,dx
\tag{EBC.3}
```

is a genuine density of the same pressure-viscosity-incompressibility-velocity
law.  On one fixed retained smooth annulus,

```math
\rho_A\in L^1(t_0,T^\ast),
\tag{EBC.4}
```

so it has no terminal time atom:

```math
\lim_{\theta\downarrow0}
\int_{T^\ast-\theta}^{T^\ast}\rho_A(t)\,dt
=0.
\tag{EBC.5}
```

Finite nested material annulus chains also telescope by the installed
stress-work cancellation identity.  These facts prove finite delayed annular
return is not free.

They do not prove uniform control through an infinite shrinking heat-scale
terminal family.

## 2. The exact heat-scale discount

On a heat-scale annulus of radius \(r\),

```math
u_r(t,x)=r^{-1}U(r^{-2}t,r^{-1}x),
\qquad
p_r(t,x)=r^{-2}P(r^{-2}t,r^{-1}x).
\tag{EBC.6}
```

The physical annular return over one heat window satisfies

```math
\int_{T-r^2}^{T}\rho_{A_r}(t)\,dt
=
r
\int_{-1}^{0}\widehat\rho_{A_r}(s)\,ds,
\tag{EBC.7}
```

where

```math
\widehat\rho_{A_r}(s)
:=
r\,\rho_{A_r}(T+r^2s).
\tag{EBC.8}
```

Thus physical \(L^1\) control gives only the discounted statement

```math
\sum_j r_j
\int_{-1}^{0}\widehat\rho_{A_j}(s)\,ds
<\infty .
\tag{EBC.9}
```

The endpoint no-jump theorem needs the unweighted terminal modulus

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\widehat\rho_{A_m}(s)\,ds
=0.
\tag{EBC.10}
```

This is exactly the `UniformLaterAnnularReturnModulus.A` /
`NoFreeInfiniteMaterialZenoStressChain.A` gap.

## 3. Body-IV is the same clock with tower memory included

The material frame obeys

```math
\partial_tX(a,t)=u(X(a,t),t),
\qquad
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top .
\tag{EBC.11}
```

Incompressibility gives

```math
\det F=1.
\tag{EBC.12}
```

For \(C=F^\top F\),

```math
\partial_tC=2F^\top S(X,t)F.
\tag{EBC.13}
```

So changing a retained material length, separation, or collar thickness by a
factor \(\Lambda\) costs

```math
\int_I
\|S(X(\cdot,t),t)\|_{L^\infty(A_\sharp)}
\,dt
\ge
\log\Lambda .
\tag{EBC.14}
```

The material tower obeys

```math
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{EBC.15}
```

Differentiating `(EBC.15)` produces the coefficient, pressure, velocity, collar,
and commutator record of the same material packet.  The relevant record is

```math
\mathcal P_N^{mat}
=
1+\Gamma+E_N^v+E_N^q+E_N^{A,G}+E_N^{coll}.
\tag{EBC.16}
```

Positive record loss is measured by

```math
d[\log(1+\mathcal P_N^{mat})]_+ .
\tag{EBC.17}
```

Thus Body IV is not a separate geometry supplier.  It is the tower-memory part
of the same material clock.

## 4. The unified clock

The same-packet terminal clock should be the measure

```math
d\mathfrak C_{N,m}
:=
\widehat\rho_{A,m}(s)\,ds
+
d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
dK_{\rm iface,m}^+
+
dK_{\rm sel/collar,m}^+ .
\tag{EBC.18}
```

Here:

```math
\widehat\rho_{A,m}\,ds
\tag{EBC.19}
```

is the normalized later annular stress/strain return,

```math
d[\log(1+\mathcal P_{N,m}^{mat})]_+
\tag{EBC.20}
```

is positive material record growth, and

```math
dK_{\rm iface,m}^+ + dK_{\rm sel/collar,m}^+
\tag{EBC.21}
```

are the same-packet interface, selector, collar, sign, and atlas defects that
prevent the four coordinates from remaining one transported packet.

The pure gold theorem is:

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\mathfrak C_{N,m}((-\theta,0])
=0.
}
\tag{EBC.22}
```

Equivalently, one may prove an unweighted log-scale reserve

```math
\boxed{
\int_{\sigma_0}^{\infty}d\mathfrak C_N(\sigma)<\infty .
}
\tag{EBC.23}
```

or a stronger \(L^q\), Hardy, Orlicz, reverse-Holder, strict no-waste, or
source-square version for the same measure.

This is the common theorem behind the endpoint and Body-IV names:

```math
\boxed{
\texttt{UniformLaterAnnularReturnModulus.A}
+
\texttt{UniformHeatScaleMaterialRecordSurvival.A}
}
\tag{EBC.24}
```

as one same-material packet statement, not two detached suppliers.

## 5. What the kernel theorem contributes

The installed kernel theorem says

```math
\ker\mathcal L_{4B,N}=\mathcal G,
\tag{EBC.25}
```

where \(\mathcal G\) is Galilean velocity plus affine pressure, with the
retained harmless gauge modes.

Thus, once the same-material clock is admitted into the full four-body loss,
the zero-loss branch is harmless:

```math
\mathcal L_{4B,N}=0
\quad\Longrightarrow\quad
\mathfrak U_N\in\mathcal G
\quad\Longrightarrow\quad
A_{\rm sel}=0 .
\tag{EBC.26}
```

This kills zero-payment circulation.  It does not create the clock `(EBC.18)`.

So the kernel theorem is the rigidity half of the simultaneous packet route.
The production half is still `(EBC.22)` or `(EBC.23)`.

## 6. Result

This note does not install the missing producer.

It sharpens the live frontier:

```math
\boxed{
\text{endpoint UI/no-free Zeno}
\quad\text{and}\quad
\text{Body-IV material-record retention}
}
\tag{EBC.27}
```

are two readouts of the same missing unweighted same-material terminal clock.

The fixed retained-annulus facts are exact:

```math
\boxed{
\text{fixed annular stress/strain return has no time atom,}
}
\tag{EBC.28}
```

```math
\boxed{
\text{finite nested material chains telescope,}
}
\tag{EBC.29}
```

and

```math
\boxed{
\text{zero full four-body loss is gauge.}
}
\tag{EBC.30}
```

The unresolved gold theorem is:

```math
\boxed{
\texttt{UniformSameMaterialTerminalClock.A}
}
\tag{EBC.31}
```

with content `(EBC.22)` or `(EBC.23)`.

Failure of this theorem is not a center-only endpoint pulse.  It is loss of the
same transported material participation record:

```math
\boxed{
Pack_Q+\neg Part_{N,Q}.
}
\tag{EBC.32}
```

The simultaneous four-body route therefore has this exact shape:

```math
\boxed{
\begin{array}{ll}
\text{same-material terminal clock retained}
&\Rightarrow
\text{full four-body activity is finite and zero-loss is gauge},\\[1mm]
\text{same-material terminal clock lost}
&\Rightarrow
\text{loss of the one-fluid participation record.}
\end{array}
}
\tag{EBC.33}
```

