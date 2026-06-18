# MPP Frozen-Family Resonant-Pressure Sufficient Reduction Note

## Status

Candidate theorem-facing reduction note.

Role: isolate the nearest stronger sufficient route currently visible on disk
beneath the exact frozen-net resonant pressure target `(FPCR.C)`.

This note does **not** replace the exact same-depth pressure wall
`\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}`. Its narrower job is
to record the adjacent finite-net sufficient reduction inherited from the
installed direct FEI pressure route.

## Installed Inputs

1. [mpp-frozen-family-pressure-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-pressure-channel-reduction-note.md)
2. [mpp-fixed-family-and-collar-interval-propagation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md)
3. [mpp-lci-a-fixed-increment-pressure-response-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md)
4. [mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md)

## Purpose

```math
\boxed{
\text{under the installed ordinary interval-energy pressure route, the frozen-net resonant packet sum is already sufficiently controlled by}
\newline
\text{one finite-net widened local pressure carrier together with the common widened collar envelope.}
}
\tag{FFPR.0}
```

## Exact Frozen-Net Resonant Target

Recall from `(FPCR.2)` that

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}(t),
\tag{FFPR.1}
```

where `\Xi_{\rho,\psi}^{\varepsilon}(I)=\{\eta^\ell\}_{\ell=1}^{M_\varepsilon}`
is the frozen net from `(FCI.1)`--`(FCI.5ea)`.

Define the corresponding finite-net widened local pressure carrier by

```math
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak H_{N,\eta^\ell}^{press,loc,4\Lambda,\alpha}(t),
\tag{FFPR.2}
```

using the single-increment widened local Holder carrier `(FPR.C4a)`.

### Lemma `FFPR.Aa` (The frozen reference net already lies inside the FEI halo window)

Let `M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)}` and
`R_{\rho}^{halo,\ast}:=M_\sharp\rho` as in `(OFP.10dk)` / `(HSP.1)`. Then

```math
\Lambda_{\rho,\psi}^{ref}(I)
\le
R_{\rho}^{halo,\ast}
<
\Lambda_{\delta,\rho}^{halo}.
\tag{FFPR.Aa0}
```

Consequently,

```math
|\eta^\ell|
\le
\Lambda_{\delta,\rho}^{halo}
\qquad
(1\le \ell\le M_\varepsilon).
\tag{FFPR.Aa1}
```

### Proof

Fix `t\in I` and `\eta\in\mathcal R_{\rho}^{ref}(t;\psi)`. By `(LE.1)`--`(LE.5)`,
there exist `a\in\operatorname{supp}\psi` and `0<|r|\le \rho` such that
`\eta=F(a,t)r`. The same pack-side gauge used in the proof of `(OFP.10bw)`
gives

```math
|\eta|
=
|F(a,t)r|
\le
\Gamma_\sharp(t)\,|r|
\le
\Gamma_\sharp(t)\rho
\le
M_\sharp\rho
=
R_{\rho}^{halo,\ast}.
\tag{FFPR.Aa2}
```

Taking the supremum in `\eta` and then in `t\in I` yields the first inequality
in `(FFPR.Aa0)`. On the other hand, `(FPR.C5f)` gives

```math
\Lambda_{\delta,\rho}^{halo}
=
2r_\delta+4\delta+2R_{\rho}^{halo,\ast}
>
R_{\rho}^{halo,\ast},
\tag{FFPR.Aa3}
```

which is the second inequality in `(FFPR.Aa0)`. Since the frozen net
`\Xi_{\rho,\psi}^{\varepsilon}(I)=\{\eta^\ell\}_{\ell=1}^{M_\varepsilon}`
lies in the fixed reference ball `\mathbb B_{\rho,\psi}^{ref}(I)` by the setup
`(FCI.0)` / `(FN.4)`, each packet center satisfies the radius condition in
`(FFPR.Aa1)`. ∎

## Single-Increment Sufficient Reduction

### Proposition `FFPR.A` (The resonant packet obeys the same widened local/collar sufficient bound)

Assume the ordinary interval energy ledger is available on `I`. Then for every
fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)
\le
C_{\alpha,N,\lambda,\rho,\psi,\delta,I,C_0}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\big(
1+\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)
\big).
\tag{FFPR.A0}
```

### Proof

By `(FSP.6)`, the resonant packet `\Xi_{j,k,\eta}^{RR}` is a finite sum of
Leibniz-Bony terms with shell interaction confined to the fixed collar
`|q-r|\le C_0`. Each such term is still one summand in the localized quadratic
source built from `\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)`, so the same
pointwise decomposition `(FPR.C4d)`--`(FPR.C4f)` applies termwise.

As in the proof of `(FPR.C4c)`, every sampled point lies inside the widened raw
collar `d_{\rho,\psi}^{raw}<\delta+4\Lambda_{\delta,\rho}^{halo}`, the cutoff
factors are bounded by `(FPR.2)`, one absolute factor is controlled by
`\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)^{1/2}`,
and one increment/Holder factor is controlled by
`\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)^{1/2}`. The resonant
restriction only removes terms from the full Leibniz-Bony expansion, while the
finite collar width `C_0` contributes only to a fixed multiplicative constant
`C(C_0)` chosen before the endpoint packet is selected.

Taking the `L^\infty` and `C^{0,\alpha}` norms on the widened transported-center
balls, summing in `k=0,\dots,N`, and taking the supremum in `j` yields
`(FFPR.A0)`. ∎

## Frozen-Net Sufficient Reduction

### Corollary `FFPR.B` (Frozen-net resonant packet sum is downstream of one finite-net widened local carrier plus the common widened collar envelope)

Assume the ordinary interval energy ledger is available on `I`. Then

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
\le
C_{\alpha,N,\lambda,\rho,\psi,\delta,I,C_0}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\big(
M_\varepsilon
+
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}(t;I)
\big).
\tag{FFPR.B0}
```

In particular, a sufficient interval discharge for `(FPCR.C)` is

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}\in L^1(I),
\qquad
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I).
\tag{FFPR.B1}
```

### Proof

By `(FFPR.Aa1)`, every frozen-net increment lies in the admissible FEI halo
window, so `(FFPR.A0)` applies to each
`\eta^\ell\in\Xi_{\rho,\psi}^{\varepsilon}(I)`. Sum `(FFPR.A0)` over the frozen
net and use the definitions `(FFPR.1)`--`(FFPR.2)`. The constant term sums to
`M_\varepsilon`, while the collar factor is common to the whole frozen net.
This gives `(FFPR.B0)`. On the finite interval `I`, the sufficient interval
discharge `(FFPR.B1)` follows because

```math
\int_I
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)\,dt
<\infty,
\qquad
\int_I
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}(t;I)\,dt
<\infty
```

make the right-hand side of `(FFPR.B0)` integrable, while the frozen-net
constant contributes only `M_\varepsilon |I|`. ∎

## Fixed-Radius Export

### Corollary `FFPR.C1` (The finite-net widened local pressure carrier is downstream of the fixed-radius `5\Lambda` carriers)

For every `t\in I`,

```math
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}(t;I)
\le
C_{N,\alpha}\,M_\varepsilon\,
\Big(
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
+
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2
\Big).
\tag{FFPR.C1}
```

### Proof

Apply `(FPR.C7c)` with `\eta=\eta^\ell` and sum over the frozen family
`\Xi_{\rho,\psi}^{\varepsilon}(I)`. The fixed-radius carriers are independent
of `\ell`, so the sum contributes only the factor `M_\varepsilon`. ∎

### Corollary `FFPR.C2` (The frozen-net resonant packet sum has a fixed-radius sufficient route)

Assume the ordinary interval energy ledger is available on `I`. Then

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
\le
C_{\alpha,N,\lambda,\rho,\psi,\delta,I,C_0}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)
\big)
\Big(
M_\varepsilon
+
M_\varepsilon\,
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
+
M_\varepsilon\,
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2
\Big).
\tag{FFPR.C2}
```

### Proof

Insert `(FFPR.C1)` into `(FFPR.B0)` and absorb constants. ∎

## Route Position

This note is an adjacent stronger sufficient route, not the exact same-depth
pressure route.

What remains exact on the source side is still `(FPCR.C)`: attack the interval
integrability of the frozen-net resonant packet sum itself. The exact smaller
theorem beneath that frozen-net wall is now isolated separately in
[mpp-fixed-increment-resonant-pressure-integrability-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-increment-resonant-pressure-integrability-note.md)
as `(FIRP.A0)`, and the bounded exact self-attempt there records that the
current installed exact route does not lower further below that
single-increment theorem.

What this note adds is the nearest installed sufficient export currently
visible on disk:

```math
\boxed{
\text{if one is willing to leave the exact same-depth wall, then the frozen-net resonant packet sum is already downstream of}
\newline
\text{a finite-net widened local pressure carrier, hence further to the fixed-radius `5\Lambda` pressure carriers, together with the common widened collar envelope.}
}
\tag{FFPR.C}
```

And on that sufficient branch, the fixed-radius pressure stack already
continues on disk through `FPC.H` to the still-local direct sufficient theorem
`FPL.C`, and Consequence `FPL.G` shows that this branch then returns to the
receiver-side collar burden `CSP.B3a1`.

## Boundary

This note does **not** prove
`\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}\in L^1(I)`.

It also does **not** identify any sharper same-depth descendant beneath
`(FIRP.A0)`; it only records the nearest stronger sufficient export inherited
from `(FPR.C4c)` and its next fixed-radius continuation.

So the honest pressure-side status is:

```math
\boxed{
\text{the exact same-depth frozen-net pressure wall remains }(FPCR.C),\text{ with exact smaller theorem }(FIRP.A0),
\newline
\text{while the nearest stronger sufficient route is }(FFPR.B1),\text{ already continuing through }FPL.C\text{ and returning by }FPL.G.
}
\tag{FFPR.D}
```
