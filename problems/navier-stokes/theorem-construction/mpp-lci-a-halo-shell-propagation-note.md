# MPP LCI.A Halo-Shell Propagation Note

## Status

Candidate theorem-facing note.

Role: isolate the exact fixed halo-shell interval-propagation theorem that
remains after the variable-radius center-ball carrier `VCB.A` is reduced by
`OFP.C1m`.

This note does **not** widen the one-field / lower-carrier route. It does
**not** replace the halo carrier by a generic coherence theorem. It does **not**
claim that the halo-shell packet is already propagated on disk. Its narrower
job is:

```math
\boxed{
\text{freeze the exact halo-shell packet theorem whose propagation would discharge }VCB.A.
}
\tag{HSP.0}
```

## Installed Inputs

Use only the already-installed one-field / transported-center surfaces.

1. [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)
2. [mpp-lci-a-variable-radius-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-variable-radius-center-ball-note.md)

## Halo-Shell Packet

Retain the bounded pack-side gauge on `I`,

```math
M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)},
\qquad
R_{\rho}^{halo,\ast}:=M_\sharp\rho,
\tag{HSP.1}
```

and the fixed halo-shell cutoff

```math
\vartheta_{\rho,\psi,t}^{halo,\delta}(x)
:=
\Xi_{\delta}^{halo,\rho}(d_{\rho,\psi}(x,t)),
\tag{HSP.2}
```

with plateau radius `\delta+R_{\rho}^{halo,\ast}` and support radius
`2\delta+R_{\rho}^{halo,\ast}` as in `(OFP.10dl)`--`(OFP.10dn)`.

Define the halo-shell packet

```math
\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)
:=
\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\big|\nabla^\beta U_1(x,t)\big|^2\,dx,
\tag{HSP.3}
```

the corresponding dissipation packet

```math
\mathcal D_{1,\rho,\psi}^{halo,\delta}(t)
:=
\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\big|\nabla^{\beta+1}U_1(x,t)\big|^2\,dx,
\tag{HSP.4}
```

and the support shell

```math
\mathcal C_{\rho,\psi}^{halo,\delta}(t)
:=
\big\{
x\in\mathbf R^3:
d_{\rho,\psi}(x,t)<2\delta+R_{\rho}^{halo,\ast}
\big\}.
\tag{HSP.5}
```

The natural outer-shell carrier is then

```math
\Gamma_{1,\rho,\psi}^{halo,sh}(t)
:=
1+\|U_1(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{halo,\delta}(t))}.
\tag{HSP.6}
```

That first-rung pair is the downstream consumer surface, but it is not the
honest route-native dynamic packet. If one replays the lower-order
moving-collar identity with only the family
`\{\nabla^\beta U_1\}_{\beta=0}^{2}`, then:

1. the differentiated first-rung law produces the endpoint high-high summand

```math
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\,U_3(x,t):
\big(U_2(x,t)*U_2(x,t)\big)\,dx,
\tag{HSP.6a}
```

which is not linearized by the first-rung carrier `(HSP.6)` alone; and

2. the transport mismatch still uses the shell velocity carrier

```math
\|D_t\vartheta_{\rho,\psi,t}^{halo,\delta}\|_{L^\infty}
\le C_{\vartheta}
\delta^{-1}
\Big(
\mathfrak V_{\rho,\psi}^{core}(t)
+
\|U_0(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{halo,\delta}(t))}
\Big),
\tag{HSP.6b}
```

exactly as in `(CSP.25g0d)`.

So the correct propagating object below `VCB.A` is the lower-order halo-shell
packet on the same cutoff:

```math
\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\big|\nabla^\beta U_q(x,t)\big|^2\,dx,
\tag{HSP.6c}
```

with dissipation packet

```math
\mathcal D_{N,m,\rho,\psi}^{halo,low,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\big|\nabla^{\beta+1} U_q(x,t)\big|^2\,dx,
\tag{HSP.6d}
```

and outer-shell carrier

```math
\Gamma_{N,m,\rho,\psi}^{halo,sh}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{halo,\delta}(t))}.
\tag{HSP.6e}
```

## Target Statement

### Target Theorem `HSP.A` (Fixed halo-shell interval propagation for the first rung)

On the same-fluid interval `I`, prove

```math
\sup_{t\in I}\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)<\infty.
\tag{HSP.A0}
```

This is the exact fixed-shell theorem-facing successor to `VCB.A`.

The honest route-native theorem sitting underneath it is the stronger packet
statement

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)<\infty,
\tag{HSP.A0a}
```

from which `(HSP.A0)` follows because
`\mathcal G_{1,\rho,\psi}^{halo,\delta}` is one summand of
`\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}`.

## Downstream Use

By `(OFP.10do)` and fixed-radius local Sobolev/Morrey,

```math
HSP.A
\Longrightarrow
\mathfrak U_{1,\rho}^{ball,ctr}\in L^\infty(I)
\Longrightarrow
VCB.A.
\tag{HSP.7}
```

So `HSP.A` supplies the halo carrier spent by `OFP.C1j`. Together with the
Eulerian increment envelope and the thickened collar envelope, that yields
`\mathfrak O_{F,\rho}^{ctr}\in L^\infty(I)`, then `EOC.A`, and then the direct
receiver order
`AFD.A \Longrightarrow AFD.B \Longrightarrow RCF.A \Longrightarrow LCI.A`,
with `AFD.B` already closed in stronger form by
[mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md).

The stronger packet statement `(HSP.A0a)` also has a second downstream use:
when `m\ge 3`, it discharges the energy-conditioned first-rung viscous center
ledger by
[mpp-lci-a-viscous-center-halo-shell-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-viscous-center-halo-shell-reduction-note.md).
Together with the imported ordinary energy ledger and the remaining `AFD.A`
inputs, Corollary `AFS.C` then feeds the affine-defect theorem `AFD.A`
directly, so the sharper theorem-facing first-rung target on that branch is
`HSP.A0a`, not `VCS.A` in isolation. But that packet label is not terminal on
the receiver branch: because `(HSP.A0a)` is the installed stronger form
underlying `HSP.A`, the honest direct successor beneath `HSP.A0a` is already
the fixed-increment source law `FEI.C7`, while the sharper route-native
nonlocal return is `(HSP.Bc0)\equiv(FEI.Bc0)`. The companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now closes the branch in the conservative route-local sense: after that FEI
continuation is unpacked, the energy-conditioned halo-shell path reopens only
the returned lower-carrier reads and feeds back into the old `LCI.A` program.

## Natural Shell Reduction

### Proposition `HSP.B1` (The halo-shell theorem reduces to the lower-order halo-shell carrier)

If the lower-order moving-collar identity `LCI.B1` is replayed with
`\vartheta_{\rho,\psi,t}^{halo,\delta}` in place of
`\vartheta_{\rho,\psi,t}^{\delta}`, then the same differentiated same-fluid law,
the same pressure redistribution/flux channel, and the same geometric
commutator algebra yield

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)
+
(\nu-\varepsilon)\mathcal D_{N,m,\rho,\psi}^{halo,low,\delta}(t)
\le
C_{\varepsilon,\rho,\psi,\delta,I}
\big(1+\Gamma_\sharp(t)\big)
\big(1+\Gamma_{N,m,\rho,\psi}^{halo,sh}(t)\big)
\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t).
\tag{HSP.8}
```

### Proof

This is the direct halo-shell analogue of `LCI.B2f2a`. The same proof goes
through without new source families:

1. the packet family is again `\{Z_{\beta,q}=\nabla^\beta U_q\}_{0\le q\le m,\ 0\le\beta\le 2}`,
   now localized by `\vartheta_{\rho,\psi,t}^{halo,\delta}`;
2. the strain/cascade block is discharged by the same triangular lower-order
   counting used in `LCI.B2a`, because the enlarged shell changes only the
   support of the cutoff, not the derivative bookkeeping;
3. the pressure terms remain on the redistribution/flux channel exactly as in
   `LCI.B1`;
4. the transport and viscous commutators use the same defining-function bounds
   as `(CSP.25g0d)`--`(CSP.25g0e)`, with the shell support
   `\mathcal C_{\rho,\psi}^{halo,\delta}(t)` in place of
   `\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)`.

Because `U_0,\dots,U_m` all belong to `(HSP.6e)`, the endpoint term
`(HSP.6a)` and the cutoff transport coefficient `(HSP.6b)` are both absorbed by
the same lower-order carrier. So there is no second nonlinear family and no
hidden extra packet beyond `(HSP.6c)`--`(HSP.6e)`. ∎

### Corollary `HSP.B1a` (The first-rung halo-shell theorem is downstream of the lower-order halo-shell packet)

If

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)<\infty,
\tag{HSP.8a}
```

then

```math
\sup_{t\in I}\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)<\infty,
\tag{HSP.8b}
```

hence `HSP.A`.

### Lemma `HSP.B2` (The lower-order halo-shell carrier reads off from transported centers on the larger shell radius)

Retain the transported cover `(LCI.3c3l)` and define

```math
R_{\delta,\rho}^{halo}
:=
r_\delta+2\delta+R_{\rho}^{halo,\ast}.
\tag{HSP.8c}
```

Also define the halo-shell oscillation coefficient

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_{\delta,\rho}^{halo}))}.
\tag{HSP.8d}
```

Then for almost every `t\in I`,

```math
\Gamma_{N,m,\rho,\psi}^{halo,sh}(t)
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)
\Big).
\tag{HSP.8e}
```

### Proof

Fix `t\in I` and `x\in\mathcal C_{\rho,\psi}^{halo,\delta}(t)`. By definition of
the shell, choose `y\in\mathfrak P_{\rho,\psi}(t)` with
`|x-y|<2\delta+R_{\rho}^{halo,\ast}`. Since
`\mathfrak P_{\rho,\psi}(t)\subset\mathcal C_{\rho,\psi}^{\delta}(t)`, the
finite transported cover `(LCI.3c3l)` gives some `j=j(y,t)` with
`y\in B(\Phi(a^j,t),r_\delta)`. Therefore

```math
|x-\Phi(a^j,t)|
\le
|x-y|+|y-\Phi(a^j,t)|
<
2\delta+R_{\rho}^{halo,\ast}+r_\delta
=
R_{\delta,\rho}^{halo}
<
2R_{\delta,\rho}^{halo},
\tag{HSP.8f}
```

so for every `0\le q\le m`,

```math
|U_q(x,t)|
\le
|U_q(\Phi(a^j,t),t)|
+
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_{\delta,\rho}^{halo}))}.
\tag{HSP.8g}
```

Taking the supremum over `x\in\mathcal C_{\rho,\psi}^{halo,\delta}(t)` and
summing over `q=0,\dots,m` yields `(HSP.8e)`. ∎

### Lemma `HSP.B3` (The larger-shell oscillation coefficient is a fixed-scale Eulerian increment envelope)

For the fixed halo radius `(HSP.8c)`,

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)^2
\le
C_{N,m,\lambda}\,
\mathfrak e_{N,2R_{\delta,\rho}^{halo}}^{Eul,ctr}(t).
\tag{HSP.8h}
```

### Proof

Fix `j` and `x\in B(\Phi(a^j,t),2R_{\delta,\rho}^{halo})`. Set
`\eta:=x-\Phi(a^j,t)`, so `|\eta|\le 2R_{\delta,\rho}^{halo}`. Then by the
definition `(OFP.10bu)` of the Eulerian increment envelope,

```math
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(\Phi(a^j,t),t)
\big|^2
\le
\mathfrak e_{N,2R_{\delta,\rho}^{halo}}^{Eul,ctr}(t).
\tag{HSP.8i}
```

For each `0\le q\le m\le N`,

```math
\big|
U_q(x,t)-U_q(\Phi(a^j,t),t)
\big|^2
\le
\lambda_q^{-1}\,
\mathfrak e_{N,2R_{\delta,\rho}^{halo}}^{Eul,ctr}(t).
\tag{HSP.8j}
```

Taking the supremum over `x` in the ball, summing over `q=0,\dots,m`, and then
the supremum over `j` yields `(HSP.8h)`. ∎

So the halo-shell theorem is again a packet-to-carrier propagation problem, but
the honest packet-to-carrier pair is now the lower-order halo-shell pair
`(\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta},\Gamma_{N,m,\rho,\psi}^{halo,sh})`,
not the narrower first-rung pair `(HSP.3)`--`(HSP.6)`.

Combining `(HSP.8e)` and `(HSP.8h)` shows that the genuinely new halo-shell
supplier is not a mysterious oscillation class. It is the fixed-scale
Eulerian increment envelope at radius `2R_{\delta,\rho}^{halo}` together with
the already-existing anchored-center ledger `\mathfrak A_{N,m,\rho,\psi}^{ctr}`.
The theorem-facing increment supplier is now isolated in
[mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)
as `FEI.A`, and its reductions `FEI.B3`, `FEI.C7`, and `FPR.C3`--`FPR.C10`
sharpen that wall further to a finite centerwise fixed-increment family whose
pressure-side direct successor is now the fixed-ball Holder theorem `FPC.H` for
the carrier `\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}` from
[mpp-lci-a-fixed-radius-pressure-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-center-ball-note.md),
with the widened collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}` still on
the coefficient side, with the larger-radius transported-center envelope
`\mathfrak e_{N,5\Lambda}^{Eul,ctr}` from `(FPR.C8b)` now downstream of
`FPC.H` by `LRE.C1`, with the fixed-ball
Sobolev theorem `FPC.A` only a
sharp sufficient route beneath that direct Holder theorem, and the fixed-radius transported-center top-rung Sobolev theorem
`FVR.F` on the top-viscous side, whose first readout corollaries are `FVR.D`
and `FVR.A`,
with the cascade and drift mismatch already absorbed by the thickened collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}`.

### Corollary `HSP.Bc` (The widened receiver-side collar return already implies the halo-shell theorem once the anchored-center ledger is available)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty,
\tag{HSP.Bc0}
```

and

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I).
\tag{HSP.Bc1}
```

Then

```math
\sup_{t\in I}\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)<\infty.
\tag{HSP.Bc2}
```

### Proof

Hypothesis `(HSP.Bc0)` is exactly `(FEI.Bc0)`, so Corollary `FEI.Bc` gives
`\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I)`. Since
`\Lambda_{\delta,\rho}^{halo}=2R_{\delta,\rho}^{halo}`, Lemma `HSP.B3` yields

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}\in L^1(I).
\tag{HSP.Bc3}
```

The companion widened-receiver return note
[mpp-lci-a-widened-receiver-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-receiver-return-note.md)
sharpens `(HSP.Bc0)\equiv(FEI.Bc0)` one step further: this widened nonlocal
return is exactly the old lower-order collar packet theorem `LCI.B` at enlarged
depth/thickness, not a new widened-return family.

Combining `(HSP.Bc1)` with `(HSP.Bc3)` in `(HSP.8e)` places
`\Gamma_{N,m,\rho,\psi}^{halo,sh}` in `L^1(I)`. Gronwall on `(HSP.8)` therefore
gives `(HSP.8a)`, and Corollary `HSP.B1a` yields `(HSP.Bc2)`. ∎

## Boundary

This note does **not** prove `HSP.A`.

The exact live split is:

```math
\boxed{
\text{the honest direct successor beneath }HSP.A0a\text{, hence beneath }HSP.A\text{, is the fixed-increment source law isolated as }FEI.C7,
\newline
\text{with the thickened collar envelope }
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}
\text{ already on the coefficient side,}
\newline
\text{while the sharper route-native nonlocal return is the widened lower-order moving-collar packet }
(HSP.Bc0)\equiv(FEI.Bc0),
\newline
\text{and the older local floors }FPL.C,\ FTL.C,\ FCL.C,\ \text{and the shifted-slab residue now carry the sharper route-native suppliers }
(FPL.Bc0),\ (FTL.Bc0),\ (FCL.Bc0),\ (FTOC.Bf0),
\newline
\text{so those local packets are no longer the first nonlocal theorem-facing walls and have returned to the receiver-side collar burden }CSP.B3a1.
}
\tag{HSP.9}
```

The sharper exact packet floor beneath `FPR.C3` is now isolated separately in
[mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md);
the present halo-shell route still continues through the stronger direct
pressure package `FPR.C4`--`FPR.C6`.
The companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now also records the terminal read of the energy-conditioned first-rung branch:
its FEI continuation reopens only the returned `LCI.A` reads rather than a new
external supplier family.

On the top-viscous side, the companion note
[mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md)
records a still-local one-rung-lower sufficient packet beneath the current
frontier theorem `FVR.F`, phrased through the intermediate Sobolev supplier
`FTS.C`. Its own companion
[mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
now pushes that one step deeper to the one-rung-higher local `L^2` theorem
`FTL.C`, with direct sufficient packet form `(FTL.H0)`.

One step deeper again, the companion note
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md)
now records a common still-local fixed-radius packet `FCL.C` beneath the sharp
direct pair itself. That packet implies both branch-local theorems `FPL.C` and
`FTL.C`, so the direct halo-shell wall `(FPC.H,FVR.F)` no longer bottoms out at
two separate unrelated local `L^2` packets.

More sharply still, the companion note
[mpp-lci-a-fixed-radius-common-local-top-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-residue-note.md)
shows that `FCL.C` reduces asymmetrically to the already-installed pressure
branch-local wall `FPL.C` together with the larger-radius top-tail residue
theorem `FTR.C`. Relative to the top-viscous branch, the companion note
[mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md)
sharpens that residue further: `(FTSR.A0)` splits `FTR.C` exactly into the
already-installed top branch-local wall `FTL.C` plus the annular shell theorem
`FTSR.C`.

At the packet-sufficient level, however, the pressure-side and top-viscous
siblings now share one common route-native lower-order moving-collar route,
already theorem-facing through `(FCL.Bc0)` in
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md):
the single common lower-order moving-collar packet at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}` and depth `N+4` implies the common local
packet `FCL.C`, hence both branch-local terminal walls `FPL.C` and `FTL.C`,
while `(FCL.B0)` remains only the coarser widened-thickness `CSP.A` fallback. So
the adjacent sufficient form beneath the sharp direct halo-shell wall
`(FPC.H,FVR.F)` has collapsed to one common route-native moving-collar packet,
even though the direct wall itself has not.

So the live successor behind `VCB.A` is now explicit: the halo-shell theorem is
no longer blocked by an unnamed first-rung nonlinear gap. It is blocked by one
exact fixed-increment source wall, with the thickened collar envelope at radius
`\delta+\Lambda_{\delta,\rho}^{halo}` already on the coefficient side,
packaged theorem-facing through `FEI.C7`; the old frozen-family packet theorem
is only adjacent and not the sharp direct successor on this receiver branch.
At the same time, the companion FEI note now records the sharper route-native
nonlocal return `FEI.Bc`: the widened lower-order collar packet at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}` already implies `FEI.A`. So the honest
live split here is sharp direct fixed-increment source law versus widened
receiver-side collar return, not a single undifferentiated “FEI wall”.
More sharply, the exact branch-local still-local sub-obstruction beneath the
top-viscous frontier `FVR.F` is now `FTL.C`, with `FTS.C` only the intermediate
one-rung-lower Sobolev route inside that local stack. The installed packet-level
implications into `FTL.C` are the sharper route-native moving-collar corollary
`(FTL.Bc0)`, the adjacent collar comparison `FTL.B`, and the common
widened-thickness route `FTL.Ba`, while the coarser adjacent bypasses `FVR.B`
and `FVR.C` skip that local stack rather than discharging it. One step
deeper, `FCL.C` in
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md)
is the exact common still-local floor beneath both `FPL.C` and `FTL.C`, with
`(FTR.A2)` splitting that common floor relative to the pressure branch into
`FPL.C` plus `FTR.C`, and with `(FTSR.A0)` sharpening the remaining top residue
relative to the top-viscous branch into `FTL.C` plus the annular shell theorem
`FTSR.C`. Its own companion
[mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md)
now rewrites that shell as the finite shifted-center cover theorem `FTOC.C`,
then one step deeper as the shifted-center slab theorem `FTOC.D`, then through
the shifted-center top-rung Sobolev slab theorem `FTOC.E`, and then to the
one-rung-lower shifted-slab Sobolev theorem `FTOC.F`, with `(FTOC.Bf0)` the
sharper route-native moving-collar packet supplier from `CSP.B3a1` for the
honest current local object and `(FTOC.Bc0)` only the weaker predecessor-side
corollary. But `FTOC.G` then shows that this shifted-slab branch no longer
leaves an independent live theorem burden on the installed no-jump route: it
has returned to the receiver-side collar theorem `CSP.B3a1`, while the common
local floor still also spends the branch-local top wall `FTL.C` and the
pressure wall `FPL.C`, and globally to `CSP.A` only once that receiver-side
theorem is paired with `(FCI.5f)`.
Because `(FTOC.Bf0)` is exactly `CSP.B3a1` at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`, that shifted-slab branch no longer
leaves an independent live local wall and has returned to the receiver-side
collar burden `CSP.B3a1`, hence globally to `CSP.A` once `(FCI.5f)` is paired
with that receiver-side theorem.
