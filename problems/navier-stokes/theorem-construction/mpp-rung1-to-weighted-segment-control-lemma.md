# MPP Rung1-To-Weighted-Segment Control Lemma

## Status

Candidate theorem-facing control note.

Role: exact concrete next-step surface for `RW.B`.

This note sits underneath
`mpp-weighted-segment-propagation-lemma.md`
and isolates the direct packet-side route from the exact rung-1 material source
to the weighted-segment packet.

## Purpose

The exact burden here is:

```math
\boxed{
\mathcal Q_{1,r,\psi}^{str},\ P_F^\ast,\ A_F,\ \text{next-rung segment control}
\Longrightarrow
\mathcal M^{wseg}_{N+1,r,\psi}.
}
\tag{R1.0}
```

This is the exact next move for `RW.B`.

## Setup

Retain the weighted-segment packet from the live reduction surface:

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta\,da.
\tag{R1.1}
```

Retain the exact source and packing-control packets:

```math
\mathcal Q_{1,r,\psi}^{str}(t),
\qquad
P_F^\ast(r,t;\psi),
\qquad
A_F(t;\psi).
\tag{R1.2}
```

Define the direct next-rung segment envelope

```math
\mathfrak N^{seg}_{N+1,r,\psi}(t)
:=
\operatorname*{ess\,sup}_{a\in\operatorname{supp}\psi}
\sum_{k=0}^{N}\lambda_k
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta.
\tag{R1.3}
```

For a scale window `0<|r|\le \rho`, define

```math
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)
:=
\sup_{0<|r|\le \rho}
\mathfrak N^{seg}_{N+1,r,\psi}(t).
\tag{R1.4}
```

This is the exact packet-side next-rung segment-control object that sits one
level above `\mathcal M^{wseg}` without passing through the stronger
bridge-tube envelope.

## Exact Packet-Side Reduction

### Lemma R1.A (direct weighted-segment reduction)

For every finite depth `N`, packet `\psi`, increment `r`, and time `t`,

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
\mathfrak N^{seg}_{N+1,r,\psi}(t)
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2\,da.
\tag{R1.5}
```

Hence, by the exact packing bridge `(IS.8)`,

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,
\mathfrak N^{seg}_{N+1,r,\psi}(t).
\tag{R1.6}
```

### Proof

For a.e. `a`, the segment integral in `(R1.1)` is bounded by the envelope
`\mathfrak N^{seg}_{N+1,r,\psi}(t)` from `(R1.3)`. Pulling that bound outside
the `a`-integral gives `(R1.5)`. Combining with

```math
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2\,da
\le
|r|^2\,P_F^\ast(r,t;\psi)
\tag{R1.7}
```

from `(IS.8)` yields `(R1.6)`. ∎

## Exact Theorem Interface

### Candidate Theorem R1.B (rung-1 source to weighted-segment control)

Fix a compactly supported material packet `\psi`, a finite depth `N`, a time
interval `I`, and a scale window `0<|r|\le \rho`.

Assume on `I`:

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
P_F^\ast(r,t;\psi)<\infty,
\tag{R1.8}
```

```math
\sup_{t\in I}A_F(t;\psi)<\infty,
\tag{R1.9}
```

and that the exact rung-1 material source
`\mathcal Q_{1,r,\psi}^{str}` together with packet-side next-rung control
propagates the direct segment envelope:

```math
\sup_{t\in I}
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)<\infty.
\tag{R1.10}
```

Then

```math
\sup_{t\in I}
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)<\infty.
\tag{R1.11}
```

### Proof

Take the supremum of `(R1.6)` over `0<|r|\le \rho` and `t\in I`. Since
`|r|\le \rho`, the bounds `(R1.8)` and `(R1.10)` imply `(R1.11)`. ∎

### Theorem `R1.C` (Transport-driven interval control of the direct segment and weighted-segment side)

Fix a compactly supported material packet `\psi`, a finite depth `N`, a time
interval `I=[t_0,t_1]`, a scale window `0<|r|\le \rho`, and a collar thickness
`\delta>0`.

Define the scale-window transport ledgers

```math
P_{F,\rho,\psi}^{\ast}(t)
:=
\sup_{0<|r|\le \rho}P_F^\ast(r,t;\psi),
\tag{R1.11a}
```

```math
\Lambda_{\rho,\psi}^{seg}(t)
:=
\sup_{0<|r|\le \rho}\Lambda_{\psi,r}(t),
\qquad
\mathcal Q_{1,\rho,\psi}^{str}(t)
:=
\sup_{0<|r|\le \rho}\mathcal Q_{1,r,\psi}^{str}(t),
\tag{R1.11b}
```

and

```math
A_{F,\rho,\psi}^{\sharp}(t)
:=
\sup_{0<|r|\le \rho}A_F^\sharp(t;\psi,r).
\tag{R1.11c}
```

Let `C_{TB}>0` denote the constant appearing in `(TB.28)`.

Assume:

```math
P_{F,\rho,\psi}^{\ast}(t_0)<\infty,
\qquad
\int_I \Lambda_{\rho,\psi}^{seg}(t)\,dt<\infty,
\qquad
\int_I A_{F,\rho,\psi}^{\sharp}(t)\,\mathcal Q_{1,\rho,\psi}^{str}(t)\,dt<\infty,
\tag{R1.11d}
```

and that the common collar envelope is propagated on `I`,

```math
\sup_{t\in I}\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)<\infty.
\tag{R1.11e}
```

Then:

```math
P_{F,\rho,\psi}^{\ast}(t)
\le
\exp\!\Big(C_{TB}\int_{t_0}^{t}\Lambda_{\rho,\psi}^{seg}(\tau)\,d\tau\Big)
\left[
P_{F,\rho,\psi}^{\ast}(t_0)
+
C_{TB}
\int_{t_0}^{t}
\exp\!\Big(-C_{TB}\int_{t_0}^{s}\Lambda_{\rho,\psi}^{seg}(\tau)\,d\tau\Big)\,
A_{F,\rho,\psi}^{\sharp}(s)\,
\mathcal Q_{1,\rho,\psi}^{str}(s)\,ds
\right],
\tag{R1.11f}
```

and, for every `t\in I`,

```math
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t),
\tag{R1.11g}
```

```math
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
\le
\rho^2\,
P_{F,\rho,\psi}^{\ast}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t).
\tag{R1.11h}
```

In particular,

```math
\sup_{t\in I}\mathfrak N^{seg}_{N+1,\rho,\psi}(t)<\infty,
\qquad
\sup_{t\in I}\mathcal M^{wseg}_{N+1,\rho,\psi}(t)<\infty.
\tag{R1.11i}
```

### Proof

Fix `0<|r|\le \rho`. For every `0\le \theta\le 1`, apply `(TB.28)` to the
increment `\theta r`:

```math
\frac{d}{dt}P_F(\theta r,t;\psi)
\le
C_{TB}\,
\Lambda_{\psi,\theta r}(t)\,P_F(\theta r,t;\psi)
+
C_{TB}\,
A_F^\sharp(t;\psi,\theta r)\,\mathcal Q_{1,\theta r,\psi}^{str}(t).
\tag{R1.11j}
```

By Gronwall,

```math
P_F(\theta r,t;\psi)
\le
\exp\!\Big(C_{TB}\int_{t_0}^{t}\Lambda_{\rho,\psi}^{seg}(\tau)\,d\tau\Big)
\left[
P_F(\theta r,t_0;\psi)
+
C_{TB}
\int_{t_0}^{t}
\exp\!\Big(-C_{TB}\int_{t_0}^{s}\Lambda_{\rho,\psi}^{seg}(\tau)\,d\tau\Big)\,
A_{F,\rho,\psi}^{\sharp}(s)\,
\mathcal Q_{1,\rho,\psi}^{str}(s)\,ds
\right].
\tag{R1.11k}
```

Take the supremum over `0\le \theta\le 1`, then over `0<|r|\le \rho`, to obtain
`(R1.11f)`.

The direct segment bound `(R1.11g)` is exactly `(PC.11)` after taking the
supremum over `0<|r|\le \rho`.

For the weighted-segment side, `(PC.12)` gives

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
\qquad
(0<|r|\le \rho).
\tag{R1.11l}
```

Taking the supremum over `0<|r|\le \rho` yields `(R1.11h)`, and `(R1.11i)`
follows from `(R1.11e)` together with the finiteness of `(R1.11f)`. ∎

### Remark `R1.C1` (Explicit reduction of the shifted distortion ledger)

The shift in `(TB.28)` remains explicit until it is reduced explicitly. For
`|r|\le \rho`, define the enlarged packet

```math
\psi_\rho^\sharp(a)
:=
\Big(
\psi(a)^2
+
\sup_{|s|\le \rho}\psi(a-s)^2
\Big)^{1/2}.
\tag{R1.11m}
```

Then

```math
A_F^\sharp(t;\psi,r)
\le
A_F(t;\psi_\rho^\sharp)
\qquad
(0<|r|\le \rho),
\tag{R1.11n}
```

so `(R1.11d)` may be verified using the explicitly enlarged but unshifted
packet ledger `A_F(t;\psi_\rho^\sharp)` rather than by silently dropping the
shift.

## Interpretation

The live burden is now sharper:

```math
\text{the exact rung-1 material source feeds }P_F^\ast\text{ through }(TB.28),
\text{ and the common collar envelope feeds }
\mathfrak N^{seg}_{N+1,\rho,\psi}
\text{ and }\mathcal M^{wseg}_{N+1,\rho,\psi}
\text{ through }(PC.11)\text{--}(PC.12).
\tag{R1.12}
```

So the hidden bridge behind `(R1.10)` is no longer a black box: the exact
transport source is `\mathcal Q_{1,r,\psi}^{str}`, the exact packing bridge is
`P_F^\ast`, the exact shifted distortion ledger is `A_F^\sharp`, and the exact
next-rung receiver is the common collar envelope.

## Boundary

This note does **not** yet prove:

1. interval propagation of the collar envelope
   `\mathfrak C_{N+1,\rho,\psi}^{\delta}` itself;
2. a closed next-rung packet evolution law using only `A_F`,
   `P_F^\ast`, and the PDE-native transport structure;
3. the reference-comparison propagation theorem;
4. the downstream closure-packaging theorem.

What this note now does settle is narrower but exact:
the direct source-to-segment / weighted-segment conversion behind `(R1.10)` is
reduced to `(TB.28)` plus the common collar envelope, with the shifted
distortion ledger handled explicitly rather than suppressed.

## Source Surfaces

Primary source surfaces for this note:

1. `problems/navier-stokes/theorem-construction/mpp-weighted-segment-propagation-lemma.md`
2. `problems/navier-stokes/theorem-construction/mpp-reference-increment-and-segment-packet-reduction.md`
3. `problems/navier-stokes/theorem-construction/mpp-increment-stability-lemma.md`
4. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
