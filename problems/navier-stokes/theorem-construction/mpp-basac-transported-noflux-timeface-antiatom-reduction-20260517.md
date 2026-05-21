# MPP BASAC Transported No-Flux Time-Face Anti-Atom Reduction

Date: 2026-05-17

## Status

Conditional reduction proved. This note does not discharge the terminal anti-atom theorem from installed inputs.

## Route position

The lateral flux-localization attempt showed that a compact terminal Zeno layer can create a terminal source atom with zero lateral transported-cylinder flux. Therefore any usable no-flux theorem for the `B_ASAC` residue class must include an explicit terminal time-face anti-atom clause.

The corrected target is:

```math
\boxed{
TransportedCylinderNoFlux_{B_{ASAC}}.A
+
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
}
```

## Assumptions

Let `(u_*,p_*,\mu_*^{src})\in B_{ASAC}`. The class supplies finite local source-residue measure and no earlier selected source slice:

```math
\mu_*^{src}(B_R\times[-R^2,-a])=0
\qquad
\forall R<\infty,\ a>0.
```

Assume the explicit terminal time-face anti-atom clause:

```math
\boxed{
BASACTimeFaceAntiAtom.A:
\mu_*^{src}(B_R\times\{0\})=0
\qquad
\forall R<\infty.
}
```

The lateral transported no-flux hypothesis may be carried as a route guard:

```math
TransportedCylinderNoFlux_{B_{ASAC}}.A.
```

It is not needed for the final measure-theoretic collapse once `BASACTimeFaceAntiAtom.A` is assumed.

## Proof of the conditional reduction

Fix `R<\infty`. The compact time interval decomposes as

```math
[-R^2,0]
=
\left(\bigcup_{n\ge1}[-R^2,-1/n]\right)
\cup
\{0\}.
```

For every `n`, the no-earlier-selected-source-slice clause gives

```math
\mu_*^{src}(B_R\times[-R^2,-1/n])=0.
```

The time-face clause gives

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

By countable subadditivity and finiteness on compact cylinders,

```math
\mu_*^{src}(B_R\times[-R^2,0])=0.
```

Since `R` is arbitrary and the cylinders exhaust the tangent spacetime domain,

```math
\mu_*^{src}=0.
```

This proves `ZenoResidueLiouville_{B_ASAC}.A` under `BASACTimeFaceAntiAtom.A`.

## Why the time-face clause remains open

The terminal layer model

```math
F_m^{src,+}(s,x)=m\,1_{(-1/m,0]}(s)\rho(x)
```

has bounded local `L^1_s` mass and converges to a terminal source atom. It can be supported inside a fixed compact ball, so large-radius lateral transported flux can vanish. The model remains compatible with the available `B_ASAC` bookkeeping: zero ASAC defect, no fixed earlier selected source slice, and no finite or non-Zeno donor exit.

Thus lateral no-flux plus `B_ASAC` clauses do not produce `BASACTimeFaceAntiAtom.A`.

## Consequence

The no-flux route has an honest conditional theorem:

```math
NoEarlierSelectedSourceSlice.A
+
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_ASAC}.A.
```

The live lower target is now exactly:

```math
\boxed{BASACTimeFaceAntiAtom.A.}
```

Sufficient suppliers remain:

```math
TerminalSourceReverseHolder_{B_ASAC}.A,
\qquad
UniformTemporalSourceIntegrability_{p,B_ASAC}.A\ (p>1),
\qquad
ScaleNormalizedBranchEntropyReserve.A,
```

or a stronger rigid `B_ASAC` subclass whose defining property excludes terminal time-face atoms.