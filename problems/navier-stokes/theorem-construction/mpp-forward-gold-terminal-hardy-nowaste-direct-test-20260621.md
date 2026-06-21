---
theorem_id: forward-gold-terminal-hardy-nowaste-direct-test-20260621
status: hardy-sufficient-theorem-proved-production-reduces-to-uniform-weighted-full-packet-moment-or-cm-endpoint-exit
logical_landing_node: terminal_hardy_nowaste_direct_test
edge_effect: "Tests Thomas's terminal Hardy/no-waste estimate as the endpoint no-jump supplier. The Hardy lemma is exact: a uniform moment sup_m int (-s)^(-alpha) dmu_m < infinity implies the terminal strip modulus and kills the heat-scale pulse. A genuine measure version uses legal residue plus positive variation of the four-body storage drop, which dominates the endpoint drop. The PDE production route is also exact as a conditional estimate: uniform normalized local energy-dissipation and pressure L^(5/3) bounds give the selected smooth full-packet trace density in L_s^(10/9), hence a Hardy bound for every alpha<1/10, while the lower-order energy term permits alpha<1. Legal, terminal, signed, selector, and geometry measures still need their own weighted Hardy moments. Current installed inputs do not provide those uniform weighted moments on the retained terminal heat-scale family; failure is exactly endpoint concentration and must be charged as pressure/collar, terminal trace/storage, donor/saturation, selector/collar, geometry/Field, or CM endpoint-face exit."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-endpoint-nojump-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-discarded-partner-bridge-rework-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-minimal-producer-exhaustion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-terminal-critical-reserve-consolidation-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-residence-trace-ac-residual-lpas-consolidation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Terminal Hardy / No-Waste Direct Test

Date: 2026-06-21

## 0. Target

The current endpoint target is

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\left(
R_m((-\theta,0])
+
[L_{4B,m}(-\theta)-L_{4B,m}(0)]_+
\right)=0.
}
\tag{THN.1}
```

This note tests the terminal Hardy estimate proposed as a direct no-jump
supplier.

## 1. The endpoint payment measure

To make the endpoint payment additive, use the positive variation measure of
the storage drop.  Define

```math
d\mu_m
:=
dR_m
+
d(-L_{4B,m})_+ .
\tag{THN.2}
```

Then

```math
R_m((-\theta,0])
+
[L_{4B,m}(-\theta)-L_{4B,m}(0)]_+
\le
\mu_m((-\theta,0]).
\tag{THN.3}
```

On a monotone drop branch, `(THN.3)` is equality.  In general, positive
variation is the correct measure because it also charges oscillatory endpoint
drop.

## 2. Hardy moment implies no jump

Assume that for some \(\alpha\in(0,1)\),

```math
\boxed{
\sup_m
\int_{-1}^{0}(-s)^{-\alpha}\,d\mu_m(s)
\le C_\alpha<\infty .
}
\tag{THN.4}
```

For every \(\theta\in(0,1)\),

```math
\begin{aligned}
\mu_m((-\theta,0])
&=
\int_{-\theta}^{0}1\,d\mu_m(s)\\
&\le
\theta^\alpha
\int_{-\theta}^{0}(-s)^{-\alpha}\,d\mu_m(s)\\
&\le
C_\alpha\theta^\alpha .
\end{aligned}
\tag{THN.5}
```

Therefore

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m\mu_m((-\theta,0])=0.
}
\tag{THN.6}
```

Combining `(THN.3)` and `(THN.6)` proves the endpoint no-jump theorem
`(THN.1)`.

## 3. The heat-scale pulse is killed exactly

For the terminal pulse

```math
a_m(s)
=
a\,\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{THN.7}
```

one has

```math
\int_{-1}^{0}(-s)^{-\alpha}a_m(s)\,ds
=
a\tau_m^{-1}\int_{-\tau_m}^{0}(-s)^{-\alpha}\,ds
=
{a\over 1-\alpha}\tau_m^{-\alpha}
\to\infty .
\tag{THN.8}
```

So a uniform terminal Hardy moment excludes exactly the endpoint concentration
that finite \(L^1_s\) mass permits.

## 4. Expansion through the full packet

The endpoint no-jump direct test gives

```math
\left[M_m(0)-M_m(-\theta)\right]_+
\le
\int_{-\theta}^{0}[H_m(s)]_+\,ds
+L_m^+(-\theta,0).
\tag{THN.9}
```

Thus it is enough to prove weighted estimates of the form

```math
\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+\,ds\le C,
\tag{THN.10}
```

and

```math
\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_j(s)\le C
\tag{THN.11}
```

for each endpoint measure

```math
\Lambda_j
\in
\{
\Lambda_{\rm legal},
\Lambda_{\rm term},
\Lambda_{\rm sgn},
\Lambda_{\rm sel},
\Lambda_{\rm geom}
\}.
\tag{THN.12}
```

Each failure of `(THN.11)` has the typed destination Thomas listed:

```math
\begin{array}{ccl}
\Lambda_{\rm legal} &\leadsto& \text{legal endpoint loss},\\
\Lambda_{\rm term} &\leadsto& \text{terminal trace/storage loss},\\
\Lambda_{\rm sgn} &\leadsto& \text{donor/saturation loss},\\
\Lambda_{\rm sel} &\leadsto& \text{selector/collar loss},\\
\Lambda_{\rm geom} &\leadsto& \text{geometry/Field loss}.
\end{array}
\tag{THN.13}
```

Pressure/collar memory is included in the \(H_m\) estimate or in
\(\Lambda_{\rm legal}\), depending on the decomposition.

## 5. Conditional PDE production of the smooth full-packet trace Hardy bound

There is a concrete PDE route for `(THN.10)`.

Assume the retained normalized packets satisfy the uniform local energy class
bound on a fixed enlarged carrier:

```math
\sup_m
\left(
\|V_m\|_{L_s^\infty L_y^2}^2
+
\|\nabla V_m\|_{L_{s,y}^2}^2
+
\|Q_m\|_{L_{s,y}^{5/3}}^{5/3}
\right)
\le C_0 .
\tag{THN.14}
```

Assume also that the cutoffs have uniformly bounded \(C^2\) geometry in the
normalized variables and that pressure is decomposed into local plus harmonic
memory in the installed full-packet way.

The standard local energy interpolation gives

```math
\|V_m\|_{L_{s,y}^{10/3}}^{10/3}
\le
C
\|V_m\|_{L_s^\infty L_y^2}^{4/3}
\|\nabla V_m\|_{L_{s,y}^2}^{2}
\le C(C_0).
\tag{THN.15}
```

Set

```math
F_m(s)
=
\int_{\operatorname{collar}}
\left(
|V_m|^3+|Q_m|^{3/2}+|V_m|^2
\right)\,dy .
\tag{THN.16}
```

By Hölder on the fixed carrier,

```math
\|F_m\|_{L_s^{10/9}(-1,0)}
\le C(C_0).
\tag{THN.17}
```

The local energy identity bounds the positive smooth trace by

```math
[H_m(s)]_+
\le
C F_m(s)+R_m^{smooth/legal}(s).
\tag{THN.18}
```

Since \((-s)^{-\alpha}\in L^{10}(-1,0)\) exactly when
\(\alpha<1/10\), `(THN.17)` gives

```math
\int_{-1}^{0}(-s)^{-\alpha}F_m(s)\,ds
\le
C_\alpha(C_0),
\qquad
0<\alpha<1/10.
\tag{THN.19}
```

Thus, under `(THN.14)` and the weighted legal endpoint bounds,

```math
\boxed{
\sup_m
\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+\,ds
\le C_\alpha,
\qquad
0<\alpha<1/10.
}
\tag{THN.20}
```

This is a real conditional Hardy/no-jump producer.  It is not a formal
renaming of terminal AC.

## 6. Why this does not close from current inputs

The conditional hypothesis `(THN.14)` is the new production burden.

Physical energy on shrinking heat-scale packets gives radius-discounted
control.  In the usual notation,

```math
D_m^{phys}
=
r_m
\nu\int_{-1}^{0}\int |\nabla_y V_m|^2\,dy\,ds .
\tag{THN.21}
```

So the global energy inequality controls the physical sum

```math
\sum_m r_m D_m^{ren},
\tag{THN.22}
```

not a uniform or summable unweighted control of \(D_m^{ren}\).

Likewise, physical cubic-pressure mass controls a radius-weighted version of
the normalized CKN quantity, not `(THN.14)` or `(THN.17)` on every retained
terminal packet.

Therefore TerminalHardyNoWaste.A is proved as a sufficient theorem, and it is
conditionally produced by uniform normalized local energy/pressure bounds, but
those bounds are not installed on the surviving terminal Zeno family by the
current inputs.

## 7. CM endpoint consumption of Hardy failure

Failure of the Hardy bound means there is positive endpoint concentration of
the full-packet payment measure:

```math
\exists a>0:
\qquad
\lim_{\theta\downarrow0}\limsup_m
\mu_m((-\theta,0])\ge a .
\tag{THN.23}
```

After the already-paid pressure, viscous, legal, finite signed, selector, and
geometry channels are removed, this is exactly a terminal time-face atom.  It
has no positive terminal time thickness in the limiting packet:

```math
a_m(s)\,ds
\stackrel{*}{\rightharpoonup}
a\delta_0 .
\tag{THN.24}
```

Thus the CM-facing landing is:

```math
\boxed{
\text{positive terminal atom survives}
\Longrightarrow
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}
}
\tag{THN.25}
```

after same-witness admission.  In ordinary terms: the endpoint atom is visible,
but it is not a genuine retained field across any positive terminal time
thickness.

## 8. Final state

The terminal Hardy route gives an exact no-jump theorem:

```math
\boxed{
\texttt{TerminalHardyNoWaste.A}
\Longrightarrow
\texttt{FullHodgeStokesEndpointNoJump.A}.
}
\tag{THN.26}
```

It also gives a concrete conditional PDE production route:

```math
\boxed{
\text{uniform normalized local energy--dissipation--pressure bound}
+
\text{weighted endpoint bounds for legal/sign/selector/geometry measures}
\Longrightarrow
\texttt{TerminalHardyNoWaste.A}.
}
\tag{THN.27}
```

The current unproved production point is exactly the first term in `(THN.27)`
on the retained terminal heat-scale family:

```math
\boxed{
\sup_m
\left(
\|V_m\|_{L_s^\infty L_y^2}^2
+
\|\nabla V_m\|_{L_{s,y}^2}^2
+
\|Q_m\|_{L_{s,y}^{5/3}}^{5/3}
\right)
<\infty .
}
\tag{THN.28}
```

Absent `(THN.28)` or an equivalent source-square / critical-strain / normalized
CKN / strict no-waste theorem, Hardy failure routes to the typed endpoint
CM consumption branch `(THN.25)`.
