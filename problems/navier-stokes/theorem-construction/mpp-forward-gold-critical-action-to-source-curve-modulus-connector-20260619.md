# MPP Forward-Gold Critical Action To Source-Curve Modulus Connector

Date: 2026-06-19

## Status

Connector proved; production input not proved.

The cumulative source-curve test identifies the exact terminal no-jump
consumer:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
\tag{CAM.1}
```

Here \(a_m(s)\) is the selected nonlegal positive source density on the
normalized moving heat-scale packet.

This note records how the critical strain, cubic CKN, and source-square
currencies imply `(CAM.1)` when they control the same selected carrier.  It also
records why the energy-level participation budget still does not supply that
control.

## 1. Abstract curve lemma

If

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds\le C_p
\qquad\text{for some }p>1,
\tag{CAM.2}
```

then Holder gives

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
C_p^{1/p}\theta^{1-1/p},
\tag{CAM.3}
```

and hence `(CAM.1)`.

The square case \(p=2\) is the source-square bridge already recorded in
`mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md`.

## 2. Critical strain carrier bound

The selected native trilinear carrier on packet \(P_m\) is

```math
\mathcal T_m^+
=
\int_{Q_m}
\left[\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\rangle\right]_+
dxdt.
\tag{CAM.4}
```

After heat-scale normalization, a same-packet domination of the source curve
has the form

```math
a_m(s)
\le
C_{\rm car}
\int_{B_1}
|\Sigma_m^{loc}(s,y)|\,|W_m(s,y)|^2\,dy
+
\ell_m(s),
\tag{CAM.5}
```

where \(\ell_m\) has the already legal terminal strip modulus.  Holder in space
gives

```math
\int_{B_1}
|\Sigma_m^{loc}|\,|W_m|^2\,dy
\le
\|\Sigma_m^{loc}(s)\|_{L_y^{5/2}}
\|W_m(s)\|_{L_y^{10/3}}^2.
\tag{CAM.6}
```

Therefore a selected spacetime bound

```math
\sup_m
\int_{-1}^{0}
\|\Sigma_m^{loc}(s)\|_{L_y^{5/2}}^{5/2}\,ds
\le C_S
\tag{CAM.7}
```

plus a compatible selected velocity-side bound

```math
\sup_m
\int_{-1}^{0}
\|W_m(s)\|_{L_y^{10/3}}^{10/3}\,ds
\le C_W
\tag{CAM.8}
```

gives an \(L_s^1\) bound on the product in `(CAM.6)`.  To get the terminal
modulus `(CAM.1)`, one needs the product itself to be uniformly integrable in
time.  A sufficient sharp form is the source-square domination

```math
a_m(s)\le C_{\square}G_m(s)+\ell_m(s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2\,ds\le C_G.
\tag{CAM.9}
```

Thus the selected critical-strain currency is a real coercive supplier only
when it is strong enough to produce time-uniform integrability of the actual
selected carrier.  Merely knowing the spacetime \(L^{5/2}\) strain cost of a
feed event identifies the right payment scale; it does not by itself identify
or square-control the selected positive source curve.

## 3. Cubic CKN carrier bound

The pressure/convection local-energy flux is controlled by the scale-critical
cubic density

```math
|U_m|^3+|Q_m-Q_{m,h}|^{3/2}.
\tag{CAM.10}
```

If the selected positive source curve satisfies

```math
a_m(s)
\le
C_{\rm cub}
\int_{B_1}
\left(|U_m(s,y)|^3+|Q_m(s,y)-Q_{m,h}(s,y)|^{3/2}\right)dy
+
\ell_m(s),
\tag{CAM.11}
```

and the cubic density has a terminal strip modulus,

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
\left(|U_m|^3+|Q_m-Q_{m,h}|^{3/2}\right)dyds
=0,
\tag{CAM.12}
```

then `(CAM.1)` follows immediately.

This is the exact consumer form of `ScaleCriticalCubicFluxReserve.A`.  The
direct cubic-flux attempt showed that interpolation estimates rewrite the
pressure/convection flux into this cubic currency, but do not prove the
terminal modulus `(CAM.12)`.

## 4. Why energy participation still misses

For a critical heat-scale packet

```math
u_r(t,x)=r^{-1}U\left({t\over r^2},{x\over r}\right),
\tag{CAM.13}
```

the physical energy and dissipation costs scale as

```math
\int_{B_r}|u_r|^2dx\sim r,
\qquad
\int_{Q_r}|\nabla u_r|^2dxdt\sim r.
\tag{CAM.14}
```

But the normalized critical currencies are order one:

```math
{1\over r^2}\int_{Q_r}|u_r|^3dxdt\sim1,
\tag{CAM.15}
```

```math
\int_{Q_r}|\nabla u_r|^{5/2}dxdt\sim1,
\tag{CAM.16}
```

and the source-square pulse can be normalized so that

```math
\int_{-1}^{0}G_r(s)^2ds\sim1.
\tag{CAM.17}
```

Thus the participation identity in physical energy currency controls only the
weighted sum

```math
\sum_j r_j\,(\text{normalized action})_j,
\tag{CAM.18}
```

while the source-curve modulus needs uniform integrability in normalized time.
For \(r_j=2^{-j}\), the weighted sum can be finite even when the normalized
action does not vanish.

## 5. Exact route consequence

The endpoint curve branch is now:

```math
\boxed{
\begin{aligned}
&\text{selected source-square domination}
\quad\text{or}\quad
\text{selected cubic terminal modulus}
\quad\text{or}\quad
\text{selected critical-strain source-carrier uniform integrability}\\
&\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}.
\end{aligned}
}
\tag{CAM.19}
```

Current inputs prove the consumer implications above.  They do not prove the
production side:

```math
\boxed{
\text{energy/local energy/same-fluid participation}
\not\Longrightarrow
\text{the needed normalized endpoint uniform integrability.}
}
\tag{CAM.20}
```

The missing forward-gold theorem is therefore not another compactness theorem.
It is a production theorem for one of the normalized critical currencies on the
actual selected positive source carrier.

## 6. Pass-or-exit addendum

The later note
`mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md` does not prove
the missing production input above.  It proves the complementary branch
accounting.

For finite selected \(L^1_s\) terminal source curves, either `(CAM.1)` holds or,
after subselection,

```math
\mu_m=a_m(s)\,ds \stackrel{*}{\rightharpoonup}\mu,
\qquad
\mu(\{0\})>0.
\tag{CAM.21}
```

On the same-solution terminal branch, the installed
`TerminalAtomPartFieldFirstExit.A` package consumes `(CAM.21)` as

```math
\mu(\{0\})>0
\Longrightarrow
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{CAM.22}
```

Thus the connector has two different proof roles:

```math
\boxed{
\text{source-square/cubic/strain production}
\Longrightarrow
\text{gold endpoint modulus;}
}
\tag{CAM.23}
```

and

```math
\boxed{
\text{failure of the endpoint modulus}
\Longrightarrow
\text{terminal atom}
\Longrightarrow
\text{Part/Field face failure.}
}
\tag{CAM.24}
```

So the failed source-curve modulus is no longer a fourth in-class terminal
branch.  It remains an unproved forward-gold anti-atom theorem, but its failure
is now routed as a CM Part/Field readout.
