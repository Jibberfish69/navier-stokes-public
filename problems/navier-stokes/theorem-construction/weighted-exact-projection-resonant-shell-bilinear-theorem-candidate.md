# Weighted Exact-Projection Resonant Shell Bilinear Theorem Candidate

## Status

Superseded by
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).
Keep this file only as an archival predecessor for the earlier `WEP.RR.*`
labeling. The live reserve route now uses the `WERS.*` packet, whose current
irreducible burden is the microlocal cap-construction theorem `(WERS.3Cap)`.

## Carrier

After the derivative-LP bridge, the pressure source splits shellwise as

```math
\Delta_j\mathcal Z_\alpha
=
\mathcal Z_{\alpha,j}^{LH}
+
\mathcal Z_{\alpha,j}^{HL}
+
\mathcal Z_{\alpha,j}^{RR},
\tag{WEP.RR.0}
```

where `\mathcal Z_{\alpha,j}^{RR}` is the only genuinely finite-collar
resonant packet; see
[derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md#L88).
Write

```math
C_G:=P(\lambda^{-1},\Lambda,\|G\|_{C_a^{1,1}}),
\tag{WEP.RR.0a}
```

matching the constant from `(WEP.2'a)`.

On the weighted exact-projection carrier,

```math
\mathcal B_G(X,Y)
=
\langle \Pi_G^{ex}X,\Pi_G^{ex}Y\rangle_{L^2_{G^{-1}}},
\qquad
|X|_{\mathsf{Press}_j}:=|\Pi_G^{ex}X|_{L^2_{G^{-1}}}.
\tag{WEP.RR.1}
```

So the resonant reserve debt is a shellwise bilinear theorem for
`\mathcal Z_{\alpha,j}^{RR}` inside this exact projected pressure form.

## Main/Defect Split

Using the shellwise realization

```math
\Pi_G^{ex}\Delta_j
=
T_{p_G}\Delta_j + R_{G,j},
\tag{WEP.RR.2}
```

from
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md#L196),
define the projected resonant interaction for shell-supported fields
`f_j,g_j` by

```math
\mathcal B_{G,j}^{RR}(f_j,g_j)
:=
\mathcal B_G(f_j,g_j)
=
\mathcal B_{G,j}^{main}(f_j,g_j)
+
\mathcal B_{G,j}^{rem}(f_j,g_j),
\tag{WEP.RR.3}
```

where:

- `\mathcal B_{G,j}^{main}` is obtained by inserting the paradifferential
  projector `T_{p_G}` into the exact projected carrier on both inputs;
- `\mathcal B_{G,j}^{rem}` collects every term with at least one shellwise
  remainder `R_{G,j}`, one projector commutator defect, or one off-shell
  frequency defect.

At the symbol level, the main projected resonant carrier is

```math
b_G^{main}(a,\xi,\eta)
:=
p_G(a,\xi)^\top G(a)^{-1}p_G(a,\eta),
\qquad
2^{j-1}\le |\xi|,|\eta|\le 2^{j+1},
\quad
|\xi-\eta|\le C_{res}2^j,
\tag{WEP.RR.4}
```

while a defect term is placed in `b_G^{rem}` only after it satisfies the explicit
remainder estimate

```math
|b_G^{rem}(a,\xi,\eta)|\le C_G 2^{-j}.
```

Terms that do not satisfy this bound remain in the same-depth main theorem
burden.

## Candidate Theorem

The clean reserve target is the theorem pair

```math
\boxed{
|\mathcal B_{G,j}^{rem}(f_j,g_j)|
\le
C_G\,2^{-j}\,
|f_j|_{\mathsf{SameDepth}_j}\,
|g_j|_{\mathsf{SameDepth}_j},
}
\tag{WEP.RR.5}
```

and

```math
\boxed{
|\mathcal B_{G,j}^{main}(f_j,g_j)|
\le
\varepsilon\,D_j
+
C_\varepsilon\,\mathrm{lot}_j.
}
\tag{WEP.RR.6}
```

Equivalently, after summing over the finitely many resonant shell pairs,

```math
\boxed{
\sum_j |\mathcal B_{G,j}^{main}(f_j,g_j)|
\le
\varepsilon\sum_j D_j
+
C_\varepsilon\sum_j \mathrm{lot}_j.
}
\tag{WEP.RR.6'}
```

Here `\mathrm{lot}_j` denotes the lower-order / coefficient-ledger packet
already admitted on the reserve branch.

## Required Reduction From `(WEP.2')` To `(WEP.RR.5)`

Every term in `\mathcal B_{G,j}^{rem}` contains at least one projector defect:

- a shellwise remainder `R_{G,j}`,
- a low-high commutator `[T_{p_G},a_{<j-C}]`,
- or a projector-shell commutator `[\Delta_j,\Pi_G^{ex}]`.

The reduction is not automatic from the phrase "order `-1`." It must prove the
following shellwise estimates on the active shell:

```math
\|R_{G,j}F_j\|_{L^2}
+\|[T_{p_G},a_{<j-C}]F_j\|_{L^2}
+\|[\Delta_j,\Pi_G^{ex}]F_j\|_{L^2}
\le
C_G2^{-j}\,\mathrm{Coef}_j(G,a)\,\|F_j\|_{L^2},
\tag{WEP.RR.7a}
```

with the same coefficient ledger used by `(WEP.2')`, uniformly in `j` and in
the finitely many resonant shell offsets. After `(WEP.RR.7a)` is proved for
each projector defect, Cauchy--Schwarz / Young on the displayed shell pairing
gives the remainder demotion

```math
\mathcal B_{G,j}^{rem}
\Longrightarrow
C_G\,2^{-j}\times \text{same-depth shell norms}.
\tag{WEP.RR.7}
```

This is the exact sense in which the paradifferential pressure defects cease to
be a separate burden. Until `(WEP.RR.7a)` is proved for all three defect types,
`(WEP.2')` is supporting evidence, not a completed reduction to the pure
resonant main term.

## Exact Remaining Debt

So the reserve 4B branch is reduced to

```math
\boxed{
\text{WEP.2' on the top-}U\text{ low-high packet}
\quad+\quad
\text{pure resonant shell theorem }(WEP.RR.6)
\Longrightarrow
\text{reserve 4B closure.}
}
\tag{WEP.RR.8}
```

No further abstract Hodge reduction remains on this branch. The only work left
is:

1. prove the quantified low-high commutator theorem `(WEP.2')`, and
2. prove the coercive or summable resonant main-term bound `(WEP.RR.6)`.
