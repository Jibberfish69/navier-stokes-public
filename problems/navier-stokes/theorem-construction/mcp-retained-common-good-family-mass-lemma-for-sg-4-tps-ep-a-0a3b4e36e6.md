# Retained Common-Good Family Mass Lemma For SG.4/TPS

## Status

Conditional theorem. This closes the common-family bookkeeping once each selection packet supplies an explicit loss budget.

## Setup

Let `G` be the starting selector-good family with finite positive measure

```math
\mu(G)=m_0>0.
```

Let the branch selections produce measurable bad sets

```math
B_{dens},\ B_{stop},\ B_{shell},\ B_{C2},\ B_{cmp},\ B_{gap},\ B_{ssc} \subset G,
```

with loss budgets

```math
\mu(B_i)\le \varepsilon_i.
```

Define the retained common family

```math
G^{com}:=G\setminus\bigcup_i B_i.
```

## Theorem RCF.SG4

If

```math
\varepsilon_{dens}+\varepsilon_{stop}+\varepsilon_{shell}+\varepsilon_{C2}+\varepsilon_{cmp}+\varepsilon_{gap}+\varepsilon_{ssc}<m_0,
```

then

```math
\mu(G^{com})
\ge
m_0-
(\varepsilon_{dens}+\varepsilon_{stop}+\varepsilon_{shell}+\varepsilon_{C2}+\varepsilon_{cmp}+\varepsilon_{gap}+\varepsilon_{ssc})
>0.
```

So the common selector-good family retains usable mass.

## Proof

By finite subadditivity,

```math
\mu\left(\bigcup_iB_i\right)\le\sum_i\mu(B_i)\le\sum_i\varepsilon_i.
```

Therefore

```math
\mu(G^{com})
=\mu\left(G\setminus\bigcup_iB_i\right)
\ge \mu(G)-\sum_i\varepsilon_i.
```

The stated inequality gives positive retained mass.

## Same-strip synchronization

On `G^{com}`, define one shared package:

```text
same selector-good family: G^{com}
same core-cap family: inherited from the retained shell selection
same entrance-sector refinement: inherited from retained density/stopping selection
same time strip: retained CG/C2/SSC strip
same finite frame: retained balanced selector frame
same CG reference tensor: retained exact-potential comparison object
same selector-strain packet: retained SSC-EP.A packet
```

Every downstream theorem consumes this single package.

## Branch consequence

Once the individual analytic packets hold on `G^{com}`, the existing branch handoff fires:

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq

D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Remaining analytic estimates

The retained-mass theorem turns the global compatibility issue into seven explicit loss estimates:

```text
ε_dens, ε_stop, ε_shell, ε_C2, ε_cmp, ε_gap, ε_ssc.
```

The next source work is to prove those loss budgets for the corresponding selections.