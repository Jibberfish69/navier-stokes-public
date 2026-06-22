---
theorem_id: forward-gold-endpoint-reverse-holder-full-packet-corrected-direct-attempt-20260622
status: corrected-direct-attempt-reduces-to-super-l1-smooth-density-pressure-service-and-density-residue-absorption
logical_landing_node: endpoint_reverse_holder_full_packet_corrected
edge_effect: "Runs the corrected direct attempt at EndpointReverseHolderFullPacket.A on the full endpoint packet density rho_m, with no naked endpoint measures admitted. The no-jump consumer is exact: rho_m uniformly bounded in L_s^q, q>1, gives a terminal tail modulus and kills the heat-scale pulse. The direct production attempt from the local energy identity gives only L_s^1 endpoint bookkeeping unless a real reverse-Holder/super-L1 seed is supplied. The smooth local feed density has an L_s^(10/9) pass under gauge-fixed normalized local energy-pressure for the transport/local-pressure/lower-order pieces. The viscous drain is not full participation and not an endpoint positive density; it is one visible dissipative channel inside the coupled velocity-pressure-viscosity-incompressibility participation law. Harmonic pressure requires AnnularPressureReverseHolder.A after affine-pressure gauge removal. Legal, selector, signed, terminal, and geometry residues must be absolutely continuous densities with L_s^q control, absorbed with a strictly absorbable coefficient, or routed out of the gold endpoint packet."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-endpoint-critical-density-reverse-holder-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-pressure-reverse-holder-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-residue-absorption-policy-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-residue-material-selector-density-refinement-20260622.md
---

# Endpoint Reverse Holder Full Packet Corrected Direct Attempt

Date: 2026-06-22

## 0. Corrected object

For \(I_\theta=(-\theta,0]\), the endpoint object is the full packet density

```math
\rho_m(s)
=
[H_m(s)]_+
+\lambda_{legal,m}(s)
+\lambda_{sel,m}(s)
+\lambda_{sgn,m}(s)
+\lambda_{term,m}(s)
+\lambda_{geom,m}(s),
\tag{ERHC.1}
```

with

```math
d\Lambda_{j,m}(s)=\lambda_{j,m}(s)\,ds.
\tag{ERHC.2}
```

No arbitrary finite endpoint measure is admitted in the gold endpoint packet.
If a channel remains only a finite measure, it has not entered this theorem.

Here \(H_m\) is the endpoint feed trace after visible viscous loss has been
kept on the coercive side of the local energy identity.  In pre-drain notation
this means the positive trace is represented schematically by

```math
[H_m^{pre\nu}-cD_m^\nu]_+,
\qquad
D_m^\nu(s)=\nu\int\eta_m^2|\nabla U_m|^2\,dy.
\tag{ERHC.3a}
```

The drain \(D_m^\nu\) is not full participation.  It is one paid channel inside
the full pressure-transport-viscosity-incompressibility packet.

The target is:

```math
\boxed{
\exists q>1,\ C<\infty:
\qquad
\sup_m\int_{-1}^{0}\rho_m(s)^q\,ds\le C.
}
\tag{ERHC.3}
```

An interval reverse-Holder form sufficient for `(ERHC.3)` is

```math
\boxed{
\left(\fint_I\rho_m^q\,ds\right)^{1/q}
\le
C\fint_{\lambda I}\rho_m\,ds
+C\fint_{\lambda I}r_m\,ds,
}
\tag{ERHC.4}
```

for terminal intervals \(I=(-\theta,0]\), with \(r_m\) already controlled in
\(L_s^q\) or in an endpoint-uniform-integrable class strong enough to absorb
the lower-order term.

## 1. Consumer: \(L_s^q\) gives no jump

If `(ERHC.3)` holds, then Holder gives

```math
\begin{aligned}
\mu_m((-\theta,0])
&=
\int_{-\theta}^{0}\rho_m(s)\,ds\\
&\le
\left(\int_{-\theta}^{0}\rho_m(s)^q\,ds\right)^{1/q}
\theta^{1-1/q}\\
&\le
C^{1/q}\theta^{1-1/q}.
\end{aligned}
\tag{ERHC.5}
```

Hence

```math
\boxed{
\lim_{\theta\downarrow0}\sup_m\mu_m((-\theta,0])=0.
}
\tag{ERHC.6}
```

The terminal pulse

```math
\rho_m(s)
=
a\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{ERHC.7}
```

is excluded because

```math
\int_{-1}^{0}\rho_m(s)^q\,ds
=
a^q\tau_m^{1-q}
\to\infty
\qquad(q>1).
\tag{ERHC.8}
```

This part is proved.  The production burden is `(ERHC.3)` or `(ERHC.4)`.

## 2. Direct local-energy attempt gives only \(L_s^1\)

After gauge fixing

```math
U_m=V_m-\langle V_m\rangle_{\eta_m},
\tag{ERHC.9}
```

the localized energy identity has the schematic same-carrier form

```math
\begin{aligned}
{d\over ds}E_m(s)
+\nu\int\eta_m^2|\nabla U_m|^2\,dy
&\le
C\int_{\operatorname{collar}}
\left(
|U_m|^3
+|Q_m^{loc}|^{3/2}
+|(Q_m^H-\Pi_{aff}Q_m^H)U_m|
+|U_m|^2
\right)\,dy\\
&\quad
+\lambda_{legal,m}
+\lambda_{sel,m}
+\lambda_{sgn,m}
+\lambda_{term,m}
+\lambda_{geom,m}.
\end{aligned}
\tag{ERHC.10}
```

Integrated over \(I\), `(ERHC.10)` controls

```math
\int_I\rho_m(s)\,ds
\tag{ERHC.11}
```

by energy drop, dissipative terms, pressure/collar terms, and residue densities.
This is an \(L_s^1\) statement.  It does not imply `(ERHC.3)` or `(ERHC.4)`.

The endpoint pulse `(ERHC.7)` satisfies the same \(L_s^1\) type bound.  Thus
the local energy identity alone is not a reverse-Holder seed.

## 3. Smooth feed density pass under stronger normalized bounds

Define the smooth critical feed density

```math
\begin{aligned}
\rho_m^{feed}(s)
:=
\int_{\operatorname{collar}}
\left(
|U_m|^3
+|Q_m^{loc}|^{3/2}
+|Q_m^H-\Pi_{aff}Q_m^H|^{3/2}
+|U_m|^2
\right)\,dy .
\end{aligned}
\tag{ERHC.12}
```

For the pressure trace one uses Young:

```math
|(Q_m^H-\Pi_{aff}Q_m^H)U_m|
\le
\varepsilon |Q_m^H-\Pi_{aff}Q_m^H|^{3/2}
+C_\varepsilon |U_m|^3
+R_{gauge}.
\tag{ERHC.13}
```

The local velocity and local-pressure pieces have a clean super-\(L^1\) pass
under the gauge-fixed normalized local energy-pressure bound

```math
\sup_m
\left(
\|U_m\|_{L_s^\infty L_y^2}^2
+\|\nabla U_m\|_{L^2_{s,y}}^2
+\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty.
\tag{ERHC.14}
```

Indeed,

```math
\|U_m\|_{L^{10/3}_{s,y}}^{10/3}
\le
C
\|U_m\|_{L_s^\infty L_y^2}^{4/3}
\|\nabla U_m\|_{L^2_{s,y}}^2,
\tag{ERHC.15}
```

so

```math
\left\|
\int_{\operatorname{collar}}|U_m|^3\,dy
\right\|_{L_s^{10/9}}
\le C.
\tag{ERHC.16}
```

The local pressure solve

```math
-\Delta Q_m^{loc}
=
\partial_i\partial_j(U_{m,i}U_{m,j})
\tag{ERHC.17}
```

gives

```math
\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\le
C\|U_m\|_{L^{10/3}_{s,y}}^{10/3},
\tag{ERHC.18}
```

and therefore

```math
\left\|
\int_{\operatorname{collar}}|Q_m^{loc}|^{3/2}\,dy
\right\|_{L_s^{10/9}}
\le C.
\tag{ERHC.19}
```

The lower-order velocity term is bounded in \(L_s^\infty\):

```math
\left\|
\int_{\operatorname{collar}}|U_m|^2\,dy
\right\|_{L_s^\infty}
\le C.
\tag{ERHC.20}
```

Thus the transport, local-pressure, and lower-order smooth feed density is in
\(L_s^{10/9}\) under `(ERHC.14)`.

## 4. Viscous drain placement

The viscous term is

```math
D_m^\nu(s)
=
\nu\int\eta_m^2|\nabla U_m(s,y)|^2\,dy.
\tag{ERHC.21}
```

The bound `(ERHC.14)` gives

```math
\int_{-1}^{0}D_m^\nu(s)\,ds\le C,
\tag{ERHC.22}
```

This is the correct level for a drain.  The endpoint theorem should not ask
this term for a super-\(L_s^1\) estimate.  It belongs to the coercive side of
the participation law:

```math
{d\over ds}E_m(s)+D_m^\nu(s)
\le
\rho_m^{feed}(s)+\rho_m^{res}(s).
\tag{ERHC.23}
```

The endpoint density is formed after this visible drain has been kept as
payment:

```math
\boxed{
\text{viscous drain is visible payment, not endpoint positive density.}
}
\tag{ERHC.24}
```

So the first real producer break is not viscosity.  The remaining positive
feed still needs the super-\(L_s^1\) upgrade through transport/local pressure,
harmonic pressure memory, and endpoint residue density/absorption.

## 5. Harmonic pressure service

The harmonic pressure term requires the annular service estimate

```math
\boxed{
Q_m^H-\Pi_{aff}Q_m^H
\in
L_s^{a}L_y^{3/2}(\operatorname{annulus})
}
\tag{ERHC.25}
```

and

```math
\boxed{
U_m\in L_s^{b}L_y^3(\operatorname{collar}),
\qquad
{1\over a}+{1\over b}\le {1\over q}<1.
}
\tag{ERHC.26}
```

Then

```math
\left\|
\int_{\operatorname{collar}}
|(Q_m^H-\Pi_{aff}Q_m^H)U_m|\,dy
\right\|_{L_s^q}
\le C.
\tag{ERHC.27}
```

This is exactly `AnnularPressureReverseHolder.A`.  Existing pressure routing
gives finite collar/legal visibility, not `(ERHC.25)`.

## 6. Residue density domination must be absorbable

For each residue channel

```math
j\in\{legal,sel,sgn,term,geom\},
\tag{ERHC.28}
```

the corrected route needs

```math
\lambda_{j,m}(s)
\le
c_j\,\rho_m^{smooth}(s)+r_{j,m}(s),
\qquad
\|r_{j,m}\|_{L_s^q}\le C,
\tag{ERHC.29}
```

with either direct \(L_s^q\) control of \(\lambda_{j,m}\), or an absorbable
coefficient condition

```math
\sum_j c_j<1.
\tag{ERHC.30}
```

Domination by \(\rho_m\) itself with an uncontrolled coefficient is circular:
it can rewrite the endpoint density without improving integrability.

Thus endpoint residues must be handled in one of three ways:

```math
\boxed{
\lambda_{j,m}\in L_s^q
}
\tag{ERHC.31}
```

or

```math
\boxed{
\lambda_{j,m}
\le
c_j\rho_m^{smooth}+r_{j,m},
\quad
\sum_jc_j<1,
\quad
r_{j,m}\in L_s^q,
}
\tag{ERHC.32}
```

or the channel is absorbed/routed before endpoint packet formation.

This is the second exact internal break in the corrected direct proof.

## 7. Reverse-Holder interval inequality is not produced by the current data

The desired interval estimate `(ERHC.4)` is stronger than a global \(L_s^q\)
bound.  It says that concentration on a smaller terminal subinterval is
controlled by the average on a larger terminal interval.

For the pulse `(ERHC.7)`, with \(0<\tau_m\ll\theta\),

```math
\left(\fint_{-\theta}^{0}\rho_m^q\,ds\right)^{1/q}
\sim
a\,\tau_m^{-(q-1)/q}\theta^{-1/q},
\tag{ERHC.33}
```

whereas

```math
\fint_{-\lambda\theta}^{0}\rho_m\,ds
\sim
{a\over \lambda\theta}.
\tag{ERHC.34}
```

The ratio is

```math
\sim
\lambda
\left({\theta\over\tau_m}\right)^{(q-1)/q},
\tag{ERHC.35}
```

which is unbounded.  Thus `(ERHC.4)` is exactly the right no-pulse estimate.

The local energy identity and four-body \(L_s^1\) payment do not imply
`(ERHC.4)`.  They have no mechanism forcing the time marginal to spread over
terminal intervals.

## 8. Corrected positive theorem

The corrected theorem that is actually proved by the component estimates is:

```math
\boxed{
\begin{gathered}
\rho_m^{tr,loc}\in L_s^q,\quad
\rho_m^{H}\in L_s^q,\quad
\lambda_{j,m}\in L_s^q\ \text{or absorbable},\\
g_m^\nu\in L_s^q\ \text{or kept dissipative outside }\rho_m
\end{gathered}
\Longrightarrow
\rho_m\in L_s^q.
}
\tag{ERHC.36}
```

Here \(q>1\),

```math
\rho_m^{tr,loc}
=
\int_{\operatorname{collar}}
\left(
|U_m|^3+|Q_m^{loc}|^{3/2}+|U_m|^2
\right)\,dy,
\tag{ERHC.37}
```

and

```math
\rho_m^{H}
=
\int_{\operatorname{collar}}
|(Q_m^H-\Pi_{aff}Q_m^H)U_m|\,dy.
\tag{ERHC.38}
```

Under `(ERHC.36)`, the endpoint no-jump theorem follows by `(ERHC.5)`.

## 9. Result of the corrected direct attempt

`EndpointReverseHolderFullPacket.A` is not produced by the current installed
four-body payment, local energy identity, finite pressure routing, or residue
routing.

The corrected direct attempt reduces it to four exact producer clauses:

```math
\boxed{
\texttt{GaugeFixedSmoothTraceSuperL1.A}
}
\tag{ERHC.39}
```

for the transport/local-pressure/lower-order trace;

```math
\boxed{
\texttt{ViscousDrainEndpointPolicy.A}
}
\tag{ERHC.40}
```

meaning higher gradient integrability if viscous drain is counted in
\(\rho_m\), or a sign/orientation rule keeping it on the dissipative side;

```math
\boxed{
\texttt{AnnularPressureReverseHolder.A}
}
\tag{ERHC.41}
```

for the harmonic pressure-memory trace; and

```math
\boxed{
\texttt{EndpointResidueDensityOrAbsorption.A}
}
\tag{ERHC.42}
```

for legal, selector, signed, terminal, and geometry channels.

The local energy identity gives the \(L_s^1\) ledger.  The missing gold
ingredient is the super-\(L^1\) mechanism for the full endpoint density.
