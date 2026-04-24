# MPP LCI.A Pre-CSP Still-Live Receiver Admission Note

## Status

Theorem-facing receiver-admission note.

Role: close the pre-`CSP.A` segment residue, the thickened collar consumer, and
the widened receiver return on any retained same-fluid window whose receiver
sets stay inside one compact still-live collar.

This note is deliberately not another widened `LCI` / `CSP` re-identification.
Those reductions are already recorded as a route-native fixed point. The point
here is to use the still-live smooth receiver collar directly, before spending
the `EOC.C` loop.

## Setup

Work on one finite same-fluid interval `I`. Set

```math
\delta_\ast:=\delta+\delta_{seg},
\qquad
\delta_{ret}:=\delta+5\Lambda_{\delta,\rho}^{halo}.
\tag{SLR.0}
```

Here `\delta_{seg}` is the finite segment thickness selected in `SLR.A1`
below. Equivalently, the theorem may be read with any preselected
`\bar\delta_{seg}` satisfying `\bar\delta_{seg}\ge` the right-hand side of
`(SLR.11)`, and then `\delta_\ast=\delta+\bar\delta_{seg}`.

Retain the center label halo sampled by the segment-thickness packet:

```math
A_{\rho}^{halo,ctr}
:=
\left\{
a^j+\theta r:
1\le j\le J,\ 0<|r|\le\rho,\ 0\le\theta\le1
\right\}.
\tag{SLR.0a}
```

Its transported image is

```math
\mathcal H_{\rho}^{ctr}(t)
:=
\left\{
X(a^j+\theta r,t):
1\le j\le J,\ 0<|r|\le\rho,\ 0\le\theta\le1
\right\}.
\tag{SLR.1}
```

Let `\chi_{\rho,\psi,t}^{\delta_\ast}` be the packet-collar cutoff used in
`(PC.9)`, and let `\vartheta_{\rho,\psi,t}^{\delta_{ret}}` be the lower-order
receiver cutoff used in the widened return `(EOC.27)`. Define the common
receiver set

```math
\mathcal R_{\rho,\psi}^{pre}(t)
:=
\mathcal H_{\rho}^{ctr}(t)
\cup
\operatorname{supp}\chi_{\rho,\psi,t}^{\delta_\ast}
\cup
\operatorname{supp}\vartheta_{\rho,\psi,t}^{\delta_{ret}}.
\tag{SLR.2}
```

Assume there is one still-live spacetime collar
`Q^{rec}\Subset Q^{rec,+}\Subset\Omega\times[0,T_\ast)` such that

```math
\mathcal R_{\rho,\psi}^{pre}(t)\subset Q_t^{rec,+}
\qquad(t\in I),
\tag{SLR.3}
```

and the cutoff supports have uniformly finite volume:

```math
\sup_{t\in I}
\left(
|\operatorname{supp}\chi_{\rho,\psi,t}^{\delta_\ast}|
+
|\operatorname{supp}\vartheta_{\rho,\psi,t}^{\delta_{ret}}|
\right)
\le V_{rec}<\infty.
\tag{SLR.4}
```

Finally set

```math
M_{rec}
:=
\sup_{(x,t)\in Q^{rec,+}}
\sum_{\ell=0}^{N+m+6}|\nabla^\ell u(x,t)|.
\tag{SLR.5}
```

By the still-live smooth-window admission theorem `SLC.A`, and specifically the
classical bound mechanism `(SLC.7)`, `M_{rec}<\infty` for every finite
`N,m`. In the local tower notation, `U_1=\nabla u` and the pulled-back carrier
needed by `OFP.C1e4` is `\nabla_xU_1=\nabla^2u`.

## Sufficient Retained-Window Bypass After `OFP.CellA`

The repo-native receiver order after `OFP.CellA` is recorded in the one-field,
widened-receiver, and widened-thickness notes:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\quad+\quad
WRR.A
\quad+\quad
\bigl(WTC.A\text{ with }WTC.4\rightsquigarrow WTL.A\bigr)
\quad+\quad
(FCI.5f)
\Longrightarrow
EOC.A.
\tag{SLR.B00}
```

This note is not that route-native old-family recursion. It is the sufficient
retained-window admission theorem showing that, if the relevant receiver sets
stay inside one compact still-live collar, the three receiver inputs in that
queue can be supplied directly. The segment-thickness cell `OFP.CellA` reduces
the geometric part of the pre-`CSP.A` problem to one new halo derivative
carrier:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
\tag{SLR.B0}
```

The receiver side then splits into two independent closures and one return:

```math
\boxed{\text{Cell B: prove }\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)}
\Longrightarrow
\boxed{(OFP.10cb)}.
\tag{SLR.B1}
```

```math
\boxed{\text{Cell C: prove }
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I)
\text{ or }
\sup_I\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}<\infty}.
\tag{SLR.B2}
```

```math
\boxed{\text{Cell D: install }(EOC.27)}
\tag{SLR.B3}
```

On the retained still-live bypass, these recombine as

```math
(EOC.27)
+
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I)
+
(OFP.10cb)
\Longrightarrow
EOC.A.
\tag{SLR.B4}
```

After that, the installed lower-carrier return is

```math
EOC.A
\Longrightarrow
AFD.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A,
\tag{SLR.B5}
```

and the one-field / class-membership return is

```math
LCI.A+(FCI.5f)\Longrightarrow OFP.A,
\qquad
OFP.A+\mathrm{Pack\ preservation}+\mathrm{Part\ preservation}
\Longrightarrow CFI.A.
\tag{SLR.B6}
```

Finally, after `CFI.A`, the remaining global matrix work is the law / endpoint
proof matrix: `(Part,Dead)` is installed, while `(Pack,packing-detached)`,
`(Field,Jump)`, `tower-blown`, and the cross entries remain the explicit
endpoint-exclusion burdens.

## Segment Residue

### Lemma `SLR.A` (Cell B: the pulled-back `\nabla_xU_1` halo carrier is pre-loop integrable)

Under `(SLR.3)` and `(SLR.5)`,

```math
\mathfrak U_{2,\rho}^{halo,ctr}(t)
=
\sup_{a\in A_{\rho}^{halo,ctr}}
\big|\nabla_xU_1(X(a,t),t)\big|
=
\sup_{j,r,\theta}
\big|\nabla_xU_1(X(a^j+\theta r,t),t)\big|
\le M_{rec}
\qquad(t\in I).
\tag{SLR.6}
```

Consequently

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^\infty(I)\subset L^1(I).
\tag{SLR.7}
```

The same argument gives
`\mathfrak U_{1,\rho}^{halo,ctr}\in L^\infty(I)`.

### Proof

Every sample point in the definition of
`\mathfrak U_{2,\rho}^{halo,ctr}` belongs to `\mathcal H_\rho^{ctr}(t)`, hence
to `Q_t^{rec,+}` by `(SLR.3)`. Since
`\nabla_xU_1=\nabla^2u`, `(SLR.5)` gives `(SLR.6)`. The interval `I` is finite,
so `(SLR.7)` follows. The first-rung estimate is identical with one fewer
spatial derivative. ∎

### Corollary `SLR.A1` (The segment-thickness hypothesis closes)

Assume in addition

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty.
\tag{SLR.8}
```

Then the hypotheses of `OFP.C1e2` hold, hence

```math
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I)
\tag{SLR.9}
```

and the fixed segment-thickness condition

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg}
\qquad(t\in I)
\tag{SLR.10}
```

holds after choosing

```math
\delta_{seg}
:=
\rho\|\Gamma_\sharp\|_{L^\infty(I)}
+
\rho^2
\|\mathfrak L_{F,\rho}^{halo,ctr}\|_{L^\infty(I)}.
\tag{SLR.11}
```

This is exactly the segment-geometry hypothesis `(OFP.10cb)`.

### Proof

Lemma `SLR.A` supplies
`\mathfrak U_{1,\rho}^{halo,ctr}+\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)`.
Together with `(SLR.8)`, Lemma `OFP.C1e2` gives `(SLR.9)`. Lemma `OFP.C1e1`
then gives `(SLR.10)` with the choice `(SLR.11)`. ∎

## Thickened Collar Consumer

### Lemma `SLR.B` (Cell C: direct pre-`CSP.A` control of the thickened collar packet)

Under `(SLR.3)`--`(SLR.5)`,

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta_\ast}(t)
\le
C_{N,m,\lambda}\,V_{rec}\,M_{rec}^2
<
\infty.
\tag{SLR.12}
```

Consequently, by `(PC.14)` and finiteness of `I`,

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta_\ast}\in L^1(I).
\tag{SLR.13}
```

Thus the thickened consumer `(EOC.29)` and the stronger packet form `(EOC.36)`
both hold at the enlarged thickness `\delta_\ast=\delta+\delta_{seg}`.

### Proof

From `(PC.9)`,

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta_\ast}(t)
=
\sum_{j=0}^{m}\sum_{k=0}^{N}\lambda_k
\int
\big(\chi_{\rho,\psi,t}^{\delta_\ast}\big)^2
\big|\nabla^jU_{k+1}(x,t)\big|^2\,dx.
\tag{SLR.14}
```

On the support of the cutoff, `(SLR.3)` places `x` inside `Q_t^{rec,+}`. Since
`U_{k+1}=\nabla^{k+1}u` and `j\le m`, `k\le N`, each derivative
`\nabla^jU_{k+1}` is controlled by `M_{rec}`. The support volume is bounded by
`V_{rec}`. Summing the finitely many weighted terms gives `(SLR.12)`.
Estimate `(SLR.13)` follows from `(PC.14)`. ∎

## Widened Receiver Return

### Lemma `SLR.C` (Cell D: direct still-live admission of the widened receiver return)

Under `(SLR.3)`--`(SLR.5)`,

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta_{ret}}(t)
\le
C_{N,\lambda}\,V_{rec}\,M_{rec}^2
<
\infty.
\tag{SLR.15}
```

Equivalently, the widened receiver return `(EOC.27)` holds.

### Proof

The packet `\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta_{ret}}` is a finite sum
of cutoff-localized terms
`\int(\vartheta_{\rho,\psi,t}^{\delta_{ret}})^2|\nabla^\alpha U_q|^2`
with `0\le q\le N+4` and `0\le\alpha\le2`. On the support of
`\vartheta_{\rho,\psi,t}^{\delta_{ret}}`, `(SLR.3)` places the integrand inside
`Q_t^{rec,+}`. Since `q+\alpha\le N+6`, `(SLR.5)` controls every integrand by
`M_{rec}^2`; `(SLR.4)` controls the support volume. This proves `(SLR.15)`.
∎

## Assembly

### Theorem `SLR.D` (Cell D assembly: pre-`CSP.A` still-live receiver admission closes `EOC.A`)

Assume the common still-live receiver collar hypotheses `(SLR.3)`--`(SLR.5)`,
the transport-geometry hypotheses `(OFP.10bi)`, the pack and initial
deformation seeds `(SLR.8)`, and the initial pack-oscillation seed `(EOC.30)`.
Then

```math
EOC.A
\tag{SLR.16}
```

holds on `I`.

### Proof

Corollary `SLR.A1` supplies the segment-geometry hypothesis `(OFP.10cb)`.
Lemma `SLR.B` supplies `(EOC.36)`, hence `(EOC.29)`. Lemma `SLR.C` supplies
the widened receiver return `(EOC.27)`. With `(OFP.10bi)` and `(EOC.30)`,
Corollary `EOC.Ca` therefore applies and gives `EOC.A`. ∎

### Corollary `SLR.E` (Cells E--G: return to the lower-carrier and one-field chain)

With the companion non-oscillation inputs already listed in `AFD.A` and
`RCF.A`, Theorem `SLR.D` restores the installed lower-carrier chain

```math
EOC.A
\Longrightarrow
AFD.A
\Longrightarrow
AFD.B
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{SLR.17}
```

This is a conditional receiver-side return: the new contribution of this note
is the non-circular supply of the `EOC.A` receiver inputs on a retained
still-live window.

With the separate source ledger `(FCI.5f)`, this returns to one-field
preservation:

```math
LCI.A+(FCI.5f)\Longrightarrow OFP.A.
\tag{SLR.18}
```

Together with the already separated pack and participation preservation
branches, this returns to class-membership forward invariance:

```math
OFP.A
+
\mathrm{Pack\ preservation}
+
\mathrm{Part\ preservation}
\Longrightarrow
CFI.A.
\tag{SLR.19}
```

After `CFI.A`, the proof exits this receiver note and returns to the endpoint
matrix. The live matrix posture is:

```math
(Part,Dead)\ \text{installed},
\qquad
(Pack,packing\text{-}detached),\ (Field,Jump),\ tower\text{-}blown,
\text{ and cross entries open}.
\tag{SLR.20}
```

## Honest Boundary

This note does not prove that an arbitrary endpoint-approaching receiver collar
stays inside a compact still-live collar. That containment is exactly the
retained-window admission hypothesis `(SLR.3)`. If the common receiver set
leaves every still-live collar, the route has reached a class-exit /
manifestation issue, not a missing `CSP.A` estimate.

What this note does prove is narrower and terminal for the current pre-loop
receiver packet:

1. the new segment residue
   `\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)` is supplied directly by
   still-live smoothness on the label halo;
2. the thickened collar consumer is supplied directly as the packet bound
   `\sup_I\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}<\infty`;
3. the widened receiver return `(EOC.27)` is supplied directly on the same
   still-live collar;
4. the assembly through `EOC.Ca` closes `EOC.A` without reusing the
   route-native `LCI.A` / `CSP.A` fixed point.
