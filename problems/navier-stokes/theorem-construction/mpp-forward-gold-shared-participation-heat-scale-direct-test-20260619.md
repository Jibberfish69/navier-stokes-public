# MPP Forward Gold Shared Participation Heat-Scale Direct Test

Date: 2026-06-19

## Status

Direct test complete.  The corrected participation law gives the right
governing object, but it does not by itself close the terminal heat-scale
anti-atom.

The law is not "pressure alone", "flux alone", "transfer payment", or "shell
debt."  The law is that the selected packet remains part of the same coupled
fluid, so its motion is governed by the same pressure-viscosity-
incompressibility-neighbor relation as the surrounding fluid.

In formula form, for the velocity this is

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{SPH.1}
```

At tower depth \(k\), the route-native form is

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{SPH.2}
```

The no-private-packet economy, transfer/payment throttle, donor drain,
dissipation/return clock, and shell-density debt curves are consequences or
readouts of `(SPH.1)`--`(SPH.2)`.  They are not the law itself.

## 1. Heat-scale form of the shared law

Let \(T\) be the alleged terminal time, set

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
```

and define

```math
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x).
\tag{SPH.3}
```

Then `(SPH.1)` becomes

```math
\partial_s v
 +(v\cdot\nabla_y)v
 +\nabla_y q
 +{1\over2}y\cdot\nabla_y v
 +{1\over2}v
=
\nu\Delta_y v,
\qquad
\nabla_y\cdot v=0.
\tag{SPH.4}
```

This is the heat-scale participation law.  Pressure, convection, viscosity,
incompressibility, and the parabolic dilation are one balance.  None of those
terms should be split off as an isolated obstruction before this equation has
been used as a single carrier law.

## 2. Local packet balance

Let \(\rho_R\ge0\) be a smooth cutoff on the normalized packet and set

```math
M_R(s)
=
\int {1\over2}|v(s,y)|^2\rho_R(y)\,dy.
\tag{SPH.5}
```

Multiplying `(SPH.4)` by \(v\rho_R\) and integrating gives the exact packet
identity

```math
\begin{aligned}
M_R'(s)
&+
\nu\int |\nabla v|^2\rho_R\,dy
\\
&=
{1\over2}\int |v|^2v\cdot\nabla\rho_R\,dy
+
\int qv\cdot\nabla\rho_R\,dy
\\
&\quad
+
{\nu\over2}\int |v|^2\Delta\rho_R\,dy
+
{1\over4}\int |v|^2\rho_R\,dy
+
{1\over4}\int |v|^2 y\cdot\nabla\rho_R\,dy.
\end{aligned}
\tag{SPH.6}
```

This is the exact form of the participation accounting at heat scale.  The
right-hand side is the packet interface: nonlinear transport, pressure work,
viscous cutoff exchange, and parabolic-dilation bookkeeping.  The useful
reading is not "pressure is the problem."  The useful reading is that the
whole interface has to be controlled as one participation relation.

## 3. What the law proves immediately

First, the packet cannot be a private object.  Any increase of \(M_R\) or of a
selected packet readout must appear through the shared interface terms in
`(SPH.6)` or through an already named legal/source defect.

Second, recurrence is visible.  If a normalized heat-scale packet remains
bounded below on infinitely many log-time slabs, then the same argument used in
the recurrence-action note forces repeated unweighted critical action unless
the terminal behavior has already exited through tails, source defects, or
loss of the selected carrier.

Third, a pressure-only formulation is the wrong object.  Pressure appears only
inside the shared interface term

```math
\int qv\cdot\nabla\rho_R\,dy,
\tag{SPH.7}
```

and that term is coupled to the convection, viscous exchange, and dilation
terms in `(SPH.6)`.

## 4. Why this still does not close the gold route

The identity `(SPH.6)` is exact, but it is not coercive.  The interface terms
are critical and sign-indefinite.  At heat scale they can remain normalized
order one while the physical time window and physical local energy both shrink.

Thus the participation law gives:

```math
\text{terminal heat-scale pulse}
\Longrightarrow
\text{visible shared-interface participation accounting,}
\tag{SPH.8}
```

but it does not give:

```math
\text{visible shared-interface participation accounting}
\Longrightarrow
\text{uniform terminal strip modulus.}
\tag{SPH.9}
```

That missing implication is the actual forward-gold payment.

## 5. Radius-time-amplitude accounting

The exact scalar obstruction has three variables, not one:

```math
\text{radius }r_j,\qquad
\alpha_t r_j^2\le \tau_j\le A_t r_j^2,\qquad
\text{amplitude }a_j.
\tag{SPH.10}
```

For a normalized heat-scale packet

```math
u_j(t,x)
=
a_jr_j^{-1}
V\!\left({t-t_j\over r_j^2},{x-x_j\over r_j}\right),
\tag{SPH.11}
```

there are fixed profile-dependent constants \(0<c_{ED}(V)\le C_{ED}(V)<\infty\)
such that

```math
c_{ED}(V)a_j^2r_j
\le
E_j+D_j
\le
C_{ED}(V)a_j^2r_j.
\tag{SPH.12}
```

The critical interface currencies have fixed-profile homogeneous powers:

```math
\|u_j(t)\|_{L^3(B_{r_j})}^3
=C_3(V)a_j^3,
\tag{SPH.13}
```

```math
{1\over r_j^2}
\int_{Q_j}\left(|u_j|^3+|p_j|^{3/2}\right)\,dx\,dt
=C_{CKN}(V,p_V)a_j^3,
\tag{SPH.14}
```

and, for the Serrin \(L^5\) action,

```math
\int_{Q_j}|u_j|^5\,dx\,dt
=C_5(V)a_j^5.
\tag{SPH.15}
```

So participation plus physical energy gives at most a first-moment budget:

```math
\sum_j a_j^2r_j<\infty.
\tag{SPH.16}
```

The forward-gold no-jump theorem needs an unweighted critical budget or a
terminal-tail version:

```math
\sum_j a_j^3<\infty,
\qquad
\sum_j\mathcal C(Q_j)<\infty,
\qquad
\text{or}\qquad
\lim_{N\to\infty}\sum_{j\ge N}\mathcal C(Q_j)=0.
\tag{SPH.17}
```

There is no scale-independent inequality upgrading `(SPH.16)` into
`(SPH.17)`.  For example, with \(r_j=2^{-j}\) and

```math
a_j=r_j^{-1/4},
\tag{SPH.18}
```

one has

```math
\sum_j a_j^2r_j
=
\sum_j r_j^{1/2}
<\infty,
\tag{SPH.19}
```

while

```math
a_j^3=r_j^{-3/4}\to\infty.
\tag{SPH.20}
```

This is the precise mathematical form of the underpayment issue.  At fixed
positive radius, a terminal time window cannot carry a fixed packet for free.
At heat-scale radius, the radius factor \(r_j\) discounts the physical payment.
The remaining burden is to prove that the amplitude cannot exploit that
discount without becoming a source-square, normalized CKN, critical-strain, or
CM Field readout.

## 6. Exact reduced supplier

The corrected target is not an isolated pressure estimate.  The target is a
coercive readout of the whole shared participation interface.  One usable form
would be a strict no-waste Lyapunov inequality

```math
-{d\over ds}L_R(s)
\ge
c\,\mathcal A_R(s)
-
\mathcal R_{\rm legal}(s),
\tag{SPH.21}
```

where \(L_R\) is bounded below, \(\mathcal R_{\rm legal}\) is summable, and
\(\mathcal A_R\) dominates the recurring heat-scale interface action.

Equivalently, one may prove the same payment as a terminal moving-packet
modulus, selected critical-strain Carleson reserve, normalized CKN Carleson
reserve, or source-square reserve.  Those are different readouts of the same
shared participation relation, not separate governing laws.

## Verdict

The corrected participation-law pass improves the target.  It replaces
pressure-isolated proof searching with the exact heat-scale shared-interface
identity `(SPH.6)`.

It does not close the terminal time-face atom from current inputs.  The
remaining gold supplier is:

```math
\boxed{
\text{coercive shared-participation readout of the heat-scale interface}
}
\tag{SPH.22}
```

in one of the concrete forms:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
}
\tag{SPH.23}
```

or

```math
\boxed{
\text{TerminalMovingPacketTraceModulus.A}
\quad\text{/}\quad
\text{SelectedCriticalStrainCarleson.A}
\quad\text{/}\quad
\text{NormalizedCKNCarleson.A}
\quad\text{/}\quad
\text{SourceSquareReserve.A}.
}
\tag{SPH.24}
```

So the branch is not "pressure obstruction."  It is shared participation
without a coercive terminal readout.
