# Paid nonlaminar exit / collar separation

Status: geometric exit lemma proved conditionally; PDE payment of the exit measure remains part of the legal-error ledger.

## 1. Setup

Let `Q_gamma(t)` be the transported high-ratio material core/collar for visit `gamma`. Work in material coordinates at a common ancestry time, so all sets are subsets of the same initial material volume.

For two retained visits `gamma` and `eta`, classify their material cores as:

1. nested,
2. disjoint after collar enlargement,
3. crossing.

Crossing means both intersections

```math
Q_\gamma\cap Q_\eta,
\qquad
Q_\gamma\setminus Q_\eta,
\qquad
Q_\eta\setminus Q_\gamma
```

have positive controlled fractions after the collar enlargement.

## 2. Geometric exit charge

For a crossing pair, at least one of the following holds:

```math
\operatorname{dist}_{\mathbb P^2}(F_\gamma,F_\eta)\ge c_0,
```

or

```math
\operatorname{collar}(Q_\gamma)\cap Q_\eta
\quad\text{has controlled relative measure,}
```

or the transported collar normals separate by a controlled angle.

Thus every crossing creates a charge of the form

```math
\chi_{\gamma\eta}
\le
C\bigl(
\operatorname{Angle}(F_\gamma,F_\eta)
+\operatorname{CollarSep}(Q_\gamma,Q_\eta)
+\operatorname{NormalSep}(Q_\gamma,Q_\eta)
\bigr).
\tag{PNE.1}
```

The usual tree-selection argument then extracts a laminar subfamily after charging the discarded crossing visits to

```math
\mathcal E_{nonlam}
:=
\sum_{\gamma\pitchfork\eta}
\bigl(
\operatorname{Angle}_{\gamma\eta}
+\operatorname{CollarSep}_{\gamma\eta}
+\operatorname{NormalSep}_{\gamma\eta}
\bigr).
\tag{PNE.2}
```

## 3. Consequence

After removing visits paid by `E_nonlam`, the retained family is laminar in material ancestry. Therefore the high-ratio first moment splits as

```math
\sum_\gamma a_\gamma
\le
C\sum_{\gamma\in\mathcal L}a_\gamma
+C\mathcal E_{nonlam},
```

where `L` is a laminar ancestry forest.

The laminar part is handled by the ancestry-line frame/deformation tax. The crossing part is handled by the nonlaminar exit charge.

## 4. Remaining burden

The geometric selection is a combinatorial/material-coordinate lemma. To close the Gold route, the PDE ledger must pay

```math
\mathcal E_{nonlam}
+\int(V_C+V_F)\,da
<\infty.
```

So the refined live burden is a single global reserve:

```math
\boxed{\text{GlobalLaminarAncestryVariationReserve.A}}
```

It must pay both nonlaminar exits and laminar line variation. Once that reserve is proved, the first high-ratio moment follows.