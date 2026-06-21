---
theorem_id: forward-gold-full-hodgestokes-endpoint-nojump-direct-test-20260621
status: direct-attempt-fails-terminal-heat-scale-pulse-obstruction-exact
logical_landing_node: full_hodgestokes_endpoint_nojump_direct_test
edge_effect: "Attacks the endpoint trace/no-jump piece of ParticipationPreservingNoResidueFullCycle.A using the full Hodge-Stokes local energy/participation packet. The note proves the exact conditional no-jump implication: a uniform terminal strip modulus for the selected positive full-packet trace, together with terminal absolute continuity of the legal residue, forces the positive endpoint storage atom to vanish. It then tests whether pressure-viscosity-incompressibility coupling itself supplies that modulus. The attempt fails: incompressibility cancels only the interior transport, pressure has no temporal smoothing and leaves harmonic/collar memory, viscosity gives visible loss but physical dissipation is radius-discounted under heat-scale normalization, and legal finite mass can still converge to a terminal atom. The exact obstruction is the terminal heat-scale pulse: smooth preterminal AC densities supported on shrinking normalized terminal strips have fixed selected mass and converge to a positive endpoint jump. Thus the endpoint branch is reduced to FullHodgeStokesEndpointUniformIntegrability.A / UnweightedTerminalCriticalActionReserve.A / StrictNoWasteFullLoopLyapunov.A or CM endpoint-face consumption."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-loop-carrier-rigidity-noresidue-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-signed-atom-balance-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-pressure-trace-defect-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-collar-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-viscous-defect-dichotomy-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-residence-trace-ac-residual-lpas-consolidation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-corrected-timeface-nojump-exhaustion-20260619.md
---

# Full Hodge-Stokes Endpoint No-Jump Direct Test

Date: 2026-06-21

## 0. Target

The endpoint piece left by the full-packet route is the positive terminal
storage atom

```math
\left[dM_\ast(\{0\})\right]_+.
\tag{EHN.1}
```

The question here is whether the full pressure--viscosity--incompressibility
participation packet excludes `(EHN.1)` directly.

Work in heat-scale variables on a retained same carrier:

```math
V_m(s,y)
=
r_m u(T_m+r_m^2s,x_m+r_my),
\qquad
Q_m(s,y)
=
r_m^2 p(T_m+r_m^2s,x_m+r_my).
\tag{EHN.2}
```

They satisfy

```math
\partial_sV_m+(V_m\cdot\nabla)V_m+\nabla Q_m-\nu\Delta V_m=0,
\qquad
\nabla\cdot V_m=0.
\tag{EHN.3}
```

For a retained cutoff \(\eta_m\), define the localized storage

```math
M_m(s)
=
{1\over2}\int \eta_m^2 |V_m(s,y)|^2\,dy
\tag{EHN.4}
```

and the interior viscous loss

```math
D_m(a,b)
=
\nu\int_a^b\int \eta_m^2|\nabla V_m|^2\,dy\,ds.
\tag{EHN.5}
```

The local energy/participation identity is

```math
M_m(b)-M_m(a)+D_m(a,b)
=
\int_a^b H_m(s)\,ds+L_m(a,b),
\qquad -1<a<b<0,
\tag{EHN.6}
```

where

```math
\begin{aligned}
H_m(s)
&=
{1\over2}\int |V_m|^2\,\partial_s(\eta_m^2)\,dy \\
&\quad
+\int
\left({1\over2}|V_m|^2+Q_m\right)
V_m\cdot\nabla(\eta_m^2)\,dy \\
&\quad
+\nu\int {1\over2}|V_m|^2\Delta(\eta_m^2)\,dy .
\end{aligned}
\tag{EHN.7}
```

The term \(L_m\) records legal localization, collar, selector, sign, and
already-routed packet residues not included in the displayed smooth identity.
In the full Hodge-Stokes packet, `(EHN.7)` is not a scalar replacement for the
equation.  It is the scalar storage readout after the same carrier has retained
the transport, pressure, viscous, time, divergence, cutoff, and signed channels.

The no-jump target is

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\left[M_m(0)-M_m(-\theta)\right]_+=0
}
\tag{EHN.8}
```

or equivalently

```math
\boxed{
\left[dM_\ast(\{0\})\right]_+=0.
}
\tag{EHN.9}
```

## 1. Exact conditional no-jump implication

From `(EHN.6)`,

```math
M_m(0)-M_m(-\theta)
=
\int_{-\theta}^{0}H_m(s)\,ds
-D_m(-\theta,0)
+L_m(-\theta,0).
\tag{EHN.10}
```

Since \(D_m\ge0\),

```math
\left[M_m(0)-M_m(-\theta)\right]_+
\le
\int_{-\theta}^{0}[H_m(s)]_+\,ds
+L_m^+(-\theta,0).
\tag{EHN.11}
```

Therefore `(EHN.8)` follows if

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}[H_m(s)]_+\,ds=0
}
\tag{EHN.12}
```

and

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
L_m^+(-\theta,0)=0.
}
\tag{EHN.13}
```

Thus the endpoint no-jump theorem is exact at the trace level:

```math
\boxed{
\text{full-packet positive trace terminal AC}
+
\text{legal terminal AC}
\Longrightarrow
\text{no positive endpoint storage jump.}
}
\tag{EHN.14}
```

This is a proof, but it is only a consumer theorem.  The real question is
whether `(EHN.12)`--`(EHN.13)` are produced by the coupled Navier--Stokes
packet itself.

## 2. Test of pressure--viscosity--incompressibility coupling

The coupling gives three exact structural gains.

First, incompressibility removes the interior transport production:

```math
\int \eta_m^2 V_m\cdot (V_m\cdot\nabla)V_m\,dy
=
-{1\over2}\int |V_m|^2V_m\cdot\nabla(\eta_m^2)\,dy.
\tag{EHN.15}
```

This is not a sign gain.  It moves the transport contribution to the collar.

Second, viscosity gives the dissipative term in `(EHN.5)`, but the localized
viscous cutoff term remains

```math
\nu\int {1\over2}|V_m|^2\Delta(\eta_m^2)\,dy.
\tag{EHN.16}
```

It is lower order on a fixed packet, and it can be absorbed or routed when a
terminal strip modulus or unweighted critical reserve is already present.  It
does not by itself prove `(EHN.12)`.

Third, pressure is tied to \(V_m\) by

```math
-\Delta Q_m
=
\partial_i(V_m)_j\,\partial_j(V_m)_i
\tag{EHN.17}
```

or by the usual local pressure decomposition.  The local pressure generated by
the retained transport product passes under strong same-carrier convergence.
The remaining harmonic pressure memory enters `(EHN.7)` only through the collar
term

```math
\int Q_m V_m\cdot\nabla(\eta_m^2)\,dy.
\tag{EHN.18}
```

Again, this is a visibility statement, not a no-jump estimate.

The available size bound is scale-critical:

```math
\begin{aligned}
|H_m(s)|
&\le
C_\eta
\int_{\operatorname{collar}(\eta_m)}
\left(|V_m|^3+|Q_m|^{3/2}+|V_m|^2\right)\,dy \\
&\quad
+\varepsilon\nu\int \eta_m^2|\nabla V_m|^2\,dy
+R_m^{legal}(s),
\end{aligned}
\tag{EHN.19}
```

after the usual Hölder/Young routing of the pressure and viscous cutoff pieces.
Thus `(EHN.12)` would follow from a terminal strip modulus for the
scale-critical collar quantity in `(EHN.19)`.  Current energy, dissipation,
weak compactness, and elliptic pressure recovery do not supply that modulus.

The obstruction is not that the packet loses participation.  The packet keeps
participation visible.  The obstruction is that visible pressure/convection
collar participation can concentrate in the terminal heat-scale time layer.

## 3. Terminal legal non-AC is not excluded by finite legal mass

Even if \(L_m\) is already legal in the ordinary finite-mass sense,

```math
\sup_m L_m^+(-1,0)<\infty,
\tag{EHN.20}
```

this does not imply `(EHN.13)`.

The model

```math
dL_m^+(s)
=
{a\over\theta_m}
\mathbf 1_{(-\theta_m,0]}(s)\,ds,
\qquad
\theta_m\downarrow0,
\tag{EHN.21}
```

satisfies `(EHN.20)` with mass \(a\), but

```math
\lim_{\theta\downarrow0}\limsup_m
L_m^+(-\theta,0)
=a.
\tag{EHN.22}
```

So terminal legal non-absolute-continuity is excluded only when "legal" includes
the stronger terminal strip modulus, or when the legal mass is charged to a
separate already-summable endpoint ledger.  Finite legal mass alone is not an
endpoint no-jump theorem.

## 4. Exact terminal heat-scale obstruction

The endpoint obstruction can be written without changing the Navier--Stokes
local identity.

Let \(\rho\ge0\) be smooth, supported in \((-1,0]\), and

```math
\int_{-1}^{0}\rho(\sigma)\,d\sigma=1.
\tag{EHN.23}
```

Set

```math
h_m(s)
=
{a\over\theta_m}\rho(s/\theta_m),
\qquad
\theta_m\downarrow0.
\tag{EHN.24}
```

Then \(h_m\,ds\) is absolutely continuous for every \(m\), but

```math
h_m(s)\,ds
\stackrel{*}{\rightharpoonup}
a\delta_0.
\tag{EHN.25}
```

If the selected full-packet positive trace has

```math
[H_m(s)]_+
=h_m(s)+o_{\mathcal M}(1)
\tag{EHN.26}
```

on the terminal layer, `(EHN.11)` permits

```math
\lim_{\theta\downarrow0}\limsup_m
\left[M_m(0)-M_m(-\theta)\right]_+
\ge a
\tag{EHN.27}
```

unless a negative countertrace, visible dissipation/loss, legal endpoint AC, or
a separate no-waste reserve removes it.

Under physical unscaling, a normalized packet with order-one critical activity
has raw physical dissipation multiplied by the radius:

```math
D_m^{phys}(P_m)
=
r_m
\nu\int_{-1}^{0}\int\eta_m^2|\nabla_yV_m|^2\,dy\,ds.
\tag{EHN.28}
```

Thus the global physical energy inequality controls only the radius-discounted
sum

```math
\sum_m r_m A_m<\infty,
\tag{EHN.29}
```

not the unweighted log-scale reserve

```math
\sum_m A_m<\infty
\qquad\text{or}\qquad
\int_{\sigma_0}^{\infty}A(\sigma)\,d\sigma<\infty.
\tag{EHN.30}
```

This is the terminal heat-scale pulse.  It is smooth before the endpoint, it is
seen by the full participation packet, and it is not removed by finite physical
energy or by spatial pressure ellipticity.

## 5. Result of the direct attempt

The endpoint trace/no-jump piece is not proved from the current
pressure--viscosity--incompressibility coupling.

What is proved here is the exact consumer implication:

```math
\boxed{
\text{terminal strip AC of the selected positive full-packet trace}
+
\text{terminal strip AC of the legal residue}
\Longrightarrow
\left[dM_\ast(\{0\})\right]_+=0.
}
\tag{EHN.31}
```

What remains open is the production theorem:

```math
\boxed{
\texttt{FullHodgeStokesEndpointUniformIntegrability.A}
}
\tag{EHN.32}
```

with content

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\left(
\int_{-\theta}^{0}[H_m(s)]_+\,ds
+L_m^+(-\theta,0)
\right)
=0
}
\tag{EHN.33}
```

after retained signed partners, visible viscous loss, and already-paid legal
exits are removed.

Equivalent non-alias suppliers are:

```math
\boxed{
\texttt{UnweightedTerminalCriticalActionReserve.A}
}
\tag{EHN.34}
```

or

```math
\boxed{
\texttt{StrictNoWasteFullLoopLyapunov.A}
}
\tag{EHN.35}
```

or a CM endpoint-face consumption theorem for the retained terminal heat-scale
pulse.

Thus the direct endpoint proof fails at one exact place:

```math
\boxed{
\text{the full packet sees the terminal heat-scale pulse, but current inputs do
not force its positive time marginal to be uniformly absolutely continuous at }
s=0.
}
\tag{EHN.36}
```

