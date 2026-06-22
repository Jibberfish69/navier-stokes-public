---
theorem_id: forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621
status: direct-attempt-reduces-to-true-reverse-holder-seed-density-policy-and-annular-pressure-reverse-holder
logical_landing_node: endpoint_reverse_holder_full_packet
edge_effect: "Attacks EndpointReverseHolderFullPacket.A as the producer for EndpointUniformIntegrabilityReserve.A. The result is exact: a reverse-Holder seed for the full endpoint density rho_m would give the desired endpoint uniform integrability, but it is not produced by the current four-body L1 payment, finite legal routing, or harmonic pressure routing. The proof splits the producer into three necessary clauses: first gauge-fix V_m to U_m=V_m-<V_m>_eta; second eliminate naked endpoint measures by turning legal/selector/signed/terminal/geometry residues into L_s^(1+epsilon) densities or absorbing them before the endpoint measure; third prove a genuine reverse-Holder seed for the actual endpoint density, including the harmonic pressure subtheorem AnnularPressureReverseHolder.A. The terminal L1 pulse is a scalar model showing the current hypotheses are insufficient, not an NS counterexample."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gehring-self-improvement-no-seed-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-trace-lp-coercivity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-endpoint-measure-moments-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-storage-harmonic-pressure-endpoint-policy-hardstop-20260621.md
---

# Endpoint Reverse Holder Full Packet Direct Attempt

Date: 2026-06-21

## 0. Target

The producer theorem is:

```math
\boxed{
\texttt{EndpointReverseHolderFullPacket.A}
}
\tag{ERH.1}
```

For the full endpoint density \(\rho_m\), prove

```math
\boxed{
\sup_m\int_{-1}^{0}\rho_m(s)^{1+\varepsilon}\,ds<\infty
\qquad
\text{for some }\varepsilon>0.
}
\tag{ERH.2}
```

Equivalently, prove a reverse-Holder seed on terminal intervals
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
\tag{ERH.3}
```

where the lower-order term \(\mathcal L_m\) has its own uniform
super-\(L^1\), Hardy, or Orlicz endpoint control.

Then

```math
\mu_m((-\theta,0])
=
\int_{-\theta}^{0}\rho_m(s)\,ds
\le
\theta^{\varepsilon/(1+\varepsilon)}
\|\rho_m\|_{L_s^{1+\varepsilon}},
\tag{ERH.4}
```

so `EndpointUniformIntegrabilityReserve.A` follows.

## 1. Gauge-fix first

The endpoint density must be built from the Galilean-quotient velocity

```math
\boxed{
U_m=V_m-\langle V_m\rangle_{\eta_m}.
}
\tag{ERH.5}
```

Constant Galilean modes are not singular.  They can enlarge ungauged
\(L_s^\infty L_y^2\) storage while carrying no selected singular activity.

So the trace density to estimate has the form

```math
\rho_m
=
[H_m^U]_+
+\lambda_{legal,m}
+\lambda_{sel,m}
+\lambda_{sgn,m}
+\lambda_{term,m}
+\lambda_{geom,m},
\tag{ERH.6}
```

where \(H_m^U\) is the endpoint local-energy trace after replacing \(V_m\) by
the gauge-fixed field in every place where the mean mode is removable, and
where the remaining mean/affine-pressure records are routed as gauge/legal
terms.

## 2. Naked endpoint measures must be removed before reverse Holder

A reverse-Holder inequality is a density statement.  Therefore the endpoint
packet cannot contain arbitrary finite measures at this stage.

For each residue channel

```math
\Lambda_j\in
\{\Lambda_{legal},\Lambda_{sel},\Lambda_{sgn},
\Lambda_{term},\Lambda_{geom}\},
\tag{ERH.7}
```

the gold route must have one of:

```math
d\Lambda_{j,m}=\lambda_{j,m}(s)\,ds,
\qquad
\sup_m\|\lambda_{j,m}\|_{L_s^{1+\varepsilon_j}}<\infty,
\tag{ERH.8}
```

or

```math
\sup_m\int_{-1}^{0}(-s)^{-\alpha_j}\,d\Lambda_{j,m}(s)<\infty,
\tag{ERH.9}
```

or the channel is absorbed before \(d\mu_m\) is formed.

Current finite routing gives

```math
\sup_m\Lambda_{j,m}((-1,0])<\infty.
\tag{ERH.10}
```

That is not enough.  The pulse measure

```math
d\Lambda_m
=
a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)\,ds
\tag{ERH.11}
```

satisfies `(ERH.10)` and violates every `(ERH.8)` with exponent
\(1+\varepsilon>1\), as well as every Hardy moment `(ERH.9)`.

Thus endpoint residue density policy is not bookkeeping.  It is a necessary
part of the reverse-Holder theorem.

## 3. The smooth trace density reduces to collar critical densities

The endpoint trace estimate has the form

```math
\begin{aligned}
[H_m^U(s)]_+
&\le
C
\int_{\operatorname{collar}}
\left(
|U_m|^3
 + |Q_m^{loc}|^{3/2}
 + |Q_m^H U_m\cdot\nabla\chi_m|
 + |U_m|^2
\right)\,dy\\
&\quad
+\varepsilon_0\nu\int\eta_m^2|\nabla U_m|^2\,dy
+R_m^{gauge/legal}(s).
\end{aligned}
\tag{ERH.12}
```

The local pressure piece is licensed by the local Calderon-Zygmund pressure
solve:

```math
\|Q_m^{loc}\|_{L_y^{3/2}}
\lesssim
\|U_m\otimes U_m\|_{L_y^{3/2}}
\tag{ERH.13}
```

on the retained same-carrier interior after cutoff/localization errors are
paid.

Therefore the local smooth part would be in \(L_s^{1+\varepsilon}\) if the
gauge-fixed critical density

```math
F_m^{loc}(s)
=
\int_{\operatorname{collar}}
\left(
|U_m|^3
+|Q_m^{loc}|^{3/2}
+|U_m|^2
\right)\,dy
+\nu\int\eta_m^2|\nabla U_m|^2\,dy
\tag{ERH.14}
```

has a reverse-Holder or super-\(L^1\) endpoint bound.

That is the density-level version of the source-square / CKN / selected
critical-strain reserve.

## 4. Harmonic pressure subtheorem

The harmonic pressure-memory term is not controlled by `(ERH.13)`.  The
required subtheorem is:

```math
\boxed{
\texttt{AnnularPressureReverseHolder.A}
}
\tag{ERH.15}
```

with statement

```math
\boxed{
\sup_m
\left\|
[Q_m^H U_m\cdot\nabla\chi_m]_+
\right\|_{L_s^{1+\varepsilon}(-1,0)}
<\infty.
}
\tag{ERH.16}
```

A sufficient annular service form is:

```math
\boxed{
\sup_m
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_s^aL_y^{3/2}(annulus)}
<\infty,
}
\tag{ERH.17}
```

together with

```math
\boxed{
\sup_m
\|U_m\|_{L_s^bL_y^3(collar)}
<\infty,
\qquad
{1\over a}+{1\over b}<1.
}
\tag{ERH.18}
```

The affine pressure part \(\Pi_{aff}Q_m^H\) pairs with the Galilean mode and
must be removed into the gauge/legal record.

Current harmonic-pressure routing proves finite collar/legal/terminal
visibility.  It does not prove `(ERH.16)` or `(ERH.17)`.

## 5. Why current inputs do not prove the reverse-Holder seed

The four-body loop supplies a finite \(L_s^1\)-level payment after endpoint
trace identification:

```math
\sup_m\int_{-1}^{0}\rho_m(s)\,ds<\infty.
\tag{ERH.19}
```

The terminal pulse

```math
\rho_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)
\tag{ERH.20}
```

satisfies `(ERH.19)` and fails `(ERH.2)`:

```math
\int_{-1}^{0}\rho_m(s)^{1+\varepsilon}\,ds
=
a^{1+\varepsilon}\tau_m^{-\varepsilon}
\to\infty.
\tag{ERH.21}
```

It also fails the terminal reverse-Holder seed `(ERH.3)` on fixed terminal
intervals \(I=(-\theta,0]\) with \(\tau_m<\theta\).

This is a scalar countermodel to the current installed hypotheses, not a
Navier-Stokes counterexample.  Its role is exact: it proves that finite
four-body payment, finite legal routing, and finite harmonic pressure routing
cannot imply endpoint uniform integrability without a new same-carrier
super-\(L^1\) mechanism.

## 6. Result

`EndpointReverseHolderFullPacket.A` does not close from the current installed
inputs.

It reduces to these producer clauses:

```math
\boxed{
\texttt{EndpointResidueDensityPolicy.A}
}
\tag{ERH.22}
```

Every legal, selector, signed, terminal, and geometry endpoint residue is
absorbed before endpoint formation or has super-\(L^1\) / Hardy / Orlicz
endpoint control.

```math
\boxed{
\texttt{LocalEndpointCriticalDensityReverseHolder.A}
}
\tag{ERH.23}
```

The gauge-fixed local endpoint density built from
\(|U_m|^3\), \(|Q_m^{loc}|^{3/2}\), \(|U_m|^2\), and
\(\eta_m\nabla U_m\) satisfies a same-carrier reverse-Holder seed or an
equivalent source-square / CKN / selected critical-strain reserve.

```math
\boxed{
\texttt{AnnularPressureReverseHolder.A}
}
\tag{ERH.24}
```

The harmonic pressure-memory trace is a super-\(L^1\) endpoint density, not a
finite routed measure.

Together these imply `(ERH.2)`, hence `EndpointUniformIntegrabilityReserve.A`.
Without them, the terminal \(L^1\)-pulse remains compatible with the current
gold data.
