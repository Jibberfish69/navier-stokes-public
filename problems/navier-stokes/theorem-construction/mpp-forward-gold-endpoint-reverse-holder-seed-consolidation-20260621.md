---
theorem_id: forward-gold-endpoint-reverse-holder-seed-consolidation-20260621
status: seed-frontier-consolidated-not-produced-from-current-l1-payment
logical_landing_node: endpoint_reverse_holder_full_packet_seed
edge_effect: "Consolidates the corrected endpoint uniform-integrability route. EndpointUniformIntegrabilityReserve.A is the main theorem. EndpointReverseHolderFullPacket.A is the natural producer, but the only useful reverse-Holder/self-improvement route begins after a genuine same-carrier super-L1 seed is proved for the endpoint density. The four-body loop gives L_s^1 payment and same-carrier bookkeeping; it is not the seed. The seed splits into local critical-density super-L1 control, annular harmonic-pressure super-L1 service, and endpoint residue density/absorption policy."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-endpoint-critical-density-reverse-holder-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-pressure-reverse-holder-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-residue-density-policy-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gehring-self-improvement-no-seed-direct-test-20260620.md
---

# Endpoint Reverse Holder Seed Consolidation

Date: 2026-06-21

## 0. Corrected proof role

The main theorem is:

```math
\boxed{
\texttt{EndpointUniformIntegrabilityReserve.A}
}
\tag{RHS.1}
```

meaning

```math
\boxed{
\lim_{\theta\downarrow0}\sup_m\mu_m((-\theta,0])=0.
}
\tag{RHS.2}
```

The four-body loop is support.  It supplies same-carrier payment and an
\(L_s^1\) bound.  It does not supply `(RHS.2)` by itself.

The useful reverse-Holder route starts only after the endpoint packet has a
density

```math
d\mu_m=\rho_m(s)\,ds
\tag{RHS.3}
```

and that density obeys a same-carrier super-\(L^1\) seed.

## 1. The seed that actually kills the pulse

The needed seed is:

```math
\boxed{
\sup_m\int_{-1}^{0}\rho_m(s)^{1+\varepsilon}\,ds<\infty
\qquad
\text{for some }\varepsilon>0.
}
\tag{RHS.4}
```

Equivalently, one may prove a reverse-Holder inequality on terminal intervals
\(I=(-\theta,0]\):

```math
\boxed{
\left(
\fint_I\rho_m^{1+\varepsilon}\,ds
\right)^{1/(1+\varepsilon)}
\le
C\fint_{\lambda I}\rho_m\,ds
+\mathcal L_m(I),
}
\tag{RHS.5}
```

where \(\mathcal L_m\) has its own endpoint-uniform-integrability control.

Then Holder gives the endpoint tail modulus:

```math
\mu_m((-\theta,0])
=
\int_{-\theta}^{0}\rho_m(s)\,ds
\le
\theta^{\varepsilon/(1+\varepsilon)}
\|\rho_m\|_{L_s^{1+\varepsilon}}.
\tag{RHS.6}
```

Thus `(RHS.4)` implies `(RHS.2)` with power
\(\beta=\varepsilon/(1+\varepsilon)\).

## 2. Why the current four-body payment is not the seed

The closed four-body loop gives, at most,

```math
\sup_m\int_{-1}^{0}\rho_m(s)\,ds<\infty.
\tag{RHS.7}
```

The terminal pulse

```math
\rho_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{RHS.8}
```

satisfies `(RHS.7)`, but

```math
\int_{-1}^{0}\rho_m(s)^{1+\varepsilon}\,ds
=
a^{1+\varepsilon}\tau_m^{-\varepsilon}
\to\infty.
\tag{RHS.9}
```

So the four-body \(L_s^1\) payment cannot be upgraded to endpoint no-jump by
Gehring or self-improvement unless a seed like `(RHS.4)` or `(RHS.5)` has
already been proved.  Gehring is a consumer here, not a producer.

## 3. The endpoint density must be built after gauge and residue policy

Gauge-fix first:

```math
U_m=V_m-\langle V_m\rangle_{\eta_m}.
\tag{RHS.10}
```

The endpoint density must have the form

```math
\rho_m(s)
=
[H_m^U(s)]_+
+\lambda_{legal,m}(s)
+\lambda_{sel,m}(s)
+\lambda_{sgn,m}(s)
+\lambda_{term,m}(s)
+\lambda_{geom,m}(s),
\tag{RHS.11}
```

or else the singular residue channels must be absorbed before \(d\mu_m\) is
formed.

The following is not allowed as a gold endpoint density:

```math
d\Lambda_m
\quad\text{an arbitrary finite endpoint measure.}
\tag{RHS.12}
```

Finite endpoint measures can converge to \(a\delta_0\).  Therefore legal,
selector, signed, terminal, and geometry channels require density-level
super-\(L^1\), Hardy, Orlicz, or absorption control before endpoint
uniform-integrability is invoked.

## 4. The seed splits into three real clauses

The reverse-Holder producer splits into:

```math
\boxed{
\texttt{LocalEndpointCriticalDensityReverseHolder.A}
}
\tag{RHS.13}
```

for the gauge-fixed transport/local-pressure/lower-order density;

```math
\boxed{
\texttt{AnnularPressureReverseHolder.A}
}
\tag{RHS.14}
```

for the harmonic pressure-memory trace; and

```math
\boxed{
\texttt{EndpointResidueDensityPolicy.A}
}
\tag{RHS.15}
```

for all endpoint legal/selector/signed/terminal/geometry residues.

Together these imply `(RHS.4)`.

## 5. Exact local-density pass branch

The local clause is produced by a gauge-fixed normalized packet bound:

```math
\sup_m
\left(
\|U_m\|_{L_s^\infty L_y^2}^2
+\|\nabla U_m\|_{L^2_{s,y}}^2
+\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty.
\tag{RHS.16}
```

Then

```math
\|U_m\|_{L^{10/3}_{s,y}}^{10/3}
\le
C
\|U_m\|_{L_s^\infty L_y^2}^{4/3}
\|\nabla U_m\|_{L^2_{s,y}}^2
\le C,
\tag{RHS.17}
```

and the local pressure solve

```math
-\Delta Q_m^{loc}
=
\partial_i\partial_j(U_{m,i}U_{m,j})
\tag{RHS.18}
```

gives

```math
\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\le
C\|U_m\|_{L^{10/3}_{s,y}}^{10/3}.
\tag{RHS.19}
```

Consequently

```math
\left\|
\int
\left(
|U_m|^3+|Q_m^{loc}|^{3/2}+|U_m|^2
\right)\,dy
\right\|_{L_s^{10/9}}
\le C.
\tag{RHS.20}
```

This is a real endpoint-uniform-integrability producer for the smooth
transport/local-pressure/lower-order trace.  The interior viscous density must
stay on the dissipative side or receive its own super-\(L^1\) density upgrade;
an \(L_s^1\) dissipation bound alone is not `(RHS.4)`.

## 6. Exact harmonic-pressure pass branch

The harmonic pressure trace needs, after affine-pressure gauge removal,

```math
\sup_m
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_s^aL_y^{3/2}(annulus)}
<\infty
\tag{RHS.21}
```

and

```math
\sup_m
\|U_m\|_{L_s^bL_y^3(collar)}
<\infty,
\qquad
{1\over a}+{1\over b}<1.
\tag{RHS.22}
```

Then

```math
\left[
\int
(Q_m^H-\Pi_{aff}Q_m^H)
U_m\cdot\nabla\chi_m\,dy
\right]_+
\in L_s^p,
\qquad
{1\over p}={1\over a}+{1\over b}<1.
\tag{RHS.23}
```

This is the pressure part of the same seed.  Finite pressure-memory routing is
not enough.

## 7. Current checked conclusion

The current installed inputs prove the consumer chain:

```math
\text{same-carrier super-}L^1\text{ endpoint seed}
\Longrightarrow
\texttt{EndpointUniformIntegrabilityReserve.A}.
\tag{RHS.24}
```

They do not prove the seed from four-body \(L_s^1\) payment, finite routing, or
Gehring alone.

The exact remaining gold producer is therefore:

```math
\boxed{
\text{prove }(RHS.13)+(RHS.14)+(RHS.15)
\text{ on the retained same-carrier endpoint packet,}
}
\tag{RHS.25}
```

or prove an equivalent source-square, selected critical-strain, normalized CKN,
finite endpoint jet temporal modulus, or strict no-waste theorem that directly
gives `(RHS.4)` or `(RHS.2)`.
