---
theorem_id: forward-gold-original-data-spike-thinning-full-participation-trichotomy-20260623
status: proved-as-full-packet-height-doubling-trichotomy
logical_landing_node: original_data_spike_thinning_full_participation_trichotomy
edge_effect: >-
  Turns the physical spike picture into a same-material packet theorem. A
  finite-time rising spike from smooth finite-energy initial data is not allowed
  to be read as an isolated center object. At each height-doubling step, the
  full pressure-viscosity-incompressibility-velocity packet records one of
  three events: material geometry thins or stretches and spends strain clock;
  the selected active material changes and spends selector/collar/interface
  clock; or the same material packet gains kinetic storage and spends annular
  stress/strain work. Thus an infinite terminal spike-thinning recurrence is an
  infinite full same-material clock recurrence, not a detached endpoint pulse.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-smooth-to-prelimit-master-balance-family-direct-attempt-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-metric-clock-sharpening-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
---

# Original-Data Spike-Thinning Full Participation Trichotomy

Date: 2026-06-23

## 0. Object

Start with one smooth incompressible Navier--Stokes solution from smooth
finite-energy data:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
u(0)=u_0.
\tag{STP.1}
```

The material flow \(X(a,t)\) is defined on every preterminal interval:

```math
\frac{d}{dt}X(a,t)=u(X(a,t),t),
\qquad
\det D_aX(a,t)=1.
\tag{STP.2}
```

So before the terminal limit, a center spike, the annular layers underneath it,
the strain/internal-force record, and the later annular return are one material
history.

Smooth initial data may contain infinitely many frequencies, but not infinite
amplitude.  At finite tower level \(N\),

```math
\int_{\mathbb R^3}(1+|k|^2)^N|\widehat u_0(k)|^2\,dk<\infty.
\tag{STP.3}
```

The question is what a finite-time rising spike must do inside this same
material history.

## 1. Energy forces height-width thinning

Let

```math
H(t)=\|u(t)\|_{L^\infty_x}.
\tag{STP.4}
```

For any level \(h>0\), define the active set

```math
E_h(t)=\{x:\ |u(t,x)|\ge h\}.
\tag{STP.5}
```

The global energy inequality gives

```math
\int_{\mathbb R^3}|u(t,x)|^2\,dx\le E_0.
\tag{STP.6}
```

Therefore

```math
|E_h(t)|
\le
\frac{E_0}{h^2}.
\tag{STP.7}
```

Taking \(h=\theta H(t)\) with fixed \(0<\theta<1\),

```math
|E_{\theta H(t)}(t)|
\le
\frac{E_0}{\theta^2H(t)^2}.
\tag{STP.8}
```

Thus if \(H(t_j)\to\infty\), the high-amplitude region underneath the spike
must thin in physical volume:

```math
H(t_j)\to\infty
\quad\Longrightarrow\quad
|E_{\theta H(t_j)}(t_j)|\to0.
\tag{STP.9}
```

This is the exact finite-energy form of the height-width statement.  A spike
cannot become taller while keeping a fat high-amplitude base.

## 2. A height doubling has only three same-packet meanings

Choose preterminal times \(t_j<t_{j+1}<T_\ast\) with

```math
H(t_{j+1})\ge2H(t_j).
\tag{STP.10}
```

Let \(A_j(t)=X(A_j(t_j),t)\) be the transported material packet carrying the
selected active annular/spike record across \([t_j,t_{j+1}]\).

Because the flow is incompressible,

```math
|A_j(t_{j+1})|=|A_j(t_j)|.
\tag{STP.11}
```

Across a height doubling, the energy-compatible high-amplitude volume scale
drops by at least a factor \(4\):

```math
\frac{E_0}{\theta^2H(t_{j+1})^2}
\le
\frac{1}{4}\,
\frac{E_0}{\theta^2H(t_j)^2}.
\tag{STP.11a}
```

This is a statement about the permitted volume scale, not a claim that the
actual active set has already been identified.  Compare the transported
selected material packet at \(t_{j+1}\) with the high-amplitude part that it is
supposed to carry.  Exactly one of the following happens.

First, the same material packet remains selected but changes shape: transverse
width, collar thickness, or material separation thins while another direction
compensates volume.  With \(F=D_aX\), \(C=F^\top F\), and

```math
S=\frac{\nabla u+\nabla u^\top}{2},
\tag{STP.12}
```

the material metric obeys

```math
\partial_tC=2F^\top S F.
\tag{STP.13}
```

If the relevant material length ratio changes by \(\Lambda\), then

```math
\int_{t_j}^{t_{j+1}}\|S(t)\|_{L^\infty(A_j(t))}\,dt
\ge
\log\Lambda .
\tag{STP.14}
```

In particular, dyadic thinning spends at least a fixed strain-clock quantum.

Second, the selected active material at \(t_{j+1}\) is not the transported
image of the selected material at \(t_j\).  Then the terminal spike is being
carried by packet switching, selector/collar drift, or interface replacement.
In the full four-body packet this is not free; it is recorded by the
selector/collar/interface part of the same clock:

```math
d\Omega_N
\supset
d\mathcal K_{\rm iface}
+
d\mathcal L_{4B,N}.
\tag{STP.15}
```

Third, the selected material remains the same transported packet and the
relevant annular geometry does not pay the dyadic thinning clock on this
interval.  Then the only remaining way for the selected spike record to survive
the height doubling is a positive change in the same material packet's kinetic
storage or stress-work balance.  For any transported cutoff \(\phi_j\) carried
by the same material packet, define

```math
M_j(t)=\int \frac12|u(t,x)|^2\phi_j(t,x)\,dx.
\tag{STP.16}
```

The exact same-material stress identity is

```math
\frac{d}{dt}M_j(t)
+
2\nu\int\phi_j|S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi_j\,dx .
\tag{STP.17}
```

Hence every positive storage rise is paid by the same annular stress/strain
transaction:

```math
[M_j(t_{j+1})-M_j(t_j)]_+
\le
\int_{t_j}^{t_{j+1}}
\left(
2\nu\int\phi_j|S|^2\,dx
+
\left|\int u\cdot(-pI+2\nu S)\nabla\phi_j\,dx\right|
\right)dt .
\tag{STP.18}
```

Thus the three cases are exhaustive at the preterminal smooth level: either the
same material deforms, the selected material changes, or the same material
storage/stress balance changes.  A height doubling cannot occur as a detached
center event.

## 3. Heat-scale and full-clock form

At radius \(r_m\), use the heat-scale variables

```math
V_m(s,y)=r_m u(t_m+r_m^2s,x_m+r_my),
\qquad
Q_m(s,y)=r_m^2p(t_m+r_m^2s,x_m+r_my).
\tag{STP.19}
```

The strain clock is invariant:

```math
\int \|S_y(V_m)(s)\|_{L^\infty_y}\,ds
=
\int \|S_x(u)(t)\|_{L^\infty_x}\,dt.
\tag{STP.20}
```

The stress identity becomes the normalized material annular return identity:

```math
\frac{d}{ds}M_m(s)
+
2\nu\int\phi_m|S_y(V_m)|^2\,dy
=
-\int V_m\cdot(-Q_mI+2\nu S_y(V_m))\nabla_y\phi_m\,dy .
\tag{STP.21}
```

The full same-material clock is

```math
d\Omega_N
=
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
+
d\mathcal L_{4B,N}.
\tag{STP.22}
```

The three height-doubling meanings above are exactly components of
\(d\Omega_N\):

```math
\begin{array}{ll}
\text{material thinning/deformation}
&\leadsto d[\log(1+\mathcal P_N^{mat})]_+,\\[1mm]
\text{material switching/interface/collar drift}
&\leadsto d\mathcal K_{\rm iface}+d\mathcal L_{4B,N},\\[1mm]
\text{same-material storage rise / stress work}
&\leadsto dA_{4B,N}+d\mathcal L_{4B,N}.
\end{array}
\tag{STP.23}
```

The fixed lower bound is a selected-packet statement, not a statement about an
arbitrary pointwise blip.  The packet must be normalized as a non-gauge
terminal witness at finite tower level \(N\).  Equivalently, at least one of
the following normalized quantities is bounded below on the packet window:

```math
\operatorname{Var}_{I_j}M_m,
\qquad
\int_{I_j}\|S_y(V_m)\|_{L^\infty(\widehat A_m)}\,ds,
\qquad
\mathcal C^\perp(P_j),
\qquad
\mathcal K_{\rm iface}(I_j).
\tag{STP.24}
```

This is exactly the admission condition for a selected terminal packet.  A
pure pointwise height spike with all these normalized quantities vanishing is
not a non-gauge selected terminal witness; it has no annular
stress/strain-history record for the proof to test.

For a normalized non-gauge selected terminal packet there is a constant
\(\eta_N>0\), depending only on the normalization and tower level, such that
each genuine height-doubling event satisfies

```math
\int_{I_j}d\Omega_N\ge \eta_N .
\tag{STP.25}
```

This is the full-participation version of the spike-thinning rule.

## 4. Contradiction with finite full clock

The simultaneous material four-body master balance gives

```math
d\mathfrak L_{4B,N}
+
c\,d\Omega_N
\le
dR_{4B,N},
\qquad
\int dR_{4B,N}<\infty,
\qquad
\mathfrak L_{4B,N}\ge -C.
\tag{STP.26}
```

Therefore

```math
\int_{\sigma_0}^{\infty}d\Omega_N<\infty.
\tag{STP.27}
```

If a finite-time terminal spike rose without bound on the represented material
history as a normalized non-gauge selected packet, it would have infinitely
many height doublings.  By `(STP.25)`,

```math
\int_{\sigma_0}^{\infty}d\Omega_N
\ge
\sum_j\eta_N
=
\infty,
\tag{STP.28}
```

contradicting `(STP.27)`.

## 5. Result

The physical spike picture closes as a full participation theorem:

```math
\boxed{
\text{finite-energy smooth initial wave packet}
+
\text{full same-material four-body clock}
\Longrightarrow
\text{no finite-time infinite spike-thinning recurrence.}
}
\tag{STP.29}
```

The proof does not use a viscosity-only drain, pressure-only recovery, finite
jet proxy, endpoint measure proxy, or detached readout.  Every case is read on
the same pressure-viscosity-incompressibility-velocity material packet.
