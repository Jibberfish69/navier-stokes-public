---
theorem_id: forward-gold-material-record-log-growth-channel-identity-20260622
status: conditional-channel-identity-proved-for-full-tower-A4B-lower-order-domination-not-proved
logical_landing_node: material_record_log_growth_channel_identity
edge_effect: >-
  Pursues MaterialRecordLogGrowthChannelIdentity.A term-by-term. The corrected
  object is the positive logarithmic variation of the same-material annular
  record, not a raw norm-growth proxy. On a fixed transported annular atlas and
  in one same material gauge, differentiating the material equations gives a
  measure inequality d[log(1+P_N)]_+ <= C dA_{4B,N}^{ann}, provided
  A_{4B,N}^{ann} is the full tower-level same-carrier four-body activity,
  including metric strain, coefficient commutators, velocity tower, pressure
  service, viscous/collar service, strain-vorticity/geometry service, selector
  collar participation, and Body-I radius spend/exchange. This is not proved for
  a lower-order annular stress/energy A_{4B}. The remaining global audit is to
  verify that this full tower-level A_{4B,N}^{ann} is exactly the object controlled
  by the oriented four-body cancellation loop.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-metric-clock-sharpening-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-total-strain-vorticity-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
---

# Material Record Log-Growth Channel Identity

Date: 2026-06-22

## 0. Target

The target is the channel identity

```math
d[\log(1+\mathcal P_{N,m})]_+
\le
C\,dA_{4B,N,m}^{ann}.
\tag{LG.1}
```

This statement is meaningful only after two corrections.

First, the growth object is the positive logarithmic variation of the same
material record:

```math
dG_{N,m}:=d[\log(1+\mathcal P_{N,m})]_+ .
\tag{LG.2}
```

Second, the right side is not a lower-order annular energy or stress record. It
must be the full tower-level same-carrier four-body annular activity:

```math
dA_{4B,N,m}^{ann}.
\tag{LG.3}
```

The result below proves `(LG.1)` as a normal-form consequence of the
transported material equations once `(LG.3)` is defined from the generated
channel measures. It does not prove that a lower-order annular activity already
dominates the tower record.

## 1. Fixed transported annular carrier

Work on one retained terminal heat-scale packet and suppress the packet index
\(m\). Let \(X(a,s)\) be the normalized material map on the selected annulus,

```math
\partial_sX(a,s)=V(X(a,s),s),
\qquad
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^T .
\tag{LG.4}
```

Use a fixed label-space cutoff \(\zeta(a)\). In Eulerian variables this is the
transported cutoff

```math
\eta(s,y)=\zeta(X^{-1}(y,s)),
\tag{LG.5}
```

so

```math
(\partial_s+V\cdot\nabla_y)\eta=0.
\tag{LG.6}
```

Set

```math
v(a,s)=V(X(a,s),s),
\qquad
q(a,s)=Q(X(a,s),s).
\tag{LG.7}
```

The material equations are

```math
\partial_s v+A^T\nabla_a q
=
\nu\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{LG.8}
```

The coefficient equations are

```math
\partial_sF=\nabla_av,
\qquad
\partial_sA=-A(\nabla_av)A,
\qquad
\partial_sG=(\partial_sA)A^T+A(\partial_sA)^T .
\tag{LG.9}
```

All quantities below are on this same material annulus and with this same
cutoff/gauge.

## 2. Material record

For finite order \(N\), define a same-packet material record

```math
\mathcal P_N(s)
:=
1+\Gamma(s)+E_N^v(s)+E_N^{A,G}(s)+R_N(s).
\tag{LG.10}
```

Here \(\Gamma\) records base material geometry:

```math
\Gamma(s)
:=
\|F(s)\|_{L^\infty(A_\sharp)}+
\|F(s)^{-1}\|_{L^\infty(A_\sharp)}+
\|\nabla_y\eta(s)\|_{L^\infty}+
\|\nabla_y\eta(s)\|_{L^\infty}^{-1}_{allowed} .
\tag{LG.11}
```

The velocity tower is

```math
E_N^v(s)
:=
\sum_{|\alpha|\le N}w_\alpha
\int \zeta^2 |D_a^\alpha v|^2\,da .
\tag{LG.12}
```

The coefficient tower is

```math
E_N^{A,G}(s)
:=
\sum_{1\le |\beta|\le N}w_\beta
\int\zeta^2\left(|D_a^\beta A|^2+|D_a^\beta G|^2\right)\,da .
\tag{LG.13}
```

The cumulative service record is

```math
R_N(s)
:=
\int_{s_0}^{s}
\left(
\mathcal S_N^{press}
+\mathcal S_N^{visc/collar}
+\mathcal S_N^{coeff}
+\mathcal S_N^{metric}
+\mathcal S_N^{geom}
+\mathcal S_N^{rad}
\right)(\tau)\,d\tau .
\tag{LG.14}
```

This avoids mixing instantaneous tower size with cumulative clocks. The record
is instantaneous tower plus accumulated same-carrier service since entrance.

## 3. General log-variation reduction

For a nonnegative absolutely continuous record \(P\),

```math
d[\log(1+P)]_+
\le
{dP_+\over 1+P}.
\tag{LG.15}
```

For \(\mathcal P_N\), it is enough to prove positive-growth bounds for
\(\Gamma\), \(E_N^v\), \(E_N^{A,G}\), and the service measure \(R_N\). The
service part is monotone by definition, so

```math
{dR_N\over 1+\mathcal P_N}
\le dR_N.
\tag{LG.16}
```

Thus `(LG.1)` follows once every positive-growth contribution from
\(d\Gamma\), \(dE_N^v\), and \(dE_N^{A,G}\) is one of the service densities in
`(LG.14)`, and once those service densities are defined as the annular
four-body activity.

## 4. Metric channel

Let \(C=F^TF\). Since

```math
\partial_sC=2F^T S(V)(X,s)F,
\tag{LG.17}
```

every material line element obeys

```math
{d\over ds}\log|F\xi|
\le
\|S(V)(s)\|_{L^\infty(\widehat A(s))}.
\tag{LG.18}
```

The same bound applies to the lower singular value and to transported collar
thickness through

```math
\nabla_y\eta(s,X(a,s))=F(a,s)^{-T}\nabla_a\zeta(a).
\tag{LG.19}
```

Therefore

```math
d[\log(1+\Gamma)]_+
\le
C\,\|S(V)(s)\|_{L^\infty(\widehat A(s))}\,ds.
\tag{LG.20}
```

Define the metric/geometry channel measure

```math
d\mathcal A_N^{metric}
:=
\|S(V)(s)\|_{L^\infty(\widehat A(s))}\,ds .
\tag{LG.21}
```

This is a Body-IV strain-metric channel. It is not controlled by lower-order
energy. It is admissible only for a tower-level \(A_{4B,N}^{ann}\) that includes
this channel.

## 5. Coefficient-tower channel

Differentiate `(LG.9)`. For every \(1\le |\beta|\le N\),

```math
\partial_sD^\beta A
=
- D^\beta\left(A(\nabla_av)A\right),
\tag{LG.22}
```

and similarly for \(D^\beta G\). Testing against \(\zeta^2D^\beta A\) and
\(\zeta^2D^\beta G\) gives

```math
{1\over2}d\int\zeta^2\left(|D^\beta A|^2+|D^\beta G|^2\right)
\le
d\mathcal A_{\beta}^{coeff},
\tag{LG.23}
```

where

```math
d\mathcal A_{\beta}^{coeff}
:=
\int\zeta^2
\left(
|D^\beta A|\,|D^\beta(A(\nabla_av)A)|
+|D^\beta G|\,|D^\beta\partial_sG|
\right)da\,ds .
\tag{LG.24}
```

Summing with factorial/Gevrey weights yields

```math
d(E_N^{A,G})_+
\le
C\,d\mathcal A_N^{coeff}.
\tag{LG.25}
```

The factorial weights are used here only to absorb Leibniz/binomial splitting;
they do not create decay. The resulting measure \(d\mathcal A_N^{coeff}\) is
the material coefficient/tower commutator channel generated by the same material
equations.

## 6. Velocity-tower channel

Apply \(D^\alpha_a\), \(|\alpha|\le N\), to `(LG.8)`:

```math
\partial_sU_\alpha
+A^T\nabla_a\pi_\alpha
-\nu\operatorname{div}_a(G\nabla_aU_\alpha)
=\mathcal C_\alpha,
\tag{LG.26}
```

where

```math
U_\alpha=D^\alpha_av,
\qquad
\pi_\alpha=D^\alpha_aq,
\tag{LG.27}
```

and \(\mathcal C_\alpha\) consists of differentiated coefficient commutators:

```math
\mathcal C_\alpha
=
-[D^\alpha,A^T\nabla_a]q
+\nu [D^\alpha,\operatorname{div}_a(G\nabla_a)]v .
\tag{LG.28}
```

Test `(LG.26)` against \(\zeta^2U_\alpha\). Since \(\zeta\) is fixed in
material coordinates,

```math
{1\over2}d\int\zeta^2|U_\alpha|^2
+\nu\int\zeta^2 G\nabla U_\alpha:\nabla U_\alpha\,ds
\le
 d\mathcal A_{\alpha}^{comm}
+d\mathcal A_{\alpha}^{press}
+d\mathcal A_{\alpha}^{visc/collar} .
\tag{LG.29}
```

The three measures are explicitly generated as follows:

```math
d\mathcal A_{\alpha}^{comm}
:=
\left|\int\zeta^2U_\alpha\cdot\mathcal C_\alpha\,da\right|ds,
\tag{LG.30}
```

```math
d\mathcal A_{\alpha}^{press}
:=
\left|\int\zeta^2U_\alpha\cdot A^T\nabla_a\pi_\alpha\,da\right|ds,
\tag{LG.31}
```

and

```math
d\mathcal A_{\alpha}^{visc/collar}
:=
C\nu\int |\nabla_a\zeta|^2 |U_\alpha|^2\,da\,ds
+C\nu\int \zeta^2 |(\nabla G)|\,|\nabla U_\alpha|\,|U_\alpha|\,da\,ds .
\tag{LG.32}
```

After factorial summation,

```math
d(E_N^v)_+
\le
C\left(
 d\mathcal A_N^{comm}
+d\mathcal A_N^{press}
+d\mathcal A_N^{visc/collar}
\right).
\tag{LG.33}
```

## 7. Pressure service is a channel, not a free estimate

The pressure term `(LG.31)` is not simply discarded. Integrating by parts gives

```math
\int\zeta^2U_\alpha\cdot A^T\nabla_a\pi_\alpha\,da
=
-\int \pi_\alpha\operatorname{div}_a(\zeta^2 A U_\alpha)\,da .
\tag{LG.34}
```

Now

```math
\operatorname{div}_a(AU_\alpha)
=
-[D^\alpha,\operatorname{div}_a(A\cdot)]v .
\tag{LG.35}
```

Therefore `(LG.34)` splits into the pressure-compatible collar term and the
pressure/coefficient commutator term:

```math
d\mathcal A_{\alpha}^{press}
\le
\left|\int 2\zeta\pi_\alpha(AU_\alpha)\cdot\nabla_a\zeta\,da\right|ds
+
\left|\int \zeta^2\pi_\alpha [D^\alpha,\operatorname{div}_a(A\cdot)]v\,da\right|ds .
\tag{LG.36}
```

This is the pressure-service channel. It is derived from the material pressure
term and the differentiated incompressibility law; it is not asserted by name.

## 8. Geometry / total strain-vorticity service

If the material record also includes the retained total strain-vorticity
exchange, use it as a cumulative service measure:

```math
R_N^{geom}(s)
:=
\int_{s_0}^{s}\int \zeta^2|\omega\cdot S\omega|\,da\,d\tau .
\tag{LG.37}
```

Then

```math
dR_N^{geom}
=
\int\zeta^2|\omega\cdot S\omega|\,da\,ds .
\tag{LG.38}
```

This handles the net-versus-total correction at the record level. It does not
try to obtain the total exchange from the signed enstrophy identity. It simply
records the total same-packet geometry service whose positive part is consumed
by the four-body loop once retained.

## 9. Body-I radius spend and exchange

The Body-I factorial tower normal form supplies the exact measure identity

```math
dL_S+dD_S^{rad}=dJ_{SQ}.
\tag{LG.39}
```

The nonnegative radius-spend measure is

```math
dD_S^{rad}
=
\sum_{(m,\alpha)}
\left(-m{\tau'\over\tau}-|\alpha|{\rho'\over\rho}\right)
 w_{m,\alpha}E_{m,\alpha}\,d\sigma .
\tag{LG.40}
```

This contributes to the tower-level annular activity as

```math
d\mathcal A_N^{rad}:=dD_S^{rad}+(dJ_{SQ})_+ .
\tag{LG.41}
```

Again, this is not a lower-order energy control. It is the Body-I scale/tower
exchange measure.

## 10. Definition of the full tower-level annular four-body activity

Define

```math
\boxed{
\begin{aligned}
dA_{4B,N}^{ann}
:=&\ d\mathcal A_N^{metric}
+d\mathcal A_N^{coeff}
+d\mathcal A_N^{comm}
+d\mathcal A_N^{press}
+d\mathcal A_N^{visc/collar} \\
&+d\mathcal A_N^{geom}
+d\mathcal A_N^{rad}
+d\mathcal A_N^{selector/collar}
+d\mathcal A_N^{exchange} .
\end{aligned}
}
\tag{LG.42}
```

The selector/collar term is zero on a fixed transported cutoff, and nonzero
only when the carrier/collar changes. The exchange term records the oriented
four-body adjacent-body transfers. All terms are same-carrier annular terms.

This is the exact object for which `(LG.1)` is valid. If \(A_{4B}^{ann}\) is
instead interpreted as only lower-order annular strain energy, local energy, or
stress work, `(LG.1)` is not proved and is generally too strong.

## 11. Proof of the log-growth channel identity

Combine `(LG.15)` with `(LG.20)`, `(LG.25)`, `(LG.33)`, `(LG.36)`, `(LG.38)`,
and `(LG.41)`. This gives

```math
d[\log(1+\mathcal P_N)]_+
\le
C\left(
 d\mathcal A_N^{metric}
+d\mathcal A_N^{coeff}
+d\mathcal A_N^{comm}
+d\mathcal A_N^{press}
+d\mathcal A_N^{visc/collar}
+d\mathcal A_N^{geom}
+d\mathcal A_N^{rad}
+d\mathcal A_N^{selector/collar}
+d\mathcal A_N^{exchange}
\right).
\tag{LG.43}
```

By `(LG.42)`, this is exactly

```math
\boxed{
d[\log(1+\mathcal P_N)]_+
\le
C\,dA_{4B,N}^{ann}.}
\tag{LG.44}
```

## 12. Consequence for record loss

If the material record doubles on a retained interval \(I\), then

```math
\int_I d[\log(1+\mathcal P_N)]_+\ge\log2 .
\tag{LG.45}
```

Therefore `(LG.44)` gives

```math
\int_I dA_{4B,N}^{ann}
\ge c_N>0.
\tag{LG.46}
```

On a fixed transported annular atlas with bounded overlap, infinitely many
record-loss doublings imply infinitely many fixed four-body quanta, contradicting

```math
\int_{\sigma_0}^{\infty}A_{4B,N}(\sigma)\,d\sigma<\infty
\tag{LG.47}
```

provided `(LG.47)` is established for this same full tower-level four-body
activity.

## 13. Exact remaining audit

This note proves the local channel identity `(LG.44)` for the full tower-level
annular activity `(LG.42)`. It does not by itself prove the global four-body
reserve `(LG.47)` for the enlarged tower-level object.

The remaining audit is:

```math
\boxed{
\text{the oriented four-body cancellation theorem must control the same
}A_{4B,N}^{ann}\text{ defined in `(LG.42)`.}
}
\tag{LG.48}
```

If the four-body cancellation only controls a lower-order annular activity,
then MaterialRecordLogGrowthChannelIdentity.A does not close the material tower
retention problem. If the four-body cancellation controls the full same-carrier
tower-level activity `(LG.42)`, then record loss is forbidden on the pure-gold
branch by the finite \(A_{4B,N}\) reserve.

## 14. Status

Conditional local result:

```math
\boxed{
\text{Full tower-level }A_{4B,N}^{ann}\text{ admits the positive logarithmic
growth of the same-material annular record.}
}
```

Not proved here:

```math
\boxed{
\text{Lower-order annular energy/stress }A_{4B}^{ann}\text{ dominates the same
log-growth record.}
}
```

Not proved here:

```math
\boxed{
\text{The global oriented four-body loop already controls the enlarged full
tower-level }A_{4B,N}.}
```