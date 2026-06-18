# MPP LCI.A Fixed-Increment Pressure-Source Packet Reduction Note

## Status

Candidate theorem-facing note.

Role: formalize the derivative-LP packet split beneath the localized
increment-source ledger from `FPR.C3`.

This note does **not** replace the installed direct FEI pressure route through
`FPR.C4c`. Its narrower job is to expose the exact packet geometry underneath
that stronger sufficient collapse.

```math
\boxed{
\text{beneath }FPR.C3,\text{ the localized increment-source ledger already splits into}
\newline
\text{one strict low-high packet ledger, one strict high-low packet ledger, and one finite-collar resonant packet ledger.}
}
\tag{FSP.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-increment-pressure-response-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md)
2. [derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md)
3. [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)

## Why The Source Split Is Honest Here

The local pressure reduction `FPR.C1` already pushes the fixed-center readout
through the translation-invariant Calderon--Zygmund operator `T_k`:

```math
\delta_\eta \nabla^{k+1}p_{j,\eta}^{loc}(c_j(t),t)
=
T_k\!\big(\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)\big)(c_j(t),t).
\tag{FSP.1}
```

So, unlike the variable-coefficient exact-projection route behind `(DLP.7)` and
`(DLP.8)`, there is no new projector-commutator debt between the source and
the local center readout. After `FPR.C1`, the remaining pressure object is
genuinely the localized source ledger itself.

## Setup

Fix one increment `\eta` with `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and set

```math
B_j^{halo}(t):=
B(c_j(t),4\Lambda_{\delta,\rho}^{halo}).
\tag{FSP.2}
```

For each center `j`, rung `0\le k\le N`, and time `t`, define

```math
\Xi_{j,k,\eta}(x,t)
:=
\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)(x,t).
\tag{FSP.3}
```

Retain the localized increment-source ledger from `(FPR.C1a)`:

```math
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t)
=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\Big(
\|\Xi_{j,k,\eta}(\cdot,t)\|_{L^\infty(B_j^{halo}(t))}
+
[\Xi_{j,k,\eta}(\cdot,t)]_{C^{0,\alpha}(B_j^{halo}(t))}
\Big)^2.
\tag{FSP.4}
```

Fix a Littlewood--Paley collar width `C_0\ge 4` on the local spatial
variable.

## Exact Packet Reconstruction

Expand `\nabla^k(\chi_j^{pr}u\otimes u)` by Leibniz, apply the increment
operator `\delta_\eta` termwise, and on each resulting bilinear derivative
summand apply the Bony split from `(DLP.1)`--`(DLP.6)` on the local ball
`B_j^{halo}(t)`.

Let

```math
\Xi_{j,k,\eta}^{LH},
\qquad
\Xi_{j,k,\eta}^{HL},
\qquad
\Xi_{j,k,\eta}^{RR}
\tag{FSP.5}
```

denote the resulting strict low-high, strict high-low, and finite-collar
resonant packet sums.

### Lemma `FSP.1a` (Exact packet reconstruction on the widened transported-center balls)

For every `j`, `k`, `\eta`, and `t`,

```math
\Xi_{j,k,\eta}
=
\Xi_{j,k,\eta}^{LH}
+
\Xi_{j,k,\eta}^{HL}
+
\Xi_{j,k,\eta}^{RR}.
\tag{FSP.6}
```

Moreover:

1. `\Xi_{j,k,\eta}^{LH}` uses one active differentiated shell paired with a
   strict lower coefficient packet.
2. `\Xi_{j,k,\eta}^{HL}` is the symmetric packet with the active shell in the
   coefficient factor and a lower differentiated partner.
3. `\Xi_{j,k,\eta}^{RR}` is the only genuinely same-depth packet, with shell
   interaction confined to a finite collar `|q-r|\le C_0`.

### Proof

This is exactly the Bony reconstruction already recorded abstractly in
`(DLP.1)`--`(DLP.6)`, now applied termwise to the localized quadratic source
`\Xi_{j,k,\eta}` after the finite Leibniz expansion. ∎

## Packet Ledgers

Define

```math
\mathfrak Q_{N,\eta}^{press,loc,src,LH,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\Big(
\|\Xi_{j,k,\eta}^{LH}(\cdot,t)\|_{L^\infty(B_j^{halo}(t))}
+
[\Xi_{j,k,\eta}^{LH}(\cdot,t)]_{C^{0,\alpha}(B_j^{halo}(t))}
\Big)^2,
\tag{FSP.7}
```

```math
\mathfrak Q_{N,\eta}^{press,loc,src,HL,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\Big(
\|\Xi_{j,k,\eta}^{HL}(\cdot,t)\|_{L^\infty(B_j^{halo}(t))}
+
[\Xi_{j,k,\eta}^{HL}(\cdot,t)]_{C^{0,\alpha}(B_j^{halo}(t))}
\Big)^2,
\tag{FSP.8}
```

and

```math
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\Big(
\|\Xi_{j,k,\eta}^{RR}(\cdot,t)\|_{L^\infty(B_j^{halo}(t))}
+
[\Xi_{j,k,\eta}^{RR}(\cdot,t)]_{C^{0,\alpha}(B_j^{halo}(t))}
\Big)^2.
\tag{FSP.9}
```

## Main Reduction

### Proposition `FSP.A` (The localized increment-source ledger reduces to the three packet ledgers)

For every time `t\in I`,

```math
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t)
\le
C_{N,\alpha,C_0}\,
\Big(
\mathfrak Q_{N,\eta}^{press,loc,src,LH,\alpha}(t)
+
\mathfrak Q_{N,\eta}^{press,loc,src,HL,\alpha}(t)
+
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)
\Big).
\tag{FSP.A0}
```

### Proof

By `(FSP.6)`,

```math
\|\Xi_{j,k,\eta}\|_{L^\infty(B_j^{halo})}
+
[\Xi_{j,k,\eta}]_{C^{0,\alpha}(B_j^{halo})}
\le
\sum_{\star\in\{LH,HL,RR\}}
\Big(
\|\Xi_{j,k,\eta}^{\star}\|_{L^\infty(B_j^{halo})}
+
[\Xi_{j,k,\eta}^{\star}]_{C^{0,\alpha}(B_j^{halo})}
\Big).
\tag{FSP.A1}
```

Square `(FSP.A1)`, use `(a+b+c)^2\le 3(a^2+b^2+c^2)`, sum in `k` with
weights `\lambda_k`, and take the supremum in `j`. The fixed constant
`C_{N,\alpha,C_0}` only records the finite Bony collar overlap and the finite
Leibniz expansion. ∎

## Energy-Conditioned FEI Export

### Corollary `FSP.B` (Packetized FEI pressure law beneath `FPR.C3`)

Assume the ordinary interval energy ledger is available. Then `(FPR.C3)` and
`(FSP.A0)` give

```math
\mathcal S_{N,\eta}^{press,ctr}(t)
\le
2\,\mathcal I_{N,\eta}^{ctr}(t)
+
C_{\alpha,N,\lambda,\rho,\psi,\delta,I}
\Big(
\mathfrak Q_{N,\eta}^{press,loc,src,LH,\alpha}(t)
+
\mathfrak Q_{N,\eta}^{press,loc,src,HL,\alpha}(t)
+
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)
+
\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2
\Big).
\tag{FSP.B0}
```

So the exact source-side pressure supplier beneath `FPR.C3` is already the
packet trio `(FSP.7)`--`(FSP.9)`. Only `(FSP.9)` is genuinely same-depth.

## Comparison With The Installed Direct Route

The installed direct FEI pressure route does **not** stop at `(FSP.B0)`. The
pressure-response note already continues farther:

```math
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}
\Longrightarrow
\big(
\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha},
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}
\big)
\tag{FSP.C0}
```

through the stronger sufficient collapse `(FPR.C4c)`.

So this note does not replace `FPR.C4c`. It records the sharper exact source
geometry beneath it: two strict coefficient packets and one resonant packet.

### Corollary `FSP.C1` (The genuinely same-depth pressure-source remainder is already confined to the resonant packet)

```math
\boxed{
\text{on the direct pressure source side beneath }FPR.C3,\text{ the strict low-high and strict high-low ledgers are coefficient-side companions,}
\newline
\text{and the only genuinely same-depth packet is }
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}.}
\tag{FSP.C1}
```

### Proof

The exact source supplier beneath `FPR.C3` is already the packet trio
`(FSP.7)`--`(FSP.9)` by `(FSP.B0)`. Items `1` and `2` of `(FSP.6)` identify
`\Xi_{j,k,\eta}^{LH}` and `\Xi_{j,k,\eta}^{HL}` as strict coefficient packets,
while item `3` says `\Xi_{j,k,\eta}^{RR}` is the only genuinely same-depth
packet. So any further direct pressure sharpening on the source side can only
leave `\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}` as a same-depth
receiver. This does **not** prove that any of `(FSP.7)`--`(FSP.9)` is
integrable on `I`. ∎

## Boundary

This note does **not** prove any one of `(FSP.7)`--`(FSP.9)` lies in `L^1(I)`.

It only isolates the exact packet floor and the exact same-depth split:

```math
\boxed{
\text{beneath the installed sufficient pressure carrier pair }(FPR.C4a)\text{--}(FPR.C4b),
\newline
\text{the localized increment-source ledger already splits into two strict coefficient packets and one same-depth resonant packet,}
\newline
\text{and only the resonant packet still carries genuinely same-depth pressure difficulty.}
}
\tag{FSP.10}
```
