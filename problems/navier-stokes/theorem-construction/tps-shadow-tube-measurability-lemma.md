# TPS Shadow-Tube Measurability Lemma

## Purpose

This note seals the measurability step behind the infimum-in-time shadowing bad
set used throughout the `TPS` dynamic packet.

The point is to make explicit that the bad set is a measurable selector object,
not a hidden compactness or selection artifact.

## Setup

Fix a selector family `\mathcal C_j`, active-neighbor relation `\sim`, and a
representative point `a_Q` for each selector cell `Q`, together with the
selector carrier measure `\mu_j`.

Assume:

1. `Q\mapsto a_Q` is measurable on the selector carrier;
2. for each selector point `a`, the Lagrangian trajectory
   `t\mapsto X(a,t)` is continuous on `[0,T_J]`;
3. the active-neighbor fibers are uniformly finite.

Define the pair shadow event

```math
\mathcal B_J(\sigma)
:=
\Big\{
(Q,Q'):\ Q'\sim Q,\ Q'\neq Q,\
\inf_{0\le t\le T_J}|X(a_Q,t)-X(a_{Q'},t)|\le \sigma
\Big\}.
\tag{SM.1}
```

and the vertex bad set

```math
E_J^{ns}(\sigma)
:=
\Big\{
Q:\exists\,Q'\sim Q,\ (Q,Q')\in \mathcal B_J(\sigma)
\Big\}.
\tag{SM.2}
```

For each time `t`, also define the time-slice pair shadow set

```math
\mathcal B_J(t;\sigma)
:=
\Big\{
(Q,Q'):\ Q'\sim Q,\ Q'\neq Q,\
|X(a_Q,t)-X(a_{Q'},t)|\le \sigma
\Big\},
\tag{SM.2a}
```

and the time-slice vertex bad set

```math
B_J(t;\sigma)
:=
\Big\{
Q:\exists\,Q'\sim Q,\ (Q,Q')\in\mathcal B_J(t;\sigma)
\Big\}.
\tag{SM.2b}
```

## Time-slice regularity

For each fixed active pair `(Q,Q')`, the map

```math
t\mapsto \mathbf 1_{\{|X(a_Q,t)-X(a_{Q'},t)|\le \sigma\}}
\tag{SM.2c}
```

is upper semicontinuous on `[0,T_J]`, because it is the indicator of a closed
sublevel set of the continuous pair-distance function.

Since active-neighbor fibers are uniformly finite, for each selector cell `Q`
the map

```math
t\mapsto \mathbf 1_{B_J(t;\sigma)}(Q)
\tag{SM.2d}
```

is the finite maximum of upper semicontinuous functions, hence is upper
semicontinuous. Therefore

```math
t\mapsto \mu_j(B_J(t;\sigma))
\tag{SM.2e}
```

is upper semicontinuous, hence Borel measurable, on `[0,T_J]`.

**Proof skeleton.**
Take `t_n\to t`. Pointwise upper semicontinuity gives
`\limsup_{n\to\infty}\mathbf 1_{B_J(t_n;\sigma)}(Q)\le \mathbf 1_{B_J(t;\sigma)}(Q)`
for every `Q`. Reverse Fatou with the finite measure `\mu_j` yields
`\limsup_{n\to\infty}\mu_j(B_J(t_n;\sigma))\le \mu_j(B_J(t;\sigma))`.

## Rational-time approximation

For fixed `(Q,Q')`, continuity of

```math
t\mapsto |X(a_Q,t)-X(a_{Q'},t)|
\tag{SM.3}
```

implies

```math
\inf_{0\le t\le T_J}|X(a_Q,t)-X(a_{Q'},t)|\le \sigma
```

if and only if for every `n\ge 1` there exists a rational time
`q\in \mathbb Q\cap[0,T_J]` such that

```math
|X(a_Q,q)-X(a_{Q'},q)|\le \sigma+\tfrac1n.
\tag{SM.4}
```

Therefore

```math
\mathcal B_J(\sigma)
=
\bigcap_{n=1}^\infty
\bigcup_{q\in\mathbb Q\cap[0,T_J]}
\Big\{
(Q,Q'):\ Q'\sim Q,\ |X(a_Q,q)-X(a_{Q'},q)|\le \sigma+\tfrac1n
\Big\}.
\tag{SM.5}
```

Each inner set is measurable, so `\mathcal B_J(\sigma)` is measurable as a
countable intersection of countable unions of measurable sets.

Equivalently, the vertex bad set satisfies the rational-time outer
approximation

```math
E_J^{ns}(\sigma)
=
\bigcap_{n=1}^\infty
\bigcup_{q\in\mathbb Q\cap[0,T_J]} B_J\!\big(q;\sigma+\tfrac1n\big).
\tag{SM.5a}
```

The same existential-time reduction may be phrased through a jointly measurable
shadow-margin function `g_J(Q,t)` with continuous time sections, by writing

```math
E_J^{ns}(\sigma)
=
\Big\{
Q:\inf_{0\le t\le T_J} g_J(Q,t)\le 0
\Big\}.
\tag{SM.5b}
```

Then

```math
E_J^{ns}(\sigma)
=
\bigcap_{m=1}^\infty
\bigcup_{q\in\mathbb Q\cap[0,T_J]}
\Big\{
Q:g_J(Q,q)<\tfrac1m
\Big\},
\tag{SM.5c}
```

which is the exact rational-time reduction for an existential shadow event.

## Vertex projection

Because each active-neighbor fiber is finite, the projection from pair space to
vertex space preserves measurability:

```math
E_J^{ns}(\sigma)
=
\bigcup_{k=1}^{M}
\Big\{
Q:\exists\,Q'_k(Q)\sim Q,\ (Q,Q'_k(Q))\in \mathcal B_J(\sigma)
\Big\},
\tag{SM.6}
```

where `M` is the uniform active-neighbor bound and `Q'_k(Q)` ranges over the
enumerated active neighbors of `Q`.

Hence `E_J^{ns}(\sigma)` is measurable.

## Consequence

The dynamic packet may therefore use:

1. the pair shadow event `\mathcal B_J(\sigma)` as a measurable active-pair
   object;
2. the vertex bad set `E_J^{ns}(\sigma)` as a measurable selector-carrier
   object;
3. the time-slice mass `t\mapsto \mu_j(B_J(t;\sigma))` as a Borel, in fact
   upper-semicontinuous, quantity;
4. rational-time outer approximation in Fubini-Markov or coarea arguments
   without hidden topological selection steps.

So the infimum-in-time shadow tube is now fully compatible with the measurable
good-set framework of `TPS-ns-good-set`.
