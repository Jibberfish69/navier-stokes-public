# MPP One-Field Forward-Preservation Theorem Program

## Status

Theorem-facing one-field supplier note.

Role: isolate the exact one-field burden behind
`CFI.B3` in
[mpp-class-membership-forward-invariance-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-forward-invariance-theorem-program.md).

This note does **not** widen the route. Its job is narrower:

```math
\boxed{
\text{turn the PDE-native finite-difference defect-energy law into a genuine forward-preservation theorem for one-field coherence.}
}
\tag{OFP.0}
```

## Purpose

On the forward-invariance route, the packing side already has a transport law
and the participation side already has the Law 2 tethering/no-drop spine.

The structural question isolated here is:

```math
\boxed{
\text{when one field starts coherent on a still-live seed window, what exact dynamic law keeps that coherence from collapsing into visible jump manifestation along the same-fluid evolution?}
}
\tag{OFP.1}
```

That is the exact content of `CFI.B3`.

## Installed Inputs

Use only the already-installed one-field surfaces.

1. exact one-field predicate:
   [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
2. PDE-native finite-difference tower law and defect-energy inequality:
   [mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md)
3. exact quantitative neighboring-response ledger:
   [mpp-quantitative-neighboring-response-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-quantitative-neighboring-response-witness-theorem.md)
4. transported jet-to-difference bridge:
   [mpp-jet-to-finite-difference-bridge-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-jet-to-finite-difference-bridge-theorem.md)
5. increment stability:
   [mpp-increment-stability-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-increment-stability-lemma.md)

## Seed Predicate

The exact one-field seed statement is:

```math
\mathrm{Field}_{N,r_0,Q_0}(u,p).
\tag{OFP.2}
```

Equivalently, on the seed still-live window `Q_0`:

1. the finite-difference tower law holds through depth `N`;
2. there is one positive coherence scale `r_0`;
3. the coherence modulus stays finite there.

The target is not to re-prove that seed statement. The target is to propagate a
positive coherence regime along one same-fluid evolved still-live family.

## Exact Theorem Target

### Theorem `OFP.A` (One-field forward preservation)

Fix a same-fluid evolved still-live family `\{Q_s\}_{0\le s\le \sigma}` in the
sense of `CFI.B0`.

Assume:

1. `\mathrm{Field}_{N,r_0,Q_0}(u,p)` on the seed window;
2. the finite-difference defect-energy packet laws remain available on the
   transported collars issued from the seed carrier;
3. no visible jump manifestation occurs on the family.

Then there exist `r_{N,\sigma}>0` and `C_{N,\sigma}<\infty` such that

```math
\mathrm{Field}^{\le C_{N,\sigma}}_{N,r_{N,\sigma},Q_s}(u,p)
\qquad
\text{for every }0\le s\le \sigma.
\tag{OFP.3}
```

This is exactly the strengthened content needed by `CFI.B3`.

## License Boundary

This note records a direct forward-preservation route for one-field coherence.
It does **not** yet prove that the collar / lower-carrier supplier chain is
equivalent to the full one-field predicate on a still-live family.

More exactly, the current route license is only:

```math
\text{fixed-family package}
\;+\;
\text{collar / lower-carrier package}
\Longrightarrow
\text{surviving positive coherence regime.}
\tag{OFP.3a}
```

No unconditional theorem currently on disk proves the full converse bridge

```math
\text{surviving one-field coherence regime}
\Longrightarrow
\text{collar packet / lower-carrier closure.}
\tag{OFP.3b}
```

The narrower conditional lower-carrier converse is now recorded in
[mpp-collar-to-jump-pivot-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-to-jump-pivot-note.md):

```math
ACT.KX
+
\mathrm{Field}^{\le C}\text{ on the synchronized fixed cover}
\Longrightarrow
\Gamma^{low}_{N,m,\rho,\psi}\in L^1(I).
\tag{OFP.3b1}
```

Here `ACT.KX` supplies the raw anchored-center ledger, while
`\mathrm{Field}^{\le C}` supplies only the fixed-cover oscillation. The cover
labels are synchronized by `CJ.A_low.6`, so the anchor, `LCI` cover, and `Field`
chains stay on one same-fluid family.

So if the collar receiver branch stalls, the honest conclusion is that this
installed no-jump proof route is blocked there. It is not yet licensed to read
that blockage as jump manifestation unless the hypotheses of the conditional
converse above are actually installed and then contradicted. The exact
converse-pivot theorem surface is the collar-to-jump note.

The current compactness/scaling/circularity audit for the `OFP.A` seam with the
direct transported-center package is recorded in
[mpp-ofp-dtc-compactness-scaling-circularity-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ofp-dtc-compactness-scaling-circularity-audit-note.md).
That note keeps the no-visible-jump hypothesis as a branch condition only: it
cannot be replaced by the endpoint theorem that `CFI.A` is meant to feed.

## Current Route Position

In the conditional completion packet
[mpp-act-kx-conditional-route-completion-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-act-kx-conditional-route-completion-packet.md),
this one-field theorem is consumed only through the licensed chain

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A.
\tag{OFP.3c}
```

The upstream receiver/source suppliers are kept separate:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A,
\qquad
FCC.C1\to FSCR.C\to FPCR.C\to FCI.5f.
\tag{OFP.3d}
```

Endpoint closure is a separate packet:

```math
DTC\text{-to-TowerBound}
+
END.Exh
+
END.Cross
+
END.Pack
+
END.Field
\Longrightarrow
\mathsf{End}_{NS}.
\tag{OFP.3e}
```

Thus the terminal use of this note is

```math
CFI.A + \mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{OFP.3f}
```

TPS / `SG.4`, exact-potential, Hodge / normal-covector, and Euclidean
strict-shadow remain downstream context or export branches; they are not active
inputs to `(OFP.3c)`. This note's terminal use remains conditional lane closure
under `RSCB.NKF`, bounded pack gauge, the finite required parameter set, and the
accepted endpoint certificate maps; it is not an unconditional full claim.

## Exact Proof Spine

The route-native proof spine is:

### Lemma `OFP.B1` (Transported increment reduction)

Use the exact bridge

```math
\Delta_r^\Phi U_k(a,t)
=
\delta_{h(a,r,t)}U_k(\Phi(a,t),t)
\tag{OFP.4}
```

to express one-field coherence on the same-fluid family through the true
transported separations carried by the seed label collar.

### Lemma `OFP.B2` (Reference-increment comparison)

Use increment stability to compare the true transported separation `h(a,r,t)`
with the linearized separation `F(a,t)r`:

```math
\big|
\delta_{h(a,r,t)}U_k
-
\delta_{F(a,t)r}U_k
\big|
\le
C_{OFP,inc}
|\varepsilon_h(a,r,t)|\,
\text{next-rung segment amplitude}.
\tag{OFP.5}
```

So packing mismatch feeds into one-field defect only through a controlled
geometric error ledger.

### Lemma `OFP.B3` (Localized defect-energy propagation)

For each cutoff `\phi`, increment `h`, and depth `N`, the exact quantitative
response identity gives

```math
E_N(h,t_2;\psi)
\le
E_N(h,t_1;\psi)
+
\mathfrak N_{N,h,\psi}[t_1,t_2].
\tag{OFP.6}
```

So packet escalation is impossible without cumulative neighboring response on
the same transported packet.

### Lemma `OFP.B4` (From defect-energy control to coherence-modulus control)

Use the finite-difference/jet bridge and one-rung-higher control to upgrade the
packet-level defect-energy control from `OFP.B3` into a genuine bounded
coherence modulus at a positive surviving scale:

```math
E_N\text{-control}
\;+\;
\text{next-rung segment control}
\Longrightarrow
\mathfrak C_{N,r_{N,\sigma},Q_s}(t)\le C_{N,\sigma}.
\tag{OFP.7}
```

This is the exact conversion step from defect energy to the `Field` predicate.

## Supplier Reduction Of `OFP.B4`

The exact point of `OFP.B4` is that it is **not** an isolated new coercive
miracle. On the existing packet route, it already reduces to two concrete
supplier debts.

### Proposition `OFP.C1` (Finite-net supplier for the reference side)

Retain a scale window `0<|r|\le \rho`, a packet `\psi`, and an interval `I`.
If the fixed finite Eulerian packet family satisfies

```math
\sup_{t\in I}
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)

<
\infty,
\tag{OFP.8a}
```

and the common collar envelope is finite on `I`,

```math
\sup_{t\in I}
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
<
\infty,
\tag{OFP.8b}
```

then the finite-net discharge theorem gives

```math
\sup_{t\in I}
\widehat{\mathcal E}^{Eul,ref}_{N,\rho,\psi}(t)
<
\infty.
\tag{OFP.8c}
```

So the reference-increment side of one-field coherence is supplied by the fixed
finite family plus the common collar envelope.

### Proposition `OFP.C2` (Collar supplier for the next-rung side)

If the collar Sobolev packet satisfies

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
<
\infty,
\tag{OFP.9a}
```

then the packet-collar note and the fixed-family/collar propagation note give

```math
\sup_{t\in I}
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
<
\infty,
\qquad
\sup_{t\in I}
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)
<
\infty,
\tag{OFP.9b}
```

and therefore

```math
\sup_{t\in I}
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
<
\infty.
\tag{OFP.9c}
```

So the next-rung/coherence-conversion side is supplied by the collar Sobolev
packet.

### Corollary `OFP.C3` (Exact reduction of `OFP.B4`)

Assume:

1. the fixed finite Eulerian packet family is propagated on `I`;
2. the collar Sobolev packet is propagated on `I`;
3. the transported jet-to-difference bridge and increment-stability comparison
   remain available on the same-fluid packet family.

Then the packet route supplies both:

```math
\text{bounded reference-increment defect control}
\tag{OFP.10a}
```

and

```math
\text{bounded next-rung collar / segment control.}
\tag{OFP.10b}
```

That is exactly the data `OFP.B4` asked for in compressed language. So the
honest form of the one-field wall is:

```math
\boxed{
\text{propagate the fixed finite packet family and the collar Sobolev packet so that } \inf_{t\in I}\mathcal C_{\mathrm{coh}}(t)>0.
}
\tag{OFP.10}
```

Equivalently: `OFP.B4` is reduced to the paired interval-propagation burdens
already isolated in
[mpp-fixed-family-and-collar-interval-propagation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md).

For a compact theorem-facing compression of the one-field chain
`OFP.A <- OFP.B4 <- OFP.C1/OFP.C2/OFP.C3`, see
[mpp-one-field-forward-preservation-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-reduction-note.md).

### Corollary `OFP.C3a` (A genuine one-field coherence regime implies the enlarged-ball oscillation supplier)

Retain the transported-center family `c_j(t)=\Phi(a^j,t)` from the lower-carrier
note and the enlarged oscillation radius

```math
R_\delta^{osc}:=r_\delta+\frac{11}{2}\delta.
\tag{OFP.10ba}
```

Assume that for a.e. `t\in I`,

```math
B(c_j(t),2R_\delta^{osc})\subset Q_t
\qquad
(1\le j\le J),
\tag{OFP.10bb}
```

and that the surviving coherence scale from `OFP.B4` obeys

```math
2R_\delta^{osc}\le r_{N,\sigma}.
\tag{OFP.10bc}
```

Then the exact one-field modulus on `Q_t` controls the enlarged-ball
oscillation coefficient from `LCI.B2f2b`:

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
\le
2R_\delta^{osc}\,
\mathfrak C_{N,r_{N,\sigma},Q_s}(t).
\tag{OFP.10bd}
```

### Proof

Fix `t\in I`, `j\in\{1,\dots,J\}`, and `x\in B(c_j(t),2R_\delta^{osc})`. Set

```math
h:=x-c_j(t).
\tag{OFP.10be}
```

Then `|h|\le 2R_\delta^{osc}\le r_{N,\sigma}` by `(OFP.10bc)`, and
`c_j(t),x\in Q_t` by `(OFP.10bb)`. Therefore the exact one-field modulus
`(CMW.11)` gives, for every `0\le q\le m\le N`,

```math
|U_q(x,t)-U_q(c_j(t),t)|
\le
|h|\,\mathfrak C_{N,r_{N,\sigma},Q_s}(t)
\le
2R_\delta^{osc}\,\mathfrak C_{N,r_{N,\sigma},Q_s}(t).
\tag{OFP.10bf}
```

Taking the supremum over `x\in B(c_j(t),2R_\delta^{osc})`, summing over
`q=0,\dots,m`, and then taking the supremum over `j=1,\dots,J` yields
`(OFP.10bd)`. ∎

So once a genuine positive coherence regime is already propagated, the
enlarged-ball oscillation supplier needed by `LCI.B2f2c` is automatic.

### Obstruction `OFP.C3b` (Importing `OFP.C3a` back into `LCI.B2f2c` is circular on the current route)

Corollary `OFP.C3a` cannot be used as the current proof of `LCI.B2f2c`.

Reason: the coherence regime it spends is exactly the output of `OFP.B4`, while
the present reduction of `OFP.B4` uses the collar supplier `OFP.C2`, and
`OFP.C2` already consumes `CSP.A`. But `CSP.A` is still waiting on the
receiver-side lower-carrier package that includes `LCI.B2f2c`.

So on the current route that older standalone supplier framing is no longer the
honest sharp wall. Once the widened receiver-side packet `(EOC.27)` is
granted, Corollary `EOC.Ca` shows that the enlarged-ball oscillation theorem is
already downstream of `CSP.A`
instantiated at thickness `\delta+\delta_{seg}`. So the live route-native
collar-side wall is not “derive
`\Omega_{N,m,\rho,\psi}^{osc,\sharp}` from scratch before `CSP.A`,” but the
thicker collar packet together with that widened-return input. A direct
packet/reference derivation remains only as a stronger non-circular bypass.

### Candidate Theorem `OFP.C1a` (Non-circular packet-to-enlarged-ball coherence supplier)

The stronger bypass burden is therefore:

```math
\boxed{
\text{derive }\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I)
\text{ on }B(\Phi(a^j,t),2R_\delta^{osc})
\text{ directly from pre-`CSP.A` packet/reference data.}
}
\tag{OFP.10bg}
```

The exact common-consumer form of that stronger bypass is now isolated in
[mpp-lci-a-pre-csp-common-consumer-bypass-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-common-consumer-bypass-note.md):
once the widened receiver-side return is kept separate, the remaining
non-circular theorem is direct pre-`CSP.A` control of the common thickened
collar consumer, not a second independent halo/increment theorem; and in
packet-theorem form that stronger input is just the widened-thickness instance
of the old common-object collar packet target `FCI.B`, not a new theorem
family. The companion widened-thickness collar wall note sharpens this one step
further: the concrete thicker consumer `CSP.A_{\delta+\delta_{seg}}` reopens
only the old collar wall `CSP.8`, with thickness replaced by
`\delta+\delta_{seg}`; inside that widened receiver package, the only
thickness-sensitive slot is the thicker lower same-fluid carrier ledger, and
the companion widened-thickness lower-carrier note reduces that slot to
`LCI.A` at the thicker radius.

Together with the widened-receiver return note for `(EOC.27)`, this means the
route-native enlarged-ball receiver is now fully expressed in old `LCI`-family
theorems. The companion fixed-point note records the exact endpoint of that
compression: on the installed route-native branch it has terminated at an
`EOC` / `LCI` fixed point, so any further progress now needs a genuinely
non-circular supplier move rather than another widened-family identification.

More concretely, the needed theorem target takes as input:

1. bounded pack-side gauge on the packet label halo;
2. a packet-local reference-increment defect control at scales comparable to
   `R_\delta^{osc}`;
3. the matching local next-rung segment control from the reference side;

and conclude the enlarged-ball oscillation bound from `LCI.B2f2b` without
passing through `OFP.C2` or the full `Field` theorem.

### Proposition `OFP.C1b` (Centerwise transported defect control implies enlarged-ball oscillation)

Let

```math
M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)},
\qquad
\rho_\delta^{osc}:=2M_\sharp R_\delta^{osc}.
\tag{OFP.10bh}
```

Assume that for every `j` and a.e. `t\in I`,

```math
B(c_j(t),2R_\delta^{osc})
\subset
\Phi_t\big(B(a^j,\rho_\delta^{osc})\cap A_\sharp\big).
\tag{OFP.10bi}
```

Define the centerwise transported defect density

```math
\mathfrak D_{N,\rho_\delta^{osc}}^{ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho_\delta^{osc}}
\frac{1}{|r|^2}
\sum_{k=0}^{N}\lambda_k
\big|
\Delta_r^\Phi U_k(a^j,t)
\big|^2.
\tag{OFP.10bj}
```

Then

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
\le
C_{N,m,\lambda}\,
\rho_\delta^{osc}\,
\mathfrak D_{N,\rho_\delta^{osc}}^{ctr}(t)^{1/2}.
\tag{OFP.10bk}
```

### Proof

Fix `t\in I`, `j\in\{1,\dots,J\}`, and `x\in B(c_j(t),2R_\delta^{osc})`. By
`(OFP.10bi)` there exists `r_x` with `|r_x|\le \rho_\delta^{osc}` and

```math
x=\Phi(a^j+r_x,t).
\tag{OFP.10bl}
```

Therefore, by the exact transported bridge `(JFD.8)`,

```math
U_q(x,t)-U_q(c_j(t),t)
=
\Delta_{r_x}^\Phi U_q(a^j,t).
\tag{OFP.10bm}
```

Let

```math
\lambda_*:=\min_{0\le q\le m}\lambda_q>0.
\tag{OFP.10bn}
```

From `(OFP.10bj)` we obtain, for every `0\le q\le m`,

```math
\big|
\Delta_{r_x}^\Phi U_q(a^j,t)
\big|
\le
\lambda_*^{-1/2}\,
|r_x|\,
\mathfrak D_{N,\rho_\delta^{osc}}^{ctr}(t)^{1/2}.
\tag{OFP.10bo}
```

Using `|r_x|\le \rho_\delta^{osc}`, summing `(OFP.10bo)` over `q=0,\dots,m`,
and then taking the supremum over `x` and `j` yields `(OFP.10bk)`. ∎

So the enlarged-ball oscillation supplier is already downstream of one exact
pointwise transported-defect object.

### Corollary `OFP.C1c` (Increment stability reduces the centerwise transported defect to reference and segment data)

For a general scale window `\rho>0`, write

```math
\mathfrak D_{N,\rho}^{ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\frac{1}{|r|^2}
\sum_{k=0}^{N}\lambda_k
\big|
\Delta_r^\Phi U_k(a^j,t)
\big|^2.
\tag{OFP.10bp0}
```

Define the centerwise reference-increment density

```math
\mathfrak D_{N,\rho}^{ref,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\frac{1}{|r|^2}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_{F(a^j,t)r}U_k(c_j(t),t)
\big|^2,
\tag{OFP.10bp}
```

the pointwise packing-mismatch coefficient

```math
P_{F,\rho}^{ctr,\sharp}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\frac{
\big|
\varepsilon_h(a^j,r,t)
\big|^2
}{|r|^2},
\tag{OFP.10bq}
```

and the centerwise next-rung segment density

```math
\mathfrak M_{N+1,\rho}^{seg,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\int_0^1
\sum_{k=0}^{N}\lambda_k
\big|
U_{k+1}\big(
c_j(t)+F(a^j,t)r+\theta\varepsilon_h(a^j,r,t),t
\big)
\big|^2\,d\theta.
\tag{OFP.10br}
```

Then the exact increment-stability identity `(IS.5)` gives

```math
\mathfrak D_{N,\rho}^{ctr}(t)
\le
2\,\mathfrak D_{N,\rho}^{ref,ctr}(t)
+
2\,P_{F,\rho}^{ctr,\sharp}(t)\,
\mathfrak M_{N+1,\rho}^{seg,ctr}(t).
\tag{OFP.10bs}
```

### Proof

Fix `j` and `r`. Rewrite `(IS.5)` at `a=a^j`, square, sum in `k`, divide by
`|r|^2`, and use Jensen in the segment parameter. This yields the pointwise
estimate

```math
\frac{1}{|r|^2}
\sum_{k=0}^{N}\lambda_k
\big|
\Delta_r^\Phi U_k(a^j,t)
\big|^2
\le
2\,
\frac{1}{|r|^2}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_{F(a^j,t)r}U_k(c_j(t),t)
\big|^2
+
2\,
\frac{
\big|
\varepsilon_h(a^j,r,t)
\big|^2
}{|r|^2}
\int_0^1
\sum_{k=0}^{N}\lambda_k
\big|
U_{k+1}\big(
c_j(t)+F(a^j,t)r+\theta\varepsilon_h(a^j,r,t),t
\big)
\big|^2\,d\theta.
\tag{OFP.10bt}
```

Taking the supremum over `j` and `0<|r|\le \rho` gives `(OFP.10bs)`. ∎

So the non-circular enlarged-ball oscillation theorem has now been reduced to
three exact centerwise suppliers:

1. the reference-increment density `\mathfrak D_{N,\rho}^{ref,ctr}`;
2. the pointwise packing-mismatch coefficient `P_{F,\rho}^{ctr,\sharp}`;
3. the centerwise next-rung segment density `\mathfrak M_{N+1,\rho}^{seg,ctr}`.

### Lemma `OFP.C1d` (The centerwise reference density is a pointwise Eulerian increment envelope)

For `\Lambda>0`, define the pointwise Eulerian increment envelope at the
transported centers by

```math
\mathfrak e_{N,\Lambda}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le \Lambda}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|^2.
\tag{OFP.10bu}
```

Then

```math
\mathfrak D_{N,\rho}^{ref,ctr}(t)
\le
\rho^{-2}\,
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t).
\tag{OFP.10bv}
```

### Proof

Fix `j` and `0<|r|\le \rho`. Since
`|F(a^j,t)r|\le \Gamma_\sharp(t)\,|r|\le \Gamma_\sharp(t)\rho`, the increment
`F(a^j,t)r` belongs to the Eulerian ball in `(OFP.10bu)`. Therefore

```math
\sum_{k=0}^{N}\lambda_k
\big|
\delta_{F(a^j,t)r}U_k(c_j(t),t)
\big|^2
\le
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t).
\tag{OFP.10bw}
```

Divide by `|r|^2`, use `|r|^{-2}\le \rho^{-2}` for `0<|r|\le \rho`, then take
the supremum over `j` and `r` to obtain `(OFP.10bv)`. ∎

### Lemma `OFP.C1e` (The pointwise packing-mismatch coefficient is exactly a centerwise pack-oscillation modulus)

Define the centerwise pack-oscillation modulus

```math
\mathfrak O_{F,\rho}^{ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\int_0^1
\big|
F(a^j+\theta r,t)-F(a^j,t)
\big|^2\,d\theta.
\tag{OFP.10bx}
```

Then

```math
P_{F,\rho}^{ctr,\sharp}(t)
\le
\mathfrak O_{F,\rho}^{ctr}(t).
\tag{OFP.10by}
```

### Proof

The exact Taylor remainder identity for the transported separation is

```math
\varepsilon_h(a,r,t)
=
\int_0^1
\big(
F(a+\theta r,t)-F(a,t)
\big)r\,d\theta.
\tag{OFP.10bz}
```

Applying Cauchy--Schwarz in `\theta` gives

```math
\frac{|\varepsilon_h(a,r,t)|^2}{|r|^2}
\le
\int_0^1
\big|
F(a+\theta r,t)-F(a,t)
\big|^2\,d\theta.
\tag{OFP.10ca}
```

Set `a=a^j` and take the supremum over `j` and `0<|r|\le \rho` to obtain
`(OFP.10by)`. ∎

### Lemma `OFP.C1e1` (Pre-`CSP.A` segment-thickness control from label-halo deformation regularity)

Define the center label halo

```math
A_{\rho}^{halo,ctr}
:=
\left\{
a^j+\theta r:
1\le j\le J,\ 0<|r|\le \rho,\ 0\le\theta\le1
\right\}.
\tag{OFP.10bya0}
```

Define the label-halo deformation-gradient envelope

```math
\mathfrak L_{F,\rho}^{halo,ctr}(t)
:=
\sup_{a\in A_{\rho}^{halo,ctr}}
\big|\nabla_aF(a,t)\big|
=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\sup_{0\le \theta\le 1}
\big|
\nabla_a F(a^j+\theta r,t)
\big|.
\tag{OFP.10bya}
```

Then for a.e. `t\in I`,

```math
P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\rho\,\mathfrak L_{F,\rho}^{halo,ctr}(t).
\tag{OFP.10byb}
```

Consequently,

```math
\Gamma_\sharp(t)\rho
+
\rho\,P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\rho\,\Gamma_\sharp(t)
+
\rho^2\,\mathfrak L_{F,\rho}^{halo,ctr}(t).
\tag{OFP.10byc}
```

Thus the fixed-thickness segment condition `(OFP.10cb)` is supplied before
using `CSP.A` whenever

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I),
\tag{OFP.10byd}
```

by taking

```math
\delta_{seg}
:=
\rho\|\Gamma_\sharp\|_{L^\infty(I)}
+
\rho^2\|\mathfrak L_{F,\rho}^{halo,ctr}\|_{L^\infty(I)}.
\tag{OFP.10bye}
```

With only
`\mathfrak L_{F,\rho}^{halo,ctr}\in L^2(I)`, one still has the integrated
pre-loop estimate

```math
\int_I
\left(
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\right)^2\,dt
\le
2\rho^2 |I|\|\Gamma_\sharp\|_{L^\infty(I)}^2
+
2\rho^4
\|\mathfrak L_{F,\rho}^{halo,ctr}\|_{L^2(I)}^2.
\tag{OFP.10byf}
```

The pointwise `L^\infty_t` form `(OFP.10byd)` is the one that directly
instantiates the existing fixed-thickness consumer `CSP.A_{\delta+\delta_{seg}}`.
The `L^2_t` form `(OFP.10byf)` is an adjacent integrated-collar variant; it does
not by itself choose one fixed `\delta_{seg}` for `(OFP.10cb)`.

### Proof

For `0<|r|\le\rho`,

```math
F(a^j+\theta r,t)-F(a^j,t)
=
\int_0^\theta
\nabla_aF(a^j+s r,t)r\,ds,
\tag{OFP.10byg}
```

so

```math
\big|F(a^j+\theta r,t)-F(a^j,t)\big|
\le
\rho\,\mathfrak L_{F,\rho}^{halo,ctr}(t).
\tag{OFP.10byh}
```

Insert this bound into `(OFP.10ca)` and take the supremum in `j,r` to obtain
`(OFP.10byb)`. The segment-thickness bounds `(OFP.10byc)`-`(OFP.10byf)` then
follow by unpacking the same supremum bound into the listed thickness ledgers. ∎

### Lemma `OFP.C1e2` (Route-native supplier for the label-halo deformation-gradient envelope)

Define

```math
\mathfrak U_{1,\rho}^{halo,ctr}(t)
:=
\sup_{a\in A_{\rho}^{halo,ctr}}
\big|U_1(X(a,t),t)\big|
=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\sup_{0\le\theta\le1}
\big|U_1(X(a^j+\theta r,t),t)\big|,
\tag{OFP.10byi}
```

and

```math
\mathfrak U_{2,\rho}^{halo,ctr}(t)
:=
\sup_{a\in A_{\rho}^{halo,ctr}}
\big|\nabla_x U_1(X(a,t),t)\big|
=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\sup_{0\le\theta\le1}
\big|\nabla_x U_1(X(a^j+\theta r,t),t)\big|.
\tag{OFP.10byj}
```

If

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak U_{1,\rho}^{halo,ctr}
+
\mathfrak U_{2,\rho}^{halo,ctr}
\in L^1(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty,
\tag{OFP.10byk}
```

then

```math
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I).
\tag{OFP.10byl}
```

Consequently `(OFP.10cb)` holds with the finite pre-`CSP.A` thickness
`(OFP.10bye)`.

### Proof

The deformation gradient satisfies

```math
\partial_t F(a,t)=U_1(X(a,t),t)F(a,t).
\tag{OFP.10bym}
```

Differentiating in label variables gives

```math
\partial_t\nabla_a F
=
\big(\nabla_xU_1\big)(X(a,t),t)[F,F]
+
U_1(X(a,t),t)\nabla_aF.
\tag{OFP.10byn}
```

Taking the label-halo supremum and using `|F|\le\Gamma_\sharp` yields the Dini
inequality

```math
D^+\mathfrak L_{F,\rho}^{halo,ctr}(t)
\le
C\,\mathfrak U_{1,\rho}^{halo,ctr}(t)
\mathfrak L_{F,\rho}^{halo,ctr}(t)
+
C\,\Gamma_\sharp(t)^2
\mathfrak U_{2,\rho}^{halo,ctr}(t).
\tag{OFP.10byo}
```

Gronwall and `(OFP.10byk)` imply `(OFP.10byl)`. Lemma `OFP.C1e1` then gives
the stated segment-thickness condition. ∎

### Theorem `OFP.CellA` (Pre-`CSP.A` segment-thickness lemma)

Assume

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak U_{1,\rho}^{halo,ctr}
+
\mathfrak U_{2,\rho}^{halo,ctr}
\in L^1(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty.
\tag{OFP.10byoA}
```

Then there is a finite fixed segment thickness

```math
\delta_{seg}
=
\rho\|\Gamma_\sharp\|_{L^\infty(I)}
+
\rho^2\|\mathfrak L_{F,\rho}^{halo,ctr}\|_{L^\infty(I)}
\tag{OFP.10byoB}
```

such that for a.e. `t\in I`,

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg}.
\tag{OFP.10byoC}
```

Equivalently, `(OFP.10cb)` holds before `CSP.A` is used.

### Proof

Lemma `OFP.C1e2` gives
`\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I)` from `(OFP.10byoA)`.
Lemma `OFP.C1e1` then gives

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\rho\Gamma_\sharp(t)
+
\rho^2\mathfrak L_{F,\rho}^{halo,ctr}(t),
\tag{OFP.10byoD}
```

and the right-hand side is bounded by `(OFP.10byoB)`. ∎

### Corollary `OFP.C1e3` (The sufficient pre-loop segment-thickness target)

The route-native pre-loop theorem needed to avoid spending `EOC.C` as an input
is exactly `OFP.CellA`:

```math
\boxed{
\Gamma_\sharp\in L^\infty(I)
\quad+\quad
\mathfrak U_{1,\rho}^{halo,ctr}
+
\mathfrak U_{2,\rho}^{halo,ctr}
\in L^1(I)
\quad+\quad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty
}
\Longrightarrow
\boxed{
\Gamma_\sharp\rho+\rho P_{F,\rho}^{ctr,\sharp\,1/2}
\le
\delta_{seg}
\text{ before }CSP.A.
}
\tag{OFP.10byp}
```

This bypasses the circular route through the propagated pack-oscillation
modulus `\mathfrak O_{F,\rho}^{ctr}` under the stated supplier hypotheses. It
conditionally controls the transported segment thickness directly from
label-halo deformation regularity.

This proves only the segment-geometry hypothesis `(OFP.10cb)`. It does **not**
prove the thickened collar consumer

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I),
\tag{OFP.10bypa}
```

nor the stronger packet form

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}(t)<\infty.
\tag{OFP.10bypb}
```

Those remain separate receiver-side obligations, along with the widened
receiver return `(EOC.27)`.

Thus after `OFP.CellA` the repo-native receiver proof splits exactly as
follows:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\Longrightarrow
(OFP.10cb),
\tag{OFP.10bypc}
```

separately

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I)
\quad\text{or}\quad
\sup_I\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}<\infty,
\tag{OFP.10bypd}
```

and separately

```math
(EOC.27).
\tag{OFP.10bype}
```

The third input is not a new widened-return family: the widened receiver return
note identifies `(EOC.27)` with `WRR.A`, i.e. the enlarged-parameter `LCI.B`
instance

```math
N\mapsto N+4,
\qquad
m\mapsto N+4,
\qquad
\delta\mapsto\delta+5\Lambda_{\delta,\rho}^{halo}.
\tag{OFP.10bype1}
```

The second input is not a new thickness family either. With
`\delta_\ast:=\delta+\delta_{seg}`, the widened-thickness collar wall note
records

```math
(WTC.1)+(FCI.5f)\Longrightarrow CSP.A_{\delta_\ast},
\tag{OFP.10bype2}
```

and the only thickness-sensitive entry of `(WTC.1)` is

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I),
\tag{OFP.10bype3}
```

which the widened-thickness lower-carrier note identifies as
`LCI.A_{\delta_\ast}` through `WTL.A`.

The pulled-back halo-gradient carrier in the first slot is now closed by the
companion halo-gradient carrier return theorem `U2H.A` once the widened return
and anchored-center ledger are granted:

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
\tag{OFP.10bype3a}
```

Therefore the route-native order after `OFP.CellA` is:

```math
\bigl((EOC.27)+\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)\bigr)
\quad+\quad
WRR.A
\quad+\quad
\bigl(WTC.A\text{ with }WTC.4\rightsquigarrow WTL.A\bigr)
\quad+\quad
(FCI.5f)
\Longrightarrow
EOC.A.
\tag{OFP.10bype4}
```

The companion still-live receiver-admission note supplies these same inputs
directly on retained still-live receiver windows through `SLR.A`, `SLR.B`, and
`SLR.C`. That is a sufficient bypass of the route-native fixed point, not a
replacement for the repo-native `WRR` / `WTC` / `WTL` sequence.

### Obstruction `OFP.C1e4` (The new pre-loop residue is the pulled-back `\nabla_xU_1` halo carrier)

The packet `(OFP.10byp)` is strictly narrower than the old enlarged-ball /
halo-shell loop, but it is not already closed by the installed first-rung halo
packet.

The existing halo carrier used by `VCB.A` and `HSP.A` is the first-rung object

```math
\mathfrak U_{1,\rho}^{halo,ctr}(t)
=
\sup_{j,r,\theta}
\big|U_1(X(a^j+\theta r,t),t)\big|.
\tag{OFP.10byq}
```

The pre-loop deformation-gradient supplier needs in addition the pulled-back
first spatial derivative of that first-rung carrier:

```math
\mathfrak U_{2,\rho}^{halo,ctr}(t)
=
\sup_{j,r,\theta}
\big|\nabla_xU_1(X(a^j+\theta r,t),t)\big|.
\tag{OFP.10byr}
```

On the route-native halo-shell stack alone, no theorem supplies

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\tag{OFP.10bys}
```

before the collar loop. The existing lower-order halo-shell packet controls a
first-rung `U_1` shell carrier. The occurrences of `U_2` inside the halo-shell
energy law appear as higher-order energy summands, not as the pulled-back
`L^1_tL^\infty` `\nabla_xU_1` halo carrier `(OFP.10bys)`.

Therefore the direct pre-`CSP.A` segment-thickness route terminates, before one
spends the thickened collar consumer, at the halo-gradient carrier theorem:

```math
\boxed{
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\text{ on the same-fluid label halo, before }CSP.A_{\delta+\delta_{seg}}
}.
\tag{OFP.10byt}
```

The companion halo-gradient carrier return note
[mpp-lci-a-halo-gradient-carrier-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-gradient-carrier-return-note.md)
now closes this residue from the widened receiver return and anchored-center
ledger:

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
\tag{OFP.10byt0}
```

So the non-circular segment-thickness route is now:

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\Longrightarrow
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I)
\Longrightarrow
\text{segment geometry }(OFP.10cb),
\tag{OFP.10byu}
```

while the thickened collar consumer and the widened receiver return remain
separate inputs for `EOC.A`.

### Corollary `OFP.C1e4a` (Widened receiver return closes the halo-gradient residue)

Assume `2\le m\le N`, the widened receiver return `(EOC.27)`, and the
anchored-center ledger

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I).
\tag{OFP.10byu0}
```

Then `U2H.A` gives

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
\tag{OFP.10byu1}
```

Consequently, with the already-separated hypotheses
`\Gamma_\sharp\in L^\infty(I)`,
`\mathfrak U_{1,\rho}^{halo,ctr}\in L^1(I)`, and
`\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty`, Lemmas `OFP.C1e1`--`OFP.C1e2`
give the fixed segment-thickness condition `(OFP.10cb)`.

Thus the current target closes as

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\quad\text{plus the first-rung and initial deformation-gradient inputs above}
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\Longrightarrow
(OFP.10cb).
\tag{OFP.10byu2}
```

The remaining receiver-side burden after this corollary is the thickened collar
consumer `CSP.A_{\delta+\delta_{seg}}`, equivalently `WTC.A` with `(FCI.5f)`
separate and `WTC.4 -> WTL.A -> LCI.A_{\delta+\delta_{seg}}`.

More explicitly, after `U2H.A` the next concrete receiver-side cell is the
thickness-sensitive lower-carrier target recorded as `WTL.C`:

```math
\boxed{
\Gamma_{N,m,\rho,\psi}^{low,\delta+\delta_{seg}}\in L^1(I).
}
\tag{OFP.10byu3}
```

The source-side frozen-family burden `(FCI.5f)` remains parallel. With the old
pack-gauge and transport-bridge entries in `(WTC.1)`, the recombination is

```math
WTL.C+(FCI.5f)
\Longrightarrow
CSP.A_{\delta+\delta_{seg}},
\tag{OFP.10byu4}
```

and then

```math
CSP.A_{\delta+\delta_{seg}}
+
(EOC.27)
+
(OFP.10cb)
\Longrightarrow
EOC.A.
\tag{OFP.10byu5}
```

### Corollary `OFP.C1e5` (Still-live receiver admission closes the segment residue)

The companion receiver-admission note
[mpp-lci-a-pre-csp-still-live-receiver-admission-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-still-live-receiver-admission-note.md)
proves the exact missing supplier `(OFP.10bys)` on any retained window whose
label halo lies inside one compact still-live receiver collar.

In that notation,

```math
\mathcal H_{\rho}^{ctr}(t)
\subset Q_t^{rec,+}
\qquad(t\in I)
\tag{OFP.10byv}
```

and the still-live classical bound on `Q^{rec,+}` imply

```math
\mathfrak U_{2,\rho}^{halo,ctr}
\in L^\infty(I)
\subset L^1(I).
\tag{OFP.10byw}
```

Therefore, with
`\Gamma_\sharp\in L^\infty(I)` and
`\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty`, Lemmas `OFP.C1e1`--`OFP.C1e2`
give the fixed segment-thickness condition `(OFP.10cb)` before `CSP.A` is
used.

This closes the segment-geometry part of the pre-loop packet under the
still-live receiver-admission hypothesis. It does not by itself supply the
route-native thickened collar consumer or the widened receiver return. Those
remain the separate `WTC.A` / `WTL.A` and `WRR.A` obligations unless the
retained-window still-live admission theorem is invoked, in which case Lemmas
`SLR.B` and `SLR.C` supply them directly as a sufficient shortcut.

The corrected end-to-end certificate map is recorded in
[mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md).
It keeps three distinctions explicit: `U2H.A` closes only the pulled-back
halo-gradient residue, the widened `LCI` calls remain parameter-shifted
obligations, and the final `CFI.A + \mathsf{End}_{NS}` lane certificate remains
conditional on the endpoint-exclusion matrix.
The finite lower-carrier Gronwall step across those widened calls is isolated
in
[mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md):
it closes the `LCI.B2d` / `LCI.C` step uniformly once the transported-center
package is supplied on the finite required parameter set.
The non-smuggling supplier for that transported-center package is isolated in
[mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md):
`DTC.A_{\mathfrak p}` must be proved directly from the PDE and localized
transported-center estimates, not from `EOC.Ca`, `WRR.A`, `U2H.A`, `LCI.A`, or
`CSP.A`.

### Lemma `OFP.C1f` (The centerwise segment density is downstream of a thickened collar envelope)

Retain the packet-collar thickness `\delta>0` from
`mpp-packet-collar-next-rung-control.md`. Assume there is a fixed scale
`\delta_{seg}>0` such that for a.e. `t\in I`,

```math
\Gamma_\sharp(t)\rho
+
\rho\,P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg}.
\tag{OFP.10cb}
```

Then the centerwise segment density is controlled by the packet-collar envelope
at the thickened radius `\delta+\delta_{seg}`:

```math
\mathfrak M_{N+1,\rho}^{seg,ctr}(t)
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t).
\tag{OFP.10cc}
```

### Proof

Fix `j`, `0<|r|\le \rho`, and `0\le \theta\le 1`. By the pack gauge and the
definition of `P_{F,\rho}^{ctr,\sharp}`,

```math
|F(a^j,t)r|
\le
\Gamma_\sharp(t)\rho,
\qquad
|\varepsilon_h(a^j,r,t)|
\le
\rho\,P_{F,\rho}^{ctr,\sharp}(t)^{1/2}.
\tag{OFP.10cd}
```

Hence every point on the segment in `(OFP.10br)` obeys

```math
\big|
F(a^j,t)r+\theta\varepsilon_h(a^j,r,t)
\big|
\le
\Gamma_\sharp(t)\rho
+
\rho\,P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg}.
\tag{OFP.10ce}
```

Retain the transported-center family `c_j(t)=\Phi(a^j,t)` from the
lower-carrier note. As already used in the proof of `LCI.B2f2b`, every center
lies in the packet collar:

```math
c_j(t)\in \mathcal C_{\rho,\psi}^{\delta}(t).
\tag{OFP.10cf}
```

Hence if

```math
z=
c_j(t)+F(a^j,t)r+\theta\varepsilon_h(a^j,r,t),
\tag{OFP.10cg}
```

then `(OFP.10ce)` and the definition of the collar distance give

```math
\operatorname{dist}\!\big(z,\mathfrak P_{\rho,\psi}(t)\big)
\le
\operatorname{dist}\!\big(c_j(t),\mathfrak P_{\rho,\psi}(t)\big)
+
|z-c_j(t)|
\le
\delta+\delta_{seg}.
\tag{OFP.10ch}
```

So every point sampled in `(OFP.10br)` lies in the thickened collar
`\mathcal C_{\rho,\psi}^{\delta+\delta_{seg}}(t)`, where the next-rung
envelope is bounded by
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)`. Taking the supremum
over `j` and `r` gives `(OFP.10cc)`. ∎

### Corollary `OFP.C1g` (Explicit two-supplier reduction of the non-circular enlarged-ball oscillation theorem)

Assume the hypotheses of `OFP.C1b` and `OFP.C1f`. Then for a.e. `t\in I`,

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{N,m,\lambda}
\left(
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t)
+
\rho^2\,
\mathfrak O_{F,\rho}^{ctr}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)
\right).
\tag{OFP.10ci}
```

### Proof

By `(OFP.10bk)` and `(u+v)^2\le 2u^2+2v^2`,

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{N,m,\lambda}\,
\rho^2\,
\mathfrak D_{N,\rho}^{ctr}(t).
\tag{OFP.10cj}
```

Applying `(OFP.10bs)` gives

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{N,m,\lambda}\,
\rho^2
\Big(
\mathfrak D_{N,\rho}^{ref,ctr}(t)
+
P_{F,\rho}^{ctr,\sharp}(t)\,
\mathfrak M_{N+1,\rho}^{seg,ctr}(t)
\Big).
\tag{OFP.10ck}
```

Now use `(OFP.10bv)`, `(OFP.10by)`, and `(OFP.10cc)`:

```math
\rho^2\,\mathfrak D_{N,\rho}^{ref,ctr}(t)
\le
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t),
\tag{OFP.10cl}
```

```math
P_{F,\rho}^{ctr,\sharp}(t)\,
\mathfrak M_{N+1,\rho}^{seg,ctr}(t)
\le
\mathfrak O_{F,\rho}^{ctr}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t).
\tag{OFP.10cm}
```

Substituting `(OFP.10cl)` and `(OFP.10cm)` into `(OFP.10ck)` yields
`(OFP.10ci)`. ∎

So the non-circular enlarged-ball theorem is now reduced further to two exact
pointwise suppliers plus the already-installed thickened collar envelope:

1. the pointwise Eulerian increment envelope `\mathfrak e_{N,\Lambda}^{Eul,ctr}`;
2. the centerwise pack-oscillation modulus `\mathfrak O_{F,\rho}^{ctr}`;
3. the common collar envelope
   `\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}`, with the segment-density
   branch no longer separate once the scale condition `(OFP.10cb)` is
   verified.

### Corollary `OFP.C1h` (Exact defect reduction behind the two-supplier formula)

Under the hypotheses of `OFP.C1f`, one has for a.e. `t\in I`,

```math
\mathfrak D_{N,\rho}^{ctr}(t)
\le
2\,\rho^{-2}\,
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t)
+
2\,
\mathfrak O_{F,\rho}^{ctr}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t).
\tag{OFP.10cn}
```

### Proof

This is just `(OFP.10bs)` followed by `(OFP.10bv)`, `(OFP.10by)`, and
`(OFP.10cc)`. ∎

### Proposition `OFP.C1i` (Pointwise centerwise pack-oscillation propagation from the exact deformation law)

Retain the label-halo first-rung carrier from `(OFP.10byi)`; for compatibility
with the older pack-oscillation branch, write the same envelope as

```math
\mathfrak U_{1,\rho}^{halo,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le \rho}
\sup_{0\le \theta\le 1}
\big|
U_1(X(a^j+\theta r,t),t)
\big|.
\tag{OFP.10co}
```

Then for a.e. `t\in I`,

```math
D^+\mathfrak O_{F,\rho}^{ctr}(t)
\le
C\,
\big(
1+\mathfrak U_{1,\rho}^{halo,ctr}(t)
\big)\,
\mathfrak O_{F,\rho}^{ctr}(t)
+
C\,
\Gamma_\sharp(t)^2\,
\rho^2\,
\mathfrak D_{N,\rho}^{ctr}(t).
\tag{OFP.10cp}
```

### Proof

Fix `j`, `0<|r|\le \rho`, and define

```math
\mathfrak o_{j,r}(t)
:=
\int_0^1
\big|
\Delta_{\theta r}F(a^j,t)
\big|^2\,d\theta.
\tag{OFP.10cq}
```

Using `(TB.21)` with increment `\theta r` at `a=a^j` gives

```math
\partial_t\Delta_{\theta r}F(a^j,t)
=
U_1(X(a^j+\theta r,t),t)\,\Delta_{\theta r}F(a^j,t)
+
\Delta_{\theta r}^\Phi U_1(a^j,t)\,F(a^j,t).
\tag{OFP.10cr}
```

Taking the derivative of the squared norm and applying Cauchy--Young yields

```math
\frac{d}{dt}
\big|
\Delta_{\theta r}F(a^j,t)
\big|^2
\le
C\,
\big(
1+
\big|U_1(X(a^j+\theta r,t),t)\big|
\big)\,
\big|
\Delta_{\theta r}F(a^j,t)
\big|^2
+
C\,
\big|F(a^j,t)\big|^2\,
\big|
\Delta_{\theta r}^\Phi U_1(a^j,t)
\big|^2.
\tag{OFP.10cs}
```

Because `|F(a^j,t)|\le \Gamma_\sharp(t)` and `|\theta r|\le \rho`, while the
rung-1 term is contained in `\mathfrak D_{N,\rho}^{ctr}` through the positive
weight `\lambda_1`, one has

```math
\big|
\Delta_{\theta r}^\Phi U_1(a^j,t)
\big|^2
\le
\lambda_1^{-1}\,
\rho^2\,
\mathfrak D_{N,\rho}^{ctr}(t).
\tag{OFP.10ct}
```

Integrating `(OFP.10cs)` in `\theta`, using the definition `(OFP.10co)`, gives

```math
\frac{d}{dt}\mathfrak o_{j,r}(t)
\le
C\,
\big(
1+\mathfrak U_{1,\rho}^{halo,ctr}(t)
\big)\,
\mathfrak o_{j,r}(t)
+
C\,
\Gamma_\sharp(t)^2\,
\rho^2\,
\mathfrak D_{N,\rho}^{ctr}(t).
\tag{OFP.10cu}
```

Taking the upper Dini derivative of the supremum over `j` and `r` yields
`(OFP.10cp)`. ∎

### Corollary `OFP.C1j` (The pack-oscillation supplier is downstream of the Eulerian increment envelope and the label-halo first-rung carrier)

Under the hypotheses of `OFP.C1f`, combine `(OFP.10cp)` with `(OFP.10cn)` to
obtain

```math
D^+\mathfrak O_{F,\rho}^{ctr}(t)
\le
C\,
\Big(
1
+
\mathfrak U_{1,\rho}^{halo,ctr}(t)
+
\Gamma_\sharp(t)^2\,
\rho^2\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)
\Big)\,
\mathfrak O_{F,\rho}^{ctr}(t)
+
C\,
\Gamma_\sharp(t)^2\,
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t).
\tag{OFP.10cv}
```

Hence if

```math
\mathfrak O_{F,\rho}^{ctr}(t_0)<\infty,
\tag{OFP.10cw}
```

and

```math
\mathfrak U_{1,\rho}^{halo,ctr}
+
\Gamma_\sharp^2\,
\rho^2\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}
+
\Gamma_\sharp^2\,
\mathfrak e_{N,\Gamma_\sharp(\cdot)\rho}^{Eul,ctr}
\in
L^1(I),
\tag{OFP.10cx}
```

then

```math
\mathfrak O_{F,\rho}^{ctr}\in L^\infty(I).
\tag{OFP.10cy}
```

So the pack-oscillation modulus is no longer a primitive standalone supplier on
the oscillation side. It is downstream of the Eulerian increment envelope, the
label-halo first-rung carrier, and the already-installed thickened collar
envelope.

### Obstruction `OFP.C1k` (The halo carrier lives on a variable-radius center ball, not on the installed enlarged-ball radius)

The new carrier `\mathfrak U_{1,\rho}^{halo,ctr}` is **not** the same object as
the enlarged-ball oscillation coefficient from `LCI.B2f2c`.

Indeed, `OFP.C1b` uses the transport-geometry hypothesis

```math
B(c_j(t),2R_\delta^{osc})
\subset
\Phi_t\big(B(a^j,\rho)\cap A_\sharp\big),
\tag{OFP.10cz}
```

which says that every point on the enlarged physical ball has a label preimage
inside the label halo. The new halo carrier is measured on the reverse image:

```math
X\big(B(a^j,\rho)\cap A_\sharp,t\big),
\tag{OFP.10da}
```

That reverse image is not mysterious: by the fundamental theorem of calculus
for `X` and the pack gauge,

```math
X\big(B(a^j,\rho)\cap A_\sharp,t\big)
\subset
B(c_j(t),\Gamma_\sharp(t)\rho).
\tag{OFP.10db}
```

Indeed, if `s\in B(a^j,\rho)\cap A_\sharp`, then

```math
X(a^j+s,t)-X(a^j,t)
=
\int_0^1 F(a^j+\tau s,t)\,s\,d\tau,
\tag{OFP.10dc}
```

so

```math
|X(a^j+s,t)-c_j(t)|
\le
\Gamma_\sharp(t)\,|s|
\le
\Gamma_\sharp(t)\rho.
\tag{OFP.10dd}
```

Therefore

```math
\mathfrak U_{1,\rho}^{halo,ctr}(t)
\le
\sup_{1\le j\le J}
\big\|
U_1(\cdot,t)
\big\|_{L^\infty(B(c_j(t),\Gamma_\sharp(t)\rho))}.
\tag{OFP.10de}
```

So `EOC.A` does not by itself read off `\mathfrak U_{1,\rho}^{halo,ctr}`.
What is missing is not the reverse inclusion itself, but compatibility with the
installed ball radius. The present enlarged-ball theorem is built on
`2R_\delta^{osc}`, while the halo carrier lives on the variable radius
`\Gamma_\sharp(t)\rho`. The exact new geometric supplier still missing is:

```math
\boxed{
\text{a variable-radius center-ball theorem that places }
\mathfrak U_{1,\rho}^{halo,ctr}
\text{ in an integrable carrier class on }
B(c_j(t),\Gamma_\sharp(t)\rho).
}
\tag{OFP.10df}
```

This is now the honest remaining geometric wall behind the deformation-side
propagation `OFP.C1i`--`OFP.C1j`.

### Candidate Theorem `OFP.C1l` (Variable-radius center-ball carrier theorem)

Define the halo radius

```math
R_{\rho}^{halo}(t)
:=
\Gamma_\sharp(t)\rho,
\tag{OFP.10dg}
```

and the corresponding variable-radius center-ball carrier

```math
\mathfrak U_{1,\rho}^{ball,ctr}(t)
:=
\sup_{1\le j\le J}
\big\|
U_1(\cdot,t)
\big\|_{L^\infty(B(c_j(t),R_{\rho}^{halo}(t)))}.
\tag{OFP.10dh}
```

Then `(OFP.10de)` gives the exact reduction

```math
\mathfrak U_{1,\rho}^{halo,ctr}(t)
\le
\mathfrak U_{1,\rho}^{ball,ctr}(t).
\tag{OFP.10di}
```

So the remaining geometric supplier is no longer vague. The theorem-facing
target is:

```math
\boxed{
\mathfrak U_{1,\rho}^{ball,ctr}\in L^1(I)
\quad\text{or a stronger integrable carrier class on }I.
}
\tag{OFP.10dj}
```

This is a variable-radius extension of the installed fixed-radius center-ball
readout surfaces. It does **not** change the route; it names the exact radius
upgrade still missing behind `OFP.C1k`.

The dedicated standalone theorem-facing surface for this exact wall is now
[mpp-lci-a-variable-radius-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-variable-radius-center-ball-note.md),
whose target theorem `VCB.A` is the note-local packaging of `(OFP.10dj)`. The
companion bounded-pack return note further records that the conditional
realization `VCB.Bc` / `OFP.C1m` is not a genuinely new supplier route: it is
just the old widened lower-carrier packet theorem together with the old
anchored-center ledger.

### Candidate Reduction `OFP.C1m` (The variable-radius center-ball carrier reduces to one fixed halo shell on the interval)

Set

```math
M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)},
\qquad
R_{\rho}^{halo,\ast}:=M_\sharp\rho.
\tag{OFP.10dk}
```

Choose a smooth cutoff profile `\Xi_{\delta}^{halo,\rho}` satisfying

```math
0\le \Xi_{\delta}^{halo,\rho}\le 1,
\qquad
\Xi_{\delta}^{halo,\rho}(s)=1 \text{ for } s\le \delta+R_{\rho}^{halo,\ast},
\qquad
\Xi_{\delta}^{halo,\rho}(s)=0 \text{ for } s\ge 2\delta+R_{\rho}^{halo,\ast},
\tag{OFP.10dl}
```

with the same derivative scale

```math
\|(\Xi_{\delta}^{halo,\rho})'\|_{L^\infty}\le C_{\Xi,halo,1}\delta^{-1},
\qquad
\|(\Xi_{\delta}^{halo,\rho})''\|_{L^\infty}\le C_{\Xi,halo,2}\delta^{-2}.
\tag{OFP.10dm}
```

Define the fixed halo-shell cutoff

```math
\vartheta_{\rho,\psi,t}^{halo,\delta}(x)
:=
\Xi_{\delta}^{halo,\rho}(d_{\rho,\psi}(x,t)).
\tag{OFP.10dn}
```

Then for every `t\in I` and every `j`,

```math
B(c_j(t),R_{\rho}^{halo}(t))
\subset
\{\vartheta_{\rho,\psi,t}^{halo,\delta}=1\}.
\tag{OFP.10do}
```

### Proof

Because each transported center lies in the packet collar,

```math
d_{\rho,\psi}^{raw}(c_j(t),t)<\delta.
\tag{OFP.10dp}
```

If `x\in B(c_j(t),R_{\rho}^{halo}(t))`, then by `(OFP.10dg)` and
`R_{\rho}^{halo}(t)\le R_{\rho}^{halo,\ast}`,

```math
d_{\rho,\psi}^{raw}(x,t)
\le
d_{\rho,\psi}^{raw}(c_j(t),t)+|x-c_j(t)|
<
\delta+R_{\rho}^{halo,\ast}.
\tag{OFP.10dq}
```

So `x` lies in the plateau from `(OFP.10dl)`, which gives `(OFP.10do)`. ∎

Define the corresponding halo-shell packet

```math
\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)
:=
\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\big|\nabla^\beta U_1(x,t)\big|^2\,dx.
\tag{OFP.10dr}
```

Then fixed-radius local Sobolev/Morrey on the plateau balls from `(OFP.10do)`
gives the theorem-facing implication

```math
\sup_{t\in I}\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)<\infty
\Longrightarrow
\mathfrak U_{1,\rho}^{ball,ctr}\in L^\infty(I)
\Longrightarrow
\mathfrak U_{1,\rho}^{halo,ctr}\in L^\infty(I).
\tag{OFP.10ds}
```

So the honest next move behind `OFP.C1l` is not a new geometric philosophy. It
is one exact halo-shell interval-propagation theorem built from the same
defining function `d_{\rho,\psi}` and the same collar-shell machinery already
used in `LCI.B2f2`.

The dedicated standalone theorem-facing surface for that successor theorem is
now
[mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md)
as `HSP.A`.

## Compression Candidate Above The Supplier Split

The paired supplier reduction is honest, but it is not yet the cleanest theorem
shape.

There is a sharper compressed route that stays closer to the same-fluid
geometry: work directly in transported label-space increments and try to prove
one combined packet-to-coherence propagation theorem.

### Candidate Theorem `OFP.D1` (Transported packet-to-coherence propagation)

Fix:

1. a same-fluid evolved still-live family `\{Q_s\}_{0\le s\le \sigma}`;
2. one common label collar `A_\sharp`;
3. a seed label-scale `\rho_0>0`;
4. a packet cutoff `\psi` supported in `A_\sharp`.

For each `0<|r|\le \rho_0`, define the transported defect packet

```math
\widetilde E_{N,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int
\psi(a)^2\,|\Delta_r^\Phi U_k(a,t)|^2\,da,
\tag{OFP.10g}
```

and retain the next-rung weighted-segment packet

```math
\mathcal M^{wseg}_{N+1,\rho,\psi}(t).
\tag{OFP.10h}
```

The dream compressed theorem is:

```math
\boxed{
\text{there exist }\rho_\sigma>0,\ C_\sigma<\infty\text{ such that}
}
\tag{OFP.10i}
```

```math
\sup_{t\in[0,\sigma]}
\sup_{0<|r|\le \rho_\sigma}
\frac{1}{|r|^2}\widetilde E_{N,r,\psi}(t)
\le C_\sigma,
\tag{OFP.10j}
```

and

```math
\sup_{t\in[0,\sigma]}
\mathcal M^{wseg}_{N+1,\rho_\sigma,\psi}(t)
\le C_\sigma.
\tag{OFP.10k}
```

If `(OFP.10j)`--`(OFP.10k)` hold, then the exact transported bridge
`(JFD.8)`--`(JFD.16)` and pack-side distortion control turn transported packet
control into a surviving positive Eulerian coherence scale. That is the
shortest direct route to `OFP.A`.

### Why This Compression Is Attractive

This candidate keeps the proof pressure on one real object:

```math
\text{transported packet control}
\Longrightarrow
\text{surviving positive coherence regime}.
\tag{OFP.10l}
```

If this implication is proved, the route avoids growing into a long supplier
ladder. Its exact consequence is replacement of the current split

```math
\text{fixed finite family}
\;+\;
\text{collar Sobolev packet}
\tag{OFP.10m}
```

by one propagated same-fluid envelope in label space.

### Exact Caution

This compressed theorem is promising, but it is not yet proved on disk.

The main reason is that the naive envelope

```math
\Xi_{N,\rho,\psi}(t)
:=
\sup_{0<|r|\le \rho}\frac{1}{|r|^2}\widetilde E_{N,r,\psi}(t)
\;+\;
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
\tag{OFP.10n}
```

is probably too small by itself. The current packet route still exposes genuine
source / geometry terms such as:

1. `P_F^\ast(r,t;\psi)`;
2. `A_F(t;\psi)` and the shifted distortion ledger behind `(TB.28)`;
3. the exact rung-1 source `\mathcal Q_{1,r,\psi}^{str}(t)`.

So the compressed route is viable only in one of two exact forms:

1. enlarge `\Xi_{N,\rho,\psi}` until those source terms are honestly absorbed
   into one same-fluid propagated envelope; or
2. prove that the current paired supplier theorems `OFP.C1`--`OFP.C2` are
   exactly the mechanism by which those source terms are discharged.

That is why the supplier split remains the current accepted reduction, even
though the transported packet-to-coherence theorem is the cleaner north-star.

### Test Result: How Far The Enlargement Actually Goes

The current on-disk packet laws already show that the naive envelope can be
enlarged substantially before the route breaks.

The clean theorem-facing candidate is:

```math
\Upsilon_{N,\rho,\psi}^{\delta}(t)
:=
\sup_{0<|r|\le \rho}
\left(
\frac{1}{|r|^2}\widetilde E_{N,r,\psi}(t)
+
P_F^\ast(r,t;\psi)
\right)
+
A_F(t;\psi_\rho^\sharp)
+
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t),
\tag{OFP.10o}
```

where `\psi_\rho^\sharp` is the explicitly enlarged packet from `(R1.11m)`.

This enlargement absorbs the formerly exposed source / geometry terms as
follows.

1. The exact rung-1 source is no longer independent:

```math
\mathcal Q_{1,\rho,\psi}^{str}(t)
:=
\sup_{0<|r|\le \rho}\mathcal Q_{1,r,\psi}^{str}(t)
\le
\lambda_1^{-1}\rho^2\,
\sup_{0<|r|\le \rho}
\frac{1}{|r|^2}\widetilde E_{1,r,\psi}(t),
\tag{OFP.10p}
```

by `(TB.26b)`.

2. The shifted distortion ledger is no longer hidden:

```math
A_F^\sharp(t;\psi,r)\le A_F(t;\psi_\rho^\sharp)
\qquad
(0<|r|\le \rho),
\tag{OFP.10q}
```

by `(R1.11n)`.

3. The weighted-segment side is no longer an independent packet:

```math
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
\le
\rho^2\,
P_{F,\rho,\psi}^\ast(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t),
\tag{OFP.10r}
```

by `(R1.11h)`, and `\mathfrak C_{N+1,\rho,\psi}^{\delta}` is in turn controlled
by `\mathcal K_{N+1,m,\rho,\psi}^{\delta}` through `(PC.14)`.

So the packing / distortion / source side of the one-field problem can be
compressed much further than the earlier supplier picture suggested.

### Exact Remaining Obstruction

What does **not** collapse is the collar receiver term.

The amplitude law `(MP.17)` propagates `A_F`. The relative-packing law
`(TB.28)` together with `(R1.11f)` propagates `P_F^\ast` once the source term is
absorbed through `(OFP.10p)`--`(OFP.10q)`. But the enlarged envelope
`\Upsilon_{N,\rho,\psi}^{\delta}` still depends on the collar packet
`\mathcal K_{N+1,m,\rho,\psi}^{\delta}`, and no fully closed one-sided
propagation law for that term is yet on disk.

So the result of this test is:

```math
\boxed{
\text{after the packing and rung-1 source terms are absorbed, the remaining unclosed receiver is the collar packet.}
}
\tag{OFP.10s}
```

Equivalently: at current resolution, the naive envelope can be enlarged so that
the packing-side and rung-1 source terms are absorbed into one same-fluid
packet, but the route still bottlenecks on the collar propagation theorem
`CSP.A`.

## Exact Attack Order

The paired supplier debts are not symmetric in leverage.

The first live supplier debt is the collar Sobolev packet:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
<
\infty,
\tag{OFP.10d}
```

The exact theorem-facing surface for that burden is now:

1. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

because its downstream collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta}` feeds:

1. the next-rung segment side directly;
2. the weighted-segment packet directly;
3. the finite-net discharge on the reference side.

The fixed finite Eulerian packet family is downstream of that collar packet:

```math
\sup_{t\in I}
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)
<
\infty,
\tag{OFP.10e}
```

because that supplier only closes the reference side once the common collar
envelope is already available.

So the live execution order on the one-field route is:

```math
\text{collar Sobolev packet}
\Longrightarrow
\text{common collar envelope}
\Longrightarrow
\text{fixed finite packet family}
\Longrightarrow
\text{reference-envelope discharge}
\Longrightarrow
\text{one-field forward preservation.}
\tag{OFP.10f}
```

## Honest Wall

The first three lemmas are already strongly supported by installed surfaces.

On the exact same-depth route, the compressed wall `OFP.B4` is still a paired
supplier problem. On the installed strengthened source branch `(FFSRC.A)`,
that source half is already discharged, so the live burden has returned
entirely to the receiver side, whose transported-center theorem-facing stop is
`RCF.A`. Inside that transported-center stop, the handoff note already shows
that the honest next upstream reopening is the affine-defect supplier split
`(AFS.A0)` under `AFD.A`, not the direct-coordinate residue `(WCA.C0)`.

On the fixed-family side, the remaining inhomogeneous source is the
source-only interval-integrability burden `(FCI.5f)` on the frozen finite
family. The companion note
[mpp-frozen-family-source-ledger-split-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-ledger-split-note.md)
records the sharpest exact structural split currently on disk as frozen-net
pressure, strain/cascade, and cutoff channels, with the companion cutoff note
[mpp-frozen-family-cutoff-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-cutoff-channel-reduction-note.md):
`(FCC.C1)` already places the cutoff channel under the viscous/coefficient Young-margin inequality
once the explicit packet-factor coefficient ledger `\mathfrak b_{\psi}^{cut}`
is in `L^1(I)`, with the current route-native readout of that coefficient
closure still coming from `CSP.B1c` plus the paired low-carrier ledger
`(CSP.25b)`. The explicit packet commutator writeup in
[mpp-frozen-family-packet-cutoff-commutator-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-packet-cutoff-commutator-note.md).
records via `(PCC.Ca)` that the first direct packet bounds still self-loop
through the same fixed-family propagation.
On the pressure side, the companion note
[mpp-frozen-family-pressure-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-pressure-channel-reduction-note.md)
already sharpens the same-depth pressure survivor further: under the installed
ordinary interval energy ledger, only the frozen-net resonant packet sum
`\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}` remains genuinely
same-depth.
The bounded exact pressure self-attempt now records that the exact branch still
bottoms out at `(FPCR.C)`, whose exact smaller wall is now isolated as
`(FIRP.A0)` and does not lower further on current installed surfaces, while on the stronger pressure branch the first
sharper packet-side theorem is now isolated as `(FFPLB.A0)`, whose exact
smaller wall is `(FFPLB.B0)` and whose bounded single-increment test does not
lower further on the current exact surfaces, while on the coarser
energy-conditioned branch the terminal packet-to-center bridge `(FIPCB.A0)` is
still absent on disk and its bounded coarser self-attempt does not lower
further on the current installed surfaces.
The new companion note
[mpp-frozen-family-strain-cascade-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-channel-reduction-note.md)
now records the matching nonpressure survivor exactly: after cutoff Young-margin reduction,
the remaining same-depth source theorem is `(FSCR.C)`, namely
`\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(\cdot;I)\in L^1(I)`, while the
adjacent sufficient note
[mpp-frozen-family-strain-cascade-sufficient-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-sufficient-reduction-note.md)
already exports that whole channel to the common collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta}` and the frozen-family packet aggregate
`\mathcal F_{N,\rho,\psi}^{\varepsilon}` through `(FFSC.B1)` / `(FFSC.C1)`.
The bounded exact subchannel test on
[mpp-frozen-family-strain-cascade-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-channel-reduction-note.md)
now records that splitting `FSCR.1e` into frozen-net strain and cascade does
not lower the exact route beneath `(FSCR.C)`, and that only the adjacent
sufficient companions `(FSCR.B2a)` / `(FSCR.B2b)` separate further.
The companion closure note
[mpp-frozen-family-source-sufficient-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-sufficient-closure-note.md)
now combines the exact remaining pressure bridge `(FFPB.A0)` with
`(FFSC.B1)` / `(FFSC.C1)` and `(FCC.C1)` into the organized stronger
source-side package `(FFSRC.A)`, with the exact remaining pressure-side
theorem there still isolated as `(FFPB.A0)`.
So the paired source-side form now on disk is
`(CSP.25b)+\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}+\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\Rightarrow (FCI.5f)`
through `FCC.C2`.

On the collar side, the old monolithic burden `CSP.A` has been reduced further:

1. the defining-function / annular cutoff slot is installed by
   `CSP.B1a`--`CSP.B1c`;
2. the direct source-to-segment bridge is installed by `R1.C`;
3. the annular coefficient package is no longer independent once the
   packet-local deformation control from `CSP.B3a0a` is available;
4. the remaining receiver-side wall is now split inside the lower-carrier note
   into a sharper coefficient branch `(LCI.3c3x)` and a coarser scalar route
   whose only front-end subslot is the shell bridge `(LCI.3c3k0)`; once that
   shell bridge is installed, Proposition `LCI.B3a` recovers `(LCI.3c5f)`
   directly from the transported-center absolute/oscillation ledgers instead of
   stopping at the old Osgood obstruction;
5. on the transported-center realization with bounded pack-side gauge, the
   sharper coefficient branch already reduces further to the square-integrable
   absolute/oscillation pair `(LCI.3c3y)`, with the oscillation side reduced to
   the local Holder ledger `(LCI.3c3z4)` and the absolute-center side
   identified with the exact transported-center triangular system
   `(LCI.3c3z8a)`--`(LCI.3c3z8b)`, whose only genuinely self-quadratic rung is
   `(LCI.3c3z16)` and whose higher center rungs are downstream by
   `(LCI.3c3z19)`; Proposition `LCI.B2g4` now also shows that the lower-rung
   viscous center forcing is already downstream of that same center system, so
   the genuinely unreduced center forcing is only the pressure-center readout
   at every rung together with the top-two viscous center ledgers
   inside the lower-carrier note
   [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md).
6. on the oscillation side, Corollaries `EOC.C`--`EOC.Ca` now sharpen the
   transported-center receiver package further: once the widened receiver-side
   lower-order collar return `(EOC.27)` is granted, the old halo/increment
   supplier pair is already downstream, and the honest remaining `EOC`-surface
   consumer is exactly
   `CSP.A` instantiated at thickness `\delta+\delta_{seg}`, not `VCB.A` or
   `FEI.A` as independent live walls. Repo-natively, `(EOC.27)` is the widened
   `LCI.B` instance `WRR.A`, while the thickened consumer is `WTC.A` with the
   separate source burden `(FCI.5f)` and the thickness-sensitive slot
   `WTC.4`, reduced by `WTL.A` to `LCI.A_{\delta+\delta_{seg}}`. The direct
   still-live receiver-admission theorem `SLR.D` supplies `(EOC.27)`, the
   thickened consumer, and the segment geometry together only as a retained
   still-live shortcut, giving `EOC.A` without recycling the route-native
   `LCI` / `CSP` fixed point.

So the exact question is now:

```math
\boxed{
\text{do the fixed-family source side and the lower-carrier receiver side propagate } \inf_{t\in I}\mathcal C_{\mathrm{coh}}(t)>0?
}
\tag{OFP.11}
```

So the one-field problem is no longer vague. Its exact live split is:

1. exact same-depth frozen-family source-only integrability `(FCI.5f)` on the
   source side, with
   the companion note
   [mpp-frozen-family-source-ledger-split-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-ledger-split-note.md)
   recording the sharpest exact structural split currently on disk as
   frozen-net pressure, strain/cascade, and cutoff channels, i.e. the exact
   split `(FSL.A0)`; the companion cutoff note
   [mpp-frozen-family-cutoff-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-cutoff-channel-reduction-note.md),
   where `(FCC.C1)` already places the cutoff channel under the
   viscous/coefficient side once the explicit packet-factor coefficient ledger
   `\mathfrak b_{\psi}^{cut}` is in `L^1(I)`, while the explicit packet
   commutator writeup in
   [mpp-frozen-family-packet-cutoff-commutator-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-packet-cutoff-commutator-note.md)
   records via `(PCC.Ca)` that the first direct packet bounds still self-loop
   through the same fixed-family propagation;
   on the pressure side, the companion reduction note `FPCR.A` now says that,
   under the installed ordinary interval energy ledger, the surviving same-depth
   pressure object is the frozen-net resonant packet sum
   `\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}`; the adjacent
   stronger sufficient pressure export is now isolated in
   [mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md)
   as `FFPR.C2`, rejoining the installed fixed-radius pressure stack through
   `FPC.H -> FPL.C`; on the installed strengthened source branch, the companion
   closure note
   [mpp-frozen-family-source-sufficient-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-sufficient-closure-note.md)
   already organizes the widened pressure bridge `(FFPB.A0)` with `FFSC.C1`
   and `FCC.C1` into `(FFSRC.A)`, with that pressure theorem still isolated on
   the companion note;
   so on that installed strengthened source branch, the live one-field burden
   has returned entirely to the receiver-side package;
   the new companion strain/cascade note
   [mpp-frozen-family-strain-cascade-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-channel-reduction-note.md)
   records the exact nonpressure sibling `(FSCR.C)`, namely
   `\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(\cdot;I)\in L^1(I)`, with no
   sharper frozen-family descendant currently on disk;
2. the lower-carrier receiver branch, whose sharper closure target is
   `(LCI.3c3x)` and whose coarser scalar target is the shell bridge
   `(LCI.3c3k0)` followed by the transported-center direct scalar bridge
   `(LCI.B3a)` recovering `(LCI.3c5f)`;
3. on the transported-center realization under bounded pack-side gauge, the
   oscillation receiver is no longer the old halo/increment supplier pair: by
   `EOC.Ca` it is exactly the widened receiver-side return `(EOC.27)` and
   `CSP.A` at thickness `\delta+\delta_{seg}`, which together imply `EOC.A`;
   repo-natively `(EOC.27)` is `WRR.A`, the thickened consumer is `WTC.A`
   together with `(FCI.5f)`, and the only thickness-sensitive receiver slot
   is `WTC.4`, equivalently `LCI.A_{\delta+\delta_{seg}}` by `WTL.A`; the
   still-live receiver-admission packet `SLR.A`--`SLR.D` supplies these inputs
   directly only on retained still-live receiver windows;
4. after that oscillation-side closure, the remaining transported-center
   receiver branch is now compressed to
   [mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md):
   bounded pack-side gauge `(LCI.3c3y0)`, local Holder oscillation
   `(LCI.3c3z20)`, first center-rung bound `(LCI.3c3z22)`, and one residual
   center-forcing theorem `RCF.A`. After `LCI.B2g4`, that residual forcing is
   exactly the pressure-center readout at every rung together with the top-two
   viscous center ledgers. The Holder supplier is now isolated more sharply by
   `LCI.B2f2a`--`LCI.B2f2c` as an enlarged-ball oscillation theorem on
   `B(\Phi(a^j,t),2R_\delta^{osc})`, while the first-center-rung supplier is
   the local pressure / harmonic package `LCI.B2g5b`--`LCI.B2g5f` together
   with the affine-defect / affine-frame chain `LCI.B2g5m`--`LCI.B2g5q`; but
   once those package inputs are granted, the honest receiver-side wall is
   `RCF.A`, not the older coarse scalar obstruction. Under the imported
   ordinary energy ledger, the far-tail half of that first-rung supplier split
   is already downstream, so the honest upstream reopening is the explicit pair
   `(AFS.A0)` beneath `AFD.A`, while the exact energy-conditioned remaining
   lower-order supplier inside that split is the first-rung viscous center ledger isolated in
   [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md).
   When `m\ge 3`, the stronger lower-order halo-shell packet `HSP.A0a`,
   together with the imported ordinary energy ledger and the remaining `AFD.A`
   inputs, feeds `AFD.A` directly by Corollary `AFS.C`, so the sharper
   next-form first-rung target on that branch is `HSP.A0a`, not `VCS.A` in
   isolation. The companion return note
   [mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
   now closes the conservative continuation of that sharper branch as well:
   after the FEI continuation is unpacked, it reopens only returned `LCI.A`
   reads and so feeds back into the already-installed lower-carrier route. The
   companion center-ball readout note
   [mpp-lci-a-first-rung-center-ball-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-center-ball-readout-note.md)
   now isolates the direct transported-center-ball readout for
   `\Delta U_1(c_j(t),t)` itself. The companion `U_3` reduction note
   [mpp-lci-a-first-rung-u3-center-ball-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-u3-center-ball-reduction-note.md)
   now records that the stronger sufficient `U_3` ball-readout branch is
   already route-internal. The companion Laplacian-ball reduction note
   [mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md)
   now records that the exact Laplacian-ball branch is itself already
   downstream of the old widened-shell oscillation packet when `m\ge 3`.
   Corollary `OFP.C3a`
   shows that a full one-field coherence regime implies the enlarged-ball
   oscillation supplier, but Obstruction `OFP.C3b` records why that implication
   is circular at the current `LCI` stage. The older
   pointwise decomposition `OFP.C1b`--`OFP.C1j` is still on disk and remains a
   valid route decomposition of that enlarged-ball supplier. But after the
   route-native receiver compression terminates at the `EOC` / `LCI` fixed
   point and the bounded-pack realization `VCB.Bc / OFP.C1m` is identified as a
   return to old `LCI`-family data, the live genuinely external escape branch
   is sharper: `VCB.A` on the direct variable-radius side, then `HSP.A` and its
   stronger packet form `HSP.A0a`, then `FEI.A`; more sharply, the honest direct
   successor beneath that branch is already the fixed-increment source split
   `FEI.C7`, with the thickened collar envelope on the coefficient side and the
   sharper route-native nonlocal return `(FEI.Bc0)`. The companion return note
   [mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
   now makes the terminal continuation explicit on this energy-conditioned
   first-rung branch: via the exact FEI return instances it reopens only the
   returned lower-carrier reads and feeds back into the old `LCI.A` program.
   On the pressure half of
   that split, the local fixed-ball chain still runs through `FPC.H` and
   `FPL.C`, but `FPC.Bc` and `FPL.G` now record that once the route-native
   moving-collar packet instance is available, that local pressure chain has
   already returned to the receiver-side collar burden `CSP.B3a1`. On the
   top-viscous half, the branch-local local stack still runs through `FVR.F`
   and `FTL.C`, but `FVR.G` and `FTL.G` now record the same return of that
   local top-viscous chain to `CSP.B3a1`. The companion FEI-return instance
   note now sharpens this one step further: the local return hypotheses
   `(FPL.Bc0)` and `(FTL.Bc0)` are themselves exact parameter reads of
   `CSP.B3a1`, so the FEI local branches reopen no new receiver theorem family,
   and the only thickness-sensitive receiver slot inside those instances is
   again the corresponding old lower-carrier theorem `LCI.A`.

The packet-local stretching gauge that used to appear as a third sibling is no
longer independent on this one-field branch: `LCI.A` now feeds
`CSP.B3a0a`, which supplies the packet-local deformation control needed by the
collar coefficient route. The full global pack-side theorem `CFI.C1b` remains a
separate burden for `CFI.B1`, but it is no longer a separate supplier wall
inside `OFP.A`.

## Route Position

Once `OFP.A` lands, the forward-invariance route becomes:

1. `Pack` survives by the same-carrier transport law;
2. `Part` survives by the Law 2 tethering/no-drop engine;
3. `Field` survives by `OFP.A`;
4. therefore lawful class membership is forward-invariant until visible
   surviving class-violation appears.

At that point the manifestation bridge is a corollary, not the primary wall.

## Boundary

Standing alone, this note does **not** prove `OFP.A`. Its terminal use is
licensed only by the `ACT.KX` conditional completion packet under `RSCB.NKF`,
the bounded pack gauge, the finite required parameter set, and the accepted
endpoint certificate maps.

It fixes:

1. the exact theorem target for one-field forward preservation;
2. the precise proof spine feeding it;
3. the reduction of the one-field wall to the paired source/receiver debts
   behind `OFP.C1`--`OFP.C3`, now sharpened to `(FCI.5f)` on the source side
   and the lower-carrier coefficient/scalar split on the receiver side:
   the sharper closure target `(LCI.3c3x)`, and the coarser scalar chain
   `(LCI.3c3k0)` -> `(LCI.B3a)` -> `(LCI.3c5f)`, with
   `(LCI.3c3y)` the exact transported-center sufficient closure under bounded
   pack-side gauge, now compressed on the theorem-facing surface to
   [mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md):
   bounded pack-side gauge `(LCI.3c3y0)`, local Holder oscillation
   `(LCI.3c3z20)`, first center-rung bound `(LCI.3c3z22)`, and the residual
   center-forcing theorem `RCF.A`, whose forcing surface is exactly the
   pressure-center readout at every rung plus the top-two viscous center
   ledgers after `LCI.B2g4`.
