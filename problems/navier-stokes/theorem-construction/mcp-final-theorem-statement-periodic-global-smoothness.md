# Conditional Theorem Statement: Periodic 3D Navier-Stokes Global Smoothness

## Status

Stale closure wording corrected on 2026-07-01.

This surface records the downstream conditional implication from the current
Gold source theorem to the periodic relaunch conclusion. Current Gold
authority keeps SignedCriticalHeightSignPersistenceOrPeakBound.A open: the
missing input is the signed critical-height theorem, proving either sign
persistence with physical cost or peak-height control when the signed rate
changes sign.

## Theorem

Conditional on SignedCriticalHeightSignPersistenceOrPeakBound.A, the following
periodic conclusion is obtained by the downstream consumer chain.

Let `nu>0`. Let

```math
u_0\in C^\infty(\mathbb T^3;\mathbb R^3),
\qquad \nabla\cdot u_0=0,
\qquad \int_{\mathbb T^3}u_0(x)\,dx=0.
```

Then the incompressible Navier-Stokes system on `T^3`,

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\qquad u(0)=u_0,
```

has a unique global smooth solution

```math
u\in C^\infty([0,\infty)\times\mathbb T^3),
\qquad p\in C^\infty([0,\infty)\times\mathbb T^3),
```

with the pressure gauge fixed by

```math
\int_{\mathbb T^3}p(t,x)\,dx=0
\qquad\text{for every }t.
```

## Internal theorem package hidden behind named lemmas

This older generated surface used the following stale named internal lemmas:

```text
PCTP.hard terminal-tail uniformization
Field_avg terminal good-cover equivalence
AACT.KX.local averaged budget
AACT.Global.noJump finite-cover scheduler
FCI.5f strengthened source closure
AVG.END.Cert averaged face closure
READ.END pointwise endpoint recovery
ECQ.A continuation bridge
```

Read against current authority, these names do not collectively supply an
unconditional theorem.  They are superseded by the Gold \(L^1\) consumer chain
and require the still-open SignedCriticalHeightSignPersistenceOrPeakBound.A
input. With that input granted, the downstream implication is

```math
SignedCriticalHeightSignPersistenceOrPeakBound.A
\Longrightarrow
\text{signed critical-height continuation control}
\Longrightarrow
\text{absence of finite classical endpoint}.
```

## Proof skeleton

Assume the current open Gold \(L^1\) source theorem TFE2748B /
OriginalCriticalCapacityVariation.A.  Let `(u,p)` be the maximal classical
solution on `[0,T_*)` and suppose `T_*<\infty`.  The terminal-uniform selected
\(L^1\) density gives terminal no-jump by absolute continuity, finite selected
action, finite full same-material clock, and then a uniform `H^s(T^3)` bound for
some `s>5/2` on `[0,T_*)`.

Set \(M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}\).  Periodic \(H^s\) local
well-posedness gives a lifespan \(\tau=\tau(\nu,s,M_s)>0\) for every datum with
norm at most \(M_s\).  Choose \(t_j\uparrow T_*\) with \(T_*-t_j<\tau/2\).  The
solution relaunched from \(u(t_j)\) exists beyond \(T_*\), and uniqueness
identifies it with the original solution on the overlap. This contradicts
maximality, so `T_*=\infty`.

Smoothness for all positive time and preservation of smoothness then follow
from the classical periodic Navier-Stokes regularity theory applied on each
finite interval.

## Scope

This conditional theorem statement is explicitly periodic `T^3`.  It is not a
whole-space `R^3` export and not a current Gold closure claim.
