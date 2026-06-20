# MPP Forward-Gold Post-Endpoint UI / Minimal Split / Active-Height Sweep

Date: 2026-06-20

## Status

Direct consolidation complete.  This note does not solve the Navier-Stokes MPP
smoothness problem.

It records the exact state after the selected-carrier endpoint uniform
integrability test, the minimal-counterexample split, the interior
first-created reserve test, the first-created reserve source-square energy
test, the active-height/enstrophy throttle test, and the native trilinear
same-carrier reserve attempt are put on one proof surface.

The result is sharp:

```math
\boxed{
\text{endpoint source anti-atom, first-created reserve, active height, and
native trilinear feed are the same heat-scale obstruction unless one proves an
unweighted reserve on the actual selected positive carrier.}
}
\tag{PEMAS.1}
```

## 1. The exact selected endpoint object

For a selected terminal heat-scale packet \(P_m\) with radius \(r_m\downarrow0\)
and normalized time

```math
s={t-T\over r_m^2}\in[-1,0],
\tag{PEMAS.2}
```

the route-native positive source marginal is

```math
a_m(s)
:=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\right\rangle
\right]_+
(T+r_m^2s,x)\,dx .
\tag{PEMAS.3}
```

The endpoint no-jump theorem is

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
}
\tag{PEMAS.4}
```

The current native visibility package proves only

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds<\infty.
\tag{PEMAS.5}
```

The sharp terminal layer

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad \tau_m\downarrow0,
\tag{PEMAS.6}
```

satisfies `(PEMAS.5)` and violates `(PEMAS.4)`.

Thus finite normalized \(L^1_s\) source mass is not the missing theorem.  The
missing theorem is endpoint uniform integrability, or a stronger same-carrier
mechanism that implies it.

## 2. Minimal failure gives a split, not a proof

A minimal failure of the unweighted terminal critical-action reserve gives two
cases.

First, the action concentrates in every terminal strip \((-\theta,0]\).  This is
exactly the endpoint atom branch `(PEMAS.6)`.  The terminal source-curve
pass-or-exit package consumes that branch at the CM readout level only after
same-witness admission and uniform service-topology certification.  Then the
same-solution atom fails the `Part` or `Field` service budget.  This does not
prove a forward-gold anti-atom from original inputs.

Second, a fixed fraction of the action lives away from \(s=0\).  Minimality then
selects a first-appearance window \(W\) satisfying

```math
\left[
R_N(W)
-(1-\delta)R_N({\rm Past}(W))
-Loss_{\rm legal}(W)
\right]_+
\ge c_\eta.
\tag{PEMAS.7}
```

The reserve is

```math
R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt .
\tag{PEMAS.8}
```

This interior branch is not an endpoint source-curve atom.  The model

```math
G_m(s)=h_m^{-1/2}{\bf 1}_{(s_0,s_0+h_m]}(s),
\qquad s_0<0,
\qquad h_m\downarrow0,
\tag{PEMAS.9}
```

has

```math
\int G_m(s)^2\,ds=1,
\qquad
\int G_m(s)\,ds=h_m^{1/2}\to0,
\tag{PEMAS.10}
```

and no terminal endpoint atom.  The weak limit is an interior normalized-time
square-reserve atom.

So minimality localizes the unpaid reserve; it does not pay it.

The first-created reserve source-square energy test identifies the exact
payment for this interior branch.  On the same selected carrier, the shell
balance

```math
E'(t)+c_0\nu D(t)\le F(t)+L(t)
\tag{PEMAS.10a}
```

gives

```math
R_I
\le
C_\nu S_I
+C_\nu B_I^-
+C_\nu L_I^E,
\qquad
S_I=\int_I\lambda F(t)^2\,dt.
\tag{PEMAS.10b}
```

Thus the interior first-created reserve is paid once same-carrier
`SourceSquareReserve.A` holds and inherited past, boundary drop, and legal spill
are separated.  The production wall is the source-square estimate itself.

## 3. Active height is a readout unless a throttle is proved

Define

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
H_N(W):=\sup_{t\in W}\sup_{k>N}2^kT_k(t),
\tag{PEMAS.11}
```

and

```math
M_N(W):=\int_W\sum_{k>N}T_k(t)\,dt .
\tag{PEMAS.12}
```

Then the exact factorization is

```math
R_N(W)\le H_N(W)M_N(W).
\tag{PEMAS.13}
```

Therefore a first-appearance pulse with \(R_N(W)\ge\eta\) and \(M_N(W)\to0\)
forces

```math
H_N(W)\to\infty.
\tag{PEMAS.14}
```

This is a real consequence, but it is not a payment.  A previous thinner pulse
can have arbitrarily large \(H_N\) and arbitrarily small past reserve.  The
dynamic balance for \(H_N\) reaches only the weighted positive shell-flux
carrier

```math
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt .
\tag{PEMAS.15}
```

For Navier-Stokes the dangerous part of `(PEMAS.15)` is the same selected
positive trilinear source:

```math
\Phi_j^+(t)
:=
\int
\left[
\left\langle S_{<j}^{loc}w_j,w_j\right\rangle
\right]_+dx .
\tag{PEMAS.16}
```

Thus active height proves visibility of the heat-scale pulse.  It becomes a
forward-gold supplier only after an independent theorem bounds active height,
dominates `(PEMAS.15)` by a same-ledger charge, or converts the retained pulse
into a CM Pack/Part/Field face failure.

## 4. The fixed-radius speed limit is real but does not touch the Zeno case

If selected packets have a positive lower radius \(r_j\ge r_0>0\), then physical
weighted ledgers and normalized unweighted ledgers are comparable by dividing by
the fixed \(r_0\) or \(r_0^2\).  This is the exact fixed-radius participation
throttle.

The live branch has \(r_j\downarrow0\).  A dyadic heat-scale cascade can carry
fixed positive normalized action on every scale while the physical bill remains
summable:

```math
\sum_j r_j A_j^{ren}<\infty
\quad\text{or}\quad
\sum_j r_j^2 C_j^{ren}<\infty,
\qquad
\sum_j A_j^{ren}=\infty.
\tag{PEMAS.17}
```

This is why participation proves same-fluid visibility but not the forward-gold
anti-atom.  The law sees the packet; the missing theorem is the unweighted
terminal budget.

## 5. Enstrophy identifies the feed channel but does not throttle it

The enstrophy identity is

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int(S\omega)\cdot\omega\,dx .
\tag{PEMAS.18}
```

The right side is the same vortex-stretching / native trilinear feed.
Calderon--Zygmund, Sobolev, interpolation, and Young's inequality give the
Riccati wall

```math
Y'(t)\le C\nu^{-3}Y(t)^3,
\qquad
Y(t)=\|\nabla u(t)\|_2^2,
\tag{PEMAS.19}
```

which permits finite-time growth.  Enstrophy exposes the channel and supplies
the correct high-derivative dissipation term; it does not produce a uniform
active-height bound or endpoint source modulus.

## 6. Non-aliased remaining theorem

The checked branches are now role-separated:

```math
\begin{array}{ll}
\text{Endpoint UI} & \text{is the terminal anti-atom modulus.}\\
\text{Minimal descent} & \text{localizes the failure into endpoint or interior form.}\\
\text{Interior reserve} & \text{is paid by same-carrier source-square.}\\
\text{Active height} & \text{is a visibility/readout unless throttled.}\\
\text{Enstrophy} & \text{identifies vortex stretching as the feed.}\\
\text{Participation} & \text{gives same-fluid accounting with radius discount.}
\end{array}
\tag{PEMAS.20}
```

The non-aliased forward-gold theorem is:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A
on the actual selected positive carrier.}
}
\tag{PEMAS.21}
```

The branch productions are role-separated as follows:

```math
\begin{gathered}
\text{SelectedCarrierEndpointUI.A removes the terminal atom branch,}\\
\text{SourceSquareReserve.A plus SelectedSourceSquareCarrierDomination.A},\\
\text{SelectedCriticalStrainCarrierUI.A / NormalizedCKNCarleson.A},\\
\text{ActiveWindowHeight.A or selected height plus log-tail},\\
\text{StrictRescaledNoWasteLyapunov.A with a bounded-below unweighted action},\\
\text{SourceWeightedPolarSaturation.A plus NoFreeTerminalZenoDonorChain.A},\\
\text{or MinimalZenoProfileProduction.A plus source-residue Liouville.}
\end{gathered}
\tag{PEMAS.22}
```

Endpoint UI is not a square-payment theorem.  Every square-strength item in
`(PEMAS.22)` is a real forward-gold theorem only if it produces the unweighted
same-selected-family reserve.  Otherwise it is visibility, diagnostic readout,
or CM witness-face routing after same-witness admission plus service
certification.

## Verdict

The active-height/trilinear/time-scenario branch is exhausted as an independent
shortcut from current inputs.

The work did not prove the forward-gold theorem.  It proves the exact shape of
the remaining obstruction:

```math
\boxed{
\text{current Navier-Stokes balances see the terminal heat-scale pulse, but do
not forbid one fixed positive normalized carrier per shrinking heat scale.}
}
\tag{PEMAS.23}
```

New forward-gold progress must supply an unweighted same-carrier reserve or a
rigidity theorem that produces the same reserve.  Without that, the retained
pulse is CM-facing only as an admitted same-witness object tested against the
uniform `Part` or `Field` service budget, rather than a solved forward estimate.
