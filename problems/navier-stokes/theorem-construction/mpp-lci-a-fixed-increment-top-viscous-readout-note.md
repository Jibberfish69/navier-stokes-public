# MPP LCI.A Fixed-Increment Top-Viscous Readout Note

## Status

Candidate theorem-facing note.

Role: isolate the exact top-viscous half `FEI.D2` still missing beneath the
fixed-increment source split `FEI.C7`.

This note does **not** claim that the full FEI source law is closed. Its
narrower job is:

```math
\boxed{
\text{freeze the exact one-rung-higher shifted-center readout still needed for the top-viscous half of }FEI.C7.
}
\tag{FVR.0}
```

## Installed Inputs

Use only the already-installed FEI and center-viscous surfaces.

1. [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)
2. [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md)
3. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)

## Setup

Fix one increment `\eta` with `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and
retain the FEI top-viscous ledger

```math
\mathcal S_{N,\eta}^{visc,top,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\nu\lambda_N\,
\delta_\eta U_N(c_j(t),t)\cdot
\delta_\eta\Delta U_N(c_j(t),t)
\right|.
\tag{FVR.1}
```

Define the shifted-center top-viscous readout

```math
\mathcal V_{N,\eta}^{top,ctr}(t)
:=
\sup_{1\le j\le J}
\big|
\delta_\eta\Delta U_N(c_j(t),t)
\big|,
\tag{FVR.2}
```

and the one-rung-higher shifted-center difference

```math
\mathcal W_{N,\eta}^{N+2,ctr}(t)
:=
\sup_{1\le j\le J}
\big|
\delta_\eta U_{N+2}(c_j(t),t)
\big|.
\tag{FVR.3}
```

## Exact Readout Reduction

### Lemma `FVR.1a` (The top-viscous FEI source is controlled by the FEI energy plus the shifted-center top readout)

For every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and every
time `t\in I`,

```math
\mathcal S_{N,\eta}^{visc,top,ctr}(t)
\le
C_{\nu,\lambda}\,
\mathcal I_{N,\eta}^{ctr}(t)
+
C_{\nu,\lambda}\,
\mathcal V_{N,\eta}^{top,ctr}(t)^2.
\tag{FVR.4}
```

### Proof

By definition,

```math
\big|\delta_\eta U_N(c_j(t),t)\big|^2
\le
\lambda_N^{-1}\,
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FVR.5}
```

Apply Young's inequality `2ab\le a^2+b^2` to `(FVR.1)` with
`a=|\delta_\eta U_N(c_j(t),t)|` and
`b=\nu\lambda_N|\delta_\eta\Delta U_N(c_j(t),t)|`, then take the supremum in
`j`. This gives `(FVR.4)`. ∎

So the top-viscous source is not an independent bilinear wall. Its only new
external content is the shifted-center top readout `\mathcal V_{N,\eta}^{top,ctr}`.

### Lemma `FVR.1b` (The top-viscous readout is exactly a one-rung-higher shifted-center difference)

For every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and every
time `t\in I`,

```math
\mathcal V_{N,\eta}^{top,ctr}(t)
\le
C_N\,
\mathcal W_{N,\eta}^{N+2,ctr}(t).
\tag{FVR.6}
```

### Proof

Each component of `\Delta U_N` is the coordinate trace of the two derivative
slots in `U_{N+2}=\nabla^2U_N`. Apply that fixed trace identity at the two
points `c_j(t)` and `c_j(t)+\eta`, subtract, and take the supremum over `j`. ∎

## Exact Successor Theorem For `FEI.D2`

### Target Theorem `FVR.A` (One-rung-higher shifted-center readout)

For each fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, prove

```math
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I).
\tag{FVR.A0}
```

Then `(FVR.6)` gives
`\mathcal V_{N,\eta}^{top,ctr}\in L^2(I)`, hence `(FVR.4)` closes
`FEI.D2` after the `\mathcal I_{N,\eta}^{ctr}` term is absorbed into the
coefficient side of `(FEI.5y)`.

## Exact Center-Ball Reduction

Define the fixed-radius transported-center top-rung carrier

```math
\mathfrak U_{N+2,\Lambda}^{top,ctr}(t)
:=
\sup_{1\le j\le J}
\left\|
U_{N+2}(\cdot,t)
\right\|_{L^\infty(B(c_j(t),\Lambda_{\delta,\rho}^{halo}))}.
\tag{FVR.6a}
```

### Proposition `FVR.D1` (The shifted-center readout is downstream of one fixed-radius top-rung carrier)

For every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and every
time `t\in I`,

```math
\mathcal W_{N,\eta}^{N+2,ctr}(t)
\le
2\,
\mathfrak U_{N+2,\Lambda}^{top,ctr}(t).
\tag{FVR.6b}
```

### Proof

Fix `j`. Since `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, the shifted point
`c_j(t)+\eta` lies in `B(c_j(t),\Lambda_{\delta,\rho}^{halo})`. Therefore

```math
\big|
\delta_\eta U_{N+2}(c_j(t),t)
\big|
\le
\big|U_{N+2}(c_j(t)+\eta,t)\big|
+
\big|U_{N+2}(c_j(t),t)\big|
\le
2\,
\mathfrak U_{N+2,\Lambda}^{top,ctr}(t).
\tag{FVR.6c}
```

Taking the supremum in `j` gives `(FVR.6b)`. ∎

### Target Theorem `FVR.D` (Fixed-radius transported-center top-rung carrier theorem)

Prove

```math
\mathfrak U_{N+2,\Lambda}^{top,ctr}\in L^2(I).
\tag{FVR.D0}
```

Then `(FVR.6b)` gives `FVR.A`.

## Exact Fixed-Ball Sobolev Reduction

Define the fixed-radius top-rung Sobolev packet

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{\beta=0}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda_{\delta,\rho}^{halo}))}^2.
\tag{FVR.6d}
```

### Proposition `FVR.F1` (The top-rung carrier is downstream of one fixed-ball Sobolev packet)

For every `t\in I`,

```math
\mathfrak U_{N+2,\Lambda}^{top,ctr}(t)^2
\le
C_{\rho,\psi,\delta,I}\,
\mathcal B_{N+2,\Lambda}^{sob,ctr}(t).
\tag{FVR.6e}
```

### Proof

Fix `j`. The radius `\Lambda_{\delta,\rho}^{halo}` is fixed on `I`, so local
Sobolev embedding on `B(c_j(t),\Lambda_{\delta,\rho}^{halo})` gives

```math
\left\|
U_{N+2}(\cdot,t)
\right\|_{L^\infty(B(c_j(t),\Lambda_{\delta,\rho}^{halo}))}^2
\le
C_{\rho,\psi,\delta,I}
\sum_{\beta=0}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda_{\delta,\rho}^{halo}))}^2.
\tag{FVR.6f}
```

Taking the supremum in `j` yields `(FVR.6e)`. ∎

### Target Theorem `FVR.F` (Fixed-radius transported-center top-rung Sobolev packet theorem)

Prove

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}\in L^1(I).
\tag{FVR.F0}
```

Then `(FVR.6e)` gives `FVR.D`, hence `FVR.A`.

This is the narrowest currently visible route-native reduction of the
top-viscous side: it asks only for the single field `U_{N+2}` and its fixed-ball
Sobolev packet on the transported-center net. It does **not** reopen the whole
one-rung-higher collar envelope, and it does **not** reopen the full
two-rungs-higher FEI family.

The companion note
[mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md)
records one still-local one-rung-lower sufficient packet for `FVR.F`, phrased
through `U_{N+1}` on the same fixed halo balls, and isolates the intermediate
lower supplier theorem there as `FTS.C`. Its own companion
[mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
now pushes that one step deeper to the one-rung-higher local `L^2` theorem
`FTL.C`, with direct sufficient packet form `(FTL.H0)`.

## Adjacent Current-Collar Sufficient Form

### Corollary `FVR.E` (The current thickened collar packet would imply `FVR.D`)

Assume `m\ge 3` and the thickened collar packet at the halo radius is
propagated:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FVR.E0}
```

Then

```math
\mathfrak U_{N+2,\Lambda}^{top,ctr}\in L^\infty(I)\subset L^2(I),
\tag{FVR.E1}
```

hence `FVR.F`, `FVR.D`, and `FVR.A`.

### Proof

Fix `j` and `t`. Because `c_j(t)\in\mathfrak P_{\rho,\psi}(t)` and the radius is
`\Lambda_{\delta,\rho}^{halo}`, the ball
`B(c_j(t),\Lambda_{\delta,\rho}^{halo})` lies inside the thickened collar
`\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)` by the same
geometry used in `(FEI.5h)`.

Apply local Sobolev embedding on that fixed-radius ball to the field
`U_{N+1}`:

```math
\left\|
U_{N+2}(\cdot,t)
\right\|_{L^\infty(B(c_j(t),\Lambda_{\delta,\rho}^{halo}))}
\le
C_{\rho,\psi,\delta,I}
\sum_{\alpha=1}^{3}
\left\|
\nabla^\alpha U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda_{\delta,\rho}^{halo}))}.
\tag{FVR.E2}
```

Since the ball lies in the collar plateau, the right-hand side is bounded by
a constant multiple of
`\mathcal K_{N+1,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)^{1/2}`.
Taking the supremum in `j` gives

```math
\mathfrak U_{N+2,\Lambda}^{top,ctr}(t)
\le
C_{\rho,\psi,\delta,I}\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)^{1/2},
\tag{FVR.E3}
```

and `(FVR.E0)` implies `(FVR.E1)`. ∎

This is the closest stronger adjacent route to the current installed packet
program. But it is still only adjacent: `(FVR.E0)` is exactly the thickened
version of the open collar theorem family, so it does not discharge `FVR.F`
from the current one-field supplier route by itself.

## Coarse Collar Sufficient Form

Define the one-rung-higher thickened-collar envelope

```math
\mathfrak C_{N+2,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
:=
\sup_{d_{\rho,\psi}^{raw}(x,t)<\delta+\Lambda_{\delta,\rho}^{halo}}
\sum_{k=0}^{N+1}\lambda_k
|U_{k+1}(x,t)|^2.
\tag{FVR.7}
```

### Corollary `FVR.B` (A one-rung-higher thickened-collar envelope is sufficient for `FVR.A`)

If

```math
\mathfrak C_{N+2,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}\in L^1(I),
\tag{FVR.B0}
```

then for every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I).
\tag{FVR.B1}
```

### Proof

Both `c_j(t)` and `c_j(t)+\eta` lie in the thickened collar
`\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)` by the same
geometry used in `(FEI.5h)` and `(FEI.5u)`. Therefore

```math
\big|
\delta_\eta U_{N+2}(c_j(t),t)
\big|^2
\le
2\big(
|U_{N+2}(c_j(t)+\eta,t)|^2
+
|U_{N+2}(c_j(t),t)|^2
\big)
\le
C_{N,\lambda}\,
\mathfrak C_{N+2,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FVR.8}
```

Taking the supremum over `j` gives
`\mathcal W_{N,\eta}^{N+2,ctr}(t)^2\le
C_{N,\lambda}\mathfrak C_{N+2,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)`.
Integrating in time yields `(FVR.B1)`. ∎

This corollary is only a coarse adjacent route. The installed collar envelope
surface on disk is still the `N+1` object from `(PC.14)`, not the one-rung-higher
`N+2` envelope in `(FVR.7)`. So `FVR.B` does **not** discharge `FVR.A` on the
current route by itself; it only identifies the exact higher collar object that
would suffice.

## Stronger Adjacent Increment Route

Define the higher-order fixed-scale transported-center increment envelope on the
same halo radius

```math
\mathfrak e_{N+2,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le \Lambda_{\delta,\rho}^{halo}}
\sum_{k=0}^{N+2}\widetilde\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|^2,
\tag{FVR.8a}
```

for any fixed positive weight family `\widetilde\lambda_k`.

### Corollary `FVR.C` (A two-rungs-higher FEI theorem would imply `FVR.A`)

If

```math
\mathfrak e_{N+2,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I),
\tag{FVR.C0}
```

then

```math
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I)
\qquad
\text{for every fixed }|\eta|\le \Lambda_{\delta,\rho}^{halo}.
\tag{FVR.C1}
```

### Proof

For fixed `j` and `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\widetilde\lambda_{N+2}
\big|
\delta_\eta U_{N+2}(c_j(t),t)
\big|^2
\le
\mathfrak e_{N+2,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t).
\tag{FVR.8b}
```

Taking the supremum in `j` gives
`\mathcal W_{N,\eta}^{N+2,ctr}(t)^2\le
\widetilde\lambda_{N+2}^{-1}\mathfrak e_{N+2,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t)`,
so integrating in time yields `(FVR.C1)`. ∎

This is a real sufficient route, but it is strictly stronger than the current
FEI surface on disk. The installed theorem `FEI.A` only propagates the
`N`-family, not the two-rungs-higher `N+2` family in `(FVR.8a)`. So `FVR.C`
is an adjacent stronger realization, not the current theorem-facing discharge.

### Corollary `FVR.G` (The direct top-viscous frontier already carries a route-native collar return)

Assume the route-native lower-order moving-collar packet instance

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FVR.G0}
```

Then

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}\in L^1(I),
\qquad
\mathfrak U_{N+2,\Lambda}^{top,ctr}\in L^2(I),
\qquad
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I).
\tag{FVR.G1}
```

### Proof

Corollary `FTL.Bc` gives `FTL.C0`, and Corollary `FTL.H` then yields
`FVR.F0`, `FVR.D`, and `FVR.A`. This is exactly `(FVR.G1)`. ∎

So, on the installed route, the direct top-viscous frontier is no longer
isolated from the receiver-side collar theorem: the deeper local top-viscous
chain already returns to the route-native collar packet instance `(FVR.G0)`,
i.e. to the corresponding `CSP.B3a1` realization at thickness
`\delta+\Lambda_{\delta,\rho}^{halo}` and depth `N+4`.

## Boundary

This note does **not** prove `FVR.F`.

It isolates the exact remaining viscous wall:

```math
\boxed{
\text{the top-viscous half of }FEI.C7\text{ is not a new pressure-type problem,}
\newline
\text{and not the older first-rung viscous-center ledger either;}
\newline
\text{it reduces sharply to the fixed-radius transported-center top-rung Sobolev packet }
\mathcal B_{N+2,\Lambda}^{sob,ctr},
\newline
\text{then to the fixed-radius top-rung carrier }
\mathfrak U_{N+2,\Lambda}^{top,ctr},
\text{ then more coarsely to the shifted-center readout }
\mathcal W_{N,\eta}^{N+2,ctr},
\text{ then to a one-rung-higher collar envelope or a two-rungs-higher FEI family,}
\newline
\text{with }FTL.C\text{ the deeper still-local direct sufficient theorem and }FVR.G\text{ the sharper route-native collar return beneath it.}
}
\tag{FVR.9}
```

So the direct successor to `FEI.D2` is now the fixed-ball Sobolev theorem
`FVR.F`, with `FVR.D` and then `FVR.A` as first readout corollaries, while
the pressure side has already been narrowed further to the direct fixed-ball
Holder theorem `FPC.H`, with the larger-radius envelope and oscillation half
already downstream of it by `LRE.C1`. One
still-local one-rung-lower sufficient packet beneath `FVR.F` is isolated in
[mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md).
More sharply, the exact still-local sub-obstruction beneath `FVR.F` is now the
deeper supplier theorem `FTL.C`, with `FTS.C` only the intermediate
one-rung-lower Sobolev route inside that local stack; the installed
packet-level implications into `FTL.C` are the sharper route-native
moving-collar corollary `(FTL.Bc0)`, together with `FTL.B` and `FTL.Ba`, while
the route-native collar return is now exposed directly by both `FTL.G` and the
frontier-level corollary `FVR.G`, and the
coarser adjacent routes `FVR.B` and `FVR.C` bypass that local stack rather
than discharging it.

So on the installed route this top-viscous half is also nonterminal in the
same sense as the pressure half: once the exact FEI return instances are
unpacked, it reopens only returned lower-carrier reads and feeds back into the
already-installed `LCI.A` route rather than surviving as a new external
supplier family.
