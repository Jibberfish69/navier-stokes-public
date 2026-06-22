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


---
theorem_id: forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621
status: direct-attempt-fails-current-inputs-give-measure-accounting-not-terminal-reverse-holder
logical_landing_node: endpoint_reverse_holder_full_packet_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-storage-harmonic-pressure-endpoint-policy-hardstop-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-endpoint-trace-lp-producer-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-reserve-producer-family-recheck-20260621.md
---

# Endpoint Reverse Hölder Full Packet Direct Attempt

Date: 2026-06-21

## 0. Corrected target

The corrected gold target is not finite payment.  It is endpoint uniform integrability.

For each retained terminal heat-scale full packet, define the full endpoint packet measure

```math
d\mu_m(s)=\rho_m(s)\,ds
```

with density

```math
\rho_m
=
[H_m]_+
+\lambda_{legal,m}
+\lambda_{sel,m}
+\lambda_{sgn,m}
+\lambda_{term,m}
+\lambda_{geom,m}.
\tag{ERH.1}
```

The desired theorem is

```math
\boxed{
\texttt{EndpointReverseHolderFullPacket.A}:
\qquad
\exists q>1,\ C<\infty,\quad
\sup_m\int_{-1}^{0}\rho_m(s)^q\,ds\le C.
}
\tag{ERH.2}
```

Then Hölder gives the terminal modulus

```math
\mu_m((-\theta,0])
\le
\theta^{1-1/q}\|\rho_m\|_{L^q(-1,0)}
\le C^{1/q}\theta^{1-1/q}\to0,
\tag{ERH.3}
```

so the endpoint no-jump theorem follows.

Equivalently, one may prove the interval reverse-Hölder inequality

```math
\boxed{
\left(\fint_I \rho_m^q\,ds\right)^{1/q}
\le
C\fint_{\lambda I}\rho_m\,ds
+C\left(\fint_{\lambda I} r_m^q\,ds\right)^{1/q}
}
\tag{ERH.4}
```

for all terminal intervals \(I=(-\theta,0]\), with \(q>1\), \(\lambda>1\), and an already controlled lower-order term \(r_m\).

## 1. Smooth trace expansion after gauge fixing

Let

```math
U_m=V_m-\langle V_m\rangle_{\eta_m}
```

and split pressure as

```math
Q_m=Q_m^{loc}+Q_m^H.
```

After Galilean and affine-pressure gauge removal, the smooth positive endpoint trace is controlled by terms of the schematic form

```math
[H_m]_{+}
\lesssim
\int_{collar}\left(
|U_m|^3
+|Q_m^{loc}|^{3/2}
+|Q_m^H-\Pi_{aff}Q_m^H|^{3/2}
+|U_m|^2
+|\nabla U_m|^2
\right)dy
+\rho_m^{meas}.
\tag{ERH.5}
```

The local pressure is Calderon-Zygmund controlled by the velocity product:

```math
\|Q_m^{loc}\|_{L^{3/2}}
\lesssim
\|U_m\otimes U_m\|_{L^{3/2}}+R_{gauge/legal}.
\tag{ERH.6}
```

The harmonic pressure-memory term requires a separate annular pressure-service estimate.

Thus a sufficient route to `(ERH.2)` is:

```math
\int_{collar}|U_m|^3\,dy\in L_s^q,
\quad
\int_{collar}|Q_m^H-\Pi_{aff}Q_m^H|^{3/2}\,dy\in L_s^q,
\quad
\rho_m^{meas}\in L_s^q.
\tag{ERH.7}
```

## 2. What installed energy estimates give

If one had uniform gauge-fixed normalized energy-dissipation,

```math
\sup_m\left(
\|U_m\|_{L_s^\infty L_y^2}^2
+\|\nabla U_m\|_{L^2_{s,y}}^2
\right)<\infty,
\tag{ERH.8}
```

then interpolation gives

```math
U_m\in L_{s,y}^{10/3},
```

and hence

```math
s\mapsto \int_{collar}|U_m(s)|^3\,dy
\in L_s^{10/9}.
\tag{ERH.9}
```

This supplies an endpoint exponent \(q=10/9>1\) for the velocity/local-pressure smooth trace.

But `(ERH.8)` is not currently installed.  The previous direct attempt showed that the existing four-body storage plus integrated drain does not produce the \(L_s^\infty L_y^2\) mean-free term.  It gives finite payment and integrated dissipation, not the terminal time-trace bound needed for `(ERH.9)`.

## 3. Direct reverse-Hölder attempt from finite payment

Try to derive `(ERH.4)` from the closed four-body inequality

```math
\partial_sL_{4B,m}+D_{4B,m}+cA_{4B,m}\le R_{4B,m}.
\tag{ERH.10}
```

Integrated over \(\lambda I\), this gives a finite-measure estimate

```math
\int_{\lambda I}\rho_m(s)\,ds
\le
C\bigl(L_{4B,m}(\inf \lambda I)-L_{4B,m}(0)\bigr)_+
+C R_{m}(\lambda I).
\tag{ERH.11}
```

This has the correct \(L^1\) scale but no superlinear information.  There is no term in `(ERH.10)` that bounds

```math
\int_I \rho_m(s)^q\,ds,\qquad q>1.
```

The terminal pulse

```math
\rho_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)
\tag{ERH.12}
```

satisfies the finite payment estimate `(ERH.11)` with total mass \(a\), while

```math
\int_{-1}^{0}\rho_m(s)^q\,ds
=a^q\tau_m^{1-q}\to\infty
\quad(q>1).
\tag{ERH.13}
```

Therefore finite payment cannot imply `(ERH.2)`.

## 4. Direct reverse-Hölder attempt from local energy inequality

The local energy inequality gives, schematically,

```math
\partial_sM_m^{gq}+D_m^{gq}\le H_m^{smooth}+\rho_m^{meas}.
\tag{ERH.14}
```

This is one-sided.  It says the storage/dissipation is controlled by the endpoint flux.  It does not say the endpoint flux has self-improving integrability.

A reverse-Hölder proof would need a Caccioppoli-type inequality in the opposite direction, with enough structure to compare high moments on \(I\) to first moments on a larger interval:

```math
\left(\fint_I \rho_m^q\right)^{1/q}
\lesssim
\fint_{\lambda I}\rho_m+	ext{controlled lower-order terms}.
```

The current packet supplies no such inequality.  In particular, pressure-memory, selector/collar, signed/donor, terminal trace, and geometry terms can still enter as endpoint measures.  A one-sided local energy inequality plus finite endpoint accounting does not force those measures to be absolutely continuous, much less \(L^q\).

## 5. What theorem would actually close it

A genuine closure theorem must have one of the following forms.

### Form A: endpoint Caccioppoli-Gehring theorem

```math
\boxed{
\texttt{EndpointCaccioppoliGehringFullPacket.A}}
```

For every terminal interval \(I=(-\theta,0]\),

```math
\left(\fint_I \rho_m^q\right)^{1/q}
\le
C\fint_{\lambda I}\rho_m
+C\left(\fint_{\lambda I} r_m^q\right)^{1/q},
\qquad q>1.
\tag{ERH.15}
```

### Form B: terminal Carleson packing with superlinear density

```math
\boxed{
\texttt{TerminalSuperlinearCarlesonPacket.A}}
```

There exists \(q>1\) such that

```math
\sup_m\int_{-1}^{0}\rho_m^q\,ds<\infty.
\tag{ERH.16}
```

### Form C: weighted endpoint Hardy reserve directly

```math
\boxed{
\texttt{FullPacketHardyReserve.A}}
```

There exists \(\alpha>0\) such that

```math
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\mu_m(s)<\infty.
\tag{ERH.17}
```

All three are equivalent at the current frontier: each rules out the terminal \(L^1\)-pulse.

## 6. Result

`EndpointReverseHolderFullPacket.A` is the right corrected gold target, but it is not produced by the installed inputs.

The exact failed implication is

```math
\text{closed four-body finite payment + local energy inequality}
\quad\not\Rightarrow\quad
\rho_m\in L_s^q,\ q>1.
```

The mathematical hard obstruction is again the terminal pulse `(ERH.12)`: it satisfies finite endpoint accounting and violates every superlinear endpoint reserve.

The route goes right only by adding a genuine endpoint self-improvement theorem:

```math
\boxed{
\texttt{EndpointCaccioppoliGehringFullPacket.A}
\quad\text{or}\quad
\texttt{TerminalSuperlinearCarlesonPacket.A}
\quad\text{or}\quad
\texttt{FullPacketHardyReserve.A}.}
```

Without one of these, the gold-only proof cannot pass from finite endpoint payment to terminal no-jump.