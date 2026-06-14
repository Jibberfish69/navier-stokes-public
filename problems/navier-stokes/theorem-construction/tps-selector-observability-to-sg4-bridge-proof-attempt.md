# TPS Selector-Observability To SG.4 Bridge Proof Attempt

## Status

This note records the strongest version of the pair-defect-to-`SG.4` bridge that
is currently provable from the installed packets.

In the current route language, this is the budget half of the
`SG.4-production` packet: it packages the residual defect ledger that still has
to be closed before `SG.4A` or `SG.4B` can fire.

The residual calibration theorem itself is isolated in
`spectral-transversality-in-measure-implies-pd70.md`; this note keeps the
selector-observability reduction that feeds that theorem.

It proves:

```math
\text{pair-defect observability/coercivity}
\Longrightarrow
\text{one-sided control of }[\lambda_J-\mathfrak s_J]_+
\Longrightarrow
SG.4B,
```

provided one has one additional selector-calibration inequality turning the
signless pair defect into the one-sided directional deficit.

What remains new mathematics is exactly that calibration step.

## Route Position

This note is not a dead-endpoint / participation-failure theorem surface. By
[mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md),
the separate Law 2 no-drop theorem must first exclude the dead-endpoint line. Only
then does this selector packet become the active live frontier.

So this note should be read as the active surviving one-field consumer wall on
the Law-2-survivor side: it converts the surviving pair-defect PDE packet into
the one-sided selector deficit needed for `SG.4`, rather than carrying any
remaining dead-endpoint burden.

## Installed ingredients

From the pair-defect packet we already have the two-point PDE

```math
\partial_t W_J
+
v_J(x,t)\cdot\nabla_x W_J
+
v_J(y,t)\cdot\nabla_y W_J
-\nu(\Delta_x+\Delta_y)W_J
=
-\nabla_x\cdot(r_J(x,t)K_J)
-\nabla_y\cdot(r_J(y,t)K_J),
\tag{A.1}
```

the energy closure

```math
\|W_J(t)\|_{L^2_{x,y}}^2
+\nu\int_{t_0}^t\|\nabla_{x,y}W_J(s)\|_{L^2_{x,y}}^2\,ds
\le
C_A
\|W_J(t_0)\|_{L^2_{x,y}}^2
+\int_{t_0}^t
\|r_J(s)\|_{L^\infty_x}^2
\|K_J(s)\|_{L^2_{x,y}}^2\,ds,
\tag{A.2}
```

and the defect-to-deviation bridge

```math
\Delta_J
\le
C_{\mathrm{bridge}}\,
\mathfrak D_J,
\qquad
\mathfrak D_J
:=
\sup_{0\le t\le T_J}\|W_J(t)\|_{\mathcal X_J}.
\tag{A.3}
```

From `SG.4D`, we also already have the exact selector-side reduction:

```math
\mathfrak d_J^-(a,b,t):=[\lambda_J(t)-\mathfrak s_J(a,b,t)]_+,
\qquad
B_J^-(a,b;I):=\int_I \mathfrak d_J^-(a,b,t)\,dt,
\tag{A.4}
```

and

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_I\lambda_J(s)\,ds-B_J^-(a,b;I).
\tag{A.5}
```

So once one controls `B_J^-` on a large good family, `SG.4B` follows.

## Proposition A (installed reduction from one-sided budget to `SG.4B`)

Let `\mu_J^{pair}` be a finite measure on a selector-good active pair family
`G_J^{pair}`. Assume

```math
\int_{G_J^{pair}}\big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
\mathcal E_J^-(I).
\tag{A.6}
```

Then for every `\eta>0`, the exceptional set

```math
\mathfrak B_J(\eta;I)
:=
\big\{(a,b)\in G_J^{pair}:B_J^-(a,b;I)>\eta\big\}
\tag{A.7}
```

obeys

```math
\mu_J^{pair}\big(\mathfrak B_J(\eta;I)\big)
\le
\eta^{-2}\mathcal E_J^-(I),
\tag{A.8}
```

and every pair outside `\mathfrak B_J(\eta;I)` satisfies

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_I\lambda_J(s)\,ds-\eta.
\tag{A.9}
```

In particular, if

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta,
\tag{A.10}
```

then the per-visit gain hypothesis `SG.4B` holds on
`G_J^{pair}\setminus\mathfrak B_J(\eta;I)`.

### Proof

This is exactly the installed `SG.4D`/`PD.69` extraction:
Chebyshev gives `(A.8)`, and `(A.9)` follows from `(A.5)` on the complement of
the exceptional set. Condition `(A.10)` upgrades `(A.9)` to the `SG.4B`
per-visit gain statement.

So the real missing theorem is not the `SG.4B` extraction. It is the production
of the averaged one-sided budget `(A.6)`, which is the minimal selector
calibration left on the torus-first branch.

## Theorem Candidate B (minimal selector-calibration bridge)

Fix one admissible strip `I=[t_0,t_1]` and one selector-good active pair family
`G_J^{pair}` with finite measure `\mu_J^{pair}`.

Assume there exists a nonnegative selector observation functional

```math
\mathcal O_J[W_J](a,b,t)\ge 0
\qquad
\text{for }(a,b)\in G_J^{pair},\ t\in I,
\tag{B.1}
```

and a calibration error `\operatorname{Err}_J(a,b,t)\ge 0` such that for a.e.
`(a,b,t)` one has the pointwise selector calibration

```math
\mathfrak d_J^-(a,b,t)
\le
C_{\mathrm{cal}}\,
\mathcal O_J[W_J](a,b,t)
+
\operatorname{Err}_J(a,b,t).
\tag{B.2}
```

Assume moreover the observability/coercivity estimate

```math
\int_I\int_{G_J^{pair}}
\big(\mathcal O_J[W_J](a,b,t)\big)^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs}}
\Big(
\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2
+\nu\int_I\|\nabla_{x,y}W_J(t)\|_{L^2_{x,y}}^2\,dt
+\mathcal R_J(I)
\Big),
\tag{B.3}
```

and the calibration-error budget

```math
\int_I\int_{G_J^{pair}}
\big(\operatorname{Err}_J(a,b,t)\big)^2
\,d\mu_J^{pair}(a,b)\,dt
\le
\mathcal E_J^{cal}(I).
\tag{B.4}
```

Then the selector-adapted one-sided defect bound holds:

```math
\int_I\int_{G_J^{pair}}
\big(\mathfrak d_J^-(a,b,t)\big)^2
\,d\mu_J^{pair}(a,b)\,dt
\le
\mathfrak F_J^{def}(I),
\tag{B.5}
```

where

```math
\mathfrak F_J^{def}(I)
:=
2C_{\mathrm{cal}}^2C_{\mathrm{obs}}
\Big(
\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2
+\nu\int_I\|\nabla_{x,y}W_J(t)\|_{L^2_{x,y}}^2\,dt
+\mathcal R_J(I)
\Big)
+2\mathcal E_J^{cal}(I).
\tag{B.6}
```

Consequently,

```math
\int_{G_J^{pair}}\big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
|I|\,\mathfrak F_J^{def}(I),
\tag{B.7}
```

and therefore `SG.4B` holds on a refined large good family whenever

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta.
\tag{B.8}
```

### Proof

From `(B.2)` and `(x+y)^2\le 2x^2+2y^2`,

```math
\big(\mathfrak d_J^-(a,b,t)\big)^2
\le
2C_{\mathrm{cal}}^2\big(\mathcal O_J[W_J](a,b,t)\big)^2
+2\big(\operatorname{Err}_J(a,b,t)\big)^2.
\tag{B.9}
```

Integrate `(B.9)` over `I\times G_J^{pair}` and apply `(B.3)` and `(B.4)` to
obtain `(B.5)` with the budget `(B.6)`.

Now use Cauchy-Schwarz in time:

```math
\big(B_J^-(a,b;I)\big)^2
=
\Big(\int_I \mathfrak d_J^-(a,b,t)\,dt\Big)^2
\le
|I|\int_I \big(\mathfrak d_J^-(a,b,t)\big)^2\,dt.
\tag{B.10}
```

Integrating `(B.10)` over `G_J^{pair}` gives `(B.7)`.
Finally apply Proposition A with

```math
\mathcal E_J^-(I):=|I|\,\mathfrak F_J^{def}(I).
\tag{B.11}
```

This yields the refined good family and the `SG.4B` gain statement.

## Corollary C (explicit forcing budget from the pair-defect PDE)

Assume the hypotheses of Theorem B. Then `(A.2)` gives

```math
\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2
+\nu\int_I\|\nabla_{x,y}W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
C_C
\|W_J(t_0)\|_{L^2_{x,y}}^2
+\int_I
\|r_J(t)\|_{L^\infty_x}^2
\|K_J(t)\|_{L^2_{x,y}}^2\,dt.
\tag{C.1}
```

Therefore the one-sided defect budget `(B.6)` is controlled by

```math
\mathfrak F_J^{def}(I)
\le
C_F
C_{\mathrm{cal}}^2C_{\mathrm{obs}}
\Big(
\|W_J(t_0)\|_{L^2_{x,y}}^2
+\int_I
\|r_J(t)\|_{L^\infty_x}^2
\|K_J(t)\|_{L^2_{x,y}}^2\,dt
+\mathcal R_J(I)
\Big)
+\mathcal E_J^{cal}(I).
\tag{C.2}
```

So the pair-defect PDE already supplies the signless defect energy. What is
still missing is the selector calibration `(B.2)` and the matching
observability inequality `(B.3)`.

## Diagnostic

The proof above shows exactly where the bridge stops.

The passage

```math
\text{one-sided defect budget}
\Longrightarrow
SG.4B
```

is already installed.

The passage

```math
\text{pair-defect energy / observability}
\Longrightarrow
\text{one-sided defect budget}
```

is conditional on one new ingredient:

```math
\boxed{
\mathfrak d_J^-(a,b,t)
\le
C_D
\text{selector observation built from }W_J
+\text{controlled calibration error}.
}
\tag{D.1}
```

This is the real new theorem-search burden. Pure signless control of
`\|W_J\|_{L^2}` or `\|\nabla W_J\|_{L^2}` does not by itself determine the
negative drift budget `[\lambda_J-\mathfrak s_J]_+`; the route still needs a
pairwise, directional, one-sided calibration from the two-point defect to the
segment strain deficit.

In the sharpened route language now synchronized into
`tps-pair-defect-pde-packet.md`, this calibration burden is no longer treated as
one opaque theorem. After the spectral and bundle-angle losses are peeled off,
the remaining pair-defect-side input splits into three exact pieces:

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}\mathcal E_J^{dir,rec}(I),
\tag{D.2}
```

```math
\mathcal E_J^{loop}(I)
\le
C_{\mathrm{loop}}\mathcal E_J^{loop,rec}(I),
\tag{D.3}
```

and

```math
\mathcal E_J^{dir,rec}(I)+\mathcal E_J^{loop,rec}(I)
\le
C_{\mathrm{pair}}\mathcal E_J^{obs}(I).
\tag{D.4}
```

Combining `(D.2)`-`(D.4)` yields the exact residual pairwise closure

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{\mathrm{res}}\mathcal E_J^{obs}(I),
\tag{D.5}
```

which is exactly `(PD.70q)` / `(PD.70s)` in the synchronized pair-defect
packet.

So the exact new theorem-search burden is:

```math
\boxed{
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{\mathrm{res}}
\mathcal E_J^{obs}(I)
}
\tag{D.6}
```

with direction reconstruction and loop reconstruction now treated as the two
concrete subproblems inside that residual pairwise closure, rather than a
monolithic “prove `PD.70` from scratch” statement.

The upstream MPP-side supplier packaging for this residual bridge is recorded
separately in
`mpp-fused-sg4-supplier-schema.md`. That schema treats the material
class-membership packet as an upstream error ledger, but it does **not** claim
that the selector readout slot is manufactured from `W_J` alone.

On the exact-potential branch, the graph-Hodge harmonic part vanishes and the
loop term drops out, so the residual theorem collapses further to the
directional estimate

```math
\mathcal E_J^{dir}(I)\le C_{\mathrm{dir}}\mathcal E_J^{obs}(I).
\tag{D.7}
```

That exact-potential branch is therefore the smallest honest local endgame. At
an active packet point let the coarse strain tensor be

```math
S_J(t,x):=\frac{\nabla u_{\le J}(t,x)+\nabla u_{\le J}(t,x)^\top}{2},
```

with ordered eigenvalues
`\lambda_1(S_J)\ge \lambda_2(S_J)\ge \lambda_3(S_J)` and orthonormal
eigenvectors `e_1,e_2,e_3`. Here the expanding direction means the top
eigendirection `e_1`, and a transported unit pair direction
`\omega\in S^2` sees directional strain
`\mathfrak s_J(\omega)=\omega^\top S_J\omega`.

### Lemma Candidate D.7a (cycle-exact polarization / expanding-direction calibration)

Assume the cycle-exact branch, so that
`\mathcal E_J^{loop}(I)=0`. Suppose there exist

1. a measurable polarity map `\sigma_J(a,b,t)\in\{\pm1\}`;
2. a measurable transported unit pair direction
   `\omega_J(a,b,t)\in S^2`;
3. an expanding-direction readout `\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)`,
   interpreted as the projection of the polarized observed pair-defect packet
   onto the top eigendirection `e_1` of the coarse strain tensor;

such that for almost every active pair and time one has the pointwise
calibration

```math
\Xi_J(a,b,t)
\le
C_{\mathrm{pol}}\,
\big|\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)\big|
+
\operatorname{Err}_J^{\mathrm{cal}}(a,b,t),
\tag{D.7a}
```

together with the cycle-exact observability bound

```math
\int_I\!\!\int_{G_J^{pair}}
\big|\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs}}^{\mathrm{exp}}\,
\mathcal E_J^{obs}(I),
\tag{D.7b}
```

and the calibration-error budget

```math
\int_I\!\!\int_{G_J^{pair}}
\big|\operatorname{Err}_J^{\mathrm{cal}}(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{err}}^{\mathrm{cal}}\,
\mathcal E_J^{obs}(I).
\tag{D.7c}
```

Then the cycle-exact directional theorem closes:

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{pol}}^\star\,
\mathcal E_J^{obs}(I),
\tag{D.7d}
```

which is exactly `PD.70z`.

Equivalently, after the already-isolated spectral-floor and bundle-angle losses
are peeled off, the same target may be phrased as the angular alignment
statement

```math
1-\big|\omega_J(a,b,t)\cdot e_1(a,b,t)\big|^2
\le
C_{\angle}\,\big|W_J(a,b,t)\big|^2
+
\operatorname{Err}_J^{\angle}(a,b,t),
\tag{D.7e}
```

because

```math
\lambda_1(S_J)-\omega^\top S_J\omega
=
\sum_{k=2}^3
\big(\lambda_1(S_J)-\lambda_k(S_J)\big)\,|\omega\cdot e_k|^2,
\tag{D.7f}
```

so angle-closeness to `e_1` is the precise geometric content needed to turn the
signless packet `W_J` into one-sided control of `[\lambda_J-\mathfrak s_J]_+`.

### Proposition D.7g (simple-top angle reduction is already formal)

The angle formulation above is not merely heuristic. After the spectral-floor
and bundle-angle losses are peeled off, it has an exact installed realization on
the simple-top branch.

Assume on one selector-good active-pair family and one strip `I=[t_0,t_1]`:

1. the segment-level simple-top hypotheses `(AS.30)`-`(AS.35)` from
   [tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md)
   hold, with top segment eigendirection `n_J(a,b,t)`;
2. the spectral floor `(AS.17)` holds for the same reference rate `\lambda_J`;
3. the aspect-ratio bound `(AS.5c)` holds on `I`.

Then the route-local angle variable

```math
\alpha_J(a,b,t)
:=
\big\|
\big(I-P_{J,\top}^{seg}(a,b,t)\big)e_{ab}(t)
\big\|^2
=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2
\tag{D.7g}
```

satisfies the exact one-sided deficit bound

```math
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+
\le
\varepsilon_J^{spec}(a,b,t)
+
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t),
\tag{D.7h}
```

and whenever `\alpha_J\le \tfrac12` on `I`,

```math
\int_I
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+\,dt
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
2C_{\mathrm{asp}}
\big(\alpha_J(a,b,t_0)-\alpha_J(a,b,t_1)\big)
+
2C_{\mathrm{asp}}
\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt.
\tag{D.7i}
```

So on the simple-top exact-potential branch the live theorem is already reduced
formally to observability of one concrete misalignment ledger: either the angle
defect `\alpha_J` itself or the sharper angular-forcing budget `\beta_J^2/g_J`.

**Proof.**
Identity `(D.7g)` is exactly `(AS.35)`. Inequality `(D.7h)` is `(AS.21)` after
installing the spectral floor `(AS.17)`, and `(D.7i)` is obtained by combining
the strip bound `(AS.22)` with the aspect-ratio reduction `(AS.5d)`. ∎

### Corollary D.7ia (simple-top exact-potential branch reduces further to adiabatic forcing budgets)

Assume the hypotheses of Proposition `D.7g`, and suppose in addition that
`A_J^{seg}(a,b,\cdot)` is absolutely continuous on `I`, the simple-top gap
`g_J(a,b,t)>0` on `I`, and the gauge `(AS.33)` is used. Then whenever
`\alpha_J\le \tfrac12` on `I`,

```math
\int_I
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+\,dt
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
2C_{\mathrm{asp}}\alpha_J(a,b,t_0)
+
4C_{\mathrm{asp}}
\int_I
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}
\,dt.
\tag{D.7ia}
```

So on the simple-top exact-potential branch the strip-loss ledger is no longer
an abstract angle budget alone: it is controlled by one boundary term plus the
two explicit adiabatic forcing budgets
`\int_I |K_J^{seg}n_J|^2/g_J` and
`\int_I \|\partial_t A_J^{seg}\|_{\mathrm{op}}^2/g_J^3`.

**Proof.**
Combine the one-sided deficit decomposition `(D.7h)` with the adiabatic
reduction `(AS.6e)` from
[tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md).
∎

### Corollary D.7ib (material-gap branch supplies the simple-top cone entry)

Keep the hypotheses of Proposition `D.7g`, except replace the direct cone
assumption `\alpha_J\le \tfrac12` on `I` by the material-gap transfer condition
`(AS.7o)` from
[tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md),
holding for a.e. `t\in I` with one fixed reference time `t_0\in I`. A concrete
uniform sufficient condition is Corollary `AS.7u`, which packages the stripwise
requirements into one explicit lower bound on the singular gap together with a
uniform right-singular overlap and a uniform carrier-mismatch bound. On short
windows, Proposition `AS.7v` and Corollary `AS.7w` further reduce that
carrier-mismatch input to explicit local bounds on
`\|\mathcal M_J\|_{\mathrm{op}}`, `\|\partial_t\mathcal S_J\|_{\mathrm{op}}`,
the terminal simple-top gap `g_J`, and the window length. Then the
cone hypothesis of `(AS.5a)` holds on `I`, so both `(D.7i)` and `(D.7ia)` are
available on the same strip.

So on the material-gap exact-potential subbranch, cone entry is no longer an
independent open estimate. The remaining local burdens are the carrier
comparison in `(AS.7o)` or its short-window reduction `(AS.7v)` / `(AS.7w)`,
the aspect-ratio branch if `(AS.5c)` is not taken as a direct hypothesis, and
the forcing budgets from `(D.7ia)`.

**Proof.**
Corollary `(AS.7m)` gives `\alpha_J\le \tfrac12` on `I` from `(AS.7o)`. Then
apply Proposition `D.7g` and Corollary `D.7ia`. ∎

### Corollary D.7ic (predecessor-window material gap discharges the strip boundary term)

Fix one strip `I=[t_0,t_1]` and keep the hypotheses of Corollary `D.7ib`.
Assume in addition that the material-gap transfer condition `(AS.7o)` is
verified on `I` using one predecessor reference time `t_-\le t_0`. Then the
boundary term in `(D.7ia)` is explicitly controlled by the predecessor-window
material gap and carrier mismatch at the strip entrance time:

```math
\alpha_J(a,b,t_0)
\le
2e^{-2G_J^{mat}(a,b,t_0;t_-)}
\frac{1-c_{J,0}(a,b,t_0;t_-)^2}{c_{J,0}(a,b,t_0;t_-)^2}
+
2\delta_J^{car}(a,b,t_0;t_-).
\tag{D.7ic}
```

Consequently,

```math
\int_I
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+\,dt
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
4C_{\mathrm{asp}}
e^{-2G_J^{mat}(a,b,t_0;t_-)}
\frac{1-c_{J,0}(a,b,t_0;t_-)^2}{c_{J,0}(a,b,t_0;t_-)^2}
+
4C_{\mathrm{asp}}\delta_J^{car}(a,b,t_0;t_-)
+
4C_{\mathrm{asp}}
\int_I
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}
\,dt.
\tag{D.7id}
```

So on the predecessor-window material-gap branch, the strip boundary term is no
longer an independent datum: it is replaced by finite-time singular-gap data at
the strip entrance together with the same carrier-comparison term already
required for cone transfer.

**Proof.**
Evaluate `(AS.7n)` and `(AS.7f)` at the entrance time `t_0` with reference
time `t_-` to obtain `(D.7ic)`. Then substitute `(D.7ic)` into `(D.7ia)`. ∎

### Corollary D.7ie (forcing-budget strip closure on the simple-top exact-potential branch)

Fix one strip `I=[t_0,t_1]` and keep the hypotheses of Proposition `D.7g`.
Assume the simple-top cone hypothesis `\alpha_J\le \tfrac12` on `I` together
with the aspect-ratio bound `(AS.5c)`, and define the forcing ledger

```math
\mathcal B_{J,\beta}^{force}(a,b;I)
:=
\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt.
\tag{D.7ie1}
```

Then the one-sided strip defect obeys the explicit pairwise bound

```math
B_J^-(a,b;I)
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
2C_{\mathrm{asp}}\alpha_J(a,b,t_0)
+
2C_{\mathrm{asp}}\mathcal B_{J,\beta}^{force}(a,b;I).
\tag{D.7ie2}
```

If, in addition, the adiabatic hypotheses of Corollary `D.7ia` hold, define

```math
\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I)
:=
\int_I
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}
\,dt.
\tag{D.7ie3}
```

Then

```math
B_J^-(a,b;I)
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
2C_{\mathrm{asp}}\alpha_J(a,b,t_0)
+
4C_{\mathrm{asp}}\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I).
\tag{D.7ie4}
```

If moreover the predecessor-window material-gap hypotheses of Corollary `D.7ic`
hold with reference time `t_-\le t_0`, then

```math
B_J^-(a,b;I)
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
4C_{\mathrm{asp}}
e^{-2G_J^{mat}(a,b,t_0;t_-)}
\frac{1-c_{J,0}(a,b,t_0;t_-)^2}{c_{J,0}(a,b,t_0;t_-)^2}
+
4C_{\mathrm{asp}}\delta_J^{car}(a,b,t_0;t_-)
+
4C_{\mathrm{asp}}\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I).
\tag{D.7ie5}
```

So on the simple-top exact-potential branch, the stripwise one-sided defect is
no longer an abstract missing object: it is controlled explicitly by spectral
floor loss, entrance misalignment data, and one of the two concrete forcing
ledgers.

**Proof.**
Inequality `(D.7ie2)` is just `(D.7i)` after dropping the nonnegative terminal
gain `2C_{\mathrm{asp}}\alpha_J(a,b,t_1)`. Inequality `(D.7ie4)` is exactly
`(D.7ia)` rewritten using `(D.7ie3)`. Inequality `(D.7ie5)` is the same
rewriting of `(D.7id)`. ∎

### Corollary D.7if (pair-family forcing budget feeds the `SG.4P` defect threshold)

Keep the hypotheses of Corollary `D.7ie` on one selector-good active pair
family `G_J^{pair}` with finite measure `\mu_J^{pair}`. Define the pair-family
budgets

```math
\mathcal E_J^{spec,strip}(I)
:=
\int_{G_J^{pair}}
\Big(\int_I \varepsilon_J^{spec}(a,b,t)\,dt\Big)^2
\,d\mu_J^{pair}(a,b),
\tag{D.7if1}
```

```math
\mathcal E_J^{ent}(I)
:=
\int_{G_J^{pair}}
\big(\mathcal B_J^{ent}(a,b;I)\big)^2
\,d\mu_J^{pair}(a,b),
\tag{D.7if2}
```

```math
\mathcal E_J^{force}(I)
:=
\int_{G_J^{pair}}
\big(\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I)\big)^2
\,d\mu_J^{pair}(a,b),
\tag{D.7if3}
```

where `\mathcal B_J^{ent}(a,b;I)` is any pointwise entrance bound satisfying

```math
\alpha_J(a,b,t_0)\le \mathcal B_J^{ent}(a,b;I)
\qquad\text{for }(a,b)\in G_J^{pair}.
\tag{D.7if4}
```

Then

```math
\int_{G_J^{pair}}\big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
3\mathcal E_J^{spec,strip}(I)
+
12C_{\mathrm{asp}}^2\mathcal E_J^{ent}(I)
+
48C_{\mathrm{asp}}^2\mathcal E_J^{force}(I).
\tag{D.7if5}
```

In particular, the `SG.4P` / `PD.70aa` defect input is available on this branch
once the spectral-floor loss, the entrance ledger, and the adiabatic forcing
ledger are jointly small in the stripwise pair-family `L^2` sense.

If the predecessor-window material-gap hypotheses of Corollary `D.7ie` hold,
one may take

```math
\mathcal B_J^{ent}(a,b;I)
:=
2e^{-2G_J^{mat}(a,b,t_0;t_-)}
\frac{1-c_{J,0}(a,b,t_0;t_-)^2}{c_{J,0}(a,b,t_0;t_-)^2}
+
2\delta_J^{car}(a,b,t_0;t_-),
\tag{D.7if6}
```

so the same pair-family defect budget is fed entirely by predecessor-window
material data together with the adiabatic forcing ledger.

**Proof.**
Apply `(D.7ie4)` and then substitute the entrance bound `(D.7if4)` for
`\alpha_J(a,b,t_0)`. Use `(x+y+z)^2\le 3(x^2+y^2+z^2)` and integrate over
`G_J^{pair}` to obtain `(D.7if5)`. If `(D.7if6)` holds, Corollary `D.7ic`
gives `(D.7if4)` with that explicit choice of `\mathcal B_J^{ent}`. ∎

### Corollary D.7ig (auxiliary-projector window restart feeds the simple-top strip ledger)

Fix one strip `I=[t_0,t_1]` and keep the hypotheses of Corollary `D.7ie`.
Let `P_J^{aux}(a,b;I)` be any rank-one orthogonal projector on the same pair
space as `P_{ab}(t_0)` and `P_{J,\top}^{seg}(a,b,t_0)`, and define the
auxiliary entrance misalignment

```math
\widetilde\alpha_{J}^{aux}(a,b;t_0;I)
:=
\frac12
\big\|
P_{ab}(t_0)-P_J^{aux}(a,b;I)
\big\|_F^2.
\tag{D.7ig1}
```

Assume the auxiliary projector is close to the top strain projector at the
strip entrance:

```math
\big\|
P_J^{aux}(a,b;I)-P_{J,\top}^{seg}(a,b,t_0)
\big\|_F^2
\le
\eta_J^{aux}(a,b;I).
\tag{D.7ig2}
```

Then

```math
\alpha_J(a,b,t_0)
\le
2\widetilde\alpha_{J}^{aux}(a,b;t_0;I)
+
\eta_J^{aux}(a,b;I).
\tag{D.7ig3}
```

Consequently,

```math
B_J^-(a,b;I)
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
4C_{\mathrm{asp}}\widetilde\alpha_{J}^{aux}(a,b;t_0;I)
+
2C_{\mathrm{asp}}\eta_J^{aux}(a,b;I)
+
2C_{\mathrm{asp}}\mathcal B_{J,\beta}^{force}(a,b;I).
\tag{D.7ig4}
```

If, in addition, the adiabatic hypotheses of Corollary `D.7ia` hold, then

```math
B_J^-(a,b;I)
\le
\int_I \varepsilon_J^{spec}(a,b,t)\,dt
+
4C_{\mathrm{asp}}\widetilde\alpha_{J}^{aux}(a,b;t_0;I)
+
2C_{\mathrm{asp}}\eta_J^{aux}(a,b;I)
+
4C_{\mathrm{asp}}\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I).
\tag{D.7ig5}
```

If moreover `P_J^{aux}(a,b;I)=P_J^{CG}(t_0,a)`, the top projector of the
restricted Cauchy-Green tensor at the strip entrance, then Proposition
`D.7mb` gives the concrete choice

```math
\eta_J^{aux}(a,b;I)
:=
\frac{2\,|m_J(t_0,a,b)|^2}{\operatorname{gap}_J^{CG}(t_0,a)^2}.
\tag{D.7ig6}
```

So the corrected Cauchy-Green packet yields a theorem-safe **window restart**
statement: projector comparison contributes one explicit entrance error
`\eta_J^{aux}`, but a separate entrance bound on
`\widetilde\alpha_{J}^{aux}` is still required. In particular, the current
repo packet does **not** claim that a Cauchy-Green misalignment variable obeys
the same scalar evolution law as `\alpha_J`.

**Proof.**
Use the rank-one projector identity
`\alpha_J(t_0)=\frac12\|P_{ab}(t_0)-P_{J,\top}^{seg}(a,b,t_0)\|_F^2` together
with the Frobenius triangle inequality:

```math
\big\|
P_{ab}(t_0)-P_{J,\top}^{seg}(a,b,t_0)
\big\|_F^2
\le
2\big\|
P_{ab}(t_0)-P_J^{aux}(a,b;I)
\big\|_F^2
+
2\big\|
P_J^{aux}(a,b;I)-P_{J,\top}^{seg}(a,b,t_0)
\big\|_F^2.
```

Dividing by `2` gives `(D.7ig3)`. Substitute `(D.7ig3)` into `(D.7ie2)` and
`(D.7ie4)` to obtain `(D.7ig4)` and `(D.7ig5)`. The Cauchy-Green specialization
`(D.7ig6)` is exactly `(D.7mb9)` evaluated at `t=t_0`. ∎

### Corollary D.7ih (auxiliary-projector window restart controls the integrated directional ledger)

Keep the hypotheses of Corollary `D.7ig`, and define the pairwise directional
ledger on the strip by

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I)
:=
\int_I
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t)\,dt.
\tag{D.7ih1}
```

Then

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I)
\le
4C_{\mathrm{asp}}\widetilde\alpha_{J}^{aux}(a,b;t_0;I)
+
2C_{\mathrm{asp}}\eta_J^{aux}(a,b;I)
+
2C_{\mathrm{asp}}\mathcal B_{J,\beta}^{force}(a,b;I).
\tag{D.7ih2}
```

If, in addition, the adiabatic hypotheses of Corollary `D.7ia` hold, then

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I)
\le
4C_{\mathrm{asp}}\widetilde\alpha_{J}^{aux}(a,b;t_0;I)
+
2C_{\mathrm{asp}}\eta_J^{aux}(a,b;I)
+
4C_{\mathrm{asp}}\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I).
\tag{D.7ih3}
```

If moreover `P_J^{aux}(a,b;I)=P_J^{CG}(t_0,a)`, then `(D.7ig6)` supplies the
concrete Cauchy-Green projector-comparison error inside `(D.7ih2)`-`(D.7ih3)`.

So the corrected Cauchy-Green branch now yields the exact local theorem-safe
restart architecture for the **integrated directional ledger itself**: one
still needs an entrance bound relative to the auxiliary carrier, but once that
is available the stripwise directional deficit is controlled directly by that
entrance term, the projector-comparison error, and the forcing ledger.

**Proof.**
From `(D.7i)` and the nonnegativity of `\alpha_J(a,b,t_1)`,

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I)
\le
2C_{\mathrm{asp}}\alpha_J(a,b,t_0)
+
2C_{\mathrm{asp}}\mathcal B_{J,\beta}^{force}(a,b;I).
```

Substitute the entrance estimate `(D.7ig3)` to obtain `(D.7ih2)`. The
adiabatic form `(D.7ih3)` is the same substitution into the one-sided boundary
form `(AS.6e)` from
[tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md).
∎

### Corollary D.7j (the abstract `\Xi_J` gap is closed on two concrete subroutes)

The cycle-exact branch no longer needs an abstract placeholder for the
pair-direction defect.

1. On the simple-top branch, one may take
   `\Xi_J^{ang}(a,b,t):=\alpha_J(a,b,t)`.
2. On the normal-covector branch of
   [pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md),
   one may take
   `\Xi_J^{\perp}(a,b,t):=|n_J(a)\cdot e_{ab}(t)|^2`.

Both are concrete admissible quadratic pair-direction defects for the
cycle-exact branch. So the exact remaining theorem is now narrower:

```text
prove selector-adapted observability from the pair-defect PDE to one of the
concrete ledgers `\Xi_J^{ang}` or `\Xi_J^{\perp}`, and on the normal-covector
subroute close the last linear-upgrade slot, either by an explicit
self-improvement of the weighted `L^4` closure such as `(CN.13q)` or by the
two-sided weight-control route `(CN.13ab)`-`(CN.13ad)`; on the simple-top
subroute one may sharpen further from `\Xi_J^{ang}` to the adiabatic forcing
budgets in `(D.7ia)`.
```

**Proof.**
For `\Xi_J^{ang}`, admissibility is exactly the simple-top angle identity
`(D.7g)=(AS.35)`. For `\Xi_J^{\perp}`, admissibility is `(CN.5)`-`(CN.7)` from
the normal-covector route note. The bridge theorem in
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md)
allows any admissible quadratic pair-direction defect, so both choices are
available on disk. ∎

### Proposition D.7k (theorem-schema no-go for signless packet alone)

There is no theorem on the cycle-exact branch of the form

```math
\mathcal E_J^{dir}(I)
\le
C\,
\mathcal E_J^{obs}(I)
+
\mathcal E_J^{err}(I),
\tag{D.7k}
```

whose assumptions involve only the currently installed signless observed packet
`W_J`, its existing PDE coercive bounds, and exactness of the pair-gap cocycle.

**Proof.**
Fix one time and one active packet point, and diagonalize the coarse strain
tensor:

```math
S_J=\operatorname{diag}(\lambda_1,\lambda_2,\lambda_3),
\qquad
\lambda_1>\lambda_2\ge \lambda_3,
\tag{D.7k1}
```

with expanding eigendirection `e_1`. Consider the two admissible transported
pair directions

```math
\omega^{(1)}:=e_1,
\qquad
\omega^{(2)}:=e_2.
\tag{D.7k2}
```

Then the corresponding directional deficits are

```math
\delta^{(1)}
:=
\lambda_1-(\omega^{(1)})^\top S_J\omega^{(1)}
=0,
\tag{D.7k3}
```

and

```math
\delta^{(2)}
:=
\lambda_1-(\omega^{(2)})^\top S_J\omega^{(2)}
=
\lambda_1-\lambda_2
>0.
\tag{D.7k4}
```

Now keep the signless observed defect data identical in the two configurations:

```math
W_J^{(1)}=W_J^{(2)}=:W,
\tag{D.7k5}
```

and assume the cycle-exact branch, so
`\mathcal E_J^{loop}(I)=0` in both cases. Then every bound whose hypotheses and
right-hand side depend only on the installed signless observed packet and its
current coercive PDE bounds assigns the same right-hand side to both
configurations, because those data are identical. But the target one-sided
directional deficit differs by the fixed spectral gap `\lambda_1-\lambda_2`.
Hence the cycle-exact directional estimate cannot be derived from the current
signless packet alone: an additional polarity or alignment input is necessary.
∎

So the exact remaining datum is now visible in theorem form:

```text
exact-potential kills the loop ambiguity, but it does not recover the expanding
direction from signless pair-defect data.
```

### Theorem Candidate D.7l (conditional cycle-exact discharge from a polarization input)

Assume the cycle-exact branch and let
`\Xi_J^{conc}` denote either of the concrete directional ledgers from
Corollary `D.7j`, namely `\Xi_J^{ang}` or `\Xi_J^{\perp}`. Assume in addition
there exist

1. a measurable polarity map `\sigma_J(a,b,t)\in\{\pm1\}`;
2. an expanding-direction readout `\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)`;
3. an error field `\operatorname{Err}_J^{\mathrm{pol}}(a,b,t)\ge 0`;

such that

```math
\int_I\!\!\int_{G_J^{pair}}
\big|\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{pol,obs}}\,
\mathcal E_J^{obs}(I),
\tag{D.7l1}
```

and

```math
\Xi_J^{conc}(a,b,t)
\le
C_{\mathrm{pol}}\,
\big|\Pi_J^{\mathrm{exp}}[\sigma_JW_J](a,b,t)\big|^2
+
\operatorname{Err}_J^{\mathrm{pol}}(a,b,t),
\tag{D.7l2}
```

with

```math
\int_I\!\!\int_{G_J^{pair}}
\big|\operatorname{Err}_J^{\mathrm{pol}}(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{pol,err}}\,
\mathcal E_J^{obs}(I).
\tag{D.7l3}
```

Then the cycle-exact directional estimate `PD.70z` follows.

**Proof.**
If `\Xi_J^{conc}=\Xi_J^{ang}`, combine `(D.7l2)` with the simple-top reduction
`(D.7h)`-`(D.7i)` to control the one-sided deficit ledger by the polarization
observable and the already installed spectral-floor losses. If
`\Xi_J^{conc}=\Xi_J^{\perp}`, combine `(D.7l2)` with the normal-covector route
and whichever of `(CN.13j)` or the stronger linear upgrade is available on that
subroute. In both cases, `(D.7l1)` and `(D.7l3)` convert the added polarization
input into the pair-defect observation budget. The downstream passage from the
resulting directional bound to `PD.70`, `PD.70aa`, and `SG.4B` is already
formal by `(ST.7)` and the installed pair-defect packet. ∎

### Theorem Candidate D.7n (Gronwall-type sufficient condition for the polarization slot)

Assume the cycle-exact branch and fix one transported good window
`I=[t_0,t_1]`. Let `\mathfrak a_J^{align}(a,b,t)\in[0,2]` be a measurable
alignment defect between the selected polarity/normal direction and a
sign-compatible expanding-direction readout on `G_J^{pair,tr}\times I`, and let
`\Theta_J(a,b,t)\ge 0` be a nonnegative forcing ledger on the same strip.
Assume that for almost every active pair `(a,b)` and almost every `t\in I`,

```math
\partial_t \mathfrak a_J^{align}(a,b,t)
\le
a_J(a,b,t)\,\mathfrak a_J^{align}(a,b,t)
+
b_J(a,b,t)\,\Theta_J(a,b,t),
\tag{D.7n1}
```

with stripwise bounds

```math
\int_I a_J(a,b,t)\,dt\le A_0,
\tag{D.7n2}
```

```math
\int_I b_J(a,b,t)\,\Theta_J(a,b,t)\,dt
\le
\beta_J(a,b),
\tag{D.7n3}
```

and initial alignment seed

```math
\mathfrak a_J^{align}(a,b,t_0)\le \delta_J(a,b).
\tag{D.7n4}
```

Then for almost every active pair and every `t\in I`,

```math
\mathfrak a_J^{align}(a,b,t)
\le
e^{A_0}\Big(\delta_J(a,b)+\beta_J(a,b)\Big).
\tag{D.7n5}
```

In particular, if
`\sup_{(a,b)\in G_J^{pair,tr}}\big(\delta_J(a,b)+\beta_J(a,b)\big)\to 0`,
then alignment persists uniformly on the transported good window. Hence any
theorem that produces `(D.7n1)`-`(D.7n4)` and identifies
`\mathfrak a_J^{align}` with one of the concrete direction ledgers from
Corollary `D.7j` supplies a sufficient route into the polarization input of
Theorem Candidate `D.7l`.

**Proof.**
Fix one active pair `(a,b)` and set
`u(t):=\mathfrak a_J^{align}(a,b,t)`. Multiplying `(D.7n1)` by
`\exp(-\int_{t_0}^t a_J(a,b,s)\,ds)` and integrating from `t_0` to `t` gives

```math
u(t)
\le
\exp\!\Big(\int_{t_0}^t a_J(a,b,s)\,ds\Big)
\left(
u(t_0)+\int_{t_0}^t b_J(a,b,s)\,\Theta_J(a,b,s)\,ds
\right).
```

Now apply `(D.7n2)`-`(D.7n4)`. This yields `(D.7n5)`. ∎

So the next honest theorem cut is branch-sensitive. On the exact-potential
branch the cleanest abstract formulation is now the sign-compatible projective
packet of Proposition `D.7m`, with the older cycle-exact polarization lemma as
an equivalent fallback. On the general Hodge branch it is the
selector-adapted observability theorem on a quantitatively large transported
good-pair family.

### Proposition D.7m (sign-compatible projective reformulation of the simple-top branch)

On the simple-top branch, set

```math
P_{ab}(t):=e_{ab}(t)\otimes e_{ab}(t),
\qquad
P_{J,\top}^{seg}(a,b,t):=n_J(a,b,t)\otimes n_J(a,b,t),
\tag{D.7m1}
```

where `n_J(a,b,t)` is the measurable top eigendirection from Proposition
`D.7g`. Then the concrete angle defect from Corollary `D.7j` satisfies

```math
\Xi_J^{ang}(a,b,t)
=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2
=
\frac12
\big\|
P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)
\big\|_F^2.
\tag{D.7m2}
```

Consequently, if there exists a measurable rank-one orthogonal projector field
`\widehat P_J(a,b,t)` on the transported good family such that

```math
\big\|
P_{ab}(t)-\widehat P_J(a,b,t)
\big\|_F^2
\le
C_{\mathrm{sync}}\,
\big|W_J(a,b,t)\big|^2
+
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t),
\tag{D.7m3}
```

and

```math
\big\|
\widehat P_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\big\|_F^2
\le
\operatorname{Err}_{J,\mathrm{top}}(a,b,t),
\tag{D.7m4}
```

then

```math
\Xi_J^{ang}(a,b,t)
\le
C\,\big|W_J(a,b,t)\big|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,\mathrm{top}}(a,b,t).
\tag{D.7m5}
```

So on the exact-potential simple-top branch the terminal theorem may be phrased
without any polarity map: it is enough to recover a sign-compatible rank-one
projector from `W_J` and compare that projector to the top strain projector.

**Proof.**
Identity `(D.7m2)` is the rank-one projector formula for the squared sine of the
angle. Insert `\widehat P_J` and use the Frobenius triangle inequality:

```math
\big\|
P_{ab}-P_{J,\top}^{seg}
\big\|_F^2
\le
2\big\|P_{ab}-\widehat P_J\big\|_F^2
+
2\big\|\widehat P_J-P_{J,\top}^{seg}\big\|_F^2.
\tag{D.7m6}
```

Combine `(D.7m2)` with `(D.7m3)` and `(D.7m4)` to obtain `(D.7m5)`. ∎

### Proposition D.7ma (restricted Cauchy-Green lift gives a concrete `PSJ+` candidate)

To avoid the notation collision between the measurable derivative cocycle and
the signless pair-defect packet, write `\mathbf W_J^{coc}(t,a)` for the
measurable derivative cocycle from Proposition `TPS-cg-gap`, while keeping
`W_J(a,b,t)` for the pair-defect observable used in the `PD.70*` packet.
Define the restricted right Cauchy-Green tensor on the selector-transverse
bundle by

```math
\mathcal C_J^N(t,a)
:=
P_{N_a}\mathbf W_J^{coc}(t,a)^*\mathbf W_J^{coc}(t,a)P_{N_a}\big|_{N_a},
\tag{D.7ma1}
```

and its normalized centered version by

```math
\widetilde{\mathcal C}_J^N(t,a)
:=
\frac{\mathcal C_J^N(t,a)}{\operatorname{tr}_{N_a}\mathcal C_J^N(t,a)}
\;-\;
\frac{1}{d_\perp}I_{N_a},
\qquad d_\perp:=\dim N_a.
\tag{D.7ma2}
```

Assume that on the transported good family the top eigenspace of
`\mathcal C_J^N(t,a)` is simple, with spectral gap

```math
\operatorname{gap}_J^{CG}(t,a)
:=
\lambda_1\!\big(\mathcal C_J^N(t,a)\big)
-
\lambda_2\!\big(\mathcal C_J^N(t,a)\big)
>0,
\tag{D.7ma3}
```

and let `P_J^{CG}(t,a)` be the rank-one orthogonal projector onto that top
eigenline. On the exact-potential simple-top branch, assume there is a
measurable transported-good-family projector field `\widehat P_J(a,b,t)` such
that

```math
\big\|
\widehat P_J(a,b,t)-P_J^{CG}(t,a)
\big\|_F^2
\le
C_{CG,\mathrm{pair}}\,
\big|W_J(a,b,t)\big|^2
+
\operatorname{Err}_{J,CG}^{pair}(a,b,t),
\tag{D.7ma4}
```

and that the synchronization estimate `(D.7m3)` holds for the same
`\widehat P_J(a,b,t)`. Assume moreover

```math
\big\|
\big(I-P_{J,\top}^{seg}(a,b,t)\big)\mathcal C_J^N(t,a)P_{J,\top}^{seg}(a,b,t)
\big\|_F
\le
\operatorname{gap}_J^{CG}(t,a)\,
\operatorname{Err}_{J,CG}^{strain}(a,b,t)^{1/2}.
\tag{D.7ma5}
```

Then

```math
\big\|
P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)
\big\|_F^2
\le
C_{CG,\mathrm{DK}}\,
\operatorname{Err}_{J,CG}^{strain}(a,b,t),
\tag{D.7ma6}
```

and hence

```math
\Xi_J^{ang}(a,b,t)
\le
C\,\big|W_J(a,b,t)\big|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{strain}(a,b,t).
\tag{D.7ma7}
```

Therefore the normalized restricted Cauchy-Green tensor
`\widetilde{\mathcal C}_J^N` supplies a concrete realization of the abstract
symmetric surrogate `\mathcal G_J` in `PSJ+`. The exact-potential projective
frontier is thereby reduced to two theorem slots:

1. pair-to-cocycle synchronization `(D.7ma4)` from the signless pair packet
   `W_J(a,b,t)` into a projective projector field, and
2. selector-strain compatibility `(D.7ma5)` comparing the finite-time
   Cauchy-Green projector to the instantaneous top strain projector
   `P_{J,\top}^{seg}(a,b,t)`.

**Proof.**
The tensor `\mathcal C_J^N` is symmetric and positive semidefinite, so the top
eigenline and the projector `P_J^{CG}` are sign-compatible objects. The
rank-one Davis-Kahan estimate for a symmetric matrix with simple top eigenvalue
gives `(D.7ma6)` from `(D.7ma5)`. Then insert `P_J^{CG}` between
`\widehat P_J` and `P_{J,\top}^{seg}`:

```math
\big\|
\widehat P_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\big\|_F^2
\le
2\big\|\widehat P_J(a,b,t)-P_J^{CG}(t,a)\big\|_F^2
+
2\big\|P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)\big\|_F^2.
\tag{D.7ma8}
```

Combine `(D.7ma6)` with `(D.7ma4)` to control the second projector error in
Proposition `D.7m`. Then use the synchronization estimate `(D.7m3)` and
substitute both bounds into `(D.7m5)`. This yields `(D.7ma7)`. ∎

The point of Proposition `D.7ma` is not that the Cauchy-Green tensor already
closes the exact-potential branch. It only turns `PSJ+` into a concrete
projective packet. The remaining genuine new mathematics is now exact:
`\mathcal C_J^N` records finite-time stretching on the transported transverse
bundle, while `P_{J,\top}^{seg}(a,b,t)` is the instantaneous top strain
projector, so the
selector-strain compatibility estimate `(D.7ma5)` is an additional theorem and
not a formal consequence of the Cauchy-Green construction alone.

### Proposition D.7mb (Cauchy-Green residual evolution reduces `(D.7ma5)` to explicit strip budgets)

Assume the exact-potential simple-top branch and fix one atom-free
selector-good window `I_0=[t_0,t_1]\subset I` together with one transported good
base point `a`. Assume the selector-transverse bundle is frozen at `a`, and
write

```math
W_J^N(t,a)
:=
\mathbf W_J^{coc}(t,a)P_{N_a}\big|_{N_a},
\qquad
A_J^N(t,a)
:=
P_{N_a}A_J(t,a)P_{N_a}\big|_{N_a},
\qquad
S_J^N(t,a)
:=
\frac{A_J^N(t,a)+A_J^N(t,a)^*}{2},
\tag{D.7mb1}
```

so that `\mathcal C_J^N(t,a)=(W_J^N(t,a))^*W_J^N(t,a)` as in `(D.7ma1)`.
Assume:

1. `t\mapsto W_J^N(t,a)` is absolutely continuous on `I_0` and satisfies
   `\partial_t W_J^N(t,a)=A_J^N(t,a)W_J^N(t,a)` for almost every `t\in I_0`;
2. the instantaneous top strain line on the branch lies in `N_a`, so the top
   strain projector may be read as a rank-one projector
   `P_{J,\top}^{seg}(a,b,t)=n_J(a,b,t)\otimes n_J(a,b,t)` on `N_a`;
3. `S_J^N\in W^{1,1}(I_0)` and its simple-top gap

```math
g_J^{str}(t,a)
:=
\lambda_1\!\big(S_J^N(t,a)\big)-\lambda_2\!\big(S_J^N(t,a)\big)
>0
\quad\text{for a.e. }t\in I_0;
\tag{D.7mb2}
```

4. `\mathcal C_J^N(t,a)` has simple top eigenvalue with gap
   `\operatorname{gap}_J^{CG}(t,a)>0` for almost every `t\in I_0`.

Set

```math
Q_J^{top}(t):=I_{N_a}-P_{J,\top}^{seg}(a,b,t),
\qquad
m_J(t,a,b):=Q_J^{top}(t)\,\mathcal C_J^N(t,a)\,n_J(a,b,t).
\tag{D.7mb3}
```

Then on `I_0`,

```math
\partial_t \mathcal C_J^N(t,a)
=
2\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a),
\tag{D.7mb4}
```

and if

```math
R_J^{str}(t,a)
:=
Q_J^{top}(t)\,
\bigl(\lambda_1(S_J^N(t,a))I_{N_a}-S_J^N(t,a)\bigr)^{-1}
Q_J^{top}(t),
\tag{D.7mb5}
```

then for almost every `t\in I_0`,

```math
\partial_t n_J(a,b,t)
=
R_J^{str}(t,a)\,(\partial_t S_J^N(t,a))\,n_J(a,b,t),
\qquad
\bigl|\partial_t P_{J,\top}^{seg}(a,b,t)\bigr|
\le
2\,\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)}.
\tag{D.7mb6}
```

Consequently,

```math
\partial_t m_J(t,a,b)
=
-(\partial_t P_{J,\top}^{seg}(a,b,t))\,\mathcal C_J^N(t,a)\,n_J(a,b,t)
+
2Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
+
Q_J^{top}(t)\,\mathcal C_J^N(t,a)\,R_J^{str}(t,a)\,(\partial_t S_J^N(t,a))\,n_J(a,b,t),
\tag{D.7mb7}
```

so

```math
|m_J(t,a,b)|
\le
|m_J(t_0,a,b)|
+
2\int_{t_0}^t
\Bigl|
Q_J^{top}(s)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\Bigr|\,ds
+
3\int_{t_0}^t
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds.
\tag{D.7mb8}
```

Moreover, if `P_J^{CG}(t,a)` denotes the top spectral projector of
`\mathcal C_J^N(t,a)`, then

```math
\bigl\|P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)\bigr\|_F^2
\le
\frac{2\,|m_J(t,a,b)|^2}{\operatorname{gap}_J^{CG}(t,a)^2}.
\tag{D.7mb9}
```

In particular `(D.7ma5)` holds on `I_0` with

```math
\operatorname{Err}_{J,CG}^{strain}(a,b,t)
:=
\frac{1}{\operatorname{gap}_J^{CG}(t,a)^2}
\left(
|m_J(t_0,a,b)|
+
2\int_{t_0}^t
\Bigl|
Q_J^{top}(s)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\Bigr|\,ds
+
3\int_{t_0}^t
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds
\right)^2.
\tag{D.7mb10}
```

Since `\widetilde{\mathcal C}_J^N` is obtained from `\mathcal C_J^N` by a
positive scalar normalization and subtraction of a scalar multiple of the
identity, the top eigenspace projector is the same for `\mathcal C_J^N` and
`\widetilde{\mathcal C}_J^N` whenever `\operatorname{tr}_{N_a}\mathcal C_J^N>0`.
Thus `(D.7mb9)` is the exact projective-alignment estimate for the normalized
centered surrogate as well.

**Proof.**
Because `W_J^N` solves the cocycle ODE on the atom-free window,

```math
\partial_t \mathcal C_J^N
=
(\partial_t W_J^N)^*W_J^N
+
(W_J^N)^*(\partial_t W_J^N)
=
(W_J^N)^*(A_J^N)^*W_J^N
+
(W_J^N)^*A_J^N W_J^N
=
2\,(W_J^N)^*S_J^N W_J^N,
```

which gives `(D.7mb4)`. In the full BV / measure-driven cocycle setting, one
instead has the product rule

```math
d\mathcal C_J^N
=
(dW_J^N)^*W_J^{N,-}
+
(W_J^{N,-})^*dW_J^N
+
(dW_J^N)^*dW_J^N,
\tag{D.7mb11}
```

so the atom-free hypothesis is exactly what removes the atomic correction term.

Since `S_J^N` has a simple top eigenvalue on `I_0`, differentiating the
eigenvalue equation
`S_J^N n_J=\lambda_1(S_J^N)n_J` and projecting onto
`Q_J^{top}` gives the standard reduced-resolvent formula in `(D.7mb6)`. The
norm bound follows from `\|R_J^{str}\|_{\mathrm{op}}\le (g_J^{str})^{-1}` and
`\partial_t P_{J,\top}^{seg}
=(\partial_t n_J)\otimes n_J+n_J\otimes(\partial_t n_J)`.

Differentiate `m_J=Q_J^{top}\mathcal C_J^N n_J`:

```math
\partial_t m_J
=
-(\partial_t P_{J,\top}^{seg})\mathcal C_J^N n_J
+
Q_J^{top}(\partial_t \mathcal C_J^N)n_J
+
Q_J^{top}\mathcal C_J^N(\partial_t n_J),
```

then substitute `(D.7mb4)` and `(D.7mb6)` to obtain `(D.7mb7)`. For the norm
estimate, use
`\|Q_J^{top}\|_{\mathrm{op}}=\|P_{J,\top}^{seg}\|_{\mathrm{op}}=1`,
`|n_J|=1`, and `\|R_J^{str}\|_{\mathrm{op}}\le (g_J^{str})^{-1}`:

```math
|\partial_t m_J|
\le
2\Bigl|
Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J
\Bigr|
+
\bigl|\partial_t P_{J,\top}^{seg}\bigr|\,|\mathcal C_J^N|
+
|\mathcal C_J^N|\,\|R_J^{str}\|_{\mathrm{op}}\,|\partial_t S_J^N|
\le
2\Bigl|
Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J
\Bigr|
+
3\frac{|\mathcal C_J^N|\,|\partial_t S_J^N|}{g_J^{str}}.
```

Integrating from `t_0` to `t` yields `(D.7mb8)`.

For `(D.7mb9)`, observe that

```math
\mathcal C_J^N n_J
=
\langle n_J,\mathcal C_J^N n_J\rangle n_J
+
m_J,
```

so `m_J` is the symmetric-matrix residual of the unit vector `n_J` for
`\mathcal C_J^N`. The standard residual theorem for symmetric matrices with a
simple top eigenvalue gives
`\sin\angle(n_J,P_J^{CG})\le |m_J|/\operatorname{gap}_J^{CG}`. Since
`\|P_{J,\top}^{seg}-P_J^{CG}\|_F^2
=2\sin^2\angle(n_J,P_J^{CG})`, `(D.7mb9)` follows.
Finally, because
`\|(I-P_{J,\top}^{seg})\mathcal C_J^N P_{J,\top}^{seg}\|_F=|m_J|`, the definition `(D.7mb10)`
implies `(D.7ma5)`. The eigenspace statement for `\widetilde{\mathcal C}_J^N`
is immediate from `(D.7ma2)`. ∎

So the selector-strain compatibility slot `(D.7ma5)` is no longer a hidden
black box. On the atom-free selector-good windows it is formally reduced to
three concrete budgets:

1. the initial projective residual `|m_J(t_0,a,b)|`;
2. the off-axis forcing integral
   `\int |Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J|`;
3. the strain-variation / gap budget
   `\int |\mathcal C_J^N|\,|\partial_t S_J^N|/g_J^{str}`.

The remaining theorem-level work on the Cauchy-Green branch is therefore exact:
produce those three budgets on a quantitatively large selector-good family and
maintain a nondegenerate Cauchy-Green spectral gap.

### Proposition D.7mc (invertible-bundle rewrite of the off-axis forcing term)

Under the hypotheses of Proposition `D.7mb`, assume in addition that
`W_J^N(t,a)` is invertible on `N_a` for almost every `t\in I_0`, and define the
conjugated strain operator

```math
B_J^N(t,a)
:=
\bigl(W_J^N(t,a)\bigr)^{-1}S_J^N(t,a)W_J^N(t,a).
\tag{D.7mc1}
```

Then the off-axis forcing term from `(D.7mb7)` admits the exact decomposition

```math
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
=
\bigl\langle n_J(a,b,t),B_J^N(t,a)n_J(a,b,t)\bigr\rangle\,m_J(t,a,b)
+
Q_J^{top}(t)\,\mathcal C_J^N(t,a)\,Q_J^{top}(t)\,B_J^N(t,a)n_J(a,b,t).
\tag{D.7mc2}
```

Consequently, for almost every `t\in I_0`,

```math
|\partial_t m_J(t,a,b)|
\le
\left(
2\bigl|\langle n_J(a,b,t),B_J^N(t,a)n_J(a,b,t)\rangle\bigr|
+
3\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)}
\right)
|m_J(t,a,b)|
+
2\bigl|
Q_J^{top}(t)\,\mathcal C_J^N(t,a)\,Q_J^{top}(t)\,B_J^N(t,a)n_J(a,b,t)
\bigr|
+
3\frac{
|\mathcal C_J^N(t,a)|\,|\partial_t S_J^N(t,a)|
}{
g_J^{str}(t,a)
}.
\tag{D.7mc3}
```

Hence

```math
|m_J(t,a,b)|
\le
\exp\!\Bigl(
\int_{t_0}^t a_J^{CG}(s,a,b)\,ds
\Bigr)
\left(
|m_J(t_0,a,b)|
+
\int_{t_0}^t \Theta_J^{CG}(s,a,b)\,ds
\right),
\tag{D.7mc4}
```

where

```math
a_J^{CG}(t,a,b)
:=
2\bigl|\langle n_J(a,b,t),B_J^N(t,a)n_J(a,b,t)\rangle\bigr|
+
3\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)},
\tag{D.7mc5}
```

and

```math
\Theta_J^{CG}(t,a,b)
:=
2\bigl|
Q_J^{top}(t)\,\mathcal C_J^N(t,a)\,Q_J^{top}(t)\,B_J^N(t,a)n_J(a,b,t)
\bigr|
+
3\frac{
|\mathcal C_J^N(t,a)|\,|\partial_t S_J^N(t,a)|
}{
g_J^{str}(t,a)
}.
\tag{D.7mc6}
```

Thus the Cauchy-Green branch fits the abstract Gronwall template `D.7n` with
alignment defect `\mathfrak a_J^{align}=|m_J|` once one controls the scalar
coefficient `a_J^{CG}` and the transverse remainder `\Theta_J^{CG}` on the
selector-good family.

**Proof.**
Because `\mathcal C_J^N=(W_J^N)^*W_J^N` and `B_J^N=(W_J^N)^{-1}S_J^N W_J^N`,

```math
(W_J^N)^*S_J^N W_J^N
=
\mathcal C_J^N B_J^N.
\tag{D.7mc7}
```

Insert `P_{J,\top}^{seg}+Q_J^{top}=I_{N_a}` on the right:

```math
Q_J^{top}\mathcal C_J^N B_J^N n_J
=
Q_J^{top}\mathcal C_J^N P_{J,\top}^{seg} B_J^N n_J
+
Q_J^{top}\mathcal C_J^N Q_J^{top} B_J^N n_J.
\tag{D.7mc8}
```

Since `P_{J,\top}^{seg}v=\langle n_J,v\rangle n_J` for every `v\in N_a`,

```math
Q_J^{top}\mathcal C_J^N P_{J,\top}^{seg} B_J^N n_J
=
\bigl\langle n_J,B_J^N n_J\bigr\rangle
Q_J^{top}\mathcal C_J^N n_J
=
\bigl\langle n_J,B_J^N n_J\bigr\rangle m_J,
\tag{D.7mc9}
```

which gives `(D.7mc2)`.

Now substitute `(D.7mc2)` into `(D.7mb7)` and take norms. The term
`2\langle n_J,B_J^N n_J\rangle m_J` contributes the self-coupling piece,
and the remainder is bounded by the second term in `(D.7mc6)`. The first part
of `(D.7mc3)` follows from the bound in `(D.7mb8)` together with
`\bigl|\langle n_J,B_J^N n_J\rangle m_J\bigr|
\le
\bigl|\langle n_J,B_J^N n_J\bigr|\,|m_J|`.

Finally apply the scalar Gronwall inequality to the differential inequality
`u'(t)\le a_J^{CG}(t)u(t)+\Theta_J^{CG}(t)` with `u(t)=|m_J(t,a,b)|`. This
gives `(D.7mc4)`. ∎

So the user’s suggested rewrite

```math
Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J
=
Q_J^{top}\mathcal C_J^N B_J^N n_J
```

is not just cosmetic. On the invertible selector-good bundle it isolates a
self-coupling coefficient and a genuinely transverse remainder, making the
Cauchy-Green branch an exact `D.7n`-type Gronwall packet rather than a bare
integral estimate.

### Proposition D.7md (Cauchy-Green spectral split of the off-axis forcing)

Under the hypotheses of Proposition `D.7mc`, let
`P_J^{CG}(t,a)=p_J(t,a)\otimes p_J(t,a)` denote the top Cauchy-Green projector,
let `Q_J^{CG}(t,a):=I_{N_a}-P_J^{CG}(t,a)`, and write

```math
\mu_1^{CG}(t,a):=\lambda_1\!\big(\mathcal C_J^N(t,a)\big),
\qquad
\mu_2^{CG}(t,a):=\lambda_2\!\big(\mathcal C_J^N(t,a)\big),
\tag{D.7md1}
```

so that

```math
\mathcal C_J^N(t,a)
=
\mu_1^{CG}(t,a)\,P_J^{CG}(t,a)
+
\mathcal C_{J,\perp}^{CG}(t,a),
\qquad
\mathcal C_{J,\perp}^{CG}(t,a)
:=
Q_J^{CG}(t,a)\,\mathcal C_J^N(t,a)\,Q_J^{CG}(t,a).
\tag{D.7md2}
```

Then for almost every `t\in I_0`,

```math
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
=
\mu_1^{CG}(t,a)\,
\bigl\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\bigr\rangle\,
Q_J^{top}(t)\,p_J(t,a)
+
Q_J^{top}(t)\,\mathcal C_{J,\perp}^{CG}(t,a)\,
Q_J^{CG}(t,a)\,B_J^N(t,a)n_J(a,b,t).
\tag{D.7md3}
```

Consequently,

```math
\Bigl|
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
\Bigr|
\le
\mu_1^{CG}(t,a)\,
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|\,
\bigl|Q_J^{top}(t)p_J(t,a)\bigr|
+
\mu_2^{CG}(t,a)\,
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)n_J(a,b,t)\bigr|.
\tag{D.7md4}
```

Moreover, Proposition `D.7mb9` implies

```math
\bigl|Q_J^{top}(t)p_J(t,a)\bigr|
=
\sin\angle\!\bigl(n_J(a,b,t),p_J(t,a)\bigr)
\le
\frac{|m_J(t,a,b)|}{\operatorname{gap}_J^{CG}(t,a)},
\tag{D.7md5}
```

so

```math
\Bigl|
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
\Bigr|
\le
\frac{
\mu_1^{CG}(t,a)\,
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|
}{
\operatorname{gap}_J^{CG}(t,a)
}
\,|m_J(t,a,b)|
+
\mu_2^{CG}(t,a)\,
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)n_J(a,b,t)\bigr|.
\tag{D.7md6}
```

In particular, the differential inequality from `(D.7mb7)` sharpens to

```math
|\partial_t m_J(t,a,b)|
\le
\left(
2\frac{
\mu_1^{CG}(t,a)\,
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|
}{
\operatorname{gap}_J^{CG}(t,a)
}
+
3\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)}
\right)
|m_J(t,a,b)|
+
2\mu_2^{CG}(t,a)\,
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)n_J(a,b,t)\bigr|
+
3\frac{
|\mathcal C_J^N(t,a)|\,|\partial_t S_J^N(t,a)|
}{
g_J^{str}(t,a)
}.
\tag{D.7md7}
```

Thus the off-axis forcing has an exact split into:

1. a projective-angle self-coupling term, already proportional to `|m_J|`; and
2. a genuinely Cauchy-Green-transverse leakage term controlled by
   `Q_J^{CG}B_J^N n_J`.

So the remaining theorem input on the Cauchy-Green branch is sharper than a
single opaque forcing estimate: one needs pair-to-cocycle synchronization to
make `Q_J^{top}p_J` small, and one needs selector-strain compatibility in
transported coordinates to make `Q_J^{CG}B_J^N n_J` small on the
selector-good family.

**Proof.**
By `(D.7mc7)` and the spectral decomposition `(D.7md2)`,

```math
Q_J^{top}\,(W_J^N)^*S_J^N W_J^N n_J
=
Q_J^{top}\,\mathcal C_J^N B_J^N n_J
=
\mu_1^{CG}\,Q_J^{top}P_J^{CG}B_J^N n_J
+
Q_J^{top}\,\mathcal C_{J,\perp}^{CG} B_J^N n_J.
\tag{D.7md8}
```

Since `P_J^{CG}v=\langle p_J,v\rangle p_J`,

```math
Q_J^{top}P_J^{CG}B_J^N n_J
=
\bigl\langle p_J,B_J^N n_J\bigr\rangle\,Q_J^{top}p_J.
\tag{D.7md9}
```

Also `\mathcal C_{J,\perp}^{CG}P_J^{CG}=0`, hence

```math
\mathcal C_{J,\perp}^{CG} B_J^N n_J
=
\mathcal C_{J,\perp}^{CG}Q_J^{CG} B_J^N n_J,
\tag{D.7md10}
```

which yields `(D.7md3)`. Taking norms and using
`\|\mathcal C_{J,\perp}^{CG}\|_{\mathrm{op}}\le \mu_2^{CG}` gives `(D.7md4)`.

For `(D.7md5)`, note that

```math
\bigl|Q_J^{top}p_J\bigr|^2
=
1-\bigl(n_J\cdot p_J\bigr)^2
=
\frac12\bigl\|P_{J,\top}^{seg}-P_J^{CG}\bigr\|_F^2,
\tag{D.7md11}
```

so Proposition `D.7mb9` implies
`\bigl|Q_J^{top}p_J\bigr|\le |m_J|/\operatorname{gap}_J^{CG}`. Substituting
this into `(D.7md4)` gives `(D.7md6)`, and then inserting `(D.7md6)` into
`(D.7mb7)` yields `(D.7md7)`. ∎

### Corollary D.7me (commutator-smallness sufficient route for the Cauchy-Green leakage term)

Under the hypotheses of Proposition `D.7md`, one has

```math
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)n_J(a,b,t)\bigr|
\le
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)p_J(t,a)\bigr|
+
\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}\,
\bigl|Q_J^{CG}(t,a)n_J(a,b,t)\bigr|.
\tag{D.7me1}
```

Hence Proposition `D.7mb9` yields

```math
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)n_J(a,b,t)\bigr|
\le
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)p_J(t,a)\bigr|
+
\frac{
\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
|m_J(t,a,b)|.
\tag{D.7me2}
```

Consequently,

```math
\Bigl|
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
\Bigr|
\le
\frac{
\mu_1^{CG}(t,a)\,
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|
+
\mu_2^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
|m_J(t,a,b)|
+
\mu_2^{CG}(t,a)\,
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)p_J(t,a)\bigr|.
\tag{D.7me3}
```

If moreover `\operatorname{gap}_J^{CG}(t,a)>0`, then on `Q_J^{CG}(t,a)N_a`,

```math
\bigl(\mu_1^{CG}(t,a)I_{N_a}-\mathcal C_J^N(t,a)\bigr)
\big|_{Q_J^{CG}(t,a)N_a}
```

is invertible with inverse norm at most
`\operatorname{gap}_J^{CG}(t,a)^{-1}`, and

```math
Q_J^{CG}(t,a)B_J^N(t,a)p_J(t,a)
=
-
\Bigl(
\bigl(\mu_1^{CG}(t,a)I_{N_a}-\mathcal C_J^N(t,a)\bigr)
\big|_{Q_J^{CG}(t,a)N_a}
\Bigr)^{-1}
Q_J^{CG}(t,a)\,
[\mathcal C_J^N(t,a),B_J^N(t,a)]\,p_J(t,a).
\tag{D.7me4}
```

Therefore

```math
\bigl|Q_J^{CG}(t,a)B_J^N(t,a)p_J(t,a)\bigr|
\le
\frac{
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
},
\tag{D.7me5}
```

and the off-axis forcing obeys the commutator-controlled bound

```math
\Bigl|
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
\Bigr|
\le
\frac{
\mu_1^{CG}(t,a)\,
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|
+
\mu_2^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
|m_J(t,a,b)|
+
\frac{
\mu_2^{CG}(t,a)
}{
\operatorname{gap}_J^{CG}(t,a)
}
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}}.
\tag{D.7me6}
```

In particular, a sufficient route for selector-strain compatibility on the
Cauchy-Green branch is:

1. pair-to-cocycle synchronization, so `|m_J|` is small and hence
   `Q_J^{top}p_J` and `Q_J^{CG}n_J` are small;
2. a nondegenerate Cauchy-Green spectral gap;
3. commutator smallness
   `\|[\mathcal C_J^N,B_J^N]\|_{\mathrm{op}}` on the selector-good family.

**Proof.**
Decompose `n_J=P_J^{CG}n_J+Q_J^{CG}n_J`. Since `P_J^{CG}n_J=(p_J\cdot n_J)p_J`,

```math
Q_J^{CG}B_J^N n_J
=
(p_J\cdot n_J)\,Q_J^{CG}B_J^N p_J
+
Q_J^{CG}B_J^N Q_J^{CG}n_J,
```

which gives `(D.7me1)` after taking norms. Proposition `D.7mb9` implies
`\bigl|Q_J^{CG}n_J\bigr|
=
\sin\angle(n_J,p_J)
\le
|m_J|/\operatorname{gap}_J^{CG}`,
so `(D.7me2)` follows. Substitute `(D.7me2)` into `(D.7md6)` to obtain
`(D.7me3)`.

For `(D.7me4)`, use `\mathcal C_J^N p_J=\mu_1^{CG}p_J`:

```math
[\mathcal C_J^N,B_J^N]p_J
=
\mathcal C_J^N B_J^N p_J
-
\mu_1^{CG} B_J^N p_J
=
\bigl(\mathcal C_J^N-\mu_1^{CG}I_{N_a}\bigr)Q_J^{CG}B_J^N p_J.
```

Multiplying by
`-\bigl(\mu_1^{CG}I_{N_a}-\mathcal C_J^N\bigr)^{-1}\big|_{Q_J^{CG}N_a}`
on the invariant subspace `Q_J^{CG}N_a` yields `(D.7me4)`, and the inverse norm
bound gives `(D.7me5)`. Finally substitute `(D.7me5)` into `(D.7me3)` to obtain
`(D.7me6)`. ∎

### Corollary D.7mf (commutator-control sufficient condition for selector-strain compatibility)

Under the hypotheses of Corollary `D.7me`, define

```math
a_J^{comm}(t,a,b)
:=
2\frac{
\mu_1^{CG}(t,a)\,
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|
+
\mu_2^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
+
3\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)},
\tag{D.7mf1}
```

and

```math
\Theta_J^{comm}(t,a,b)
:=
2\frac{
\mu_2^{CG}(t,a)
}{
\operatorname{gap}_J^{CG}(t,a)
}
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}}
+
3\frac{
|\mathcal C_J^N(t,a)|\,|\partial_t S_J^N(t,a)|
}{
g_J^{str}(t,a)
}.
\tag{D.7mf2}
```

Assume there is a uniform Cauchy-Green gap floor
`\operatorname{gap}_J^{CG}(t,a)\ge \gamma_J^{CG}>0` on `I_0`, and that

```math
\int_{t_0}^{t_1} a_J^{comm}(s,a,b)\,ds
\le
K_J^{comm}(a,b),
\tag{D.7mf3}
```

while

```math
|m_J(t_0,a,b)|
+
\int_{t_0}^{t_1}\Theta_J^{comm}(s,a,b)\,ds
\le
\eta_J^{comm}(a,b).
\tag{D.7mf4}
```

Then for every `t\in I_0`,

```math
|m_J(t,a,b)|
\le
\exp\!\bigl(K_J^{comm}(a,b)\bigr)\,
\eta_J^{comm}(a,b),
\tag{D.7mf5}
```

and therefore

```math
\bigl\|P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)\bigr\|_F^2
\le
\frac{
2\,e^{2K_J^{comm}(a,b)}\,\eta_J^{comm}(a,b)^2
}{
(\gamma_J^{CG})^2
}.
\tag{D.7mf6}
```

In particular, `(D.7ma5)` holds on `I_0` with

```math
\operatorname{Err}_{J,CG}^{strain}(a,b,t)
:=
\frac{
e^{2K_J^{comm}(a,b)}\,\eta_J^{comm}(a,b)^2
}{
(\gamma_J^{CG})^2
},
\tag{D.7mf7}
```

so the selector-strain compatibility slot is discharged whenever the
self-coupling coefficient is Gronwall-integrable and the commutator/strain
source term is small on the selector-good family.

**Proof.**
Corollary `D.7me` gives the differential inequality

```math
|\partial_t m_J(t,a,b)|
\le
a_J^{comm}(t,a,b)\,|m_J(t,a,b)|
+
\Theta_J^{comm}(t,a,b).
```

Apply the scalar Gronwall inequality on `[t_0,t]` to obtain

```math
|m_J(t,a,b)|
\le
\exp\!\Bigl(\int_{t_0}^t a_J^{comm}(s,a,b)\,ds\Bigr)
\left(
|m_J(t_0,a,b)|
+
\int_{t_0}^t \Theta_J^{comm}(s,a,b)\,ds
\right),
```

which together with `(D.7mf3)`-`(D.7mf4)` yields `(D.7mf5)`.
Now use Proposition `D.7mb9` and the lower bound
`\operatorname{gap}_J^{CG}\ge\gamma_J^{CG}` to obtain `(D.7mf6)`.
Finally,
`\|(I-P_{J,\top}^{seg})\mathcal C_J^N P_{J,\top}^{seg}\|_F=|m_J|`
and `|m_J|\le \operatorname{gap}_J^{CG}\operatorname{Err}_{J,CG}^{strain\,1/2}`
with `(D.7mf7)`, so `(D.7ma5)` follows. ∎

### Corollary D.7mg (two-input sufficient closure of the exact-potential Cauchy-Green branch)

Assume the hypotheses of Proposition `D.7ma` on the transported good family,
and suppose the pair-to-cocycle synchronization estimate `(D.7ma4)` holds for a
projector field `\widehat P_J(a,b,t)`. Assume in addition that the
commutator-control hypotheses of Corollary `D.7mf` hold on `I_0`, so that
`\operatorname{Err}_{J,CG}^{strain}` is given by `(D.7mf7)`.

Then on `I_0`,

```math
\Xi_J^{ang}(a,b,t)
\le
C\,|W_J(a,b,t)|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair}(a,b,t)
+
C\frac{
e^{2K_J^{comm}(a,b)}\,\eta_J^{comm}(a,b)^2
}{
(\gamma_J^{CG})^2
}.
\tag{D.7mg1}
```

In particular, the exact-potential Cauchy-Green branch of `PSJ+` is discharged
on the selector-good family whenever the following two theorem inputs are
available:

1. pair-to-cocycle synchronization `(D.7ma4)` from the signless pair packet to
   a transported projector field;
2. commutator-controlled selector-strain compatibility in the sense of
   Corollary `D.7mf`.

So the Cauchy-Green route reduces the exact-potential branch to exactly those
two remaining theorem packets and no hidden algebraic step remains.

**Proof.**
Corollary `D.7mf` supplies `(D.7ma5)` with
`\operatorname{Err}_{J,CG}^{strain}` equal to `(D.7mf7)`. Substitute that
quantity into `(D.7ma7)` from Proposition `D.7ma`. This yields `(D.7mg1)`. ∎

### Proposition D.7mi (transported strain evolution identifies the true persistence quantity)

Under the hypotheses of Proposition `D.7mb`, define the skew part of the
restricted cocycle generator by

```math
K_J^N(t,a)
:=
\frac{A_J^N(t,a)-(A_J^N(t,a))^*}{2}.
\tag{D.7mi1}
```

Then on the atom-free window `I_0`,

```math
\partial_t B_J^N(t,a)
=
\bigl(W_J^N(t,a)\bigr)^{-1}
\Bigl(
\partial_t S_J^N(t,a)
+
[S_J^N(t,a),A_J^N(t,a)]
\Bigr)
W_J^N(t,a)
\tag{D.7mi2}
```

and therefore

```math
\partial_t B_J^N(t,a)
=
\bigl(W_J^N(t,a)\bigr)^{-1}
\Bigl(
\partial_t S_J^N(t,a)
+
[S_J^N(t,a),K_J^N(t,a)]
\Bigr)
W_J^N(t,a).
\tag{D.7mi3}
```

Consequently,

```math
\bigl|B_J^N(t,a)-B_J^N(t_0,a)\bigr|_{\mathrm{op}}
\le
\int_{t_0}^t
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}
\Bigl(
|\partial_s S_J^N(s,a)|
+
\bigl|[S_J^N(s,a),K_J^N(s,a)]\bigr|_{\mathrm{op}}
\Bigr)\,ds.
\tag{D.7mi4}
```

So slow variation of `S_J^N` alone is not enough to force persistence of the
transported strain operator `B_J^N`; one must also control the rotational
commutator `[S_J^N,K_J^N]`.

**Proof.**
Differentiate `B_J^N=(W_J^N)^{-1}S_J^N W_J^N` and use
`\partial_t (W_J^N)^{-1}=-(W_J^N)^{-1}A_J^N`:

```math
\partial_t B_J^N
=
-(W_J^N)^{-1}A_J^N S_J^N W_J^N
+
(W_J^N)^{-1}(\partial_t S_J^N)W_J^N
+
(W_J^N)^{-1}S_J^N A_J^N W_J^N,
```

which is `(D.7mi2)`. Since `A_J^N=S_J^N+K_J^N` and `[S_J^N,S_J^N]=0`,
`[S_J^N,A_J^N]=[S_J^N,K_J^N]`, giving `(D.7mi3)`. Integrating the operator-norm
bound yields `(D.7mi4)`. ∎

### Corollary D.7mj (reference-commutator persistence route for the Cauchy-Green branch)

Fix one reference time `\tau\in I_0` and write

```math
\mathcal C_{J,\tau}^N:=\mathcal C_J^N(\tau,a),
\qquad
B_{J,\tau}^N:=B_J^N(\tau,a).
\tag{D.7mj1}
```

Then for every `t\in I_0`,

```math
[\mathcal C_J^N(t,a),B_J^N(t,a)]
=
[\mathcal C_J^N(t,a),B_J^N(t,a)-B_{J,\tau}^N]
+
[\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N,B_{J,\tau}^N]
+
[\mathcal C_{J,\tau}^N,B_{J,\tau}^N].
\tag{D.7mj2}
```

Hence

```math
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}}
\le
2\bigl|\mathcal C_J^N(t,a)\bigr|_{\mathrm{op}}
\bigl|B_J^N(t,a)-B_{J,\tau}^N\bigr|_{\mathrm{op}}
+
2\bigl|\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}
\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}}
+
\bigl\|[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]\bigr\|_{\mathrm{op}}.
\tag{D.7mj3}
```

In particular, a sufficient persistence-style route for the commutator term in
Corollary `D.7me` is:

1. choose a reference time `\tau` where the reference commutator
   `[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]` is small or zero;
2. control `|\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N|_{\mathrm{op}}`;
3. control `|B_J^N(t,a)-B_{J,\tau}^N|_{\mathrm{op}}`, for example via
   `(D.7mi4)`.

Thus the correct imported persistence heuristic is not merely
“`S_J^N` varies slowly,” but rather “the transported strain operator `B_J^N`
and the Cauchy-Green tensor `\mathcal C_J^N` stay close to a nearly commuting
reference pair.”

**Proof.**
Expand the commutator as in `(D.7mj2)` and use
`\|[X,Y]\|_{\mathrm{op}}\le 2\|X\|_{\mathrm{op}}\|Y\|_{\mathrm{op}}` on the
first two terms. This gives `(D.7mj3)`. ∎

### Corollary D.7mk (reference-persistence sufficient packet for selector-strain compatibility)

Fix one reference time `\tau\in I_0` and keep the hypotheses of Corollary
`D.7mf`. Define

```math
E_{J,\tau}^{CG}(t,a)
:=
2\int_{\min\{t,\tau\}}^{\max\{t,\tau\}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}^2\,|S_J^N(s,a)|\,ds
\tag{D.7mk1}
```

and

```math
E_{J,\tau}^{B}(t,a)
:=
\int_{\min\{t,\tau\}}^{\max\{t,\tau\}}
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}
\Bigl(
|\partial_s S_J^N(s,a)|
+
\bigl|[S_J^N(s,a),K_J^N(s,a)]\bigr|_{\mathrm{op}}
\Bigr)\,ds.
\tag{D.7mk2}
```

Then for every `t\in I_0`,

```math
\bigl|\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}
\le
E_{J,\tau}^{CG}(t,a),
\qquad
\bigl|B_J^N(t,a)-B_{J,\tau}^N\bigr|_{\mathrm{op}}
\le
E_{J,\tau}^{B}(t,a),
\tag{D.7mk3}
```

and hence Corollary `D.7mj` gives

```math
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}}
\le
2\bigl|\mathcal C_J^N(t,a)\bigr|_{\mathrm{op}}\,E_{J,\tau}^{B}(t,a)
+
2E_{J,\tau}^{CG}(t,a)\,\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}}
+
\bigl\|[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]\bigr\|_{\mathrm{op}}.
\tag{D.7mk4}
```

Define the reference-persistence source term

```math
\Theta_{J,\tau}^{ref}(t,a,b)
:=
2\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\left(
2\bigl|\mathcal C_J^N(t,a)\bigr|_{\mathrm{op}}\,E_{J,\tau}^{B}(t,a)
+
2E_{J,\tau}^{CG}(t,a)\,\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}}
+
\bigl\|[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]\bigr\|_{\mathrm{op}}
\right)
+
3\frac{
|\mathcal C_J^N(t,a)|\,|\partial_t S_J^N(t,a)|
}{
g_J^{str}(t,a)
}.
\tag{D.7mk5}
```

Assume in addition to `(D.7mf3)` that

```math
|m_J(t_0,a,b)|
+
\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref}(s,a,b)\,ds
\le
\eta_{J,\tau}^{ref}(a,b).
\tag{D.7mk6}
```

Then the conclusions `(D.7mf5)`-`(D.7mf7)` hold with
`\eta_J^{comm}(a,b)=\eta_{J,\tau}^{ref}(a,b)`.

In particular, one sufficient persistence route for the selector-strain
compatibility slot is:

1. choose `\tau` so that the reference pair
   `(\mathcal C_{J,\tau}^N,B_{J,\tau}^N)` nearly commutes;
2. keep `\mathcal C_J^N` close to `\mathcal C_{J,\tau}^N`;
3. keep `B_J^N` close to `B_{J,\tau}^N`, which by `(D.7mi4)` requires control
   of both `\partial_t S_J^N` and the rotational commutator
   `[S_J^N,K_J^N]`;
4. keep the self-coupling coefficient `a_J^{comm}` Gronwall-integrable.

So the sharp imported persistence theorem is not “`S_J^N` varies slowly,” but
“the pair `(\mathcal C_J^N,B_J^N)` stays near a nearly commuting reference
pair, with transported-strain persistence measured through
`\partial_t S_J^N+[S_J^N,K_J^N]`.”

**Proof.**
Integrating `(D.7mb4)` gives

```math
\bigl|\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}
\le
2\int_{\min\{t,\tau\}}^{\max\{t,\tau\}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}^2\,|S_J^N(s,a)|\,ds,
```

which is the first part of `(D.7mk3)`. The second part is exactly `(D.7mi4)`,
rewritten with base time `\tau`. Substituting `(D.7mk3)` into `(D.7mj3)` gives
`(D.7mk4)`, and then inserting `(D.7mk4)` into the commutator term in
`(D.7mf2)` yields `(D.7mk5)`. Hence `(D.7mk6)` implies `(D.7mf4)`, and
Corollary `D.7mf` completes the proof. ∎

### Corollary D.7mp (reference-direction forcing yields Gronwall control of the strain-angle defect)

Keep the hypotheses of Proposition `D.7mb`, so `n_J(a,b,t)` denotes the
instantaneous top strain direction in `N_a`. Let `\nu_J(t,a)` be any absolutely
continuous unit vector field on `N_a` satisfying

```math
\partial_t \nu_J(t,a)
=
\bigl(I_{N_a}-\nu_J(t,a)\otimes \nu_J(t,a)\bigr)\,S_J^N(t,a)\,\nu_J(t,a)
+
F_J^{ref}(t,a),
\tag{D.7mp1}
```

for almost every `t\in I_0`, where `F_J^{ref}(t,a)\in N_a` is a forcing term.
Define the reference strain-angle defect

```math
\alpha_J^{ref}(t,a,b)
:=
1-\bigl(\nu_J(t,a)\cdot n_J(a,b,t)\bigr)^2.
\tag{D.7mp2}
```

Then for almost every `t\in I_0`,

```math
\partial_t \alpha_J^{ref}(t,a,b)
\le
-2g_J^{str}(t,a)\,
\bigl(1-\alpha_J^{ref}(t,a,b)\bigr)\,
\alpha_J^{ref}(t,a,b)
+
2\bigl|F_J^{ref}(t,a)\bigr|
+
4\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)}.
\tag{D.7mp3}
```

In particular, on the bootstrap region
`\alpha_J^{ref}(t,a,b)\le \tfrac12` one has

```math
\partial_t \alpha_J^{ref}(t,a,b)
+
g_J^{str}(t,a)\,\alpha_J^{ref}(t,a,b)
\le
2\bigl|F_J^{ref}(t,a)\bigr|
+
4\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)}.
\tag{D.7mp4}
```

Hence if

```math
\alpha_J^{ref}(t_0,a,b)
+
\int_{t_0}^{t_1}
\left(
2\bigl|F_J^{ref}(s,a)\bigr|
+
4\frac{|\partial_s S_J^N(s,a)|}{g_J^{str}(s,a)}
\right)\,ds
\le
\eta_J^{ref}(a,b),
\tag{D.7mp5}
```

and

```math
2e^{-\int_{t_0}^t g_J^{str}(r,a)\,dr}\,\eta_J^{ref}(a,b)\le 1
\qquad\text{for every }t\in I_0,
\tag{D.7mp6}
```

then

```math
\alpha_J^{ref}(t,a,b)
\le
e^{-\int_{t_0}^t g_J^{str}(r,a)\,dr}\,\alpha_J^{ref}(t_0,a,b)
+
\int_{t_0}^t
e^{-\int_s^t g_J^{str}(r,a)\,dr}
\left(
2\bigl|F_J^{ref}(s,a)\bigr|
+
4\frac{|\partial_s S_J^N(s,a)|}{g_J^{str}(s,a)}
\right)\,ds
\tag{D.7mp7}
```

and, in particular,

```math
\sup_{t\in I_0}\alpha_J^{ref}(t,a,b)\le \eta_J^{ref}(a,b).
\tag{D.7mp8}
```

Thus the honest `SSC-Ref` theorem target is not an equation for `n_J` itself.
It is the existence of a selector-good reference direction `\nu_J` whose forcing
`F_J^{ref}` is Gronwall-small relative to the instantaneous top strain
direction.

**Proof.**
Write `c_J(t):=\nu_J(t,a)\cdot n_J(a,b,t)`, so
`\alpha_J^{ref}=1-c_J^2`. Because `\nu_J` is unit and `n_J` is the simple-top
eigenvector of `S_J^N`, one has

```math
\partial_t c_J
=
\bigl(\partial_t \nu_J\bigr)\cdot n_J
+
\nu_J\cdot \partial_t n_J
=
\bigl(Q_{\nu_J}S_J^N\nu_J\bigr)\cdot n_J
+
F_J^{ref}\cdot n_J
+
\nu_J\cdot \partial_t n_J.
```

Decompose `\nu_J=c_J n_J+w_J` with `w_J\perp n_J` and `|w_J|^2=\alpha_J^{ref}`.
Then
`\nu_J\cdot S_J^N\nu_J
\le
\lambda_1(S_J^N)-g_J^{str}\alpha_J^{ref}`, hence

```math
\bigl(Q_{\nu_J}S_J^N\nu_J\bigr)\cdot n_J
=
c_J\bigl(\lambda_1(S_J^N)-\nu_J\cdot S_J^N\nu_J\bigr)
\ge
c_J\,g_J^{str}\,\alpha_J^{ref}.
```

Also `(D.7mb6)` gives `|\partial_t n_J|\le 2|\partial_t S_J^N|/g_J^{str}`. Thus

```math
\partial_t c_J
\ge
c_J\,g_J^{str}\,\alpha_J^{ref}
-
\bigl|F_J^{ref}\bigr|
-
2\frac{|\partial_t S_J^N|}{g_J^{str}}.
```

Since `\partial_t \alpha_J^{ref}=-2c_J\partial_t c_J` and `|c_J|\le 1`, this
implies `(D.7mp3)`. On the region `\alpha_J^{ref}\le \tfrac12`, one has
`2(1-\alpha_J^{ref})\ge 1`, yielding `(D.7mp4)`. The scalar Gronwall inequality
then gives `(D.7mp7)`, and the bootstrap condition `(D.7mp6)` closes the
estimate to obtain `(D.7mp8)`. ∎

### Corollary D.7mo (reference-gap persistence for the Cauchy-Green projector)

Fix one reference time `\tau\in I_0` and assume the reference Cauchy-Green tensor
`\mathcal C_{J,\tau}^N` has simple top eigenvalue with gap

```math
\gamma_{J,\tau}^{ref}
:=
\lambda_1\!\bigl(\mathcal C_{J,\tau}^N\bigr)
-
\lambda_2\!\bigl(\mathcal C_{J,\tau}^N\bigr)
>0.
\tag{D.7mo1}
```

If

```math
E_{J,\tau}^{CG}(t,a)
\le
\frac{\gamma_{J,\tau}^{ref}}{4}
\qquad\text{for every }t\in I_0,
\tag{D.7mo2}
```

where `E_{J,\tau}^{CG}` is the persistence budget from `(D.7mk1)`, then

```math
\operatorname{gap}_J^{CG}(t,a)
\ge
\frac{\gamma_{J,\tau}^{ref}}{2}
\qquad\text{for every }t\in I_0,
\tag{D.7mo3}
```

and, writing `P_{J,\tau}^{CG}` for the top projector of `\mathcal C_{J,\tau}^N`,

```math
\bigl\|
P_J^{CG}(t,a)-P_{J,\tau}^{CG}(a)
\bigr\|_F^2
\le
\frac{
C_{CG,\mathrm{DK}}
}{
(\gamma_{J,\tau}^{ref})^2
}
E_{J,\tau}^{CG}(t,a)^2.
\tag{D.7mo4}
```

Thus the honest gap-floor theorem on the Cauchy-Green branch is not “integrated
instantaneous strain gap plus slow `S_J^N` variation implies a CG gap.” The
exact formal route is: reference simple-top gap for `\mathcal C_J^N` plus
Cauchy-Green persistence implies a uniform CG gap floor and reference-projector
stability.

**Proof.**
By `(D.7mk3)`,
`\|\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N\|_{\mathrm{op}}\le E_{J,\tau}^{CG}(t,a)`.
Weyl's inequality therefore gives

```math
\lambda_1\!\bigl(\mathcal C_J^N(t,a)\bigr)
\ge
\lambda_1\!\bigl(\mathcal C_{J,\tau}^N\bigr)-E_{J,\tau}^{CG}(t,a),
\qquad
\lambda_2\!\bigl(\mathcal C_J^N(t,a)\bigr)
\le
\lambda_2\!\bigl(\mathcal C_{J,\tau}^N\bigr)+E_{J,\tau}^{CG}(t,a),
```

so `(D.7mo2)` implies `(D.7mo3)`. The same perturbation bound together with the
rank-one Davis-Kahan estimate yields `(D.7mo4)`. ∎

### Corollary D.7ml (top-mode plus quadratic refinement of the self-coupling coefficient)

Keep the hypotheses of Corollary `D.7me` and define the transported top-mode
coefficient

```math
\sigma_J^{top}(t,a)
:=
\bigl|
\langle p_J(t,a),B_J^N(t,a)p_J(t,a)\rangle
\bigr|.
\tag{D.7ml1}
```

Then

```math
\bigl|
\langle p_J(t,a),B_J^N(t,a)n_J(a,b,t)\rangle
\bigr|
\le
\sigma_J^{top}(t,a)
+
\frac{
\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
|m_J(t,a,b)|.
\tag{D.7ml2}
```

Consequently, the off-axis forcing in `(D.7me6)` satisfies

```math
\Bigl|
Q_J^{top}(t)\,(W_J^N(t,a))^*S_J^N(t,a)W_J^N(t,a)\,n_J(a,b,t)
\Bigr|
\le
\frac{
\mu_1^{CG}(t,a)\sigma_J^{top}(t,a)
+
\mu_2^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
|m_J(t,a,b)|
+
\frac{
\mu_1^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)^2
}
|m_J(t,a,b)|^2
+
\frac{
\mu_2^{CG}(t,a)
}{
\operatorname{gap}_J^{CG}(t,a)
}
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}}.
\tag{D.7ml3}
```

Hence the residual obeys the refined logistic inequality

```math
|\partial_t m_J(t,a,b)|
\le
a_J^{lin}(t,a)\,|m_J(t,a,b)|
+
a_J^{quad}(t,a)\,|m_J(t,a,b)|^2
+
\Theta_J^{comm}(t,a,b),
\tag{D.7ml4}
```

where

```math
a_J^{lin}(t,a)
:=
2\frac{
\mu_1^{CG}(t,a)\sigma_J^{top}(t,a)
+
\mu_2^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)
}
+
3\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)},
\tag{D.7ml5}
```

```math
a_J^{quad}(t,a)
:=
2\frac{
\mu_1^{CG}(t,a)\bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(t,a)^2
},
\tag{D.7ml6}
```

and `\Theta_J^{comm}` is the source term from `(D.7mf2)`.

So the self-coupling slot is sharper than the packet in Corollary `D.7mf`: the
linear coefficient depends only on the transported top-mode growth rate
`\sigma_J^{top}` and `|B_J^N|`, while the remaining dependence on the unknown
angle defect is genuinely quadratic.

**Proof.**
Decompose `n_J=(p_J\cdot n_J)p_J+Q_J^{CG}n_J`. Then

```math
\langle p_J,B_J^N n_J\rangle
=
(p_J\cdot n_J)\langle p_J,B_J^N p_J\rangle
+
\langle p_J,B_J^N Q_J^{CG}n_J\rangle.
```

Taking absolute values and using `|p_J\cdot n_J|\le 1` gives
`\bigl|\langle p_J,B_J^N n_J\rangle\bigr|
\le
\sigma_J^{top}
+
|B_J^N|_{\mathrm{op}}\,|Q_J^{CG}n_J|`.
Now Proposition `D.7mb9` gives
`|Q_J^{CG}n_J|\le |m_J|/\operatorname{gap}_J^{CG}`, which is `(D.7ml2)`.
Substitute `(D.7ml2)` into `(D.7me6)` to obtain `(D.7ml3)`, and then insert
`(D.7ml3)` into `(D.7mb7)` to obtain `(D.7ml4)`-`(D.7ml6)`. ∎

### Corollary D.7mm (bootstrap closure from linear-plus-quadratic selector-strain control)

Keep the hypotheses of Corollary `D.7ml`, and assume on `I_0` that
`\operatorname{gap}_J^{CG}(t,a)\ge \gamma_J^{CG}>0`. Suppose

```math
\int_{t_0}^{t_1} a_J^{lin}(s,a)\,ds
\le
K_J^{lin}(a),
\qquad
\int_{t_0}^{t_1} a_J^{quad}(s,a)\,ds
\le
Q_J^{quad}(a),
\tag{D.7mm1}
```

while

```math
|m_J(t_0,a,b)|
+
\int_{t_0}^{t_1}\Theta_J^{comm}(s,a,b)\,ds
\le
\eta_J^{boot}(a,b).
\tag{D.7mm2}
```

If moreover

```math
4e^{2K_J^{lin}(a)}Q_J^{quad}(a)\,\eta_J^{boot}(a,b)
\le
1,
\tag{D.7mm3}
```

then

```math
\sup_{t\in I_0}|m_J(t,a,b)|
\le
2e^{K_J^{lin}(a)}\,\eta_J^{boot}(a,b),
\tag{D.7mm4}
```

and therefore

```math
\bigl\|P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)\bigr\|_F^2
\le
\frac{
8e^{2K_J^{lin}(a)}\,\eta_J^{boot}(a,b)^2
}{
(\gamma_J^{CG})^2
}
\qquad
\text{for every }t\in I_0.
\tag{D.7mm5}
```

In particular, `(D.7ma5)` holds with

```math
\operatorname{Err}_{J,CG}^{strain}(a,b,t)
:=
\frac{
4e^{2K_J^{lin}(a)}\,\eta_J^{boot}(a,b)^2
}{
(\gamma_J^{CG})^2
},
\tag{D.7mm6}
```

so one does not need the stronger-looking packet `\int_I a_J<1` from the
coarser roadmap. It is enough to control:

1. the linear top-mode growth rate `a_J^{lin}`;
2. the quadratic bootstrap coefficient `a_J^{quad}`;
3. the commutator/strain source `\Theta_J^{comm}`;
4. the smallness threshold `(D.7mm3)`.

Thus the selector-strain theorem target is sharper than the earlier draft:
the genuinely primitive input is not “self-coupling coefficient below one,” but
“linear growth integrable and quadratic feedback perturbative at the source
scale.”

**Proof.**
Let `U_J(a,b):=\sup_{t\in I_0}|m_J(t,a,b)|`. Integrating `(D.7ml4)` and using
the linear Gronwall inequality with `U_J(a,b)` as a bootstrap bound for the
quadratic term gives

```math
U_J(a,b)
\le
e^{K_J^{lin}(a)}
\left(
\eta_J^{boot}(a,b)
+
Q_J^{quad}(a)\,U_J(a,b)^2
\right).
\tag{D.7mm7}
```

Consider the interval
`\mathcal I:=[0,2e^{K_J^{lin}(a)}\eta_J^{boot}(a,b)]`. By `(D.7mm3)`, every
`u\in\mathcal I` satisfies

```math
e^{K_J^{lin}(a)}
\left(
\eta_J^{boot}(a,b)
+
Q_J^{quad}(a)\,u^2
\right)
\le
2e^{K_J^{lin}(a)}\eta_J^{boot}(a,b).
```

The standard continuity/bootstrap argument for `(D.7mm7)` therefore yields
`U_J(a,b)\in\mathcal I`, proving `(D.7mm4)`. Proposition `D.7mb9` then implies
`(D.7mm5)`, and `(D.7mm6)` is the corresponding projector-error ledger. ∎

### Proposition D.7mn (pair-to-cocycle synchronization reduces to linearization plus selector-shape)

Keep the hypotheses of Proposition `D.7ma`, and let
`\mathcal K_{J,\varepsilon}^{pair}(t,a)` be a symmetric observable tensor on
`N_a` built from the signless pair packet at scale `\varepsilon`, with top
eigenprojector `P_{J,\varepsilon}^{pair}(t,a)`. Suppose there is a positive
scalar normalizer `c_{J,\varepsilon}(t,a)>0` and a symmetric bundle tensor
`M_{J,\varepsilon}^{shape}(t,a)` on `N_a` such that

```math
\bigl\|
c_{J,\varepsilon}(t,a)^{-1}\mathcal K_{J,\varepsilon}^{pair}(t,a)
-
\bigl(\mathbf W_J^{coc}(t,a)\bigr)^*
M_{J,\varepsilon}^{shape}(t,a)
\mathbf W_J^{coc}(t,a)
\bigr\|_{\mathrm{op}}
\le
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a),
\tag{D.7mn1}
```

and

```math
\bigl\|
M_{J,\varepsilon}^{shape}(t,a)-I_{N_a}
\bigr\|_{\mathrm{op}}
\le
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a).
\tag{D.7mn2}
```

Then

```math
\bigl\|
c_{J,\varepsilon}(t,a)^{-1}\mathcal K_{J,\varepsilon}^{pair}(t,a)
-
\mathcal C_J^N(t,a)
\bigr\|_{\mathrm{op}}
\le
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)
+
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a).
\tag{D.7mn3}
```

If moreover

```math
\operatorname{gap}_J^{CG}(t,a)\ge \gamma_J^{CG}>0
\quad\text{and}\quad
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)
+
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)
\le
\frac{\gamma_J^{CG}}{4},
\tag{D.7mn4}
```

then the top eigenspace of `\mathcal K_{J,\varepsilon}^{pair}(t,a)` is simple and

```math
\bigl\|
P_{J,\varepsilon}^{pair}(t,a)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\frac{
C_{CG,\mathrm{DK}}
}{
(\gamma_J^{CG})^2
}
\left(
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)
+
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)
\right)^2.
\tag{D.7mn5}
```

Therefore the pair-to-cocycle slot `(D.7ma4)` is reduced to exactly two
primitive theorem inputs:

1. a cocycle linearization theorem proving `\operatorname{Err}_{J,\varepsilon}^{lin}\to 0`;
2. a selector-shape / selector-isotropy theorem proving
   `\operatorname{Err}_{J,\varepsilon}^{shape}\to 0`.

The Davis-Kahan step is then automatic once the simple-top gap stays open.

**Proof.**
Since `\mathcal C_J^N=(\mathbf W_J^{coc})^*\mathbf W_J^{coc}` on `N_a`,

```math
\bigl(\mathbf W_J^{coc}\bigr)^*
M_{J,\varepsilon}^{shape}
\mathbf W_J^{coc}
-
\mathcal C_J^N
=
\bigl(\mathbf W_J^{coc}\bigr)^*
\bigl(M_{J,\varepsilon}^{shape}-I_{N_a}\bigr)
\mathbf W_J^{coc}.
```

Taking operator norms gives
`\|(\mathbf W_J^{coc})^*M_{J,\varepsilon}^{shape}\mathbf W_J^{coc}-\mathcal C_J^N\|_{\mathrm{op}}
\le
|\mathbf W_J^{coc}|_{\mathrm{op}}^2\operatorname{Err}_{J,\varepsilon}^{shape}`.
Combining this with `(D.7mn1)` yields `(D.7mn3)`. Under `(D.7mn4)`, the
perturbation size is strictly below the simple-top gap, so the top eigenvalue
of `c_{J,\varepsilon}^{-1}\mathcal K_{J,\varepsilon}^{pair}` remains simple and
the rank-one Davis-Kahan estimate gives `(D.7mn5)`. ∎

### Corollary D.7mq (combined pair-to-cocycle theorem: linearization plus selector-shape imply `D.7ma4`)

Keep the hypotheses of Proposition `D.7mn` and define the pair-induced projector
field on the transported good family by

```math
\widehat P_{J,\varepsilon}^{pair}(a,b,t)
:=
P_{J,\varepsilon}^{pair}(t,a).
\tag{D.7mq1}
```

Set

```math
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
:=
\frac{
C_{CG,\mathrm{DK}}
}{
(\gamma_J^{CG})^2
}
\left(
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)
+
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)
\right)^2.
\tag{D.7mq2}
```

Then `(D.7ma4)` holds for `\widehat P_J=\widehat P_{J,\varepsilon}^{pair}` with
`C_{CG,\mathrm{pair}}=0` and
`\operatorname{Err}_{J,CG}^{pair}=\operatorname{Err}_{J,CG}^{pair,\varepsilon}`:

```math
\bigl\|
\widehat P_{J,\varepsilon}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t).
\tag{D.7mq3}
```

In particular, if the pair-average linearization theorem closes
`\operatorname{Err}_{J,\varepsilon}^{lin}\to 0` and the selector-shape theorem
closes `\operatorname{Err}_{J,\varepsilon}^{shape}\to 0` on the selector-good
family, then the pair-to-cocycle slot `(D.7ma4)` is discharged and the
Davis-Kahan step carries no remaining theorem burden.

**Proof.**
This is exactly `(D.7mn5)` rewritten in the notation of Proposition `D.7ma`. ∎

### Corollary D.7mr (single exact-potential closure packet outputs `D.7mg`)

Fix one selector-good atom-free window `I_0=[t_0,t_1]`. Assume:

1. the synchronization estimate `(D.7m3)` holds for the projector field
   `\widehat P_{J,\varepsilon}^{pair}` from `(D.7mq1)`, with synchronization
   ledger `\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)`;
2. the combined pair-to-cocycle hypotheses of Corollary `D.7mq` hold, so that
   `(D.7mq3)` supplies `(D.7ma4)` with pair ledger
   `\operatorname{Err}_{J,CG}^{pair,\varepsilon}`;
3. a selector-good reference direction packet is available in the sense of
   Corollary `D.7mp`, with forcing ledger `\eta_J^{ref}(a,b)`;
4. a reference Cauchy-Green packet is available in the sense of Corollary
   `D.7mo`, yielding the uniform gap floor
   `\operatorname{gap}_J^{CG}(t,a)\ge \gamma_J^{boot}>0` on `I_0`;
5. the linear-plus-quadratic bootstrap hypotheses of Corollary `D.7mm` hold on
   `I_0` with gap floor `\gamma_J^{boot}`, yielding the strain ledger

```math
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t)
:=
\frac{
4e^{2K_J^{lin}(a)}\,\eta_J^{boot}(a,b)^2
}{
(\gamma_J^{boot})^2
}.
\tag{D.7mr1}
```

Then on `I_0`,

```math
\Xi_J^{ang}(a,b,t)
\le
C\,|W_J(a,b,t)|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t).
\tag{D.7mr2}
```

In particular, `(D.7mr2)` is exactly the `D.7mg` closure packet with the pair
slot discharged by the combined linearization-plus-shape theorem and the strain
slot discharged by the reference-direction / reference-gap / bootstrap packet.
So the exact-potential Cauchy-Green branch closes whenever:

1. `PTC-Lin` and `PTC-Shape` give `D.7mq`;
2. `SSC-Ref` gives `D.7mp`;
3. `CG-RefGap` gives `D.7mo`;
4. `SSC-Boot` gives `D.7mm`.

**Proof.**
Corollary `D.7mq` supplies `(D.7ma4)` with
`\operatorname{Err}_{J,CG}^{pair}=\operatorname{Err}_{J,CG}^{pair,\varepsilon}`.
Corollary `D.7mm` supplies `(D.7ma5)` with
`\operatorname{Err}_{J,CG}^{strain}=\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}`,
while Corollary `D.7mo` provides the gap floor used in that bootstrap packet.
Substituting these two ledgers into `(D.7ma7)` yields `(D.7mr2)`. This is the
same estimate as `(D.7mg1)`, now written with the theorem-facing pair and strain
packets made explicit. Corollary `D.7mp` is included as the selector-good
reference-direction component of that strain packet. ∎

### Corollary D.7ms (a concentrated symmetric surrogate plus the supplier split yields the projective directional packet)

Fix one selector-good strip `I_0=[t_0,t_1]` and suppose there is a measurable
symmetric positive-semidefinite tensor `\widetilde S_J(a,b,t)` with
`\operatorname{tr}\widetilde S_J(a,b,t)=1` for almost every `t\in I_0`. Let
`\widehat P_J(a,b,t):=\Pi_{\max}\big(\widetilde S_J(a,b,t)\big)` be its top
eigenprojector, and assume:

1. (**simple-top concentration**) the top eigenvalue is simple on `I_0`, with
   gap floor

```math
\lambda_1\!\big(\widetilde S_J(a,b,t)\big)
-
\lambda_2\!\big(\widetilde S_J(a,b,t)\big)
\ge \gamma_\ast>0,
\qquad
\int_{I_0}\lambda_2\!\big(\widetilde S_J(a,b,t)\big)\,dt
\le
\varepsilon_{J,\mathrm{spec}}(a,b;I_0);
\tag{D.7ms1}
```

2. (**pair synchronization of the observable surrogate**) one has the
   integrated surrogate-to-pair comparison

```math
\int_{I_0}
\big\|
\widetilde S_J(a,b,t)-P_{ab}(t)
\big\|_F\,dt
\le
\varepsilon_{J,\mathrm{pair}}(a,b;I_0);
\tag{D.7ms2}
```

3. (**selector-strain comparison**) the top projector of the surrogate obeys

```math
\int_{I_0}
\big\|
\widehat P_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\big\|_F^2\,dt
\le
\delta_J(a,b;I_0).
\tag{D.7ms3}
```

Then the stripwise angular ledger obeys

```math
\int_{I_0}\Xi_J^{ang}(a,b,t)\,dt
\le
C\,\varepsilon_{J,\mathrm{pair}}(a,b;I_0)
+
C\,\varepsilon_{J,\mathrm{spec}}(a,b;I_0)
+
C\,\delta_J(a,b;I_0).
\tag{D.7ms4}
```

So the exact-potential projective bridge splits cleanly into two theorem
suppliers:

1. one supplier from the signless pair packet to the concentrated surrogate
   `\widetilde S_J`;
2. one supplier from the surrogate projector `\widehat P_J` to the top strain
   projector `P_{J,\top}^{seg}`.

In particular, `(D.7ms4)` is the branch-facing integrated form of the
`(D.7m5)` / `(D.7ma7)` / `(D.7mg1)` packet, and it specializes to the literal
`(D.7mr2)` Cauchy-Green packet when the pair supplier is `D.7mq` and the
selector-strain supplier is `D.7mp + D.7mo + D.7mm`.

**Proof.**
Diagonalize `\widetilde S_J=\lambda_1\widehat P_J+\lambda_2 P_2+\lambda_3 P_3`
with `\lambda_1+\lambda_2+\lambda_3=1` and `\lambda_2\ge\lambda_3\ge 0`. Then

```math
\big\|
\widetilde S_J-\widehat P_J
\big\|_F^2
=
(1-\lambda_1)^2+\lambda_2^2+\lambda_3^2
\le
6\,\lambda_2^2,
\tag{D.7ms5}
```

so
`\|\widetilde S_J-\widehat P_J\|_F\le \sqrt6\,\lambda_2`. Integrating over
`I_0` and using `(D.7ms1)` gives

```math
\int_{I_0}
\big\|
\widetilde S_J-\widehat P_J
\big\|_F\,dt
\le
\sqrt6\,\varepsilon_{J,\mathrm{spec}}(a,b;I_0).
\tag{D.7ms6}
```

Now apply the Frobenius triangle inequality:

```math
\int_{I_0}
\big\|
P_{ab}(t)-\widehat P_J(a,b,t)
\big\|_F\,dt
\le
\varepsilon_{J,\mathrm{pair}}(a,b;I_0)
+
\sqrt6\,\varepsilon_{J,\mathrm{spec}}(a,b;I_0).
\tag{D.7ms7}
```

Since differences of rank-one orthogonal projectors satisfy
`\|P-Q\|_F\le \sqrt2`, one has `\|P-Q\|_F^2\le \sqrt2\,\|P-Q\|_F`. Therefore

```math
\int_{I_0}
\big\|
P_{ab}(t)-\widehat P_J(a,b,t)
\big\|_F^2\,dt
\le
C\,\varepsilon_{J,\mathrm{pair}}(a,b;I_0)
+
C\,\varepsilon_{J,\mathrm{spec}}(a,b;I_0).
\tag{D.7ms8}
```

Finally, integrate the projector inequality `(D.7m6)` over `I_0`, combine it
with `(D.7m2)`, use `(D.7ms3)` for the selector-strain term, and substitute
`(D.7ms8)`. This yields `(D.7ms4)`. ∎

### Corollary D.7mh (local sign-compatible projective packet feeds the stripwise directional ledger)

Fix one strip `I_0=[t_0,t_1]` and keep the hypotheses of Corollary `D.7ie` on
the same selector-good active pair. Assume in addition that the hypotheses of
Corollary `D.7mg` hold on `I_0`, and define the entrance projective ledger

```math
\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;t_0)
:=
|W_J(a,b,t_0)|^2
+
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t_0)
+
\operatorname{Err}_{J,CG}^{pair}(a,b,t_0)
+
\frac{
e^{2K_J^{comm}(a,b)}\,\eta_J^{comm}(a,b)^2
}{
(\gamma_J^{CG})^2
}.
\tag{D.7mh1}
```

Then

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I_0)
\le
C\,\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;t_0)
+
2C_{\mathrm{asp}}\mathcal B_{J,\beta}^{force}(a,b;I_0).
\tag{D.7mh2}
```

If, in addition, the adiabatic hypotheses of Corollary `D.7ia` hold, then

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I_0)
\le
C\,\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;t_0)
+
4C_{\mathrm{asp}}\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I_0).
\tag{D.7mh3}
```

So on each selector-good strip the exact-potential branch is now reduced to one
local observable entrance packet plus the forcing ledger: once the signless
pair packet synchronizes to the transported projector field and the
commutator-controlled Cauchy-Green compatibility bound holds, the stripwise
directional ledger is no longer an additional hidden theorem slot.

**Proof.**
Evaluate `(D.7mg1)` at the strip entrance time `t_0` to obtain

```math
\alpha_J(a,b,t_0)
\le
C\,\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;t_0).
```

Insert that entrance bound into `(D.7i)` and use the definition
`\mathcal B_{J,\beta}^{force}`. This gives `(D.7mh2)`. The adiabatic version
`(D.7mh3)` follows the same way from `(AS.6e)`. ∎

## Theorem Candidate E (general Hodge-branch transported good-pair directional-window observability)

Fix one strip `I=[t_0,t_1]` and one refined transported good-pair family
`G_J^{pair,tr}` with finite measure `\mu_J^{pair}`. Assume:

1. the transported bad set has asymptotically negligible pair/time mass:

```math
\mu_J^{pair}\big(G_J^{pair}\setminus G_J^{pair,tr}\big)
+\int_I\!\!\int_{G_J^{pair}}
\mathbf 1_{\mathrm{bad}}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
\le o_J(1);
\tag{E.1}
```

2. each transported good pair carries a directional regular-window set
   `\mathcal W_J(a,b)\subset I` whose averaged complement is negligible:

```math
\int_{G_J^{pair,tr}}
\big|I\setminus \mathcal W_J(a,b)\big|
\,d\mu_J^{pair}(a,b)
\le o_J(1);
\tag{E.2}
```

3. on those directional windows, the selector calibration / transversality
   defects obey

```math
M_J(t)^2\Xi_J(a,b,t)^2
\le
C_{\mathrm{dir}}\,
\mathcal O_J^{dir}[W_J](a,b,t)
+\varepsilon_{J}^{dir}(a,b,t),
\tag{E.3}
```

and

```math
\big|\operatorname{Err}_J^{loop}(a,b,t)\big|
\le
C_{\mathrm{loop}}\,
\mathcal O_J^{loop}[W_J](a,b,t)
+\varepsilon_{J}^{loop}(a,b,t);
\tag{E.4}
```

4. the reconstruction observables are dominated by the same parabolic
   observation packet:

```math
\int_I\int_{G_J^{pair,tr}}
\Big(
\big(\mathcal O_J^{dir}[W_J](a,b,t)\big)^2
+
\big(\mathcal O_J^{loop}[W_J](a,b,t)\big)^2
\Big)
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{pair}}\,
\mathcal E_J^{obs}(I),
\tag{E.5}
```

and the window errors are negligible:

```math
\int_I\int_{G_J^{pair,tr}}
\Big(
\big(\varepsilon_J^{dir}(a,b,t)\big)^2
+
\big(\varepsilon_J^{loop}(a,b,t)\big)^2
\Big)
\,d\mu_J^{pair}(a,b)\,dt
\le
o_J(1).
\tag{E.6}
```

Then the residual pairwise closure holds with an asymptotically negligible loss:

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{\mathrm{res}}\,
\mathcal E_J^{obs}(I)
+o_J(1).
\tag{E.7}
```

Consequently, after absorbing the `o_J(1)` term, the exact pair-defect-side wall
is reduced to `(D.5)`; on the cycle-exact branch this further collapses to
`(D.7)`, and the existing `SG.4B` extraction chain applies without any new
geometric reduction.

### Explicit gap decomposition

To close `(E.7)`, it is enough to isolate three exact sublemmas with a vanishing
error ledger:

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{dir}(I),
\tag{E.8}
```

```math
\mathcal E_J^{harm}(I)
\le
C_{\mathrm{harm}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{harm}(I),
\tag{E.9}
```

```math
\mathcal E_J^{loop}(I)
\le
C_{\mathrm{loop}}^\star\,
\mathcal E_J^{harm}(I)
+\varepsilon_J^{loop}(I),
\tag{E.10}
```

with

```math
\varepsilon_J^{dir}(I)
+\varepsilon_J^{harm}(I)
+\varepsilon_J^{loop}(I)
=
o_J(1).
\tag{E.11}
```

Then

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
\big(
C_{\mathrm{dir}}^\star
+
C_{\mathrm{loop}}^\star C_{\mathrm{harm}}^\star
\big)\mathcal E_J^{obs}(I)
+o_J(1),
\tag{E.12}
```

which is exactly the target form `(E.7)`.

### Corollary E.13 (general Hodge core once loop export is granted)

Assume the general Hodge branch and suppose the loop-from-harmonic export step

```math
\mathcal E_J^{loop}(I)
\le
A_\star\,
\mathcal E_J^{harm}(I)
\tag{E.13}
```

is available on the same strip, for some uniform constant `A_\star>0`. Let
`\mathcal L_J^{sel}(I)\ge 0` be a selector ledger and assume

```math
\mathcal L_J^{sel}(I)\le \varepsilon_J^{sel}(I),
\qquad
\varepsilon_J^{dir}(I)+A_\star\varepsilon_J^{harm}(I)+\varepsilon_J^{sel}(I)=o_J(1).
\tag{E.14}
```

Then

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)+\mathcal L_J^{sel}(I)
\le
\big(C_{\mathrm{dir}}^\star+A_\star C_{\mathrm{harm}}^\star\big)\mathcal E_J^{obs}(I)
+o_J(1).
\tag{E.15}
```

In particular, once the export step `(E.13)` is installed, the genuinely new
Hodge core is reduced to:

1. direction observability;
2. harmonic observability;
3. selector-ledger vanishing.

**Proof.**
Substitute `(E.9)` into `(E.13)` and then add `(E.8)` and `(E.14)`. ∎

### Remark E.16 (the `E1`-`E4` closure program is a correct decomposition, but not a discharge)

The four-step program

```text
direction observability -> harmonic observability -> selector/commutator summation -> loop-from-harmonic export
```

is exactly the right bookkeeping expansion of Candidate `E`, but it should not
be misread as if all four steps were already standard local algebra.

The Hodge split and the final summation are formal once `(E.8)`-`(E.10)` are
available. The genuinely new theorem slots are still:

1. the map from the signless defect packet `W_J` (or its localized scalar
   reduction `q_k`) to the directional ledger `\mathcal E_J^{dir}`;
2. the corresponding harmonic observability step on the Hodge branch;
3. the vanishing selector-ledger estimate.

So the exact remaining `E` burden is still the theorem family already isolated
in `(PD.70z12)`-`(PD.70z14)`. The windowwise decomposition is honest; it is not
yet a proof of those sublemmas.

So the remaining theorem-grade gaps are no longer hidden. In expanded form they are:

1. direction observability on the transported good-pair family;
2. harmonic observability on the Hodge branch;
3. loop reconstruction from the harmonic ledger;
4. vanishing selector-calibration losses.

On the general Hodge branch, however, Corollary `(E.13)`-`(E.15)` shows that
the genuine new core is smaller: direction observability, harmonic
observability, and selector-ledger vanishing, with the loop-from-harmonic
estimate serving as the downstream export step.

On the cycle-exact branch, `\mathcal E_J^{harm}(I)=\mathcal E_J^{loop}(I)=0`, so
only the direction estimate `(E.8)` remains, and Lemma Candidate `D.7a` is the
cleanest exact-potential formulation of that final closure.

### Corollary E.17 (the harmonic Hodge slot reduces to one localized measurable-set observability theorem)

Fix one directional regular window `I_k` and one selector chart. Suppose the
localized harmonic component on that window can be realized in one of the
following verified supplier classes, with observability constants uniform
across the finite-overlap chart family:

1. a heat-type lower-order parabolic equation in the Phung--Wang measurable-time
   observability class;
2. a non-stationary Stokes system on a bounded domain in the
   Chaves-Silva--Souza--Zhang measurable-set class;
3. a bounded-domain analytic evolution in the Escauriaza--Montaner--Zhang
   measurable-set class;
4. an abstract evolution
   `\partial_t h_k+A_k h_k=F_k` on a Hilbert space `H_k`, where `-A_k`
   generates an analytic semigroup and the observation operator satisfies the
   Wang--Zhang measurable-set observability hypotheses.

Then the corresponding measurable-set observability theorem yields a windowwise
harmonic observation packet of the form

```math
\mathcal E_{J,k}^{harm}(I_k)
\le
C_k\,\mathcal E_{J,k}^{obs}(I_k)
+
C_k\,\mathcal E_{J,k}^{src}(I_k),
\tag{E.17}
```

where `\mathcal E_{J,k}^{src}(I_k)` is the source ledger coming from the
localized forcing / commutator / selector terms on the same window.

Consequently the harmonic slot `(E.9)` / `(PD.70z13)` is no longer a free
standing geometric theorem once such a localization is available: it reduces to
one localization theorem placing the chartwise harmonic packet into one of the
four observable classes above, together with the already isolated source
absorption. So on the general Hodge branch the remaining genuinely route-local
burden is the pair of slots `(PD.70z12)` and `(PD.70z14)`, together with that
localization theorem.

**Proof.**
Apply the corresponding local observability theorem on each chart:
Phung--Wang in the heat-type lower-order class, Chaves-Silva--Souza--Zhang for
the non-stationary Stokes system, Escauriaza--Montaner--Zhang for bounded-domain
analytic evolutions, or Wang--Zhang for abstract analytic-semigroup systems.
Duhamel's formula or the standard source-splitting argument absorbs the
inhomogeneous forcing into `\mathcal E_{J,k}^{src}(I_k)`, while finite overlap
and the uniform chart constants allow summation over the chart family. This
produces `(E.17)`, which is exactly the harmonic packet needed in `(E.9)` and
hence in `(PD.70z13)`. ∎

### Proposition E.18 (the exact remaining direction slot on the general Hodge branch is a split-direction theorem)

Fix one strip `I` on the general Hodge branch. Assume the directional packet
admits an almost-orthogonal Hodge split with quantitative error

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{split}}
\Big(
\mathcal E_{J,\mathrm{coex}}^{dir}(I)
+
\mathcal E_{J,\mathrm{harm}}^{dir}(I)
\Big)
+
\operatorname{Err}_{J,\mathrm{split}}(I),
\qquad
\operatorname{Err}_{J,\mathrm{split}}(I)=o_J(1).
\tag{E.18a}
```

Assume further that the coexact directional packet is controlled by the
transported pair-defect observability route:

```math
\mathcal E_{J,\mathrm{coex}}^{dir}(I)
\le
C_{\mathrm{coex}}\,
\mathcal E_{J,\mathrm{coex}}^{obs}(I),
\tag{E.18b}
```

and that the harmonic directional packet obeys

```math
\mathcal E_{J,\mathrm{harm}}^{dir}(I)
\le
C_{\mathrm{harm}}\,
\mathcal E_{J,\mathrm{harm}}^{obs}(I)
+
\operatorname{Err}_{J,\mathrm{harm}}(I),
\qquad
\operatorname{Err}_{J,\mathrm{harm}}(I)=o_J(1),
\tag{E.18c}
```

with `(E.18c)` supplied by the localization theorem behind `(E.17)`. Then

```math
\mathcal E_J^{dir}(I)
\le
C_\star
\Big(
\mathcal E_{J,\mathrm{coex}}^{obs}(I)
+
\mathcal E_{J,\mathrm{harm}}^{obs}(I)
\Big)
+
o_J(1).
\tag{E.18d}
```

So after `(E.17)`, the genuine remaining route-local content of `(PD.70z12)` is
not another harmonic observability theorem: it is the split-direction estimate
`(E.18a)` tying the total directional ledger to the coexact and harmonic
packets with vanishing split error.

**Proof.**
Insert `(E.18b)` and `(E.18c)` into `(E.18a)` and absorb the two vanishing
error terms into `o_J(1)`. This yields `(E.18d)` with
`C_\star:=C_{\mathrm{split}}\max\{C_{\mathrm{coex}},C_{\mathrm{harm}}\}` after
renormalizing constants. ∎

### Proposition E.19 (selector-ledger vanishing reduces to support-smallness plus a uniform `L^2` packet)

Fix one strip `I` and let `K_J(a,b,t)` denote the selector-calibration error
entering the Hodge-side selector ledger. Suppose:

1. `K_J` is supported on a measurable bad set `B_J\subset G_J^{pair,tr}\times I`;
2. the bad set has vanishing pair/time mass:

```math
(\mu_J^{pair}\otimes dt)(B_J)=o_J(1);
\tag{E.19a}
```

3. the same selector packet carries a uniform quadratic bound

```math
\int_I\int_{G_J^{pair,tr}}
|K_J(a,b,t)|^2\,d\mu_J^{pair}(a,b)\,dt
\le
C_K.
\tag{E.19b}
```

Then the linear selector ledger vanishes:

```math
\int_I\int_{G_J^{pair,tr}}
|K_J(a,b,t)|\,d\mu_J^{pair}(a,b)\,dt
\le
(\mu_J^{pair}\otimes dt)(B_J)^{1/2} C_K^{1/2}
=
o_J(1).
\tag{E.19c}
```

So `(PD.70z14)` reduces exactly to a support-smallness theorem for the
selector-calibration bad set together with a uniform `L^2` packet on the same
strip.

**Proof.**
Apply Cauchy--Schwarz on `B_J`:

```math
\int |K_J|
\le
\Big((\mu_J^{pair}\otimes dt)(B_J)\Big)^{1/2}
\Big(\int |K_J|^2\Big)^{1/2},
```

then use `(E.19a)` and `(E.19b)`. This is `(E.19c)`. ∎

### Proposition E.20 (common bad-set exactness collapses the split and selector linear ledgers)

Fix one strip `I`, let `G_J:=I\setminus B_J`, and assume

```math
(\mu_J^{pair}\otimes dt)(B_J)=o_J(1).
\tag{E.20a}
```

Suppose the directional split is exact on `G_J`:

```math
\Lambda_J
=
\Lambda_{J,\mathrm{coex}}
+
\Lambda_{J,\mathrm{harm}}
\qquad\text{on }G_J,
\tag{E.20b}
```

and the selector calibration is exact there:

```math
K_J=0
\qquad\text{on }G_J.
\tag{E.20c}
```

Define the split and selector residuals

```math
R_J^{split}
:=
\Lambda_J-\Lambda_{J,\mathrm{coex}}-\Lambda_{J,\mathrm{harm}},
\qquad
R_J^{sel}:=K_J,
\tag{E.20d}
```

and assume

```math
\operatorname{supp}R_J^{split},
\operatorname{supp}R_J^{sel}
\subseteq
B_J,
\tag{E.20e}
```

with uniform `L^2` bounds

```math
\int |R_J^{split}|^2\,d(\mu_J^{pair}\otimes dt)
+
\int |R_J^{sel}|^2\,d(\mu_J^{pair}\otimes dt)
\le
C_\star.
\tag{E.20f}
```

Then the two linear residual ledgers vanish:

```math
\int_I |R_J^{split}|\,d(\mu_J^{pair}\otimes dt)
+
\int_I |R_J^{sel}|\,d(\mu_J^{pair}\otimes dt)
=
o_J(1).
\tag{E.20g}
```

So once harmonic localization `E.17` is installed, the remaining Hodge-side
split/support stack collapses to one common bad-set exactness theorem: exact
splitting and exact selector calibration on `G_J`, plus support localization and
uniform `L^2` control on `B_J`.

**Proof.**
Apply Cauchy--Schwarz on `B_J` separately to `R_J^{split}` and `R_J^{sel}`:

```math
\int |R|
\le
\Big((\mu_J^{pair}\otimes dt)(B_J)\Big)^{1/2}
\Big(\int |R|^2\Big)^{1/2}.
```

Then use `(E.20a)` and `(E.20f)`. This gives `(E.20g)`. ∎

### Corollary E.21 (the remaining `H1` content is local model-class identification with uniform admissible constants)

Let `\{U_{\alpha,J}\}` be a finite-overlap chart family on the selector-good
region, with partition of unity `\chi_{\alpha,J}` and localized harmonic pieces
`h_{\alpha,J}:=\chi_{\alpha,J}h_J`. Assume each chart map
`\Phi_{\alpha,J}:U_{\alpha,J}\to \Omega_\alpha` belongs to a uniformly bounded
bilipschitz `C^2` family:

```math
\|\Phi_{\alpha,J}\|_{C^2}
+
\|\Phi_{\alpha,J}^{-1}\|_{C^2}
\le
C_\Phi,
\qquad
0<c_\Phi\le |\det D\Phi_{\alpha,J}|\le C_\Phi.
\tag{E.21a}
```

Assume the pullback

```math
u_{\alpha,J}:=h_{\alpha,J}\circ \Phi_{\alpha,J}^{-1}
\tag{E.21b}
```

solves one of the four `E.17` supplier-class equations, with parameter tuple
`\Lambda_{\alpha,J}` lying in an admissible set `K` on which the corresponding
observability constants are uniformly bounded:

```math
\Lambda_{\alpha,J}\in K,
\qquad
\sup_{\Lambda\in K} C_{\mathrm{obs}}(\Lambda)\le C_K.
\tag{E.21c}
```

Assume also the localization and transport commutators obey

```math
\sum_\alpha \int_0^T \|F_{\alpha,J}(t)\|_{L^2}^2\,dt
\le
\mathrm{Src}_J.
\tag{E.21d}
```

Then there is a uniform constant `C_\star`, independent of `J`, such that

```math
\|h_J(T)\|_{L^2}^2
\le
C_\star
\Big(
\sum_\alpha \int_{E_{\alpha,J}} |B_{\alpha,J}h_{\alpha,J}|^2
+
\mathrm{Src}_J
\Big).
\tag{E.21e}
```

So the genuinely new `H1` burden is not the summation or chart-uniform
observability step. It is the local model-class identification theorem placing
the actual localized harmonic packet into one of the `E.17` supplier classes
with uniformly admissible parameters.

**Proof.**
Apply the corresponding supplier theorem on each reference chart with the
uniform bound `(E.21c)`. Use `(E.21a)` to transfer the `L^2` and observation
norms back to the physical charts up to fixed constants, then sum over the
finite-overlap family and absorb the commutator terms using `(E.21d)`. This is
exactly the argument already implicit in `(E.17)`, now written with the uniform
parameter packet exposed. ∎

### Proposition E.22 (uniform perturbative transfer reduces `H1` to base-model identification plus one perturb-transfer theorem)

Keep the setup of `(E.21)`. Assume that on each reference chart the actual
generator can be decomposed as

```math
A_{\alpha,J}(t)=A_\alpha^0+K_{\alpha,J}(t),
\tag{E.22a}
```

where `A_\alpha^0` is one fixed reference generator belonging to an `E.17`
supplier class and `K_{\alpha,J}` lies in a perturbation class
`\mathfrak P_\alpha` with uniform size control

```math
\sup_{\alpha,J}\|K_{\alpha,J}\|_{\mathfrak P_\alpha}\le \kappa_\ast.
\tag{E.22b}
```

Assume the observation operator `C_\alpha` is admissible for the reference model
`A_\alpha^0`, and assume one perturb-transfer theorem is available for the
chosen supplier class and perturbation class:

```math
\texttt{BaseObs}(A_\alpha^0,C_\alpha)
+
\|K_{\alpha,J}\|_{\mathfrak P_\alpha}\le \kappa_\ast
\Longrightarrow
\texttt{Obs}(A_{\alpha,J},C_\alpha)
\tag{E.22c}
```

with observability constants uniform in `\alpha` and `J`.

Then `H1` reduces to two primitive packets:

```math
\texttt{H1}_{\mathrm{base\text{-}model}}
+
\texttt{H1}_{\mathrm{pert\text{-}transfer}}.
\tag{E.22d}
```

More explicitly, once the localized harmonic packet is identified with a
reference observable model `A_\alpha^0`, the only remaining theorem is the
uniform perturb-transfer statement `(E.22c)`. After that, `(E.21)` applies and
`PD.70z13` follows.

Two source-backed realization routes remain plausible, but they are not
discharged here:

1. a perturbed semigroup route based on admissibility invariance for
   Miyadera--Voigt-type perturbations together with a class-specific
   observability robustness theorem;
2. a non-autonomous Lebeau--Robbiano route giving final-state observability for
   evolution families once a uniform uncertainty principle and dissipation
   estimate are verified.

So the exact remaining `H1` burden is no longer “harmonic localization” in one
block. It is base-model identification plus one perturb-transfer theorem for the
actual chartwise localized evolution.

**Proof.**
Apply the perturb-transfer theorem `(E.22c)` on each reference chart to replace
the actual generator `A_{\alpha,J}` by the reference observable model
`A_\alpha^0` with uniform constants. Then invoke `(E.21)` to sum over the
finite-overlap chart family and absorb the commutator/source terms. ∎

### Why this is the right theorem cut

This theorem candidate matches the current source-backed landscape better than a
global potential identity:

1. recent measurable-transport results support the existence of a quantitatively
   large transported good family for Leray solutions;
2. recent directional/partial-regularity results support phrasing the remaining
   theorem on interval-like directional regular windows rather than on all times
   or all pairs simultaneously;
3. the middle-eigenvalue continuation and backward-uniqueness papers remain
   downstream tools, useful only after strong entry and after the present
   residual observability wall is crossed.

## Theorem Candidate F (exact-potential window-production / observability / summability closure)

Assume the cycle-exact / exact-potential branch, and fix one active pair family
`\mathcal J` with pair measure `\mu_J^{pair}`. Let
`\{I_k=[\tau_k,\tau_k+h_k]\}_k` be a selector-good window family with bounded
overlap

```math
\sum_k \mathbf 1_{I_k}(t)\le N_{\mathrm{ov}}
\qquad\text{for a.e. }t\in I.
\tag{F.1}
```

For each window `I_k`, let `\mathcal J_k\subset \mathcal J` be the active
subfamily whose segments remain inside the corresponding regular slab, and
assume:

1. (**window production with explicit constants**) on `I_k`,

```math
|A_J^{seg}(t)|_{\mathrm{op}}\le M_k,
\qquad
|\partial_t A_J^{seg}(t)|_{\mathrm{op}}\le N_k,
\qquad
g_J(t)\ge g_{k,\ast}>0
\quad\text{for }J\in\mathcal J_k,\ t\in I_k;
\tag{F.2}
```

2. (**local sign-compatible projective packet**) Corollary `D.7mh` applies on
   `I_k` for every `J\in\mathcal J_k`;

3. (**windowwise coefficient class**) the localized coarse defect equation on
   `I_k` can be written on one bounded observation domain `\Omega_k` as

```math
\partial_t q_k-\nabla\!\cdot(a_k\nabla q_k)+b_k\cdot\nabla q_k+c_k q_k=f_k,
\tag{F.3}
```

with one observation region `\omega_k\times E_k\subset\Omega_k\times I_k` such
that

```math
\frac{\nu}{2}|\xi|^2\le \xi^\top a_k(x,t)\xi\le \frac{3\nu}{2}|\xi|^2,
\qquad
a_k\in L^\infty(I_k;W^{1,\infty}(\Omega_k)),
\qquad
b_k,c_k\in L^\infty(\Omega_k\times I_k);
\tag{F.4}
```

4. (**windowwise entrance-packet domination**) the entrance projective packet
   from `(D.7mh1)` obeys

```math
\int_{\mathcal J_k}
\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;\tau_k)
\,d\mu_J^{pair}(a,b)
\le
C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)
\varepsilon_{J,k}^{obs},
\tag{F.5}
```

where `\mathcal E_{J,k}^{obs}(I_k)` is the windowwise parabolic observation
packet extracted from `(F.3)`;

5. (**summability**) one has

```math
\sum_k C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)
\le
C_{\mathrm{obs}}\,
\mathcal E_J^{obs}(I),
\tag{F.6}
```

```math
\sum_k \varepsilon_{J,k}^{obs}<\infty,
\tag{F.7}
```

and

```math
\int_{\mathcal J}\int_I
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
<\infty.
\tag{F.8}
```

Then the exact-potential directional ledger is globally controlled by the
observation packet and the family forcing budget:

```math
\mathcal E_J^{dir}(I)
\le
C\,
\mathcal E_J^{obs}(I)
+
C\sum_k \varepsilon_{J,k}^{obs}
+
2C_{\mathrm{asp}}N_{\mathrm{ov}}
\int_{\mathcal J}\int_I
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b).
\tag{F.9}
```

If the adiabatic hypotheses of Corollary `D.7ia` hold on every `I_k`, then

```math
\mathcal E_J^{dir}(I)
\le
C\,
\mathcal E_J^{obs}(I)
+
C\sum_k \varepsilon_{J,k}^{obs}
+
4C_{\mathrm{asp}}N_{\mathrm{ov}}
\int_{\mathcal J}\int_I
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}
\,dt\,d\mu_J^{pair}(a,b).
\tag{F.10}
```

So the exact-potential branch is reduced to three repo-local verification
obligations:

```text
V1. certify the simple-top spectral floor g_J(t)≥g_{k,*}>0 on the selected windows;
V2. write the localized coarse defect operator in the uniformly parabolic coefficient class (F.3)-(F.4);
V3. prove the window family and pair subfamilies satisfy the bounded-overlap / summability laws (F.1), (F.6), (F.7).
```

**Proof.**
For each `k`, integrate `(D.7mh2)` over `\mathcal J_k`:

```math
\int_{\mathcal J_k}
\mathcal E_{J,\Gamma}^{dir}(a,b;I_k)
\,d\mu_J^{pair}(a,b)
\le
C\int_{\mathcal J_k}
\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;\tau_k)
\,d\mu_J^{pair}(a,b)
+
2C_{\mathrm{asp}}
\int_{\mathcal J_k}
\mathcal B_{J,\beta}^{force}(a,b;I_k)
\,d\mu_J^{pair}(a,b).
\tag{F.11}
```

Apply `(F.5)` to the entrance term and sum in `k`. The observation series is
controlled by `(F.6)`, while the error series is `(F.7)`. For the forcing
term, use Fubini together with the bounded-overlap law `(F.1)`:

```math
\sum_k\int_{\mathcal J_k}\mathcal B_{J,\beta}^{force}(a,b;I_k)\,d\mu_J^{pair}
\le
N_{\mathrm{ov}}
\int_{\mathcal J}\int_I
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b).
\tag{F.12}
```

This yields `(F.9)`. The adiabatic version `(F.10)` follows in the same way
from `(D.7mh3)`. ∎

### Verification Block F.11a (explicit remaining repo checks for Candidate F)

The remaining work in Candidate `F` is no longer architectural. It is exactly:

1. prove one selector-side discriminant-anchor packet yielding `(F.11b1)` and
   hence the spectral floor `(F.2)` on shrunken selector-good windows;
2. write the coarse defect operator in the normalized coefficient class
   `(F.3)`-`(F.4)`, with the correction to the viscosity matrix absorbed into
   the ellipticity constants;
3. prove one overlap / Carleson-style summability packet yielding `(F.1)`,
   `(F.6)`, and `(F.7)` for the selected pair-family schedule.

Once those three packets are installed, Candidate `F` turns the current local
exact-potential theorem stack into the global exact-potential directional
estimate needed for `(PD.70s)`.

### Proposition F.11b (V1 reduces to one selector-good discriminant-anchor packet)

Keep the window family from Candidate `F`, but replace the gap floor in `(F.2)`
by the weaker anchor data from Corollary `AS.7z`: for each `I_k`, assume there
are constants `M_k,N_k>0`, a common anchor time `\tau_k^\sharp\in I_k`, and a
threshold `\delta_k>0` such that

```math
\sup_{t\in I_k}\|A_J^{seg}(t)\|_{\mathrm{op}}\le M_k,
\qquad
\sup_{t\in I_k}\|\partial_t A_J^{seg}(t)\|_{\mathrm{op}}\le N_k,
\qquad
\Delta_J^{seg}(\tau_k^\sharp)\ge \delta_k^2
\tag{F.11b1}
```

for every active pair `J\in\mathcal J_k`. Define

```math
\rho_k
:=
\min\!\left\{
\operatorname{dist}(\tau_k^\sharp,\partial I_k),
\frac{\delta_k}{16M_k^2N_k}
\right\},
\qquad
I_k^{gap}
:=
[\tau_k^\sharp-\rho_k,\tau_k^\sharp+\rho_k]\cap I_k,
\tag{F.11b2}
```

and

```math
g_{k,\ast}
:=
\frac{\delta_k}{8M_k^2}.
\tag{F.11b3}
```

Then on every shrunken window `I_k^{gap}`, hypothesis `(F.2)` holds with that
same `M_k`, `N_k`, and the explicit spectral floor `g_J(t)\ge g_{k,\ast}`.
Therefore the remaining exact-potential spectral-floor burden `V1` is reduced
to producing quantitatively many selector-good windows and pair subfamilies
carrying the discriminant-anchor packet `(F.11b1)`.

**Proof.**
This is exactly Corollary `AS.7z` rewritten in the notation of Candidate `F`.
The point is structural: incompressibility alone does not force a positive top
gap, because the trace-free repeated-top pattern `\operatorname{diag}(s,s,-2s)`
has `\Delta=0` and `g=0`. So the honest remaining input is the
selector-produced discriminant anchor, not a universal pointwise lower-gap law.
∎

### Proposition F.11c (the discarded `V1` mass is a codimension-two tubular estimate)

Keep one regular window `I_k` and one active-pair block `\mathcal J_k`. Define

```math
\mathfrak P_k:=\mathcal J_k\times I_k,
\qquad
\mathfrak S_k(J,t):=A_J^{seg}(t)\in \mathrm{Sym}_0(3),
\tag{F.11c1}
```

and let
`\mathcal B_k(\gamma):=\{(J,t)\in \mathfrak P_k: g_J(t)\le \gamma\}`.
Assume the codimension-two transversality hypotheses of Corollary `AS.7zb`
hold on `\mathfrak P_k`. Then for all sufficiently small `\gamma`,

```math
(\mu_J^{pair}\otimes dt)\big(\mathcal B_k(\gamma)\big)
\le
C_k\,\gamma^2.
\tag{F.11c2}
```

Consequently, if the selector thresholds `\gamma_k` are chosen so that

```math
\sum_k C_k^{obs}\gamma_k^2<\infty,
\tag{F.11c3}
```

then the discarded bad-gap contribution to Candidate `F` is summable. In that
sense the exact remaining `V1` theorem is no longer “prove a gap floor on every
pair.” It is “prove one codimension-two tubular estimate for the parameter map
`\mathfrak S_k` on the selected regular windows.”

**Proof.**
Estimate `(F.11c2)` is exactly Corollary `AS.7zb`. Summability then follows by
the choice `(F.11c3)`. ∎

### Proposition F.11d (V2 reduces to cutoff-localization and chart normalization of `PD.25`)

Fix one regular window `I_k` and one bounded selector chart
`U_k\subset \mathbb R^3_x\times\mathbb R^3_y` in pair space. Write

```math
V_J(x,y,t):=\big(v_J(x,t),v_J(y,t)\big),
\qquad
\Delta_{x,y}:=\Delta_x+\Delta_y,
\tag{F.11d1}
```

so the pair defect equation `(PD.25)` reads

```math
\partial_t W_J+V_J\cdot \nabla_{x,y}W_J-\nu\Delta_{x,y}W_J
=
F_J^{hi},
\qquad
F_J^{hi}
:=
-\nabla_x\cdot(r_J(x,t)K_J)
-\nabla_y\cdot(r_J(y,t)K_J).
\tag{F.11d2}
```

Choose `\chi_k\in C_c^\infty(U_k)` and set

```math
q_k:=\chi_k W_J.
\tag{F.11d3}
```

Then on `U_k\times I_k`,

```math
\partial_t q_k+V_J\cdot \nabla_{x,y}q_k-\nu\Delta_{x,y}q_k
=
f_k^{hi}+f_k^{cut},
\tag{F.11d4}
```

where

```math
f_k^{hi}:=\chi_k F_J^{hi},
\tag{F.11d5}
```

and

```math
f_k^{cut}
:=
-2\nu\,\nabla_{x,y}\chi_k\cdot \nabla_{x,y}W_J
-\bigl(\nu\Delta_{x,y}\chi_k+V_J\cdot \nabla_{x,y}\chi_k\bigr)W_J.
\tag{F.11d6}
```

Now let `\Theta_k:U_k\to \Omega_k` be a `C^2` diffeomorphism onto a bounded
domain `\Omega_k`, and write
`\widetilde q_k(\zeta,t):=q_k(\Theta_k^{-1}(\zeta),t)`. Then
`\widetilde q_k` satisfies

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut}+\widetilde f_k^{chart},
\tag{F.11d7}
```

with

```math
a_k=\nu\,G_k+a_k^{chart},
\qquad
G_k:=D\Theta_k\,D\Theta_k^*,
\tag{F.11d8}
```

where `a_k^{chart}, b_k, c_k` are universal algebraic expressions in
`D\Theta_k`, `D^2\Theta_k`, and `V_J`, and `\widetilde f_k^{chart}` is the
coordinate-change source produced by differentiating the metric coefficients.

Assume on `I_k`:

```math
\|V_J\|_{L^\infty(U_k\times I_k)}
+\|\nabla_{x,y}V_J\|_{L^\infty(U_k\times I_k)}
\le M_k^{pair},
\tag{F.11d9}
```

```math
\|D\Theta_k\|_{L^\infty(U_k)}
+\|D\Theta_k^{-1}\|_{L^\infty(\Omega_k)}
+\|D^2\Theta_k\|_{L^\infty(U_k)}
\le C_k^{chart},
\tag{F.11d10}
```

and

```math
\|G_k-I\|_{L^\infty(\Omega_k)}\le \frac12.
\tag{F.11d11}
```

Then:

```math
\frac{\nu}{2}|\xi|^2\le \xi^\top a_k(\zeta,t)\xi\le \frac{3\nu}{2}|\xi|^2,
\tag{F.11d12}
```

```math
a_k\in L^\infty(I_k;W^{1,\infty}(\Omega_k)),
\qquad
b_k,c_k\in L^\infty(\Omega_k\times I_k),
\tag{F.11d13}
```

and

```math
\int_{I_k}\|\widetilde f_k^{hi}+\widetilde f_k^{cut}+\widetilde f_k^{chart}\|_{L^2(\Omega_k)}^2\,dt
<\infty
\tag{F.11d14}
```

whenever
`W_J,\nabla_{x,y}W_J,r_JK_J\in L^2(U_k\times I_k)`. Therefore the coefficient
class `(F.3)`-`(F.4)` required in Candidate `F` is reduced to one explicit
localization-and-chart algebra on the already-installed pair defect equation
`(PD.25)`.

**Proof.**
Equation `(F.11d4)` is the product rule applied to `q_k=\chi_kW_J` in
`(F.11d2)`. The chart equation `(F.11d7)` is the standard pushforward of a
second-order divergence-form operator under a `C^2` diffeomorphism. Uniform
ellipticity `(F.11d12)` follows from `(F.11d11)`, while the coefficient bounds
in `(F.11d13)` are algebraic consequences of `(F.11d9)`-`(F.11d11)`. The
source splitting `(F.11d14)` is the transformed version of the three explicit
sources: the high-frequency defect forcing `f_k^{hi}`, the cutoff commutator
`f_k^{cut}`, and the chart-normalization remainder `\widetilde f_k^{chart}`. ∎

### Proposition F.11e (V3 is a family-first forcing estimate, with a cubic inverse-gap loss on the adiabatic branch)

Keep one retained selector-good window `I_k` and one retained active-pair block
`\mathcal J_k`. Assume

```math
g_J(a,b,t)\ge \gamma_k>0
\qquad\text{for every }(a,b)\in \mathcal J_k,\ t\in I_k.
\tag{F.11e1}
```

Then

```math
\int_{\mathcal J_k}\int_{I_k}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
\le
\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}
\beta_J(a,b,t)^2
\,dt\,d\mu_J^{pair}(a,b).
\tag{F.11e2}
```

If the adiabatic reduction of Corollary `D.7ia` holds on `I_k`, then

```math
\int_{\mathcal J_k}\int_{I_k}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
\le
2\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}
|K_J^{seg}(a,b,t)n_J(a,b,t)|^2
\,dt\,d\mu_J^{pair}(a,b)
+
2\gamma_k^{-3}
\int_{\mathcal J_k}\int_{I_k}
\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2
\,dt\,d\mu_J^{pair}(a,b).
\tag{F.11e3}
```

Consequently the exact retained-family `V3` summability target is:

```math
\sum_k C_k\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}\beta_J^2
\,dt\,d\mu_J^{pair}
<\infty
\tag{F.11e4}
```

on the general exact-potential branch, and on the adiabatic subbranch the
stronger split

```math
\sum_k C_k\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}|K_J^{seg}n_J|^2
\,dt\,d\mu_J^{pair}
<\infty,
\tag{F.11e5}
```

```math
\sum_k C_k\gamma_k^{-3}
\int_{\mathcal J_k}\int_{I_k}\|\partial_t A_J^{seg}\|_{\mathrm{op}}^2
\,dt\,d\mu_J^{pair}
<\infty.
\tag{F.11e6}
```

So the `\partial_t A_J^{seg}` term retains the cubic inverse-gap loss from
`(D.7mh3)`; it cannot be collapsed to the same `\gamma_k^{-1}` series as the
rotational term without additional structure.

**Proof.**
Inequality `(F.11e2)` is immediate from `(F.11e1)` by pulling the infimum gap
out of the denominator. Under the adiabatic reduction, Corollary `D.7ia`
states that
`\beta_J^2/g_J \le 2|K_J^{seg}n_J|^2/g_J
+2\|\partial_t A_J^{seg}\|_{\mathrm{op}}^2/g_J^3`.
Applying `(F.11e1)` to each denominator yields `(F.11e3)`, and the summability
conditions `(F.11e4)`-`(F.11e6)` are exactly the resulting series. ∎

### Proposition F.11f (the honest `V1` theorem is codimension-two, not a scalar-gradient coarea bound)

Keep one regular window `I_k`, one active-pair block `\mathcal J_k`, and let

```math
\mathfrak D_k(J,t):=\Delta_J^{seg}(t)
\qquad\text{for }(J,t)\in \mathfrak P_k:=\mathcal J_k\times I_k.
\tag{F.11f1}
```

Assume the lower-gap separation `(AS.7zb2)` on `\mathfrak P_k`, so the
repeated-top locus lies away from the triple-point singularity. Then near
`\Sigma_{\mathrm{top}}` one has

```math
\mathfrak D_k(J,t)
=
g_J(J,t)^2\,h_J(J,t)^2\,\Gamma_J(J,t)^2,
\qquad
h_J:=\lambda_2-\lambda_3,
\qquad
\Gamma_J:=\lambda_1-\lambda_3,
\tag{F.11f2}
```

with `h_J,\Gamma_J` continuous and strictly positive on the block. In
particular,

```math
D\mathfrak D_k(J,t)=0
\qquad\text{whenever }g_J(J,t)=0.
\tag{F.11f3}
```

Consequently, once `\mathfrak S_k(\mathfrak P_k)` meets the repeated-top
manifold, no scalar codimension-one theorem of the form

```math
|\nabla_{J,t}\mathfrak D_k(J,t)|\ge c_k>0
\qquad\text{on }\{\mathfrak D_k\le \gamma^2\}
\tag{F.11f4}
```

can hold for all sufficiently small `\gamma`. Therefore the honest `V1`
supplier is exactly the codimension-two tubular estimate from `AS.7zb` /
`(F.11c)`, not a scalar-gradient coarea argument for one discriminant function.

**Proof.**
Identity `(F.11f2)` is the factorization `(AS.7x2)` rewritten in the notation
of the window block. On the repeated-top locus one has `g_J=0` while the
lower-gap separation keeps `h_J,\Gamma_J` bounded away from zero. So
`\mathfrak D_k` vanishes quadratically in the normal distance to
`\Sigma_{\mathrm{top}}`, which forces `(F.11f3)`. Hence a scalar codimension-one
gradient lower bound cannot be the correct theorem shape near that locus. The
right replacement is the codimension-two transversality / tubular estimate
already isolated in `AS.7zb` and used in `(F.11c)`. ∎

### Proposition F.11g (the exact remaining `V2` theorem after the localization-and-chart algebra)

Proposition `(F.11d)` already reduces the coarse defect to one localized
equation

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k
\tag{F.11g1}
```

on a bounded selector chart `\Omega_k`, with the uniformly elliptic coefficient
class `(F.11d12)`-`(F.11d13)`.

Assume in addition that one can further gauge-normalize the diffusion matrix so
that on a convex chart domain `\Omega_k` the same localized defect is rewritten
as

```math
\partial_t \widehat q_k
-\nu\Delta \widehat q_k
+\widehat b_k\cdot \nabla \widehat q_k
+\widehat c_k\widehat q_k
=
\widehat f_k,
\tag{F.11g2}
```

with

```math
\widehat b_k\in L^\infty(\Omega_k\times I_k),
\qquad
\widehat c_k\in L^\infty(I_k;L^q(\Omega_k)),
\qquad
q>\dim \Omega_k.
\tag{F.11g3}
```

Then the measurable-time observability theorem of Phung--Wang applies on every
product observation set `\omega_k\times E_k\subset \Omega_k\times I_k` with
`\omega_k` open and `|E_k|>0`, yielding the desired windowwise observation
packet.

Without this extra reduction, `(F.11d)` alone does **not** yet place the
equation in the exact Phung--Wang class, because `(F.11g1)` still has a fully
variable diffusion matrix. So the honest remaining `V2` theorem is one of the
following two inputs:

1. a gauge/coordinate reduction from `(F.11g1)` to the lower-order form
   `(F.11g2)`;
2. a measurable-time observability theorem for uniformly parabolic
   divergence-form operators in the coefficient class
   `(F.11d12)`-`(F.11d13)`.

The weighted backward-uniqueness theorem of Lei--Yang--Yuan may still support an
alternate whole-space branch, because it handles Calderon--Zygmund terms for
bounded mild solutions. But it does not by itself replace this local
measurable-time observability theorem on bounded selector charts.

**Proof.**
Phung--Wang proves measurable-time observability for
`\partial_t u-\Delta u+au+b\cdot\nabla u=0` on a bounded convex domain, with
lower-order coefficients `a,b` in the quoted regularity class. Proposition
`(F.11d)` yields instead the variable-diffusion divergence-form equation
`(F.11g1)`. So the additional reduction to `(F.11g2)` is exactly what is
needed to import that source verbatim. If no such reduction is installed, then
the remaining `V2` gap is the observability theorem for the coefficient class
already produced by `(F.11d)`. ∎

### Proposition F.11h (the exact `V3` forcing schedule is split, and the adiabatic branch keeps the cubic inverse-gap loss)

Assume the retained-family lower-gap packet `(F.11e1)` and suppose that on each
retained block `\mathcal J_k\times I_k` one has the windowwise envelopes

```math
\int_{\mathcal J_k}\int_{I_k}
|K_J^{seg}(a,b,t)n_J(a,b,t)|^2
\,dt\,d\mu_J^{pair}(a,b)
\le
(M_k^{rot})^2\,|I_k|\,\mu_J^{pair}(\mathcal J_k),
\tag{F.11h1}
```

```math
\int_{\mathcal J_k}\int_{I_k}
\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2
\,dt\,d\mu_J^{pair}(a,b)
\le
N_k^2\,|I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{F.11h2}
```

Then the adiabatic forcing estimate `(F.11e3)` yields

```math
\int_{\mathcal J_k}\int_{I_k}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
\le
2\Big(
\gamma_k^{-1}(M_k^{rot})^2
+
\gamma_k^{-3}N_k^2
\Big)
|I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{F.11h3}
```

Consequently the exact adiabatic `V3` summability target is not one single
series with prefactor `\gamma_k^{-1}`. It is the pair of split series

```math
\sum_k C_k\,\gamma_k^{-1}(M_k^{rot})^2|I_k|\,\mu_J^{pair}(\mathcal J_k)
<\infty,
\tag{F.11h4}
```

```math
\sum_k C_k\,\gamma_k^{-3}N_k^2|I_k|\,\mu_J^{pair}(\mathcal J_k)
<\infty.
\tag{F.11h5}
```

If, in addition, the regular windows satisfy the heuristic quantitative
envelopes

```math
|I_k|\le C_I r_k^2 e^{-CK_k},
\qquad
M_k^{rot}\le C_M r_k^{-1}e^{CK_k},
\qquad
N_k\le C_N r_k^{-3}e^{CK_k},
\tag{F.11h6}
```

and the retained family obeys the packing bound

```math
\mu_J^{pair}(\mathcal J_k)\le C_\mu r_k^5,
\tag{F.11h7}
```

then for the selector choice `\gamma_k=e^{2CK_k}r_k^\alpha` one gets

```math
\gamma_k^{-1}(M_k^{rot})^2|I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
C_h
e^{-CK_k}r_k^{5-\alpha},
\tag{F.11h8}
```

```math
\gamma_k^{-3}N_k^2|I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
C_h'
e^{-5CK_k}r_k^{1-3\alpha}.
\tag{F.11h9}
```

So pure dyadic summability of the cubic-loss term requires
`\alpha<1/3` (or an equivalent extra decay input) on that adiabatic branch. In
particular, the simpler one-series estimate with
`\gamma_k^{-1}(M_k^2+N_k^2)` is not the exact retained-family forcing condition
for the live branch.

**Proof.**
Estimate `(F.11h3)` is exactly `(F.11e3)` together with the envelope bounds
`(F.11h1)`-`(F.11h2)`. The split summability conditions `(F.11h4)`-`(F.11h5)`
are therefore the precise retained-family `V3` target. Substituting the scale
assumptions `(F.11h6)`-`(F.11h7)` and the selector choice for `\gamma_k` gives
`(F.11h8)`-`(F.11h9)` by direct exponent arithmetic. The second series is the
new obstruction created by the cubic inverse-gap factor already isolated in
`(F.11e3)`. ∎

### Corollary F.11i (weak shadow occupancy already gives a vanishing-error cycle-exact closure on the normal-covector subroute)

Work on one cycle-exact strip `I` on the normal-covector refinement of the
exact-potential branch. Assume:

1. the selector-normal calibration `(CN.10)` and pair-averaged parabolic
   domination `(CN.11)` hold, so the weighted quartic closure `(CN.13)` is
   available;
2. the active normal defect is supported on a route-local shadow tube in the
   sense of `(CN.13t1)`;
3. the stripwise shadow occupancy obeys

```math
\eta_{J}^{sh}(I)
:=
\int_I
\mu_J^{pair}\big(\mathcal S_J^{sh}(t)\big)\,dt
<\infty;
\tag{F.11i1}
```

4. the weighted quartic budget on the same strip is uniformly bounded:

```math
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)\le C_I.
\tag{F.11i2}
```

Then the quadratic directional ledger on that strip satisfies

```math
\mathcal E_J^{dir,\perp}(I)
\le
\eta_J^{sh}(I)^{1/2}
\Big(
C\,\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\perp}^{err}(I)
\Big)^{1/2}.
\tag{F.11i3}
```

In particular:

1. if `\eta_J^{sh}(I)=o_J(1)` while the quartic budget in `(F.11i2)` is bounded
   by a fixed constant `C_4`, then

```math
\mathcal E_J^{dir,\perp}(I)=o_J(1),
\tag{F.11i4}
```

so the vanishing-error cycle-exact closure `(PD.70z11)` holds on that strip
family after the usual route-local normalization;
2. if the stronger linear support pricing
   `\eta_J^{sh}(I)\le C_{sh}(\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I))`
   holds, then one recovers `(CN.13q)` and hence the full quadratic closure
   `(PD.70z)`.

So the normal-covector exact-potential subroute is reduced to two explicit
stripwise packets and no hidden cocycle geometry:

1. the pair-defect energy packet `(CN.13h15)`, equivalently `(PD.51b)` feeding
   `(PD.51c)`, which supplies the weighted observability clause `(CN.11)`;
2. the shadow-support / occupancy packet controlling `\eta_J^{sh}(I)`.

**Proof.**
Let
`f(a,b,t):=M_J(t)\Xi_J^{\perp}(a,b,t)`. By `(CN.13t1)`, the support of `f` on
`G_J^{pair,tr}\times I` is contained in the shadow tube, so

```math
(\mu_J^{pair}\otimes dt)(\operatorname{supp}f)
\le
\eta_J^{sh}(I).
\tag{F.11i5}
```

Applying the Hölder step `(CN.13s)` on `\operatorname{supp}f` gives

```math
\int f^2
\le
\eta_J^{sh}(I)^{1/2}
\Big(\int f^4\Big)^{1/2}.
\tag{F.11i6}
```

Now insert the weighted quartic closure `(CN.13)`:

```math
\int f^4
\le
C_4
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I),
\tag{F.11i7}
```

which yields `(F.11i3)`. Statement `(F.11i4)` is immediate from
`\eta_J^{sh}(I)=o_J(1)` together with the uniform bound `(F.11i2)`. The linear
support-pricing case is exactly the stronger support-smallness route
`(CN.13q)`-`(CN.13r)`. Finally, the last paragraph is just the combination of
`TPS-selector-normal-moment-from-stripwise-pair-defect-energy` with the support
containment / shadow-occupancy splice above. ∎

### Corollary F.11j (thresholded active-shadow occupancy is Chebyshev-controlled by the same directional-defect ledger)

Keep one cycle-exact strip `I`, and write
`d\mu:=d\mu_J^{pair}(a,b)\,dt` on the corresponding pair-time domain. Let
`T_J^{sh}(I)` be a route-local shadow tube on that strip and let
`D_J^\perp(a,b,t)` be a measurable directional-defect density on the same
domain. For one fixed activation threshold `\theta_\ast>0`, define the
thresholded active-shadow set

```math
A_{J,\theta}^{sh}(I)
:=
\big\{
(a,b,t)\in T_J^{sh}(I):
|D_J^\perp(a,b,t)|\ge \theta_\ast
\big\},
\qquad
\eta_{J,\theta}^{sh}(I)
:=
\mu\big(A_{J,\theta}^{sh}(I)\big),
\tag{F.11j1}
```

and the corresponding directional-defect ledger

```math
\Sigma_J^\perp(I)
:=
\int_I |D_J^\perp(a,b,t)|^2\,d\mu.
\tag{F.11j2}
```

Then

```math
\eta_{J,\theta}^{sh}(I)
\le
\theta_\ast^{-2}\Sigma_J^\perp(I).
\tag{F.11j3}
```

In particular, if
`\Sigma_J^\perp(I)=o_J(1)`, then
`\eta_{J,\theta}^{sh}(I)=o_J(1)`. So once the active shadow counter is priced
through a thresholded directional-defect ledger on the same strip, the
support-smallness input needed in `(F.11i)` is automatic.

The point is exact: `PD.51b -> PD.51c` enters only after a separate theorem has
already transferred the pair-defect packet `W_J` into the same
`D_J^\perp`-ledger. The Chebyshev step itself is purely downstream and carries
no additional geometric burden.

**Proof.**
On `A_{J,\theta}^{sh}(I)` one has
`1\le \theta_\ast^{-2}|D_J^\perp(a,b,t)|^2`. Integrating over that set gives

```math
\eta_{J,\theta}^{sh}(I)
=
\mu\big(A_{J,\theta}^{sh}(I)\big)
\le
\theta_\ast^{-2}
\int_{A_{J,\theta}^{sh}(I)}
|D_J^\perp(a,b,t)|^2\,d\mu
\le
\theta_\ast^{-2}\Sigma_J^\perp(I),
```

which is exactly `(F.11j3)`. The `o_J(1)` consequence is immediate. ∎

### Corollary F.11k (the exact remaining normal-covector supplier is a same-ledger transfer plus vanishing stripwise pair-defect energy)

Work on one cycle-exact strip `I` on the normal-covector refinement of the
exact-potential branch, and keep the notation of `(F.11i)`-`(F.11j)`. Assume
there is a route-local same-ledger transfer estimate of the form

```math
\Sigma_J^\perp(I)
\le
C_{\mathrm{tr}}
\int_I \|W_J(t)\|_{L^2_{x,y}}^2\,dt
+
\operatorname{Err}_{J,\mathrm{tr}}^\perp(I),
\qquad
\operatorname{Err}_{J,\mathrm{tr}}^\perp(I)=o_J(1).
\tag{F.11k1}
```

Assume in addition that the same strip family satisfies vanishing stripwise
pair-defect energy:

```math
\int_I \|W_J(t)\|_{L^2_{x,y}}^2\,dt=o_J(1).
\tag{F.11k2}
```

Then

```math
\Sigma_J^\perp(I)=o_J(1),
\tag{F.11k3}
```

so `(F.11j)` yields
`\eta_{J,\theta}^{sh}(I)=o_J(1)`. If, moreover, the support and quartic-budget
hypotheses of `(F.11i)` hold on the same strip, then

```math
\mathcal E_J^{dir,\perp}(I)=o_J(1),
\tag{F.11k4}
```

and hence the vanishing-error cycle-exact closure `(PD.70z11)` follows on that
normal-covector subroute.

The point is route-exact: `(PD.51b)`-`(PD.51c)` by themselves only give

```math
\int_I \|W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
C_W
\mathcal E_J^{obs}(I),
\tag{F.11k5}
```

so they do not imply `(F.11k2)` unless the active exact-potential strip family
already makes `\mathcal E_J^{obs}(I)=o_J(1)` or supplies another vanishing
pair-defect budget. Thus the honest remaining normal-covector debt is not only
the downstream Chebyshev step `(F.11j)`, but the upstream same-ledger transfer
`(F.11k1)` together with a vanishing stripwise pair-defect energy supplier.

**Proof.**
Estimate `(F.11k3)` is immediate from `(F.11k1)` and `(F.11k2)`. Then apply
`(F.11j)` to obtain `\eta_{J,\theta}^{sh}(I)=o_J(1)`, and insert that into
`(F.11i4)` under the support and quartic-budget hypotheses already recorded
there. Formula `(F.11k5)` is exactly the stripwise consequence `(PD.51c)`, so
the final paragraph is only the distinction between boundedness and vanishing on
the active strip family. ∎

### Corollary F.11l (active-strip mass pricing plus uniform strip energy density imply the vanishing stripwise pair-defect packet)

Let `\mathcal I_J^{act}` be the active strip family inside one selector-good
window, defined by a nonnegative strip score `a_J(S)` and threshold `a_\ast>0`
in the sense that

```math
S\in \mathcal I_J^{act}
\Longrightarrow
a_J(S)\ge a_\ast.
\tag{F.11l1}
```

Assume the strip-mass pricing packet

```math
\sum_S a_J(S)\,|S|=o_J(1),
\tag{F.11l2}
```

and the uniform strip energy-density bound on the selector-good strip family:

```math
\int_S \|W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
C_W |S|
\qquad
\text{for every selector-good strip }S.
\tag{F.11l3}
```

Then

```math
\sum_{S\in \mathcal I_J^{act}} |S|=o_J(1),
\tag{F.11l4}
```

and hence the active-family stripwise pair-defect energy vanishes:

```math
\sum_{S\in \mathcal I_J^{act}}
\int_S \|W_J(t)\|_{L^2_{x,y}}^2\,dt
=
o_J(1).
\tag{F.11l5}
```

So the opaque `N2` supplier from `(F.11k)` reduces exactly to two primitive
packets:

1. active-strip mass pricing `(F.11l2)`;
2. uniform strip energy density `(F.11l3)`.

**Proof.**
By `(F.11l1)`,

```math
a_\ast \sum_{S\in \mathcal I_J^{act}} |S|
\le
\sum_{S\in \mathcal I_J^{act}} a_J(S)|S|
\le
\sum_S a_J(S)|S|.
\tag{F.11l6}
```

Insert `(F.11l2)` to obtain `(F.11l4)`. Then sum `(F.11l3)` over
`S\in \mathcal I_J^{act}` and use `(F.11l4)`:

```math
\sum_{S\in \mathcal I_J^{act}}
\int_S \|W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
C_W \sum_{S\in \mathcal I_J^{act}} |S|
=
o_J(1),
```

which is `(F.11l5)`. ∎

### Corollary F.11m (the primitive same-ledger theorem is one algebraic symbol identity plus an `L^2` remainder)

Work on one active normal-covector strip and assume there exists a measurable
scalar coefficient `a_J`, a measurable symbol map `\mathcal N_J`, and a
remainder `r_J` such that

```math
D_J^\perp
=
a_J\,\mathcal N_J(W_J)+r_J,
\tag{F.11m1}
```

with quantitative bounds

```math
0<c_\ast\le |a_J|\le C_\ast,
\qquad
|\mathcal N_J(W)|\le C_{\mathcal N}|W|,
\tag{F.11m2}
```

and

```math
\int_I |r_J|^2\,d\mu=o_J(1).
\tag{F.11m3}
```

Then the same-ledger transfer estimate `(F.11k1)` follows:

```math
\Sigma_J^\perp(I)
\le
C_\Sigma
\int_I |W_J|^2\,d\mu
+
o_J(1).
\tag{F.11m4}
```

So the exact primitive content of `N1` is:

1. identify the normal-sector scalar symbol `a_J`;
2. prove its quantitative nondegeneracy `(F.11m2)`;
3. prove the algebraic remainder is `L^2`-small.

**Proof.**
By `(F.11m1)` and `(F.11m2)`,

```math
|D_J^\perp|^2
\le
2|a_J|^2|\mathcal N_J(W_J)|^2
+
2|r_J|^2
\le
C_N
|W_J|^2+|r_J|^2.
```

Integrate over the strip and use `(F.11m3)` to obtain `(F.11m4)`. ∎
