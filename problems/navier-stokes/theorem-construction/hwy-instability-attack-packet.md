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

### Discharge tree for all three live branches

The exact branch-discharge graph can now be written in one place.

#### Branch C. Contradiction route

To discharge the contradiction route all the way to exclusion of same-datum HWY
branching, it is enough to prove the following four implications:

```math
\text{localized HWY profile}
\Longrightarrow
\text{positive fresh angular }\lambda_{2,J}^+\text{ feed}
\Longrightarrow
SG.4,
```

```math
\text{selector-adapted weak defect-to-strain output}
\Longrightarrow
BR.\lambda2,
```

```math
\text{zero-time uniqueness in }\mathcal X_{\lambda_2}^0(u_0,\tau),
```

and then the installed same-datum contradiction theorem applies.

So the contradiction branch is discharged once one has:

1. one profile-to-feed theorem reaching `SG.4`;
2. one weak selector-adapted middle-eigenvalue output sufficient for
   `BR.\lambda2`;
3. one exact zero-time uniqueness theorem in the initial entry class.

#### Branch H. General Hodge primary route

To discharge the general Hodge branch to `(PD.70q)`, it is enough to prove the
three-slot Hodge core:

```math
(PD.70z12),\qquad (PD.70z13),\qquad (PD.70z14).
```

Because `(PD.70z3)` is already treated as installed downstream infrastructure,
the on-disk implication

```math
(PD.70z3)+(PD.70z12)+(PD.70z13)+(PD.70z14)
\Longrightarrow
(PD.70q)
```

then closes the branch for all sufficiently large `J`.

Thus the general Hodge branch is discharged once one proves one strong
selector-adapted observability / coercivity theorem whose outputs are:

1. directional observability;
2. harmonic observability;
3. selector-ledger vanishing.

#### Branch P. Exact-potential projective route `PSJ+`

To discharge the exact-potential branch, it is enough to prove the two top-level
slots from Proposition `D.7ma`:

```math
(D.7ma4)\qquad\text{pair-to-cocycle synchronization},
```

```math
(D.7ma5)\qquad\text{selector-strain compatibility}.
```

Those are already reduced further on disk:

1. `D.7mn` reduces `(D.7ma4)` to:
   - cocycle linearization error `\to 0`;
   - selector-shape / selector-isotropy error `\to 0`.
2. `D.7mb` reduces `(D.7ma5)` to control of:
   - the initial projective residual `|m_J(t_0)|`;
   - the off-axis forcing integral
     `\int |Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J|`;
   - the strain-variation / gap budget
     `\int |\mathcal C_J^N|\,|\partial_t S_J^N|/g_J^{str}`.

Once those five primitive inputs are proved, `PSJ+` closes, hence the
directional deficit estimate closes, hence `(PD.70q)` follows on the
exact-potential branch.

#### Shared master-theorem view

The branches are not fully independent. The exact structure now suggests one
shared selector-adapted observability / defect-to-strain master theorem with at
least three output levels:

1. **weak output:** middle-eigenvalue control sufficient for `BR.\lambda2`;
2. **strong Hodge output:** the three-slot Hodge core
   `(PD.70z12)`-`(PD.70z14)`;
3. **strong exact-potential output:** the projective synchronization /
   selector-strain packet `PSJ+`.

Under that viewpoint, the exact remaining mathematics in the lane is:

```math
\boxed{
\text{profile-to-feed}
}
\;+\;
\boxed{
\text{selector-adapted observability / defect-to-strain master theorem}
}
\;+\;
\boxed{
\text{zero-time uniqueness in }\mathcal X_{\lambda_2}^0
}
```

with the master theorem read at weak level for the contradiction branch, at
Hodge level for the general primary branch, and at projective level for the
exact-potential primary branch.

### Conditional compression schema: one observable selector tensor

The current branch split may still be reducible further, but only in a
conditional theorem-safe way. The right compression is not an installed theorem
yet; it is a schema that keeps the live debts visible while routing them through
one tensor object.

#### Core object

Work on the fixed selector-transverse bundle `N_a` on an atom-free
selector-good window as in Proposition `D.7mb`. Define the pair-side positive
tensor directly and the uncentered Cauchy-Green tensor by

```math
K_J^{pair}(t,a)\in \operatorname{Sym}^+(N_a),
\qquad
\mathcal C_J^N(t,a):=(W_J^N(t,a))^*W_J^N(t,a)\in \operatorname{Sym}^+(N_a).
\tag{G'.0a}
```

Choose `0\le \alpha_J(t,a)\le 1`, set

```math
A_J(t,a)
:=
\alpha_J(t,a)\,K_J^{pair}(t,a)
+
\bigl(1-\alpha_J(t,a)\bigr)\,\mathcal C_J^N(t,a),
\tag{G'.0b}
```

and assume

```math
\operatorname{tr}_{N_a}A_J(t,a)\ge c_0>0.
\tag{G'.1}
```

Then define

```math
\mathfrak G_J(t,a):=
\frac{A_J(t,a)}{\operatorname{tr}_{N_a}A_J(t,a)}.
\tag{G'.2}
```

Hence

```math
\mathfrak G_J(t,a)\in \operatorname{Sym}^+(N_a),
\qquad
\operatorname{tr}_{N_a}\mathfrak G_J(t,a)=1.
\tag{G'.3}
```

Let `P_J^{\mathfrak G}(t,a)`, `P_J^{pair}(t,a)`, and `P_J^{CG}(t,a)` denote the
top spectral projectors of `\mathfrak G_J`, `K_J^{pair}`, and
`\mathcal C_J^N`, respectively. On the fresh-angle side, `P_J^{pair}` is read
through the same selector-bundle chart along the fresh trajectory
`\gamma_{ab}(\theta,t)`.

#### Primitive hypotheses

```math
|P_J^{\mathfrak G}(t,a)-P_J^{pair}(t,a)|_F^2
\le
\eta_{J,\mathrm{mix}}^{pair}(t,a).
\tag{H1}
```

```math
|P_J^{\mathfrak G}(t,a)-P_J^{CG}(t,a)|_F^2
\le
\eta_{J,\mathrm{mix}}^{CG}(t,a).
\tag{H2}
```

Define the exact `D.7mb10`-style selector-strain residual by

```math
\mathcal R_{J,CG}^{str}(t,a,b):=
\frac{1}{\operatorname{gap}_J^{CG}(t,a)^2}
\left(
|m_J(t_0,a,b)|
+
2\int_{t_0}^t
\bigl|
Q_J^{top}(s)(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)n_J(a,b,s)
\bigr|\,ds
+
3\int_{t_0}^t
\frac{|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|}{g_J^{str}(s,a)}\,ds
\right)^2.
\tag{H3a}
```

Assume the atom-free selector-good window hypotheses of `D.7mb`, so
`D.7mb9`-`D.7mb10` give

```math
|P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)|_F^2
\le
2\,\mathcal R_{J,CG}^{str}(t,a,b).
\tag{H3b}
```

Assume the pair-side fresh-angle packet: for a.e. `t`, each fresh pair `(a,b)`,
and a.e. `\theta\in I_{ab}^{ang}(t)`,

```math
|I_{ab}^{ang}(t)|\ge \mu_J^{ang}(t)\chi_{ab}^{fresh}(t),
\tag{H4a}
```

```math
\lambda_{2,J}^+(\gamma_{ab}(\theta,t),t)\ge \underline\lambda_J(t),
\tag{H4b}
```

```math
\big\langle
e_{ab}(\theta,t),
P_J^{pair}(\gamma_{ab}(\theta,t),t)\,
e_{ab}(\theta,t)
\big\rangle
\ge
1-\varepsilon_{ab}^{fresh}(\theta,t).
\tag{H4c}
```

Assume the scalar middle-eigenvalue packet

```math
\lambda_2^+
\le
C_\lambda\,|\langle S_J^N,\mathfrak G_J\rangle|
+r_{J,\lambda_2},
\tag{H5a}
```

and

```math
\int_I
|\langle S_J^N(\cdot,t),\mathfrak G_J(\cdot,t)\rangle|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{H5b}
```

Assume finally the exact Hodge readout packet:

```math
\mathfrak R_J^{dir}(\mathfrak G_J)\Longrightarrow (PD.70z12),
\tag{H6a}
```

```math
\mathfrak R_J^{harm}(\mathfrak G_J)\Longrightarrow (PD.70z13),
\tag{H6b}
```

```math
\mathfrak R_J^{sel}(\mathfrak G_J)\Longrightarrow (PD.70z14).
\tag{H6c}
```

#### Proposition G'.4

Assume `(G'.1)`-`(G'.3)` and `(H1)`-`(H6)`. Then the hybrid projector obeys

```math
|P_J^{\mathfrak G}(t,a)-P_{J,\top}^{seg}(a,b,t)|_F^2
\le
2\,\eta_{J,\mathrm{mix}}^{CG}(t,a)
+
4\,\mathcal R_{J,CG}^{str}(t,a,b).
\tag{G'.4a}
```

Moreover, on each fresh sub-arc,

```math
\big\langle
e_{ab}(\theta,t),
P_J^{\mathfrak G}(\gamma_{ab}(\theta,t),t)\,
e_{ab}(\theta,t)
\big\rangle
\ge
1-\varepsilon_{ab}^{fresh}(\theta,t)
-C\,\big(\eta_{J,\mathrm{mix}}^{pair}(t,\gamma_{ab}(\theta,t))\big)^{1/2},
\tag{G'.4b}
```

hence

```math
\overline{\mathcal A}_{ab}^{fresh}(t)
\ge
\chi_{ab}^{fresh}(t)\,\mu_J^{ang}(t)\,\underline\lambda_J(t)
-C\,\underline\lambda_J(t)
\Big(
\varepsilon_{ab}^{fresh,\sharp}(t)
+
(\eta_{J,\mathrm{mix}}^{pair})^{1/2,\sharp}(t)
\Big).
\tag{G'.4c}
```

Therefore

```math
g_J^{fresh,\angle}(t)
\ge
c_\angle\,\mu_J^{ang}(t)\,\underline\lambda_J(t)
-C\,\underline\lambda_J(t)
\Big(
\varepsilon_J^{fresh,\sharp}(t)
+
(\eta_{J,\mathrm{mix}}^{pair})^{1/2,\sharp}(t)
\Big).
\tag{G'.4d}
```

Also,

```math
\int_I
|\lambda_2^+(\cdot,t)|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr)
+
C\int_I
|r_{J,\lambda_2}(\cdot,t)|_{\dot B^{-1}_{\infty,\infty}}^2\,dt.
\tag{G'.4e}
```

Finally, the exact Hodge outputs

```math
(PD.70z12),\qquad (PD.70z13),\qquad (PD.70z14)
\tag{G'.4f}
```

hold whenever the readouts in `(H6)` are proved from `\mathfrak G_J`.

**Proof.**
For `(G'.4a)`, use
`|P_J^{\mathfrak G}-P_{J,\top}^{seg}|_F^2
\le 2|P_J^{\mathfrak G}-P_J^{CG}|_F^2+2|P_J^{CG}-P_{J,\top}^{seg}|_F^2`,
then apply `(H2)` and `(H3b)`. For `(G'.4b)` transfer the fresh projector lower
bound from `P_J^{pair}` to `P_J^{\mathfrak G}` via `(H1)`. Integrating `(H4b)`
over the fresh sub-arc yields `(G'.4c)`, and infimizing over the refined family
gives `(G'.4d)`. For `(G'.4e)`, apply `(H5a)`, square, integrate in time, and
use `(H5b)`. Statement `(G'.4f)` is exactly the readout content of `(H6)`. ∎

#### Conditional corollaries

If the lower bound in `(G'.4d)` clears the installed strip threshold, then the
fresh-angle supplier holds and `SG.4` fires.

If the remainder term in `(G'.4e)` is absorbed into the existing error ledger,
then `BR.\lambda2` holds.

If

```math
\eta_{J,\mathrm{mix}}^{CG}
+
\mathcal R_{J,CG}^{str}
\to 0
```

on the selector-good family, then
`P_J^{\mathfrak G}-P_{J,\top}^{seg}\to 0`, hence the exact-potential projective
packet `PSJ+` closes.

If the readouts `(H6a)`-`(H6c)` are proved, then together with the installed
loop-from-harmonic step and route normalization one gets `(PD.70q)` for all
sufficiently large `J`.

#### Exact interpretation

This is a **conditional compression schema**. It compresses the projective
carrier, the scalar carrier, and the Hodge carrier into one tensor object
`\mathfrak G_J`, while keeping three independent theorem debts visible:

```math
\text{fresh-angle packet on the pair side},
\qquad
\text{scalar Besov pairing for }\langle S_J^N,\mathfrak G_J\rangle,
\qquad
\text{exact Hodge readouts from }\mathfrak G_J.
```

That is the theorem-safe formal version of the cleaner route.

#### Next shared wall: scalar pairing reduction

The remaining scalar debt `(H5b)` can itself be reduced further on an atom-free
selector-good window. Define the pair-to-cocycle mismatch and the cocycle
normality defect by

```math
\Delta_{J}^{pair}(t,a)
:=
\bigl\|
K_J^{pair}(t,a)-\mathcal C_J^N(t,a)
\bigr\|_{\mathrm{op}},
\tag{G'.10a}
```

```math
N_{J}^{nor}(t,a)
:=
\bigl\|
(W_J^N(t,a))^*W_J^N(t,a)-W_J^N(t,a)(W_J^N(t,a))^*
\bigr\|_{\mathrm{op}}.
\tag{G'.10b}
```

Then, because

```math
\mathfrak G_J
=
\frac{
\alpha_J K_J^{pair}
+
(1-\alpha_J)\mathcal C_J^N
}{
\operatorname{tr}_{N_a}A_J
},
```

one has

```math
\bigl|
\langle S_J^N,\mathfrak G_J\rangle
\bigr|
\le
\frac{1}{c_0}
\left(
\bigl|
\langle S_J^N,\mathcal C_J^N\rangle
\bigr|
+
|S_J^N|_{\mathrm{op}}\,\Delta_J^{pair}
\right).
\tag{G'.10c}
```

Moreover, Proposition `D.7mb` gives
`\partial_t\mathcal C_J^N=2(W_J^N)^*S_J^N W_J^N`, hence

```math
\frac12\,\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N
=
\operatorname{tr}_{N_a}\!\bigl(S_J^N W_J^N(W_J^N)^*\bigr).
\tag{G'.10d}
```

Since
`\langle S_J^N,\mathcal C_J^N\rangle
=\operatorname{tr}_{N_a}(S_J^N (W_J^N)^*W_J^N)`, subtracting `(G'.10d)` gives
the exact identity

```math
\langle S_J^N,\mathcal C_J^N\rangle
=
\frac12\,\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N
+
\operatorname{tr}_{N_a}
\Bigl(
S_J^N\bigl((W_J^N)^*W_J^N-W_J^N(W_J^N)^*\bigr)
\Bigr),
\tag{G'.10e}
```

and therefore

```math
\bigl|
\langle S_J^N,\mathcal C_J^N\rangle
\bigr|
\le
\frac12\,
\bigl|
\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N
\bigr|
+
|S_J^N|_{\mathrm{op}}\,N_J^{nor}.
\tag{G'.10f}
```

Combining `(G'.10c)` and `(G'.10f)` yields the scalar reduction

```math
\bigl|
\langle S_J^N,\mathfrak G_J\rangle
\bigr|
\le
\frac{1}{2c_0}
\bigl|
\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N
\bigr|
+
\frac{1}{c_0}
|S_J^N|_{\mathrm{op}}
\bigl(
N_J^{nor}+\Delta_J^{pair}
\bigr).
\tag{G'.10g}
```

Consequently, `(H5b)` follows once one proves the two scalar Besov channels

```math
\int_I
\bigl|
\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N(\cdot,t)
\bigr|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{G'.10h}
```

and

```math
\int_I
\bigl|
|S_J^N(\cdot,t)|_{\mathrm{op}}
\bigl(
N_J^{nor}(\cdot,t)+\Delta_J^{pair}(\cdot,t)
\bigr)
\bigr|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{G'.10i}
```

If, in addition, the pair tensor is chosen from the normalized pair observable
packet so that the linearization-plus-shape theorem `D.7mn` applies, then
`\Delta_J^{pair}` is reduced further to the two primitive errors
`\operatorname{Err}_{J,\varepsilon}^{lin}` and
`\operatorname{Err}_{J,\varepsilon}^{shape}`.

More precisely, if

```math
\Delta_J^{pair}(t,a)
\le
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)
+
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a),
\tag{G'.10j}
```

as in Proposition `D.7mn`, then `(G'.10i)` is implied by the scalarized bound

```math
\int_I
\bigl|
|S_J^N(\cdot,t)|_{\mathrm{op}}
\bigl(
N_J^{nor}(\cdot,t)
+
\operatorname{Err}_{J,\varepsilon}^{lin}(\cdot,t)
+
\bigl|\mathbf W_J^{coc}(\cdot,t)\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}(\cdot,t)
\bigr)
\bigr|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{G'.10k}
```

So the next exact shared theorem wall is no longer the monolithic scalar pairing
estimate `(H5b)`, but the pair of scalar channels `(G'.10h)`-`(G'.10i)`: a
trace-derivative Besov theorem for the Cauchy-Green scalar observable, and a
normality / pair-mismatch scalarization theorem. Under `D.7mn`, the second of
those becomes the explicit normality + linearization + selector-shape scalar
channel `(G'.10k)`.

#### Corrected exact-potential closure route through `D.7mr2`, `D.7mh`, and `F`

The theorem cut

```math
D.7mq
+
\bigl(D.7mp+D.7mo+D.7mm\bigr)
\Longrightarrow
D.7mr2
```

is correct, but `D.7mr2` is still only the **local angular packet**. It does
not by itself yield the stripwise directional ledger. The literal on-disk
route inserts one extra local-to-global layer:

```math
D.7mr2
\Longrightarrow
D.7mh^{boot}
\Longrightarrow
F^{boot}
\Longrightarrow
PD.70z
\Longrightarrow
PD.70
\Longrightarrow
SG.4P/SG.4B.
\tag{EP.1}
```

The current workspace does not expose a literal `RPC.3` label. The installed
downstream closure object on disk is the exact-potential directional theorem
`PD.70z`, equivalently the cycle-exact specialization of the residual pairwise
closure.

### Proposition EP.2 (boot version of the local sign-compatible projective packet)

Fix one selector-good strip `I_0=[t_0,t_1]`. Assume:

1. `PTC-Lin` and `PTC-Shape` give `D.7mq`;
2. `D.7mp + D.7mo + D.7mm` give the exact current-time Cauchy-Green packet
   `D.7mr2`;
3. the forcing-budget hypotheses of Corollary `D.7ie` hold on `I_0`.

Define the boot entrance packet

```math
\mathcal B_{J,\mathrm{proj}}^{ent,\mathrm{boot}}(a,b;t_0)
:=
|W_J(a,b,t_0)|^2
+
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t_0)
+
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t_0)
+
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t_0).
\tag{EP.2a}
```

Then the same proof as Corollary `D.7mh` gives the local stripwise directional
ledger bound

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I_0)
\le
C\,\mathcal B_{J,\mathrm{proj}}^{ent,\mathrm{boot}}(a,b;t_0)
+
2C_{\mathrm{asp}}\mathcal B_{J,\beta}^{force}(a,b;I_0).
\tag{EP.2b}
```

If the adiabatic hypotheses of Corollary `D.7ia` hold as well, then

```math
\mathcal E_{J,\Gamma}^{dir}(a,b;I_0)
\le
C\,\mathcal B_{J,\mathrm{proj}}^{ent,\mathrm{boot}}(a,b;t_0)
+
4C_{\mathrm{asp}}\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I_0).
\tag{EP.2c}
```

**Proof.**
Corollary `D.7mr` states that `(D.7mr2)` is exactly the `D.7mg1` closure packet
with the pair slot rewritten as
`\operatorname{Err}_{J,CG}^{pair,\varepsilon}` and the strain slot rewritten as
`\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}`. Evaluate `(D.7mr2)` at the
strip entrance time `t_0` to obtain
`\alpha_J(a,b,t_0)\le C\mathcal B_{J,\mathrm{proj}}^{ent,\mathrm{boot}}`.
Insert that entrance bound into `(D.7ie2)` or `(D.7ie4)` exactly as in the
proof of Corollary `D.7mh`. This yields `(EP.2b)` and `(EP.2c)`. ∎

So the exact-potential Cauchy-Green branch no longer has any hidden local
algebraic step after `D.7mr2`: the remaining local debt is the entrance packet
plus the forcing ledger.

### Proposition EP.3 (global exact-potential closure with the boot entrance packet)

Assume the cycle-exact / exact-potential branch and keep the window-production /
observability / summability framework of Theorem Candidate `F`. Replace the
windowwise entrance-packet hypothesis `(F.5)` by the boot variant

```math
\int_{\mathcal J_k}
\mathcal B_{J,\mathrm{proj}}^{ent,\mathrm{boot}}(a,b;\tau_k)
\,d\mu_J^{pair}(a,b)
\le
C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)
+
\varepsilon_{J,k}^{obs}.
\tag{EP.3a}
```

Assume also `(F.1)`-`(F.4)` and `(F.6)`-`(F.8)`. Then the proof of Theorem
Candidate `F` yields

```math
\mathcal E_J^{dir}(I)
\le
C\,\mathcal E_J^{obs}(I)
+
C\sum_k\varepsilon_{J,k}^{obs}
+
2C_{\mathrm{asp}}N_{\mathrm{ov}}
\int_{\mathcal J}\int_I
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b).
\tag{EP.3b}
```

Under the adiabatic forcing packet, one has instead

```math
\mathcal E_J^{dir}(I)
\le
C\,\mathcal E_J^{obs}(I)
+
C\sum_k\varepsilon_{J,k}^{obs}
+
4C_{\mathrm{asp}}N_{\mathrm{ov}}
\int_{\mathcal J}\int_I
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}
\,dt\,d\mu_J^{pair}(a,b).
\tag{EP.3c}
```

If, moreover, the error series is asymptotically negligible and the forcing
budget is absorbed by the observation packet, namely

```math
\sum_k\varepsilon_{J,k}^{obs}=o_J(1),
\tag{EP.3d}
```

and

```math
\int_{\mathcal J}\int_I
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
\le
C\,\mathcal E_J^{obs}(I)+o_J(1)
\tag{EP.3e}
```

or the corresponding adiabatic variant, then

```math
\mathcal E_J^{dir}(I)
\le
C\,\mathcal E_J^{obs}(I)+o_J(1).
\tag{EP.3f}
```

Since `\mathcal E_J^{loop}(I)=0` on the exact-potential branch, `(EP.3f)` is
exactly `PD.70z`. Consequently `PD.70` holds, so `PD.70aa` and the
selector-defect bridge to `SG.4B` take over on the installed downstream route.

**Proof.**
For each window `I_k`, integrate `(EP.2b)` over `\mathcal J_k`. This is the
same inequality as `(F.11)`, with `(EP.3a)` substituted for `(F.5)`. Then the
proof of Theorem Candidate `F` is unchanged: use `(F.6)` and `(F.7)` for the
entrance series, and use Fubini together with the bounded-overlap law `(F.1)` to
control the forcing term. This yields `(EP.3b)` and `(EP.3c)`. The absorption
hypotheses `(EP.3d)`-`(EP.3e)` give `(EP.3f)`. Finally, `PD.70y` turns
`(EP.3f)` into `PD.70z`, and `PD.70aa` plus Corollary
`TPS-selector-defect-bridge-to-SG4B` produce the installed `SG.4B` handoff. ∎

### Exact remaining debts on the exact-potential branch

The familywise bounds

```math
\operatorname{Err}_{J,\mathrm{sync}},
\qquad
\operatorname{Err}_{J,CG}^{pair,\varepsilon},
\qquad
\eta_J^{boot}
```

are real debts, but they are not by themselves sufficient for branch closure.
They control only three pieces of the boot entrance packet `(EP.2a)`. The exact
remaining closure agenda is:

1. **Entrance-packet domination.** Prove `(EP.3a)`. This breaks into four
   visible slots:

   ```math
   \int_{\mathcal J_k}
   |W_J(a,b,\tau_k)|^2\,d\mu_J^{pair}(a,b)
   \le
   C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)+\varepsilon_{J,k}^{W},
   \tag{EP.4a}
   ```

   ```math
   \int_{\mathcal J_k}
   \operatorname{Err}_{J,\mathrm{sync}}(a,b,\tau_k)
   \,d\mu_J^{pair}(a,b)
   \le
   C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)+\varepsilon_{J,k}^{sync},
   \tag{EP.4b}
   ```

   ```math
   \int_{\mathcal J_k}
   \operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,\tau_k)
   \,d\mu_J^{pair}(a,b)
   \le
   C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)+\varepsilon_{J,k}^{pair},
   \tag{EP.4c}
   ```

   ```math
   \int_{\mathcal J_k}
   \operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,\tau_k)
   \,d\mu_J^{pair}(a,b)
   \le
   C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)+\varepsilon_{J,k}^{boot}.
   \tag{EP.4d}
   ```

   The user’s proposed familywise estimates `(C8)`, `(C11)`, `(C12)` target the
   last three lines after replacing time-trace values by strip suprema, but they
   still leave the entrance defect-energy slot `(EP.4a)` explicit.

2. **Forcing-budget absorption.** Prove `(EP.3e)` or the adiabatic analogue of
   `(EP.3c)`. Without this, `D.7mr2` only gives local projector control and the
   forcing ledger remains a live stripwise term.

3. **Window production / coefficient class / summability.** Close the three
   repo-local obligations already isolated at the end of Theorem Candidate `F`:
   certify the simple-top spectral floor on the selected windows, put the
   localized defect equation into the uniformly parabolic coefficient class, and
   prove the bounded-overlap / summability laws.

So the corrected exact-potential route is not

```math
D.7mr2 \Longrightarrow RPC.3,
```

but rather

```math
D.7mr2
\Longrightarrow
\text{boot entrance packet}
\Longrightarrow
\text{windowwise entrance domination + forcing absorption}
\Longrightarrow
PD.70z
\Longrightarrow
SG.4B.
\tag{EP.5}
```

That is the theorem-safe exact-potential closure cut currently supported by the
live notes.

#### Further discharge of the exact-potential branch: scheduler, forcing, and retained-window packets

The next exact reduction sits strictly **inside** `(EP.3)`. It does not change
the branch graph

```math
D.7mr2
\Longrightarrow
EP.2
\Longrightarrow
EP.3
\Longrightarrow
PD.70z
\Longrightarrow
SG.4B,
```

but it sharpens the open debts in the globalization step.

First, the entrance-packet hypothesis `(F.5)` must be read in the additive form
used by the summation proof:

```math
\int_{\mathcal J_k}
\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;\tau_k)
\,d\mu_J^{pair}(a,b)
\le
C_k^{obs}\,\mathcal E_{J,k}^{obs}(I_k)
+
\varepsilon_{J,k}^{obs}.
\tag{EP.6a}
```

That is the only reading compatible with `(F.6)` and `(F.7)`. The current
workspace typesetting of `(F.5)` is missing that explicit `+`.

### Proposition EP.6 (window-entry scheduler theorem reduces `F.5` to an integrated boot packet)

For each retained window `I_k=[\tau_k,\tau_k+h_k]`, choose one predecessor slab
`J_k=[s_k,s_k+\ell_k]\subset I`. Define the full boot entrance packet

```math
\mathcal B_{J,\mathrm{boot}}^{ent}(a,b;t)
:=
|W_J(a,b,t)|^2
+
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
+
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t),
\tag{EP.6b}
```

and the predecessor-slab energy

```math
E_k(t)
:=
\int_{\mathcal J_k}
\mathcal B_{J,\mathrm{boot}}^{ent}(a,b;t)\,d\mu_J^{pair}(a,b).
\tag{EP.6c}
```

Choose the window entry time `\tau_k\in J_k` so that
`E_k(\tau_k)=\inf_{t\in J_k}E_k(t)`. Then

```math
E_k(\tau_k)
\le
\frac{1}{\ell_k}\int_{J_k}E_k(t)\,dt.
\tag{EP.6d}
```

If the predecessor slabs satisfy the weighted overlap law

```math
\sum_k \ell_k^{-1}\mathbf 1_{J_k}(t)\le N_{\mathrm{pred}}
\qquad\text{for a.e. }t\in I,
\tag{EP.6e}
```

then

```math
\sum_k
\int_{\mathcal J_k}
\mathcal B_{J,\mathrm{boot}}^{ent}(a,b;\tau_k)\,d\mu_J^{pair}(a,b)
\le
N_{\mathrm{pred}}
\int_I\int_{\mathcal J}
\mathcal B_{J,\mathrm{boot}}^{ent}(a,b;t)\,d\mu_J^{pair}(a,b)\,dt.
\tag{EP.6f}
```

Consequently, the additive entrance-packet domination `(EP.6a)` is reduced to
the integrated boot estimate

```math
\int_I\int_{\mathcal J}
\mathcal B_{J,\mathrm{boot}}^{ent}(a,b;t)\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr)+o_J(1),
\tag{EP.6g}
```

plus the scheduler packet `(EP.6e)`.

**Proof.**
Estimate `(EP.6d)` is the minimizing-time averaging bound on `J_k`. Summing in
`k` and using `(EP.6e)` gives `(EP.6f)` by Fubini. Substituting `(EP.6f)` into
the additive entrance hypothesis `(EP.6a)` yields the reduction to `(EP.6g)`. ∎

So the true entrance-side debt is not just the three projector error families.
It is the four-term integrated packet

```math
\int_I\int_{\mathcal J}|W_J(a,b,t)|^2\,d\mu_J^{pair}(a,b)\,dt,
\tag{EP.6h}
```

```math
\int_I\int_{\mathcal J}\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt,
\tag{EP.6i}
```

```math
\int_I\int_{\mathcal J}\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt,
\tag{EP.6j}
```

```math
\int_I\int_{\mathcal J}\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt.
\tag{EP.6k}
```

Those four integrated channels are exactly the entrance decomposition hidden
inside `(EP.6g)`.

### Proposition EP.7 (forcing absorption must retain the `F.11e/F.11h` split)

On each retained block `\mathcal J_k\times I_k`, the general exact-potential
forcing term obeys the family-first bound

```math
\int_{\mathcal J_k}\int_{I_k}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
\le
\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}
\beta_J(a,b,t)^2\,dt\,d\mu_J^{pair}(a,b),
\tag{EP.7a}
```

which is exactly `(F.11e2)` under the lower-gap packet `(F.11e1)`.

On the adiabatic exact-potential subbranch, the forcing budget splits as

```math
\int_{\mathcal J_k}\int_{I_k}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b)
\le
2\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}|K_J^{seg}(a,b,t)n_J(a,b,t)|^2\,dt\,d\mu_J^{pair}(a,b)
+
2\gamma_k^{-3}
\int_{\mathcal J_k}\int_{I_k}\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2\,dt\,d\mu_J^{pair}(a,b).
\tag{EP.7b}
```

This is exactly `(F.11e3)`. Therefore the adiabatic forcing theorem is not one
single absorption estimate. It is the pair of retained-family series

```math
\sum_k C_k\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}|K_J^{seg}n_J|^2\,dt\,d\mu_J^{pair}
<\infty,
\tag{EP.7c}
```

```math
\sum_k C_k\gamma_k^{-3}
\int_{\mathcal J_k}\int_{I_k}\|\partial_t A_J^{seg}\|_{\mathrm{op}}^2\,dt\,d\mu_J^{pair}
<\infty,
\tag{EP.7d}
```

or, under the windowwise envelopes of `(F.11h1)`-`(F.11h2)`, the equivalent
split schedule

```math
\sum_k C_k\gamma_k^{-1}(M_k^{rot})^2|I_k|\,\mu_J^{pair}(\mathcal J_k)<\infty,
\tag{EP.7e}
```

```math
\sum_k C_k\gamma_k^{-3}N_k^2|I_k|\,\mu_J^{pair}(\mathcal J_k)<\infty.
\tag{EP.7f}
```

So the forcing-side discharge theorem is exactly the `F.11e/F.11h` split. The
cubic inverse-gap loss on the `\partial_t A_J^{seg}` term is genuine and cannot
be collapsed to the same `\gamma_k^{-1}` scale as the rotational term without
additional structure.

### Proposition EP.8 (corrected globalization theorem on the exact-potential branch)

Assume:

1. `D.7mr2` holds on every retained window;
2. the scheduler packet `(EP.6e)` holds and the integrated entrance boot packet
   `(EP.6g)` is controlled;
3. the forcing schedule is closed in the exact sense of `(EP.7a)` on the
   general branch, or `(EP.7c)`-`(EP.7d)` / `(EP.7e)`-`(EP.7f)` on the
   adiabatic branch;
4. the three retained-window packets from Theorem Candidate `F` hold:
   the gap-window production packet `V1`, the coefficient-class localization /
   observability packet `V2`, and the overlap / observation summability packet
   `V3`.

Then `D.7mh` and `F` yield

```math
\mathcal E_J^{dir}(I)\le C\,\mathcal E_J^{obs}(I)+o_J(1),
\tag{EP.8a}
```

hence, because `\mathcal E_J^{loop}(I)=0` on the exact-potential branch,

```math
PD.70z.
\tag{EP.8b}
```

If in addition

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta,
\tag{EP.8c}
```

then the installed selector-defect extraction from `PD.70` gives

```math
SG.4B.
\tag{EP.8d}
```

**Proof.**
Apply Proposition `(EP.2)` windowwise to obtain the local directional packet
from `D.7mr2`. Use the scheduler reduction `(EP.6f)` to feed the additive
entrance hypothesis `(EP.6a)`, and use the forcing reduction `(EP.7a)` or
`(EP.7b)` together with the retained-family summability schedule to supply the
forcing term in Theorem Candidate `F`. Then the proof of `F` yields
`(EP.8a)`. Since the exact-potential branch has `\mathcal E_J^{loop}(I)=0`,
this is precisely `PD.70z`. Finally, `PD.70z` implies `PD.70`, and
Corollary `TPS-selector-defect-bridge-to-SG4B` converts `(EP.8c)` into
`SG.4B`. ∎

### Exact remaining debts after the scheduler reduction

The globalization step now has five exact packets:

1. **E1: integrated entrance boot packet**
   `(EP.6g)`, whose explicit pieces are `(EP.6h)`-`(EP.6k)`;
2. **E2: forcing schedule**
   `(EP.7a)` on the general branch, or the split adiabatic schedule
   `(EP.7c)`-`(EP.7d)` / `(EP.7e)`-`(EP.7f)`;
3. **V1: gap-window production**
   reduced on disk to the codimension-two tubular packet `F.11b` / `F.11c` /
   `F.11f`;
4. **V2: coefficient-class localization / observability**
   reduced on disk to `F.11d` plus the exact remaining observability theorem
   `F.11g`;
5. **V3: overlap and observation summability**
   namely the bounded-overlap law `(F.1)` together with the observation/error
   series `(F.6)`-`(F.7)`.

So the sharp truthful closure route from the current repo state is

```math
D.7mr2
\Longrightarrow
D.7mh
\Longrightarrow
\bigl(E1+E2+V1+V2+V3\bigr)
\Longrightarrow
PD.70z
\Longrightarrow
SG.4B.
\tag{EP.9}
```

That is the furthest exact-potential discharge currently justified by the live
notes.

### Proposition EP.10 (further exact reduction of `E1` to integrated pair-marginal channels)

Keep one strip `I` and one active pair family `\mathcal J`. Assume the uniform
predecessor-slab bounds

```math
\operatorname{gap}_J^{CG}(t,a)\ge \gamma_\ast>0,
\qquad
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}\le M_\ast,
\qquad
K_J^{lin}(a)\le K_\ast.
\tag{EP.10a}
```

Let `\nu_J:=(\pi_a)_\#\mu_J^{pair}` be the pushforward of the pair measure to
the `a`-parameter under the canonical projection `\pi_a(a,b)=a`.

Then `D.7mq2` gives the pair-to-cocycle reduction

```math
\int_I\int_{\mathcal J}
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
\,d\mu_J^{pair}(a,b)\,dt
\le
\frac{2C_{CG,\mathrm{DK}}}{\gamma_\ast^2}
\left(
\int_I\int \bigl(\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)\bigr)^2\,d\nu_J(a)\,dt
+
M_\ast^4
\int_I\int \bigl(\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)\bigr)^2\,d\nu_J(a)\,dt
\right).
\tag{EP.10b}
```

Likewise `D.7mm6` yields

```math
\int_I\int_{\mathcal J}
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t)
\,d\mu_J^{pair}(a,b)\,dt
\le
|I|\,
\frac{4e^{2K_\ast}}{\gamma_\ast^2}
\int_{\mathcal J}\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b).
\tag{EP.10c}
```

So the integrated entrance packet `E1` reduces exactly to:

1. the pair-defect energy channel
   `\int_I\int_{\mathcal J}|W_J(a,b,t)|^2\,d\mu_J^{pair}\,dt`;
2. the integrated synchronization packet
   `\int_I\int_{\mathcal J}\operatorname{Err}_{J,\mathrm{sync}}\,d\mu_J^{pair}\,dt`;
3. the pair-marginal linearization / selector-shape channel in `(EP.10b)`;
4. the boot packet `\int_{\mathcal J}\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b)`,
   up to the strip-length factor in `(EP.10c)`.

So `E1` is now reduced to four exact lower packets and no longer carries the
full Cauchy-Green notation as a black box.

**Proof.**
In `(D.7mq2)`, the right-hand side depends only on `(t,a)`, so integrating over
the pair family pushes the measure forward to `\nu_J`. Then use
`(x+y)^2\le 2x^2+2y^2` and the uniform cocycle bound in `(EP.10a)` to obtain
`(EP.10b)`. Formula `(D.7mm6)` is time-independent on `I`, so integrating in
time contributes the strip length `|I|`, yielding `(EP.10c)`. ∎

### Corollary EP.10d (uniform weight promotion imports the pair-marginal boot channel into the live weighted exact wall)

Keep the hypotheses of Proposition `EP.10`, and suppose in addition that the
same active pair family `\mathcal J` satisfies a uniform weight bound

```math
\sup_{(a,b)\in\mathcal J} M_J(a,b)\le M_\ast^{wt}<\infty.
\tag{EP.10d1}
```

If the boot packet is small in plain pair measure,

```math
\int_{\mathcal J}\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b)=o_J(1),
\tag{EP.10d2}
```

then the live weighted exact supplier packet holds:

```math
\int_{\mathcal J}
M_J(a,b)^2\,\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b)
=
o_J(1).
\tag{EP.10d3}
```

Therefore, with `K_J^{lin}(a)\le K_\ast` already supplied by `(EP.10a)`, the
bootstrap-envelope corollary from
[ssc-d7mb-collapse-and-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ssc-d7mb-collapse-and-suppliers.md)
applies locally:

```math
\texttt{EP.10a}
\;+\;
\texttt{EP.10d2}
\;+\;
\texttt{EP.10d1}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{EP.10d4}
```

So under uniform weight promotion, the unweighted pair-marginal boot channel in
`EP.10` imports directly into the local weighted exact `SSC -> D.7mr2` wall.
The downstream passage to `PD.70z` and `SG.4B` still requires the separate
exact-potential scheduler / forcing / globalization chain
`D.7mr2 -> D.7mh -> (E1+E2+V1+V2+V3) -> PD.70z -> SG.4B`.

**Proof.**
By `(EP.10d1)`,

```math
M_J(a,b)^2\,\eta_J^{boot}(a,b)^2
\le
\bigl(M_\ast^{wt}\bigr)^2\,\eta_J^{boot}(a,b)^2
\qquad\text{on }\mathcal J.
\tag{EP.10d5}
```

Integrating `(EP.10d5)` over `\mathcal J` and using `(EP.10d2)` gives
`(EP.10d3)`. The implication `(EP.10d4)` is then exactly the already audited
local corollary `Uniform-Klin + BootSmall => SSC`, with `K_\ast` from
`(EP.10a)`, followed by the local supplier implication `SSC => D.7mr2`. ∎

This does **not** prove the full HWY exact-potential branch on its own, because
the integrated synchronization packet in `E1` and the downstream
forcing/globalization chain remain separate debts in this note.

### Proposition EP.10e (the integrated synchronization packet reduces to a sign-compatible seed-plus-forcing theorem)

Fix one transported good strip `I=[t_0,t_1]` and one active pair family
`\mathcal J`. Suppose there exists a measurable sign-compatible unit direction
`\nu_J(a,b,t)` on `\mathcal J\times I`, and define

```math
\widehat P_J(a,b,t):=\nu_J(a,b,t)\otimes \nu_J(a,b,t),
\qquad
\mathfrak a_J^{sync}(a,b,t)
:=
\frac12\|P_{ab}(t)-\widehat P_J(a,b,t)\|_F^2.
\tag{EP.10e1}
```

Assume the hypotheses of `D.7n` hold for this synchronization defect, namely

```math
\partial_t \mathfrak a_J^{sync}(a,b,t)
\le
a_J(a,b,t)\,\mathfrak a_J^{sync}(a,b,t)
+
b_J(a,b,t)\,\Theta_J(a,b,t),
\tag{EP.10e2}
```

with

```math
\int_I a_J(a,b,t)\,dt\le A_0,
\qquad
\int_I b_J(a,b,t)\Theta_J(a,b,t)\,dt\le \beta_J^{sync}(a,b),
\qquad
\mathfrak a_J^{sync}(a,b,t_0)\le \delta_J^{sync}(a,b).
\tag{EP.10e3}
```

Then `D.7n5` yields

```math
\mathfrak a_J^{sync}(a,b,t)
\le
e^{A_0}\bigl(\delta_J^{sync}(a,b)+\beta_J^{sync}(a,b)\bigr)
\qquad\text{for every }t\in I,
\tag{EP.10e4}
```

and hence

```math
\|P_{ab}(t)-\widehat P_J(a,b,t)\|_F^2
\le
2e^{A_0}\bigl(\delta_J^{sync}(a,b)+\beta_J^{sync}(a,b)\bigr).
\tag{EP.10e5}
```

So the projective synchronization estimate `D.7m3` holds with
`C_{\mathrm{sync}}=0` and

```math
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
:=
2e^{A_0}\bigl(\delta_J^{sync}(a,b)+\beta_J^{sync}(a,b)\bigr).
\tag{EP.10e6}
```

Consequently the integrated synchronization channel in `E1` satisfies

```math
\int_I\int_{\mathcal J}
\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
\le
2e^{A_0}|I|
\int_{\mathcal J}
\bigl(\delta_J^{sync}(a,b)+\beta_J^{sync}(a,b)\bigr)
\,d\mu_J^{pair}(a,b).
\tag{EP.10e7}
```

So the synchronization wall is now reduced to exactly two lower packets:

```math
\boxed{\text{initial sign-compatible synchronization seed }\delta_J^{sync}}
\quad+\quad
\boxed{\text{integrated sign-compatible forcing packet }\beta_J^{sync}}.
\tag{EP.10e8}
```

This reduction is theorem-safe in exactly the way `D.7k` demands: the signless
packet `W_J` alone does **not** close synchronization. One needs an additional
sign-compatible projector readout whose seed and forcing are controlled.

**Proof.**
By definition `(EP.10e1)`, the defect `\mathfrak a_J^{sync}` is exactly the
rank-one projector distance appearing in `D.7m3`. Apply `D.7n5` under
`(EP.10e2)`-`(EP.10e3)` to obtain `(EP.10e4)`, then multiply by `2` to get
`(EP.10e5)`. Integrating `(EP.10e6)` over `I\times\mathcal J` gives
`(EP.10e7)`. ∎

### Corollary EP.10f (the honest remaining synchronization wall is a sign-compatible projector-extraction theorem)

By the no-go theorem `D.7k`, the signless packet `W_J` and its currently
installed coercive PDE bounds do **not** determine the expanding direction by
themselves. So Proposition `EP.10e` is already the sharp theorem-safe
reduction of the integrated synchronization packet.

Consequently the remaining synchronization wall is exactly:

```math
\boxed{\text{construct one sign-compatible projector field }\widehat P_J}
\quad+\quad
\boxed{\text{control its initial seed }\delta_J^{sync}}
\quad+\quad
\boxed{\text{control its forcing packet }\beta_J^{sync}}.
\tag{EP.10f1}
```

Equivalently, the live exact-potential synchronization burden is not “get more
coercivity from `W_J`.” It is:

1. one **projector-extraction theorem** producing a sign-compatible rank-one
   readout `\widehat P_J` on the transported good family;
2. one **entrance theorem** controlling the seed `\delta_J^{sync}`;
3. one **transport / forcing theorem** controlling the integrated packet
   `\beta_J^{sync}`.

Once those three inputs are available, `EP.10e` converts them directly into the
integrated synchronization channel required in `E1`.

### Proposition EP.10g (localized projector extraction reduces to three local window inputs plus one coverage packet)

Fix one localized packet point `(x,t)` and one backward window `I=[t-\tau,t]`.
Choose the localized projector-moment tensor and local mass from the projective
synchronization packet:

```math
\widetilde S_J(x,t)
:=
\int w_{J,x,t}(a,b)\,P_{ab}(t)\,d\mu_J^{pair}(a,b),
\qquad
m_J(x,t)
:=
\int w_{J,x,t}(a,b)\,d\mu_J^{pair}(a,b).
\tag{EP.10g1}
```

Assume `TCJ'` and the local packet isolated by `PSJ+.5`, namely:

1. a simple-top gap floor `g_J(a,b,s)\ge \gamma_\ast>0` on `I`;
2. a corotational drift bound

```math
2\Bigl(
|K_J^{seg}(a,b,s)n_J(a,b,s)|
+
\frac{\|\partial_s A_J^{seg}(a,b,s)\|_{\mathrm{op}}}{g_J(a,b,s)}
\Bigr)
\le
\kappa_\ast;
\tag{EP.10g2}
```

3. a theorem-safe entrance bound

```math
\alpha_J(a,b,t-\tau)
=
d_{\mathrm{proj}}\!\bigl(P_{ab}(t-\tau),N_{x,t}(t-\tau)\bigr)^2
\le
q_\ast<1;
\tag{EP.10g3}
```

4. the smallness condition

```math
C_0\kappa_\ast\le \gamma_\ast q_\ast(1-q_\ast).
\tag{EP.10g4}
```

Set

```math
\Gamma_\ast:=\gamma_\ast(1-q_\ast),
\qquad
\varepsilon_{J,\mathrm{sync}}^{loc}(x,t)
:=
e^{-2\Gamma_\ast\tau}\,q_\ast
+
\frac{C\kappa_\ast}{2\Gamma_\ast}.
\tag{EP.10g5}
```

Then `PSJ+.5` and `PSJ+.4` give the weighted local concentration estimate

```math
\frac1{m_J(x,t)}
\int
w_{J,x,t}(a,b)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),N_{x,t}(t)\bigr)^2
\,d\mu_J^{pair}(a,b)
\le
\varepsilon_{J,\mathrm{sync}}^{loc}(x,t),
\tag{EP.10g6}
```

while `PSJ+.1`-`PSJ+.2` produce the measurable rank-one projector

```math
\widehat P_J(x,t):=\Pi_{\max}\bigl(\widetilde S_J(x,t)\bigr)
\tag{EP.10g7}
```

with

```math
d_{\mathrm{proj}}\!\bigl(\widehat P_J(x,t),N_{x,t}(t)\bigr)^2
\le
8\,\varepsilon_{J,\mathrm{sync}}^{loc}(x,t).
\tag{EP.10g8}
```

Consequently,

```math
\frac1{m_J(x,t)}
\int
w_{J,x,t}(a,b)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_J(x,t)\bigr)^2
\,d\mu_J^{pair}(a,b)
\le
18\,\varepsilon_{J,\mathrm{sync}}^{loc}(x,t).
\tag{EP.10g9}
```

So the sign-compatible projector-extraction theorem is now reduced locally to:

```math
\boxed{\text{simple-top gap floor}}
\quad+\quad
\boxed{\text{corotational drift packet}}
\quad+\quad
\boxed{\text{theorem-safe entrance bound}}
\tag{EP.10g10}
```

plus one separate nondegeneracy / coverage packet for the chosen weights
`w_{J,x,t}` and local masses `m_J(x,t)`.

**Proof.**
The local packet `(EP.10g2)`-`(EP.10g4)` is exactly the sufficient hypothesis
set of `PSJ+.5`, so `PSJ+.4` yields `(EP.10g6)` with
`\varepsilon_{J,\mathrm{sync}}^{loc}` from `(EP.10g5)`. Then `PSJ+.1`
constructs the localized PSD surrogate and `PSJ+.2` gives `(EP.10g8)`. Finally,
use
`d_{\mathrm{proj}}(P,\widehat P)^2\le 2d_{\mathrm{proj}}(P,N)^2+2d_{\mathrm{proj}}(\widehat P,N)^2`,
average against `w_{J,x,t}/m_J(x,t)`, and substitute `(EP.10g6)` and
`(EP.10g8)` to obtain `(EP.10g9)`. ∎

### Corollary EP.10h (the remaining globalization debt for synchronization is one weighted coverage theorem)

Proposition `EP.10g` is local in `(x,t)`. So after the projector-extraction
reduction, the remaining synchronization burden is no longer geometric
identification itself. It is one globalization theorem for the chosen
localization scheme:

```math
\boxed{
\text{bounded-overlap / nondegenerate-mass / strip-integration control for }
w_{J,x,t}\text{ and }m_J(x,t)
}
\tag{EP.10h1}
```

that converts the local weighted estimate `(EP.10g9)` into the global
integrated synchronization channel required in `(EP.10e7)`.

In particular, the exact local inputs for synchronization are now:

1. local simple-top gap floor;
2. local corotational drift packet;
3. theorem-safe entrance packet;
4. weighted coverage/globalization packet.

### Corollary EP.10i (the local entrance side of projector extraction already has two installed suppliers)

In Proposition `EP.10g`, the only genuinely local datum not yet named by route
packet is the entrance bound `(EP.10g3)`. But `PSJ+.5` already isolates two
installed sufficient suppliers for that bound:

```math
q_\ast
\;\ge\;
2e^{-2G_J^{mat}(a,b,t-\tau;t_-)}
\frac{1-c_{J,0}(a,b,t-\tau;t_-)^2}{c_{J,0}(a,b,t-\tau;t_-)^2}
+
2\delta_J^{car}(a,b,t-\tau;t_-),
\tag{EP.10i1}
```

coming from the material-gap entrance packet `D.7ic`, and

```math
q_\ast
\;\ge\;
2\widetilde\alpha_J^{aux}(a,b;t-\tau;I)
+
\eta_J^{aux}(a,b;I),
\tag{EP.10i2}
```

with the Cauchy-Green specialization

```math
\eta_J^{aux}(a,b;I)
=
\frac{2|m_J(t-\tau,a,b)|^2}{\operatorname{gap}_J^{CG}(t-\tau,a)^2},
\tag{EP.10i3}
```

coming from the auxiliary-projector restart packet `D.7ig`.

So the local projector-extraction theorem no longer owes an abstract entrance
bound. It owes exactly one of these two named suppliers:

```math
\boxed{\text{material-gap entrance supplier }D.7ic}
\quad\text{or}\quad
\boxed{\text{auxiliary-projector entrance supplier }D.7ig}.
\tag{EP.10i4}
```

Consequently the remaining local synchronization wall is now:

1. local simple-top gap floor;
2. local corotational drift packet;
3. one theorem-safe entrance supplier from `(EP.10i4)`;
4. weighted coverage/globalization.

### Corollary EP.10j (the local corotational drift side is exactly a windowwise `\beta_J` supplier)

In Proposition `EP.10g`, the corotational drift packet `(EP.10g2)` is not a
new unrelated burden. By the exact identities used in `PSJ+.5`,

```math
\bigl\|
\partial_s N_{x,t}(s)-[\Omega_{x,t}(s),N_{x,t}(s)]
\bigr\|_{\mathrm{op}}
\le
2\,\beta_J(a,b,s),
\tag{EP.10j1}
```

and the adiabatic forcing identity gives the sufficient bound

```math
\beta_J(a,b,s)
\le
|K_J^{seg}(a,b,s)n_J(a,b,s)|
+
\frac{\|\partial_s A_J^{seg}(a,b,s)\|_{\mathrm{op}}}{g_J(a,b,s)}.
\tag{EP.10j2}
```

So a theorem-safe local sufficient condition for `(EP.10g2)` is the windowwise
sup packet

```math
\sup_{s\in I}
\beta_J(a,b,s)
\le
\frac{\kappa_\ast}{2},
\tag{EP.10j3}
```

or, more concretely,

```math
\sup_{s\in I}
\left(
|K_J^{seg}(a,b,s)n_J(a,b,s)|
+
\frac{\|\partial_s A_J^{seg}(a,b,s)\|_{\mathrm{op}}}{g_J(a,b,s)}
\right)
\le
\frac{\kappa_\ast}{2}.
\tag{EP.10j4}
```

Therefore the remaining local projector-extraction wall is now named entirely
by existing packet types:

1. local simple-top gap floor;
2. local `\beta_J`-sup supplier, or its adiabatic sufficient form
   `(EP.10j4)`;
3. one theorem-safe entrance supplier from `(EP.10i4)`;
4. weighted coverage/globalization.

### Corollary EP.10k (the local simple-top gap side is exactly the localized face of `V1`)

The first local hypothesis in `(EP.10g)` is

```math
g_J(a,b,s)\ge \gamma_\ast>0
\qquad\text{on the backward window }I=[t-\tau,t].
\tag{EP.10k1}
```

This is not a new synchronization-side burden. It is exactly the localized
simple-top gap floor already isolated on the exact-potential branch. In the
window-production notation, it is the local retained-gap packet coming from the
same selector-good / discriminant-anchor mechanism that feeds `V1`.

So after `(EP.10i)` and `(EP.10j)`, the local projector-extraction wall is
fully aligned with the existing exact-potential branch packets:

1. localized `V1` gap floor;
2. localized `\beta_J` supplier;
3. localized entrance supplier `D.7ic` or `D.7ig`;
4. weighted coverage/globalization.

That is the sharpest theorem-safe local decomposition of the synchronization
wall available on disk.

### Proposition EP.10l (a weighted coverage theorem is sufficient to globalize the local projector-extraction packet)

Let `\{\Lambda_\ell\}_\ell` be a countable local synchronization family, where
each `\Lambda_\ell` carries one local weight `w_\ell(a,b,t)`, one local mass
`m_\ell>0`, one local projector `\widehat P_{J,\ell}`, and one local error
level `\varepsilon_\ell`, satisfying the localized estimate

```math
\frac{1}{m_\ell}
\int
w_\ell(a,b,t)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_{J,\ell}(t)\bigr)^2
\,d\mu_J^{pair}(a,b)\,dt
\le
\varepsilon_\ell.
\tag{EP.10l1}
```

Assume the localizers cover the active family in the sense that

```math
\mathbf 1_{\mathcal J\times I}
\le
\sum_\ell w_\ell(a,b,t)
\le
N_{\mathrm{cov}}
\qquad\text{for a.e. }(a,b,t)\in\mathcal J\times I.
\tag{EP.10l2}
```

Then the global synchronization defect is bounded by the weighted local error
sum:

```math
\int_I\int_{\mathcal J}
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_J(a,b,t)\bigr)^2
\,d\mu_J^{pair}(a,b)\,dt
\le
\sum_\ell m_\ell\,\varepsilon_\ell,
\tag{EP.10l3}
```

whenever `\widehat P_J` is chosen by patching together the local projectors on
the covering family.

Consequently a sufficient globalization packet for synchronization is

```math
\boxed{
\sum_\ell m_\ell\,\varepsilon_\ell
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
}
\tag{EP.10l4}
```

So the coverage/globalization side of projector extraction is reduced to one
weighted Carleson-type summability theorem for the local windows.

**Proof.**
Multiply `(EP.10l1)` by `m_\ell` and sum over `\ell`:

```math
\sum_\ell
\int
w_\ell\,d_{\mathrm{proj}}\!\bigl(P_{ab},\widehat P_{J,\ell}\bigr)^2
\,d\mu_J^{pair}\,dt
\le
\sum_\ell m_\ell\,\varepsilon_\ell.
\tag{EP.10l5}
```

Using the lower coverage bound in `(EP.10l2)`, the left-hand side dominates the
global defect after patching the local projectors into `\widehat P_J` on the
covered family. This gives `(EP.10l3)`. Bound `(EP.10l4)` is exactly the
resulting sufficient global packet. ∎

### Proposition EP.10m (the weighted coverage packet reduces to one pointwise error-density envelope)

Under the hypotheses of Proposition `EP.10l`, assume there is a nonnegative
measurable density `\mathfrak e_J(a,b,t)` such that each local error obeys

```math
m_\ell\,\varepsilon_\ell
\le
\int
w_\ell(a,b,t)\,\mathfrak e_J(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10m1}
```

Then

```math
\sum_\ell m_\ell\,\varepsilon_\ell
\le
N_{\mathrm{cov}}
\int_I\int_{\mathcal J}
\mathfrak e_J(a,b,t)\,d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10m2}
```

Consequently a sufficient globalization packet for synchronization is now:

```math
\boxed{
\int_I\int_{\mathcal J}
\mathfrak e_J(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
}
\tag{EP.10m3}
```

So the coverage side of synchronization no longer needs to be read as an
abstract summability theorem on the local masses themselves. It is enough to
construct one pointwise error-density envelope whose weighted local averages
dominate the `\varepsilon_\ell`.

**Proof.**
Sum `(EP.10m1)` over `\ell` and use Tonelli:

```math
\sum_\ell m_\ell\,\varepsilon_\ell
\le
\int
\Bigl(\sum_\ell w_\ell(a,b,t)\Bigr)\mathfrak e_J(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10m4}
```

Apply the upper coverage bound in `(EP.10l2)` to obtain `(EP.10m2)`. The
sufficient packet `(EP.10m3)` then implies `(EP.10l4)`. ∎

### Corollary EP.10n (the synchronization globalization wall reduces to entrance and drift error densities)

In the local projector-extraction packet `(EP.10g)`, suppose each local window
`\Lambda_\ell` has parameters `q_\ell,\Gamma_\ell,\kappa_\ell,\tau_\ell` with

```math
\varepsilon_\ell
=
e^{-2\Gamma_\ell\tau_\ell}q_\ell
+
\frac{C\kappa_\ell}{2\Gamma_\ell},
\qquad
\Gamma_\ell\ge \Gamma_\ast>0.
\tag{EP.10n1}
```

Assume there are nonnegative measurable envelopes
`\mathfrak q_J,\mathfrak k_J` on `\mathcal J\times I` such that

```math
q_\ell
\le
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,\mathfrak q_J(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt,
\tag{EP.10n2}
```

and

```math
\kappa_\ell
\le
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,\mathfrak k_J(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10n3}
```

Then Proposition `EP.10m` applies with

```math
\mathfrak e_J(a,b,t)
:=
e^{-2\Gamma_\ast\tau_\ell}\,\mathfrak q_J(a,b,t)
+
\frac{C}{2\Gamma_\ast}\,\mathfrak k_J(a,b,t)
\qquad\text{on }\Lambda_\ell,
\tag{EP.10n4}
```

and therefore the global synchronization channel follows once

```math
\int_I\int_{\mathcal J}
\Bigl(
\mathfrak q_J(a,b,t)+\mathfrak k_J(a,b,t)
\Bigr)
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.10n5}
```

So the remaining synchronization globalization wall is reduced exactly to:

1. a weighted cover by local windows;
2. one entrance error-density envelope `\mathfrak q_J`;
3. one local drift error-density envelope `\mathfrak k_J`.

The localized projector-moment packet `LPMC.26` does **not** by itself provide
either of these density envelopes or the bounded-overlap globalization. It only
refines the local dynamics once projector concentration is already in hand.

**Proof.**
Multiply `(EP.10n1)` by `m_\ell`, then substitute `(EP.10n2)`-`(EP.10n3)` and
use `\Gamma_\ell\ge \Gamma_\ast`:

```math
m_\ell\,\varepsilon_\ell
\le
\int
w_\ell(a,b,t)
\left(
e^{-2\Gamma_\ast\tau_\ell}\,\mathfrak q_J(a,b,t)
+
\frac{C}{2\Gamma_\ast}\,\mathfrak k_J(a,b,t)
\right)
d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10n6}
```

This is exactly `(EP.10m1)` with the density `(EP.10n4)`, so Proposition
`EP.10m` gives the claim. ∎

### Corollary EP.10o (the entrance and drift density envelopes are exactly the windowwise promotions of installed local suppliers)

For each local synchronization window `\Lambda_\ell`, let the entrance
parameter `q_\ell` be supplied by either of the two installed packets from
`(EP.10i4)`:

```math
q_\ell^{mat}
:=
2e^{-2G_J^{mat}(a,b,t_\ell-\tau_\ell;t_{\ell,-})}
\frac{1-c_{J,0}(a,b,t_\ell-\tau_\ell;t_{\ell,-})^2}
{c_{J,0}(a,b,t_\ell-\tau_\ell;t_{\ell,-})^2}
+
2\delta_J^{car}(a,b,t_\ell-\tau_\ell;t_{\ell,-}),
\tag{EP.10o1}
```

or

```math
q_\ell^{aux}
:=
2\widetilde\alpha_J^{aux}(a,b;t_\ell-\tau_\ell;I_\ell)
+
\eta_J^{aux}(a,b;I_\ell),
\tag{EP.10o2}
```

with the Cauchy-Green specialization

```math
\eta_J^{aux}(a,b;I_\ell)
=
\frac{2|m_J(t_\ell-\tau_\ell,a,b)|^2}
{\operatorname{gap}_J^{CG}(t_\ell-\tau_\ell,a)^2}.
\tag{EP.10o3}
```

Let the local drift parameter be supplied by the windowwise `\beta_J` packet:

```math
\kappa_\ell^{\beta}
:=
2\sup_{s\in I_\ell}\beta_J(a,b,s),
\tag{EP.10o4}
```

or, using the adiabatic sufficient form `(EP.10j4)`,

```math
\kappa_\ell^{ad}
:=
2\sup_{s\in I_\ell}
\left(
|K_J^{seg}(a,b,s)n_J(a,b,s)|
+
\frac{\|\partial_s A_J^{seg}(a,b,s)\|_{\mathrm{op}}}{g_J(a,b,s)}
\right).
\tag{EP.10o5}
```

Then Corollary `EP.10n` applies with either entrance choice
`q_\ell\in\{q_\ell^{mat},q_\ell^{aux}\}` and either drift choice
`\kappa_\ell\in\{\kappa_\ell^{\beta},\kappa_\ell^{ad}\}`.

So the remaining synchronization globalization wall is now fully packetized:

```math
\boxed{\text{one weighted cover by local windows}}
\quad+\quad
\boxed{\text{one weighted promotion of }(EP.10o1)\text{ or }(EP.10o2)}
\quad+\quad
\boxed{\text{one weighted promotion of }(EP.10o4)\text{ or }(EP.10o5)}.
\tag{EP.10o6}
```

In particular, there is no longer any unnamed local synchronization burden. The
only unresolved step is the weighted globalization of these already-installed
windowwise entrance and drift suppliers.

**Proof.**
This is just the substitution of the entrance suppliers from `(EP.10i1)`-
`(EP.10i3)` and the drift suppliers from `(EP.10j3)`-`(EP.10j4)` into the
local parameters `q_\ell,\kappa_\ell` appearing in `(EP.10n1)`. Corollary
`EP.10n` then globalizes them once the weighted envelope estimates are proved.
∎

### Corollary EP.10oa (the local source functions are scalarized by windowwise essential suprema)

The formulas `(EP.10o1)`-`(EP.10o5)` are still pair/time-dependent source
functions on the local windows. To use them in the scalar window-pricing
surfaces `EP.10p`-`EP.10aa`, define the canonical scalarizations

```math
\mathbf q_\ell^{mat}
:=
\operatorname*{ess\,sup}_{(a,b,t)\in\Lambda_\ell}
q_\ell^{mat}(a,b,t),
\qquad
\mathbf q_\ell^{aux}
:=
\operatorname*{ess\,sup}_{(a,b,t)\in\Lambda_\ell}
q_\ell^{aux}(a,b,t),
\tag{EP.10oa1}
```

and

```math
\boldsymbol\kappa_\ell^{\beta}
:=
\operatorname*{ess\,sup}_{(a,b,t)\in\Lambda_\ell}
\kappa_\ell^{\beta}(a,b,t),
\qquad
\boldsymbol\kappa_\ell^{ad}
:=
\operatorname*{ess\,sup}_{(a,b,t)\in\Lambda_\ell}
\kappa_\ell^{ad}(a,b,t).
\tag{EP.10oa2}
```

These are the actual windowwise scalars to be substituted into the pricing and
summation packets below. In particular, the abstract local scalar choices in
`EP.10q`, `EP.10v`, and `EP.10aa` should be read as

```math
X_\ell\in\{\mathbf q_\ell^{mat},\mathbf q_\ell^{aux}\},
\qquad
Y_\ell\in\{\boldsymbol\kappa_\ell^{\beta},\boldsymbol\kappa_\ell^{ad}\}.
\tag{EP.10oa3}
```

This is the theorem-safe scalarization step that keeps the later windowwise
pricing laws well-typed.

### Proposition EP.10p (weighted promotion reduces to one maximal-envelope theorem on the local window family)

Let `\{\Lambda_\ell\}_\ell` be the local synchronization family from
`(EP.10l)`, and let `X_\ell,Y_\ell\ge 0` be windowwise scalars such that

```math
q_\ell\le X_\ell,
\qquad
\kappa_\ell\le Y_\ell
\qquad\text{for every }\ell.
\tag{EP.10p1}
```

Define the local-family maximal envelopes on `\mathcal J\times I` by

```math
\mathcal M_{\Lambda}X(a,b,t)
:=
\sup_{\ell:\,(a,b,t)\in \Lambda_\ell} X_\ell,
\qquad
\mathcal M_{\Lambda}Y(a,b,t)
:=
\sup_{\ell:\,(a,b,t)\in \Lambda_\ell} Y_\ell.
\tag{EP.10p2}
```

Then each local window automatically satisfies

```math
X_\ell
\le
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,\mathcal M_{\Lambda}X(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt,
\tag{EP.10p3}
```

and

```math
Y_\ell
\le
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,\mathcal M_{\Lambda}Y(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10p4}
```

So Corollary `EP.10n` applies with

```math
\mathfrak q_J:=\mathcal M_{\Lambda}X,
\qquad
\mathfrak k_J:=\mathcal M_{\Lambda}Y,
\tag{EP.10p5}
```

and the synchronization globalization channel closes once

```math
\int_I\int_{\mathcal J}
\Bigl(
\mathcal M_{\Lambda}X(a,b,t)
+
\mathcal M_{\Lambda}Y(a,b,t)
\Bigr)
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.10p6}
```

In particular, the weighted-promotion wall is no longer a separate geometric
question. It is exactly one maximal-envelope integrability theorem for the
chosen family of local synchronization windows.

**Proof.**
By definition of `(EP.10p2)`, one has `\mathcal M_{\Lambda}X\ge X_\ell` and
`\mathcal M_{\Lambda}Y\ge Y_\ell` pointwise on `\Lambda_\ell`. Averaging
against the nonnegative local weights `w_\ell/m_\ell` gives `(EP.10p3)`-
`(EP.10p4)`. Then substitute `(EP.10p5)` into Corollary `EP.10n`. ∎

### Corollary EP.10q (the remaining synchronization globalization wall is integrability of maximal envelopes of explicit local source scalars)

Apply Proposition `EP.10p` with one scalarized entrance choice

```math
X_\ell\in\{\mathbf q_\ell^{mat},\mathbf q_\ell^{aux}\},
\tag{EP.10q1}
```

and one scalarized drift choice

```math
Y_\ell\in\{\boldsymbol\kappa_\ell^{\beta},\boldsymbol\kappa_\ell^{ad}\}.
\tag{EP.10q2}
```

Then the exact remaining synchronization globalization wall is:

```math
\boxed{
\int_I\int_{\mathcal J}
\Bigl(
\mathcal M_{\Lambda}X(a,b,t)
+
\mathcal M_{\Lambda}Y(a,b,t)
\Bigr)
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr)
}
\tag{EP.10q3}
```

for the explicit local source scalars `(EP.10o1)` or `(EP.10o2)` and
`(EP.10o4)` or `(EP.10o5)`.

So the synchronization side is now reduced as far as the current on-disk packet
allows:

1. local simple-top gap floor;
2. local entrance supplier `D.7ic` or `D.7ig`;
3. local drift supplier `\beta_J` or its adiabatic sufficient form;
4. one maximal-envelope integrability theorem on the local window family.

### Proposition EP.10r (maximal-envelope globalization reduces to overlap-mismatch gluing of local projective sections)

Let `\{\Lambda_\ell\}_\ell` be a bounded-multiplicity local synchronization
family, and let each window carry a local projector
`\widehat P_{J,\ell}` together with a local defect density
`\mathfrak e_\ell(a,b,t)` such that

```math
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_{J,\ell}(a,b,t)\bigr)^2
d\mu_J^{pair}(a,b)\,dt
\le
\frac1{m_\ell}
\int
w_\ell(a,b,t)\,\mathfrak e_\ell(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt.
\tag{EP.10r1}
```

On overlaps `\Lambda_\ell\cap\Lambda_{\ell'}`, define the projective mismatch

```math
\delta_{\ell\ell'}(a,b,t)
:=
d_{\mathrm{proj}}\!\bigl(
\widehat P_{J,\ell}(a,b,t),
\widehat P_{J,\ell'}(a,b,t)
\bigr)^2.
\tag{EP.10r2}
```

Assume there is a measurable selector `\iota(a,b,t)` choosing one active window
at each point of the covered family, and an overlap envelope
`\mathfrak d_J(a,b,t)` such that whenever `(a,b,t)\in\Lambda_\ell`,

```math
\delta_{\iota(a,b,t),\ell}(a,b,t)
\le
\mathfrak d_J(a,b,t).
\tag{EP.10r3}
```

Define the glued global projector by

```math
\widehat P_J(a,b,t):=\widehat P_{J,\iota(a,b,t)}(a,b,t).
\tag{EP.10r4}
```

Then for every active point and every local window containing it,

```math
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_J(a,b,t)\bigr)^2
\le
2\,d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_{J,\ell}(a,b,t)\bigr)^2
+
2\,\mathfrak d_J(a,b,t).
\tag{EP.10r5}
```

Consequently the global synchronization channel closes once

```math
\int_I\int_{\mathcal J}
\Bigl(
\mathcal M_{\Lambda}\mathfrak e(a,b,t)
+
\mathfrak d_J(a,b,t)
\Bigr)
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{EP.10r6}
```

where `\mathcal M_{\Lambda}\mathfrak e` is the local-family maximal envelope of
the densities `\mathfrak e_\ell`.

So the maximal-envelope wall is not a separate abstraction from the braid
picture. It is exactly the local-to-global projective gluing problem:

```math
\boxed{\text{local projective sections}}
\quad+\quad
\boxed{\text{overlap mismatch envelope}}
\quad+\quad
\boxed{\text{maximal-envelope integrability of local defect densities}}.
\tag{EP.10r7}
```

**Proof.**
Fix one point `(a,b,t)` and one window `\Lambda_\ell` containing it. By the
projective triangle inequality,

```math
d_{\mathrm{proj}}(P_{ab},\widehat P_J)^2
\le
2\,d_{\mathrm{proj}}(P_{ab},\widehat P_{J,\ell})^2
+
2\,d_{\mathrm{proj}}(\widehat P_{J,\ell},\widehat P_J)^2.
\tag{EP.10r8}
```

Use `(EP.10r3)` to bound the second term by `2\mathfrak d_J`, then dominate the
first term by the maximal local density envelope and integrate over
`\mathcal J\times I`. This gives `(EP.10r6)`. ∎

### Corollary EP.10s (the braid-compatible remaining synchronization wall is one overlap-mismatch theorem plus one maximal-envelope theorem)

In the exact language of the pair-to-cocycle synchronization braid harvest, the
remaining synchronization globalization wall is no longer best read as
“weighted promotion” alone. It is:

```math
\boxed{\text{construct local projective sections on strip windows}}
\quad+\quad
\boxed{\text{control overlap mismatch by one envelope }\mathfrak d_J}
\quad+\quad
\boxed{\text{integrate the maximal local source envelope}}.
\tag{EP.10s1}
```

Specializing `\mathfrak e_\ell` to the explicit local source scalars from
`(EP.10q1)`-`(EP.10q2)`, this becomes:

```math
\boxed{\text{overlap mismatch control for the local projective sections}}
\quad+\quad
\boxed{
\int_I\int_{\mathcal J}
\Bigl(
\mathcal M_{\Lambda}X
+
\mathcal M_{\Lambda}Y
\Bigr)
d\mu_J^{pair}(a,b)\,dt
\le
C(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}})
}.
\tag{EP.10s2}
```

This is the sharpest theorem-safe exact-potential synchronization wall
currently supported on disk.

### Proposition EP.10t (overlap mismatch reduces to Davis-Kahan control of local PSD surrogate mismatch)

Assume the local projective sections in Proposition `EP.10r` arise as top
projectors of local symmetric PSD surrogates:

```math
\widehat P_{J,\ell}
=
\Pi_{\max}\bigl(\widetilde S_{J,\ell}\bigr)
\qquad\text{on }\Lambda_\ell.
\tag{EP.10t1}
```

Assume further that on every overlap `\Lambda_\ell\cap\Lambda_{\ell'}` the two
local surrogates have simple top gaps bounded below by `\gamma_\ast>0`, and
their operator-norm mismatch obeys

```math
\bigl\|
\widetilde S_{J,\ell}(a,b,t)-\widetilde S_{J,\ell'}(a,b,t)
\bigr\|_{\mathrm{op}}
\le
\varepsilon_{\ell\ell'}^{sur}(a,b,t).
\tag{EP.10t2}
```

Then the overlap projector defect satisfies the Davis-Kahan bound

```math
\delta_{\ell\ell'}(a,b,t)
\le
\frac{4\,(\varepsilon_{\ell\ell'}^{sur}(a,b,t))^2}{\gamma_\ast^2}.
\tag{EP.10t3}
```

Consequently, if one has an overlap-surrogate envelope
`\mathfrak s_J(a,b,t)` such that on every active overlap

```math
\varepsilon_{\ell\ell'}^{sur}(a,b,t)\le \mathfrak s_J(a,b,t),
\tag{EP.10t4}
```

then Proposition `EP.10r` applies with

```math
\mathfrak d_J(a,b,t)
:=
\frac{4\,\mathfrak s_J(a,b,t)^2}{\gamma_\ast^2}.
\tag{EP.10t5}
```

So the overlap-mismatch wall is reduced exactly to:

```math
\boxed{\text{local simple-top overlap gap floor}}
\quad+\quad
\boxed{\text{one overlap-surrogate mismatch envelope }\mathfrak s_J}.
\tag{EP.10t6}
```

**Proof.**
Apply the same one-dimensional Davis-Kahan projector comparison used in
`PPCJ'` to the symmetric pair
`\bigl(\widetilde S_{J,\ell},\widetilde S_{J,\ell'}\bigr)` on the overlap.
Because both top gaps are bounded below by `\gamma_\ast`, the rank-one
projectors satisfy

```math
d_{\mathrm{proj}}\!\bigl(
\widehat P_{J,\ell},\widehat P_{J,\ell'}
\bigr)^2
\le
\frac{4\,\|\widetilde S_{J,\ell}-\widetilde S_{J,\ell'}\|_{\mathrm{op}}^2}
{\gamma_\ast^2},
\tag{EP.10t7}
```

which is `(EP.10t3)`. Substituting `(EP.10t4)` gives `(EP.10t5)`. ∎

### Corollary EP.10u (the remaining synchronization wall is now overlap-surrogate control plus maximal-envelope integrability)

Combining `EP.10s` and `EP.10t`, the exact remaining synchronization wall on
disk is:

```math
\boxed{\text{construct local PSD surrogates with local simple-top gaps}}
\quad+\quad
\boxed{\text{control their overlap mismatch by one envelope }\mathfrak s_J}
\quad+\quad
\boxed{
\int_I\int_{\mathcal J}
\Bigl(
\mathcal M_{\Lambda}X
+
\mathcal M_{\Lambda}Y
+
\mathfrak s_J^2/\gamma_\ast^2
\Bigr)
d\mu_J^{pair}(a,b)\,dt
\le
C(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}})
}.
\tag{EP.10u1}
```

Here `X,Y` are the scalarized local entrance/drift source prices from
`(EP.10oa1)`-`(EP.10oa3)`.

This is the sharpest theorem-safe exact-potential synchronization wall I can
justify from the current on-disk packet without inventing a new observable
surrogate theorem beyond the local `PSJ+` family.

### Proposition EP.10v (the synchronization maximal-envelope wall reduces to one windowwise pricing / Carleson packet)

Write

```math
d\nu_J(a,b,t):=d\mu_J^{pair}(a,b)\,dt
\tag{EP.10v1}
```

on `\mathcal J\times I`. Let `\{\Lambda_\ell\}_\ell` be the local
synchronization family from `EP.10u`, and let `\mathcal O_\Lambda` be the set
of ordered overlap pairs `(\ell,\ell')` with
`\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})>0`.

Assume there are nonnegative window prices `A_\ell,B_\ell` and overlap prices
`S_{\ell\ell'}` such that

```math
X_\ell\le A_\ell,
\qquad
Y_\ell\le B_\ell,
\tag{EP.10v2}
```

for every window, and

```math
\mathfrak s_J(a,b,t)\le S_{\ell\ell'}
\qquad
\text{for }\nu_J\text{-a.e. }(a,b,t)\in\Lambda_\ell\cap\Lambda_{\ell'}.
\tag{EP.10v3}
```

Then the synchronization wall `(EP.10u1)` is implied by the single familywise
pricing estimate

```math
\sum_\ell (A_\ell+B_\ell)\,\nu_J(\Lambda_\ell)
+
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.10v4}
```

So the exact remaining synchronization globalization wall is now a windowwise
Carleson-type pricing theorem for the local family.

**Proof.**
By definition of the maximal envelopes,

```math
\mathcal M_{\Lambda}X(a,b,t)
\le
\sum_{\ell:\,(a,b,t)\in\Lambda_\ell} A_\ell
\le
\sum_\ell A_\ell\,\mathbf 1_{\Lambda_\ell}(a,b,t),
\tag{EP.10v5}
```

and likewise

```math
\mathcal M_{\Lambda}Y(a,b,t)
\le
\sum_\ell B_\ell\,\mathbf 1_{\Lambda_\ell}(a,b,t).
\tag{EP.10v6}
```

Integrating gives

```math
\int \mathcal M_{\Lambda}X\,d\nu_J
\le
\sum_\ell A_\ell\,\nu_J(\Lambda_\ell),
\qquad
\int \mathcal M_{\Lambda}Y\,d\nu_J
\le
\sum_\ell B_\ell\,\nu_J(\Lambda_\ell).
\tag{EP.10v7}
```

For the overlap term,

```math
\mathfrak s_J(a,b,t)^2
\le
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\mathbf 1_{\Lambda_\ell\cap\Lambda_{\ell'}}(a,b,t),
\tag{EP.10v8}
```

for `\nu_J`-a.e. point covered by the overlap family, so

```math
\int \mathfrak s_J^2\,d\nu_J
\le
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'}).
\tag{EP.10v9}
```

Substitute `(EP.10v7)`-`(EP.10v9)` into `(EP.10u1)`. ∎

### Corollary EP.10w (the first irreducible synchronization wall is now explicit windowwise pricing)

Combining `EP.10u` and `EP.10v`, the exact-potential synchronization branch is
reduced to the following theorem-facing package:

```math
\boxed{\text{local PSD surrogates with local simple-top gaps}}
\quad+\quad
\boxed{\text{windowwise entrance/drift prices }A_\ell,B_\ell}
\quad+\quad
\boxed{\text{window-overlap surrogate prices }S_{\ell\ell'}}
\quad+\quad
\boxed{(EP.10v4)}.
\tag{EP.10w1}
```

This is the first genuinely irreducible pricing wall after the repackaging
loop: either prove the familywise window-sum estimate `(EP.10v4)`, or stop
claiming further discharge on the synchronization branch.

### Proposition EP.10x (the familywise synchronization pricing wall reduces to windowwise and overlapwise source pricing plus observation summability)

Assume the setting of `EP.10v`. Suppose there exist nonnegative windowwise
synchronization observation packets `\mathcal E_{J,\ell}^{sync}` and overlapwise
packets `\mathcal E_{J,\ell\ell'}^{ov}` together with error prices
`\varepsilon_{J,\ell}^{sync},\eta_{J,\ell\ell'}^{sync}` such that

```math
(A_\ell+B_\ell)\,\nu_J(\Lambda_\ell)
\le
C_\ell^{sync}\,\mathcal E_{J,\ell}^{sync}
\varepsilon_{J,\ell}^{sync},
\tag{EP.10x1}
```

and

```math
\frac{1}{\gamma_\ast^2}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
D_{\ell\ell'}^{sync}\,\mathcal E_{J,\ell\ell'}^{ov}
\eta_{J,\ell\ell'}^{sync},
\tag{EP.10x2}
```

for every active window and overlap pair.

Assume further that these packets satisfy the familywise summability bounds

```math
\sum_\ell C_\ell^{sync}\,\mathcal E_{J,\ell}^{sync}
\le
C_{\mathrm{sync},1}\,
\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{EP.10x3}
```

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
D_{\ell\ell'}^{sync}\,\mathcal E_{J,\ell\ell'}^{ov}
\le
C_{\mathrm{sync},2}\,
\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{EP.10x4}
```

and

```math
\sum_\ell \varepsilon_{J,\ell}^{sync}
+
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}\eta_{J,\ell\ell'}^{sync}
\le
\varepsilon_{J,\mathrm{sync}}^{fam}.
\tag{EP.10x5}
```

Then the pricing wall `(EP.10v4)` follows:

```math
\sum_\ell (A_\ell+B_\ell)\,\nu_J(\Lambda_\ell)
+
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr)
+
\varepsilon_{J,\mathrm{sync}}^{fam}.
\tag{EP.10x6}
```

So the explicit windowwise pricing wall is not a new fourth branch architecture.
It reduces to the same family-first pattern already present in `F`: local
window packets, overlap packets, and one observation-side summability theorem.

**Proof.**
Sum `(EP.10x1)` over `\ell` and `(EP.10x2)` over overlap pairs
`(\ell,\ell')\in\mathcal O_\Lambda`, then insert `(EP.10x3)`-`(EP.10x5)`. ∎

### Corollary EP.10y (the remaining synchronization wall is two primitive pricing laws plus one familywise summability theorem)

After `EP.10x`, the exact-potential synchronization branch is reduced to three
primitive theorem packets:

1. one **windowwise entrance/drift pricing law** of the form `(EP.10x1)`;
2. one **overlap-surrogate pricing law** of the form `(EP.10x2)`;
3. one **familywise observation / error summability law** of the form
   `(EP.10x3)`-`(EP.10x5)`.

Equivalently, the live synchronization wall is now:

```math
\boxed{\text{price each local entrance/drift window}}
\quad+\quad
\boxed{\text{price each overlap-surrogate mismatch}}
\quad+\quad
\boxed{\text{sum those prices against the observation/error ledger}}.
\tag{EP.10y1}
```

This is the exact theorem-facing point where further progress has to come from
new mathematics rather than sharper repackaging.

### Corollary EP.10z (the canonical price choice is the local source scalar itself)

In Proposition `EP.10v`, there is no gain in introducing larger abstract window
prices if one only wants a theorem-safe sufficient packet. The canonical choice
is

```math
A_\ell:=X_\ell,
\qquad
B_\ell:=Y_\ell,
\tag{EP.10z1}
```

and for overlaps

```math
S_{\ell\ell'}
:=
\operatorname*{ess\,sup}_{(a,b,t)\in\Lambda_\ell\cap\Lambda_{\ell'}}
\mathfrak s_J(a,b,t).
\tag{EP.10z2}
```

Then `(EP.10v4)` becomes the explicit familywise source sum

```math
\sum_\ell (X_\ell+Y_\ell)\,\nu_J(\Lambda_\ell)
+
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\Bigl(
\operatorname*{ess\,sup}_{\Lambda_\ell\cap\Lambda_{\ell'}}
\mathfrak s_J
\Bigr)^2
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.10z3}
```

So the synchronization branch is reduced to one explicit weighted source sum
over the local window family and its overlaps.

**Proof.**
The choice `(EP.10z1)`-`(EP.10z2)` is admissible in `(EP.10v2)`-`(EP.10v3)` by
definition, so `(EP.10z3)` is just `(EP.10v4)` specialized to the minimal
sufficient prices. ∎

### Corollary EP.10aa (the synchronization wall is now one explicit familywise source-summation theorem)

Take the scalarized entrance and drift source prices from `(EP.10oa1)`-
`(EP.10oa3)` and the
overlap-surrogate mismatch source from `(EP.10t4)`. Then the remaining
synchronization wall is exactly:

```math
\boxed{
\sum_\ell (q_\ell+\kappa_\ell)\,\nu_J(\Lambda_\ell)
+
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\Bigl(
\operatorname*{ess\,sup}_{\Lambda_\ell\cap\Lambda_{\ell'}}
\varepsilon_{\ell\ell'}^{sur}
\Bigr)^2
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
}
\tag{EP.10aa1}
```

This is the sharpest explicit form of the exact-potential synchronization wall
now on disk: one familywise weighted summation theorem for the actual local
source scalars, not a symbolic pricing schema.

### Corollary EP.10ab (the entrance window price may be taken to be the scalarized local projective entrance ledger)

Let each local synchronization window `\Lambda_\ell` lie over one strip
`I_\ell=[t_{\ell,0},t_{\ell,1}]` and one active pair subfamily
`\mathcal J_\ell`. Define the scalarized local entrance ledger

```math
\mathbf B_{\ell,\mathrm{proj}}^{ent}
:=
\operatorname*{ess\,sup}_{(a,b)\in\mathcal J_\ell}
\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;t_{\ell,0}),
\tag{EP.10ab1}
```

where `\mathcal B_{J,\mathrm{proj}}^{ent}` is the installed entrance packet
from `(D.7mh1)`.

By the proof of Corollary `D.7mh`, evaluating `(D.7mg1)` at the strip entrance
gives

```math
\alpha_J(a,b,t_{\ell,0})
\le
C\,\mathcal B_{J,\mathrm{proj}}^{ent}(a,b;t_{\ell,0}).
\tag{EP.10ab2}
```

Therefore the entrance parameter in the local synchronization packet may be
chosen as

```math
X_\ell:=C\,\mathbf B_{\ell,\mathrm{proj}}^{ent}.
\tag{EP.10ab3}
```

So the entrance half of the familywise source-summation wall `(EP.10aa1)` no
longer needs a separate material-gap or auxiliary-projector pricing theorem. It
is already reduced to the local projective entrance ledger on each window.

Consequently the synchronization wall sharpens to

```math
\sum_\ell
\bigl(\mathbf B_{\ell,\mathrm{proj}}^{ent}+\kappa_\ell\bigr)\,
\nu_J(\Lambda_\ell)
+
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\Bigl(
\operatorname*{ess\,sup}_{\Lambda_\ell\cap\Lambda_{\ell'}}
\varepsilon_{\ell\ell'}^{sur}
\Bigr)^2
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{EP.10ab4}
```

with the drift side still carried by the local supplier `\kappa_\ell`.

**Proof.**
For the local synchronization theorem, one only needs an upper bound on the
entrance misalignment `\alpha_J(a,b,t_{\ell,0})`. Formula `(EP.10ab2)` supplies
such a bound directly from `\mathcal B_{J,\mathrm{proj}}^{ent}`. Taking the
essential supremum over `\mathcal J_\ell` yields `(EP.10ab3)`, and substituting
that choice into `(EP.10aa1)` gives `(EP.10ab4)`. ∎

### Corollary EP.10ac (the first truly new synchronization debt is now the drift-plus-overlap family sum)

After `EP.10ab`, the exact-potential synchronization wall is no longer a
three-source family sum. The entrance side is absorbed into the installed local
projective entrance ledger. The genuinely new debts are now exactly:

1. one **windowwise drift pricing law** for `\kappa_\ell`;
2. one **overlap-surrogate family sum** for
   `\varepsilon_{\ell\ell'}^{sur}`;
3. one **familywise summability theorem** that prices those against the
   observation/error ledger.

That is the sharpest honest compression of the synchronization wall currently
available on disk.

### Corollary EP.10ad (the drift pricing law is not discharged by the existing integrated forcing packets)

The local synchronization theorem still requires a scalar windowwise drift price

```math
Y_\ell\in\{\boldsymbol\kappa_\ell^{\beta},\boldsymbol\kappa_\ell^{ad}\},
\tag{EP.10ad1}
```

that is, an `L^\infty`-type control on the local corotational drift. By
contrast, the installed exact-potential forcing packets on disk pay only the
integrated budgets

```math
\mathcal B_{J,\beta}^{force}(a,b;I_\ell)
=
\int_{I_\ell}\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt,
\tag{EP.10ad2}
```

or on the adiabatic branch

```math
\mathcal B_{J,\mathrm{adi}}^{force}(a,b;I_\ell)
=
\int_{I_\ell}
\frac{|K_J^{seg}(a,b,t)n_J(a,b,t)|^2}{g_J(a,b,t)}
+
\frac{\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}^2}{g_J(a,b,t)^3}\,dt.
\tag{EP.10ad3}
```

Those are exactly the budgets used in `D.7mh2`-`(D.7mh3)`, `F.9`-`(F.10)`, and
`EP.3b`-`(EP.3c)`. No installed theorem on disk currently upgrades these
integrated forcing budgets to the scalar windowwise drift ceiling
`(EP.10ad1)`.

So the drift side of the synchronization wall does **not** presently collapse
to the existing `L^2/g` forcing route. The exact missing step is one local
force-ceiling theorem.

### Proposition EP.10ae (the narrowest sufficient replacement for the drift pricing law is one local force-ceiling theorem)

A theorem-safe sufficient replacement for the drift pricing law is:

```math
\boldsymbol\kappa_\ell^{\beta}\,\nu_J(\Lambda_\ell)
\le
C_{\ell}^{drift}\,\mathcal E_{J,\ell}^{drift}
+
\varepsilon_{J,\ell}^{drift},
\tag{EP.10ae1}
```

or on the adiabatic branch,

```math
\boldsymbol\kappa_\ell^{ad}\,\nu_J(\Lambda_\ell)
\le
\widetilde C_{\ell}^{drift}\,\widetilde{\mathcal E}_{J,\ell}^{drift}
+
\widetilde\varepsilon_{J,\ell}^{drift},
\tag{EP.10ae2}
```

for one windowwise drift packet `\mathcal E_{J,\ell}^{drift}` built from local
forcing observables.

Equivalently: the remaining new drift debt is not the global forcing series
from `F` or `EP.12d`; it is one theorem converting local forcing information
into the windowwise drift price needed by `PSJ+.SST`.

### Corollary EP.10af (the first genuinely new synchronization debt is now a local force-ceiling theorem)

After `EP.10ab`, the exact remaining synchronization debts are most honestly
read as:

1. one **local force-ceiling theorem** of the form `(EP.10ae1)` or
   `(EP.10ae2)`;
2. one **overlap-surrogate family sum** for `\varepsilon_{\ell\ell'}^{sur}`;
3. one **familywise observation/error summability theorem** for those two
   priced packets.

This is the first point in the current branch where the work stops being
repackaging and turns into a genuinely new local theorem obligation.

### Proposition EP.10ag (overlap-surrogate mismatch reduces to kernel mismatch of the local projector-moment constructions)

Assume that on every local window `\Lambda_\ell` the PSD surrogate is built
from the same transported pair-projector measure by a local nonnegative kernel:

```math
\widetilde S_{J,\ell}(z)
:=
\int
w_\ell(z;a',b')\,P_{a'b'}(t)\,d\mu_J^{pair}(a',b'),
\qquad
z=(a,b,t)\in \Lambda_\ell.
\tag{EP.10ag1}
```

On an overlap `\Lambda_\ell\cap\Lambda_{\ell'}`, assume both surrogates are
evaluated at the same point `z`. Then

```math
\bigl\|
\widetilde S_{J,\ell}(z)-\widetilde S_{J,\ell'}(z)
\bigr\|_{\mathrm{op}}
\le
\int
\bigl|
w_\ell(z;a',b')-w_{\ell'}(z;a',b')
\bigr|
d\mu_J^{pair}(a',b').
\tag{EP.10ag2}
```

So one may take the overlap-surrogate source in `EP.10t4)` to be the local
kernel-mismatch envelope

```math
\varepsilon_{\ell\ell'}^{sur}(z)
:=
\int
\bigl|
w_\ell(z;a',b')-w_{\ell'}(z;a',b')
\bigr|
d\mu_J^{pair}(a',b').
\tag{EP.10ag3}
```

Consequently the overlap part of the synchronization wall reduces to the
familywise weighted kernel-mismatch sum

```math
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\Bigl(
\operatorname*{ess\,sup}_{\Lambda_\ell\cap\Lambda_{\ell'}}
\varepsilon_{\ell\ell'}^{sur}
\Bigr)^2
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\tag{EP.10ag4}
```

with `\varepsilon_{\ell\ell'}^{sur}` given explicitly by `(EP.10ag3)`.

**Proof.**
Subtract the two integral representations in `(EP.10ag1)` and use the triangle
inequality in operator norm. Since each rank-one projector `P_{a'b'}(t)` has
operator norm `1`,

```math
\Bigl\|
\int
\bigl(w_\ell-w_{\ell'}\bigr)P_{a'b'}\,d\mu_J^{pair}
\Bigr\|_{\mathrm{op}}
\le
\int
\bigl|w_\ell-w_{\ell'}\bigr|\,\|P_{a'b'}\|_{\mathrm{op}}\,d\mu_J^{pair},
\tag{EP.10ag5}
```

which is exactly `(EP.10ag2)`. ∎

### Corollary EP.10ah (after the entrance reduction, the new synchronization wall is force ceiling plus kernel-mismatch family sum)

Combining `EP.10ab` and `EP.10ag`, the genuinely new synchronization debts are
now:

1. one **local force-ceiling theorem** converting local forcing information
   into the drift price `\boldsymbol\kappa_\ell`;
2. one **familywise weighted kernel-mismatch sum** from `(EP.10ag4)`;
3. one **final observation/error summability theorem** pricing those two
   families against `\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}`.

So the overlap side is no longer an abstract surrogate-mismatch object either.
It is reduced to the actual mismatch of the local projector-moment kernels.

`(EP.10d1)` is not currently an installed theorem on the selector-good family.
It isolates the remaining interface precisely: without a theorem that promotes
the plain pair-measure boot packet to the weighted ledger `M_J^2\,d\mu_J`, the
highway reduction still stops one step short of the live exact branch.

### Proposition EP.10ai (normalized localizer kernels collapse the overlap-surrogate price to bounded-overlap geometry)

Keep the setting of `EP.10ag`, and assume in addition that each local
projector-moment kernel is a probability density in the source pair variables:

```math
w_\ell(z;a',b')\ge 0,
\qquad
\int w_\ell(z;a',b')\,d\mu_J^{pair}(a',b')=1
\qquad
\text{for }\nu_J\text{-a.e. }z\in\Lambda_\ell.
\tag{EP.10ai1}
```

Then on every active overlap `\Lambda_\ell\cap\Lambda_{\ell'}`, one has

```math
\varepsilon_{\ell\ell'}^{sur}(z)\le 2
\qquad
\text{for }\nu_J\text{-a.e. }z\in\Lambda_\ell\cap\Lambda_{\ell'}.
\tag{EP.10ai2}
```

So the overlap price in `EP.10v3` may be chosen as

```math
S_{\ell\ell'}:=2,
\tag{EP.10ai3}
```

and the overlap contribution to the synchronization wall obeys

```math
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
\frac{4}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'}).
\tag{EP.10ai4}
```

If moreover the local synchronization family has bounded multiplicity

```math
\sum_\ell \mathbf 1_{\Lambda_\ell}(z)\le N_\Lambda
\qquad
\text{for }\nu_J\text{-a.e. }z\in\mathcal J\times I,
\tag{EP.10ai5}
```

then

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
N_\Lambda^2\,
\nu_J\!\Bigl(\bigcup_\ell \Lambda_\ell\Bigr),
\tag{EP.10ai6}
```

and therefore

```math
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
\frac{4N_\Lambda^2}{\gamma_\ast^2}\,
\nu_J\!\Bigl(\bigcup_\ell \Lambda_\ell\Bigr).
\tag{EP.10ai7}
```

So under the natural normalized-localizer hypothesis, the overlap-surrogate
side is no longer a separate analytic wall. It reduces to one geometric cover
budget for the local synchronization family.

**Proof.**
By `(EP.10ag3)` and the probability normalization `(EP.10ai1)`,

```math
\varepsilon_{\ell\ell'}^{sur}(z)
=
\int |w_\ell(z;a',b')-w_{\ell'}(z;a',b')|\,d\mu_J^{pair}(a',b')
\le
\int w_\ell\,d\mu_J^{pair}
+
\int w_{\ell'}\,d\mu_J^{pair}
=2,
\tag{EP.10ai8}
```

which is `(EP.10ai2)`. Substituting `S_{\ell\ell'}=2` gives `(EP.10ai4)`.
For `(EP.10ai6)`, observe that

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\mathbf 1_{\Lambda_\ell\cap\Lambda_{\ell'}}(z)
\le
\Bigl(\sum_\ell \mathbf 1_{\Lambda_\ell}(z)\Bigr)^2
\le
N_\Lambda^2
\mathbf 1_{\cup_\ell \Lambda_\ell}(z),
\tag{EP.10ai9}
```

and integrate in `\nu_J`. ∎

### Corollary EP.10aj (the overlap-surrogate side reduces to the same retained cover geometry once the local synchronization family is subordinate to the retained windows)

Assume the hypotheses of `EP.10ai`. Assume further that the local
synchronization family is subordinate to the retained exact-potential windows in
the sense that each `\Lambda_\ell` lies in some retained box
`\mathcal J_{k(\ell)}\times I_{k(\ell)}`, and at most `M_{\mathrm{sub}}`
local synchronization windows lie over any one retained box. Then

```math
\nu_J\!\Bigl(\bigcup_\ell \Lambda_\ell\Bigr)
\le
\sum_\ell \nu_J(\Lambda_\ell)
\le
M_{\mathrm{sub}}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{EP.10aj1}
```

Consequently the overlap-surrogate family sum is bounded by

```math
\frac{1}{\gamma_\ast^2}
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
S_{\ell\ell'}^2\,\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
\frac{4N_\Lambda^2M_{\mathrm{sub}}}{\gamma_\ast^2}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{EP.10aj2}
```

So once the retained family already satisfies the bounded-overlap / summability
packet of `V3`, the overlap-surrogate side is absorbed into the same geometric
cover budget. It is no longer a genuinely new synchronization theorem.

The exact remaining new synchronization debts therefore shrink to:

1. one local force-ceiling theorem of the form `(EP.10ae1)` or `(EP.10ae2)`;
2. one familywise summability theorem pricing the resulting drift windows
   against `\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}`.

**Proof.**
The first inequality in `(EP.10aj1)` is trivial. For the second, group the
local synchronization windows by their parent retained box and use the
multiplicity bound `M_{\mathrm{sub}}`. Then substitute `(EP.10aj1)` into
`(EP.10ai7)`. ∎

### Corollary EP.10ajA (the installed minimal global exact-potential route bypasses the local force-ceiling wall and stops at retained-cover counting)

Keep the exact global route `EP.8`, and keep the synchronization-side entrance
reduction `EP.10ab` together with the retained-cover overlap reduction
`(EP.10aj2)`. On the installed localized-projector packet, replace the local
drift price by the already-installed pair-family angular-forcing ledger
`D.7ie1`, or on the separate adiabatic subbranch by `D.7ie3`.

Then the coarse localized-projector synchronization channel no longer needs the
local force-ceiling theorem `(EP.10ae1)`-`(EP.10ae2)`. Its remaining genuinely
new global theorem content is exactly one scalar retained-cover counting law

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.10ajA1}
```

Equivalently, the installed minimal global exact-potential packet may now be
read as

```math
\boxed{\texttt{one maximal-envelope entrance theorem}}
\;+\;
\boxed{\texttt{installed angular-forcing ledger}}
\;+\;
\boxed{\texttt{one scalar retained-cover counting theorem}}
\Longrightarrow
\boxed{\texttt{global coarse localized-projector synchronization}}.
\tag{EP.10ajA2}
```

This is the honest current stopping point on the installed minimal global
route. Any further collapse needs the stronger adiabatic window-envelope /
packing hypotheses `(F.11h)` / `(EP.7e)`-`(EP.7f)`, so it belongs to the
stronger adiabatic branch and not to the present minimal exact-potential route.

**Proof.**
The entrance side is already absorbed by `EP.10ab`, and the overlap side is
already reduced to retained-cover geometry by `(EP.10aj2)`. On the installed
localized-projector packet, the local drift side is paid by `D.7ie1` rather
than by a new `EP.10ae`-type force-ceiling theorem. So only the scalar
retained-cover counting law `(EP.10ajA1)` remains genuinely new. This is
exactly the coarse-route endpoint isolated by the localized-projector endpoint
notes now on disk. ∎

### Proposition EP.10ak (the integrated `L^2/g` forcing packet alone cannot imply the windowwise drift ceiling)

Fix a nontrivial window `I_\ell=[t_{\ell,0},t_{\ell,1}]` and a gap floor
`g_J(a,b,t)\ge \gamma_\ast>0` on `I_\ell`. There is no universal function
`\Phi=\Phi(\gamma_\ast,|I_\ell|,\cdot)` such that every measurable forcing
profile `\beta_J(a,b,\cdot)` obeys

```math
\sup_{s\in I_\ell}\beta_J(a,b,s)
\le
\Phi\!\left(
\gamma_\ast,
|I_\ell|,
\int_{I_\ell}\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}\,dt
\right).
\tag{EP.10ak1}
```

Equivalently, the existing integrated forcing budget `(EP.10ad2)` cannot by
itself imply the local drift ceiling `(EP.10ae1)`. The same obstruction holds
for the adiabatic packet `(EP.10ad3)` relative to `(EP.10ae2)`.

**Proof.**
By time translation and rescaling it is enough to take `I_\ell=[0,1]` and
`g_J\equiv \gamma_\ast`. For `n\ge 1`, define the spike profile

```math
\beta_n(t):=n^{1/2}\,\mathbf 1_{[0,n^{-1}]}(t).
\tag{EP.10ak2}
```

Then

```math
\int_0^1 \frac{\beta_n(t)^2}{g_J(t)}\,dt
=
\gamma_\ast^{-1}\int_0^1 \beta_n(t)^2\,dt
=
\gamma_\ast^{-1},
\tag{EP.10ak3}
```

independent of `n`, while

```math
\sup_{t\in[0,1]}\beta_n(t)=n^{1/2}\to\infty.
\tag{EP.10ak4}
```

So no bound of the form `(EP.10ak1)` can hold. For the adiabatic packet, take
`|K_J^{seg}n_J|=\beta_n`, `\partial_t A_J^{seg}\equiv 0`, and
`g_J\equiv \gamma_\ast`; then `(EP.10ad3)` stays constant while the adiabatic
ceiling `(EP.10o5)` diverges in the same way. ∎

### Corollary EP.10al (the local force-ceiling theorem genuinely needs extra input beyond the current forcing packets)

Any successful theorem of the form `(EP.10ae1)` or `(EP.10ae2)` must use input
strictly stronger than the existing integrated forcing packets
`(EP.10ad2)`-`(EP.10ad3)`. In particular, it must add at least one new local
ingredient such as:

1. a time-regularity packet for the forcing profile;
2. a pointwise-in-time ceiling supplied by a stronger local observable;
3. a genuine window-selection rule that replaces the supremum drift price by an
   averaged price.

So after `EP.10aj`, the exact remaining synchronization wall is no longer
ambiguous: the only genuinely new analytic burden is the local force-ceiling
theorem, together with the familywise summability of whatever stronger local
drift price it supplies.

### Corollary EP.10am (on the adiabatic branch, the force-ceiling debt reduces to one rotational ceiling packet plus existing `V1` data)

Fix one retained gap window `\mathcal J_k\times I_k^{gap}` from `(AS.7z2)`-
`(AS.7z3)`, and assume each local synchronization window `\Lambda_\ell`
subordinate to that block satisfies `\Lambda_\ell\subset \mathcal J_k\times
I_k^{gap}`. Assume furthermore that on the same retained block one has the
windowwise data

```math
g_J(a,b,t)\ge \gamma_k,
\qquad
\sup_{t\in I_k^{gap}}\|\partial_t A_J^{seg}(a,b,t)\|_{\mathrm{op}}\le N_k,
\tag{EP.10am1}
```

and one additional rotational ceiling

```math
\sup_{t\in I_k^{gap}}|K_J^{seg}(a,b,t)n_J(a,b,t)|
\le
M_{k,\infty}^{rot}.
\tag{EP.10am2}
```

Then every subordinate local synchronization window satisfies the adiabatic
drift ceiling

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_{k,\infty}^{rot}
+
\frac{N_k}{\gamma_k}
\right).
\tag{EP.10am3}
```

If at most `M_{\mathrm{sub}}` local synchronization windows lie over each
retained block, then

```math
\sum_{\ell:\,k(\ell)=k}
\boldsymbol\kappa_\ell^{ad}\,\nu_J(\Lambda_\ell)
\le
2M_{\mathrm{sub}}
\left(
M_{k,\infty}^{rot}
+
\frac{N_k}{\gamma_k}
\right)
|I_k^{gap}|\,\mu_J^{pair}(\mathcal J_k),
\tag{EP.10am4}
```

and hence the adiabatic drift side reduces to one familywise summability packet
for the quantities

```math
\left(
M_{k,\infty}^{rot}
+
\frac{N_k}{\gamma_k}
\right)
|I_k^{gap}|\,\mu_J^{pair}(\mathcal J_k).
\tag{EP.10am5}
```

So on the adiabatic branch the local force-ceiling theorem is no longer a fully
new two-term burden. Its `\partial_t A_J^{seg}` and gap pieces are already
supplied by the existing `V1` packet; the only genuinely new local input is the
rotational ceiling `(EP.10am2)`.

**Proof.**
On each subordinate local window, `(EP.10o5)` and the bounds
`g_J\ge\gamma_k`, `\sup\|\partial_t A_J^{seg}\|_{\mathrm{op}}\le N_k`,
`\sup|K_J^{seg}n_J|\le M_{k,\infty}^{rot}` give `(EP.10am3)` immediately. Then
sum over all subordinate local synchronization windows and use the multiplicity
bound `M_{\mathrm{sub}}` to obtain `(EP.10am4)`. ∎

### Proposition EP.10an (the adiabatic rotational ceiling reduces further to the short-window generator envelope)

Keep the setting of `EP.10am`. Since
`K_J^{seg}=\operatorname{Skew}\mathcal M_J`, one has pointwise

```math
|K_J^{seg}(a,b,t)n_J(a,b,t)|
\le
\|K_J^{seg}(a,b,t)\|_{\mathrm{op}}
\le
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}.
\tag{EP.10an1}
```

Therefore a sufficient windowwise replacement for the rotational ceiling
`(EP.10am2)` is

```math
\sup_{t\in I_k^{gap}}
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}
\le
M_{k,\infty}^{gen}.
\tag{EP.10an2}
```

Under `(EP.10an2)`, the adiabatic drift bound becomes

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_{k,\infty}^{gen}
+
\frac{N_k}{\gamma_k}
\right),
\tag{EP.10an3}
```

and hence

```math
\sum_{\ell:\,k(\ell)=k}
\boldsymbol\kappa_\ell^{ad}\,\nu_J(\Lambda_\ell)
\le
2M_{\mathrm{sub}}
\left(
M_{k,\infty}^{gen}
+
\frac{N_k}{\gamma_k}
\right)
|I_k^{gap}|\,\mu_J^{pair}(\mathcal J_k).
\tag{EP.10an4}
```

So the adiabatic branch reduces one step further: the only extra local input is
no longer a separate rotational theorem, but a windowwise generator envelope of
the same type already used in the short-window carrier-mismatch packet
`(AS.7v2)`.

**Proof.**
The first inequality in `(EP.10an1)` is the operator norm bound for a unit
vector, and the second is immediate from
`K_J^{seg}=\operatorname{Skew}\mathcal M_J`. Substituting `(EP.10an2)` into
`(EP.10am3)` gives `(EP.10an3)`, and summing exactly as in `EP.10am` yields
`(EP.10an4)`. ∎

### Proposition EP.10ao (the generator envelope reduces to existing strain data plus one segment-vorticity ceiling)

Work in three dimensions and keep the exact segment generator

```math
\mathcal M_J(a,b,t)
=
\int_0^1 \nabla v_J(\gamma_{ab}(\theta,t),t)\,d\theta
\tag{EP.10ao1}
```

from `(AS.4)`. Let `\omega_J:=\nabla\times v_J`. Then

```math
\operatorname{Skew}\nabla v_J(x,t)\,z
=
\frac12\,\omega_J(x,t)\times z,
\qquad z\in\mathbf R^3,
\tag{EP.10ao2}
```

so

```math
\bigl\|\operatorname{Skew}\nabla v_J(x,t)\bigr\|_{\mathrm{op}}
=
\frac12\,|\omega_J(x,t)|.
\tag{EP.10ao3}
```

Consequently

```math
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}
\le
\|A_J^{seg}(a,b,t)\|_{\mathrm{op}}
+
\frac12\int_0^1
|\omega_J(\gamma_{ab}(\theta,t),t)|\,d\theta.
\tag{EP.10ao4}
```

If on one retained gap block `\mathcal J_k\times I_k^{gap}` one has

```math
\sup_{t\in I_k^{gap}}\|A_J^{seg}(a,b,t)\|_{\mathrm{op}}\le M_k,
\tag{EP.10ao5}
```

and

```math
\sup_{t\in I_k^{gap}}
\int_0^1
|\omega_J(\gamma_{ab}(\theta,t),t)|\,d\theta
\le
\Omega_k^{seg},
\tag{EP.10ao6}
```

then

```math
\sup_{t\in I_k^{gap}}
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}
\le
M_k+\frac12\Omega_k^{seg}.
\tag{EP.10ao7}
```

So the adiabatic generator-envelope packet reduces to:

1. the existing segment-strain envelope `M_k`;
2. one new segment-vorticity ceiling `\Omega_k^{seg}`.

**Proof.**
Decompose
`\nabla v_J=\operatorname{Sym}\nabla v_J+\operatorname{Skew}\nabla v_J`.
By `(AS.5)`,
`\operatorname{Sym}\mathcal M_J=A_J^{seg}`. In three dimensions, the skew part
of a matrix is represented by the cross-product with half the vorticity, which
is `(EP.10ao2)`-`(EP.10ao3)`. Taking the segment average in `(EP.10ao1)` and
using the triangle inequality gives `(EP.10ao4)`. The windowwise bound
`(EP.10ao7)` is then immediate from `(EP.10ao5)`-`(EP.10ao6)`. ∎

### Corollary EP.10ap (the adiabatic local input is now exactly a segment-vorticity ceiling packet)

Combine `EP.10an` with `EP.10ao`. On each retained gap block, if
`(EP.10ao5)` and `(EP.10ao6)` hold, then the adiabatic drift price satisfies

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k+\frac12\Omega_k^{seg}
+
\frac{N_k}{\gamma_k}
\right)
\qquad
\text{for every }\Lambda_\ell\subset\mathcal J_k\times I_k^{gap}.
\tag{EP.10ap1}
```

Hence the adiabatic synchronization branch no longer needs an abstract
generator-envelope theorem. Its exact local input is now:

```math
\boxed{\text{segment-vorticity ceiling }\Omega_k^{seg}}
\quad+\quad
\boxed{\text{existing retained data }(M_k,N_k,\gamma_k)}.
\tag{EP.10ap2}
```

So the adiabatic residual wall is reduced one step further to a vorticity-side
window packet plus the already-installed retained-window geometry.

### Proposition EP.10aq (the segment-vorticity ceiling is genuinely independent of the retained strain packet)

There is no universal function `\Psi` such that the retained strain data
`(M_k,N_k,\gamma_k)` alone force a bound of the form

```math
\Omega_k^{seg}
\le
\Psi(M_k,N_k,\gamma_k).
\tag{EP.10aq1}
```

Equivalently, the new vorticity-side packet in `(EP.10ap2)` does not collapse
to the existing retained `V1` data.

**Proof.**
Work on one fixed window and consider affine divergence-free generators of the
form

```math
\nabla v^{(R)}
=
S+\Omega^{(R)},
\qquad
S:=
\begin{pmatrix}
1&0&0\\
0&0&0\\
0&0&-1
\end{pmatrix},
\qquad
\Omega^{(R)}
:=
\begin{pmatrix}
0&-R&0\\
R&0&0\\
0&0&0
\end{pmatrix},
\tag{EP.10aq2}
```

with parameter `R\ge 1`. Then `\operatorname{tr}S=0`, so each affine field is
divergence free. The symmetric segment strain is identically

```math
A_J^{seg}\equiv S,
\qquad
\partial_t A_J^{seg}\equiv 0,
\tag{EP.10aq3}
```

and its ordered eigenvalues are `1,0,-1`, hence

```math
M_k=\|S\|_{\mathrm{op}}=1,
\qquad
N_k=0,
\qquad
\gamma_k=g_J=1
\tag{EP.10aq4}
```

for every `R`. But the vorticity satisfies

```math
\omega^{(R)}=\nabla\times v^{(R)}=(0,0,2R),
\tag{EP.10aq5}
```

so on every segment and every time,

```math
\int_0^1 |\omega^{(R)}(\gamma_{ab}(\theta,t),t)|\,d\theta
=
2R
\to\infty.
\tag{EP.10aq6}
```

Thus `\Omega_k^{seg}` can be made arbitrarily large while `(M_k,N_k,\gamma_k)`
stay fixed, contradicting `(EP.10aq1)`. ∎

### Corollary EP.10ar (the adiabatic residual wall is exactly one vorticity-side local packet plus familywise summability)

After `EP.10ap` and `EP.10aq`, the adiabatic exact-potential synchronization
branch is reduced as far as the current route supports:

1. one local segment-vorticity ceiling packet `\Omega_k^{seg}`;
2. familywise summability of the resulting window prices
   `\bigl(M_k+\tfrac12\Omega_k^{seg}+N_k/\gamma_k\bigr)|I_k^{gap}|\mu_J^{pair}(\mathcal J_k)`;
3. the already-installed retained-window geometry / overlap packets.

There is no further theorem-safe collapse of the adiabatic local input into the
existing retained strain packet alone.

### Proposition EP.10as (the segment-vorticity ceiling reduces to a chart-local vorticity ceiling)

Keep one retained gap block `\mathcal J_k\times I_k^{gap}` and assume there is
one spatial chart `U_k\subset\mathbf R^3` such that for every active pair
`(a,b)\in\mathcal J_k`, every `t\in I_k^{gap}`, and every `0\le\theta\le 1`,
the segment point `\gamma_{ab}(\theta,t)` lies in `U_k`. Assume on the same
chart one has the local vorticity ceiling

```math
\sup_{(x,t)\in U_k\times I_k^{gap}}
|\omega_J(x,t)|
\le
\Omega_{k,\infty}^{loc}.
\tag{EP.10as1}
```

Then the segment-vorticity ceiling from `(EP.10ao6)` holds automatically with

```math
\Omega_k^{seg}\le \Omega_{k,\infty}^{loc}.
\tag{EP.10as2}
```

Consequently the adiabatic drift price on every subordinate local
synchronization window obeys

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k+\frac12\Omega_{k,\infty}^{loc}
+
\frac{N_k}{\gamma_k}
\right).
\tag{EP.10as3}
```

So once the retained family is subordinate to a bounded spatial chart, the
adabatic local input is reduced again: it is enough to prove one chart-local
vorticity `L^\infty` ceiling on that retained block.

**Proof.**
For every admissible pair and time, the segment stays inside `U_k`, so

```math
\int_0^1 |\omega_J(\gamma_{ab}(\theta,t),t)|\,d\theta
\le
\int_0^1 \Omega_{k,\infty}^{loc}\,d\theta
=
\Omega_{k,\infty}^{loc},
\tag{EP.10as4}
```

which is exactly `(EP.10as2)`. Substituting into `(EP.10ap1)` gives
`(EP.10as3)`. ∎

### Proposition EP.10at (a chart-local pointwise Besov ceiling suffices for the adiabatic vorticity packet)

Keep the setting of `EP.10as`. Assume there is a cutoff
`\chi_k\in C_c^\infty(U_k)` such that `\chi_k\equiv 1` on every segment point
`\gamma_{ab}(\theta,t)` with `(a,b)\in\mathcal J_k`, `t\in I_k^{gap}`,
`0\le\theta\le 1`. If

```math
\sup_{t\in I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}(\mathbf R^3)}
\le
W_k,
\tag{EP.10at1}
```

then

```math
\Omega_{k,\infty}^{loc}
\le
C_{\mathrm{emb}}\,W_k,
\tag{EP.10at2}
```

and hence the adiabatic drift price obeys

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k+\frac12 C_{\mathrm{emb}}W_k
+
\frac{N_k}{\gamma_k}
\right)
\qquad
\text{for every }\Lambda_\ell\subset\mathcal J_k\times I_k^{gap}.
\tag{EP.10at3}
```

So the adiabatic local vorticity packet closes once one proves a chart-local
pointwise critical Besov ceiling.

**Proof.**
By the standard inhomogeneous embedding
`B^0_{\infty,1}(\mathbf R^3)\hookrightarrow L^\infty(\mathbf R^3)`,

```math
\sup_{x\in U_k}|\omega_J(x,t)|
\le
\|\chi_k\,\omega_J(\cdot,t)\|_{L^\infty}
\le
C_{\mathrm{emb}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}},
\tag{EP.10at4}
```

for every `t\in I_k^{gap}` because `\chi_k\equiv 1` on the relevant segment
region. Taking the time supremum gives `(EP.10at2)`, and then `EP.10as3`
applies. ∎

### Proposition EP.10au (the existing time-integrated vorticity packets do not imply the chart-local pointwise ceiling)

There is no universal function `\Theta` such that either of the time-integrated
quantities

```math
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\tag{EP.10au1}
```

or

```math
\int_{I_k^{gap}}
\|\omega_J(\cdot,t)\|_{L^\infty(U_k)}\,dt
\tag{EP.10au2}
```

forces a pointwise ceiling of the form

```math
\sup_{(x,t)\in U_k\times I_k^{gap}}|\omega_J(x,t)|
\le
\Theta\!\left(
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\right),
\tag{EP.10au3}
```

or its `L^1_tL^\infty_x` analogue.

So the existing same-surface packets recorded in
`regularity-upgrade-schemas.md` and `dyadic-high-frequency-gain-theorem.md`,
which yield only time-integrated critical vorticity control, do not by
themselves close `EP.10as1`.

**Proof.**
Fix a nonzero bump `\varphi\in C_c^\infty(U_k)` and normalize it so
`\|\chi_k\varphi\|_{B^0_{\infty,1}}=1`. On `I_k^{gap}=[0,1]`, define

```math
\omega_n(x,t):=n\,\varphi(x)\,\mathbf 1_{[0,n^{-1}]}(t).
\tag{EP.10au4}
```

Then

```math
\int_0^1
\|\chi_k\,\omega_n(\cdot,t)\|_{B^0_{\infty,1}}\,dt
=
\int_0^1
n\,\mathbf 1_{[0,n^{-1}]}(t)\,dt
=1,
\tag{EP.10au5}
```

and likewise

```math
\int_0^1
\|\omega_n(\cdot,t)\|_{L^\infty(U_k)}\,dt
=
\|\varphi\|_{L^\infty(U_k)},
\tag{EP.10au6}
```

independent of `n`. But

```math
\sup_{(x,t)\in U_k\times[0,1]}|\omega_n(x,t)|
=
n\,\|\varphi\|_{L^\infty(U_k)}
\to\infty.
\tag{EP.10au7}
```

So neither time-integrated quantity can force a pointwise chart-local ceiling.
∎

### Corollary EP.10av (the adiabatic local vorticity wall is now exact)

After `EP.10as`-`EP.10au`, the adiabatic exact-potential branch has one exact
vorticity-side local target:

1. a chart-local **pointwise** critical ceiling such as `(EP.10at1)`, or an
   equivalent stronger pointwise packet;
2. alternatively, a new window-selection plus time-continuity theorem that
   upgrades the currently available time-integrated critical control to a
   pointwise retained-window ceiling.

There is no theorem-safe route from the currently installed
`L^1_tB^0_{\infty,1}` or `L^1_tL^\infty_x` packets directly to `EP.10as1`.

### Proposition EP.10aw (a chart-local pointwise Besov ceiling reduces to one anchor-time bound plus one time-continuity packet)

Keep the setting of `EP.10at`. Assume there exists an anchor time
`\tau_k^\omega\in I_k^{gap}` and constants `W_k^\sharp,L_k^\omega\ge 0` such
that

```math
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
\le
W_k^\sharp,
\tag{EP.10aw1}
```

and

```math
\|\chi_k\,\omega_J(\cdot,t)-\chi_k\,\omega_J(\cdot,s)\|_{B^0_{\infty,1}}
\le
L_k^\omega |t-s|
\qquad
\text{for all }s,t\in I_k^{gap}.
\tag{EP.10aw2}
```

Then on the subwindow

```math
I_k^\omega:=
[\tau_k^\omega-\rho_k^\omega,\tau_k^\omega+\rho_k^\omega]\cap I_k^{gap},
\tag{EP.10aw3}
```

one has the pointwise Besov ceiling

```math
\sup_{t\in I_k^\omega}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
W_k^\sharp+L_k^\omega \rho_k^\omega.
\tag{EP.10aw4}
```

Hence `EP.10at1` holds on `I_k^\omega` with

```math
W_k:=W_k^\sharp+L_k^\omega \rho_k^\omega.
\tag{EP.10aw5}
```

So the adiabatic vorticity ceiling may be reduced further to:

1. one anchor-time critical Besov bound;
2. one chart-local time-continuity packet in the same norm;
3. optional shrinkage of the retained window.

**Proof.**
For `t\in I_k^\omega`, the triangle inequality and `(EP.10aw2)` give

```math
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
+
\|\chi_k\,\omega_J(\cdot,t)-\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
\le
W_k^\sharp+L_k^\omega |t-\tau_k^\omega|.
\tag{EP.10aw6}
```

Since `|t-\tau_k^\omega|\le \rho_k^\omega` on `I_k^\omega`, this gives
`(EP.10aw4)`, and then `(EP.10aw5)` is immediate. ∎

### Corollary EP.10ax (the chart-local vorticity wall is now either pointwise critical control or anchor-plus-continuity)

After `EP.10at`-`EP.10aw`, the adiabatic branch has two theorem-safe local
realizations of the same remaining vorticity wall:

1. a direct chart-local pointwise critical Besov ceiling `(EP.10at1)`;
2. an anchor-time critical Besov bound plus a chart-local time-continuity
   packet `(EP.10aw1)`-`(EP.10aw2)`.

No weaker presently installed integrated vorticity packet on disk implies
either realization automatically.

### Proposition EP.10ay (the chart-local time-continuity packet reduces to one time-derivative ceiling)

Keep the setting of `EP.10aw`. Assume instead of `(EP.10aw2)` that the
localized vorticity satisfies the derivative bound

```math
\sup_{t\in I_k^{gap}}
\bigl\|
\partial_t(\chi_k\,\omega_J)(\cdot,t)
\bigr\|_{B^0_{\infty,1}}
\le
D_k^\omega.
\tag{EP.10ay1}
```

Then the Lipschitz continuity packet `(EP.10aw2)` holds with

```math
L_k^\omega:=D_k^\omega.
\tag{EP.10ay2}
```

Consequently the chart-local pointwise Besov ceiling on the shrunken window
`I_k^\omega` follows from:

1. one anchor-time Besov bound `(EP.10aw1)`;
2. one time-derivative ceiling `(EP.10ay1)`.

**Proof.**
For any `s,t\in I_k^{gap}`, the fundamental theorem of calculus in the Banach
space `B^0_{\infty,1}` gives

```math
\chi_k\,\omega_J(\cdot,t)-\chi_k\,\omega_J(\cdot,s)
=
\int_s^t \partial_\tau(\chi_k\,\omega_J)(\cdot,\tau)\,d\tau,
\tag{EP.10ay3}
```

so

```math
\|\chi_k\,\omega_J(\cdot,t)-\chi_k\,\omega_J(\cdot,s)\|_{B^0_{\infty,1}}
\le
\int_s^t
\bigl\|\partial_\tau(\chi_k\,\omega_J)(\cdot,\tau)\bigr\|_{B^0_{\infty,1}}
\,d\tau
\le
D_k^\omega |t-s|,
\tag{EP.10ay4}
```

which is exactly `(EP.10aw2)` with `L_k^\omega=D_k^\omega`. ∎

### Corollary EP.10az (the adiabatic chart-local vorticity wall is reduced to anchor plus derivative control)

After `EP.10at`-`EP.10ay`, the adiabatic branch has the following sharp local
realization:

1. a chart-local anchor-time Besov bound
   `\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}\le W_k^\sharp`;
2. a chart-local time-derivative ceiling
   `\sup_{t\in I_k^{gap}}\|\partial_t(\chi_k\,\omega_J)(\cdot,t)\|_{B^0_{\infty,1}}\le D_k^\omega`;
3. optional shrinkage to a subwindow `I_k^\omega`.

This is the furthest theorem-safe reduction of the adiabatic local vorticity
wall I can justify from the current note stack without inventing a new local
parabolic estimate.

### Proposition EP.10ba (the chart-local derivative ceiling reduces to one localized vorticity-transport packet)

Keep the setting of `EP.10ay`, and write

```math
\Omega_{J,k}:=\chi_k\,\omega_J.
\tag{EP.10ba1}
```

Since `\omega_J=\nabla\times v_J` obeys the classical vorticity equation for
`v_J`,

```math
\partial_t\omega_J+(v_J\cdot\nabla)\omega_J
=
(\omega_J\cdot\nabla)v_J+\nu\Delta\omega_J,
\tag{EP.10ba2}
```

the localized field satisfies

```math
\partial_t\Omega_{J,k}
-\nu\Delta\Omega_{J,k}
+(v_J\cdot\nabla)\Omega_{J,k}
=
\chi_k(\omega_J\cdot\nabla)v_J
+F_{J,k}^{cut},
\tag{EP.10ba3}
```

with cutoff source

```math
F_{J,k}^{cut}
:=
(v_J\cdot\nabla\chi_k)\,\omega_J
-2\nu\,\nabla\chi_k\cdot\nabla\omega_J
-\nu(\Delta\chi_k)\,\omega_J.
\tag{EP.10ba4}
```

Therefore a sufficient packet for `(EP.10ay1)` is

```math
\sup_{t\in I_k^{gap}}
\Bigl(
\nu\|\Delta\Omega_{J,k}(\cdot,t)\|_{B^0_{\infty,1}}
+
\|(v_J\cdot\nabla)\Omega_{J,k}(\cdot,t)\|_{B^0_{\infty,1}}
+
\|\chi_k(\omega_J\cdot\nabla)v_J(\cdot,t)\|_{B^0_{\infty,1}}
+
\|F_{J,k}^{cut}(\cdot,t)\|_{B^0_{\infty,1}}
\Bigr)
\le
D_k^\omega.
\tag{EP.10ba5}
```

So the chart-local derivative ceiling is no longer an abstract time-regularity
assumption. It is exactly one localized vorticity-transport estimate on the
retained chart.

**Proof.**
Equation `(EP.10ba3)` is the product rule applied to `\Omega_{J,k}=\chi_k
\omega_J` in `(EP.10ba2)`, together with the identity
`\Delta(\chi_k\omega_J)=\chi_k\Delta\omega_J
+2\nabla\chi_k\cdot\nabla\omega_J+(\Delta\chi_k)\omega_J`.
Taking the `B^0_{\infty,1}` norm in `(EP.10ba3)` and applying the triangle
inequality yields `(EP.10ba5)`, which is exactly `(EP.10ay1)`. ∎

### Corollary EP.10bb (the adiabatic chart-local wall is reduced to anchor plus one localized vorticity-transport packet)

After `EP.10at`-`EP.10ba`, the adiabatic exact-potential branch has the
following sharp local realization on a retained chart:

1. one anchor-time critical Besov bound
   `\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}\le W_k^\sharp`;
2. one localized vorticity-transport derivative packet `(EP.10ba5)`;
3. optional shrinkage to a subwindow `I_k^\omega`.

That is the furthest theorem-safe reduction of the adiabatic local vorticity
wall I can justify from the current note stack without proving a new local
parabolic estimate for the retained chart.

### Proposition EP.10bc (the anchor-time critical Besov bound reduces to one averaged local critical packet)

Keep one retained chart window `U_k\times I_k^{gap}` and the cutoff `\chi_k`
from `EP.10at`. Assume the localized critical packet obeys

```math
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal B_{k,\omega}^{crit}.
\tag{EP.10bc1}
```

Then there exists an anchor time `\tau_k^\omega\in I_k^{gap}` such that

```math
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
\le
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|}.
\tag{EP.10bc2}
```

So the anchor-time packet `(EP.10aw1)` is reduced exactly to one averaged local
critical Besov bound on the retained chart.

**Proof.**
Choose `\tau_k^\omega` so that
`\|\chi_k\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}` is no larger than
the average value over `I_k^{gap}`. Then `(EP.10bc2)` is just the averaging
inequality. ∎

### Corollary EP.10bd (the adiabatic chart-local wall reduces to an averaged local critical packet plus one localized vorticity-transport packet)

Combine `EP.10bc` with `EP.10ba` and `EP.10aw`. If

```math
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal B_{k,\omega}^{crit},
\tag{EP.10bd1}
```

and the localized derivative packet `(EP.10ba5)` holds with constant
`D_k^\omega`, then on the shrunken window `I_k^\omega` one has

```math
\sup_{t\in I_k^\omega}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|}
+
D_k^\omega\,\rho_k^\omega.
\tag{EP.10bd2}
```

Consequently the adiabatic drift price satisfies

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k
+
\frac12 C_{\mathrm{emb}}
\left(
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|}
+
D_k^\omega\,\rho_k^\omega
\right)
+
\frac{N_k}{\gamma_k}
\right)
\tag{EP.10bd3}
```

for every local synchronization window subordinate to
`\mathcal J_k\times I_k^\omega`.

So the anchor-time side is no longer a separate free input. The adiabatic local
wall is now exactly:

1. one averaged local critical Besov packet `(EP.10bd1)`;
2. one localized vorticity-transport derivative packet `(EP.10ba5)`;
3. optional shrinkage of the retained time window.

This is the sharpest theorem-safe reduction I can justify on the adiabatic
exact-potential branch from the current note stack.

### Proposition EP.10be (the anchor-plus-derivative wall reduces to one localized transport-diffusion propagation packet)

Keep the localized vorticity equation `(EP.10ba3)` on one retained chart
`U_k\times I_k^{gap}`, and let `\tau_k^\omega\in I_k^{gap}` be an anchor time.
Assume the localized coefficient/source packet

```math
\int_{I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}\,dt
\le
\Lambda_k^v,
\tag{EP.10be1}
```

```math
\int_{I_k^{gap}}
\|\chi_k(\omega_J\cdot\nabla)v_J(\cdot,t)+F_{J,k}^{cut}(\cdot,t)\|_{B^0_{\infty,1}}
\,dt
\le
\mathcal S_{k,\omega}^{loc}.
\tag{EP.10be2}
```

Then a standard transport-diffusion estimate in `B^0_{\infty,1}` yields

```math
\sup_{t\in I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
C_{\mathrm{td}}
e^{C_{\mathrm{td}}\Lambda_k^v}
\left(
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
+
\mathcal S_{k,\omega}^{loc}
\right).
\tag{EP.10be3}
```

Consequently the chart-local pointwise Besov ceiling `(EP.10at1)` holds on the
whole retained gap window with

```math
W_k
:=
C_{\mathrm{td}}
e^{C_{\mathrm{td}}\Lambda_k^v}
\left(
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
+
\mathcal S_{k,\omega}^{loc}
\right).
\tag{EP.10be4}
```

So the adiabatic chart-local wall no longer needs a separate derivative packet
once one accepts the standard localized transport-diffusion propagation theorem.

### Corollary EP.10bf (the adiabatic chart-local wall reduces to one anchor-time critical packet plus one coefficient/source packet)

Combine `EP.10be` with `EP.10at`. If the anchor-time critical bound

```math
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
\le
W_k^\sharp
\tag{EP.10bf1}
```

holds and the localized coefficient/source packet `(EP.10be1)`-`(EP.10be2)`
holds, then

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k
+
\frac12 C_{\mathrm{emb}} C_{\mathrm{td}}
e^{C_{\mathrm{td}}\Lambda_k^v}
\left(
W_k^\sharp+\mathcal S_{k,\omega}^{loc}
\right)
+
\frac{N_k}{\gamma_k}
\right)
\tag{EP.10bf2}
```

for every local synchronization window subordinate to
`\mathcal J_k\times I_k^{gap}`.

Therefore the adiabatic exact-potential branch is reduced to exactly:

1. one anchor-time critical Besov packet;
2. one localized transport-diffusion coefficient/source packet;
3. retained-window geometric data `(M_k,N_k,\gamma_k)`;
4. familywise summability of the resulting window prices.

This is strictly cleaner than the anchor-plus-derivative form `EP.10bd`, and is
the narrowest theorem-safe local packaging I can justify on the current branch.

### Proposition EP.10bg (the localized stretching term is absorbable into the transport-diffusion coefficient packet)

Keep the setting of `EP.10be`. Assume the local product estimate

```math
\|\chi_k(\omega_J\cdot\nabla)v_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
C_{\mathrm{prod}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\tag{EP.10bg1}
```

holds for a.e. `t\in I_k^{gap}`. Define the pure cutoff-source packet

```math
\int_{I_k^{gap}}
\|F_{J,k}^{cut}(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal C_{k,\omega}^{cut}.
\tag{EP.10bg2}
```

Then the localized transport-diffusion propagation may be rewritten in the
closed Gronwall form

```math
\sup_{t\in I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
C_{\mathrm{td}}'
e^{C_{\mathrm{td}}'\Lambda_k^v}
\left(
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
+
\mathcal C_{k,\omega}^{cut}
\right),
\tag{EP.10bg3}
```

where `\Lambda_k^v` is the coefficient packet from `(EP.10be1)`.

So the stretching part is not a separate local source wall. Once the product
estimate `(EP.10bg1)` is admitted, the only genuine inhomogeneous source on
the retained chart is the cutoff commutator packet `\mathcal C_{k,\omega}^{cut}`.

**Proof.**
Insert `(EP.10bg1)` into `(EP.10be2)`. The term
`\|\nabla v_J\|_{L^\infty}\|\chi_k\omega_J\|_{B^0_{\infty,1}}` is then absorbed
into the usual transport-diffusion Gronwall factor, while the remaining source
is exactly `F_{J,k}^{cut}`. This yields `(EP.10bg3)`. ∎

### Corollary EP.10bh (the adiabatic chart-local wall reduces to anchor-time Besov, local Lipschitz coefficient, and cutoff source)

Combine `EP.10bg` with `EP.10at`. If

```math
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
\le
W_k^\sharp,
\tag{EP.10bh1}
```

```math
\int_{I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}\,dt
\le
\Lambda_k^v,
\tag{EP.10bh2}
```

and

```math
\int_{I_k^{gap}}
\|F_{J,k}^{cut}(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal C_{k,\omega}^{cut},
\tag{EP.10bh3}
```

then

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k
+
\frac12 C_{\mathrm{emb}} C_{\mathrm{td}}'
e^{C_{\mathrm{td}}'\Lambda_k^v}
\left(
W_k^\sharp+\mathcal C_{k,\omega}^{cut}
\right)
+
\frac{N_k}{\gamma_k}
\right)
\tag{EP.10bh4}
```

for every local synchronization window subordinate to
`\mathcal J_k\times I_k^{gap}`.

So the adiabatic exact-potential branch is now reduced to the following sharp
local package:

1. one anchor-time local critical Besov packet;
2. one local Lipschitz coefficient packet for `v_J`;
3. one cutoff-source packet for the localized vorticity equation;
4. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is the narrowest theorem-safe local form I can justify on the current
exact-potential adiabatic branch.

### Corollary EP.10bi (the adiabatic chart-local wall reduces further to one averaged local critical packet)

Combine `EP.10bc` with `EP.10bg` and `EP.10at`. If

```math
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal B_{k,\omega}^{crit},
\tag{EP.10bi1}
```

```math
\int_{I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}\,dt
\le
\Lambda_k^v,
\tag{EP.10bi2}
```

and

```math
\int_{I_k^{gap}}
\|F_{J,k}^{cut}(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal C_{k,\omega}^{cut},
\tag{EP.10bi3}
```

then the anchor time from `EP.10bc` may be chosen so that

```math
\|\chi_k\,\omega_J(\cdot,\tau_k^\omega)\|_{B^0_{\infty,1}}
\le
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|},
\tag{EP.10bi4}
```

and therefore `EP.10bg3` yields

```math
\sup_{t\in I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}
\le
C_{\mathrm{td}}'
e^{C_{\mathrm{td}}'\Lambda_k^v}
\left(
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|}
+
\mathcal C_{k,\omega}^{cut}
\right).
\tag{EP.10bi5}
```

Consequently the adiabatic drift price satisfies

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k
+
\frac12 C_{\mathrm{emb}} C_{\mathrm{td}}'
e^{C_{\mathrm{td}}'\Lambda_k^v}
\left(
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|}
+
\mathcal C_{k,\omega}^{cut}
\right)
+
\frac{N_k}{\gamma_k}
\right)
\tag{EP.10bi6}
```

for every local synchronization window subordinate to
`\mathcal J_k\times I_k^{gap}`.

So the adiabatic exact-potential branch is now reduced to the following sharp
local package:

1. one averaged local critical Besov packet;
2. one local Lipschitz coefficient packet for `v_J`;
3. one cutoff-source packet for the localized vorticity equation;
4. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is strictly sharper than `EP.10bh`, because the anchor-time Besov packet is
no longer a separate local debt.

### Proposition EP.10bj (the cutoff-source packet reduces to one collar transport packet plus one collar diffusion packet)

Keep the retained chart `U_k` and cutoff `\chi_k` from `EP.10ba`, and choose a
second cutoff `\widetilde\chi_k\in C_c^\infty(U_k)` such that
`\widetilde\chi_k\equiv 1` on
`\operatorname{supp}\nabla\chi_k\cup\operatorname{supp}\Delta\chi_k`. Define the
collar packets

```math
\sup_{t\in I_k^{gap}}
\|\widetilde\chi_k\,v_J(\cdot,t)\|_{L^\infty}
\le
V_k^{col},
\tag{EP.10bj1}
```

```math
\int_{I_k^{gap}}
\|\widetilde\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal B_{k,\omega}^{col},
\tag{EP.10bj2}
```

```math
\nu\int_{I_k^{gap}}
\|\widetilde\chi_k\,\nabla\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt
\le
\mathcal G_{k,\omega}^{col}.
\tag{EP.10bj3}
```

Then the cutoff commutator source from `(EP.10ba4)` obeys

```math
\mathcal C_{k,\omega}^{cut}
\le
C_{\chi,k}
\left(
V_k^{col}\,\mathcal B_{k,\omega}^{col}
+
\mathcal G_{k,\omega}^{col}
+
\nu\,\mathcal B_{k,\omega}^{col}
\right),
\tag{EP.10bj4}
```

where `C_{\chi,k}` depends only on finitely many cutoff norms of
`\chi_k,\widetilde\chi_k`.

So the genuine inhomogeneous source on the retained chart is no longer a black
box. It splits exactly into:

1. one collar transport packet `V_k^{col}\,\mathcal B_{k,\omega}^{col}`;
2. one collar diffusion packet `\mathcal G_{k,\omega}^{col}`;
3. one lower-order collar vorticity packet `\nu\,\mathcal B_{k,\omega}^{col}`.

**Proof.**
Because multiplication by smooth cutoffs acts boundedly on
`B^0_{\infty,1}`, the first and third terms in `(EP.10ba4)` satisfy

```math
\|(v_J\cdot\nabla\chi_k)\omega_J\|_{B^0_{\infty,1}}
\le
C_{\chi,k}\|\widetilde\chi_k\,v_J\|_{L^\infty}
\|\widetilde\chi_k\,\omega_J\|_{B^0_{\infty,1}},
\tag{EP.10bj5}
```

```math
\|(\Delta\chi_k)\omega_J\|_{B^0_{\infty,1}}
\le
C_{\chi,k}\|\widetilde\chi_k\,\omega_J\|_{B^0_{\infty,1}}.
\tag{EP.10bj6}
```

Likewise

```math
\|\nabla\chi_k\cdot\nabla\omega_J\|_{B^0_{\infty,1}}
\le
C_{\chi,k}\|\widetilde\chi_k\,\nabla\omega_J\|_{B^0_{\infty,1}}.
\tag{EP.10bj7}
```

Insert `(EP.10bj5)`-`(EP.10bj7)` into `(EP.10ba4)`, integrate over
`I_k^{gap}`, and use `(EP.10bj1)`-`(EP.10bj3)` to obtain `(EP.10bj4)`. ∎

### Corollary EP.10bk (the adiabatic chart-local wall reduces to averaged critical Besov, local Lipschitz coefficient, and explicit collar packets)

Combine `EP.10bi` with `EP.10bj`. If `(EP.10bi1)`-`(EP.10bi2)` hold and the
collar packets `(EP.10bj1)`-`(EP.10bj3)` hold, then

```math
\boldsymbol\kappa_\ell^{ad}
\le
2\left(
M_k
+
\frac12 C_{\mathrm{emb}} C_{\mathrm{td}}'
e^{C_{\mathrm{td}}'\Lambda_k^v}
\left(
\frac{\mathcal B_{k,\omega}^{crit}}{|I_k^{gap}|}
+
C_{\chi,k}
\left(
V_k^{col}\,\mathcal B_{k,\omega}^{col}
+
\mathcal G_{k,\omega}^{col}
+
\nu\,\mathcal B_{k,\omega}^{col}
\right)
\right)
+
\frac{N_k}{\gamma_k}
\right).
\tag{EP.10bk1}
```

Therefore the adiabatic exact-potential branch is now reduced to the following
explicit local packet family:

1. one averaged local critical Besov packet;
2. one local Lipschitz coefficient packet for `v_J`;
3. one collar transport packet;
4. one collar diffusion packet;
5. one lower-order collar vorticity packet;
6. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is weaker as a sufficient realization than the black-box cutoff-source
packet `\mathcal C_{k,\omega}^{cut}`, but it is sharper as a theorem-facing
decomposition of the remaining adiabatic local source wall.

### Proposition EP.10bl (the collar transport packet needs a genuine local velocity ceiling or gauge)

The packets

```math
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt,
\qquad
\int_{I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}\,dt,
\tag{EP.10bl1}
```

do **not** by themselves imply any bound on the collar velocity ceiling

```math
\sup_{t\in I_k^{gap}}
\|\widetilde\chi_k\,v_J(\cdot,t)\|_{L^\infty}.
\tag{EP.10bl2}
```

**Proof.**
Fix any nonzero constant vector `e\in\mathbf R^3`, and set

```math
v_J^{(n)}(x,t):=n\,e
\qquad
\text{on }U_k\times I_k^{gap}.
\tag{EP.10bl3}
```

Then

```math
\omega_J^{(n)}\equiv 0,
\qquad
\nabla v_J^{(n)}\equiv 0,
\tag{EP.10bl4}
```

so the packets in `(EP.10bl1)` vanish identically for every `n`, while

```math
\sup_{t\in I_k^{gap}}
\|\widetilde\chi_k\,v_J^{(n)}(\cdot,t)\|_{L^\infty}
=
n\,\|\widetilde\chi_k e\|_{L^\infty}
\to\infty.
\tag{EP.10bl5}
```

Therefore no bound of the form `(EP.10bl2)` can be recovered from the
vorticity-side and local Lipschitz packets alone. ∎

### Corollary EP.10bm (the honest residual in the adiabatic collar-transport branch is a local velocity/gauge packet)

After `EP.10bk` and `EP.10bl`, the remaining adiabatic local source wall is
now exact:

1. one averaged local critical Besov packet;
2. one local Lipschitz coefficient packet for `v_J`;
3. one collar diffusion packet;
4. one lower-order collar vorticity packet;
5. one genuinely new local velocity ceiling or local gauge-normalization packet;
6. retained-window geometric data `(M_k,N_k,\gamma_k)`.

So the collar transport term is the irreducible new local debt on the current
adiabatic exact-potential branch. It cannot be discharged from the existing
vorticity-side packets without adding one new velocity-side theorem input.

### Corollary EP.10bn (one conservative realization of the velocity-side debt is a chart-anchor packet plus a pointwise Lipschitz ceiling)

Fix one point `x_k\in U_k`, and assume the local anchor and pointwise
Lipschitz packets

```math
\sup_{t\in I_k^{gap}}|v_J(x_k,t)|
\le
A_k^v,
\tag{EP.10bn1}
```

```math
\sup_{t\in I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}
\le
L_k^v.
\tag{EP.10bn2}
```

Then the collar velocity ceiling from `(EP.10bj1)` obeys

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
A_k^v+\operatorname{diam}(U_k)\,L_k^v
\right).
\tag{EP.10bn3}
```

Consequently the collar transport term in `(EP.10bj4)` admits the explicit
realization

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
A_k^v+\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10bn4}
```

**Proof.**
For each `x\in U_k` and `t\in I_k^{gap}`, the mean-value theorem gives

```math
|v_J(x,t)|
\le
|v_J(x_k,t)|
+
\operatorname{diam}(U_k)\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}.
\tag{EP.10bn5}
```

Multiply by `\|\widetilde\chi_k\|_{L^\infty}` and take the supremum over
`x,t`. This yields `(EP.10bn3)`, and `(EP.10bn4)` follows immediately. ∎

So one conservative sufficient realization of the new velocity-side wall is:

1. one chart-anchor velocity packet;
2. one pointwise local Lipschitz ceiling;
3. the collar vorticity packets already isolated in `EP.10bj`.

### Proposition EP.10bo (the chart-anchor velocity ceiling reduces to one anchor-time value plus one localized acceleration packet)

Keep the chart anchor `x_k\in U_k`. Assume there exists an anchor time
`\tau_k^v\in I_k^{gap}` such that

```math
|v_J(x_k,\tau_k^v)|
\le
A_{k,0}^v,
\tag{EP.10bo1}
```

and assume the local pointwise Lipschitz and anchor-acceleration packets

```math
\sup_{t\in I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}
\le
L_k^v,
\tag{EP.10bo2}
```

```math
\int_{I_k^{gap}}
\Big(
|\nabla p_J(x_k,t)|
+
\nu\,|\Delta v_J(x_k,t)|
\Big)\,dt
\le
\mathcal A_k^{loc}.
\tag{EP.10bo3}
```

Then the Navier-Stokes momentum equation at the anchor point reads

```math
\partial_t v_J(x_k,t)
+
\bigl((v_J\cdot\nabla)v_J\bigr)(x_k,t)
+
\nabla p_J(x_k,t)
=
\nu\,\Delta v_J(x_k,t),
\tag{EP.10bo4}
```

so

```math
\frac{d}{dt}|v_J(x_k,t)|
\le
L_k^v\,|v_J(x_k,t)|
+
|\nabla p_J(x_k,t)|
+
\nu\,|\Delta v_J(x_k,t)|.
\tag{EP.10bo5}
```

Consequently Gronwall yields

```math
A_k^v
:=
\sup_{t\in I_k^{gap}}|v_J(x_k,t)|
\le
e^{L_k^v|I_k^{gap}|}
\left(
A_{k,0}^v+\mathcal A_k^{loc}
\right).
\tag{EP.10bo6}
```

So the chart-anchor velocity ceiling is no longer a primitive packet. It
reduces exactly to:

1. one anchor-time point value;
2. one pointwise local Lipschitz ceiling;
3. one localized anchor-acceleration packet.

**Proof.**
From `(EP.10bo4)`,

```math
|((v_J\cdot\nabla)v_J)(x_k,t)|
\le
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}\,|v_J(x_k,t)|
\le
L_k^v\,|v_J(x_k,t)|.
\tag{EP.10bo7}
```

This gives `(EP.10bo5)`. Integrate the scalar differential inequality from
`\tau_k^v` to `t`, then take the supremum over `t\in I_k^{gap}` to obtain
`(EP.10bo6)`. ∎

### Corollary EP.10bp (a conservative realization of the adiabatic velocity-side wall is anchor-time velocity plus anchor-acceleration)

Combine `EP.10bn` with `EP.10bo`. If `(EP.10bo1)`-`(EP.10bo3)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
A_{k,0}^v+\mathcal A_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10bp1}
```

and therefore

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
A_{k,0}^v+\mathcal A_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10bp2}
```

Therefore one conservative realization of the honest residual from `EP.10bm` is
now reduced to:

1. one anchor-time velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one localized anchor-acceleration packet;
4. the collar diffusion / lower-order vorticity packets already isolated in
   `EP.10bj`;
5. retained-window geometric data `(M_k,N_k,\gamma_k)`.

### Proposition EP.10bq (the localized anchor-acceleration packet splits into one pressure-gradient packet plus one vorticity-gradient packet)

Keep the setting of `EP.10bo`. Since `v_J` is divergence free and
`\omega_J=\nabla\times v_J`, the vector identity

```math
\nabla\times\omega_J
=
\nabla(\nabla\cdot v_J)-\Delta v_J
=
-\Delta v_J
\tag{EP.10bq1}
```

gives

```math
|\Delta v_J(x_k,t)|
\le
C_{\mathrm{curl}}\,|\nabla\omega_J(x_k,t)|.
\tag{EP.10bq2}
```

Therefore if one defines the pressure and local vorticity-gradient packets

```math
\int_{I_k^{gap}}
|\nabla p_J(x_k,t)|\,dt
\le
\mathcal P_k^{loc},
\tag{EP.10bq3}
```

```math
\nu\int_{I_k^{gap}}
|\nabla\omega_J(x_k,t)|\,dt
\le
\mathcal W_k^{loc},
\tag{EP.10bq4}
```

then `(EP.10bo3)` holds with

```math
\mathcal A_k^{loc}
\le
\mathcal P_k^{loc}
+
C_{\mathrm{curl}}\,\mathcal W_k^{loc}.
\tag{EP.10bq5}
```

So the anchor-acceleration packet is no longer opaque. It splits exactly into:

1. one local pressure-gradient packet at the chart anchor;
2. one local vorticity-gradient packet at the chart anchor.

**Proof.**
Equation `(EP.10bq1)` is the standard identity
`\nabla\times(\nabla\times v)=\nabla(\nabla\cdot v)-\Delta v`, together with
`\nabla\cdot v_J=0`. Taking pointwise norms gives `(EP.10bq2)`. Integrating
over `I_k^{gap}` and combining with `(EP.10bo3)` yields `(EP.10bq5)`. ∎

### Corollary EP.10br (the conservative velocity-side realization reduces further to pressure-gradient plus vorticity-gradient packets)

Combine `EP.10bp` with `EP.10bq`. If `(EP.10bo1)`-`(EP.10bo2)` and
`(EP.10bq3)`-`(EP.10bq4)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
A_{k,0}^v+\mathcal P_k^{loc}+C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10br1}
```

and hence

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
A_{k,0}^v+\mathcal P_k^{loc}+C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10br2}
```

Therefore the adiabatic velocity-side branch is now reduced to the following
explicit local debts:

1. one anchor-time velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one local pressure-gradient packet at the chart anchor;
4. one local vorticity-gradient packet at the chart anchor;
5. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
6. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is the sharpest theorem-safe conservative realization I can justify on the
current adiabatic exact-potential branch without importing a genuinely new
pressure theorem.

### Proposition EP.10bs (the anchor-time velocity packet reduces to one averaged anchor-velocity packet)

Keep the chart anchor `x_k\in U_k`. Assume

```math
\int_{I_k^{gap}}
|v_J(x_k,t)|\,dt
\le
\mathcal V_k^{anc}.
\tag{EP.10bs1}
```

Then there exists an anchor time `\tau_k^v\in I_k^{gap}` such that

```math
|v_J(x_k,\tau_k^v)|
\le
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}.
\tag{EP.10bs2}
```

So the pointwise anchor packet `(EP.10bo1)` is reduced exactly to one averaged
anchor-velocity packet.

**Proof.**
For each `\eta>0`, choose `\tau_{k,\eta}^v\in I_k^{gap}` so that

```math
|v_J(x_k,\tau_{k,\eta}^v)|
\le
\inf_{t\in I_k^{gap}}|v_J(x_k,t)|+\eta.
```

Since the infimum is bounded above by the average value of
`|v_J(x_k,t)|` on `I_k^{gap}`, let `\eta\downarrow0` to obtain
`(EP.10bs2)`. ∎

### Corollary EP.10bt (the conservative velocity-side realization reduces to averaged anchor velocity)

Combine `EP.10br` with `EP.10bs`. If `(EP.10bs1)`, `(EP.10bo2)`, and
`(EP.10bq3)`-`(EP.10bq4)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\mathcal P_k^{loc}
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10bt1}
```

and hence

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\mathcal P_k^{loc}
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10bt2}
```

Therefore the conservative adiabatic velocity-side branch is now reduced to the
following explicit local debts:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one local pressure-gradient packet at the chart anchor;
4. one local vorticity-gradient packet at the chart anchor;
5. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
6. retained-window geometric data `(M_k,N_k,\gamma_k)`.

### Proposition EP.10bu (the pressure-gradient packet is an explicitly nonlocal singular-integral packet)

At each fixed time `t`, the incompressible pressure solves

```math
-\Delta p_J(\cdot,t)
=
\partial_i\partial_j\bigl(v_{J,i}v_{J,j}\bigr)(\cdot,t).
\tag{EP.10bu1}
```

Hence for every anchor point `x_k` one has the Calderon-Zygmund representation

```math
\nabla p_J(x_k,t)
=
\operatorname{p.v.}\int_{\mathbf R^3}
K(x_k-y):\bigl(v_J(y,t)\otimes v_J(y,t)\bigr)\,dy,
\tag{EP.10bu2}
```

where `K=\nabla^3(-\Delta)^{-1}` is the standard homogeneous kernel of degree
`-4`. Define the global pressure packet

```math
\int_{I_k^{gap}}
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
K(x_k-y):\bigl(v_J(y,t)\otimes v_J(y,t)\bigr)\,dy
\right|dt
\le
\Pi_k^{glob}.
\tag{EP.10bu3}
```

Then the local pressure-gradient packet `(EP.10bq3)` holds with

```math
\mathcal P_k^{loc}\le \Pi_k^{glob}.
\tag{EP.10bu4}
```

So the pressure side of the adiabatic velocity branch is not local in the
current theorem stack. Its honest residual form is one global quadratic
singular-integral packet evaluated at the chart anchor.

**Proof.**
Equation `(EP.10bu1)` is the standard incompressible pressure Poisson law. The
representation `(EP.10bu2)` is the corresponding singular-integral formula for
the gradient of pressure. Integrating its absolute value over `I_k^{gap}`
immediately yields `(EP.10bu4)` from `(EP.10bu3)`. ∎

### Corollary EP.10bv (the adiabatic velocity-side branch ends at one global pressure packet plus local vorticity/geometry packets)

Combine `EP.10bt` with `EP.10bu`. If `(EP.10bs1)`, `(EP.10bo2)`,
`(EP.10bq4)`, and `(EP.10bu3)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{glob}
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10bv1}
```

and therefore

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{glob}
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10bv2}
```

Therefore the exact conservative adiabatic branch is now reduced to the
following explicit residual packets:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one global quadratic pressure singular-integral packet at the chart anchor;
4. one local vorticity-gradient packet at the chart anchor;
5. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
6. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is the narrowest theorem-safe endpoint I can justify on the present
adiabatic exact-potential branch without a genuinely new pressure-localization
theorem.

### Proposition EP.10bw (the global pressure packet splits into one near-field localization packet plus one far-field quadratic tail packet)

Keep the anchor point `x_k`, and choose a smooth cutoff
`\eta_k\in C_c^\infty(\mathbf R^3)` such that `0\le \eta_k\le 1`,
`\eta_k\equiv 1` on a neighborhood of `x_k`, and

```math
d_k:=\operatorname{dist}\bigl(x_k,\operatorname{supp}(1-\eta_k)\bigr)>0.
\tag{EP.10bw1}
```

Define the near-field and far-field pressure pieces by

```math
\mathfrak P_k^{near}(t)
:=
\operatorname{p.v.}\int_{\mathbf R^3}
K(x_k-y):\Bigl(\eta_k(y)\,v_J(y,t)\otimes v_J(y,t)\Bigr)\,dy,
\tag{EP.10bw2}
```

```math
\mathfrak P_k^{far}(t)
:=
\int_{\mathbf R^3}
K(x_k-y):\Bigl((1-\eta_k(y))\,v_J(y,t)\otimes v_J(y,t)\Bigr)\,dy.
\tag{EP.10bw3}
```

Then the pressure representation `(EP.10bu2)` splits exactly as

```math
\nabla p_J(x_k,t)=\mathfrak P_k^{near}(t)+\mathfrak P_k^{far}(t),
\tag{EP.10bw4}
```

and if one defines the localized packets

```math
\int_{I_k^{gap}}|\mathfrak P_k^{near}(t)|\,dt
\le
\Pi_k^{near},
\tag{EP.10bw5}
```

```math
\int_{I_k^{gap}}|\mathfrak P_k^{far}(t)|\,dt
\le
\Pi_k^{far},
\tag{EP.10bw6}
```

then

```math
\Pi_k^{glob}\le \Pi_k^{near}+\Pi_k^{far}.
\tag{EP.10bw7}
```

Moreover, because `|K(x_k-y)|\le C_K d_k^{-4}` on `\operatorname{supp}(1-\eta_k)`,
the far-field term obeys

```math
|\mathfrak P_k^{far}(t)|
\le
C_K d_k^{-4}
\int_{\mathbf R^3}(1-\eta_k(y))\,|v_J(y,t)|^2\,dy,
\tag{EP.10bw8}
```

hence

```math
\Pi_k^{far}
\le
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt.
\tag{EP.10bw9}
```

So the global pressure packet is no longer opaque. It splits exactly into:

1. one near-field localized singular-integral packet `\Pi_k^{near}`;
2. one far-field quadratic energy-tail packet `(EP.10bw9)`.

**Proof.**
Insert `1=\eta_k+(1-\eta_k)` into `(EP.10bu2)` to obtain `(EP.10bw4)`. The
triangle inequality gives `(EP.10bw7)`. Since the kernel is smooth on the
far-field support and homogeneous of degree `-4`, `(EP.10bw8)` follows from
the distance lower bound `(EP.10bw1)`, and integrating in time gives
`(EP.10bw9)`. ∎

### Corollary EP.10bx (the adiabatic pressure wall ends at one near-field pressure-localization theorem plus one far-field energy-tail packet)

Combine `EP.10bv` with `EP.10bw`. If `(EP.10bs1)`, `(EP.10bo2)`,
`(EP.10bq4)`, `(EP.10bw5)`, and `(EP.10bw9)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{near}
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10bx1}
```

and therefore

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{near}
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10bx2}
```

Therefore the conservative adiabatic exact-potential branch now ends at the
following explicit residual packets:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one near-field pressure-localization packet;
4. one far-field quadratic velocity-tail packet;
5. one local vorticity-gradient packet at the chart anchor;
6. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
7. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is sharper than `EP.10bv`: the only genuinely new pressure theorem left is
the near-field localized singular-integral packet.

### Proposition EP.10by (the near-field pressure packet reduces to one local convective singular-integral packet plus one collar quadratic defect)

Keep the near-field cutoff `\eta_k` from `EP.10bw`, and write the kernel in
`(EP.10bw2)` as

```math
K_{mij}(z)=\partial_m\partial_i\partial_j N(z)
\qquad
\text{with }N(z)=\frac{1}{4\pi|z|}.
\tag{EP.10by1}
```

Integrating one divergence by parts and using `\nabla\cdot v_J=0` gives

```math
\mathfrak P_{k,m}^{near}(t)
=
\operatorname{p.v.}\int_{\mathbf R^3}
H_{mi}(x_k-y)\,
\eta_k(y)\,\bigl((v_J\cdot\nabla)v_{J,i}\bigr)(y,t)\,dy
+
\mathfrak C_{k,m}^{press}(t),
\tag{EP.10by2}
```

where `H_{mi}(z):=-\partial_m\partial_i N(z)` is the standard homogeneous
Calderon-Zygmund kernel of degree `-3`, and the collar defect is

```math
\mathfrak C_{k,m}^{press}(t)
:=
\int_{\mathbf R^3}
H_{mi}(x_k-y)\,(\partial_j\eta_k)(y)\,v_{J,i}(y,t)v_{J,j}(y,t)\,dy.
\tag{EP.10by3}
```

Define the local convective-pressure packet

```math
\int_{I_k^{gap}}
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
H(x_k-y)\,\eta_k(y)\,(v_J\cdot\nabla)v_J(y,t)\,dy
\right|dt
\le
\Pi_k^{conv}.
\tag{EP.10by4}
```

Because `\operatorname{supp}\nabla\eta_k` stays a positive distance from `x_k`,
there is `d_k^{col}>0` such that

```math
|\mathfrak C_k^{press}(t)|
\le
C_H (d_k^{col})^{-3}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy,
\tag{EP.10by5}
```

hence the collar quadratic defect packet

```math
\int_{I_k^{gap}}|\mathfrak C_k^{press}(t)|\,dt
\le
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt.
\tag{EP.10by6}
```

Therefore

```math
\Pi_k^{near}
\le
\Pi_k^{conv}
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt.
\tag{EP.10by7}
```

So the near-field pressure wall is no longer a raw singular integral on
`v_J\otimes v_J`. It splits exactly into:

1. one local convective-pressure singular-integral packet `\Pi_k^{conv}`;
2. one collar quadratic defect packet `(EP.10by6)`.

**Proof.**
Starting from `(EP.10bw2)`, integrate the `\partial_j` derivative in
`K_{mij}=\partial_j(-\partial_m\partial_i N)` onto
`\eta_k v_{J,i}v_{J,j}`. Since
`\partial_j(v_{J,i}v_{J,j})=((v_J\cdot\nabla)v_J)_i` by incompressibility, this
gives `(EP.10by2)`-`(EP.10by3)`. On the support of `\nabla\eta_k`, the kernel
`H(x_k-\cdot)` is smooth and bounded by `C_H(d_k^{col})^{-3}`, which yields
`(EP.10by5)` and then `(EP.10by6)`. The triangle inequality gives
`(EP.10by7)`. ∎

### Corollary EP.10bz (the pressure wall ends at one local convective-pressure theorem plus quadratic tail packets)

Combine `EP.10bx` with `EP.10by`. If `(EP.10bs1)`, `(EP.10bo2)`,
`(EP.10bq4)`, `(EP.10by4)`, `(EP.10by6)`, and `(EP.10bw9)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{conv}
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10bz1}
```

and hence

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{conv}
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10bz2}
```

Therefore the conservative adiabatic exact-potential branch now ends at the
following explicit residual packets:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one local convective-pressure singular-integral packet;
4. one collar quadratic pressure-defect packet;
5. one far-field quadratic velocity-tail packet;
6. one local vorticity-gradient packet at the chart anchor;
7. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
8. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is the sharpest theorem-safe endpoint I can justify on the current
adiabatic exact-potential branch without a genuinely new local convective-
pressure theorem.

### Proposition EP.10ca (the local convective-pressure packet splits into an anchor-linear packet plus an explicit quadratic Lipschitz packet)

Keep the local convective-pressure packet from `(EP.10by4)`, and decompose

```math
(v_J\cdot\nabla)v_J
=
\bigl(v_J(x_k,t)\cdot\nabla\bigr)v_J
+
\bigl((v_J-v_J(x_k,t))\cdot\nabla\bigr)v_J.
\tag{EP.10ca1}
```

Define the anchor-linear pressure packet

```math
\int_{I_k^{gap}}
|v_J(x_k,t)|
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
H(x_k-y)\,\eta_k(y)\,\nabla v_J(y,t)\,dy
\right|dt
\le
\Pi_k^{lin}.
\tag{EP.10ca2}
```

Let

```math
R_k^{loc}:=\sup\{|y-x_k|:y\in\operatorname{supp}\eta_k\}.
\tag{EP.10ca3}
```

If the pointwise local Lipschitz ceiling `(EP.10bo2)` holds, then the
oscillatory part satisfies

```math
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
H(x_k-y)\,\eta_k(y)\,
\bigl((v_J-v_J(x_k,t))\cdot\nabla\bigr)v_J(y,t)\,dy
\right|
\le
C_H' R_k^{loc}\,(L_k^v)^2,
\tag{EP.10ca4}
```

hence

```math
\Pi_k^{conv}
\le
\Pi_k^{lin}
+
C_H' |I_k^{gap}|\,R_k^{loc}\,(L_k^v)^2.
\tag{EP.10ca5}
```

So the local convective-pressure packet is no longer irreducibly nonlinear. It
splits exactly into:

1. one anchor-linear pressure packet `\Pi_k^{lin}`;
2. one explicit local quadratic Lipschitz packet.

**Proof.**
Insert `(EP.10ca1)` into `(EP.10by4)`. The anchor part is exactly
`(EP.10ca2)`. For the oscillatory term, the mean-value theorem and
`(EP.10bo2)` give

```math
|v_J(y,t)-v_J(x_k,t)|
\le
L_k^v\,|y-x_k|,
\tag{EP.10ca6}
```

and also `|\nabla v_J(y,t)|\le L_k^v`. Since `H` is homogeneous of degree
`-3`,

```math
|H(x_k-y)|\,|v_J(y,t)-v_J(x_k,t)|\,|\nabla v_J(y,t)|
\le
C_H' (L_k^v)^2 |x_k-y|^{-2}.
\tag{EP.10ca7}
```

Integrating over `\operatorname{supp}\eta_k\subset B(x_k,R_k^{loc})` gives
`(EP.10ca4)`, and then `(EP.10ca5)` follows after time integration. ∎

### Corollary EP.10cb (the pressure wall ends at one anchor-linear pressure theorem plus explicit quadratic packets)

Combine `EP.10bz` with `EP.10ca`. If `(EP.10bs1)`, `(EP.10bo2)`,
`(EP.10bq4)`, `(EP.10ca2)`, `(EP.10by6)`, and `(EP.10bw9)` hold, then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{lin}
+
C_H' |I_k^{gap}|\,R_k^{loc}\,(L_k^v)^2
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10cb1}
```

and hence

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{lin}
+
C_H' |I_k^{gap}|\,R_k^{loc}\,(L_k^v)^2
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10cb2}
```

Therefore the conservative adiabatic exact-potential branch now ends at the
following explicit residual packets:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one anchor-linear pressure singular-integral packet;
4. one explicit local quadratic Lipschitz packet;
5. one collar quadratic pressure-defect packet;
6. one far-field quadratic velocity-tail packet;
7. one local vorticity-gradient packet at the chart anchor;
8. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
9. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is sharper than `EP.10bz`: the only genuinely new pressure theorem left is
now the anchor-linear pressure packet.

### Proposition EP.10cc (the anchor-linear pressure packet splits into one strain-linear packet plus one vorticity-paid packet)

Write

```math
\nabla v_J=S_J+\Omega_J,
\qquad
S_J:=\operatorname{Sym}\nabla v_J,
\qquad
\Omega_J:=\operatorname{Skew}\nabla v_J.
\tag{EP.10cc1}
```

Assume the near-field cutoff is chosen so that
`\operatorname{supp}\eta_k\subset\{\chi_k=1\}`. Define the strain-linear packet

```math
\int_{I_k^{gap}}
|v_J(x_k,t)|
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
H(x_k-y)\,\eta_k(y)\,S_J(y,t)\,dy
\right|dt
\le
\Pi_k^{str}.
\tag{EP.10cc2}
```

Then the anchor-linear pressure packet from `(EP.10ca2)` obeys

```math
\Pi_k^{lin}
\le
\Pi_k^{str}
+
C_{\mathrm{CZ}}\,A_k^v
\int_{I_k^{gap}}
\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}\,dt.
\tag{EP.10cc3}
```

In particular, if the averaged local critical vorticity packet `(EP.10bc1)`
holds, then

```math
\Pi_k^{lin}
\le
\Pi_k^{str}
+
C_{\mathrm{CZ}}\,A_k^v\,\mathcal B_{k,\omega}^{crit}.
\tag{EP.10cc4}
```

So the anchor-linear pressure wall is no longer “all of local `\nabla v_J`.”
It splits exactly into:

1. one genuinely new local **strain-linear** pressure packet `\Pi_k^{str}`;
2. one skew/vorticity part already payable from the existing vorticity-side
   packet.

**Proof.**
Insert `(EP.10cc1)` into `(EP.10ca2)`. The symmetric part is exactly
`(EP.10cc2)`. For the skew part, the identity

```math
\Omega_J z=\frac12\,\omega_J\times z
\tag{EP.10cc5}
```

gives the pointwise bound

```math
|\Omega_J(y,t)|\le \frac12\,|\omega_J(y,t)|.
\tag{EP.10cc6}
```

Because `H` is a Calderon-Zygmund kernel of degree `-3`, the corresponding
singular-integral operator is bounded on `B^0_{\infty,1}`. Since
`\eta_k\Omega_J=\eta_k\chi_k\Omega_J`, one gets

```math
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
H(x_k-y)\,\eta_k(y)\,\Omega_J(y,t)\,dy
\right|
\le
C_{\mathrm{CZ}}\|\chi_k\,\omega_J(\cdot,t)\|_{B^0_{\infty,1}}.
\tag{EP.10cc7}
```

Multiply by `|v_J(x_k,t)|`, integrate over `I_k^{gap}`, and use
`|v_J(x_k,t)|\le A_k^v` to obtain `(EP.10cc3)`. Then `(EP.10cc4)` follows from
`(EP.10bc1)`. ∎

### Corollary EP.10cd (the pressure wall ends at one strain-linear pressure theorem plus explicit lower packets)

Combine `EP.10cb` with `EP.10cc`. If `(EP.10bs1)`, `(EP.10bo2)`,
`(EP.10bc1)`, `(EP.10bq4)`, `(EP.10cc2)`, `(EP.10by6)`, and `(EP.10bw9)` hold,
then

```math
V_k^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{str}
+
C_{\mathrm{CZ}}\,A_k^v\,\mathcal B_{k,\omega}^{crit}
+
C_H' |I_k^{gap}|\,R_k^{loc}\,(L_k^v)^2
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right),
\tag{EP.10cd1}
```

and hence

```math
V_k^{col}\,\mathcal B_{k,\omega}^{col}
\le
\|\widetilde\chi_k\|_{L^\infty}
\left(
e^{L_k^v|I_k^{gap}|}
\left(
\frac{\mathcal V_k^{anc}}{|I_k^{gap}|}
+
\Pi_k^{str}
+
C_{\mathrm{CZ}}\,A_k^v\,\mathcal B_{k,\omega}^{crit}
+
C_H' |I_k^{gap}|\,R_k^{loc}\,(L_k^v)^2
+
C_H (d_k^{col})^{-3}
\int_{I_k^{gap}}
\int_{\operatorname{supp}\nabla\eta_k}|v_J(y,t)|^2\,dy\,dt
+
C_K d_k^{-4}
\int_{I_k^{gap}}
\|(1-\eta_k)^{1/2}v_J(\cdot,t)\|_{L^2}^2\,dt
+
C_{\mathrm{curl}}\mathcal W_k^{loc}
\right)
+
\operatorname{diam}(U_k)\,L_k^v
\right)
\mathcal B_{k,\omega}^{col}.
\tag{EP.10cd2}
```

Therefore the conservative adiabatic exact-potential branch now ends at the
following explicit residual packets:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one local **strain-linear** pressure singular-integral packet;
4. one vorticity-paid linear packet;
5. one explicit local quadratic Lipschitz packet;
6. one collar quadratic pressure-defect packet;
7. one far-field quadratic velocity-tail packet;
8. one local vorticity-gradient packet at the chart anchor;
9. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
10. retained-window geometric data `(M_k,N_k,\gamma_k)`.

This is the sharpest theorem-safe endpoint I can justify on the current
adiabatic exact-potential branch without a genuinely new local strain-pressure
theorem.

### Corollary EP.10ce (honest termination packet for the conservative adiabatic exact-potential branch)

After `EP.10cd`, every residual term on the conservative adiabatic branch is
either:

1. an already-isolated lower packet from the vorticity / collar / geometry
   side, or
2. the single genuinely new local theorem surface

```math
\Pi_k^{str}
=
\int_{I_k^{gap}}
|v_J(x_k,t)|
\left|
\operatorname{p.v.}\int_{\mathbf R^3}
H(x_k-y)\,\eta_k(y)\,S_J(y,t)\,dy
\right|dt.
\tag{EP.10ce1}
```

So the conservative adiabatic exact-potential branch terminates, on the current
note stack, at the following exact residual package:

1. one averaged anchor-velocity packet;
2. one pointwise local Lipschitz ceiling;
3. one local strain-linear pressure theorem `(EP.10ce1)`;
4. one vorticity-paid linear packet;
5. one explicit local quadratic Lipschitz packet;
6. one collar quadratic pressure-defect packet;
7. one far-field quadratic velocity-tail packet;
8. one local vorticity-gradient packet at the chart anchor;
9. the collar diffusion / lower-order vorticity packets from `EP.10bj`;
10. retained-window geometric data `(M_k,N_k,\gamma_k)`.

There is no further deterministic reduction available from the current note
stack without importing a genuinely new local strain-pressure theorem, or a
strictly stronger local strain regularity/localization packet that would
discharge `(EP.10ce1)`.

### Proposition EP.10cf (one classical sufficient realization of the strain-linear pressure packet is anchor strain plus a local Holder strain packet)

The minimal wall `(EP.10ce1)` stays in place. Now add a strictly stronger local
regularity packet. Fix `0<\alpha\le 1`, and assume

```math
\sup_{t\in I_k^{gap}}|v_J(x_k,t)|
\le
A_k^v,
\tag{EP.10cf1}
```

```math
\int_{I_k^{gap}} |S_J(x_k,t)|\,dt
\le
\Sigma_k^{anc},
\tag{EP.10cf2}
```

```math
\int_{I_k^{gap}}
[S_J(\cdot,t)]_{C^\alpha(\operatorname{supp}\eta_k)}\,dt
\le
\Sigma_{k,\alpha}^{hol},
\tag{EP.10cf3}
```

where

```math
[S_J(\cdot,t)]_{C^\alpha(\operatorname{supp}\eta_k)}
:=
\sup_{\substack{y,z\in\operatorname{supp}\eta_k\\ y\neq z}}
\frac{|S_J(y,t)-S_J(z,t)|}{|y-z|^\alpha}.
\tag{EP.10cf4}
```

Then the strain-linear pressure packet `(EP.10ce1)` obeys

```math
\Pi_k^{str}
\le
A_k^v\left(
C_{\eta,k}\,\Sigma_k^{anc}
+
C_{\eta,k,\alpha}\,\Sigma_{k,\alpha}^{hol}
\right).
\tag{EP.10cf5}
```

So one classical stronger sufficient realization of the minimal endpoint
`(EP.10ce1)` is:

1. one anchor velocity ceiling;
2. one anchor strain packet;
3. one local Holder strain packet.

**Proof.**
Insert

```math
S_J(y,t)=S_J(x_k,t)+\bigl(S_J(y,t)-S_J(x_k,t)\bigr)
\tag{EP.10cf6}
```

into `(EP.10ce1)`. This gives

```math
\operatorname{p.v.}\int H(x_k-y)\eta_k(y)S_J(y,t)\,dy
=
S_J(x_k,t)\,\operatorname{p.v.}\int H(x_k-y)\eta_k(y)\,dy
+
\operatorname{p.v.}\int H(x_k-y)\eta_k(y)\bigl(S_J(y,t)-S_J(x_k,t)\bigr)\,dy.
\tag{EP.10cf7}
```

The first term is bounded by `C_{\eta,k}|S_J(x_k,t)|`. For the second,
Holder continuity gives

```math
|S_J(y,t)-S_J(x_k,t)|
\le
[S_J(\cdot,t)]_{C^\alpha(\operatorname{supp}\eta_k)}\,|y-x_k|^\alpha,
\tag{EP.10cf8}
```

so the kernel estimate `|H(x_k-y)|\le C_H |x_k-y|^{-3}` yields an integrand
bounded by `|x_k-y|^{-3+\alpha}`, which is locally integrable for `\alpha>0`.
This gives

```math
\left|
\operatorname{p.v.}\int H(x_k-y)\eta_k(y)\bigl(S_J(y,t)-S_J(x_k,t)\bigr)\,dy
\right|
\le
C_{\eta,k,\alpha}[S_J(\cdot,t)]_{C^\alpha(\operatorname{supp}\eta_k)}.
\tag{EP.10cf9}
```

Multiply by `|v_J(x_k,t)|\le A_k^v`, integrate over `I_k^{gap}`, and use
`(EP.10cf2)`-`(EP.10cf3)` to obtain `(EP.10cf5)`. ∎

### Corollary EP.10cg (stronger sufficient realization of the conservative adiabatic endpoint)

Combine `EP.10ce` with `EP.10cf`. If the packets
`(EP.10cf1)`-`(EP.10cf3)` hold, together with the already-isolated lower
packets from `EP.10ce`, then the unique genuinely new theorem surface
`(EP.10ce1)` is discharged.

So the conservative adiabatic exact-potential branch has two distinct terminal
surfaces on disk:

1. the **minimal honest endpoint** `EP.10ce`, which stops at the local
   strain-linear pressure theorem;
2. the **stronger sufficient realization** `EP.10cf`, which pays that theorem
   by a local anchor strain plus local Holder strain packet.

### Proposition EP.10ch (the stronger sufficient realization reduces to averaged anchor strain plus a local strain-gradient packet)

Keep the stronger sufficient branch `EP.10cf`. First, if

```math
\int_{I_k^{gap}} |S_J(x_k,t)|\,dt
\le
\Sigma_k^{anc},
\tag{EP.10ch1}
```

then there exists an anchor time `\tau_k^S\in I_k^{gap}` such that

```math
|S_J(x_k,\tau_k^S)|
\le
\frac{\Sigma_k^{anc}}{|I_k^{gap}|}.
\tag{EP.10ch2}
```

Second, assume there is a local strain-gradient packet

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\eta_k}|\nabla S_J(y,t)|\,dt
\le
\Sigma_{k,\nabla S}^{loc}.
\tag{EP.10ch3}
```

Then for every `0<\alpha\le 1`,

```math
[S_J(\cdot,t)]_{C^\alpha(\operatorname{supp}\eta_k)}
\le
(2R_k^{loc})^{1-\alpha}
\sup_{y\in \operatorname{supp}\eta_k}|\nabla S_J(y,t)|,
\tag{EP.10ch4}
```

where `R_k^{loc}` is the local radius from `(EP.10ca3)`. Hence

```math
\Sigma_{k,\alpha}^{hol}
\le
(2R_k^{loc})^{1-\alpha}\,\Sigma_{k,\nabla S}^{loc}.
\tag{EP.10ch5}
```

Consequently the stronger sufficient realization `(EP.10cf5)` sharpens to

```math
\Pi_k^{str}
\le
A_k^v\left(
C_{\eta,k}\,\Sigma_k^{anc}
+
C_{\eta,k,\alpha}(2R_k^{loc})^{1-\alpha}\,\Sigma_{k,\nabla S}^{loc}
\right).
\tag{EP.10ch6}
```

So the stronger branch no longer needs a free local Holder packet. It reduces
to:

1. one anchor velocity ceiling;
2. one averaged anchor strain packet;
3. one local strain-gradient packet.

**Proof.**
The averaging statement `(EP.10ch2)` is the same minimizer/average argument used
earlier for anchor velocity and anchor vorticity packets. For `(EP.10ch4)`,
the mean-value theorem gives

```math
|S_J(y,t)-S_J(z,t)|
\le
\sup_{\xi\in \operatorname{supp}\eta_k}|\nabla S_J(\xi,t)|\,|y-z|,
\tag{EP.10ch7}
```

and since `|y-z|\le 2R_k^{loc}`,

```math
\frac{|S_J(y,t)-S_J(z,t)|}{|y-z|^\alpha}
\le
(2R_k^{loc})^{1-\alpha}
\sup_{\xi\in \operatorname{supp}\eta_k}|\nabla S_J(\xi,t)|.
\tag{EP.10ch8}
```

Taking the supremum in `y,z` yields `(EP.10ch4)`, integrating in time gives
`(EP.10ch5)`, and substituting into `(EP.10cf5)` yields `(EP.10ch6)`. ∎

### Corollary EP.10ci (stronger sufficient branch reduced to averaged anchor strain plus strain-gradient)

Combine `EP.10cg` with `EP.10ch`. Then the stronger sufficient realization of
the conservative adiabatic endpoint is discharged by:

1. one anchor velocity ceiling;
2. one averaged anchor strain packet;
3. one local strain-gradient packet;
4. the lower packets already isolated beneath `EP.10ce`.

So the only genuinely new ingredient on the stronger branch is no longer a
Holder strain packet; it is one local strain-gradient theorem.

### Corollary EP.10cj (honest termination packet for the stronger sufficient branch)

After `EP.10ci`, the stronger sufficient realization `EP.10cf` terminates, on
the current note stack, at the following exact residual package:

1. one anchor velocity ceiling;
2. one averaged anchor strain packet;
3. one local strain-gradient theorem;
4. the lower packets already isolated beneath the minimal endpoint `EP.10ce`.

There is no further deterministic reduction available on this stronger branch
from the current note stack without importing either:

1. a genuinely new local strain-gradient theorem, or
2. a strictly stronger local Hessian / strain-modulus theorem that would
   discharge `(EP.10ch3)`.

So the stronger sufficient route is now terminated just as cleanly as the
minimal route:

1. `EP.10ce` is the honest minimal endpoint at the local strain-linear pressure
   theorem;
2. `EP.10ci` / `EP.10cj` is the honest stronger endpoint at the local
   strain-gradient theorem.

### Proposition EP.10ck (the stronger strain-gradient endpoint admits an elliptic vorticity realization)

Keep the stronger endpoint `EP.10cj`, and let `\widetilde\eta_k\in C_c^\infty`
be a second chart cutoff such that `\widetilde\eta_k\equiv 1` on
`\operatorname{supp}\eta_k`. Since `v_J` is divergence free and
`\omega_J=\nabla\times v_J`,

```math
\Delta v_J
=
-\nabla\times\omega_J,
\tag{EP.10ck1}
```

and therefore

```math
\Delta S_J
=
\operatorname{Sym}\nabla\Delta v_J
=
-\operatorname{Sym}\nabla(\nabla\times\omega_J).
\tag{EP.10ck2}
```

Define the local vorticity-gradient packet

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\widetilde\eta_k}|\nabla\omega_J(y,t)|\,dt
\le
\Sigma_{k,\nabla\omega}^{loc}.
\tag{EP.10ck3}
```

Let

```math
\delta_k^{ell}
:=
\operatorname{dist}\bigl(\operatorname{supp}\eta_k,\operatorname{supp}(1-\widetilde\eta_k)\bigr)>0.
\tag{EP.10ck4}
```

Then the classical interior elliptic estimate for Poisson equations gives

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\eta_k}|\nabla S_J(y,t)|\,dt
\le
C_{\delta_k^{ell}}
\left(
\Sigma_{k,\nabla\omega}^{loc}
+
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\widetilde\eta_k}|S_J(y,t)|\,dt
\right).
\tag{EP.10ck5}
```

If the local Lipschitz ceiling `(EP.10bo2)` holds, then

```math
\sup_{y\in \operatorname{supp}\widetilde\eta_k}|S_J(y,t)|
\le
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}
\le
L_k^v,
\tag{EP.10ck6}
```

so the stronger endpoint packet `(EP.10ch3)` is realized by

```math
\Sigma_{k,\nabla S}^{loc}
\le
C_{\delta_k^{ell}}
\left(
\Sigma_{k,\nabla\omega}^{loc}
+
|I_k^{gap}|\,L_k^v
\right).
\tag{EP.10ck7}
```

So the stronger strain-gradient wall admits a clean elliptic sufficient route:

1. one local vorticity-gradient theorem;
2. one already-present local Lipschitz ceiling.

**Proof.**
Identity `(EP.10ck2)` follows from `(EP.10ck1)` by applying
`\operatorname{Sym}\nabla`. The interior elliptic estimate `(EP.10ck5)` is the
standard `C^1` estimate for solutions of Poisson equations on nested domains,
with source term controlled by `\nabla\omega_J` and lower-order term by `S_J`
itself. Substituting `(EP.10ck6)` gives `(EP.10ck7)`. ∎

### Corollary EP.10cl (stronger sufficient branch reduced further to a local vorticity-gradient theorem)

Combine `EP.10ci` with `EP.10ck`. Then the stronger sufficient realization of
the conservative adiabatic endpoint is discharged by:

1. one anchor velocity ceiling;
2. one averaged anchor strain packet;
3. one local vorticity-gradient theorem;
4. one local Lipschitz ceiling;
5. the lower packets already isolated beneath the minimal endpoint `EP.10ce`.

So after checking the local structure, the clean deterministic continuation of
the stronger branch is elliptic through vorticity, not through a new pressure-
Hessian packet.

### Corollary EP.10cm (honest termination packet for the elliptic stronger branch)

After `EP.10cl`, the strengthened route under `EP.10cf` terminates, on the
current note stack, at:

1. one local vorticity-gradient theorem;
2. one averaged anchor strain packet;
3. one anchor velocity ceiling;
4. one local Lipschitz ceiling;
5. the lower packets already isolated beneath `EP.10ce`.

There is no further deterministic reduction available on this elliptic stronger
branch from the current note stack without importing a genuinely new local
vorticity-gradient theorem, or a still-stronger local Hessian-of-vorticity /
modulus packet.

### Proposition EP.10cn (the local vorticity-gradient theorem reduces to anchor plus one localized derivative ceiling)

Keep the setting of `EP.10ck`, and choose
`\widehat\eta_k\in C_c^\infty(U_k)` such that `\widehat\eta_k\equiv 1` on
`\operatorname{supp}\widetilde\eta_k`. Write

```math
G_{J,k}
:=
\widehat\eta_k\,\nabla\omega_J.
\tag{EP.10cn1}
```

Assume there exists an anchor time `\tau_k^{\nabla\omega}\in I_k^{gap}` with

```math
\sup_{y\in \operatorname{supp}\widetilde\eta_k}
|\nabla\omega_J(y,\tau_k^{\nabla\omega})|
\le
W_{k,\nabla\omega}^{anc},
\tag{EP.10cn2}
```

and that the localized gradient field obeys the derivative ceiling

```math
\sup_{t\in I_k^{gap}}
\|\partial_t G_{J,k}(\cdot,t)\|_{L^\infty}
\le
D_k^{\nabla\omega}.
\tag{EP.10cn3}
```

Then for every `t\in I_k^{gap}`,

```math
\sup_{y\in \operatorname{supp}\widetilde\eta_k}
|\nabla\omega_J(y,t)|
\le
W_{k,\nabla\omega}^{anc}
+
D_k^{\nabla\omega}|t-\tau_k^{\nabla\omega}|,
\tag{EP.10cn4}
```

and therefore the local vorticity-gradient theorem `(EP.10ck3)` is realized by

```math
\Sigma_{k,\nabla\omega}^{loc}
\le
|I_k^{gap}|\,W_{k,\nabla\omega}^{anc}
+
|I_k^{gap}|^2\,D_k^{\nabla\omega}.
\tag{EP.10cn5}
```

So the first genuinely new wall under `EP.10cm` is now reduced to:

1. one local anchor-time vorticity-gradient packet;
2. one localized time-derivative ceiling for `\widehat\eta_k\nabla\omega_J`.

**Proof.**
Since `\widehat\eta_k\equiv 1` on `\operatorname{supp}\widetilde\eta_k`, one
has
`\nabla\omega_J(\cdot,t)=G_{J,k}(\cdot,t)` on
`\operatorname{supp}\widetilde\eta_k`. For any such `y`,

```math
G_{J,k}(y,t)-G_{J,k}(y,\tau_k^{\nabla\omega})
=
\int_{\tau_k^{\nabla\omega}}^t
\partial_s G_{J,k}(y,s)\,ds,
\tag{EP.10cn6}
```

so `(EP.10cn3)` gives

```math
|G_{J,k}(y,t)|
\le
|G_{J,k}(y,\tau_k^{\nabla\omega})|
+
D_k^{\nabla\omega}|t-\tau_k^{\nabla\omega}|.
\tag{EP.10cn7}
```

Taking the supremum over `y\in\operatorname{supp}\widetilde\eta_k` and using
`(EP.10cn2)` yields `(EP.10cn4)`. Integrating `(EP.10cn4)` over
`I_k^{gap}` gives `(EP.10cn5)`. ∎

### Proposition EP.10co (the localized derivative ceiling reduces to one differentiated vorticity-transport packet)

Keep the setting of `EP.10cn`. Differentiating the classical vorticity equation
`(EP.10ba2)` gives

```math
\partial_t\nabla\omega_J
-\nu\Delta\nabla\omega_J
+
(v_J\cdot\nabla)\nabla\omega_J
=
\nabla\!\bigl((\omega_J\cdot\nabla)v_J\bigr)
-
(\nabla v_J)\,\nabla\omega_J.
\tag{EP.10co1}
```

Therefore the localized gradient field `(EP.10cn1)` satisfies

```math
\partial_t G_{J,k}
-\nu\Delta G_{J,k}
+
(v_J\cdot\nabla)G_{J,k}
=
\widehat\eta_k\,\nabla\!\bigl((\omega_J\cdot\nabla)v_J\bigr)
-
\widehat\eta_k\,(\nabla v_J)\,\nabla\omega_J
+
F_{J,k,\nabla\omega}^{cut},
\tag{EP.10co2}
```

with cutoff source

```math
F_{J,k,\nabla\omega}^{cut}
:=
(v_J\cdot\nabla\widehat\eta_k)\,\nabla\omega_J
-2\nu\,\nabla\widehat\eta_k\cdot\nabla^2\omega_J
-\nu(\Delta\widehat\eta_k)\,\nabla\omega_J.
\tag{EP.10co3}
```

Consequently a sufficient packet for the derivative ceiling `(EP.10cn3)` is

```math
\sup_{t\in I_k^{gap}}
\Bigl(
\nu\|\Delta G_{J,k}(\cdot,t)\|_{L^\infty}
+
\|(v_J\cdot\nabla)G_{J,k}(\cdot,t)\|_{L^\infty}
+
\|\widehat\eta_k(\nabla v_J)\nabla\omega_J(\cdot,t)\|_{L^\infty}
+
\|\widehat\eta_k\nabla((\omega_J\cdot\nabla)v_J)(\cdot,t)\|_{L^\infty}
+
\|F_{J,k,\nabla\omega}^{cut}(\cdot,t)\|_{L^\infty}
\Bigr)
\le
D_k^{\nabla\omega}.
\tag{EP.10co4}
```

So the differentiated stronger branch is no longer sitting at an abstract local
gradient theorem. It is exactly one localized differentiated
vorticity-transport packet.

**Proof.**
Equation `(EP.10co1)` is the product rule applied to
`\partial_i[(v_J\cdot\nabla)\omega_J]` in `(EP.10ba2)`, namely
`\partial_i[(v_J\cdot\nabla)\omega_J]
=
(v_J\cdot\nabla)\partial_i\omega_J
+
(\partial_i v_J\cdot\nabla)\omega_J`.
Applying the cutoff `\widehat\eta_k` and the identity
`\Delta(\widehat\eta_k\nabla\omega_J)
=
\widehat\eta_k\Delta\nabla\omega_J
+2\nabla\widehat\eta_k\cdot\nabla^2\omega_J
+(\Delta\widehat\eta_k)\nabla\omega_J`
gives `(EP.10co2)`-`(EP.10co3)`. Taking `L^\infty` norms in `(EP.10co2)` and
using the triangle inequality yields `(EP.10co4)`, which is exactly the
sufficient derivative packet for `(EP.10cn3)`. ∎

### Corollary EP.10cp (the elliptic stronger branch extends to an explicit differentiated vorticity-transport endpoint)

Combine `EP.10cl` with `EP.10cn`-`EP.10co`. Then the stronger elliptic route
under `EP.10cm` is discharged by:

1. one local anchor-time vorticity-gradient packet `(EP.10cn2)`;
2. one differentiated localized vorticity-transport packet `(EP.10co4)`;
3. one averaged anchor strain packet;
4. one anchor velocity ceiling;
5. one local Lipschitz ceiling;
6. the lower packets already isolated beneath the minimal endpoint `EP.10ce`.

So the clean continuation of the stronger elliptic route is parabolic through
localized `\nabla\omega_J`, not a rewrite of the minimal strain-pressure wall.

### Corollary EP.10cq (honest termination packet for the differentiated vorticity branch)

After `EP.10cp`, the new continuation beneath `EP.10cm` terminates, on the
current note stack, at:

1. one local anchor-time vorticity-gradient packet;
2. one differentiated localized vorticity-transport packet;
3. one averaged anchor strain packet;
4. one anchor velocity ceiling;
5. one local Lipschitz ceiling;
6. the lower packets already isolated beneath `EP.10ce`.

There is no further deterministic reduction available on this strengthened
local branch from the current note stack without importing a genuinely new
localized parabolic gradient estimate for `\nabla\omega_J`, or a stronger
anchor-gradient / modulus packet.

### Proposition EP.10cr (the differentiated vorticity wall reduces to one localized transport-diffusion propagation theorem)

Keep the setting of `EP.10co`, and let `\tau_k^{\nabla\omega}\in I_k^{gap}` be
an anchor time. Define the localized differentiated source

```math
\mathcal H_{J,k}^{\nabla\omega}
:=
\widehat\eta_k\,\nabla\!\bigl((\omega_J\cdot\nabla)v_J\bigr)
+
F_{J,k,\nabla\omega}^{cut}.
\tag{EP.10cr1}
```

Assume the localized coefficient/source packet

```math
\int_{I_k^{gap}}
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}\,dt
\le
\Lambda_k^v,
\tag{EP.10cr2}
```

```math
\int_{I_k^{gap}}
\|\mathcal H_{J,k}^{\nabla\omega}(\cdot,t)\|_{L^\infty}\,dt
\le
\mathcal S_{k,\nabla\omega}^{loc}.
\tag{EP.10cr3}
```

Then a standard transport-diffusion estimate in `L^\infty` for the vector
field `G_{J,k}` yields

```math
\sup_{t\in I_k^{gap}}
\|G_{J,k}(\cdot,t)\|_{L^\infty}
\le
C_{\mathrm{td}}^{\nabla\omega}
e^{C_{\mathrm{td}}^{\nabla\omega}\Lambda_k^v}
\left(
\|G_{J,k}(\cdot,\tau_k^{\nabla\omega})\|_{L^\infty}
+
\mathcal S_{k,\nabla\omega}^{loc}
\right).
\tag{EP.10cr4}
```

Consequently, because `\widehat\eta_k\equiv 1` on
`\operatorname{supp}\widetilde\eta_k`,

```math
\sup_{t\in I_k^{gap}}
\sup_{y\in \operatorname{supp}\widetilde\eta_k}
|\nabla\omega_J(y,t)|
\le
C_{\mathrm{td}}^{\nabla\omega}
e^{C_{\mathrm{td}}^{\nabla\omega}\Lambda_k^v}
\left(
W_{k,\nabla\omega}^{anc}
+
\mathcal S_{k,\nabla\omega}^{loc}
\right),
\tag{EP.10cr5}
```

and hence the local vorticity-gradient theorem `(EP.10ck3)` is realized by

```math
\Sigma_{k,\nabla\omega}^{loc}
\le
|I_k^{gap}|\,
C_{\mathrm{td}}^{\nabla\omega}
e^{C_{\mathrm{td}}^{\nabla\omega}\Lambda_k^v}
\left(
W_{k,\nabla\omega}^{anc}
+
\mathcal S_{k,\nabla\omega}^{loc}
\right).
\tag{EP.10cr6}
```

So the strengthened local branch no longer needs the raw derivative ceiling
`(EP.10cn3)` once one accepts the standard localized transport-diffusion
propagation theorem.

**Proof.**
Rewrite `(EP.10co2)` as

```math
\partial_t G_{J,k}
-\nu\Delta G_{J,k}
+
(v_J\cdot\nabla)G_{J,k}
+
(\nabla v_J)G_{J,k}
=
\mathcal H_{J,k}^{\nabla\omega}.
\tag{EP.10cr7}
```

Here we used `\widehat\eta_k(\nabla v_J)\nabla\omega_J=(\nabla v_J)G_{J,k}`.
Applying the standard `L^\infty` transport-diffusion Gronwall estimate for
linear vector equations with coefficient `\nabla v_J` and source
`\mathcal H_{J,k}^{\nabla\omega}`, together with `(EP.10cr2)`-`(EP.10cr3)`,
gives `(EP.10cr4)`. The identities `(EP.10cr5)`-`(EP.10cr6)` then follow from
`\widehat\eta_k\equiv 1` on `\operatorname{supp}\widetilde\eta_k` and by
integrating over `I_k^{gap}`. ∎

### Proposition EP.10cs (the differentiated self-coupling term is absorbable into the coefficient packet)

Keep the setting of `EP.10cr`. By the product rule,

```math
\nabla\!\bigl((\omega_J\cdot\nabla)v_J\bigr)
=
(\nabla\omega_J)\,\nabla v_J
+
(\omega_J\cdot\nabla)\nabla v_J.
\tag{EP.10cs1}
```

Therefore on `U_k\times I_k^{gap}`,

```math
\|\widehat\eta_k\nabla((\omega_J\cdot\nabla)v_J)(\cdot,t)\|_{L^\infty}
\le
\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}
\|G_{J,k}(\cdot,t)\|_{L^\infty}
+
\|\widehat\eta_k(\omega_J\cdot\nabla)\nabla v_J(\cdot,t)\|_{L^\infty}.
\tag{EP.10cs2}
```

Define the pure differentiated source packet

```math
\int_{I_k^{gap}}
\|\widehat\eta_k(\omega_J\cdot\nabla)\nabla v_J(\cdot,t)
+
F_{J,k,\nabla\omega}^{cut}(\cdot,t)\|_{L^\infty}\,dt
\le
\mathcal C_{k,\nabla\omega}^{cut}.
\tag{EP.10cs3}
```

Then the localized transport-diffusion propagation may be rewritten in the
closed Gronwall form

```math
\sup_{t\in I_k^{gap}}
\|G_{J,k}(\cdot,t)\|_{L^\infty}
\le
C_{\mathrm{td}}^{\nabla\omega\prime}
e^{C_{\mathrm{td}}^{\nabla\omega\prime}\Lambda_k^v}
\left(
\|G_{J,k}(\cdot,\tau_k^{\nabla\omega})\|_{L^\infty}
+
\mathcal C_{k,\nabla\omega}^{cut}
\right),
\tag{EP.10cs4}
```

where `\Lambda_k^v` is the coefficient packet from `(EP.10cr2)`.

So the differentiated self-coupling part is not a separate higher-source wall.
Once `(EP.10cs3)` is admitted, the only genuine inhomogeneous source on this
strengthened local branch is the pure differentiated source packet itself.

**Proof.**
Insert `(EP.10cs2)` into `(EP.10cr1)`-`(EP.10cr3)`. The term
`\|\nabla v_J\|_{L^\infty}\|G_{J,k}\|_{L^\infty}` is absorbed into the same
transport-diffusion Gronwall coefficient as in `(EP.10cr7)`, while the
remaining source is exactly the packet `(EP.10cs3)`. This yields `(EP.10cs4)`.
∎

### Corollary EP.10ct (the differentiated vorticity branch reduces to anchor gradient plus one coefficient/source packet)

Combine `EP.10cp` with `EP.10cr`-`EP.10cs`. Then the strengthened local route
under `EP.10cm` is discharged by:

1. one local anchor-time vorticity-gradient packet;
2. one local Lipschitz coefficient packet `(EP.10cr2)`;
3. one pure differentiated source packet `(EP.10cs3)`;
4. one averaged anchor strain packet;
5. one anchor velocity ceiling;
6. the lower packets already isolated beneath `EP.10ce`.

So the parabolic continuation beneath `EP.10cq` is now in closed propagation
form rather than at the raw derivative ceiling `(EP.10co4)`.

### Corollary EP.10cu (honest termination packet for the transport-diffusion continuation)

After `EP.10ct`, the strengthened local route terminates, on the current note
stack, at:

1. one local anchor-time vorticity-gradient packet;
2. one local Lipschitz coefficient packet;
3. one pure differentiated source packet
   `\mathcal C_{k,\nabla\omega}^{cut}`;
4. one averaged anchor strain packet;
5. one anchor velocity ceiling;
6. the lower packets already isolated beneath `EP.10ce`.

There is no further deterministic reduction available on this branch from the
current note stack without importing a genuinely new local theorem for the pure
differentiated source packet, or a stronger local Hessian/gradient realization
that discharges `(EP.10cs3)`.

### Proposition EP.10cv (the pure differentiated source packet splits into one local differentiated convection packet plus collar higher-derivative packets)

Keep the setting of `EP.10cs`, and choose a second cutoff
`\widetilde\eta_k\in C_c^\infty(U_k)` such that
`\widetilde\eta_k\equiv 1` on
`\operatorname{supp}\nabla\widehat\eta_k\cup\operatorname{supp}\Delta\widehat\eta_k`.
Define the local differentiated convection packet

```math
\int_{I_k^{gap}}
\|\widehat\eta_k(\omega_J\cdot\nabla)\nabla v_J(\cdot,t)\|_{L^\infty}\,dt
\le
\mathcal Q_{k,\nabla\omega}^{conv}.
\tag{EP.10cv1}
```

Define the collar differentiated packets

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\nabla\widehat\eta_k}
|v_J(y,t)|\,|\nabla\omega_J(y,t)|\,dt
\le
\mathcal T_{k,\nabla\omega}^{col},
\tag{EP.10cv2}
```

```math
\nu\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\nabla\widehat\eta_k}
|\nabla^2\omega_J(y,t)|\,dt
\le
\mathcal D_{k,\nabla\omega}^{col},
\tag{EP.10cv3}
```

```math
\nu\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\Delta\widehat\eta_k}
|\nabla\omega_J(y,t)|\,dt
\le
\mathcal G_{k,\nabla\omega}^{col}.
\tag{EP.10cv4}
```

Then the pure differentiated source packet `(EP.10cs3)` obeys

```math
\mathcal C_{k,\nabla\omega}^{cut}
\le
\mathcal Q_{k,\nabla\omega}^{conv}
+
C_{\widehat\eta}\,\mathcal T_{k,\nabla\omega}^{col}
+
2C_{\widehat\eta}\,\mathcal D_{k,\nabla\omega}^{col}
+
C_{\widehat\eta}'\,\mathcal G_{k,\nabla\omega}^{col},
\tag{EP.10cv5}
```

where `C_{\widehat\eta},C_{\widehat\eta}'` depend only on the fixed cutoff
geometry.

So the strengthened local branch no longer stops at one opaque pure source
packet. It stops at:

1. one local differentiated convection packet;
2. one collar differentiated transport packet;
3. one collar differentiated diffusion packet;
4. one lower-order collar gradient packet.

**Proof.**
Insert the definition `(EP.10co3)` of `F_{J,k,\nabla\omega}^{cut}` into
`(EP.10cs3)`. Then use the fixed cutoff bounds
`|\nabla\widehat\eta_k|\le C_{\widehat\eta}\mathbf 1_{\operatorname{supp}\nabla\widehat\eta_k}`
and
`|\Delta\widehat\eta_k|\le C_{\widehat\eta}'\mathbf 1_{\operatorname{supp}\Delta\widehat\eta_k}`
to estimate each cutoff term by `(EP.10cv2)`-`(EP.10cv4)`, while the
undifferentiated interior term is exactly `(EP.10cv1)`. This gives
`(EP.10cv5)`. ∎

### Corollary EP.10cw (the transport-diffusion continuation reduces to differentiated convection plus collar higher-derivative packets)

Combine `EP.10ct` with `EP.10cv`. Then the strengthened local route beneath
`EP.10cm` is discharged by:

1. one local anchor-time vorticity-gradient packet;
2. one local Lipschitz coefficient packet;
3. one local differentiated convection packet `(EP.10cv1)`;
4. one collar differentiated transport packet `(EP.10cv2)`;
5. one collar differentiated diffusion packet `(EP.10cv3)`;
6. one lower-order collar gradient packet `(EP.10cv4)`;
7. one averaged anchor strain packet;
8. one anchor velocity ceiling;
9. the lower packets already isolated beneath `EP.10ce`.

So the only genuinely new higher-order interior wall is now the differentiated
convection packet, together with the collar higher-derivative packets forced by
the localization.

### Corollary EP.10cx (honest termination packet for the differentiated transport-diffusion route)

After `EP.10cw`, the strengthened local route terminates, on the current note
stack, at:

1. one local anchor-time vorticity-gradient packet;
2. one local Lipschitz coefficient packet;
3. one local differentiated convection packet;
4. one collar differentiated transport packet;
5. one collar differentiated diffusion packet;
6. one lower-order collar gradient packet;
7. one averaged anchor strain packet;
8. one anchor velocity ceiling;
9. the lower packets already isolated beneath `EP.10ce`.

There is no further deterministic reduction available on this branch from the
current note stack without importing a genuinely new local theorem for the
differentiated convection packet, or a stronger collar-control theorem for the
higher-derivative cutoff packets.

### Proposition EP.10cy (the differentiated convection packet splits into a strain-transport part plus a vorticity-gradient coupling part)

Keep the setting of `EP.10cv`, and write

```math
\nabla v_J
=
S_J+\Omega_J,
\qquad
\Omega_J:=\operatorname{Skew}\nabla v_J.
\tag{EP.10cy1}
```

Since `\Omega_J` is the skew part of `\nabla v_J`, its entries are linear in
`\omega_J=\nabla\times v_J`, so there is a dimensional constant
`C_{\mathrm{skew}}>0` such that

```math
|\nabla\Omega_J(y,t)|
\le
C_{\mathrm{skew}}\,|\nabla\omega_J(y,t)|
\qquad\text{pointwise on }U_k\times I_k^{gap}.
\tag{EP.10cy2}
```

Define the local differentiated strain-transport packet

```math
\int_{I_k^{gap}}
\|\widehat\eta_k(\omega_J\cdot\nabla)S_J(\cdot,t)\|_{L^\infty}\,dt
\le
\mathcal Q_{k,\nabla S}^{conv}.
\tag{EP.10cy3}
```

Define the local quadratic vorticity-gradient coupling packet

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\widehat\eta_k}
|\omega_J(y,t)|\,|\nabla\omega_J(y,t)|\,dt
\le
\mathcal Q_{k,\omega\nabla\omega}^{quad}.
\tag{EP.10cy4}
```

Then the differentiated convection packet `(EP.10cv1)` obeys

```math
\mathcal Q_{k,\nabla\omega}^{conv}
\le
\mathcal Q_{k,\nabla S}^{conv}
+
C_{\mathrm{skew}}\,
\mathcal Q_{k,\omega\nabla\omega}^{quad}.
\tag{EP.10cy5}
```

So the higher-order interior wall in `EP.10cx` admits one clean stronger
sufficient split:

1. a differentiated strain-transport packet;
2. a quadratic vorticity-gradient coupling packet.

The minimal endpoint `EP.10cx` stays in place; this is a stronger continuation,
not a replacement.

**Proof.**
By `(EP.10cy1)`,

```math
(\omega_J\cdot\nabla)\nabla v_J
=
(\omega_J\cdot\nabla)S_J
+
(\omega_J\cdot\nabla)\Omega_J.
\tag{EP.10cy6}
```

Multiplying by `\widehat\eta_k` and taking `L^\infty` norms gives

```math
\|\widehat\eta_k(\omega_J\cdot\nabla)\nabla v_J(\cdot,t)\|_{L^\infty}
\le
\|\widehat\eta_k(\omega_J\cdot\nabla)S_J(\cdot,t)\|_{L^\infty}
+
\sup_{y\in\operatorname{supp}\widehat\eta_k}
|\omega_J(y,t)|\,|\nabla\Omega_J(y,t)|.
\tag{EP.10cy7}
```

Using `(EP.10cy2)` in the second term and integrating over `I_k^{gap}` yields
`(EP.10cy5)`. ∎

### Corollary EP.10cz (stronger continuation of the differentiated transport-diffusion route)

Combine `EP.10cw` with `EP.10cy`. Then the strengthened local route beneath
the minimal endpoint `EP.10cx` is discharged by:

1. one local anchor-time vorticity-gradient packet;
2. one local Lipschitz coefficient packet;
3. one local differentiated strain-transport packet `(EP.10cy3)`;
4. one local quadratic vorticity-gradient coupling packet `(EP.10cy4)`;
5. one collar differentiated transport packet `(EP.10cv2)`;
6. one collar differentiated diffusion packet `(EP.10cv3)`;
7. one lower-order collar gradient packet `(EP.10cv4)`;
8. one averaged anchor strain packet;
9. one anchor velocity ceiling;
10. the lower packets already isolated beneath `EP.10ce`.

So on this stronger continuation, the only genuinely new higher-order interior
wall is now the differentiated strain-transport packet together with the
quadratic vorticity-gradient coupling packet, while the collar side remains
separate.

### Corollary EP.10da (honest termination packet for the stronger differentiated-convection split)

After `EP.10cz`, the strengthened local route terminates, on the current note
stack, at:

1. one local anchor-time vorticity-gradient packet;
2. one local Lipschitz coefficient packet;
3. one local differentiated strain-transport packet;
4. one local quadratic vorticity-gradient coupling packet;
5. one collar differentiated transport packet;
6. one collar differentiated diffusion packet;
7. one lower-order collar gradient packet;
8. one averaged anchor strain packet;
9. one anchor velocity ceiling;
10. the lower packets already isolated beneath `EP.10ce`.

There is no further deterministic reduction available on this stronger local
continuation from the current note stack without importing a genuinely new
differentiated strain-transport theorem, or a stronger local theorem for the
quadratic vorticity-gradient coupling / collar higher-derivative packets.

### Proposition EP.10db (the stronger differentiated-convection split is controlled by enlarged-support gradient packets plus a pointwise Lipschitz ceiling)

Keep the setting of `EP.10cy`, and choose
`\bar\eta_k\in C_c^\infty(U_k)` such that `\bar\eta_k\equiv 1` on
`\operatorname{supp}\widehat\eta_k`. Assume the enlarged-support local gradient
packets

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\bar\eta_k}|\nabla S_J(y,t)|\,dt
\le
\overline\Sigma_{k,\nabla S}^{loc},
\tag{EP.10db1}
```

```math
\int_{I_k^{gap}}
\sup_{y\in \operatorname{supp}\bar\eta_k}|\nabla\omega_J(y,t)|\,dt
\le
\overline\Sigma_{k,\nabla\omega}^{loc}.
\tag{EP.10db2}
```

Assume also the pointwise local Lipschitz ceiling `(EP.10bo2)`. Since
`\omega_J=\nabla\times v_J`, there is a dimensional constant `C_{\curl}>0`
such that

```math
\sup_{y\in U_k}|\omega_J(y,t)|
\le
C_{\curl}\,\|\nabla v_J(\cdot,t)\|_{L^\infty(U_k)}
\le
C_{\curl}\,L_k^v.
\tag{EP.10db3}
```

Then the differentiated strain-transport and quadratic vorticity-gradient
packets satisfy

```math
\mathcal Q_{k,\nabla S}^{conv}
\le
C_{\curl}\,L_k^v\,\overline\Sigma_{k,\nabla S}^{loc},
\tag{EP.10db4}
```

```math
\mathcal Q_{k,\omega\nabla\omega}^{quad}
\le
C_{\curl}\,L_k^v\,\overline\Sigma_{k,\nabla\omega}^{loc}.
\tag{EP.10db5}
```

Consequently the stronger differentiated-convection split `EP.10da` admits the
stronger sufficient realization:

1. one enlarged-support local strain-gradient packet;
2. one enlarged-support local vorticity-gradient packet;
3. one pointwise local Lipschitz ceiling;
4. the collar differentiated packets from `EP.10cv`;
5. the anchor/strain/velocity/lower packets already carried by `EP.10da`.

**Proof.**
Because `\bar\eta_k\equiv 1` on `\operatorname{supp}\widehat\eta_k`, one has

```math
\|\widehat\eta_k(\omega_J\cdot\nabla)S_J(\cdot,t)\|_{L^\infty}
\le
\sup_{y\in\operatorname{supp}\widehat\eta_k}|\omega_J(y,t)|
\sup_{y\in\operatorname{supp}\bar\eta_k}|\nabla S_J(y,t)|.
\tag{EP.10db6}
```

Using `(EP.10db3)` and integrating over `I_k^{gap}` gives `(EP.10db4)`. The
same argument with `|\nabla\omega_J|` in place of `|\nabla S_J|` yields
`(EP.10db5)`. ∎

### Proposition EP.10dc (the enlarged-support strain-gradient packet admits the same elliptic vorticity realization)

Keep the setting of `EP.10db`, and choose
`\widetilde{\bar\eta}_k\in C_c^\infty(U_k)` such that
`\widetilde{\bar\eta}_k\equiv 1` on `\operatorname{supp}\bar\eta_k`. Let

```math
\delta_k^{\bar\ell}
:=
\operatorname{dist}\bigl(\operatorname{supp}\bar\eta_k,
\operatorname{supp}(1-\widetilde{\bar\eta}_k)\bigr)>0.
\tag{EP.10dc1}
```

Then the same elliptic argument as in `EP.10ck` gives

```math
\overline\Sigma_{k,\nabla S}^{loc}
\le
C_{\delta_k^{\bar\ell}}
\left(
\overline\Sigma_{k,\nabla\omega}^{loc}
+
|I_k^{gap}|\,L_k^v
\right).
\tag{EP.10dc2}
```

So after enlarging the support once, the strain-gradient side is still not a
separate wall. It is again paid by an enlarged-support local vorticity-gradient
packet together with the same pointwise local Lipschitz ceiling.

**Proof.**
Repeat the proof of `EP.10ck` with `\eta_k,\widetilde\eta_k` replaced by
`\bar\eta_k,\widetilde{\bar\eta}_k`. The identities
`\Delta v_J=-\nabla\times\omega_J` and
`\Delta S_J=-\operatorname{Sym}\nabla(\nabla\times\omega_J)` are unchanged, and
the only effect is the new cutoff geometry constant
`C_{\delta_k^{\bar\ell}}`. Using `(EP.10bo2)` on
`\operatorname{supp}\widetilde{\bar\eta}_k\subset U_k` yields `(EP.10dc2)`. ∎

### Corollary EP.10dd (stronger enlarged-support continuation of the differentiated-convection route)

Combine `EP.10da` with `EP.10db`-`EP.10dc`. Then the strengthened local route
beneath `EP.10da` is discharged by:

1. one enlarged-support local vorticity-gradient packet `(EP.10db2)`;
2. one pointwise local Lipschitz ceiling `(EP.10bo2)`;
3. one collar differentiated transport packet `(EP.10cv2)`;
4. one collar differentiated diffusion packet `(EP.10cv3)`;
5. one lower-order collar gradient packet `(EP.10cv4)`;
6. one local anchor-time vorticity-gradient packet;
7. one averaged anchor strain packet;
8. one anchor velocity ceiling;
9. the lower packets already isolated beneath `EP.10ce`.

So on this stronger continuation, the interior higher-order wall has collapsed
to one enlarged-support local vorticity-gradient theorem plus the pointwise
local Lipschitz ceiling, while the collar higher-derivative packets remain
separate.

### Corollary EP.10de (honest termination packet for the enlarged-support continuation)

After `EP.10dd`, the strengthened local route terminates, on the current note
stack, at:

1. one enlarged-support local vorticity-gradient packet;
2. one pointwise local Lipschitz ceiling;
3. one collar differentiated transport packet;
4. one collar differentiated diffusion packet;
5. one lower-order collar gradient packet;
6. one local anchor-time vorticity-gradient packet;
7. one averaged anchor strain packet;
8. one anchor velocity ceiling;
9. the lower packets already isolated beneath `EP.10ce`.

There is no further deterministic reduction available on this stronger local
continuation from the current note stack without importing a genuinely new
enlarged-support local vorticity-gradient theorem, or a stronger collar-control
theorem for the higher-derivative cutoff packets.

### Proposition EP.10df (further continuation would reopen the same local vorticity-gradient branch on an enlarged cutoff)

Keep the setting of `EP.10de`. The only apparent continuation of the enlarged-
support local vorticity-gradient packet `(EP.10db2)` is to rerun the same
localized transport-diffusion program used earlier for `EP.10cn`-`EP.10cx`,
but now with the cutoff `\bar\eta_k` in place of `\widetilde\eta_k` and with a
still larger auxiliary cutoff outside `\operatorname{supp}\bar\eta_k`.

That continuation does not introduce a new theorem type. It reproduces the same
chain:

1. anchor-time enlarged-support vorticity-gradient packet;
2. localized differentiated transport-diffusion propagation;
3. self-coupling absorption into the coefficient packet;
4. pure differentiated source split into interior convection plus collar
   higher-derivative terms.

So without a support-stable theorem that controls the local vorticity-gradient
packet uniformly as the cutoff enlarges inside `U_k`, any further continuation
from `EP.10de` is a cutoff-inflation loop rather than a genuinely new
deterministic reduction.

**Proof.**
The proofs of `EP.10cn`, `EP.10co`, `EP.10cr`, `EP.10cs`, and `EP.10cv` depend
only on the existence of one cutoff equal to `1` on a smaller support and one
further cutoff outside that support. Replacing `\widetilde\eta_k` by
`\bar\eta_k` and introducing one more outer cutoff reproduces the same
algebraic and parabolic steps with new geometric constants but no new theorem
surface. Therefore the route does not shrink in kind; it merely moves the same
local vorticity-gradient debt to a larger support. ∎

### Corollary EP.10dg (terminal boundary for the current stronger local family)

The branch family under `EP.10cx` and `EP.10de` is now terminal on the current
note stack.

There are exactly two honest ways forward from here:

1. prove a support-stable local vorticity-gradient theorem that does not reopen
   the same cutoff-inflation chain;
2. prove a stronger collar-control theorem that collapses the higher-derivative
   cutoff packets directly.

Absent one of those genuinely new inputs, `EP.10de` is the honest stopping
surface for the stronger enlarged-support continuation.

### Corollary EP.11 (fixed adiabatic forcing schedule at `\alpha=\frac14`)

Under the scale-envelope hypotheses `(F.11h6)`-`(F.11h7)`, choose

```math
\gamma_k:=e^{2CK_k}r_k^{1/4}.
\tag{EP.11a}
```

Then the retained-family forcing series `(F.11h4)`-`(F.11h5)` become

```math
\sum_k C_k e^{-CK_k}r_k^{19/4}<\infty,
\tag{EP.11b}
```

and

```math
\sum_k C_k e^{-5CK_k}r_k^{1/4}<\infty.
\tag{EP.11c}
```

So the adiabatic forcing branch admits one fixed theorem-facing schedule:
choose `\alpha=\frac14`, keep the split `\gamma_k^{-1}` / `\gamma_k^{-3}`
forcing series, and discharge `E2` by proving `(EP.11b)`-`(EP.11c)`.

This is the sharp version of the retained-window forcing schedule currently
supported by `F.11h`. It does not remove the cubic inverse-gap loss; it only
freezes the selector schedule so the open forcing theorem becomes one explicit
two-series summability target.

### Corollary EP.11d (dyadic Carleson-growth packet jointly closes `E2` and the forcing part of `V3`)

Under the fixed choice `(EP.11a)`, assume the retained windows are indexed by
dyadic scales

```math
r_k=2^{-j_k},
\tag{EP.11d1}
```

and that there exist constants `A,\theta,\kappa>0` such that

```math
\sum_{k:\,j_k=j} C_k \le A\,2^{\theta j}
\qquad\text{for every }j\ge 0,
\tag{EP.11d2}
```

and

```math
K_k\ge \kappa j_k.
\tag{EP.11d3}
```

Set

```math
\beta:=\frac{C\kappa}{\log 2}.
\tag{EP.11d4}
```

Then

```math
e^{-CK_k}\le 2^{-\beta j_k},
\qquad
e^{-5CK_k}\le 2^{-5\beta j_k},
\tag{EP.11d5}
```

so the two retained-family forcing series are dominated by

```math
\sum_k C_k e^{-CK_k}r_k^{19/4}
\le
A\sum_{j\ge 0}2^{-(19/4+\beta-\theta)j},
\tag{EP.11d6}
```

and

```math
\sum_k C_k e^{-5CK_k}r_k^{1/4}
\le
A\sum_{j\ge 0}2^{-(1/4+5\beta-\theta)j}.
\tag{EP.11d7}
```

Hence both series converge once

```math
\theta<\frac14+5\beta.
\tag{EP.11d8}
```

So the pair

```math
\boxed{
r_k=2^{-j_k},\quad
\sum_{k:\,j_k=j} C_k \le A2^{\theta j},\quad
K_k\ge \kappa j_k,\quad
\theta<\frac14+\frac{5C\kappa}{\log 2}
}
\tag{EP.11d9}
```

is a clean sufficient theorem-facing packet that jointly closes `E2` and the
forcing-side summability part of `V3`.

### Corollary EP.11e (separate stronger adiabatic continuation beyond the minimal retained-cover endpoint)

Keep the minimal global exact-potential endpoint `EP.10ajA` fixed. Assume now
that one leaves the installed minimal localized-projector coarse packet and
rejoins the older exact-potential adiabatic chain. Assume:

1. `D.7mr2` holds on every retained window;
2. the scheduler / boot entrance hypotheses needed to apply `EP.8` are
   available;
3. the retained-family lower-gap packet `(F.11e1)`;
4. the adiabatic window envelopes `(F.11h1)`-`(F.11h2)`;
5. the scale envelopes `(F.11h6)` and packing bound `(F.11h7)`;
6. the fixed forcing packet `(EP.11d9)`;
7. the retained-window packets `V1` and `V2`.

Then the stronger adiabatic continuation closes on this separate route:

```math
D.7mr2
+\texttt{EP.11d forcing packet}
+V1+V2
\Longrightarrow
EP.8
\Longrightarrow
PD.70z.
\tag{EP.11e1}
```

If in addition the gap hypothesis `(EP.8c)` holds, then `EP.8` further gives

```math
SG.4B.
\tag{EP.11e2}
```

So the next honest continuation beyond the minimal retained-cover endpoint is a
route switch, not a proof of `(EP.10ajA1)`.

**Proof.**
Hypotheses (1)-(5) place the retained windows back in the older
exact-potential adiabatic framework rather than the installed minimal
localized-projector coarse globalization. Hypothesis (6) closes the retained-
family forcing side. With `V1+V2` and the scheduler / boot entrance hypotheses
also in hand, `EP.8` applies and yields `PD.70z`, and then `(EP.8c)` implies
`SG.4B`. ∎

### Corollary EP.11f (after the fixed adiabatic forcing packet, the only branch-specific open debt is `V2`)

On the stronger adiabatic continuation from `EP.11e`, once the forcing side is
closed by `(EP.11d9)`, the only remaining branch-specific open debt is `V2`.

Equivalently,

```math
\boxed{\texttt{D.7mr2 + EP.11d + V1}}
\Longrightarrow
\boxed{\texttt{one remaining }V2\texttt{ theorem}}
\Longrightarrow
\boxed{\texttt{EP.8}\Rightarrow PD.70z}.
\tag{EP.11f1}
```

The literature-facing import menu for that remaining `V2` debt is the one
already recorded below in `EP.12`:

1. bounded-chart Stokes;
2. convex product-set parabolic observability after gauge / chart reduction;
3. analytic-coefficient measurable-set observability after stronger
   normalization.

So after `EP.11d`, the stronger adiabatic route is no longer blocked on the
forcing side. It is blocked only on choosing and reaching the exact localized
operator class.

### Corollary EP.11g (honest terminal wall for the stronger adiabatic global continuation)

Assume the stronger adiabatic forcing side is already closed by `(EP.11d9)`,
but the localized defect is still only available in the installed `F.11d` form

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k,
\tag{EP.11g1}
```

with coefficient control `(F.11d12)`-`(F.11d13)`. Then the remaining stronger
adiabatic `V2` debt is exactly one operator-class normalization theorem:

```math
\boxed{
\texttt{upgrade the installed }F.11d\texttt{ localization to one admissible observable operator class}
}.
\tag{EP.11g2}
```

Any theorem accomplishing `(EP.11g2)` may take one of three forms:

1. Stokes-preserving localization / chart reduction, yielding the packet
   `(EP.12a1)`;
2. gauge-normalization to the lower-order convex-domain packet
   `(F.11g2)`-`(F.11g3)`;
3. stronger analytic normalization to an analytic parabolic evolution class.

Once any one of those three normalizations is supplied, `V2` closes and the
stronger adiabatic exact-potential route reaches

```math
EP.8\Rightarrow PD.70z,
\qquad
\text{and under }(EP.8c),\ SG.4B.
\tag{EP.11g3}
```

This is the honest terminal wall for the stronger adiabatic global route on the
current note stack.

**Proof.**
After `(EP.11d9)`, the forcing side is no longer open, so `V2` is the only
remaining branch-specific debt by `EP.11f`. The installed localization is still
`F.11d`, and the three bounded self-attempts already preserved on disk all fail
for the same reason: none yet upgrades `F.11d` to an observable operator class.
So the three route choices are different realizations of the single missing
normalization theorem `(EP.11g2)`. Once that theorem is supplied in any one of
the three forms above, `V2` closes and `EP.11e1`-`(EP.11e2)` apply. ∎

### Corollary EP.11h (stronger convex/static-diffusion continuation under the global `V2` wall)

Keep the minimal global endpoint `EP.10ajA` and the stronger adiabatic terminal
split `EP.11g` fixed. Choose now the second branch in `(EP.11g2)`: the convex
static-diffusion route.

Assume the theorem-facing `F.11d` localization is read through the repaired
static-diffusion packet

```math
\partial_t \widetilde q_k
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta \widetilde q_k)
+\widetilde b_k\cdot \nabla_\zeta \widetilde q_k
+\widetilde c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut},
\tag{EP.11h1}
```

with fixed chart metric `G_k`.

Then the stronger adiabatic continuation refines to the repaired convex route

```math
\boxed{\texttt{EP.11d}}
\Longrightarrow
\boxed{\texttt{static-diffusion normalization of }F.11d}
\Longrightarrow
\boxed{\texttt{one interval observability theorem}}
\Longrightarrow
\boxed{\texttt{windowwise }V2}
\Longrightarrow
\boxed{\texttt{EP.8}\Rightarrow PD.70z}.
\tag{EP.11h2}
```

So on this chosen branch, the three-way `V2` menu of `EP.11g` collapses to one
conservative direct route through the repaired static-diffusion operator class.

**Proof.**
The static-diffusion audit shows that the active theorem-facing readout of
`F.11d` is `(EP.11h1)`, not a time-dependent principal-diffusion family. So
once this branch is chosen, the relevant normalization task is no longer the
full three-way operator-class split but the repaired convex static-diffusion
route. The subsequent reduction to interval observability is the conservative
Wang--Zhang/semigroup chain already preserved on disk. ∎

### Corollary EP.11i (on the repaired convex branch, the only remaining local theorem is interval observability)

Assume the stronger adiabatic forcing side is already closed by `(EP.11d9)`,
and assume the repaired static-diffusion packet `(EP.11h1)` holds on each
retained chart. Then the direct convex `V2` branch reduces to exactly one
genuinely local theorem:

```math
\boxed{
\texttt{prove interval observability for }
\partial_t u
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta u)
+\widetilde b_k\cdot \nabla_\zeta u
+\widetilde c_k u
=0
\texttt{ on the bounded chart}
}.
\tag{EP.11i1}
```

Equivalently,

```math
\boxed{\texttt{analytic-semigroup realization}}
\;+\;
\boxed{\texttt{open-set observation admissibility}}
\Longrightarrow
\boxed{\texttt{only interval observability remains}}
\Longrightarrow
\boxed{\texttt{Wang--Zhang measurable-time observability}}
\Longrightarrow
\boxed{\texttt{windowwise }V2}.
\tag{EP.11i2}
```

So on the repaired convex/static-diffusion branch, the measurable-time step is
no longer the sharp wall. The sharp wall is interval observability for the
repaired bounded-chart operator.

**Proof.**
On the repaired static-diffusion packet, the operator is a natural analytic-
semigroup candidate and the open-set observation is automatically admissible on
`L^2(\Omega_k)`. So the Wang--Zhang measurable-time import no longer carries
three independent burdens. It reduces to the single remaining local theorem
`(EP.11i1)`. Once that interval observability theorem is supplied, the abstract
measurable-time step yields windowwise `V2`, and then `EP.11e1`-`(EP.11e2)`
apply. ∎

### Corollary EP.11j (honest terminal wall for the stronger convex/static-diffusion global continuation)

After choosing the repaired convex/static-diffusion branch, the stronger
adiabatic global continuation terminates, on the current note stack, at:

1. the fixed forcing packet `(EP.11d9)`;
2. the repaired static-diffusion normalization `(EP.11h1)`;
3. one interval observability theorem for the bounded-chart operator
   `(EP.11i1)`;
4. `V1` and the scheduler / entrance packets already carried by `EP.11e`.

There is no further deterministic reduction available on this chosen global
branch from the current note stack without importing a genuinely new interval-
observability theorem for the repaired bounded-chart static-diffusion operator.

### Corollary EP.11k (stronger direct Lebeau-Robbiano continuation of the repaired convex branch)

Keep `EP.11j` fixed. Choose now a stronger direct route for the repaired
bounded-chart operator `(EP.11i1)`: instead of proving interval observability
directly, prove a Lebeau-Robbiano packet for that operator.

Assume that for the realized repaired bounded-chart operator `A_k` on
`H_k=L^2(\Omega_k)` there is a family of low-frequency projectors
`(P_\lambda)_{\lambda>0}` and constants
`d_0,d_1,d_2,d_3,\gamma_1,\gamma_2,\gamma_3>0` with `\gamma_1<\gamma_2` such
that:

```math
\|P_\lambda u\|_{L^2(\Omega_k)}
\le
d_0 e^{d_1\lambda^{\gamma_1}}
\|P_\lambda u\|_{L^2(\omega_k)}
\qquad
\text{for all }\lambda>0,
\tag{EP.11k1}
```

and

```math
\|(I-P_\lambda)e^{-tA_k}u\|_{L^2(\Omega_k)}
\le
d_2 e^{-d_3\lambda^{\gamma_2}t^{\gamma_3}}
\|u\|_{L^2(\Omega_k)}
\qquad
\text{for }t>0.
\tag{EP.11k2}
```

Then the direct Lebeau-Robbiano strategy yields final-state observability on
every interval, hence the interval observability theorem `(EP.11i1)` and
therefore windowwise `V2`.

So the repaired convex/static-diffusion route admits a stronger direct
continuation:

```math
\boxed{\texttt{spectral inequality / uncertainty principle}}
\;+\;
\boxed{\texttt{high-frequency dissipation}}
\Longrightarrow
\boxed{\texttt{interval observability}}
\Longrightarrow
\boxed{\texttt{windowwise }V2}.
\tag{EP.11k3}
```

This is a stronger direct route under `EP.11j`, not a replacement for the
minimal interval-observability endpoint.

**Proof.**
The direct Lebeau-Robbiano strategy combines exactly the uncertainty principle
`(EP.11k1)` with the dissipation estimate `(EP.11k2)` to produce final-state
observability for heat-like semigroups. Since the repaired convex branch is
already reduced to the bounded-chart operator class of `(EP.11i1)`, that
observability supplies the remaining local theorem in `EP.11j`. ∎

### Corollary EP.11l (the stronger direct spectral route reduces to one non-selfadjoint spectral inequality theorem)

Keep the repaired bounded-chart operator `(EP.11i1)`. On a bounded chart, its
principal part is the selfadjoint uniformly elliptic operator associated to the
fixed chart metric `G_k`, while the first-order and zeroth-order terms are
lower-order bounded perturbations. So the repaired operator is naturally read
as a non-selfadjoint elliptic operator that is a compact perturbation of a
selfadjoint uniformly elliptic reference operator.

Consequently, the stronger direct route `EP.11k` may be packaged as one
theorem-facing spectral wall:

```math
\boxed{
\texttt{prove a spectral inequality for finite sums of root vectors / low modes of the repaired bounded-chart operator observed on }\omega_k
}.
\tag{EP.11l1}
```

Once `(EP.11l1)` is supplied in a form compatible with the semigroup of `A_k`,
the direct Lebeau-Robbiano strategy closes the interval observability theorem
`(EP.11i1)`, hence `V2`, hence `EP.8\Rightarrow PD.70z`.

So on this stronger direct route, the sharp local burden is no longer interval
observability itself. It is one non-selfadjoint spectral inequality theorem for
the repaired bounded-chart operator.

### Corollary EP.11m (honest terminal wall for the stronger direct spectral continuation)

After `EP.11k`-`EP.11l`, the repaired convex/static-diffusion branch admits the
following stronger terminal reading:

1. the fixed forcing packet `(EP.11d9)`;
2. the repaired static-diffusion normalization `(EP.11h1)`;
3. one non-selfadjoint spectral inequality theorem `(EP.11l1)` for the repaired
   bounded-chart operator on `\omega_k`;
4. `V1` and the scheduler / entrance packets already carried by `EP.11e`.

There is no further deterministic reduction available on this stronger direct
continuation from the current note stack without importing a genuinely new
spectral inequality theorem for the repaired bounded-chart operator (or an even
stronger Carleman/unique-continuation theorem that discharges it).

### Corollary EP.11n (stronger bounded-chart Stokes continuation under the global `V2` wall)

Keep the minimal global retained-cover endpoint `EP.10ajA` and the stronger
adiabatic terminal split `EP.11g` fixed. Choose now the first branch in
`(EP.11g2)`: the bounded-chart Stokes route.

Assume there is one Stokes-preserving localization / chart theorem upgrading the
installed `F.11d` localization to a divergence-free chart-localized defect
variable `q_k` satisfying

```math
\partial_t q_k-\nu\Delta q_k+\nabla \pi_k = F_k,
\qquad
\nabla\!\cdot q_k=0,
\qquad
q_k|_{\partial\Omega_k}=0
\tag{EP.11n1}
```

on each retained chart `\Omega_k\times I_k`, with observation on one measurable
set `\omega_k\times E_k\subset \Omega_k\times I_k`.

Then the stronger adiabatic continuation refines to the Stokes route

```math
\boxed{\texttt{EP.11d}}
\Longrightarrow
\boxed{\texttt{Stokes-preserving localization}}
\Longrightarrow
\boxed{\texttt{bounded-chart Stokes observability }(EP.12a2)}
\Longrightarrow
\boxed{\texttt{windowwise }V2}
\Longrightarrow
\boxed{\texttt{EP.8}\Rightarrow PD.70z}.
\tag{EP.11n2}
```

So on this chosen branch, the remaining `V2` debt is no longer the full
three-way normalization menu. It is exactly the Stokes-preserving localization
theorem upgrading `F.11d` to `(EP.11n1)`.

**Proof.**
Once `(EP.11n1)` is supplied, Proposition `EP.12a` applies directly and yields
the sourced Stokes observability estimate `(EP.12a2)`. That closes windowwise
`V2`, and then the stronger adiabatic global continuation `EP.11e1`-`(EP.11e2)`
applies. ∎

### Corollary EP.11o (honest terminal wall for the stronger bounded-chart Stokes continuation)

On the current note stack, the installed localization `F.11d` gives only the
variable-diffusion chart equation

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k,
\tag{EP.11o1}
```

with uniformly elliptic / bounded coefficient control. It does **not** yet
supply:

1. a divergence-free repaired localized defect variable on the retained chart;
2. a pressure decomposition placing the localized defect into exact Stokes form;
3. a theorem identifying the installed chart equation with the bounded-chart
   Stokes class required by `(EP.11n1)`.

Therefore the current localization satisfies the exact obstruction

```math
\boxed{\texttt{current localization }F.11d}
\not\Longrightarrow
\boxed{\texttt{bounded-chart Stokes packet }(EP.11n1)}.
\tag{EP.11o2}
```

So the stronger bounded-chart Stokes continuation terminates, on the current
note stack, at:

1. the fixed forcing packet `(EP.11d9)`;
2. one Stokes-preserving localization / chart theorem upgrading `F.11d` to
   `(EP.11n1)`;
3. source absorption into the Stokes observability packet `(EP.12a2)`;
4. `V1` and the scheduler / entrance packets already carried by `EP.11e`.

There is no further deterministic reduction available on this chosen Stokes
branch from the current note stack without importing a genuinely new
Stokes-preserving localization theorem.

### Corollary EP.11p (stronger analytic continuation under the global `V2` wall)

Keep `EP.10ajA` and `EP.11g` fixed. Choose now the third branch in
`(EP.11g2)`: the analytic-coefficient measurable-set route.

Assume there is one stronger analytic normalization theorem placing the
installed chart-localized defect equation `F.11d` into an analytic parabolic
evolution class compatible with measurable-set observability, while preserving
admissibility of the localized source ledger.

Then the stronger adiabatic continuation refines to the analytic route

```math
\boxed{\texttt{EP.11d}}
\Longrightarrow
\boxed{\texttt{analytic normalization of }F.11d}
\Longrightarrow
\boxed{\texttt{analytic measurable-set observability}}
\Longrightarrow
\boxed{\texttt{windowwise }V2}
\Longrightarrow
\boxed{\texttt{EP.8}\Rightarrow PD.70z}.
\tag{EP.11p1}
```

So on this chosen branch, the remaining `V2` debt is no longer the full
operator-class menu. It is exactly the analytic normalization theorem.

**Proof.**
Once the localized defect operator is upgraded to an analytic parabolic
evolution class with admissible source ledger, the analytic measurable-set
observability import applies and closes windowwise `V2`. The stronger adiabatic
continuation `EP.11e1`-`(EP.11e2)` then yields `PD.70z`. ∎

### Corollary EP.11q (honest terminal wall for the stronger analytic continuation)

On the current note stack, the installed chart equation `F.11d` has only
uniformly elliptic / bounded coefficient control. It does **not** yet supply:

1. space-time analyticity of the selector-chart coefficients for the localized
   defect operator;
2. an analytic change of variables placing the localized defect into the class
   required by analytic measurable-set observability;
3. a theorem that the localized source ledger remains admissible under that
   analytic normalization.

Therefore the current localization satisfies the exact obstruction

```math
\boxed{\texttt{current localization }F.11d}
\not\Longrightarrow
\boxed{\texttt{analytic parabolic evolution class}}.
\tag{EP.11q1}
```

So the stronger analytic continuation terminates, on the current note stack, at:

1. the fixed forcing packet `(EP.11d9)`;
2. one stronger analytic normalization theorem for the installed `F.11d`
   localization;
3. analytic measurable-set observability after that normalization;
4. `V1` and the scheduler / entrance packets already carried by `EP.11e`.

There is no further deterministic reduction available on this chosen analytic
branch from the current note stack without importing a genuinely new analytic
normalization theorem.

### Corollary EP.11r (the stronger global `V2` menu is now terminalized branch-by-branch)

Keep the minimal global retained-cover endpoint `EP.10ajA` and the stronger
adiabatic route split `EP.11g` fixed.

Then the three branch choices under `(EP.11g2)` now terminate, on the current
note stack, at three distinct theorem programs:

1. the repaired convex/static-diffusion branch, with stronger direct
   continuation terminal at the non-selfadjoint spectral inequality theorem
   `(EP.11l1)` by `EP.11m`;
2. the bounded-chart Stokes branch, terminal at the Stokes-preserving
   localization theorem `(EP.11n1)` by `EP.11o`;
3. the analytic branch, terminal at the stronger analytic normalization theorem
   recorded in `EP.11q`.

So the stronger global exact-potential `V2` wall is no longer an undifferentiated
normalization burden. It is now a branch-faithful three-way terminal menu.

### Corollary EP.11s (separate stronger repaired direct continuation under the convex/static-diffusion branch)

Keep the internal terminal surfaces `EP.11m`, `EP.11o`, and `EP.11q` fixed.
Choose now a separate stronger continuation under the repaired
convex/static-diffusion branch `EP.11h`: the repaired direct route already
isolated on disk by the static-diffusion audit, the semigroup reduction, and
the fixed-metric Carleman absorption notes.

Assume on every retained chart `\Omega_k\times I_k`:

1. the repaired static-diffusion packet `(EP.11h1)` holds;
2. the retained chart family belongs to one bounded Lipschitz-metric class;
3. the lower-order packet `\widetilde b_k,\widetilde c_k` is uniformly bounded
   in `L^\infty`;
4. Laurent--Léautaud's uniform Lipschitz-metric Carleman / heat-observability
   import is available for the fixed-metric base operator
   `-\partial_t-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta)`;
5. Wang--Zhang's measurable-time observability import is available in the
   analytic-semigroup setting already isolated on the repaired direct branch.

Then the repaired direct continuation supplies `V2`.

Equivalently,

```math
\boxed{
\texttt{Laurent--Léautaud fixed-metric Lipschitz Carleman / heat observability}
}
\quad+\quad
\boxed{
\texttt{Wang--Zhang measurable-time observability}
}
\Longrightarrow
\boxed{
\texttt{repaired direct }V2
}.
\tag{EP.11s1}
```

So this route is a separate stronger continuation beneath the repaired
convex/static-diffusion branch. It does **not** replace the internal terminal
surface `EP.11m`.

**Proof.**
On the repaired direct branch, `(EP.11h1)` is the honest localized operator.
The semigroup reduction already isolates the repaired chart operator as an
analytic-semigroup candidate with admissible open-set observation. Import the
Laurent--Léautaud fixed-metric packet on the bounded Lipschitz chart class.
Then the fixed-metric Carleman absorption notes upgrade that base packet to the
full repaired bounded-chart operator, so interval observability holds for the
repaired homogeneous chart operator. The Wang--Zhang measurable-time import
then yields windowwise observability, and the same Duhamel packet absorbs the
localized forcing. That is exactly `V2`. ∎

### Corollary EP.11t (the stronger adiabatic exact-potential branch closes to `PD.70z` on the repaired direct route)

Assume:

1. `D.7mr2` holds;
2. the fixed forcing packet `(EP.11d9)` is available;
3. `V1` holds;
4. the scheduler / boot entrance hypotheses needed for `EP.8` hold;
5. the repaired direct `V2` route is closed by `(EP.11s1)`.

Then

```math
D.7mr2
+\texttt{EP.11d forcing packet}
+V1
+\texttt{(LL + WZ repaired direct }V2\texttt{ packet)}
\Longrightarrow
EP.8
\Longrightarrow
PD.70z.
\tag{EP.11t1}
```

If in addition `(EP.8c)` holds, then

```math
SG.4B.
\tag{EP.11t2}
```

So the stronger adiabatic exact-potential branch admits a repaired direct
closure through one explicit two-import external packet.

**Proof.**
By `(EP.11s1)`, the repaired direct branch supplies `V2`. With `D.7mr2`,
`EP.11d`, `V1`, and the scheduler / boot entrance packet in hand, `EP.8`
applies and yields `PD.70z`. Under `(EP.8c)`, the same route yields `SG.4B`.
∎

### Corollary EP.11u (honest terminal wall for the stronger repaired direct continuation)

On the current note stack, the repaired direct exact-potential continuation no
longer terminates at an internal operator-class normalization theorem. It
terminates at one explicit two-import external packet:

1. Laurent--Léautaud fixed-metric Lipschitz Carleman / heat observability on
   the retained chart class;
2. Wang--Zhang measurable-time observability in the repaired analytic-semigroup
   setting.

Equivalently,

```math
\boxed{
\texttt{LL fixed-metric Lipschitz Carleman / heat observability}
}
\quad+\quad
\boxed{
\texttt{WZ measurable-time observability}
}
\Longrightarrow
\boxed{
\texttt{repaired direct }V2
}
\Longrightarrow
\boxed{
\texttt{EP.8}\Rightarrow PD.70z
}.
\tag{EP.11u1}
```

So the active repaired direct exact-potential branch is no longer blocked on
an internal operator-class theorem. It is blocked only on that explicit
two-import packet. This is a separate stronger continuation, not a replacement
for the internal branch terminals `EP.11m`, `EP.11o`, and `EP.11q`.

### Remark EP.12 (the exact `V2` debt now has three literature-facing import routes)

The internal note already reduces `V2` to `F.11g`: either gauge-normalize the
localized defect equation to the lower-order form `(F.11g2)`, or prove
measurable-time observability directly for the variable-diffusion coefficient
class `(F.11d12)`-`(F.11d13)`.

From the literature, the current direct import menu is:

1. a **Stokes measurable-set route**, if the localization really preserves a
   divergence-free non-stationary Stokes structure on a bounded chart;
2. a **convex product-set parabolic route**, if the chart reduction reaches the
   lower-order product-observation form `(F.11g2)` on a convex domain;
3. an **analytic-coefficient measurable-set route**, if a stronger analytic
   normalization is available.

These are genuine closure boosts for `V2`, but they are still conditional on
which localized PDE class the lane actually reaches after the chart / gauge
reduction. So the internet does not yet close `V2` automatically; it gives a
real external discharge menu once the exact localized operator class is fixed.

### Proposition EP.12a (bounded-chart Stokes import route for `V2`)

Assume that on each retained chart `\Omega_k\times I_k` the localized
pair-defect variable `q_k` satisfies a non-stationary Stokes system

```math
\partial_t q_k-\nu\Delta q_k+\nabla \pi_k = F_k,
\qquad
\nabla\!\cdot q_k=0,
\qquad
q_k|_{\partial\Omega_k}=0,
\tag{EP.12a1}
```

with observation on one measurable set `\omega_k\times E_k\subset\Omega_k\times
I_k`, where `\omega_k` is open and `|E_k|>0`.

Then measurable-set observability for the homogeneous non-stationary Stokes
system on bounded domains provides an observation constant `C_k^{obs}`. By
Duhamel, one obtains the sourced estimate

```math
\|q_k(\tau_k)\|_{L^2(\Omega_k)}^2
\le
C_k^{obs}\int_{E_k}\|q_k(t)\|_{L^2(\omega_k)}^2\,dt
+
C_k^{obs}\int_{I_k}\|F_k(t)\|_{H^{-1}(\Omega_k)}^2\,dt.
\tag{EP.12a2}
```

So `V2` closes once the localized source ledger is absorbed into the same
observation/error packet. This is the cleanest external import route when the
chart reduction preserves a divergence-free Stokes structure.

### Proposition EP.12b (the `V1`–`E2` compatibility wall is a threshold-selection problem, not a raw `\delta_k^2` sum)

On the retained exact-potential windows, Proposition `F.11b` gives the explicit
gap floor

```math
g_{k,\ast}=\frac{\delta_k}{8M_k^2}.
\tag{EP.12b1}
```

So to use a forcing schedule `\gamma_k`, one must keep

```math
g_{k,\ast}\ge \gamma_k,
\qquad\text{equivalently}\qquad
\delta_k\ge 8M_k^2\gamma_k.
\tag{EP.12b2}
```

But the discarded bad-gap mass from the codimension-two tubular packet is
controlled by `F.11c3`, namely

```math
\sum_k C_k^{obs}\gamma_k^2<\infty,
\tag{EP.12b3}
```

not by a bare series `\sum_k C_k\delta_k^2`.

So the exact compatibility wall between `V1` and the forcing schedule is:

```math
\boxed{
\text{choose }\gamma_k\text{ such that }
\sum_k C_k^{obs}\gamma_k^2<\infty
\text{ and }
\delta_k\ge 8M_k^2\gamma_k.
}
\tag{EP.12b4}
```

If one insists on parameterizing by the anchor thresholds `\delta_k`, then the
corresponding sufficient condition is

```math
\sum_k C_k^{obs}\left(\frac{\delta_k}{8M_k^2}\right)^2<\infty,
\tag{EP.12b5}
```

together with `(EP.12b2)`. So the live compatibility wall is a
**threshold-selection problem** for the retained windows, not simply a summable
`\delta_k^2` packet.

This is exactly where the adiabatic cubic inverse-gap loss still bites. A
direct non-adiabatic `\beta_J` theorem would remove the `\gamma_k^{-3}` branch
and make this compatibility problem much cleaner.

### Proposition EP.12c (direct non-adiabatic `\beta_J` budget is the right next forcing theorem)

The mathematically clean replacement for the adiabatic forcing branch is a
direct non-adiabatic estimate of the form

```math
\sum_k C_k\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}\beta_J(a,b,t)^2\,dt\,d\mu_J^{pair}(a,b)
<\infty.
\tag{EP.12c1}
```

If `(EP.12c1)` holds for a threshold schedule `\gamma_k` that is also
compatible with `(EP.12b4)`, then the forcing side closes through the general
exact-potential packet `F.9`, and the cubic inverse-gap obstruction from the
adiabatic route disappears entirely.

So the right next forcing theorem is not a better estimate for
`\partial_t A_J^{seg}`. It is a direct `\beta_J` budget compatible with the
retained-gap schedule.

### Proposition EP.12d (the direct `\beta_J` route reduces to one rotational packet plus one strain-variation packet)

Keep one retained selector-good window `I_k` and one retained active-pair block
`\mathcal J_k`. On the simple-top exact-potential branch, the angular forcing is

```math
\beta_J(a,b,t)
:=
\bigl|
Q_J(a,b,t)\bigl(K_J^{seg}(a,b,t)n_J(a,b,t)-\partial_t n_J(a,b,t)\bigr)
\bigr|.
\tag{EP.12d1}
```

Hence

```math
\beta_J(a,b,t)
\le
|K_J^{seg}(a,b,t)n_J(a,b,t)|
+
|\partial_t n_J(a,b,t)|.
\tag{EP.12d2}
```

If, in addition, the selector-strain packet `D.7mb6` is available on `I_k`,
then

```math
|\partial_t n_J(a,b,t)|
\le
2\,\frac{|\partial_t S_J^N(t,a)|}{g_J^{str}(t,a)},
\tag{EP.12d3}
```

so

```math
\beta_J(a,b,t)^2
\le
2\,|K_J^{seg}(a,b,t)n_J(a,b,t)|^2
+
8\,\frac{|\partial_t S_J^N(t,a)|^2}{g_J^{str}(t,a)^2}.
\tag{EP.12d4}
```

Therefore, on every retained window satisfying `g_J(a,b,t)\ge \gamma_k`,

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
8\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}
\frac{|\partial_t S_J^N(t,a)|^2}{g_J^{str}(t,a)^2}
\,dt\,d\mu_J^{pair}(a,b).
\tag{EP.12d5}
```

Consequently a sufficient direct non-adiabatic forcing packet is

```math
\sum_k C_k\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}
|K_J^{seg}(a,b,t)n_J(a,b,t)|^2
\,dt\,d\mu_J^{pair}(a,b)
<\infty,
\tag{EP.12d6}
```

```math
\sum_k C_k\gamma_k^{-1}
\int_{\mathcal J_k}\int_{I_k}
\frac{|\partial_t S_J^N(t,a)|^2}{g_J^{str}(t,a)^2}
\,dt\,d\mu_J^{pair}(a,b)
<\infty.
\tag{EP.12d7}
```

This is strictly cleaner than the adiabatic packet `(F.11e6)`: the retained
segment gap still enters only with `\gamma_k^{-1}`. The price is that the
second forcing channel is no longer `\partial_t A_J^{seg}` alone; it becomes
one mixed strain-variation / local-strain-gap packet.

So the direct `\beta_J` theorem is now reduced to two explicit forcing packets:

```math
\boxed{\text{retained rotational budget for }|K_J^{seg}n_J|^2}
\quad+\quad
\boxed{\text{retained strain-variation budget for }|\partial_t S_J^N|^2/(g_J^{str})^2}.
\tag{EP.12d8}
```

#### Audit of the shared scalar closure proposal

The scalar reduction through `(G'.10h)` and `(G'.10k)` is useful, but only as a
**conditional multiplier schema**. The pointwise identities are correct:

```math
\partial_t\tau_J
=
2\tau_J\langle S_J^N,\widehat{\mathcal C}_J^N\rangle,
\qquad
\bigl|\partial_t\tau_J\bigr|
\le
2\tau_J\,\sigma_J,
\tag{EP.S1}
```

with `\sigma_J:=|S_J^N|_{\mathrm{op}}` and
`\widehat{\mathcal C}_J^N:=\tau_J^{-1}\mathcal C_J^N` on `\{\tau_J>0\}`. Also,
by `(G'.10g)`,

```math
\bigl|
\langle S_J^N,\mathfrak G_J\rangle
\bigr|
\le
\frac{1}{2c_0}
\bigl|
\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N
\bigr|
+
\frac{1}{c_0}\sigma_J\,M_J,
\tag{EP.S2}
```

where

```math
M_J
:=
N_J^{nor}
+
\operatorname{Err}_{J,\varepsilon}^{lin}
+
\bigl|\mathbf W_J^{coc}\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}.
\tag{EP.S3}
```

The hidden nontrivial step is not the algebra above. It is the **multiplier
action on `\dot B^{-1}_{\infty,\infty}`**.

### Definition EP.S4 (abstract multiplier class on `\dot B^{-1}_{\infty,\infty}`)

For a strip `I`, let `\mathfrak M_{-1}(I)` be any Banach class of scalar
coefficients `m(\cdot,t)` such that for almost every `t\in I`,

```math
\|m(\cdot,t)f(\cdot,t)\|_{\dot B^{-1}_{\infty,\infty}}
\le
\|m\|_{\mathfrak M_{-1}(I)}
\|f(\cdot,t)\|_{\dot B^{-1}_{\infty,\infty}}
\tag{EP.S4}
```

for every admissible Besov datum `f`. A concrete sufficient specialization is
to require the coefficients to lie in a standard paraproduct multiplier class,
for example `L_t^\infty(L_x^\infty\cap \dot B^1_{\infty,1})`, or in a
low-frequency packet with the same multiplier action.

So the theorem-safe version of the scalar route is not
“`(S1)` alone feeds `(G'.10h)` and `(G'.10k)`,” but rather

```math
\text{scalar strain theorem}
+
\text{trace multiplier packet}
+
\text{normality / pair-mismatch multiplier packet}.
\tag{EP.S5}
```

### Proposition EP.S6 (conditional scalar-multiplier closure of `(H5b)`)

Assume on one selector-good strip `I`:

```math
\int_I
\|\sigma_J(\cdot,t)\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C_S\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{EP.S6a}
```

```math
\|\tau_J\|_{\mathfrak M_{-1}(I)}\le T_J^{tr},
\tag{EP.S6b}
```

```math
\|M_J\|_{\mathfrak M_{-1}(I)}\le M_J^\star.
\tag{EP.S6c}
```

Then

```math
\int_I
\bigl|
\partial_t \operatorname{tr}_{N_a}\mathcal C_J^N(\cdot,t)
\bigr|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
4(T_J^{tr})^2
\int_I
\|\sigma_J(\cdot,t)\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt,
\tag{EP.S6d}
```

and

```math
\int_I
\bigl\|
\sigma_J(\cdot,t)M_J(\cdot,t)
\bigr\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
(M_J^\star)^2
\int_I
\|\sigma_J(\cdot,t)\|_{\dot B^{-1}_{\infty,\infty}}^2\,dt.
\tag{EP.S6e}
```

Consequently `(G'.10h)` and `(G'.10k)` hold, and hence `(H5b)` follows:

```math
\int_I
\bigl|
\langle S_J^N(\cdot,t),\mathfrak G_J(\cdot,t)\rangle
\bigr|_{\dot B^{-1}_{\infty,\infty}}^2\,dt
\le
C\Bigl((T_J^{tr})^2+(M_J^\star)^2\Bigr)
\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.S6f}
```

So the scalar branch to `BR.\lambda2` closes once `(EP.S6a)`-`(EP.S6c)` are
proved.

**Proof.**
Use `(EP.S1)` together with the multiplier action `(EP.S4)` to obtain
`(EP.S6d)`. Use `(EP.S2)` and `(EP.S4)` again to control the second term by
`(EP.S6e)`. Substitute both bounds into `(G'.10g)` to obtain `(EP.S6f)`. ∎

This is the sharp theorem-safe version of the user’s proposed
`EP.Scalar.Close`: the scalar strain theorem is shared, but it only closes the
pairing after two explicit multiplier packets are installed.

### Corollary EP.S7 (trace multiplier reduction from `D.7mk3`)

Fix a reference time `\tau\in I`. Since `D.7mk3` gives

```math
\bigl|\mathcal C_J^N(t,a)-\mathcal C_{J,\tau}^N(a)\bigr|_{\mathrm{op}}
\le
E_{J,\tau}^{CG}(t,a),
\tag{EP.S7a}
```

taking traces yields

```math
\bigl|\tau_J(t,a)-\tau_J(\tau,a)\bigr|
\le
d_\perp E_{J,\tau}^{CG}(t,a),
\qquad d_\perp:=\dim N_a.
\tag{EP.S7b}
```

Hence any subadditive multiplier norm satisfies the sufficient bound

```math
\|\tau_J\|_{\mathfrak M_{-1}(I)}
\le
\|\tau_J(\tau,\cdot)\|_{\mathfrak M_{-1}(I)}
+
d_\perp\|E_{J,\tau}^{CG}\|_{\mathfrak M_{-1}(I)}.
\tag{EP.S7c}
```

So the trace channel closes from:

```math
\boxed{\text{reference trace multiplier control}}
\quad+\quad
\boxed{\text{CG persistence multiplier control}}.
\tag{EP.S7d}
```

### Corollary EP.S8 (the normality packet needs a multiplier theorem, not only an operator bound)

Let `W_J^N=W_{J,\tau}^{ref}+R_J` on `N_a`, and assume the reference cocycle is
normal:

```math
\bigl[(W_{J,\tau}^{ref})^*,W_{J,\tau}^{ref}\bigr]=0.
\tag{EP.S8a}
```

Then the commutator expansion gives the pointwise operator estimate

```math
N_J^{nor}
\le
4|W_{J,\tau}^{ref}|_{\mathrm{op}}\,|R_J|_{\mathrm{op}}
+
2|R_J|_{\mathrm{op}}^2.
\tag{EP.S8b}
```

If, in addition, `\mathfrak M_{-1}(I)` is stable under multiplication by bounded
coefficients, then

```math
\|N_J^{nor}\|_{\mathfrak M_{-1}(I)}
\le
4\|W_{J,\tau}^{ref}\|_{L^\infty(I\times N_a)}
\|R_J\|_{\mathfrak M_{-1}(I)}
+
2\|R_J\|_{L^\infty(I\times N_a)}
\|R_J\|_{\mathfrak M_{-1}(I)}.
\tag{EP.S8c}
```

So the new scalar theorem is not just “near-normal reference cocycle in operator
norm.” It must be a **multiplier-class persistence theorem** for `R_J`, plus an
`L^\infty` control on the same perturbation.

Combining `(EP.S8c)` with the linearization and shape packets gives the exact
sufficient route to `(EP.S6c)`.

### Proposition EP.S11 (chart-local inhomogeneous scalar packet reduces the multiplier branch to one localization-transfer theorem)

Let `\{\chi_k\}_k` be a bounded-overlap partition subordinate to the retained
selector charts. Assume that on each chart one has the inhomogeneous multiplier
packet

```math
\tau_J,\ M_J\in L_t^\infty M(B_{\infty,\infty}^{0}),
\qquad
\sigma_J\in L_t^2 B_{\infty,\infty}^{-1},
\tag{EP.S11a}
```

with uniform bounds in `k`, and that the chartwise transport / transport-
diffusion estimates propagate those norms on the retained windows.

Then the localized inhomogeneous scalar packets satisfy

```math
\int_I\sum_k
\bigl\|\chi_k\,\partial_t\tau_J(\cdot,t)\bigr\|_{B_{\infty,\infty}^{-1}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{EP.S11b}
```

and

```math
\int_I\sum_k
\bigl\|\chi_k\,\sigma_J(\cdot,t)M_J(\cdot,t)\bigr\|_{B_{\infty,\infty}^{-1}}^2\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{EP.S11c}
```

So the scalar branch is further reduced to one remaining internal lemma:

```math
\boxed{
\text{chartwise inhomogeneous-to-homogeneous transfer from }
\sum_k\|\chi_k f\|_{B_{\infty,\infty}^{-1}}^2
\text{ to }
\|f\|_{\dot B_{\infty,\infty}^{-1}}^2
}.
\tag{EP.S11d}
```

This is the theorem-safe form of the chart-local multiplier route: the external
Besov transport and endpoint multiplier machinery controls the **localized
inhomogeneous** packet, while the return to the homogeneous strip norm used in
`(H5b)` remains a separate internal theorem.

### Proposition EP.S12 (the homogeneous return closes under a finite active-chart packet, not from bounded overlap alone)

Let `\{\chi_\ell\}_\ell\subset C_c^\infty(U_\ell)` be a selector-chart partition
and let `f` be a compactly supported scalar distribution. Suppose only finitely
many chart pieces are active on `\operatorname{supp}f`, and let

```math
N_{\mathrm{act}}(f)
:=
\#\{\ell:\chi_\ell f\not\equiv 0\}.
\tag{EP.S12a}
```

Then

```math
\|f\|_{\dot B^{-1}_{\infty,\infty}}
\le
C\Bigl(
N_{\mathrm{act}}(f)\sup_\ell \|\chi_\ell f\|_{B^{-1}_{\infty,\infty}}
+
\|f\|_{L^1}
\Bigr).
\tag{EP.S12b}
```

If, in addition, a low-frequency gauge is imposed, for example

```math
S_{-2}f=0,
\tag{EP.S12c}
```

then the low-frequency `L^1` term drops out:

```math
\|f\|_{\dot B^{-1}_{\infty,\infty}}
\le
C\,N_{\mathrm{act}}(f)\sup_\ell \|\chi_\ell f\|_{B^{-1}_{\infty,\infty}}.
\tag{EP.S12d}
```

**Proof.**
Since only finitely many chart pieces are active,

```math
f=\sum_{\ell:\,\chi_\ell f\neq 0}\chi_\ell f
```

is a finite decomposition. For the high dyadic blocks `j\ge 0`,

```math
\dot\Delta_j f
=
\sum_{\ell:\,\chi_\ell f\neq 0}\dot\Delta_j(\chi_\ell f),
```

so

```math
\|\dot\Delta_j f\|_{L^\infty}
\le
N_{\mathrm{act}}(f)\sup_\ell \|\dot\Delta_j(\chi_\ell f)\|_{L^\infty}.
\tag{EP.S12e}
```

Taking the `2^{-j}` supremum over `j\ge 0` yields the high-frequency part of
`(EP.S12b)`. For `j<0`, the dyadic kernel bound gives

```math
\|\dot\Delta_j f\|_{L^\infty}\le C2^{3j}\|f\|_{L^1},
\qquad
2^{-j}\|\dot\Delta_j f\|_{L^\infty}\le C2^{2j}\|f\|_{L^1}\le C\|f\|_{L^1},
\tag{EP.S12f}
```

which yields the low-frequency term. If `(EP.S12c)` holds, the low blocks
vanish, so only the high-frequency estimate remains. ∎

Bounded overlap of the charts alone is **not** enough for this homogeneous
return step, because the dyadic kernels are nonlocal. What closes the theorem is
either the finite active-chart packet `(EP.S12a)` or a stronger `\ell^1`
localization theorem for the chartwise Besov norms.

### Exact remaining shared scalar packets

The minimal theorem-safe scalar agenda is therefore:

1. the scalar strain Besov theorem `(EP.S6a)`;
2. the reference trace multiplier packet `(EP.S7d)`;
3. the near-normal reference cocycle **multiplier** packet from `(EP.S8c)`;
4. either a direct homogeneous multiplier packet as in `(EP.S6c)`, or the
   chart-local inhomogeneous route `(EP.S11a)`-`(EP.S11d)` together with the
   finite-active-chart / low-frequency packet `(EP.S12a)`-`(EP.S12d)`;
5. multiplier-class versions of `PTC-Lin` and `PTC-Shape`, or a concrete
   stronger sufficient packet such as `L^\infty\cap \dot B^1_{\infty,1}`;
6. the exact-potential entrance / forcing / globalization route `(EP.2)`-`(EP.3)`
   if the goal is still `SG.4B` on the exact-potential branch.

So the scalar branch and the exact-potential branch now separate cleanly:

```math
\bigl(EP.S6a+EP.S7d+EP.S8c+\text{PTC-Lin}+\text{PTC-Shape}\bigr)
\Longrightarrow
H5b
\Longrightarrow
BR.\lambda2,
\tag{EP.S9}
```

whereas

```math
D.7mq+(D.7mp+D.7mo+D.7mm)
\Longrightarrow
D.7mr2
\Longrightarrow
EP.2
\Longrightarrow
EP.3
\Longrightarrow
PD.70z
\Longrightarrow
SG.4B.
\tag{EP.S10}
```

That is the sharpest theorem-safe discharge from the present packet state.

## Source anchors

- Hou--Wang--Yang, *Nonuniqueness of Leray-Hopf solutions to the unforced
  incompressible 3D Navier-Stokes Equation*:
  [arXiv](https://arxiv.org/abs/2509.25116)
- Middle-eigenvalue continuation criterion:
  [ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0893965924003744)
- Barker, *Uniqueness Results for Weak Leray--Hopf Solutions of the
  Navier--Stokes System with Initial Values in Critical Spaces*:
  [Springer](https://link.springer.com/article/10.1007/s00021-017-0315-8)
