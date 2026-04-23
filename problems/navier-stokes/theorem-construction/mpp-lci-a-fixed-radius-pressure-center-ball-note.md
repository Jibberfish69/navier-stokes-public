# MPP LCI.A Fixed-Radius Pressure Center-Ball Note

## Status

Candidate theorem-facing note.

Role: isolate the exact fixed-radius center-ball theorem still missing beneath
`FPR.C7` on the pressure side.

This note does **not** reopen the enlarged-ball oscillation theorem `EOC.A`.
It does **not** replace the installed direct FEI pressure route by the packet
split from `FSP.0`. Its narrower job is:

```math
\boxed{
\text{the oscillation half is already downstream of an adjacent larger-radius transported-center FEI envelope,}
\newline
\text{and if one propagates one fixed-ball Sobolev packet on the transported-center balls of radius }5\Lambda_{\delta,\rho}^{halo},
\newline
\text{then the remaining fixed-ball Holder carrier is no longer an independent wall.}
}
\tag{FPC.0}
```

## Installed Inputs

Use only the already-installed FEI / pressure / collar surfaces.

1. [mpp-lci-a-fixed-increment-pressure-response-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md)
2. [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Fixed Radius And Pressure Pair

Retain the fixed halo radius from `(FEI.1)`:

```math
\Lambda_{\delta,\rho}^{halo}
:=
2R_{\delta,\rho}^{halo}.
\tag{FPC.1}
```

Define the fixed pressure readout radius

```math
R_{\rho,\delta}^{press}
:=
5\Lambda_{\delta,\rho}^{halo}.
\tag{FPC.2}
```

Retain the absolute fixed-radius center-ball oscillation carrier from
`(FPR.C7a)`:

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\left\|
U_q(\cdot,t)-U_q(c_j(t),t)
\right\|_{L^\infty(B(c_j(t),R_{\rho,\delta}^{press}))},
\tag{FPC.3}
```

and the corresponding Holder carrier from `(FPR.C7b)`:

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(c_j(t),R_{\rho,\delta}^{press}))}.
\tag{FPC.4}
```

By `FPR.C7c`, this pair already supplies the widened local increment carrier on
the FEI pressure route.

## Oscillation Half Is Already An Adjacent FEI Export

Define the adjacent larger-radius transported-center envelope from `(FPR.C8a)`:

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le 5\Lambda_{\delta,\rho}^{halo}}
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2.
\tag{FPC.4a}
```

### Proposition `FPC.0a` (The absolute fixed-radius oscillation half is already downstream of the adjacent larger-radius FEI envelope)

For every `t\in I`,

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
\le
\Big(\sum_{q=0}^{N}\lambda_q^{-1}\Big)\,
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FPC.4b}
```

### Proof

Fix `j` and `x\in B(c_j(t),R_{\rho,\delta}^{press})`, and set
`\eta:=x-c_j(t)`. Then `|\eta|\le 5\Lambda_{\delta,\rho}^{halo}`, so

```math
\sum_{q=0}^{N}\lambda_q
\big|U_q(x,t)-U_q(c_j(t),t)\big|^2
=
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2
\le
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FPC.4c}
```

Take the supremum in `x`, then apply Cauchy--Schwarz with weights `\lambda_q`
exactly as in `(FPR.C8e)`, and finally take the supremum in `j`. This yields
`(FPC.4b)`. ∎

### Corollary `FPC.0b` (If the adjacent larger-radius FEI envelope were integrable, the oscillation half would be downstream)

If

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I),
\tag{FPC.4d}
```

then

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I)\subset L^1(I).
\tag{FPC.4e}
```

So the oscillation half is already an adjacent FEI-export problem. The genuine
fixed-ball pressure theorem left on the direct route is the Holder side.

## Exact Fixed-Ball Sobolev Reduction

Define the fixed-radius transported-center pressure Sobolev packet

```math
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\sum_{\beta=1}^{2}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPC.5}
```

### Proposition `FPC.1a` (The fixed-radius pressure pair is downstream of one fixed-ball Sobolev packet)

Fix `0<\alpha\le \frac12`. Then for every `t\in I`,

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
+
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2
\le
C_{N,\alpha,\rho,\psi,\delta,I}\,
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}(t).
\tag{FPC.6}
```

### Proof

Fix `j`, `0\le q\le N`, and write

```math
g_{j,q}(x,t)
:=
U_q(x,t)-U_q(c_j(t),t)
\qquad
\text{on }B(c_j(t),R_{\rho,\delta}^{press}).
\tag{FPC.7}
```

Because `g_{j,q}(c_j(t),t)=0`, the fixed-radius Poincare inequality gives

```math
\|g_{j,q}(\cdot,t)\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}
\le
C_{\rho,\psi,\delta,I}\,
\|\nabla U_q(\cdot,t)\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}.
\tag{FPC.8}
```

On the fixed-radius ball `B(c_j(t),R_{\rho,\delta}^{press})`, local
Morrey-Sobolev for `W^{2,2}` in three dimensions yields, for
`0<\alpha\le \frac12`,

```math
\|g_{j,q}(\cdot,t)\|_{L^\infty(B(c_j(t),R_{\rho,\delta}^{press}))}
+
[g_{j,q}(\cdot,t)]_{C^{0,\alpha}(B(c_j(t),R_{\rho,\delta}^{press}))}
\le
C_{\alpha,\rho,\psi,\delta,I}
\sum_{\beta=0}^{2}
\|\nabla^\beta g_{j,q}(\cdot,t)\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}.
\tag{FPC.9}
```

Insert `(FPC.8)` into the `\beta=0` term, note that
`\nabla^\beta g_{j,q}=\nabla^\beta U_q` for `\beta=1,2`, and obtain

```math
\|g_{j,q}(\cdot,t)\|_{L^\infty(B(c_j(t),R_{\rho,\delta}^{press}))}
+
[U_q(\cdot,t)]_{C^{0,\alpha}(B(c_j(t),R_{\rho,\delta}^{press}))}
\le
C_{\alpha,\rho,\psi,\delta,I}
\sum_{\beta=1}^{2}
\|\nabla^\beta U_q(\cdot,t)\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}.
\tag{FPC.10}
```

Since the oscillation carrier `(FPC.3)` uses exactly the `L^\infty` norm of
`g_{j,q}`, while the Holder carrier `(FPC.4)` uses the seminorm from
`(FPC.10)`, squaring, summing over `q=0,\dots,N`, and taking the supremum in
`j` yields `(FPC.6)` after Cauchy-Schwarz in the finite `q`-sum. ∎

So the remaining fixed-ball Holder half is no longer asking for an abstract
center-ball theorem. It is asking for one fixed-ball Sobolev packet on the
transported-center net. The oscillation half is already on the adjacent FEI
branch by `(FPC.4b)`.

### Target Theorem `FPC.H` (Fixed-radius transported-center pressure Holder theorem)

Prove

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I).
\tag{FPC.H0}
```

This is the genuine fixed-ball pressure theorem still live on the direct FEI
route beneath `FPR.C10`. The oscillation half is already adjacent-FEI
downstream by `(FPC.4b)`, and the widened collar envelope remains the separate
coefficient-side companion from `FPR.9`.

### Sufficient Theorem `FPC.A` (Fixed-radius transported-center pressure Sobolev sufficient theorem)

Prove

```math
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}\in L^1(I).
\tag{FPC.A0}
```

Then `(FPC.6)` gives

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda},
\ \mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}
\in L^2(I),
\tag{FPC.A1}
```

so in particular `FPC.H` holds.

This is a sharp fixed-ball sufficient route for the direct Holder theorem
`FPC.H`: it asks only for the fixed-radius Sobolev packet of the existing
fields `U_0,\dots,U_N` on the transported-center net. It does **not** reopen
the enlarged-ball theorem `EOC.A`, and it does **not** replace the direct FEI
route by the packet split from `FSP.0`.

The companion note
[mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md)
records a still-local one-derivative-lower sufficient packet for `FPC.A`,
phrased through `U_1,\dots,U_{N+1}` on the same fixed `5\Lambda` balls, and
its corollary `FPS.H` shows that this same packet is already a direct
sufficient theorem for `FPC.H`.

The next deeper still-local packet is now isolated in
[mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md),
where `FPL.C` packages a one-rung-higher local `L^2` theorem already
sufficient for `FPS.H0`, hence for `FPC.H`.

## Adjacent Widened-Collar Sufficient Form

### Corollary `FPC.B` (A widened collar Sobolev packet would imply `FPC.A`)

Assume `m\ge 1` and the widened collar Sobolev packet is propagated:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPC.B0}
```

Then

```math
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}\in L^\infty(I)\subset L^1(I),
\tag{FPC.B1}
```

hence `FPC.A`.

### Proof

Fix `j`, `q`, and `t`. Because `c_j(t)\in\mathfrak P_{\rho,\psi}(t)` and the
ball radius is `5\Lambda_{\delta,\rho}^{halo}`, one has

```math
B(c_j(t),R_{\rho,\delta}^{press})
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FPC.B2}
```

For `\beta=1,2`,

```math
\nabla^\beta U_q
=
\nabla^{\beta-1}U_{q+1}.
\tag{FPC.B3}
```

Since `q\le N` and `\beta-1\le 1\le m`, the terms on the right-hand side are
among the summands of the collar packet
`\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}`. Because
the collar cutoff is `1` on the plateau containing `(FPC.B2)`, one gets

```math
\sum_{\beta=1}^{2}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2
\le
C_{\rho,\psi,\delta,I}\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FPC.B4}
```

Summing over `q=0,\dots,N` and taking the supremum in `j` yields `(FPC.B1)`.
∎

### Remark `FPC.Ba` (The widened-collar sufficient form is a widened-thickness instance of `CSP.A`)

The collar-Sobolev theorem `CSP.A` fixes an arbitrary collar thickness
`\delta_\ast>0` and targets

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta_\ast}(t)
<
\infty.
\tag{FPC.Ba0}
```

So after setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo},
\tag{FPC.Ba1}
```

the widened-collar hypothesis `(FPC.B0)` is exactly the same theorem species as
`CSP.A`, only at the enlarged thickness:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPC.Ba2}
```

So `FPC.B` does **not** introduce a new packet mechanism. It asks only for the
existing collar-Sobolev packet theorem at the wider thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`, rather than at the currently installed
coefficient-side scale `\delta+\Lambda_{\delta,\rho}^{halo}`.

### Corollary `FPC.Bc` (The direct pressure frontier already carries a route-native collar return)

Assume the route-native lower-order moving-collar packet instance

```math
\sup_{t\in I}
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPC.Bc0}
```

Then

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I).
\tag{FPC.Bc1}
```

### Proof

Corollary `FPL.Bc` gives `FPL.C0`, and Corollary `FPL.H` then yields
`FPC.H0`, which is exactly `(FPC.Bc1)`. ∎

So, on the installed route, the direct pressure frontier is no longer isolated
from the receiver-side collar theorem: the deeper local pressure chain already
returns to the route-native collar packet instance `(FPC.Bc0)`, i.e. to the
corresponding `CSP.B3a1` realization at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}` and depth `N+2`.

## Boundary

This note does **not** prove the direct Holder theorem `FPC.H`, and it does
**not** prove the stronger sufficient theorem `FPC.A`.

It isolates the exact remaining pressure wall:

```math
\boxed{
\text{on the direct pressure route, the direct pressure wall is the fixed-radius Holder carrier }
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha},
\newline
\text{with the larger-radius transported-center envelope }
\mathfrak e_{N,5\Lambda}^{Eul,ctr}
\text{ already downstream of that Holder theorem by }LRE.C1\text{, hence carrying the oscillation half by }(FPC.4b),
\newline
\text{with the widened collar envelope }
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}
\text{ still sitting as the coefficient-side companion from }FPR.9,
\newline
\text{while }FPL.C\text{ is already the deeper local direct sufficient theorem for that frontier, with }(FPL.Bc0)\text{ the sharper route-native collar return beneath it, and }(FPS.H0)\text{ and }FPC.A\text{ only intermediate sufficient routes inside the pressure-side stack,}
\newline
\text{and the only nearby packet-level wider sufficient form is }(FPS.Ba2)\text{ of }CSP.A,}
\newline
\text{and the enlarged-ball theorem }EOC.A\text{ cannot discharge this fixed-ball object directly because of }FPR.C5h.}
\tag{FPC.9}
```

So the direct successor to the pressure half of `FEI.C7` is now the Holder
theorem `FPC.H`, with `FPL.C` the deeper still-local direct sufficient theorem
beneath it, with the route-native collar return already exposed by `FPC.Bc`,
and `(FPS.H0)` / `FPC.A` only intermediate sufficient routes, while the packet split in
[mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md)
already isolates the exact source-side same-depth split `(FSP.C1)`, with the
strict low-high / high-low packets only coefficient-side companions and the
finite-collar resonant packet the only genuinely same-depth source packet, but
it still remains an adjacent source-side decomposition rather than the sharp
direct discharge, and the larger-radius envelope from `FPR.C10b` is now only a
downstream consequence of `FPC.H` through
[mpp-lci-a-larger-radius-shifted-center-envelope-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-larger-radius-shifted-center-envelope-note.md).
The intermediate one-derivative-lower packet beneath that deeper local theorem is isolated in
[mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md).
