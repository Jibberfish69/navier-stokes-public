# HWY Instability Attack Packet

## Status

External contradiction / stress-test packet for the live TPS strong route.

This note does **not** claim to disprove the Hou--Wang--Yang construction. Its
job is narrower: factor the proposed contradiction route into exact local
theorem slots already formalized on the lane, prove the steps that now do
follow, and isolate the one extra uniqueness-class hypothesis that is still
missing.

## Public input being tested

The March 19, 2026 `v2` arXiv preprint of Hou--Wang--Yang
([arXiv:2509.25116](https://arxiv.org/abs/2509.25116)) claims infinitely many
distinct suitable Leray--Hopf solutions with the same compactly supported
divergence-free initial datum, obtained by constructing a self-similar profile
with an unstable eigenvalue and then localizing the resulting branch
construction. The same public theorem statement also says the localized
solutions are smooth for positive times and sit just outside the Prodi--Serrin
uniqueness regime.

For this packet, the only source-backed facts from that claim that matter are:

1. there is one common initial datum `u_0`;
2. the branch solutions are Leray--Hopf and smooth for every positive time;
3. the advertised branching mechanism is an unstable self-similar profile.

The exact TPS contradiction route therefore has to pass through the already
formalized local slots

```math
\text{positive fresh angular }\lambda_{2,J}^+\text{ feed}
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{a uniqueness class from the common datum }u_0.
```

The first two arrows are now theorem-grade on the lane. The last arrow is still
an extra hypothesis.

## Proposition. Fresh-angle `\lambda_2^+` feed implies the live `SG.4` packet

Fix one branch `u`, one time window `I`, and one dyadic scale `J`. Assume the
hypotheses of Proposition `TPS-coarse-gap-lambda2-plus-feed` in
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md)
hold on a refined good-pair family over `I`.

Then the exact directional lower-envelope hypothesis `SG.4Ce` from
[tps-strong-bridge-sg-lemma-family.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-strong-bridge-sg-lemma-family.md)
holds on that same family with

```math
\lambda_J(t)=g_J^{fresh,\angle}(t),
\qquad
\varepsilon_J(a,b,t)
=
\mathrm{angdef}_{ab}(t)+M_J(t)\big(1-\chi_{ab}^{fresh}(t)\big).
```

Consequently, once the corresponding strip threshold is closed, the live strong
route can invoke `SG.4A` or `SG.4B` directly on that branch.

**Proof.**
This is exactly Proposition `SG.4E` in
[tps-strong-bridge-sg-lemma-family.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-strong-bridge-sg-lemma-family.md),
which identifies the left-hand side of `(CF.6o)` with the directional strain
average `\mathfrak s_J` and converts the fresh-angle packet into the lower
envelope `SG.4Ce`. ∎

## Corollary. Positive fresh-angle feed forces coarse shadow exclusion

Fix one branch `u` and one window `I=[t_0,t_1]`. Assume:

1. the fresh-angle `\lambda_{2,J}^+` packet above holds on `I`;
2. the corresponding barrier or renewal hypotheses required by `SG.4A` or
   `SG.4B` hold on the same good-pair family;
3. the coarse/true deviation bridge `SG.3` holds on `I`.

Then coarse shadow exclusion on the enlarged strip radius
`\widetilde\sigma_J` holds on `I`, and therefore true shadow exclusion at
radius `\sigma_J` holds on `I`.

**Proof.**
By the previous proposition, the branch realizes `SG.4Ce`. The barrier theorem
`SG.4A` or the renewal theorem `SG.4B` therefore closes the coarse strip on the
same window. The exact pairwise coarse/true bridge `SG.3` then transfers coarse
shadow exclusion at radius `\widetilde\sigma_J` to true shadow exclusion at
radius `\sigma_J`. ∎

## Theorem Candidate. HWY tensor-sign to fresh-feed

Fix one branch `u`, one dyadic scale `J`, and one strip `I=[t_0,t_1]`. Assume
there exist:

1. a refined good-pair family `G_J^{pair,\angle}`;
2. measurable fresh indicators `\chi_{ab}^{fresh}`;
3. measurable fresh angular sub-arcs `I_{ab}^{ang}(t)\subset[0,1]`;
4. a transported rank-two expanding bundle `E_J^+(\cdot,t)`;
5. one nonnegative lower envelope `\underline\lambda_J(t)`;
6. one measurable angle-defect profile `\vartheta_{ab}(\theta,t)`.

Assume furthermore that for a.e. `t\in I`, every `(a,b)\in G_J^{pair,\angle}`,
and a.e. `\theta\in I_{ab}^{ang}(t)`,

```math
|I_{ab}^{ang}(t)|
\ge
\mu_J^{ang}(t)\chi_{ab}^{fresh}(t),
\tag{HWY.1}
```

```math
\lambda_{2,J}^{+}(\gamma_{ab}(\theta,t),t)
\ge
\underline\lambda_J(t),
\tag{HWY.2}
```

```math
\big|
\big(I-Q_{\le J}^{+}(\gamma_{ab}(\theta,t),t)\big)e_{ab}(t)
\big|
\le
\vartheta_{ab}(\theta,t),
\tag{HWY.3}
```

and the quadratic angular loss is absorbed into the coarse angle-defect ledger
as in `(CF.6n2)`.

Then

```math
\overline{\mathcal A}_{ab}^{fresh}(t)
\ge
\chi_{ab}^{fresh}(t)\,\mu_J^{ang}(t)\,\underline\lambda_J(t),
\tag{HWY.4}
```

hence

```math
g_J^{fresh,\angle}(t)
\ge
c_\angle\,\mu_J^{ang}(t)\,\underline\lambda_J(t).
\tag{HWY.5}
```

Consequently, the branch enters the fresh-angle feed packet `SG.4E`; if the
comparability and weighted-renewal hypotheses of `SG.4F` also hold on the same
window, then the strip clears the coarse-gap threshold whenever `(SG.4Fg)` is
satisfied.

**Proof.**
By definition,

```math
\overline{\mathcal A}_{ab}^{fresh}(t)
=
\chi_{ab}^{fresh}(t)
\int_{I_{ab}^{ang}(t)}
\lambda_{2,J}^{+}(\gamma_{ab}(\theta,t),t)\,d\theta.
```

Apply `(HWY.2)` on the fresh angular sub-arc and then `(HWY.1)`:

```math
\overline{\mathcal A}_{ab}^{fresh}(t)
\ge
\chi_{ab}^{fresh}(t)\,|I_{ab}^{ang}(t)|\,\underline\lambda_J(t)
\ge
\chi_{ab}^{fresh}(t)\,\mu_J^{ang}(t)\,\underline\lambda_J(t),
```

which is `(HWY.4)`. Taking the infimum over pairs and multiplying by `c_\angle`
gives `(HWY.5)`. The final sentence is exactly `SG.4E` followed by `SG.4F`. ∎

## Proposition. One-sided defect route into the live strong bridge

Fix one strip `I=[t_0,t_1]`. Assume the selector-adapted one-sided defect
estimate `(PD.70)` from
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md)
holds on `I`, and that the reference gain satisfies

```math
\int_I \lambda_J(s)\,ds\ge m_J+\eta.
\tag{HWY.6}
```

Then the pair-defect packet produces a refined good-pair family on which the
renewal hypothesis `SG.4B` holds on `I`.

If, in addition, the same strip lies in the `SG.7` continuation class and a
zero-time uniqueness entry theorem is available for the common datum `u_0`,
then this one-sided defect route is sufficient to exclude same-datum branching
on `I`.

**Proof.**
The first claim is exactly Corollary `TPS-selector-defect-bridge-to-SG4B`,
which turns `(PD.70)` and `(HWY.6)` into the `SG.4B` per-visit gain statement on
a refined large good family. Once `SG.4B` holds, the strip enters the same live
strong bridge as before. The second sentence is then the conditional
contradiction theorem already proved above. ∎

## Theorem. Conditional contradiction after zero-time uniqueness entry

Let `u^{(1)}` and `u^{(2)}` be Leray--Hopf solutions on `[0,T]` with the same
initial datum `u_0`. Assume:

1. for every compact `I\subset(0,T]`, both branches are smooth on `I`;
2. on one fixed window `I\subset(0,T]`, both branches satisfy the fresh-angle
   `\lambda_{2,J}^+` feed hypothesis above strongly enough to realize `SG.4`
   through `SG.4A` or `SG.4B`;
3. on the same window `I`, both branches satisfy the tube-local derivative
   closure `SG.5'` and the middle-eigenvalue bridge `BR.\lambda2`, so the
   conditional continuation theorem `SG.7` places each branch in one common
   continuation class `\mathcal X(I)`;
4. the common datum `u_0` belongs to an initial-data class `\mathcal Y` with
   the following uniqueness property:

```math
\text{there is at most one Leray--Hopf solution with datum }u_0
\text{ whose restriction to }I\text{ lies in }\mathcal X(I).
```

Then

```math
u^{(1)}=u^{(2)}
\qquad\text{a.e. on }I.
```

**Proof.**
Hypothesis 2 and the first proposition above place both branches inside the
live `SG.4` packet on the same window. Hypothesis 3 then applies `SG.7` to each
branch, so both restrictions `u^{(1)}|_I` and `u^{(2)}|_I` belong to the same
continuation class `\mathcal X(I)`. Hypothesis 4 says there is at most one
Leray--Hopf solution with datum `u_0` whose restriction to `I` lies in that
class. Since both branches have the same datum `u_0`, they must coincide on
`I`. ∎

## Exact remaining gap on the contradiction route

The theorem above proves the clean formal reduction:

```math
\boxed{
\text{to contradict the HWY branching claim through the live TPS route, it is enough to prove}
}
```

```math
\boxed{
\text{(i) a profile-to-feed theorem producing positive fresh angular }\lambda_{2,J}^+\text{ mass,}
}
```

```math
\boxed{
\text{and (ii) a zero-time uniqueness entry theorem compatible with the continuation class from }BR.\lambda2.
}
```

The lane already formalizes the first downstream implication

```math
\text{positive fresh angular }\lambda_{2,J}^+
\Longrightarrow
SG.4
\Longrightarrow
\text{coarse/true shadow exclusion}.
```

What is still **not** proved is the bridge from the public HWY self-similar
profile and its unstable branch to the fresh-angle feed itself. The
zero-time uniqueness side is only missing if the localized datum does not land
in a Barker critical-space class already covered by the literature.

There is also one route-level normalization point now fixed on the lane:
a same-pair weighted return estimate against
`\int \overline{\mathcal A}_{ab}^{fresh}` is not by itself enough to control the
global ledger `R_J` by the inf-based global gain `G_J^{fresh,\angle}`. The new
`SG.4F` packet shows that one also needs a fresh-gain comparability input across
the refined family.

So the exact open local theorem on this external attack surface is:

```math
\boxed{
\text{HWY profile / unstable branch}
\Longrightarrow
\text{positive-measure fresh angular sub-arcs carrying a lower envelope for }\lambda_{2,J}^+.
}
```

## Proposition. Exact local factorization of the profile-to-feed theorem

Fix one branch `u`, one dyadic scale `J`, and one strip `I=[t_0,t_1]`. To
prove the open implication above, it is enough to verify on one refined
good-pair family `G_J^{pair,\angle}`:

1. **fresh-arc persistence:** measurable fresh indicators and sub-arcs satisfy
   `(HWY.1)`;
2. **positive middle-eigenvalue lower envelope:** `(HWY.2)` holds with one
   nonnegative lower envelope `\underline\lambda_J(t)`;
3. **expanding-bundle alignment:** `(HWY.3)` holds and the resulting quadratic
   angular loss is absorbed into the coarse angle-defect ledger as in
   `(CF.6n2)`;
4. **familywise comparability, if the renewal route is used:** the fresh-gain
   comparability hypothesis `(SG.4Fb)` from `SG.4F` holds on the same family.

Then `(HWY.4)`-`(HWY.5)` follow, so the branch enters `SG.4E`. If item 4 is
also available, then the renewal route `SG.4F` converts pairwise fresh-return
control into stripwise gain exactly as in `(SG.4Fd)`-`(SG.4Fg)`.

**Proof.**
Items 1-3 are exactly the hypotheses of Theorem Candidate
`HWY tensor-sign to fresh-feed`, so they yield `(HWY.4)`-`(HWY.5)`. Proposition
`SG.4E` then realizes `SG.4Ce` on the same family. If the route uses the
renewal realization rather than the one-shot barrier, item 4 is precisely the
additional familywise hypothesis needed by `SG.4F` to pass from pairwise
fresh-angle return control to the global gain ledger `G_J^{fresh,\angle}`. ∎

## Definition. Initial `BR.\lambda2` uniqueness-entry class

Fix one common datum `u_0` and one initial window `[0,\tau]` with `\tau>0`.
Let `\mathcal X_{\lambda_2}^0(u_0,\tau)` denote the class of Leray--Hopf
solutions `u` on `[0,\tau]` such that

1. `u(0)=u_0`;
2. `u` is smooth on every compact subinterval of `(0,\tau]`;
3. `\lambda_2^+(u)\in L_t^2\dot B^{-1}_{\infty,\infty}((0,\tau])`.

This is the exact initial-window continuation class produced by the public HWY
positive-time smoothness claim together with the imported bridge `BR.\lambda2`.

## Proposition. Exact zero-time uniqueness entry needed beyond Barker

Let `u^{(1)}` and `u^{(2)}` be Leray--Hopf solutions on `[0,T]` with the same
datum `u_0`, and assume both are smooth on every compact subinterval of
`(0,T]`. Suppose there exists `\tau\in(0,T]` such that

```math
u^{(1)}|_{[0,\tau]},\,u^{(2)}|_{[0,\tau]}
\in
\mathcal X_{\lambda_2}^0(u_0,\tau),
\tag{HWY.6a}
```

and the datum `u_0` has the uniqueness-entry property

```math
\text{there is at most one Leray--Hopf solution on }[0,\tau]
\text{ with datum }u_0
\text{ lying in }\mathcal X_{\lambda_2}^0(u_0,\tau).
\tag{HWY.6b}
```

Then

```math
u^{(1)}=u^{(2)}
\qquad\text{a.e. on }[0,T].
\tag{HWY.6c}
```

Consequently, beyond the Barker critical classes, the exact remaining
zero-time theorem is not uniqueness for all Leray--Hopf solutions from `u_0`;
it is uniqueness from `u_0` inside the initial `BR.\lambda2` entry class
`\mathcal X_{\lambda_2}^0(u_0,\tau)`.

**Proof.**
By `(HWY.6a)`-`(HWY.6b)`, the two branches agree almost everywhere on
`[0,\tau]`. In particular they have the same Leray--Hopf trace at the positive
time `\tau`. By the positive-time smoothness hypothesis, both restrictions
`u^{(1)}|_{[\tau,T]}` and `u^{(2)}|_{[\tau,T]}` are strong solutions of the
same Navier--Stokes Cauchy problem with the same data at time `\tau`, so
classical strong-solution uniqueness gives equality on `[\tau,T]`. ∎

## Corollary. Embedding into a short-time uniqueness class closes Route B

Let `\mathfrak U` be a class of Leray--Hopf solutions with the property that,
for the common datum `u_0`, there exists `\delta\in(0,\tau]` such that any two
solutions in `\mathfrak U` with datum `u_0` agree almost everywhere on
`[0,\delta]`. Assume moreover that

```math
\mathcal X_{\lambda_2}^0(u_0,\tau)\subset \mathfrak U.
\tag{HWY.6d}
```

Then every two Leray--Hopf solutions with datum `u_0` that belong to
`\mathcal X_{\lambda_2}^0(u_0,\tau)` coincide on `[0,T]`. In particular, this
closes Route B directly.

**Proof.**
Condition `(HWY.6d)` supplies the uniqueness-entry property `(HWY.6b)` for the
class `\mathcal X_{\lambda_2}^0(u_0,\tau)`: two such solutions agree on
`[0,\delta]`, hence in particular on `[0,\tau]` after replacing `\tau` by
`\delta` in Proposition `Exact zero-time uniqueness entry needed beyond Barker`.
The proposition then yields equality on all of `[0,T]`.

This route does **not** need to reconstruct `(HWY.1)`-`(HWY.3)` from initial
coincidence. Those hypotheses belong to Route A, whose job is to produce the
fresh-angle feed. Route B instead bypasses the feed packet entirely by proving
same-datum uniqueness on the initial strip. ∎

### Remark Route B still needs initial `BR.\lambda2` entry

The embedding theorem `(HWY.6d)` is not, by itself, enough to attack the public
HWY branching claim. To use the previous corollary on the localized HWY
branches, one must still prove that those branches actually lie in the initial
entry class `\mathcal X_{\lambda_2}^0(u_0,\tau)` on some interval `[0,\tau]`.
That is an initial-strip `BR.\lambda2` entry problem:

```math
\text{localized HWY branch on }[0,\tau]
\Longrightarrow
\lambda_2^+\in L_t^2\dot B^{-1}_{\infty,\infty}((0,\tau]).
\tag{HWY.6e}
```

So the honest Route B burden splits into two subslots:

1. initial `BR.\lambda2` entry for each localized branch;
2. uniqueness from the common datum inside `\mathcal X_{\lambda_2}^0(u_0,\tau)`
   or a larger uniqueness class containing it.

Without that profile-to-feed theorem, the contradiction route does not start.
Without the zero-time uniqueness entry theorem, the contradiction route does not
finish.

### Remark Barker targets are datum-side, not automatic solution-side embeddings

The shorthand

```math
\mathcal X_{\lambda_2}^0(u_0,\tau)\subset \mathfrak U
```

must be read carefully when `\mathfrak U` is chosen from Barker's critical
classes. The entry class `\mathcal X_{\lambda_2}^0(u_0,\tau)` is defined by
properties of the solution on `(0,\tau]`, namely positive-time smoothness and
the `BR.\lambda2` endpoint bound. By contrast, Barker's theorem is triggered by
regularity of the common datum `u_0` itself, for example
`u_0\in L^2\cap \overline{C_c^\infty}^{\,\dot B^{-1+3/p}_{p,\infty}}` or a
related `VMO^{-1}` class.

So a Route B discharge through Barker needs more than an abstract inclusion of
solution classes. One must prove either:

1. a datum-upgrade theorem showing that every localized branch in
   `\mathcal X_{\lambda_2}^0(u_0,\tau)` has common datum `u_0` in one of
   Barker's critical classes; or
2. an equivalent reformulation of the Barker uniqueness class as a
   solution-defined class stable under the same datum.

Without such a datum-side bridge, the slogan "embed
`\mathcal X_{\lambda_2}^0(u_0,\tau)` into Barker" is only heuristic shorthand,
not a closed theorem statement.

### Remark Route B closes the contradiction branch, not `PD.70q` by itself

Suppose one proves both subslots above:

1. initial `BR.\lambda2` entry for each localized HWY branch, and
2. zero-time uniqueness from the common datum inside
   `\mathcal X_{\lambda_2}^0(u_0,\tau)` or a containing uniqueness class.

Then the localized HWY branches coincide on an initial strip, so the external
same-datum branching scenario is eliminated. This is enough to close the
contradiction route based on the public HWY branching claim.

It does **not** by itself yield the primary torus-first theorem
`(PD.70q)`. Equality of two branch solutions on the initial strip only implies
equality of any stripwise ledger functional built from that strip. It does not
automatically produce the observability estimates `(PD.70z12)`,
`(PD.70z13)`, or the selector-ledger vanishing `(PD.70z14)` on the primary
route. So any theorem of the form

```math
\text{initial `BR.\lambda2` entry}
\;+\;
\text{zero-time uniqueness in }\mathcal X_{\lambda_2}^0(u_0,\tau)
\Longrightarrow
(PD.70q)
```

requires one further export theorem from initial-strip branch closure to the
installed Hodge packets. No such export theorem is currently installed on disk.

## Proposition. Serrin-type embedding suffices for the zero-time entry theorem

Fix `u_0` and `\tau>0`. Assume there exists one Serrin-admissible pair
`(s,q)` with

```math
3<q\le \infty,
\qquad
2<s\le \infty,
\qquad
\frac{2}{s}+\frac{3}{q}\le 1,
\tag{HWY.6f}
```

such that every solution in the initial entry class satisfies the additional
bound

```math
u\in \mathcal X_{\lambda_2}^0(u_0,\tau)
\Longrightarrow
u\in L_t^sL_x^q((0,\tau)\times\mathbb R^3).
\tag{HWY.6g}
```

Then the zero-time uniqueness-entry property `(HWY.6b)` holds. More precisely,
if `u,v\in \mathcal X_{\lambda_2}^0(u_0,\tau)` and `u(0)=v(0)=u_0`, then

```math
u=v
\qquad\text{a.e. on }[0,\tau].
\tag{HWY.6h}
```

**Proof.**
By `(HWY.6g)`, the solution `u` lies in a Serrin class on `(0,\tau)`. Since
`u` is also Leray--Hopf with datum `u_0`, the classical weak-strong uniqueness
principle in Serrin classes applies: any other Leray--Hopf solution with the
same datum must agree with `u` on `[0,\tau]`. Applying this to `v` gives
`(HWY.6h)`, hence the uniqueness-entry property `(HWY.6b)`. ∎

### Remark what remains open in the Serrin route

Proposition `(HWY.6f)`-`(HWY.6h)` is only a sufficient criterion. It does not
show that the installed entry class `\mathcal X_{\lambda_2}^0(u_0,\tau)` already
embeds into any Serrin class. So the actual open theorem slot on this route is
the solution-side embedding

```math
\mathcal X_{\lambda_2}^0(u_0,\tau)
\Longrightarrow
L_t^sL_x^q((0,\tau)\times\mathbb R^3)
\quad
\text{for some Serrin-admissible }(s,q),
\tag{HWY.6i}
```

or any equivalent weak-strong uniqueness class.

### Remark auxiliary Kato/Serrin local theory is not the installed bridge

One can certainly introduce a stronger auxiliary local theory, for example a
Kato-type space with norm

```math
\|u\|_{\mathcal K_{p,\beta}(0,\delta)}
:=
\sup_{0<t<\delta} t^\beta \|u(t)\|_{L^p}
+
\|u\|_{L_t^2H_x^1(0,\delta)},
\qquad p>3,
```

and try to solve Navier--Stokes by a contraction mapping there. But that is not
the same theorem as the installed bridge `BR.\lambda2`, whose exact content is
the middle-eigenvalue estimate

```math
\int_0^\delta
\|\lambda_2^+(\cdot,t)\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le C\,B_J([0,\delta]).
```

So even a correct local fixed-point theorem in `\mathcal K_{p,\beta}` would only
produce a strong solution in that stronger auxiliary class. It would still not
prove either:

1. branch-local realization of the HWY construction inside the exact entry class
   `\mathcal X_{\lambda_2}^0(u_0,\tau)`; or
2. the installed bridge estimate `BR.\lambda2` from the coarse loss ledger.

There is also one bookkeeping point that must stay separate. The weight
exponent `\beta` in a Kato norm is not the Serrin time integrability exponent.
For `u_0\in L^2`, the heat estimate forces

```math
\beta=\frac32\Big(\frac12-\frac1p\Big),
```

whereas the weak-strong uniqueness / Gronwall argument uses the different
Serrin exponent

```math
s=\frac{2p}{p-3},
\qquad
\frac2s+\frac3p=1.
```

Any proof that identifies one symbol with both roles has silently changed the
route and is not a proof of the exact entry theorem on disk.

## Corollary. Barker critical-space entry discharges the zero-time hypothesis

Assume the common datum `u_0` belongs to one of the initial-data classes
covered by Barker's uniqueness theorem for weak Leray--Hopf solutions in
critical spaces. For instance, it is enough that `u_0` lie in a class of the
form

```math
L^2\cap \overline{C_c^\infty}^{\,\dot B^{-1+3/p}_{p,\infty}}
\qquad (3<p<\infty),
```

or in one of the related `VMO^{-1}`-type critical classes cited there.

Then the zero-time uniqueness-entry hypothesis in the conditional contradiction
theorem is satisfied for any window `I` on which the continuation class
`X(I)` is the Barker class.

**Proof.**
Barker's theorem gives uniqueness among weak Leray--Hopf solutions for initial
values in the stated critical classes. That is exactly the zero-time entry
property required by the conditional contradiction theorem. ∎

## Corollary. Barker entry plus positive-time smoothness forbids branching

Let `u^{(1)}` and `u^{(2)}` be Leray--Hopf solutions with one common datum
`u_0`. Assume:

1. `u_0` belongs to one of the Barker critical classes above;
2. both branches are smooth on every compact subinterval of `(0,T]`.

Then

```math
u^{(1)}=u^{(2)}
\qquad\text{a.e. on }[0,T].
```

**Proof.**
Barker gives short-time uniqueness from the common datum `u_0`, so there exists
`t_* \in (0,T]` such that

```math
u^{(1)}(t)=u^{(2)}(t)
\qquad\text{for a.e. }t\in[0,t_*].
```

In particular, the two branches have the same value at the positive time `t_*`
in the standard Leray--Hopf trace sense. By hypothesis 2, both restrictions
`u^{(1)}|_{[t_*,T]}` and `u^{(2)}|_{[t_*,T]}` are smooth solutions of the same
Navier--Stokes Cauchy problem with the same data at time `t_*`. Classical
strong-solution uniqueness therefore gives

```math
u^{(1)}(t)=u^{(2)}(t)
\qquad\text{for all }t\in[t_*,T].
```

Combining the two intervals yields equality on `[0,T]`. ∎

So if the localized HWY datum lands in a Barker critical class, the public
positive-time smoothness claim already excludes same-datum branching. In that
regime the external contradiction route is closed without any new `SG.4`
production theorem.

## Theorem. Conditional Route A export closes `(PD.70q)`

Assume the active strip family already carries the downstream loop-from-harmonic
infrastructure `(PD.70z3)`. Assume in addition that the unstable HWY profile on
the initial strip supplies the three feed packets needed to certify

```math
(PD.70z12),\qquad (PD.70z13),\qquad (PD.70z14)
```

on that same strip family. If the renewal version of the route is used, also
assume the initial strip propagates to the active family through `SG.4Fb`.

Then the Hodge-core implication chain closes:

```math
(PD.70z3)+(PD.70z12)+(PD.70z13)+(PD.70z14)
\Longrightarrow
(PD.70q)
\qquad
\text{for all sufficiently large }J.
```

**Proof.**
Once the Route A feeds have been converted into `(PD.70z12)`-`(PD.70z14)` on the
active strip family, Corollary `TPS-Hodge-core-plus-normalization-yields-PD70q`
applies directly. The renewal packet `SG.4Fb` is only the propagation device
from the first strip to the active family; it is not an extra algebraic input
to the implication `(PD.70z3)+(PD.70z12)+(PD.70z13)+(PD.70z14)\Longrightarrow
(PD.70q)`. ∎

### Remark what remains open on Route A

The theorem above is purely conditional. To make Route A an actual proof, one
still has to prove the three HWY export lemmas producing `(PD.70z12)`,
`(PD.70z13)`, and `(PD.70z14)` from the initial-strip profile, plus `SG.4Fb`
when renewal is used. No complete profile-to-Hodge export theorem of that form
is currently installed on disk.

## Theorem. Route B plus a Hodge export theorem closes `(PD.70q)`

Assume:

1. each localized HWY branch admits initial `BR.\lambda2` entry inside
   `\mathcal X_{\lambda_2}^0(u_0,\tau)`;
2. zero-time uniqueness holds in `\mathcal X_{\lambda_2}^0(u_0,\tau)` or in a
   containing uniqueness class with the same datum;
3. every installed strip ledger is functorial in the strip trace;
4. there is an additional Route B export theorem saying that once all
   same-datum localized branches agree on the initial strip, the active strip
   family satisfies `(PD.70z12)`, `(PD.70z13)`, and `(PD.70z14)`, with
   `(PD.70z3)` treated as installed downstream infrastructure.

Then

```math
(PD.70q)
\qquad
\text{holds for all sufficiently large }J.
```

**Proof.**
Assumptions 1 and 2 force any two same-datum localized branches to coincide on
the initial strip. By Assumption 3, every installed strip ledger agrees across
those branches on that strip. Assumption 4 then upgrades this branch collapse to
the Hodge core `(PD.70z12)`-`(PD.70z14)` on the active strip family. Applying
Corollary `TPS-Hodge-core-plus-normalization-yields-PD70q` yields `(PD.70q)` for
all sufficiently large `J`. ∎

### Remark why bare Route B does not yet imply `(PD.70q)`

The extra export theorem in Assumption 4 is the precise gap in the informal
schema

```math
\text{branch entry}
\;+\;
\text{zero-time uniqueness}
\Longrightarrow
(PD.70q).
```

Without that export step, Route B only removes the same-datum branching
ambiguity on the initial strip and closes the contradiction route. It does not
by itself produce the observability estimates `(PD.70z12)`, `(PD.70z13)`, or
the selector-ledger vanishing `(PD.70z14)` required by the primary torus-first
closure chain.

### Remark a sharper minimal agenda than the four-gap checklist

The useful separation is not "four unrelated gaps". The real theorem agenda is
two-layered.

1. **Contradiction layer.** To turn the localized HWY same-datum branching
   claim into a contradiction, the exact mathematical burdens are only:
   - initial-strip `BR.\lambda2` entry for each localized branch;
   - zero-time uniqueness from the common datum inside the exact entry class
     `\mathcal X_{\lambda_2}^0(u_0,\tau)` or a containing uniqueness class.
2. **Primary torus-first layer.** To prove `(PD.70q)`, one still needs a
   quantitative theorem producing the Hodge core `(PD.70z12)`-`(PD.70z14)` or
   the exact-potential projective packet `PSJ+`. Contradiction-style branch
   closure does not supply that theorem for free.

So the earlier four-gap checklist both overcounts and undercounts:

- it **overcounts** the contradiction route by splitting branch equality and its
  propagation into separate pseudo-gaps once the only real contradiction burden
  is entry plus zero-time uniqueness;
- it **undercounts** the primary theorem route because the alleged
  "Route-B-to-Hodge export" is itself a new quantitative observability /
  coercivity theorem, not a routine functoriality or renewal step.

In particular, any proposed closure path from Route B to `(PD.70q)` must still
prove one genuinely quantitative packet theorem of one of the following forms:

```math
\text{initial-strip branch data}
\Longrightarrow
(PD.70z12),(PD.70z13),(PD.70z14),
```

or

```math
\text{signless pair packet }W_J
\Longrightarrow
\text{selector-adapted defect-to-strain closure},
```

the latter being exactly the live `PSJ+` / `PD.70q` frontier on disk.

There is also one literature-side caution. Results modeled on critical-space
uniqueness must be targeted very carefully: Barker gives datum-side short-time
uniqueness in specific critical classes, but recent work of Fujii shows sharp
non-uniqueness for mild solutions in many scaling-critical Besov spaces larger
than the classical unique class. So a generic "critical Banach space fixed-point
+ uniqueness" shortcut is not theorem-safe for this route without a precise
choice of space and an exact uniqueness theorem attached to it.

### Remark the full "close everything" graph needs one more contradiction antecedent

Even the sharpened two-layer agenda has one more exact antecedent on the
contradiction side. The same-datum contradiction theorem does not start from
`BR.\lambda2` entry alone. It also needs the initial-strip feed that reaches the
live `SG.4` packet, namely a profile-to-feed theorem from the localized HWY
branch to positive fresh angular `\lambda_{2,J}^+` mass on the strip.

So the complete contradiction graph is not merely

```math
\text{`BR.\lambda2` entry}
\;+\;
\text{zero-time uniqueness}
\Longrightarrow
\text{contradiction}.
```

The exact graph is

```math
\text{profile-to-feed}
\Longrightarrow
SG.4
```

together with

```math
\text{initial-strip `BR.\lambda2` entry}
\;+\;
\text{zero-time uniqueness in }\mathcal X_{\lambda_2}^0(u_0,\tau)
\Longrightarrow
\text{same-datum branch collapse},
```

after which the installed conditional continuation / contradiction theorem
applies.

This means the best global closure agenda is not three isolated theorems but
rather:

1. one **profile-to-feed theorem** reaching `SG.4`;
2. one **exact entry theorem** reaching the `BR.\lambda2` class;
3. one **zero-time uniqueness theorem** in that exact class;
4. one **primary quantitative theorem** producing either the Hodge core
   `(PD.70z12)`-`(PD.70z14)` or the exact-potential packet `PSJ+`.

The genuine optimization is that items 2 and 4 should probably be attacked as
two corollaries of one broader selector-adapted observability / defect-to-strain
master theorem, with the contradiction branch using a weaker middle-eigenvalue
output and the primary branch using the stronger Hodge-core or projective
output.

### Remark exact closure program for the primary torus-first route

Once the route is separated honestly, the primary theorem wall is not "prove
`PD.70q`" in one jump. It is enough to close one of two theorem packages.

#### Option A. General Hodge package

Prove a selector-adapted projected observability theorem for the linearized /
transported defect variables on the active strip family that yields:

```math
(PD.70z12)\qquad\text{directional observability},
```

```math
(PD.70z13)\qquad\text{harmonic observability},
```

and then prove the selector-ledger splitting with vanishing remainder

```math
(PD.70z14)\qquad\text{selector-ledger vanishing}.
```

Since `(PD.70z3)` is already treated as installed downstream loop-from-harmonic
infrastructure, these three estimates are sufficient by the on-disk implication

```math
(PD.70z3)+(PD.70z12)+(PD.70z13)+(PD.70z14)
\Longrightarrow
(PD.70q)
```

for all sufficiently large `J`.

#### Option B. Exact-potential projective package `PSJ+`

The theorem note now reduces `PSJ+` to two top-level slots and then reduces each
of those further to primitive inputs.

1. **Pair-to-cocycle synchronization.** Proposition `D.7ma` isolates the slot
   `(D.7ma4)` taking the signless pair packet `W_J` to a transported projector
   field.
2. **Selector-strain compatibility.** Proposition `D.7ma` also isolates the
   slot `(D.7ma5)` comparing the top Cauchy-Green projector to the
   instantaneous top strain projector.

Those are not black boxes anymore:

- Proposition `D.7mb` reduces `(D.7ma5)` to three explicit strip budgets:
  the initial projective residual `|m_J(t_0)|`, the off-axis forcing integral
  `\int |Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J|`, and the strain-variation / gap
  budget `\int |\mathcal C_J^N||\partial_t S_J^N|/g_J^{str}`;
- Proposition `D.7mn` reduces `(D.7ma4)` to two primitive theorem inputs:
  a cocycle linearization theorem and a selector-shape / selector-isotropy
  theorem.

So the exact-potential package closes once one proves:

```math
\text{(i) cocycle linearization error }\to 0,
\qquad
\text{(ii) selector-shape error }\to 0,
```

and

```math
\text{(iii) the three `D.7mb` strip budgets are controlled by the observation /
error packet.}
```

Then `PSJ+` yields the directional deficit estimate and hence `(PD.70q)`.

Therefore the shortest honest primary-route agenda is:

1. either prove the Hodge observability package `(PD.70z12)`-`(PD.70z14)`;
2. or prove the projective package `PSJ+` through `(D.7ma4)` and `(D.7ma5)`,
   using the already extracted primitive reductions `(D.7mb)` and `(D.7mn)`.

The second option is currently the preferred live route because it attacks the
one-sided directional deficit directly instead of first passing through the full
Hodge decomposition.

## Source anchors

- Hou--Wang--Yang, *Nonuniqueness of Leray-Hopf solutions to the unforced
  incompressible 3D Navier-Stokes Equation*:
  [arXiv](https://arxiv.org/abs/2509.25116)
- Middle-eigenvalue continuation criterion:
  [ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0893965924003744)
- Barker, *Uniqueness Results for Weak Leray--Hopf Solutions of the
  Navier--Stokes System with Initial Values in Critical Spaces*:
  [Springer](https://link.springer.com/article/10.1007/s00021-017-0315-8)
