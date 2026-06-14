# Spectral-Transversality And Cocycle Bridge To SG.4

## Status

This note records the cleanest theorem chain currently visible for converting

```math
\text{deformation geometry / YM-heat structure}
```

into

```math
\text{spectral transversality / bundle-angle coherence}
\;+\;
\text{pair-gap cocycle control}
```

and then into the `SG.4` lower-envelope package.

It is a theorem-shape synthesis note. It does **not** claim the full chain is
already discharged.

## Purpose

The lane now has three installed facts:

1. the real deep burden has moved into deformation geometry `(v,G)` and its
   coefficient commutators;
2. the direct strong-route frontier is a selector-good lower envelope for the
   short-segment directional strain averages `\mathfrak s_J`;
3. the one-sided extraction from a stripwise deficit budget to `SG.4B` is
   already formal.

So the remaining theorem search should not be phrased as “another coercive
estimate on `W_J`.” It should be phrased as:

```math
\boxed{
\text{produce a transported expanding bundle and a pairwise orientation law from which the one-sided directional deficit becomes observable.}
}
\tag{0}
```

## 1. Upstream geometric input: deformation/YM-heat supplies a coarse spectral floor

The deformation-side route already says the live object is the deformation
metric `G=A A^\top`, driven by the strain:

```math
\partial_t G
=
-A\big((\nabla_x u)+(\nabla_x u)^\top\big)(X,t)A^\top.
\tag{1.1}
```

The deep geometric program seeks a one-sided drain law

```math
\frac{d}{dt}\mathcal K_r^{Lag}[v,G]
+
\mathcal D_r^{Lag}[v,G]
+
\mathcal C_r^{Lag}[v,G]
\le 0.
\tag{1.2}
```

For the present bridge, the relevant output of that drain law is not the entire
deformation ledger but the following coarse spectral packet:

### Hypothesis DG-SF (deformation-generated spectral floor)

There exist:

- a selector-good family `G_J`,
- a transported rank-two bundle `a\mapsto N_a`,
- a coarse rate `\Lambda_J(t)\ge 0`,
- a spectral defect `\varepsilon_J^{spec}(t,a)\ge 0`,
- a bundle-angle defect `\theta_J(a,t)\ge 0`,

such that with

```math
S_{\le J}(x,t):=\operatorname{Sym}\nabla u_{\le J}(x,t),
\qquad
E_{\le J}^+(x,t):=\text{top two-dimensional spectral plane of }S_{\le J}(x,t),
\tag{1.3}
```

one has

```math
\lambda_{2,\le J}(X_{\le J}(a,t),t)
\ge
\Lambda_J(t)-\varepsilon_J^{spec}(t,a),
\tag{1.4}
```

and

```math
\big\|
\big(I-Q_{\le J}^+(X_{\le J}(a,t),t)\big)P_{N_a}
\big\|_{\mathrm{op}}
\le
\theta_J(a,t),
\tag{1.5}
```

where `Q_{\le J}^+` is the orthogonal projector onto `E_{\le J}^+`.

Interpretation:
the deformation/YM-heat layer does not yet prove `SG.4`; it supplies the
coarse expanding plane and shows that the transported selector bundle `N_a`
stays close to it.

## 2. Middle geometric theorem: bundle-angle coherence implies coarse expanding-plane control

Now use the installed `CF-bundle-coercive` mechanism.

### Proposition A (installed coarse bundle coercivity)

Under `(1.4)`-`(1.5)`, for every `v\in N_a`,

```math
v^\top
\operatorname{Sym}\!\big(
P_{N_a}\nabla u_{\le J}(X_{\le J}(a,t),t)P_{N_a}
\big)v
\ge
\big(
\Lambda_J(t)-\varepsilon_J^{spec}(t,a)-2M_J(t)\theta_J(a,t)^2
\big)|v|^2,
\tag{2.1}
```

where

```math
M_J(t):=
\operatorname*{ess\,sup}_{a\in G_J}
\|S_{\le J}(X_{\le J}(a,t),t)\|_{\mathrm{op}}.
\tag{2.2}
```

So the selector-bundle packet holds with

```math
\lambda_J(t):=\Lambda_J(t),
\qquad
\varepsilon_J^{bundle}(t,a)
:=
\varepsilon_J^{spec}(t,a)+2M_J(t)\theta_J(a,t)^2.
\tag{2.3}
```

This is exactly the `CF-bundle-coercive` output.

### Meaning

This is already the right replacement for a raw “orientation theorem.” The
bundle is not asked to align with one single eigenvector; it is asked to remain
close to the full expanding plane.

That is the correct geometric midpoint.

## 3. Pairwise upgrade: from plane expansion to pairwise selector data

The remaining issue is that `SG.4` is pairwise and directional. So we still need
to connect the evolving pair direction to the transported bundle.

### Hypothesis PG-C (pair-gap cocycle / pairwise bundle coherence)

For each active pair `(a,b)` define the coarse pair direction

```math
e_{ab}(t)
:=
\frac{\delta_{ab}^{coarse}(t)}{|\delta_{ab}^{coarse}(t)|},
\qquad
\delta_{ab}^{coarse}(t):=X_{\le J}(b,t)-X_{\le J}(a,t).
\tag{3.1}
```

Assume there exist:

- a pairwise bundle-angle defect `\xi_J(a,b,t)\ge 0`,
- a pair-gap cocycle `D_J(t;Q,Q')`,
- a loop/circulation defect `h_J`,
- a chart-covector field `\eta_J(a)` or equivalent pairwise observable,

such that on the refined good active-pair family:

```math
\big\|
\big(I-P_{N_a}\big)e_{ab}(t)
\big\|
\le
\xi_J(a,b,t),
\tag{3.2}
```

and the pair-gap observable is either exact

```math
D_J=\nabla_{\!graph}\alpha_J,
\tag{3.3}
```

or admits the Hodge splitting

```math
D_J=\nabla_{\!graph}\alpha_J+h_J,
\tag{3.4}
```

with `h_J` controlled in a route-local loop norm.

The role of `(3.2)` is pairwise transversality.
The role of `(3.3)`-`(3.4)` is to keep the active-pair orientation data from
being destroyed by loop circulation.

## 4. Resulting spectral-transversality theorem

### Theorem Candidate B (spectral transversality / bundle-angle coherence)

Assume `DG-SF` and `PG-C`. Then for a.e. `t` and every refined good active pair
`(a,b)` one has

```math
\mathfrak s_J(a,b,t)
\ge
\Lambda_J(t)
-\varepsilon_J^{spec}(t,a)
-2M_J(t)\theta_J(a,t)^2
-C\,M_J(t)\Xi_J(a,b,t)
-\operatorname{Err}_J^{loop}(a,b,t),
\tag{4.1}
```

where `\Xi_J` is any admissible quadratic pair-direction defect satisfying
`\Xi_J\ge c_\Xi \xi_J^2`, and `\operatorname{Err}_J^{loop}` is the pairwise
observable error induced by the cocycle harmonic part `h_J` or any equivalent
chart-transport defect.

Equivalently, setting

```math
\lambda_J(t):=\Lambda_J(t),
\tag{4.2}
```

and

```math
\varepsilon_J(a,b,t)
:=
\varepsilon_J^{spec}(t,a)
+2M_J(t)\theta_J(a,t)^2
+C\,M_J(t)\Xi_J(a,b,t)
+\operatorname{Err}_J^{loop}(a,b,t),
\tag{4.3}
```

one gets the exact `SG.4C` lower-envelope form

```math
\mathfrak s_J(a,b,t)\ge \lambda_J(t)-\varepsilon_J(a,b,t).
\tag{4.4}
```

### Proof skeleton

Start from the exact short-segment identity

```math
\mathfrak s_J(a,b,t)
=
\int_0^1
\big(e_{ab}(t)\otimes e_{ab}(t)\big):S_J(\gamma_{ab}(\theta,t),t)\,d\theta.
\tag{4.5}
```

When `e_{ab}(t)` lies exactly in `N_a`, Proposition A gives the lower bound
`\Lambda_J-\varepsilon_J^{bundle}`.

When `e_{ab}(t)` has a nonzero component outside `N_a`, write

```math
e_{ab}=P_{N_a}e_{ab}+\big(I-P_{N_a}\big)e_{ab}.
\tag{4.6}
```

The error size is the explicit orthogonal residual

```math
\delta_{ab}(t):=\|(I-P_{N_a})e_{ab}(t)\|.
```

Using the operator bound `\|S_J\|_{\mathrm{op}}\le M_J(t)` and the pair-angle
defect `(3.2)`, the cross-terms are controlled by `C\,M_J\Xi_J`.

This converts the bundle lower bound into the pairwise lower bound `(4.1)`.

Finally, any failure of exact pairwise orientation propagation is carried by the
loop/cocycle defect and is absorbed into `\operatorname{Err}_J^{loop}`.

So the only true losses are:

- spectral-floor loss,
- bundle-angle loss,
- pair-direction loss,
- loop/cocycle loss.

## 5. From spectral transversality to the one-sided defect budget

Define the one-sided directional deficit

```math
\mathfrak d_J^-(a,b,t)
:=
[\lambda_J(t)-\mathfrak s_J(a,b,t)]_+.
\tag{5.1}
```

Then `(4.1)` immediately gives

```math
\mathfrak d_J^-(a,b,t)
\le
\varepsilon_J^{spec}(t,a)
+2M_J(t)\theta_J(a,t)^2
+C\,M_J(t)\Xi_J(a,b,t)
+\operatorname{Err}_J^{loop}(a,b,t).
\tag{5.2}
```

Therefore any spacetime control of the four right-hand-side ledgers yields the
`PD.70`-type budget:

```math
\int_I\int_{G_J^{pair}}
\big(\mathfrak d_J^-(a,b,t)\big)^2
\,
d\mu_J^{pair}(a,b)\,dt
\le
\mathfrak F_J^{spec\to pair}(I),
\tag{5.3}
```

with

```math
\mathfrak F_J^{spec\to pair}(I)
\le
C_{spec\to pair}
\int_I\!\!\int_{G_J^{pair}}
\Big(
(\varepsilon_J^{spec})^2
+M_J^2\theta_J^4
+M_J^2\Xi_J^2
+|\operatorname{Err}_J^{loop}|^2
\Big)\,d\mu_J^{pair}\,dt.
\tag{5.4}
```

This is exactly the missing bridge type isolated in the selector-observability
note.

## 6. Final closure to `SG.4`

Once `(5.3)` holds, the installed one-sided extraction applies:

```math
\text{spectral transversality / bundle-angle coherence}
\Longrightarrow
\text{one-sided defect budget}
\Longrightarrow
\text{large-good-family strip gain}
\Longrightarrow
SG.4B.
\tag{6.1}
```

So the real route is:

```math
\boxed{
\text{deformation geometry / YM-heat}
\Longrightarrow
\text{coarse spectral floor}
\Longrightarrow
\text{bundle-angle coherence}
\Longrightarrow
\text{pair-gap cocycle / loop control}
\Longrightarrow
\text{one-sided selector deficit bound}
\Longrightarrow
\text{survivor-side }SG.4.
}
\tag{6.2}
```

This is the upstream supplier chain for the Law-2-survivor `SG.4` branch. It
does not carry the dead-endpoint burden by itself.

## Diagnostic

This note shows where the routes separate.

### What YM-heat/deformation is best for

It is best read as the upstream source of:

- a one-sided drain law,
- a spectral floor on the coarse strain sector,
- transport-stable expanding-plane geometry.

### What it is not best for

By itself it is not yet the clean direct proof of `PD.70`, because `PD.70`
requires pairwise directional orientation recovery, not just signless coercive
control.

For the exact rigidity-vs-identification split at this splice point, see
[spectral-gap-rigidity-and-projector-identification-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-gap-rigidity-and-projector-identification-note.md).

### What the direct theorem should now be

The direct theorem to prove at the live splice point is:

```math
\boxed{
\text{spectral transversality in measure}
+\text{pair-gap loop control}
\Longrightarrow
\mathfrak d_J^- \text{ is small on a large selector-good family.}
}
\tag{7.1}
```

That is the sharpest route currently visible.

## Strongest theorem schema if YM-heat/deformation is to beat the current frontier

The current note already shows that `DG-SF` is not enough by itself: it gives a
transport-stable **rank-two expanding plane**, while the live splice still
needs a **rank-one directional carrier** and a way to read that carrier from the
signless pair packet. So the strongest theorem schema worth targeting is the
following two-layer statement.

### Theorem Schema DG-PSJ (deformation-generated selector anisotropy and projective closure)

Fix one selector-good active pair family `G_J^{pair,\angle}` and one strip
`I=[t_0,t_1]`. Assume:

1. the deformation/YM-heat layer supplies `DG-SF`, hence the coarse expanding
   plane packet `(1.4)`-`(1.5)` and its `CF-bundle-coercive` consequence
   `(2.1)`;
2. there exists a measurable rank-one projector field
   `N_J(a,b,t)\le P_{N_a}` on `G_J^{pair,\angle}\times I` and nonnegative
   geometric defect ledgers
   `\varepsilon_J^{line},\varepsilon_J^{gap},\varepsilon_J^{drift}` such that

```math
\bigl\|
N_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
\varepsilon_J^{line}(a,b,t),
\tag{7.2}
```

```math
g_J(a,b,t)
:=
\lambda_{J,\top}^{seg}(a,b,t)-\lambda_{J,2}^{seg}(a,b,t)
\ge
\gamma_\ast-\varepsilon_J^{gap}(a,b,t),
\tag{7.3}
```

```math
\bigl\|
\partial_t N_J(a,b,t)-[K_J^{seg}(a,b,t),N_J(a,b,t)]
\bigr\|_{\mathrm{op}}
\le
\kappa_\ast+\varepsilon_J^{drift}(a,b,t);
\tag{7.4}
```

3. the same deformation/shadow packet supplies a theorem-safe entrance ledger
   on the strip:

```math
d_{\mathrm{proj}}\!\bigl(P_{ab}(t_0),N_J(a,b,t_0)\bigr)^2
\le
\mathcal B_J^{ent}(a,b;I);
\tag{7.5}
```

4. the signless pair packet admits a measurable rank-one shadow projector
   `\widehat P_J(a,b,t)` such that

```math
\bigl\|
P_{ab}(t)-\widehat P_J(a,b,t)
\bigr\|_F^2
\le
C_{\mathrm{sync}}|W_J(a,b,t)|^2
+
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t),
\tag{7.6}
```

```math
\bigl\|
\widehat P_J(a,b,t)-N_J(a,b,t)
\bigr\|_F^2
\le
\operatorname{Err}_{J,\mathrm{DG}}(a,b,t);
\tag{7.7}
```

5. the familywise geometric remainder is observed by the same strip budget:

```math
\mathcal E_J^{geom}(I)
:=
\int_I\!\!\int_{G_J^{pair,\angle}}
\Bigl(
\mathcal B_J^{ent}
+
\varepsilon_J^{line}
+
\varepsilon_J^{gap}
+
\varepsilon_J^{drift}
+
\operatorname{Err}_{J,\mathrm{sync}}
+
\operatorname{Err}_{J,\mathrm{DG}}
\Bigr)^2
\le
C_{obs}
\mathcal E_J^{obs}(I).
\tag{7.8}
```

Then

```math
\Xi_J^{ang}(a,b,t)
\le
C_{ang}
|W_J(a,b,t)|^2
+
\mathcal B_J^{ent}(a,b;I)
+
\varepsilon_J^{line}(a,b,t)
+
\varepsilon_J^{gap}(a,b,t)
+
\varepsilon_J^{drift}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{DG}}(a,b,t),
\tag{7.9}
```

hence

```math
\mathcal E_J^{dir}(I)
\le
C_{dir}
\mathcal E_J^{obs}(I).
\tag{7.10}
```

If the loop ledger vanishes on the same branch, then the exact-potential packet
closes through

```text
DG-PSJ -> PSJ+.5 -> PSJ+.SST -> PSJ+.4 -> PSJ+.6 -> PPCJ'.
```

Without cycle exactness, the same estimate together with the residual loop
bound yields the full `PD.70` closure.

### Why this is the right theorem shape

Assumptions `(7.2)`-`(7.5)` are exactly the missing upgrade from the current
rank-two expanding-plane packet to the strip-local window data isolated in
`PSJ+.5`: a rank-one carrier, a simple-top gap floor, corotational drift
control, and an entrance bound. Assumptions `(7.6)`-`(7.7)` are the signless
projective synchronization / selector-calibration step needed to compare the
actual pair projector `P_{ab}` to that carrier. Once those are available, the
triangle inequality behind `D.7m` and the `PSJ+.5` reduction give `(7.9)`,
while `(7.8)` upgrades the pointwise bound to the stripwise family estimate
`(7.10)`.

### What weaker YM/deformation outputs would still fail

Anything that stops at `DG-SF` or `CF-bundle-coercive` still leaves the live
splice open. Those packets only produce:

- a rank-two expanding plane,
- a coarse spectral floor,
- transport-stable bundle coherence.

They do **not** by themselves produce:

- a simple-top rank-one carrier,
- stripwise entrance control,
- sign-compatible projector recovery from the signless packet.

So a theorem weaker than `DG-PSJ` may still be geometrically meaningful, but it
does not beat the current `PSJ+` / `PD.70` frontier.

### Better factorization than a one-shot `PSJ+.YMSST`

A monolithic theorem saying “YM/deformation implies `PSJ+.SST`” is too coarse
for the live repo. It hides exactly where the proof can fail, and it asks the
deformation layer to produce the final NS strain packet in one jump. The
stronger repo-style formulation is the following three-slot stack.

#### Theorem Schema DG-Line

Under `DG-SF` together with a deformation-side one-sided drain law on `(v,G)`,
there exists on a quantitatively large selector-good active family a measurable
rank-one projector field `N_J(a,b,t)\le P_{N_a}` and explicit ledgers
`\varepsilon_J^{line},\varepsilon_J^{gap},\varepsilon_J^{drift},
\mathcal B_J^{ent}` such that `(7.2)`-`(7.5)` hold.

This is the exact step where the deformation layer must turn the transported
rank-two expanding plane into a rank-one directional carrier with:

- simple-top gap floor,
- corotational drift control,
- theorem-safe entrance control.

Here `N_J(a,b,t)\le P_{N_a}` means exactly that the deformation-generated line
field lies **inside** the coarse expanding plane selected by the transported
bundle `N_a`.

#### Theorem Schema DG-Shadow (pair-level shadow-to-segment transfer)

Fix one active strip `I=[t_0,t_1]` and one selector-good active pair family
`G_J^{pair,\angle}`. Assume `DG-Line` on the same family, so there is a
distinguished measurable rank-one carrier projector
`N_J(a,b,s)\le P_{N_a}` together with the gap ledger
`\gamma_\ast-\varepsilon_J^{gap}(a,b,s)`, the carrier drift ledger
`\kappa_\ast+\varepsilon_J^{drift}(a,b,s)`, and the entrance ledger
`\mathcal B_J^{ent}(a,b;I)`. Any upstream deformation-drain contribution is
already absorbed into these `DG-Line` ledgers.

Build the pair-level symmetric shadow tensor
`\widetilde{\mathcal S}_J(a,b,s)\in\operatorname{Sym}(3)` from the same carrier
packet. Assume the shadow-to-segment comparison ledgers

```math
\bigl\|
\mathcal S_J(a,b,s)-\widetilde{\mathcal S}_J(a,b,s)
\bigr\|_{\mathrm{op}}
\le
\varepsilon_J^{sh}(a,b,s),
\tag{7.10a}
```

and

```math
\bigl\|
\partial_s\mathcal S_J(a,b,s)-\partial_s\widetilde{\mathcal S}_J(a,b,s)
\bigr\|_{\mathrm{op}}
\le
\varepsilon_J^{sh,\partial}(a,b,s).
\tag{7.10b}
```

The theorem splits into three internal steps.

`Lemma A` (shadow spectral gap). The shadow tensor has simple top eigenvalue on
the good family, with

```math
\lambda_1\!\bigl(\widetilde{\mathcal S}_J(a,b,s)\bigr)
-
\lambda_2\!\bigl(\widetilde{\mathcal S}_J(a,b,s)\bigr)
\ge
\gamma_\ast-\varepsilon_J^{gap}(a,b,s)
>0.
\tag{7.10c}
```

Consequently
`N_J(a,b,s)=\Pi_{\max}\bigl(\widetilde{\mathcal S}_J(a,b,s)\bigr)`. This is the
carrier-to-shadow alignment step: once `(7.10c)` holds, the shadow construction
introduces no extra projector error beyond the `DG-Line` carrier itself.

`Lemma B` (shadow-to-segment transfer). Define

```math
\gamma_J^{sh}(a,b,s)
:=
\gamma_\ast-\varepsilon_J^{gap}(a,b,s)-2\varepsilon_J^{sh}(a,b,s).
\tag{7.10d}
```

Whenever `\gamma_J^{sh}(a,b,s)>0`, the true segment strain tensor
`\mathcal S_J(a,b,s)` has simple top projector
`P_{J,\top}^{seg}(a,b,s)` and satisfies the transferred gap bound

```math
g_J(a,b,s)\ge \gamma_J^{sh}(a,b,s),
\tag{7.10e}
```

and the Davis-Kahan projector transfer estimate

```math
d_{\mathrm{proj}}\!\bigl(
N_J(a,b,s),P_{J,\top}^{seg}(a,b,s)
\bigr)^2
\le
C\frac{\varepsilon_J^{sh}(a,b,s)^2}{\gamma_J^{sh}(a,b,s)^2}.
\tag{7.10f}
```

`Lemma C` (drift and entrance transfer). The true segment-top projector inherits
the `DG-Line` drift and entrance ledgers up to the shadow-transfer error:

```math
\bigl\|
\partial_s P_{J,\top}^{seg}(a,b,s)
-[K_J^{seg}(a,b,s),P_{J,\top}^{seg}(a,b,s)]
\bigr\|_{\mathrm{op}}
\le
\kappa_\ast
+
\varepsilon_J^{drift}(a,b,s)
+
\varepsilon_J^{SST,\partial}(a,b,s),
\tag{7.10g}
```

for an explicit derivative transfer ledger `\varepsilon_J^{SST,\partial}`
controlled by `\varepsilon_J^{sh},\varepsilon_J^{sh,\partial}` and the same gap
floor, and

```math
d_{\mathrm{proj}}\!\bigl(
P_{ab}(t_0),P_{J,\top}^{seg}(a,b,t_0)
\bigr)^2
\le
2\mathcal B_J^{ent}(a,b;I)
+
C\frac{\varepsilon_J^{sh}(a,b,t_0)^2}{\gamma_J^{sh}(a,b,t_0)^2}.
\tag{7.10h}
```

Therefore `DG-Line + DG-Shadow` exports a transferred geometric packet for the
true segment-top projector: gap `\gamma_J^{sh}`, drift
`\kappa_\ast+\varepsilon_J^{drift}+\varepsilon_J^{SST,\partial}`, and entrance
ledger given by `(7.10h)`. This is the precise point where the
deformation-generated carrier becomes a theorem-safe physical simple-top packet
on the NS strip.

#### Theorem Schema DG-Cal

Assume `DG-Line` and the signless pair packet on the same active family. Then
there exists a measurable rank-one shadow projector `\widehat P_J(a,b,t)` and
errors `\operatorname{Err}_{J,\mathrm{sync}},
\operatorname{Err}_{J,\mathrm{DG}}` satisfying `(7.6)`-`(7.8)`.

This is the exact selector-calibration / projective synchronization step. It is
the point where the signless packet `W_J` is forced to recover the directional
carrier selected by the deformation layer.

#### Corollary DG-SST (quantitative shadow-to-simple-top transfer)

Assume `DG-Line` and `DG-Shadow`, and add the exact segment transport law

```math
\partial_s\xi_{ab}(s)
=
\mathcal M_J(a,b,s)\,\xi_{ab}(s),
\qquad
\mathcal M_J(a,b,s)=\mathcal S_J(a,b,s)+K_J^{seg}(a,b,s).
\tag{7.10i}
```

Define

```math
\gamma_J^{SST}(a,b,s)
:=
\gamma_J^{sh}(a,b,s),
\tag{7.10j}
```

```math
\kappa_J^{SST}(a,b,s)
:=
\kappa_\ast+\varepsilon_J^{drift}(a,b,s)
\,+\,
\varepsilon_J^{SST,\partial}(a,b,s),
\tag{7.10k}
```

```math
q_J^{SST}(a,b;I)
:=
2\mathcal B_J^{ent}(a,b;I)
\,+\,
C\frac{\varepsilon_J^{sh}(a,b,t_0)^2}{\gamma_J^{sh}(a,b,t_0)^2}.
\tag{7.10l}
```

If `\gamma_J^{SST}>0`, then the exact segment transport identity together with
`(7.10e)`-`(7.10h)` verifies the geometric clauses of `PSJ+.5`, hence the full
window packet `PSJ+.5`, and therefore the exact branch-local simple-top
hypothesis `PSJ+.SST` on that strip.

In the exact limit where

```math
\mathcal B_J^{ent}
=
\varepsilon_J^{gap}
=
\varepsilon_J^{drift}
=
\varepsilon_J^{sh}
=
\varepsilon_J^{sh,\partial}
=
0,
\tag{7.10m}
```

the strip closes with

```text
exact DG-Line + exact DG-Shadow -> exact PSJ+.SST -> PSJ+.4 -> PSJ+.6 -> PPCJ'.
```

Equivalently, in logical export form,

```text
DG-Line
+ DG-Shadow
-> transferred gap / drift / entrance packet for P_{J,\top}^{seg}
+ exact segment transport
-> PSJ+.5
-> PSJ+.SST.
```

#### Corollary DG-PSJ

Assume `DG-Line`, `DG-Shadow`, and `DG-Cal`.

Then `(7.9)`-`(7.10)` hold. On the cycle-exact branch this implies the
`PSJ+.5` window packet, hence `PSJ+.SST`, hence `PSJ+.4 -> PSJ+.6 -> PPCJ'`.
On the general branch, together with the loop ledger, it yields the full
selector-adapted defect theorem `PD.70`.

### Why this is better than a direct `PSJ+.YMSST` theorem

The one-shot theorem shape is weaker mathematically because it leaves too much
of the burden hidden inside undefined “descent” and “shadow” maps. In the live
packet, the proof obligations are sharper:

1. build a rank-one carrier from deformation geometry;
2. transfer that carrier to the true segment-top packet with gap, drift, and
   entrance control;
3. synchronize the signless pair packet to that carrier;
4. export the result through `PSJ+.5` / `PD.70`.

That factorization is better because it matches the actual splice points on
disk, and each slot is independently falsifiable.

### Sharpened closure of the remaining A-D bridge lemmas

The current live frontier can be sharpened one step further. The right closure
route is

```text
DG-Line^sharp -> DG-Shadow^sharp -> DG-SST -> DG-Cal^{exact,sharp} -> DG-PSJ,
```

with one extra graph-kernel theorem only on the non-exact branch. The four live
burdens are then the following.

#### (A) `DG-Line^sharp`: prove an in-plane anisotropy drain law in a fixed carrier frame

Let `P=P_{N_a}` be the deformation-generated coarse expanding plane. To avoid
frame ambiguity, work with the reduced cocycle on a fixed copy of `\mathbf R^2`:
choose an isometry `U_P:\mathbf R^2\to\operatorname{Ran}P`, define
`H_J:=U_P^\ast G_J^{seg}U_P`, and set

```math
A_J:=H_J^\ast H_J\in\operatorname{Sym}^+(2).
\tag{7.11}
```

If

```math
\partial_t H_J=K_{\parallel,J}H_J+E_{H,J},
\tag{7.12}
```

then

```math
\partial_t A_J
=
H_J^\ast K_{\parallel,J}^\ast H_J
+
H_J^\ast K_{\parallel,J}H_J
+
E_{A,J},
\tag{7.13}
```

with `E_{A,J}:=E_{H,J}^\ast H_J+H_J^\ast E_{H,J}`. The simpler formula
`\partial_t A_J=K_{\parallel,J}^\ast A_J+A_JK_{\parallel,J}+E_{A,J}` is valid
only after this fixed-frame reduction. Writing
`S_{\parallel,J}:=\tfrac12(K_{\parallel,J}+K_{\parallel,J}^\ast)` and
`A_Ju_i=\lambda_i u_i`, one gets

```math
\partial_t\log\frac{\lambda_2}{\lambda_1}
=
2\Bigl(
\langle u_2,S_{\parallel,J}u_2\rangle
-
\langle u_1,S_{\parallel,J}u_1\rangle
\Bigr)
+
\frac{\langle u_2,E_{A,J}u_2\rangle}{\lambda_2}
-
\frac{\langle u_1,E_{A,J}u_1\rangle}{\lambda_1}.
\tag{7.14}
```

So `DG-Line^sharp` reduces to a one-sided anisotropy theorem on the persistent
carrier:

```math
\langle u_1,S_{\parallel,J}u_1\rangle
-
\langle u_2,S_{\parallel,J}u_2\rangle
\ge
\delta_\ast-r_J(t),
\tag{7.15}
```

together with a relative Gramian error bound

```math
\|E_{A,J}(t)\|_{\mathrm{op}}
\le
\varepsilon_{A,J}(t)\lambda_1(t),
\tag{7.16}
```

and an a priori strip bootstrap on `\lambda_1/\lambda_2` on the same active
family. Under those hypotheses, Gronwall gives the spectral-ratio drain law and
therefore the rank-one carrier gap. This is a genuine new theorem; the present
repo does not yet derive `(7.15)` from `DG-SF` alone.

#### (B) `DG-Shadow^sharp`: close the shadow transfer by commutator and leakage bounds

Let `N_J` be the line carrier from `DG-Line^sharp`, set `Q_J:=P-N_J` and
`R_J:=I-P`, and write

```math
\widetilde{\mathcal S}_J
:=
N_J\mathcal S_JN_J
+
Q_J\mathcal S_JQ_J
+
R_J\mathcal S_JR_J.
\tag{7.17}
```

Then `N_J` is an exact top eigenprojector of the shadow tensor
`\widetilde{\mathcal S}_J`, and the only remaining burden is to control the
off-diagonal blocks. On `\operatorname{Ran}P`, if
`A_J=\lambda_1N_J+\lambda_2Q_J`, then

```math
[A_J,P\mathcal S_JP]
=
(\lambda_1-\lambda_2)
\bigl(
N_J\mathcal S_JQ_J-Q_J\mathcal S_JN_J
\bigr),
\tag{7.18}
```

so

```math
\|N_J\mathcal S_JQ_J+Q_J\mathcal S_JN_J\|_{\mathrm{op}}
\le
C_{co}
\frac{\|[A_J,P\mathcal S_JP]\|_{\mathrm{op}}}{\lambda_1-\lambda_2}.
\tag{7.19}
```

Equivalently, since the segment transport matrix splits as
`\mathcal M_J=\mathcal S_J+K_J^{seg}`, the corotational derivative
`D_t^{co}N_J:=\partial_tN_J-[K_J^{seg},N_J]` satisfies

```math
\partial_tN_J-[\mathcal M_J,N_J]
=
D_t^{co}N_J-[\mathcal S_J,N_J].
\tag{7.20}
```

Thus the in-plane shadow bound is forced by two inputs:

```math
\|D_t^{co}N_J\|_{\mathrm{op}}
\quad\text{and}\quad
\|\partial_tN_J-[\mathcal M_J,N_J]\|_{\mathrm{op}}.
\tag{7.21}
```

For the perpendicular leakage,

```math
\|P\mathcal S_JR_J+R_J\mathcal S_JP\|_{\mathrm{op}}
\le
2\|[\mathcal S_J,P]\|_{\mathrm{op}}.
\tag{7.22}
```

So `DG-Shadow^sharp` reduces to exactly two theorems:

1. an approximate-commutation theorem controlling `[A_J,P\mathcal S_JP]` or,
   equivalently, `(7.21)`;
2. a plane-leakage theorem controlling `[\mathcal S_J,P]`.

Once those hold, Weyl and Davis-Kahan transfer the simple-top gap and projector
comparison to the true segment strain, and the drift/entrance ledgers propagate
exactly as in `DG-SST`.

#### (C) `DG-Cal^{exact,sharp}`: anchored quadratic calibration on the exact branch

On the cycle-exact branch, the correct target is a local coercivity theorem for
the anchored signless defect

```math
F_J(P):=
\bigl|W_J(P,N_J,\text{local exact packet})\bigr|^2
\tag{7.23}
```

near the aligned state `P=N_J`. Parameterize a neighborhood of `N_J` inside the
rank-one projector manifold by

```math
P(H)=N_J+H+R_J(H),
\qquad
\|R_J(H)\|_F\le C_{chart}\|H\|_F^2,
\qquad
H\in T_{N_J}\mathbf{RP}^2.
\tag{7.24}
```

Then the exact theorem burden is:

```math
F_J(N_J)=0,
\qquad
DF_J(N_J)=0,
\tag{7.25}
```

and there exist symmetric templates `B_{\alpha,J}` with positive weights
`\omega_{\alpha,J}` such that

```math
\frac12D^2F_J(N_J)[H,H]
=
\sum_\alpha \omega_{\alpha,J}\langle B_{\alpha,J},H\rangle^2
\tag{7.26}
```

obeys the tangent-frame coercivity bounds

```math
c_-\|H\|_F^2
\le
\sum_\alpha \omega_{\alpha,J}\langle B_{\alpha,J},H\rangle^2
\le
c_+\|H\|_F^2.
\tag{7.27}
```

Then Taylor expansion yields

```math
c_1\,d_{\mathrm{proj}}(P,N_J)^2
\le
F_J(P)
\le
c_2\,d_{\mathrm{proj}}(P,N_J)^2
\tag{7.28}
```

for `d_{\mathrm{proj}}(P,N_J)` small, which is exactly the local quadratic
calibration needed on the exact branch. The external phase-retrieval and local
angular-synchronization literature supports the *shape* of this theorem, but it
does not prove `(7.26)`-`(7.28)` for the present Navier-Stokes observable
`W_J`; that Hessian computation remains a live repo theorem.

#### (D) General branch: lifted local recovery plus one graph-kernel theorem

Away from the cycle-exact branch, the local anchor is not enough by itself. One
needs a local lifted recovery theorem producing nodewise projectors
`\widehat P_i` from the signless packet:

```math
\|\widehat P_i-N_i\|_F
\le
e_i,
\qquad
e_i^2
\le
C_e
|W_i|^2+\operatorname{Err}_{i,\mathrm{sync}}.
\tag{7.29}
```

Then the observable kernel

```math
C_{ij}^{obs}
:=
\omega_{ij}\operatorname{tr}(\widehat P_i\widehat P_j)
\tag{7.30}
```

satisfies the bilinear comparison

```math
|C_{ij}^{obs}-C_{ij}|
\le
C_{bil}
\omega_{ij}
\bigl(
e_i+e_j+e_ie_j
\bigr),
\qquad
C_{ij}:=\omega_{ij}\operatorname{tr}(N_iN_j).
\tag{7.31}
```

So the non-exact branch has one extra theorem burden beyond local recovery:
show that the active-family graph and kernel satisfy the symmetry,
nondegeneracy, and connectivity hypotheses needed for the synchronization step.

#### Exact-branch formal discharge once `DG-Cal^{exact,sharp}` is local and coercive

The exact branch can now be pushed one step farther than the generic burden
statement above.

##### Theorem `DG-Exact^{close}`

Assume `DG-Line^{\sharp}` and `DG-Shadow^{\sharp}` on a backward strip
`I=[t-\tau,t]`. Assume moreover that the anchored defect functional

```math
F_J(P):=
\bigl|W_J(P,N_J,\text{local exact packet})\bigr|^2
\tag{7.32}
```

is `C^3` on the projective ball
`B_{\rho_\ast}(N_J)\subset\mathbf{RP}^2`, and that:

1. the Hessian coercivity bounds `(7.26)`-`(7.27)` hold there;
2. the Taylor remainder satisfies

```math
\bigl|
F_J(P(H))
-\tfrac12D^2F_J(N_J)[H,H]
\bigr|
\le
C_{3,J}\|H\|_F^3;
\tag{7.33}
```

3. the active strip stays inside the calibration cone:

```math
d_{\mathrm{proj}}\!\bigl(P_{ab}(s),N_J(a,b,s)\bigr)
\le
\rho_\ast
\qquad
\text{for a.e. }(a,b,s)\in G_J^{pair,\angle}\times I.
\tag{7.34}
```

One installed route to `(7.34)` is:
`DG-SST -> PSJ+.4` together with the projector comparison bound `(7.10e)`.

Then there is a quantitative constant `C_{\mathrm{cal}}` depending only on the
local coercivity data such that

```math
d_{\mathrm{proj}}\!\bigl(P_{ab}(s),N_J(a,b,s)\bigr)^2
\le
C_{\mathrm{cal}}
\bigl|W_J(a,b,s)\bigr|^2
\tag{7.35}
```

on the same strip. Consequently,

```math
\Xi_J^{ang}(a,b,s)
\le
C_{sh}
\bigl|W_J(a,b,s)\bigr|^2
+
\frac{\varepsilon_J^{sh}(a,b,s)^2}{\gamma_J^{sh}(a,b,s)^2},
\tag{7.36}
```

and after integration,

```math
\mathcal E_J^{sh}(I)
:=
\int_I\!\!\int_{G_J^{pair,\angle}}
\frac{\varepsilon_J^{sh}(a,b,s)^2}{\gamma_J^{sh}(a,b,s)^2}
\,d\mu_J^{pair}(a,b)\,ds,
\tag{7.37a}
```

```math
\mathcal E_J^{dir}(I)
\le
C_{sh}'
\mathcal E_J^{obs}(I)
+
\mathcal E_J^{sh}(I).
\tag{7.37b}
```

In the exact shadow limit
`\varepsilon_J^{sh}=\varepsilon_J^{sh,\partial}=\varepsilon_J^{gap}=\varepsilon_J^{drift}=0`,
the cycle-exact branch closes with `\widehat P_J:=N_J`, so `PSJ`, `PPCJ'`,
`CPS.1`, and `CPS.2` all become formal consequences of the anchored
calibration theorem.

**Proof.**
Inside `B_{\rho_\ast}(N_J)`, the Taylor expansion `(7.33)` and the coercive
quadratic form `(7.26)`-`(7.27)` give

```math
c_1\,d_{\mathrm{proj}}(P,N_J)^2
\le
F_J(P)
\le
c_2\,d_{\mathrm{proj}}(P,N_J)^2.
\tag{7.38}
```

Evaluate at `P=P_{ab}(s)` to obtain `(7.35)`. The angle ledger is
`\Xi_J^{ang}=\tfrac12\|P_{ab}-P_{J,\top}^{seg}\|_F^2`, so the Frobenius triangle
inequality and `(7.10e)` yield `(7.36)`. Integrate to obtain `(7.37b)`. ∎

This is the clean exact-branch discharge: the deformation-generated carrier is
itself the synchronized projector, and no extra graph/globalization theorem is
needed once the local Hessian theorem is proved.

#### General-branch formal discharge as local-to-global projective gluing

The non-exact branch still needs a genuine globalization theorem. The cleanest
repo-native form is not a raw orientation theorem, but a local-to-global
projective gluing theorem on the active overlap graph.

##### Theorem `DG-Glue^{gen,\sharp}`

Let `\{U_i\}_{i\in\mathcal I}` be a measurable cover of the active strip by
local projective windows. On each `U_i`, let `\widetilde S_{J,i}` be a local
observable PSD surrogate with simple top eigenprojector
`\widehat P_{J,i}:=\Pi_{\max}(\widetilde S_{J,i})`. Assume:

1. each local section satisfies a pointwise observable readout bound

```math
\bigl\|
P_{ab}(t)-\widehat P_{J,i}(a,b,t)
\bigr\|_F^2
\le
C_{\mathrm{loc}}\bigl|W_J(a,b,t)\bigr|^2
+
\operatorname{err}_{J,i}^{loc}(a,b,t)
\tag{7.39}
```

for almost every `(a,b,t)\in U_i`;

2. on overlaps `U_i\cap U_j`, the mismatch

```math
\delta_{ij}(a,b,t)
:=
d_{\mathrm{proj}}\!\bigl(
\widehat P_{J,i}(a,b,t),\widehat P_{J,j}(a,b,t)
\bigr)^2
\tag{7.40}
```

obeys the weighted overlap bound

```math
\sum_{i\sim j}
\int_{U_i\cap U_j}
\omega_{ij}(a,b,t)\,\delta_{ij}(a,b,t)
\le
C_{ov}
\mathcal E_J^{overlap}(I);
\tag{7.41}
```

3. the active overlap graph is symmetric, nondegenerate, and connected, with
weighted graph spectral gap `\lambda_{\mathrm{glue}}(I)>0`;

4. the glued projective field compares either to the deformation carrier `N_J`
or directly to `P_{J,\top}^{seg}`, with residual ledger
`\operatorname{Err}_{J,\mathrm{glue-top}}`.

Then there exists a measurable global projective field `\widehat P_J` on the
active family such that

```math
\sum_{i\in\mathcal I}
\int_{U_i}
\bigl\|
\widehat P_{J,i}-\widehat P_J
\bigr\|_F^2
\le
C_{glue}
\lambda_{\mathrm{glue}}(I)^{-1}
\mathcal E_J^{overlap}(I),
\tag{7.42}
```

Define the local readout budget

```math
 \mathcal E_J^{loc}(I)
:=
\sum_{i\in\mathcal I}
\int_{U_i}
\operatorname{err}_{J,i}^{loc}(a,b,t),
\tag{7.43a}
```

Then the global field obeys the integrated comparison

```math
\int_I\!\!\int_{G_J^{pair,\angle}}
\bigl\|
P_{ab}(t)-\widehat P_J(a,b,t)
\bigr\|_F^2
\le
C_{loc}
\int_I\!\!\int_{G_J^{pair,\angle}}
\bigl|W_J(a,b,t)\bigr|^2
+
\mathcal E_J^{loc}(I)
+
\lambda_{\mathrm{glue}}(I)^{-1}\mathcal E_J^{overlap}(I).
\tag{7.43b}
```

If in addition

```math
\mathcal E_{J,\mathrm{glue-top}}(I)
:=
\int_I\!\!\int_{G_J^{pair,\angle}}
\bigl\|
\widehat P_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2,
\tag{7.44}
```

and the full general-branch closure follows:

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{PD}
\mathcal E_J^{obs}(I)
+
\mathcal E_J^{loc}(I)
+
\mathcal E_J^{overlap}(I)
+
\mathcal E_{J,\mathrm{glue-top}}(I).
\tag{7.45}
```

So `PD.70` is formal once the local windows, the overlap/gluing theorem, and
the comparison-to-top projector theorem are all installed.

**Proof.**
The overlap estimate `(7.41)` and the spectral gap
`\lambda_{\mathrm{glue}}(I)>0` yield a global section `\widehat P_J` whose
distance from the local sections is controlled by the projective Poincare/synchronization
estimate `(7.42)`. Integrate the triangle inequality with the local readout
bound `(7.39)` to obtain `(7.43b)`. Then combine `(7.43b)` with `(7.44)`
exactly as in `CPS.4`-`CPS.5` to obtain the directional ledger and integrate. ∎

The kernel formulation `(7.29)`-`(7.31)` is the algebraic version of the same
gluing theorem: the observable kernel is one way to package the overlap mismatch
ledger on the active graph. The local-projective-window formulation is better
for this repo because it matches the existing `PSJ+` surrogate construction.

#### What is formal after (A)-(D)

Everything downstream of these four lemmas is now genuinely formal:

1. `(A)` gives the rank-one line carrier and its stripwise gap;
2. `(B)` turns that carrier into a theorem-safe segment simple-top packet;
3. `(C)` plus `DG-Exact^{close}` gives exact-branch quadratic readout and closes
   the cycle-exact projective branch;
4. `(D)` plus `DG-Glue^{gen,\sharp}` gives the general-branch synchronization /
   gluing package.

After that point, only Gronwall, Weyl, Davis-Kahan, and the already-installed
projective splice remain.

#### One further reduction of each live wall

The four burdens above can each be pushed one step farther before the repo runs
out.

##### `(A')` `DG-Line^{\mathrm{dom}}`: reduce the line-carrier wall to a dominated-splitting estimate

For `t\ge s` on the active strip, let `H_J(t,s)` denote the fixed-frame reduced
cocycle from `(7.12)` and let `\sigma_1(H_J(t,s))\ge \sigma_2(H_J(t,s))>0` be
its singular values. A stronger but cleaner sufficient condition than `(7.15)`
is the stripwise singular-value gap

```math
\frac{\sigma_2(H_J(t,s))}{\sigma_1(H_J(t,s))}
\le
C_{\mathrm{dom}}e^{-\delta_{\mathrm{dom}}(t-s)}
+
\operatorname{Err}_{J,\mathrm{dom}}(t,s).
\tag{7.46}
```

In dimension two, a uniform exponential singular-value separation is exactly the
classical dominated-splitting criterion for a rank-one invariant bundle. Thus
`DG-Line^{\sharp}` can be closed either by the differential drain route
`(7.14)`-`(7.16)` or by proving `(7.46)` directly and then invoking the
dominated-splitting / singular-value-gap upgrade for the reduced cocycle. The
remaining nonformal work is therefore the deformation-side theorem that
produces one of these two equivalent gap packets on the persistent carrier.

##### `(B')` `DG-Shadow^{\mathrm{dc}}`: the shadow wall is a double-commutator theorem

Since `Q_J=P-N_J` and `R_J=I-P`, the off-diagonal shadow blocks from
`DG-Shadow^{\sharp}` satisfy the exact identities

```math
[N_J,[N_J,\mathcal S_J]]
=
N_J\mathcal S_JQ_J+Q_J\mathcal S_JN_J,
\tag{7.47}
```

and

```math
[P,[P,\mathcal S_J]]
=
P\mathcal S_JR_J+R_J\mathcal S_JP.
\tag{7.48}
```

So `DG-Shadow^{\sharp}` is equivalent to proving two double-commutator bounds:

```math
\|[N_J,[N_J,\mathcal S_J]]\|_{\mathrm{op}}
\le
\varepsilon_{J,\parallel}^{sh},
\qquad
\|[P,[P,\mathcal S_J]]\|_{\mathrm{op}}
\le
\varepsilon_{J,\perp}^{sh}.
\tag{7.49}
```

The first is the same-surface carrier-commutator theorem on the selected line;
the second is the perpendicular plane-leakage theorem on the coarse expanding
plane. Once `(7.49)` holds, the shadow tensor `(7.17)` differs from the true
segment strain by a controlled operator perturbation, and the rest is the
installed Weyl/Davis-Kahan passage.

##### `(C')` `DG-Cal^{\mathrm{exact,lin}}`: the Hessian wall is really a tangent-frame test for `DW_J`

Write the exact anchored observable as

```math
\mathcal W_J(P):=W_J(P,N_J,\text{local exact packet}),
\qquad
F_J(P)=\|\mathcal W_J(P)\|^2.
\tag{7.50}
```

Assume `\mathcal W_J` is `C^2` on `B_{\rho_\ast}(N_J)` and
`\mathcal W_J(N_J)=0`. Then

```math
DF_J(N_J)=0,
\qquad
\frac12D^2F_J(N_J)[H,H]
=
\|D\mathcal W_J(N_J)[H]\|^2
\quad
\text{for }H\in T_{N_J}\mathbf{RP}^2.
\tag{7.51}
```

Therefore the coercive Hessian bounds `(7.26)`-`(7.27)` are equivalent to the
single first-derivative frame condition

```math
m_-\|H\|_F^2
\le
\|D\mathcal W_J(N_J)[H]\|^2
\le
m_+\|H\|_F^2.
\tag{7.52}
```

So the exact remaining theorem on the cycle-exact branch is not an abstract
second-variation problem. It is:

1. compute the tangent linearization `D\mathcal W_J(N_J)`;
2. verify that its two scalar readout channels span
   `T_{N_J}\mathbf{RP}^2`.

Once `(7.52)` holds, `DG-Cal^{exact,\sharp}` and hence `DG-Exact^{close}` are
formal by Taylor's theorem.

##### `(D')` `DG-Glue^{\mathrm{conn}}`: the gluing wall is a connection-Laplacian problem

On each local window `U_i`, choose a measurable local lift `v_i` with
`\widehat P_{J,i}=v_iv_i^\ast`. On overlaps, choose the best sign transition by

```math
\rho_{ij}(a,b,t)
:=
\operatorname{sign}\langle v_i(a,b,t),v_j(a,b,t)\rangle
\in\{\pm1\}.
\tag{7.53}
```

Then the projective mismatch controls the lifted edge frustration:

```math
1-\langle v_i,\rho_{ij}v_j\rangle^2
=
d_{\mathrm{proj}}(\widehat P_{J,i},\widehat P_{J,j})^2
=
\delta_{ij}.
\tag{7.54}
```

Thus the non-exact branch gluing problem is the finite-sign synchronization
problem for the local lifts on the active overlap graph. The remaining work
splits into exactly two pieces:

1. prove the local lifted recovery theorem `(7.29)` on each `U_i`;
2. prove the overlap graph has the symmetry, nondegeneracy, and spectral-gap
   hypotheses needed to convert the frustration sum `(7.41)` into the global
   projective field estimate `(7.42)`.

On the Cauchy-Green local route, the first step is already reduced on disk by
`D.7mn` and `D.7mq` to a cocycle linearization theorem and a selector-shape
theorem. After that, the remaining globalization step is standard spectral
connection-Laplacian synchronization on the active overlap graph.

## Source anchors

- [lagrangian-material-derivative-recheck-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-material-derivative-recheck-note.md)
- [hopf-shuffle-survivor-drain-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/hopf-shuffle-survivor-drain-program.md)
- [tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md)
- [transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md)
- [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md)
