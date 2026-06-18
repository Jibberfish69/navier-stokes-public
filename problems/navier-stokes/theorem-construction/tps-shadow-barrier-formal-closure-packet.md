# TPS Shadow Barrier Formal Closure Packet

## Status

Formal theorem-shape closure packet for the current TPS dynamic notes.

This note is deliberately conditional. It does **not** claim to discharge the
original selector-local transverse lower-bound theorem, and it does **not**
promote the lane past the current unsafe-overclaim guard. Its job is to prove
the formal implications already used by the coarse barrier, the SG bridge
factorization, and the weak averaged shadow-time packet.

The canonical theorem-facing Navier--Stokes surfaces now place the live route on
the TPS strong/defect bridge with `SG.4-production` as the exact unresolved
obstruction. This packet is only a local TPS dynamic subroute reduction inside
that live frontier.

## Purpose

The current theorem stack now has two dynamic closure layers:

```math
\text{strong route: entrance-strip no-entry / no-return},
\qquad
\text{weak route: averaged shadow-time control.}
\tag{SB.0}
```

What remained to make those claims formally airtight was not another new
Navier--Stokes theorem, but the exact theorem-shape logic connecting:

1. strip-local logarithmic repulsion,
2. coarse/true strip stability,
3. selector-level singular-value control,
4. the averaged occupancy ledger.

Those formal implications are recorded here as `SB.1`-`SB.5`.

## Setup

Fix one good active pair `(a,b)` and write

```math
d_c(t):=|X_{\le J}(a,t)-X_{\le J}(b,t)|,
\qquad
d(t):=|X(a,t)-X(b,t)|.
\tag{SB.0a}
```

Retain the enlarged shadow scale

```math
\widetilde\sigma_J:=\sigma_J+2\|\delta_J\|_{L_t^\infty},
\tag{SB.0b}
```

and the entrance strip

```math
I_J:=[\widetilde\sigma_J,2\widetilde\sigma_J].
\tag{SB.0c}
```

For the selector route, use the additive observable from
[tps-strong-bridge-sg-lemma-family.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-strong-bridge-sg-lemma-family.md):

```math
\mathcal A_J(t,a,\theta)
:=
\log s_{\min}\!\big(W_J(t,b)D_\theta\Theta_{J,a}(\theta)\big).
\tag{SB.0d}
```

and its normalized version

```math
\widetilde{\mathcal A}_J(t,a,\theta)
:=
\mathcal A_J(t,a,\theta)-\log(c_\Theta \ell_J).
\tag{SB.0e}
```

## Proposition SB.1. Stopping-Time Entrance-Strip Barrier

Assume `d_c(0)>2\widetilde\sigma_J` and define the first coarse entrance time

```math
\tau_J:=\inf\{t\in[0,T_J]:d_c(t)\le \widetilde\sigma_J\},
\tag{SB.1}
```

with `\tau_J=+\infty` if the set is empty.

Assume `d_c` is absolutely continuous and that for almost every `t` with
`d_c(t)\in I_J`,

```math
\partial_t\log d_c(t)\ge c_J-e_J(t),
\qquad
c_J>0,
\tag{SB.1a}
```

where `e_J\ge 0` is integrable on `[0,T_J]`.

Then no strip traversal from `2\widetilde\sigma_J` down to
`\widetilde\sigma_J` is possible on any interval `[s,t]\subset[0,T_J]`
satisfying

```math
d_c(s)=2\widetilde\sigma_J,
\qquad
d_c(t)=\widetilde\sigma_J,
\qquad
d_c(r)\in I_J\ \text{ for }r\in[s,t],
\tag{SB.1b}
```

unless

```math
\int_s^t e_J(r)\,dr\ge \log 2 + c_J(t-s).
\tag{SB.1c}
```

Consequently, if every strip excursion interval obeys

```math
\int_s^t e_J(r)\,dr<\log 2 + c_J(t-s),
\tag{SB.1d}
```

then `\tau_J=+\infty`, hence

```math
d_c(t)>\widetilde\sigma_J
\qquad
\text{for all }0\le t\le T_J.
\tag{SB.1e}
```

**Proof.**
Assume there exists an interval `[s,t]` satisfying `(SB.1b)`. Integrating
`(SB.1a)` gives

```math
\log d_c(t)-\log d_c(s)
\ge
c_J(t-s)-\int_s^t e_J(r)\,dr.
```

Since `d_c(t)/d_c(s)=1/2`, the left-hand side equals `-\log 2`. Therefore

```math
\int_s^t e_J(r)\,dr
\ge
\log 2 + c_J(t-s),
```

which is `(SB.1c)`. So under `(SB.1d)` no such strip traversal exists. If
`\tau_J<+\infty`, continuity of `d_c` would produce such a traversal by taking
the last time before `\tau_J` at which `d_c=2\widetilde\sigma_J`. Thus
`\tau_J=+\infty`, proving `(SB.1e)`. ∎

### Corollary SB.1f. Pointwise Positive Strip Repulsion Is A Sufficient Barrier

If

```math
\partial_t\log d_c(t)\ge c_J>0
\qquad
\text{whenever }d_c(t)\in I_J,
\tag{SB.1f}
```

then `(SB.1d)` holds with `e_J\equiv 0`. Hence the entrance-strip no-entry
conclusion follows.

This is exactly the theorem shape behind
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md).

## Proposition SB.2. Coarse/True Strip Stability

Assume

```math
\sup_{0\le t\le T_J}|X(a,t)-X_{\le J}(a,t)|\le \delta_J,
\qquad
\sup_{0\le t\le T_J}|X(b,t)-X_{\le J}(b,t)|\le \delta_J.
\tag{SB.2}
```

Then for every `t\in[0,T_J]`,

```math
|d(t)-d_c(t)|\le 2\delta_J.
\tag{SB.2a}
```

Consequently:

```math
d(t)\le \sigma_J
\Longrightarrow
d_c(t)\le \sigma_J+2\delta_J\le \widetilde\sigma_J,
\tag{SB.2b}
```

and

```math
d_c(t)\ge 2\widetilde\sigma_J
\Longrightarrow
d(t)\ge 2\widetilde\sigma_J-2\delta_J>\sigma_J.
\tag{SB.2c}
```

**Proof.**
The vector difference

```math
\big(X(a,t)-X(b,t)\big)
-\big(X_{\le J}(a,t)-X_{\le J}(b,t)\big)
```

has norm at most `2\delta_J` by the triangle inequality. The reverse triangle
inequality yields `(SB.2a)`. The consequences `(SB.2b)`-`(SB.2c)` are the same
bound written for the signed barrier and its integrated packet.
∎

So the coarse barrier theorem applies to the true shadow tube once the enlarged
radius `\widetilde\sigma_J` is used.

## Proposition SB.3. Selector Coherence On The Same Bundle

Assume the hypotheses of `TPS-cg-gap` and `(GN.1)`-`(GN.5)` on one common
selector-good family and transported bundle. Then the normalized additive
observable `\widetilde{\mathcal A}_J` satisfies:

```math
\widetilde{\mathcal A}_J(t,a,\theta)
\ge
\int_0^t\lambda_J(s)\,ds
-o_J(1),
\tag{SB.3}
```

and the raw observable obeys

```math
\mathcal A_J(t,a,\theta)
=
\log(c_\Theta \ell_J)+\widetilde{\mathcal A}_J(t,a,\theta).
\tag{SB.3a}
```

For the normalized-chart linear term

```math
L_J(t,a,b):=-W_J(t,b)D_\theta\Theta_{J,a}(\theta),
\tag{SB.3b}
```

one has

```math
s_{\min}(L_J(t,a,b))\ge e^{\mathcal A_J(t,a,\theta)}.
\tag{SB.3c}
```

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

Define the shadow-tube threshold

```math
\underline\lambda_J^{tube}
:=
\exp\!\Big(\inf_{(t,a,\theta)\in \mathcal T_J^{tube}}\mathcal A_J(t,a,\theta)\Big).
\tag{SB.3d}
```

If, moreover, the normalized-chart error obeys

```math
\|E_J(t,a,\theta)\|
\le
\tfrac12\underline\lambda_J^{tube}
\qquad
\text{on }\mathcal T_J^{tube},
\tag{SB.3e}
```

on the shadow tube, then `(GS.21)` follows.

**Proof.**
The lower bound `(SB.3)` is `SG.2'`, identity `(SB.3a)` is `SG.2'b`, the
linear-term identity is `SG.1a`, and `(SB.3c)` is the definition of
`\mathcal A_J`. The implication to `(GS.21)` is exactly `SG.5'`:
singular-value perturbation gives

```math
s_{\min}(D_\theta F_J)
\ge
s_{\min}(L_J)-\|E_J\|
\ge
\tfrac12\underline\lambda_J^{tube},
```

Thus the selector-facing derivative lower bound is controlled by the same
additive observable as the Cauchy-Green packet. ∎

So the selector coherence issue is no longer a conceptual gap. The remaining
open issue is quantitative: one still has to prove enough positive margin to
make the strip repulsion or renewal budget effective on an asymptotically full
good family.

## Proposition SB.4. Honest Strong/Weak Dynamic Dichotomy

Let `\mathcal A_J^{act}` be the good active-pair domain. Split it into

```math
\mathcal A_J^{act}
=
\mathcal A_J^{bar}\cup\mathcal A_J^{wk},
\qquad
\mathcal A_J^{bar}\cap\mathcal A_J^{wk}=\varnothing,
\tag{SB.4}
```

where `\mathcal A_J^{bar}` is the subfamily on which the entrance-strip barrier
hypotheses from `(SB.1)` and `(SB.2)` hold, and `\mathcal A_J^{wk}` is the
complementary good active-pair subfamily.

Then:

1. every pair in `\mathcal A_J^{bar}` never enters the true `\sigma_J` shadow
   tube;
2. every actual shadow episode on `\mathcal A_J^{wk}` is charged exactly to the
   pair-time occupancy ledger

```math
\mathfrak O_J(\sigma_J)
=
\frac{1}{T_J\mu_j(\mathcal C_j)}
\int_0^{T_J}
\nu_J^{act}\!\big(\{(a,b):d(t)\le \sigma_J\}\big)\,dt.
\tag{SB.4a}
```

In particular, the current theorem stack does **not** prove that each isolated
entry carries a fixed positive quantum of defect. What it proves is the weaker
and exact statement that the total pair-time spent in the shadow tube is the
relevant averaged defect ledger.

**Proof.**
Part (1) is `(SB.1e)` combined with strip stability `(SB.2c)`. Part (2) is
just the definition of the occupancy functional `(SB.4a)`: the indicator
`1_{\{d(t)\le \sigma_J\}}` counts the full pair-time of each shadow episode,
and the weak route averages that indicator over active pairs and times.
Nothing in the current packets yields a fixed positive cost per discrete entry
event, only this pair-time budget. ∎

This is the exact place where the strong and weak routes couple without being
confused: strong route gives no-entry; weak route gives vanishing averaged entry
time.

## Corollary SB.5. Conditional Dynamic Closure Hierarchy

Assume:

1. the strong barrier hypotheses from `(SB.1)`-`(SB.3)` hold on a subfamily
   `\mathcal A_J^{bar}\subseteq\mathcal A_J^{act}`;
2. the weak strip-speed / occupancy hypotheses from
   [tps-shadow-time-budget-packet.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-time-budget-packet.md)
   hold on `\mathcal A_J^{wk}:=\mathcal A_J^{act}\setminus\mathcal A_J^{bar}`;
3. the bad bulk, normalization exceptions, and coherence-error exceptions have
   vanishing normalized mass.

Then:

```math
\text{on }\mathcal A_J^{bar}:\ \text{no shadow entry},
\qquad
\text{on }\mathcal A_J^{wk}:\ \mathfrak O_J(\sigma_J)\to 0.
\tag{SB.5}
```

Hence the dynamic route closes in the exact current hierarchy:

```math
\text{strong side: no-entry / no-return on the barrier subfamily},
\tag{SB.5a}
```

```math
\text{weak side: }
\mathfrak O_J(\sigma_J)\to 0
\Longrightarrow
\overline{\Gamma}_J\to 0
\Longrightarrow
\overline{\beta}_J(\eta)<1.
\tag{SB.5b}
```

If, in addition, the barrier subfamily has asymptotically full active-pair mass,
then the good-pair contribution to the strong bad set vanishes.

**Proof.**
The strong conclusion on `\mathcal A_J^{bar}` is Proposition `SB.4(1)`. The
weak conclusion on `\mathcal A_J^{wk}` is exactly the theorem
`TPS-coarse-shadow-time-budget` together with the occupancy-to-overlap and
averaged dynamic-gate corollaries already proved in the shadow-time packet.
The final strong bad-set statement follows once the exceptional sets are known
to have vanishing normalized mass. ∎

## Remaining Open Input

The formal closure packet above does **not** discharge the original
Navier--Stokes-specific theorem burden. After these formal reductions, the only
genuinely new input still missing is:

```math
\boxed{
\text{prove the directional-strain production theorem }(SG.4Ce)
\text{ on an asymptotically full selector-good family, and close either }
\int_{\text{strip}}\varepsilon_J<\log 2
\qquad\text{or}\qquad
\Delta_J^{window}+B_J<2m_J.
}
\tag{SB.6}
```

Equivalently, the remaining open bridge is the same one isolated in the SG
note: the `SG.4-production` packet, namely the `SG.4C` production theorem
together with one of its two realizations `SG.4A` / `SG.4B`, all on the actual
Navier--Stokes selector geometry.

So this note closes theorem shape, not theorem substance.
