# TPS Strong Bridge SG Lemma Family

## Status

Strong-route bridge factorization note.

This note does **not** claim to close the strong route. Its job is narrower:
factor the current strong bridge into named lemma slots, discharge the pieces
that already follow from existing packets, and isolate the one remaining
creative theorem-search target.

The canonical theorem-facing Navier--Stokes surfaces now isolate the local TPS
strong/defect bridge route on the Law-2-survivor side, with
`SG.4-production` as the exact unresolved obstruction there: produce the
selector-good lower envelope `SG.4C`, then discharge
either the barrier budget or the renewal budget. Accordingly, this note is a
local TPS strong-subroute audit, not a lane-wide route reset.

That strong-subroute is currently read on the torus-first internal branch. The
transported bundle and selector geometry here belong to the periodic/operator
proving surface, while any whole-space Euclidean statement on `R^3` remains a
separate downstream discharge/export question.

## Strong target

The current strong route is

```math
\text{TPS-cg-gap}
\;+\;
(\mathrm{GN}.1)-(\mathrm{GN}.5)
\Longrightarrow
(\mathrm{GS}.21).
\tag{SG.0}
```

The right way to audit that implication is to split it into five exact bridge
forms:

```math
\text{SG.1 same-bundle alignment},
\quad
\text{SG.2' normalized additive selector increment},
```

```math
\text{SG.3 coarse-to-true error absorption},
\quad
\text{SG.4A/SG.4B barrier or renewal realization},
\quad
\text{SG.5' tube-local perturbative closure}.
```

The point of this note is that `SG.1`, `SG.2'`, `SG.3`, and `SG.5'` are already
available from the current theorem stack. The only genuinely new theorem input
left is the `SG.4-production` packet: on the same transported bundle and
horizon, produce `SG.4C` and close either the barrier budget or the renewal
budget.

## Common setup

Work on one selector-good family `G_J`, one transported bundle `a\mapsto N_a`,
one horizon `[0,T_J]`, and one normalized active-neighbor chart family
`\Theta_{J,a}` from `(GN.1)`-`(GN.5)` in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md).

Let `b=\Theta_{J,a}(\theta)` and write

```math
e_J(t):=
\exp\!\Big(\int_0^t\lambda_J(s)\,ds-o_J(1)\Big)
\tag{SG.0a}
```

for the lower envelope supplied by `TPS-cg-gap`.

Define the raw additive selector observable

```math
\mathcal A_J(t,a,\theta)
:=
\log s_{\min}\!\big(W_J(t,b)D_\theta\Theta_{J,a}(\theta)\big),
\tag{SG.0b}
```

and its normalized version

```math
\widetilde{\mathcal A}_J(t,a,\theta)
:=
\mathcal A_J(t,a,\theta)-\log(c_\Theta \ell_J)
=
\log\frac{s_{\min}\!\big(W_J(t,b)D_\theta\Theta_{J,a}(\theta)\big)}{c_\Theta \ell_J}.
\tag{SG.0b'}
```

Also retain the coarse/true deviation scale

```math
\widetilde\sigma_J
:=
\sigma_J+2\|\delta_J\|_{L_t^\infty},
\tag{SG.0c}
```

as in the shadow-time and coarse-flow packets.

## SG.1 Same-Bundle Alignment Lemma

Assume the hypotheses of `TPS-cg-gap` and `(GN.1)`-`(GN.5)` hold on the same
triple `(G_J,N_a,T_J)`.

Then for every admissible `(a,\theta)` with `b=\Theta_{J,a}(\theta)`,

```math
D_\theta\Theta_{J,a}(\theta)\big(\mathbb R^{d_\perp}\big)\subseteq N_b,
\tag{SG.1}
```

and the same bundle data define one common normalized linear term

```math
L_J(t,a,b):=-W_J(t,b)D_\theta\Theta_{J,a}(\theta).
\tag{SG.1a}
```

So there is no hidden carrier slippage between the Cauchy-Green packet and the
active-graph normalization packet once they are declared on the same
transported bundle.

**Proof.**
Containment `(SG.1)` is exactly the bundle compatibility already asserted in
`(GN.2)`, while `(SG.1a)` is just the normalized linear term from `(GN.6)`
written on the same transported bundle/horizon data as `TPS-cg-gap`. No new
estimate is required. ∎

## SG.2' Cauchy-Green Gap To A Normalized Additive Selector Increment

Under the same hypotheses, the normalized additive observable
`\widetilde{\mathcal A}_J` obeys

```math
\widetilde{\mathcal A}_J(t,a,\theta)
\ge
\int_0^t\lambda_J(s)\,ds-o_J(1)
\tag{SG.2'}
```

for every `a\in G_J`, every admissible `\theta`, and `0\le t\le T_J`.

Equivalently, for `0\le t_1\le t_2\le T_J`,

```math
\widetilde{\mathcal A}_J(t_2,a,\theta)
-
\widetilde{\mathcal A}_J(t_1,a,\theta)
\ge
\int_{t_1}^{t_2}\lambda_J(s)\,ds-o_J(1).
\tag{SG.2'a}
```

The raw and normalized observables are related by

```math
\mathcal A_J(t,a,\theta)
=
\log(c_\Theta \ell_J)+\widetilde{\mathcal A}_J(t,a,\theta).
\tag{SG.2'b}
```

So the finite-horizon Cauchy-Green gap already supplies the additive observable
the strong route was missing: the logarithm of the normalized singular-value
gain on the same transported bundle.

**Proof.**
By `(CG.5)`,

```math
s_{\min}\!\big(W_J(t,b)|_{N_b}\big)\ge e_J(t),
```

while `(GN.2)` gives

```math
s_{\min}\!\big(D_\theta\Theta_{J,a}(\theta)\big)\ge c_\Theta \ell_J.
```

Since `(SG.1)` puts the image of `D_\theta\Theta_{J,a}(\theta)` inside `N_b`,
supermultiplicativity of the minimal singular value yields

```math
s_{\min}\!\big(W_J(t,b)D_\theta\Theta_{J,a}(\theta)\big)
\ge
c_\Theta \ell_J e_J(t).
```

Dividing by `c_\Theta \ell_J` and taking logarithms gives `(SG.2')`.

For the increment form, fix `0\le t_1\le t_2\le T_J` and a unit vector
`\xi\in\mathbb R^{d_\perp}`. Since
`D_\theta\Theta_{J,a}(\theta)\xi\in N_b`, the scalar function

```math
q_\xi(t):=
\big|
W_J(t,b)D_\theta\Theta_{J,a}(\theta)\xi
\big|^2
```

obeys the same Gronwall inequality behind `(CG.4)` on `[t_1,t_2]`, hence

```math
q_\xi(t_2)
\ge
\exp\!\Big(2\int_{t_1}^{t_2}\lambda_J(s)\,ds-o_J(1)\Big)\,q_\xi(t_1).
```

Taking the infimum over unit `\xi` gives

```math
s_{\min}\!\big(W_J(t_2,b)D_\theta\Theta_{J,a}(\theta)\big)
\ge
\exp\!\Big(\int_{t_1}^{t_2}\lambda_J(s)\,ds-o_J(1)\Big)\,
s_{\min}\!\big(W_J(t_1,b)D_\theta\Theta_{J,a}(\theta)\big),
```

and dividing by the fixed factor `c_\Theta \ell_J` then taking logarithms yields
`(SG.2'a)`. Identity `(SG.2'b)` is just the definition `(SG.0b')`. ∎

## SG.3 Coarse-To-True Error Absorption Lemma

The coarse/true bridge is already exact at the pair level:

```math
|X(a,t)-X(b,t)|\le \sigma_J
\Longrightarrow
|X_{\le J}(a,t)-X_{\le J}(b,t)|\le \widetilde\sigma_J,
\tag{SG.3}
```

and therefore

```math
\mathfrak O_J^{act}(\sigma_J)
\le
\mathfrak O_J^{coarse}(\widetilde\sigma_J).
\tag{SG.3a}
```

In particular, any coarse theorem that excludes the enlarged shadow strip at
radius `\widetilde\sigma_J` automatically excludes the true `\sigma_J` shadow
tube.

**Proof.**
If `|X(a,t)-X(b,t)|\le \sigma_J`, then

```math
|X_{\le J}(a,t)-X_{\le J}(b,t)|
\le
|X(a,t)-X(b,t)|
+|X(a,t)-X_{\le J}(a,t)|
+|X(b,t)-X_{\le J}(b,t)|
\le
\sigma_J+2\|\delta_J\|_{L_t^\infty}
=
\widetilde\sigma_J.
```

This is `(SG.3)`. Averaging the corresponding indicators over time and the
active-pair graph gives `(SG.3a)`. ∎

## SG.4A One-Shot Entrance-Strip Barrier

Let

```math
I_J:=[\widetilde\sigma_J,2\widetilde\sigma_J]
\tag{SG.4A}
```

be the entrance strip for one good active pair, and write

```math
d_{ab}^{coarse}(t)
:=
|X_{\le J}(a,t)-X_{\le J}(b,t)|.
\tag{SG.4Aa}
```

Assume there exists an absolutely continuous scalar observable `\Psi_J` such
that on the strip `I_J`,

```math
\Psi_J(t)=\log d_{ab}^{coarse}(t),
\qquad
\dot\Psi_J(t)\ge \mu_J-e_J(t),
\qquad
\mu_J>0,
\tag{SG.4Ab}
```

with `e_J\ge 0` and

```math
\int_0^{T_J}e_J(t)\,dt\le E_J<\log 2.
\tag{SG.4Ac}
```

Assume also

```math
d_{ab}^{coarse}(0)\ge 2\widetilde\sigma_J.
\tag{SG.4Ad}
```

Then

```math
d_{ab}^{coarse}(t)>\widetilde\sigma_J
\qquad
\text{for all }0\le t\le T_J.
\tag{SG.4Ae}
```

**Proof.**
Assume toward contradiction that a first entrance time

```math
\tau:=\inf\{t\in[0,T_J]:d_{ab}^{coarse}(t)\le \widetilde\sigma_J\}
```

exists. Continuity of `d_{ab}^{coarse}` and hypothesis `(SG.4Ad)` imply there is
some `t_1<\tau` with

```math
d_{ab}^{coarse}(t_1)=2\widetilde\sigma_J,
\qquad
d_{ab}^{coarse}(\tau)=\widetilde\sigma_J,
```

and `d_{ab}^{coarse}(t)\in I_J` on `[t_1,\tau]`. Integrating `(SG.4Ab)` on
`[t_1,\tau]` gives

```math
\log\widetilde\sigma_J-\log(2\widetilde\sigma_J)
\ge
\mu_J(\tau-t_1)-\int_{t_1}^{\tau}e_J(t)\,dt
\ge
-E_J.
```

So `-\log 2\ge -E_J`, hence `E_J\ge \log 2`, contradicting `(SG.4Ac)`. Thus no
such `\tau` exists and `(SG.4Ae)` follows. ∎

## SG.4B Finite-Window Renewal Lemma

Let `\{[\tau_k^-,\tau_k^+]\}_{k=1}^{N_J}` be the maximal completed strip visits
of `d_{ab}^{coarse}` to `I_J`, and assume the normalized additive observable
`\widetilde{\mathcal A}_J` satisfies the per-visit gain estimate

```math
\widetilde{\mathcal A}_J(\tau_k^+,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_k^-,a,\theta)
\ge
m_J
\qquad
\text{for }1\le k\le N_J,
\tag{SG.4Ba}
```

with `m_J>0`. Assume also the between-visit losses obey

```math
\widetilde{\mathcal A}_J(\tau_{k+1}^-,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_k^+,a,\theta)
\ge
-\ell_{J,k},
\qquad
\sum_{k=1}^{N_J-1}\ell_{J,k}\le B_J,
\tag{SG.4Bb}
```

and that the total finite-window rise is bounded by

```math
\widetilde{\mathcal A}_J(\tau_{N_J}^+,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_1^-,a,\theta)
\le
\Delta_J^{window}.
\tag{SG.4Bc}
```

Then

```math
N_Jm_J\le \Delta_J^{window}+B_J.
\tag{SG.4Bd}
```

In particular, if

```math
\Delta_J^{window}+B_J<2m_J,
\tag{SG.4Be}
```

then `N_J\le 1`.

**Proof.**
Telescope the increments of `\widetilde{\mathcal A}_J` across the completed
visits:

```math
\widetilde{\mathcal A}_J(\tau_{N_J}^+,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_1^-,a,\theta)
=
\sum_{k=1}^{N_J}
\big(
\widetilde{\mathcal A}_J(\tau_k^+,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_k^-,a,\theta)
\big)
```

```math
+\sum_{k=1}^{N_J-1}
\big(
\widetilde{\mathcal A}_J(\tau_{k+1}^-,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_k^+,a,\theta)
\big).
```

By `(SG.4Ba)` the first sum is at least `N_Jm_J`, and by `(SG.4Bb)` the second
sum is at least `-B_J`. Therefore

```math
\widetilde{\mathcal A}_J(\tau_{N_J}^+,a,\theta)
-
\widetilde{\mathcal A}_J(\tau_1^-,a,\theta)
\ge
N_Jm_J-B_J.
```

Combining this with `(SG.4Bc)` yields `(SG.4Bd)`. The one-visit consequence
`(SG.4Be)` follows by substitution. ∎

This lemma is purely formal. The remaining creative theorem-search burden is to
realize its hypotheses from the Navier-Stokes selector packets.

## SG.4C Directional-Strain Lower-Envelope Realization

Let

```math
\delta_{ab}^{coarse}(t)
:=
X_{\le J}(b,t)-X_{\le J}(a,t),
\qquad
e_{ab}(t)
:=
\frac{\delta_{ab}^{coarse}(t)}{|\delta_{ab}^{coarse}(t)|},
\tag{SG.4Ca}
```

and write the active coarse segment as

```math
\gamma_{ab}(\theta,t)
:=
X_{\le J}(a,t)+\theta\delta_{ab}^{coarse}(t),
\qquad 0\le \theta\le 1.
\tag{SG.4Cb}
```

With `S_J:=\operatorname{Sym}\nabla v_J`, define the short-segment directional
strain average

```math
\mathfrak s_J(a,b,t)
:=
\int_0^1
\big(e_{ab}(t)\otimes e_{ab}(t)\big):S_J(\gamma_{ab}(\theta,t),t)\,d\theta.
\tag{SG.4Cc}
```

Then the coarse pair distance obeys the exact logarithmic derivative identity

```math
\frac{d}{dt}\log d_{ab}^{coarse}(t)
=
\mathfrak s_J(a,b,t)
\qquad\text{for a.e. }t\in[0,T_J]
\text{ with }d_{ab}^{coarse}(t)>0.
\tag{SG.4Cd}
```

Consequently, if there exist a selector-good active-pair family `G_J^{pair}`, a lower
envelope `\lambda_J(t)\ge 0`, and nonnegative errors `\varepsilon_J(a,b,t)` such
that

```math
\mathfrak s_J(a,b,t)
\ge
\lambda_J(t)-\varepsilon_J(a,b,t)
\qquad
\text{for a.e. }t\in[0,T_J],\ (a,b)\in G_J^{pair},
\tag{SG.4Ce}
```

then for every `0\le t_0\le t_1\le T_J`,

```math
d_{ab}^{coarse}(t_1)
\ge
d_{ab}^{coarse}(t_0)
\exp\!\Big(
\int_{t_0}^{t_1}\lambda_J(s)\,ds
-
\int_{t_0}^{t_1}\varepsilon_J(a,b,s)\,ds
\Big).
\tag{SG.4Cf}
```

In particular,

```math
\widetilde{\mathcal A}_J(t,a,b)
:=
\log d_{ab}^{coarse}(t)
\tag{SG.4Cg}
```

is an admissible additive observable for the strong bridge, and every completed
strip visit `[\tau_k^-,\tau_k^+]` satisfies

```math
\widetilde{\mathcal A}_J(\tau_k^+,a,b)
-
\widetilde{\mathcal A}_J(\tau_k^-,a,b)
\ge
\int_{\tau_k^-}^{\tau_k^+}\lambda_J(s)\,ds
-
\int_{\tau_k^-}^{\tau_k^+}\varepsilon_J(a,b,s)\,ds.
\tag{SG.4Ch}
```

So `SG.4C` is the exact production step: once one proves the selector-good
lower envelope `(SG.4Ce)` on the same active-pair family and horizon, the
additive observable is fixed and the only remaining work is budget closure in
either `SG.4A` or `SG.4B`.

**Proof.**
Differentiate the coarse displacement:

```math
\frac{d}{dt}\delta_{ab}^{coarse}(t)
=
v_J(X_{\le J}(b,t),t)-v_J(X_{\le J}(a,t),t).
```

Taking the scalar product with `e_{ab}(t)` gives

```math
\frac{d}{dt}d_{ab}^{coarse}(t)
=
\big(v_J(X_{\le J}(b,t),t)-v_J(X_{\le J}(a,t),t)\big)\cdot e_{ab}(t).
```

Apply the fundamental theorem of calculus along `\gamma_{ab}(\theta,t)`. The
antisymmetric part of `\nabla v_J` drops out against
`e_{ab}(t)\otimes e_{ab}(t)`, so the right-hand side becomes
`d_{ab}^{coarse}(t)\mathfrak s_J(a,b,t)`, which is `(SG.4Cd)`. Integrating
`(SG.4Cd)` under `(SG.4Ce)` and exponentiating gives `(SG.4Cf)`, and
specializing to a completed strip visit yields `(SG.4Ch)`. ∎

## SG.4D One-Sided Defect Reduction

Fix an admissible strip `I=[t_0,t_1]` and a reference rate `\lambda_J(t)`. Define
the selector-adapted one-sided defect density

```math
\mathfrak d_J^-(a,b,t)
:=
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+,
\tag{SG.4Di}
```

the strip budget

```math
B_J^-(a,b;I)
:=
\int_I \mathfrak d_J^-(a,b,t)\,dt,
\tag{SG.4Dii}
```

and the renormalized strip observable

```math
Z_{ab}^I(t)
:=
\log d_{ab}^{coarse}(t)
-
\log d_{ab}^{coarse}(t_0)
-
\int_{t_0}^t\lambda_J(s)\,ds.
\tag{SG.4Diii}
```

Then for a.e. `t\in I`,

```math
\partial_t Z_{ab}^I(t)=\mathfrak s_J(a,b,t)-\lambda_J(t),
\qquad
\big[-\partial_t Z_{ab}^I(t)\big]_+=\mathfrak d_J^-(a,b,t).
\tag{SG.4Div}
```

Consequently,

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_I\lambda_J(s)\,ds
-
B_J^-(a,b;I).
\tag{SG.4Dv}
```

So if

```math
\int_I\lambda_J(s)\,ds-B_J^-(a,b;I)\ge m_J,
\tag{SG.4Dvi}
```

then the per-visit gain hypothesis `(SG.4Ba)` holds on `I`.

**Proof.**
Identity `(SG.4Div)` is `(SG.4Cd)` with the definition of
`Z_{ab}^I`. Since `\mathfrak s_J-\lambda_J\ge-[\lambda_J-\mathfrak s_J]_+
=-\mathfrak d_J^-`, integrating on `I` gives `(SG.4Dv)`. Condition
`(SG.4Dvi)` is exactly the gain statement `(SG.4Ba)` with
`\widetilde{\mathcal A}_J=\log d_{ab}^{coarse}`. ∎

### Corollary SG.4D-large-good-family

Let `\mu_J^{pair}` be a finite measure on the selector-good active family
`G_J^{pair}`. Assume the strip budgets obey the averaged estimate

```math
\int_{G_J^{pair}} \big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
\mathcal E_J^-(I).
\tag{SG.4Dvii}
```

For `\eta>0`, define the exceptional set

```math
\mathfrak B_J(\eta;I)
:=
\big\{(a,b)\in G_J^{pair}:B_J^-(a,b;I)>\eta\big\}.
\tag{SG.4Dviii}
```

Then

```math
\mu_J^{pair}\big(\mathfrak B_J(\eta;I)\big)
\le
\eta^{-2}\mathcal E_J^-(I).
\tag{SG.4Dix}
```

Hence on the complement `G_J^{pair}\setminus\mathfrak B_J(\eta;I)`, the gain
condition `(SG.4Dvi)` holds whenever

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta.
\tag{SG.4Dx}
```

**Proof.**
Chebyshev applied to `(SG.4Dvii)` gives `(SG.4Dix)`. On the complement one has
`B_J^-(a,b;I)\le\eta`, so `(SG.4Dx)` implies `(SG.4Dvi)`. ∎

This is the exact splice point between norm-type defect estimates and `SG.4`:
one does not need raw positivity of `\mathfrak s_J` everywhere, only a bound on
the negative drift budget of the strip observable.

It does **not** replace the geometric realization step `SG.4C`. Rather, it says
that any theorem producing the one-sided budget `(SG.4Dvii)` is already strong
enough to force the renewal package `SG.4B` on a large selector-good family.

## SG.4P Renewal-Mode `SG.4-production` Package

Fix one selector-good active-pair family `G_J^{pair}`, one common transported
bundle, one common horizon `[0,T_J]`, and the same coarse pair observable
`d_{ab}^{coarse}` as in `SG.4C`-`SG.4D`. Assume:

1. the production inequality `(SG.4Ce)` holds on `G_J^{pair}` with reference
   rate `\lambda_J`;
2. every completed strip visit `I=[\tau_k^-,\tau_k^+]` on that same pair family
   obeys the one-sided defect budget estimate

```math
\int_{G_J^{pair}} \big(B_J^-(a,b;I)\big)^2\,d\mu_J^{pair}(a,b)
\le
\mathcal E_J^-(I)
\tag{SG.4Pa}
```

3. for some `m_J>0` and `\eta>0`, each completed strip visit on the refined
   family extracted by `SG.4D-large-good-family` satisfies

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta
\tag{SG.4Pb}
```

4. on that same refined family and same horizon, the between-visit losses and
   finite-window rise obey `(SG.4Bb)`-`(SG.4Bc)` with totals `B_J` and
   `\Delta_J^{window}`.

Then the renewal branch of `SG.4-production` is reduced to the finite-window
budget:

```math
N_Jm_J\le \Delta_J^{window}+B_J.
\tag{SG.4Pc}
```

In particular,

```math
\Delta_J^{window}+B_J<2m_J
\Longrightarrow
N_J\le 1.
\tag{SG.4Pd}
```

If the defect ledger in `(SG.4Pa)` is supplied by the pair-defect packet, one
may take

```math
\mathcal E_J^-(I)=|I|\,\mathfrak F_J^{def}(I)
\tag{SG.4Pe}
```

by `(PD.70aa)`. On the current route, the only new pair-defect-side theorem
input needed for `(SG.4Pe)` is no longer a monolithic "prove `PD.70`." After
the spectral floor and bundle-angle losses are peeled off, it is the residual
pairwise closure family `(PD.70t)`-`(PD.70v)` together with its explicit
directional-window split. On the cycle-exact branch this reduces to the
vanishing-error directional estimate `(PD.70z11)` and, in the exact-potential
lossless specialization, to `(PD.70z)`. On the general Hodge branch, once
loop-from-harmonic export `(PD.70z3)` is granted, the genuine new core is the
three-slot package `(PD.70z12)`-`(PD.70z14)`; the older expanded split
`(PD.70z6)`-`(PD.70z10)` is bookkeeping on top of that core.

**Proof.**
By `SG.4C`, the same coarse distance defines the additive observable
`\widetilde{\mathcal A}_J=\log d_{ab}^{coarse}` on `G_J^{pair}` and `[0,T_J]`.
Applying `SG.4D-large-good-family` to `(SG.4Pa)` and `(SG.4Pb)` produces a
refined pair family on which every completed strip visit satisfies the per-visit
gain hypothesis `(SG.4Ba)`. The renewal hypotheses `(SG.4Bb)`-`(SG.4Bc)` are
already assumed on that same refined family, so `SG.4B` yields `(SG.4Pc)` and
`(SG.4Pd)`. Identity `(SG.4Pe)` is exactly the selector-defect budget
corollary `(PD.70aa)`. ∎

### Corollary SG.4P-directional-window-feed

Assume the hypotheses of `SG.4P` except for the budget input `(SG.4Pa)`, and
suppose on each completed strip visit `I=[\tau_k^-,\tau_k^+]` the pair-defect
packet furnishes the directional-window observability split

```math
\mathcal E_J^{dir}(I)
\le
C_{\mathrm{dir}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{dir}(I),
\tag{SG.4Pf}
```

```math
\mathcal E_J^{harm}(I)
\le
C_{\mathrm{harm}}^\star\,
\mathcal E_J^{obs}(I)
+\varepsilon_J^{harm}(I),
\tag{SG.4Pg}
```

```math
\mathcal E_J^{loop}(I)
\le
C_{\mathrm{loop}}^\star\,
\mathcal E_J^{harm}(I)
+\varepsilon_J^{loop}(I),
\tag{SG.4Ph}
```

with the vanishing split ledger

```math
\varepsilon_J^{dir}(I)+\varepsilon_J^{harm}(I)+\varepsilon_J^{loop}(I)=o_J(1).
\tag{SG.4Pi}
```

Then the residual pairwise closure holds stripwise:

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
\big(
C_{\mathrm{dir}}^\star
+
C_{\mathrm{loop}}^\star C_{\mathrm{harm}}^\star
\big)\mathcal E_J^{obs}(I)
+o_J(1),
\tag{SG.4Pj}
```

and `(SG.4Pa)` holds with the canonical budget `(SG.4Pe)`, hence the renewal
package closes exactly as in `SG.4P`.

On the cycle-exact branch, it is enough to prove the directional estimate
`(SG.4Pf)` together with `\mathcal E_J^{harm}(I)=\mathcal E_J^{loop}(I)=0`,
equivalently the vanishing-error directional theorem `(PD.70z11)` and, in the
lossless exact-potential specialization, the older collapse `(PD.70z)`. On the
general Hodge branch, once `(SG.4Ph)` / `(PD.70z3)` is granted as the export
step, the exact live wall is the three-slot core of direction observability,
harmonic observability, and selector-ledger vanishing, equivalently
`(PD.70z12)`-`(PD.70z14)`; the quartet `(SG.4Pf)`-`(SG.4Pi)` is the expanded
bookkeeping form.

**Proof.**
The pair-defect packet identifies `(SG.4Pf)`-`(SG.4Pi)` with the split
observability family `(PD.70z6)`-`(PD.70z9)`, hence gives the residual pairwise
closure `(PD.70z10)`. That is the stripwise form of `(PD.70s)`, so
`TPS-selector-defect-budget` supplies `(PD.70aa)`, which is exactly `(SG.4Pe)`.
Therefore `(SG.4Pa)` is available on the same strip family and the proof of
`SG.4P` applies verbatim.

If the active pair-gap cocycle is cycle-exact, the same packet kills the
harmonic and loop terms, so `(PD.70z11)` is enough; in the exact-potential
lossless specialization, this is the older directional-only estimate
`(PD.70z)`. Away from cycle-exactness, the pair-defect packet now localizes the
genuinely new burden to `(PD.70z12)`-`(PD.70z14)` once the export step
`(PD.70z3)` is granted; the older split `(PD.70z6)`-`(PD.70z10)` is retained
only as the expanded bookkeeping form. Either specialization again feeds
`(PD.70aa)`, hence `(SG.4Pa)`. ∎

Three routes are now visible:

1. **Barrier realization.** Prove positive strip-logarithmic repulsion on
   `I_J`. Then `SG.4A` gives a one-shot no-entry theorem.
2. **Renewal realization.** Prove a per-visit gain `m_J` from the normalized
   additive observable `\widetilde{\mathcal A}_J`, and show that
   defect/recurrence losses sum to a lower-order budget `B_J` over the same
   finite window.
3. **One-sided defect realization.** Prove an averaged bound of the type
   `(SG.4Dvii)` for the selector-adapted defect density
   `\mathfrak d_J^-=[\lambda_J-\mathfrak s_J]_+`. Then `SG.4D` extracts a large
   good family on which the renewal package `SG.4B` holds automatically.

So the only genuinely new theorem family left inside the strong packet is
`SG.4-production`.

## SG.5' Tube-Local Additive Drift To `(GS.21)`

Let `\mathcal T_J^{tube}` denote the shadow-tube domain on which `(GS.21)` is
invoked; for example,

```math
\mathcal T_J^{tube}
:=
\big\{
(t,a,\theta):
|X(a,t)-X(\Theta_{J,a}(\theta),t)|\le \sigma_J
\big\}.
```

Assume the normalized-chart decomposition

```math
D_\theta F_J=L_J+E_J
\qquad
\text{on }\mathcal T_J^{tube},
\tag{SG.5'}
```

holds on the shadow-tube domain and there is a raw additive observable
`\mathcal A_J` such that

```math
s_{\min}(L_J(t,a,b))\ge e^{\mathcal A_J(t,a,\theta)}
\qquad
\text{for }(t,a,\theta)\in\mathcal T_J^{tube}.
\tag{SG.5'a}
```

Define

```math
\underline\lambda_J^{tube}
:=
\exp\!\Big(\inf_{(t,a,\theta)\in\mathcal T_J^{tube}}\mathcal A_J(t,a,\theta)\Big).
\tag{SG.5'b}
```

and assume moreover the uniform error bound

```math
\|E_J(t,a,\theta)\|
\le
\tfrac12 \underline\lambda_J^{tube}
\qquad
\text{on }\mathcal T_J^{tube}.
\tag{SG.5'c}
```

Then

```math
s_{\min}(D_\theta F_J(t,a,b))
\ge
\tfrac12 \underline\lambda_J^{tube}
\qquad
\text{on }\mathcal T_J^{tube},
\tag{SG.5'd}
```

hence `(GS.21)` holds on the same tube domain.

In particular, if `\mathcal A_J` is the raw observable corresponding to the
normalized increment from `SG.2'` and the normalized-chart error already obeys
the tube-local threshold `(GN.5)`, then the strong bridge closes at the
derivative level on that same domain.

**Proof.**
For every `(t,a,\theta)\in\mathcal T_J^{tube}`, definition `(SG.5'b)` implies
`e^{\mathcal A_J(t,a,\theta)}\ge \underline\lambda_J^{tube}`. Therefore
singular-value perturbation gives

```math
s_{\min}(D_\theta F_J)
\ge
s_{\min}(L_J)-\|E_J\|
\ge
\underline\lambda_J^{tube}-\tfrac12\underline\lambda_J^{tube}
=
\tfrac12\underline\lambda_J^{tube},
```

which is `(SG.5'd)`. This is exactly the lower singular-value theorem required
in `(GS.21)` on the tube domain. ∎

## Consequence For The Live Frontier

The strong bridge is no longer a monolithic black box.

The current theorem stack already supplies:

1. `SG.1` by same-bundle synchronization of `TPS-cg-gap` and `(GN.1)`-`(GN.5)`;
2. `SG.2'` by extracting the normalized logarithmic singular-value observable
   `\widetilde{\mathcal A}_J`;
3. `SG.3` by the exact pairwise coarse/true deviation bridge;
4. `SG.5'` by tube-local singular-value perturbation once the linear term is
   large enough.

Therefore the only unresolved strong creative-theorem-search target is the
local `SG.4-production` packet:

```math
\boxed{
\text{SG.4-production: prove the directional-strain lower envelope }(SG.4Ce)
\text{ and an integrated defect ledger that closes either }SG.4A\text{ or }SG.4B.
}
\tag{SG.6}
```

Using
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md),
that same obstruction can now be stated more geometrically: the strong bridge
will be realized once one constructs a selector-good lower envelope for
short-segment directional averages of `S_J` along the active bundle, realized
either as the one-shot barrier `SG.4A` or as the finite-window renewal package
`SG.4B` after the exact reduction `SG.4C`. On the renewal branch, `SG.4P`
packages the exact defect-ledger reduction from the pair-defect packet to the
finite-window threshold.

More sharply,
[tps-alignment-to-strain-production-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-alignment-to-strain-production-lemma.md)
shows that on the same active-pair family and same horizon the production step
`SG.4Ce` reduces to a selector-good segment-spectral floor plus the
misalignment energy

```math
\varepsilon_J^{align}(a,b,t)
=
\Gamma_J^{seg}(a,b,t)
\big\|
\big(I-P_{J,\top}^{seg}(a,b,t)\big)e_{ab}(t)
\big\|^2.
\tag{SG.6a0}
```

On the simple-top cone with aspect-ratio control, that same note sharpens the
open budget further to the angular-forcing term

```math
\int_I \frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt,
\tag{SG.6a00}
```

where `g_J` is the simple-top gap and `\beta_J` is the transverse drift of the
top eigendirection relative to pair transport. So the exact local strong burden
is no longer an abstract lower-envelope statement but a dynamic alignment
problem with one explicit forcing budget. On the adiabatic simple-top
subbranch, Corollary `D.7ia` sharpens this again to the explicit forcing pair
`\int_I |K_J^{seg}n_J|^2/g_J` and
`\int_I \|\partial_t A_J^{seg}\|_{\mathrm{op}}^2/g_J^3`.
On the material-gap branch, cone entry itself is also formalized: Proposition
`AS.7` gives entry into the material singular-vector cone from a finite-time
singular gap plus a uniform initial right-singular overlap, and Corollary
`AS.7m` transfers that to the instantaneous cone once one controls the carrier
mismatch between the material left singular direction and the top eigendirection
of `A_J^{seg}`. On the predecessor-window material-gap subbranch, Corollary
`D.7ic` goes one step further and replaces the `D.7ia` boundary term
`2C_{\mathrm{asp}}\alpha_J(t_0)` by explicit singular-gap and carrier-mismatch
data at the strip entrance time.

Equivalently, one must first prove the production theorem

```math
\mathfrak s_J(a,b,t)\ge \lambda_J(t)-\varepsilon_J(a,b,t)
\qquad
\text{on a selector-good active-pair family,}
\tag{SG.6a}
```

and then close one of the two budget modes:

```math
\int_{\text{strip visit}}\varepsilon_J(a,b,t)\,dt<\log 2
\qquad\text{for barrier mode }SG.4A,
\qquad\text{or}\qquad
\sum \ell_{J,k}\le B_J\ \text{ with }\ \Delta_J^{window}+B_J<2m_J
\qquad\text{for renewal mode }SG.4B.
\tag{SG.6b}
```

So the exact reduced frontier is not merely “prove `SG.4A` or `SG.4B`”, but
rather the local `SG.4-production` packet:

```math
\text{produce }SG.4C\text{ and then discharge the barrier or renewal budget.}
```

That is the exact reduced frontier after the current Cauchy-Green, normalized,
coarse/true, and weak averaged packets are all put on the same ledger.

The pair-defect packet sharpens the remaining budget-side input further to the
selector-adapted directional-window observability theorem `SF.15a`, equivalently
to the residual pairwise estimate `PD.70s` together with its explicit
sublemmas. On the cycle-exact branch this reduces to the vanishing-error
directional estimate `PD.70z11`, and in the exact-potential lossless
specialization to `PD.70z`. On the general Hodge branch, once loop-from-harmonic
export is granted, the genuinely new wall is the three-slot core
`(PD.70z12)`-`(PD.70z14)`; the older split `(PD.70z6)`-`(PD.70z10)` is the
expanded bookkeeping form on the same selector-adapted family. The downstream
`BR.\lambda2` continuation bridge remains a separate theorem slot.

The companion note
[tps-shadow-barrier-formal-closure-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-barrier-formal-closure-packet.md)
packages the corresponding stopping-time barrier and the honest strong/weak
dichotomy on the occupancy ledger.

## SG.4E Fresh-Angular `\lambda_2^+` Feed Realizes `SG.4Ce`

Fix one dyadic scale `J`. Assume the hypotheses of
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md)
through Proposition `TPS-coarse-gap-lambda2-plus-feed` hold on a refined
good-pair family `G_J^{pair,\angle}`.

Define

```math
\lambda_J^{SG}(t):=g_J^{fresh,\angle}(t),
\tag{SG.4Ea}
```

and

```math
\varepsilon_J^{SG}(a,b,t)
:=
\mathrm{angdef}_{ab}(t)
+M_J(t)\big(1-\chi_{ab}^{fresh}(t)\big).
\tag{SG.4Eb}
```

Then the short-segment directional strain average `\mathfrak s_J` from
`(SG.4Cc)` obeys

```math
\mathfrak s_J(a,b,t)
\ge
\lambda_J^{SG}(t)-\varepsilon_J^{SG}(a,b,t)
\qquad
\text{for a.e. }t\in[0,T_J],\ (a,b)\in G_J^{pair,\angle}.
\tag{SG.4Ec}
```

So `SG.4Ce` is realized on `G_J^{pair,\angle}`. Consequently, every barrier or
renewal theorem proved on the same family closes the strong bridge through the
existing `SG.4A` / `SG.4B` packets without any further geometric reduction.

**Proof.**
Write

```math
y_a(t):=X_{\le J}(a,t),
\qquad
y_b(t):=X_{\le J}(b,t),
\qquad
e_{ab}(t):=\frac{y_b(t)-y_a(t)}{|y_b(t)-y_a(t)|},
```

and

```math
\gamma_{ab}(\theta,t):=(1-\theta)y_a(t)+\theta y_b(t).
```

These are exactly the objects used in `(CF.6m)`-`(CF.6o)`. Therefore the
left-hand side of `(CF.6o)` is the directional average `\mathfrak s_J(a,b,t)`
from `(SG.4Cc)`:

```math
\mathfrak s_J(a,b,t)
=
\int_0^1
\big(e_{ab}(t)\otimes e_{ab}(t)\big):S_J(\gamma_{ab}(\theta,t),t)\,d\theta.
```

By definition `(CF.6r1)`,

```math
g_J^{fresh,\angle}(t)
=
c_\angle
\inf_{(\alpha,\beta)\in G_J^{pair,\angle}}
\overline{\mathcal A}_{\alpha\beta}^{fresh}(t)
\le
c_\angle\,\overline{\mathcal A}_{ab}^{fresh}(t)
```

for every `(a,b)\in G_J^{pair,\angle}`. Substituting this into `(CF.6o)` gives

```math
\mathfrak s_J(a,b,t)
\ge
g_J^{fresh,\angle}(t)
-\mathrm{angdef}_{ab}(t)
-M_J(t)\big(1-\chi_{ab}^{fresh}(t)\big),
```

which is exactly `(SG.4Ec)` after the definitions `(SG.4Ea)`-`(SG.4Eb)`. This
is the hypothesis `(SG.4Ce)` with `\lambda_J=\lambda_J^{SG}` and
`\varepsilon_J=\varepsilon_J^{SG}`. The closing sentence is then `SG.4C`
together with whichever realization theorem, `SG.4A` or `SG.4B`, is
available on the same family. ∎

## SG.4F Weighted Renewal Under Fresh-Gain Comparability

Fix one window `[t_0,t_1]\subseteq[0,T_J]`. Assume the fresh-angle packet of
`SG.4E` holds on `G_J^{pair,\angle}` and that, for every
`(a,b)\in G_J^{pair,\angle}`,

```math
\int_{t_0}^{t_1}
M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds
\le
\eta
\int_{t_0}^{t_1}
\overline{\mathcal A}_{ab}^{fresh}(s)\,ds
+
B_{ab}^{ret}(t_0,t_1),
\tag{SG.4Fa}
```

with `\eta>0` and `B_{ab}^{ret}(t_0,t_1)\ge 0`. Assume moreover there is a
fresh-gain comparability constant `C_J^{cmp}(t_0,t_1)\ge 1` such that

```math
\int_{t_0}^{t_1}
\overline{\mathcal A}_{ab}^{fresh}(s)\,ds
\le
C_J^{cmp}(t_0,t_1)
\inf_{(\alpha,\beta)\in G_J^{pair,\angle}}
\int_{t_0}^{t_1}
\overline{\mathcal A}_{\alpha\beta}^{fresh}(s)\,ds
\tag{SG.4Fb}
```

for every `(a,b)\in G_J^{pair,\angle}`.

Define

```math
B_J^{ret}(t_0,t_1)
:=
\sup_{(a,b)\in G_J^{pair,\angle}} B_{ab}^{ret}(t_0,t_1).
\tag{SG.4Fc}
```

Then

```math
R_J(t_1)-R_J(t_0)
\le
\frac{\eta\,C_J^{cmp}(t_0,t_1)}{c_\angle}
\big(
G_J^{fresh,\angle}(t_1)-G_J^{fresh,\angle}(t_0)
\big)
+
B_J^{ret}(t_0,t_1),
\tag{SG.4Fd}
```

and every pair `(a,b)\in G_J^{pair,\angle}` satisfies

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\Big(
1-\frac{\eta\,C_J^{cmp}(t_0,t_1)}{c_\angle}
\Big)
\big(
G_J^{fresh,\angle}(t_1)-G_J^{fresh,\angle}(t_0)
\big)
```

```math
-
\big(A_J(t_1)-A_J(t_0)\big)
-
B_J^{ret}(t_0,t_1).
\tag{SG.4Fe}
```

In particular, if

```math
\eta\,C_J^{cmp}(t_0,t_1)<c_\angle
\tag{SG.4Ff}
```

and

```math
\Big(
1-\frac{\eta\,C_J^{cmp}(t_0,t_1)}{c_\angle}
\Big)
\big(
G_J^{fresh,\angle}(t_1)-G_J^{fresh,\angle}(t_0)
\big)
>
\big(A_J(t_1)-A_J(t_0)\big)
+
B_J^{ret}(t_0,t_1)
+
L_J^{thr},
\tag{SG.4Fg}
```

then the same window clears the coarse-gap strip threshold.

**Proof.**
Let

```math
H_J(t_0,t_1)
:=
\inf_{(\alpha,\beta)\in G_J^{pair,\angle}}
\int_{t_0}^{t_1}
\overline{\mathcal A}_{\alpha\beta}^{fresh}(s)\,ds.
```

By definition `(CF.6r1)`,

```math
G_J^{fresh,\angle}(t_1)-G_J^{fresh,\angle}(t_0)
=
\int_{t_0}^{t_1}g_J^{fresh,\angle}(s)\,ds
=
c_\angle H_J(t_0,t_1).
\tag{SG.4Fh}
```

Fix one pair `(a,b)`. Combining `(SG.4Fa)` with `(SG.4Fb)` gives

```math
\int_{t_0}^{t_1}
M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds
\le
\eta\,C_J^{cmp}(t_0,t_1)\,H_J(t_0,t_1)
+
B_{ab}^{ret}(t_0,t_1),
```

which is

```math
\int_{t_0}^{t_1}
M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds
\le
\frac{\eta\,C_J^{cmp}(t_0,t_1)}{c_\angle}
\big(
G_J^{fresh,\angle}(t_1)-G_J^{fresh,\angle}(t_0)
\big)
+
B_{ab}^{ret}(t_0,t_1)
```

after `(SG.4Fh)`. Taking the supremum over pairs yields `(SG.4Fd)`.

Now integrate `(SG.4Ec)` on `[t_0,t_1]`:

```math
\log\frac{d_{ab}^{coarse}(t_1)}{d_{ab}^{coarse}(t_0)}
\ge
\int_{t_0}^{t_1}g_J^{fresh,\angle}(s)\,ds
-
\int_{t_0}^{t_1}\mathrm{angdef}_{ab}(s)\,ds
```

```math
-
\int_{t_0}^{t_1}M_J(s)\big(1-\chi_{ab}^{fresh}(s)\big)\,ds.
```

Use the preceding bound for the return term and the definition of `A_J` for the
angular loss term. This gives `(SG.4Fe)`, and `(SG.4Fg)` is exactly the
threshold inequality needed to clear the same coarse strip. ∎

## SE.1 Strong-Entry Transfer

Fix a time window `I=[t_\ast,t_\ast+\tau]`. Let `u` be a Leray or suitable weak
solution on a larger interval containing `I`, and let `v` be a local strong
solution on `I` with matching entry data

```math
v(t_\ast)=u(t_\ast).
\tag{SE.1}
```

Assume weak-strong uniqueness on `I`: whenever a weak solution and a strong
solution share the same entry data at `t_\ast`, they agree almost everywhere on
`I`. Then

```math
u=v
\qquad\text{a.e. on }I.
\tag{SE.1a}
```

In particular, every continuation criterion verified for the strong solution on
`I` transfers to the original weak solution on the same interval.

**Proof.**
This is the weak/strong uniqueness implication applied on the entry window
`I`. Once `(SE.1a)` holds, every bound proved for `v` on `I` is also a bound for
`u` there. ∎

## BR.lambda2 Conditional Middle-Eigenvalue Bridge

Fix a strong interval `I` and assume the selector/coarse loss ledger satisfies

```math
\int_I
\big\|
\lambda_2^+(\cdot,t)
\big\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\,B_J(I).
\tag{BR.\lambda2}
```

Then every finite bound on `B_J(I)` yields the source-backed critical strain
budget

```math
\lambda_2^+\in L_t^2\dot B^{-1}_{\infty,\infty}(I).
\tag{BR.\lambda2 a}
```

So the only remaining work in this bridge is to prove `(BR.\lambda2)` from the
coarse loss decomposition; no extra route logic is hidden after that point.

**Proof.**
If `B_J(I)<\infty`, then `(BR.\lambda2)` gives finiteness of the
critical Besov integral, which is exactly `(BR.\lambda2 a)`. ∎

## Theorem SG.7 Conditional Continuation From The TPS Scalar Packet

Fix a time window `I=[t_\ast,t_\ast+\tau]`. Assume:

1. **SG.4 realization.** The selector-good lower envelope `(SG.4Ce)` holds on an
   asymptotically full good active family, and either the one-shot barrier
   `SG.4A` or the renewal package `SG.4B` is strong enough to force stripwise
   no-return on every admissible shadow strip in `I`.
2. **Tube-local derivative closure.** The perturbative tube-local hypothesis
   `SG.5'` holds on the same window, so `(GS.21)` follows on the shadow-tube
   domain.
3. **Strong entry.** A local strong solution enters at time `t_\ast` and shares
   the same data as the original Leray/suitable-weak solution there, so `SE.1`
   applies on `I`.
4. **Critical bridge.** The middle-eigenvalue bridge `(BR.\lambda2)` holds on
   `I`.
5. **Imported continuation criterion.** The 2025 middle-eigenvalue continuation
   theorem applies on local strong intervals when
   `\lambda_2^+\in L_t^2\dot B^{-1}_{\infty,\infty}`.

Then the TPS scalar-packet route yields selector-good shadow exclusion on `I`
and continuation of the original solution across `I`.

**Proof.**
By `SG.4C`, the coarse pair distance itself is the additive observable, and the
realized lower envelope `(SG.4Ce)` turns every admissible shadow strip into a
stripwise gain ledger. By hypothesis 1, that stripwise ledger closes either
through the one-shot barrier `SG.4A` or through the renewal mechanism `SG.4B`,
so the selector-good family avoids recurrent shadowing on `I`. By hypothesis 2,
`SG.5'` converts that additive control into the derivative lower bound `(GS.21)`
on the shadow-tube domain.

By hypothesis 4 and Proposition `BR.\lambda2`, the same interval carries the
critical budget
`\lambda_2^+\in L_t^2\dot B^{-1}_{\infty,\infty}(I)`. Hypothesis 5 then extends
the strong solution across `I`. Finally, hypothesis 3 and `SE.1` identify the
entered strong solution with the original Leray/suitable-weak solution on `I`,
so the continuation conclusion transfers to the original solution. ∎

This theorem is intentionally conditional. The genuinely new mathematical slots
remain exactly:

```math
\boxed{\text{realize }SG.4\text{ on selector geometry}}
\qquad\text{and}\qquad
\boxed{\text{prove }(BR.\lambda2)\text{ from the coarse loss ledger}.}
```

These remain the genuinely new slots on the Law-2-survivor one-field branch,
with continuation still downstream after that surviving branch closes.
