# MPP LCI.A End-to-End Receiver and Class Certificate Map

## Status

Theorem-facing audit and route map.

Role: record the corrected end-to-end certificate route after the
halo-gradient carrier return `U2H.A` and the widened-thickness lower-carrier
cell `WTL.C`.

This note does **not** prove a new analytic supplier. It fixes the bookkeeping
around the two certificates now visible in the Navier-Stokes class-membership
lane:

```math
\boxed{LCI.A}
```

and

```math
\boxed{
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time NS class exit}.
}
```

Here `\mathsf{End}_{NS}` denotes the remaining endpoint-exclusion matrix, not
an installed theorem.

## Audit Corrections

### Correction 1: `U2H.A` closes only the new halo-gradient residue

The landed halo-gradient return theorem is:

```math
U2H.A:
\qquad
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
\tag{RCC.1}
```

It does not close the segment-thickness cell by itself. The segment-thickness
conclusion also spends the already-separated `OFP.C1e2` inputs:

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak U_{1,\rho}^{halo,ctr}\in L^1(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty.
\tag{RCC.2}
```

Thus the honest segment route is:

```math
U2H.A+(RCC.2)
\Longrightarrow
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I)
\Longrightarrow
(OFP.10cb).
\tag{RCC.3}
```

Equivalently,

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg}
\qquad\text{for a.e. }t\in I.
\tag{RCC.4}
```

### Correction 2: the enlarged `LCI` calls are parameter-shifted obligations

The widened-thickness consumer is not a consequence of the base instance
`LCI.A[N,m,\delta]`. It is the parameter-shifted lower-carrier instance

```math
WTL.C
\equiv
LCI.A_{\delta_\ast},
\qquad
\delta_\ast:=\delta+\delta_{seg},
\tag{RCC.5}
```

namely

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta+\delta_{seg}}\in L^1(I).
\tag{RCC.6}
```

Likewise the widened receiver return is the enlarged-parameter `LCI.B`
instance

```math
WRR.A
\equiv
LCI.B
\left[
N\mapsto N+4,\quad
m\mapsto N+4,\quad
\delta\mapsto \delta+5\Lambda_{\delta,\rho}^{halo}
\right].
\tag{RCC.7}
```

So the receiver route does not end at one already-proved base theorem. It ends
at a parameter-stable `LCI` theorem family strong enough to instantiate
`LCI.A[N,m,\delta]`, `LCI.A[N,m,\delta+\delta_{seg}]`, and the widened
`LCI.B[N+4,N+4,\delta+5\Lambda_{\delta,\rho}^{halo}]` call.

### Correction 3: `EOC.A` supplies the oscillation side, not a new `RCF.1`
claim by default

The residual-forcing note freezes the local Holder package

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)
\tag{RCF.1}
```

and records that `(RCF.1)` implies

```math
\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I).
\tag{RCF.3}
```

The enlarged-ball theorem is

```math
EOC.A:
\qquad
\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I),
\tag{RCC.8}
```

equivalently its sharp enlarged-ball Holder form. Since the original balls sit
inside the enlarged balls, `EOC.A` supplies the oscillation half of
`(LCI.3c3y)`:

```math
\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I).
\tag{RCC.9}
```

For the lower-carrier proof, this is the quantity spent. It is safer to state
the downstream use as "`EOC.A` supplies the oscillation side of `(LCI.3c3y)`"
unless the local Holder readout is explicitly invoked.

### Correction 4: `AFD.A` is a conditional first-rung supplier, not an automatic output

`AFD.A` assumes the enlarged-ball oscillation theorem, finite seed center data,
rung-0 center forcing, and the explicit first-rung residual supplier pair. Its
output is

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{RCC.10}
```

The installed bridge `AFD.B` / `AFB.A` then recovers the first center rung,
in the form needed by the transported-center residual package. Thus the
compressed downstream phrase

```math
EOC.A\Longrightarrow AFD.A\Longrightarrow AFD.B
\tag{RCC.11}
```

must be read with the explicit `AFD.A` hypotheses retained.

### Correction 5: the endpoint matrix remains conditional

Only the `(Part,Dead)` endpoint exclusion is recorded as installed. The
remaining terminal exclusions

```math
(Part,\text{response-margin-collapse}),
\qquad
(Pack,\text{packing-detached}),
\qquad
(Field,\text{Jump}),
\qquad
\text{tower-blown},
\qquad
\text{cross entries}
\tag{RCC.12}
```

are still part of `\mathsf{End}_{NS}`. Therefore the final certificate is a
conditional terminal assembly, not an installed conclusion. The repaired Part
response-margin subface is absent only under closed terminal Part predicates or
retained strict response margins on the same terminal tail.

In the endpoint theorem packet, this is the repaired conditional
Pack/Part/Field endpoint matrix:

```math
\{Pack,Part,Field\}
\times
\{
Dead,\ response\text{-}margin\text{-}collapse,\ packing\text{-}detached,\ tower\text{-}blown,\ Jump,\ Dead_\times,\ Blown_\times,\ Jump_\times
\}.
\tag{RCC.12a}
```

The cross slots are matrix-reduction slots, not new primitive failure laws.
They are owned by `END.Cross`; the row-independent tower slot is owned by
`DTC-to-TowerBound => END.TowerAmp => END.TowerBound`.

## Corrected Receiver Certificate

Set

```math
\delta_\ast:=\delta+\delta_{seg}.
\tag{RCC.13}
```

The receiver-side route from the present point is:

```math
WRR.A
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
U2H.A
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
\tag{RCC.14}
```

With the first-rung and initial deformation-gradient inputs `(RCC.2)`, this
gives the segment-geometry condition:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
+
(RCC.2)
\Longrightarrow
(OFP.10cb).
\tag{RCC.15}
```

The thickened collar side is separate:

```math
WTL.C
+
(FCI.5f)
+
\Gamma_\sharp\in L^\infty(I)
+
P_{F,\rho,\psi}^{\ast}\in L^1(I)
\Longrightarrow
CSP.A_{\delta_\ast}.
\tag{RCC.16}
```

This is exactly `WTC.A`, with the thickness-sensitive slot
`\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I)` supplied by `WTL.C` and
the source-side frozen-family burden kept as `(FCI.5f)`.

The enlarged-ball oscillation recombination is then:

```math
(EOC.27)
+
CSP.A_{\delta_\ast}
+
(OFP.10cb)
\Longrightarrow
EOC.A.
\tag{RCC.17}
```

After `EOC.A`, the lower-carrier return is:

```math
EOC.A
+
AFD.A
+
AFD.B
+
RCF.A
\Longrightarrow
(LCI.3c3y)
\Longrightarrow
LCI.B
\Longrightarrow
LCI.A.
\tag{RCC.18}
```

Expanded:

1. `EOC.A` supplies the oscillation side
   `\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I)`;
2. `AFD.A` plus the installed `AFD.B` bridge supplies the first-center-rung
   input used by the transported-center package;
3. `RCF.A`, under the residual center-forcing hypothesis, supplies
   `\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)`;
4. Corollary `LCI.B2e` gives `LCI.B`;
5. Proposition `LCI.C` gives `LCI.A`.

Thus the first conditional certificate is:

```math
\boxed{
WTL.C
+
WRR.A
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
+
(FCI.5f)
+
AFD.A
+
AFD.B
+
RCF.A
\Longrightarrow
LCI.A
}
\tag{RCC.19}
```

with the already-recorded first-rung, seed, pack-gauge, transport-bridge, and
initial deformation-gradient inputs kept in their respective theorem packets.
The anchored-center ledger in `(RCC.19)` is the pre-`EOC.A` input spent by
`U2H.A`; it must not be silently derived from the later `RCF.A` output.

## Corrected One-Field and Class-Membership Certificate

The finite-parameter lower-carrier Gronwall step is now isolated in
[mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md).
That note proves the conditional uniform closure:

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right)
\Longrightarrow
ULCI.A.
\tag{RCC.19a}
```

The non-smuggling positive-estimate supplier for this transported-center
package is now isolated in
[mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md):

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
DTC.A_{\mathfrak p}
\Longrightarrow
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right).
\tag{RCC.19b}
```

This replaces the receiver-loop shortcuts when the goal is to feed `ULCI.A`
without hidden `LCI.A` / `CSP.A` inputs.

For non-circular graph assembly, it also separates
`\mathscr P_{\rm pre}:=\mathscr P_{\rm req}\setminus\{(N,m,\delta)\}`. The
pre-`EOC.A` instances supply `LCI.A_{N,m,\delta+\delta_{seg}}` and `(EOC.27)`;
only after `EOC.Ca` gives base `EOC.A_{N,m,\delta}` does the base
`AFD.A` / `RCF.A` chain recover `LCI.A_{N,m,\delta}`. Thus the uniform
Gronwall step is closed, while the remaining analytic burden is the uniform
transported-center package feeding it.

Once base `LCI.A` is available, the packet-local collar route gives:

```math
LCI.A+(FCI.5f)
\Longrightarrow
CSP.A.
\tag{RCC.20}
```

The one-field theorem program then supplies:

```math
CSP.A+(FCI.5f)
\Longrightarrow
OFP.A.
\tag{RCC.21}
```

Inside class membership, `OFP.A` is the field-preservation input `CFI.B3`.
Together with the separate packing and participation preservations,

```math
CFI.B1+CFI.B2+CFI.B3
\Longrightarrow
CFI.B4
\Longrightarrow
CFI.A.
\tag{RCC.22}
```

The terminal lane certificate is therefore:

```math
\boxed{
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time NS class exit}.
}
\tag{RCC.23}
```

Equivalently, spelling out the upstream sufficient package:

```math
\boxed{
LCI.A
+
(FCI.5f)
+
\text{Pack preservation}
+
\text{Part preservation}
+
\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time NS class exit}.
}
\tag{RCC.24}
```

This remains conditional on the endpoint exclusions collected in
`\mathsf{End}_{NS}`.

## Current Open Blocks

After `ULCI.A` and `DTC.C`, the receiver-side lower-carrier machinery is a
conditional assembly under the finite-parameter Gronwall inputs and the
transported-center package. The receiver side has one remaining
positive-estimate block:

```math
\boxed{
DTC.A_{\mathfrak p}
\quad
(\mathfrak p\in\mathscr P_{\rm req}).
}
\tag{RCC.25}
```

The full lane still spends the source-side frozen-family burden `(FCI.5f)` in
the collar and one-field steps unless that source branch is separately treated
as already installed. Therefore the unconditional theorem-block list is:

```math
\boxed{
DTC.A_{\mathfrak p}
\text{ for every }\mathfrak p\in\mathscr P_{\rm req}
}
+
\boxed{(FCI.5f)}
+
\boxed{\mathsf{End}_{NS}}.
\tag{RCC.26}
```

If `(FCI.5f)` is promoted as installed from the source-side branch, the remaining
proof program reduces to the two blocks:

```math
\boxed{
DTC.A_{\mathfrak p}
\text{ for every }\mathfrak p\in\mathscr P_{\rm req}
}
\qquad
\boxed{
\mathsf{End}_{NS}
}.
\tag{RCC.27}
```

The endpoint block is spelled out in
[mpp-class-membership-endpoint-matrix-closure-contract-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md):
`(Part,Dead)` is already installed, while `END.Pack`, `END.Field`,
`END.TowerBound`, and `END.Cross` are the live endpoint entries in
`End_NS`.

This is the corrected reading of the proposed end-to-end route: the receiver
subgraph is compressed to `DTC.A` plus the conditional `ULCI`/collar/one-field
assembly with its named inputs, and the lane-level closure is the conditional certificate
`CFI.A+\mathsf{End}_{NS}`, equivalently `CFI.A+End_NS`.
