# Mixed-Jet Cross-Rung Pairing Matrix

## Purpose

This note answers the question:

```math
\boxed{
\text{what happens if the tower is paired across different rungs instead of only on the diagonal?}
}
```

The point is that the familiar same-rung cancellations are only the diagonal
shadow of a stronger matrix-level structure.

## Two-rung pairing

Let

```math
A=(m,\alpha),
\qquad
B=(n,\gamma),
\tag{1}
```

and write

```math
J_A:=J_{m,\alpha},
\qquad
J_B:=J_{n,\gamma}.
\tag{2}
```

Split the differentiated equations as

```math
\partial_t J_A + (u\cdot\nabla)J_A + \widetilde T_A + \nabla \Pi_A = \nu\Delta J_A,
\tag{3}
```

```math
\partial_t J_B + (u\cdot\nabla)J_B + \widetilde T_B + \nabla \Pi_B = \nu\Delta J_B,
\tag{4}
```

where `\widetilde T_A,\widetilde T_B` denote the off-diagonal mixed spreads.

Now pair `(3)` with `J_B`, pair `(4)` with `J_A`, and add.

Define the cross-rung correlation

```math
K_{A,B}(t):=\langle J_A(t),J_B(t)\rangle_{L^2_x}.
\tag{5}
```

Then

```math
\frac{d}{dt}K_{A,B}
=
\langle \partial_t J_A,J_B\rangle
+
\langle J_A,\partial_t J_B\rangle.
\tag{6}
```

## Exact matrix-level cancellations

### 1. Pressure cancels against every divergence-free rung

Since all jets are divergence-free,

```math
\langle \nabla \Pi_A, J_B\rangle
=
-\langle \Pi_A,\nabla\cdot J_B\rangle
=
0,
\tag{7}
```

and similarly

```math
\langle J_A,\nabla \Pi_B\rangle=0.
\tag{8}
```

So pressure does **not** only cancel on the diagonal.
It cancels in every jet-vs-jet pairing.

### 2. Base transport is skew across rungs

Because `\nabla\cdot u=0`,

```math
\langle (u\cdot\nabla)J_A, J_B\rangle
=
-\langle J_A,(u\cdot\nabla)J_B\rangle.
\tag{9}
```

Hence

```math
\langle (u\cdot\nabla)J_A, J_B\rangle
+
\langle J_A,(u\cdot\nabla)J_B\rangle
=
0.
\tag{10}
```

So the same-rung cancellation

```math
\langle (u\cdot\nabla)J_A,J_A\rangle=0
\tag{11}
```

is just the diagonal case of a stronger off-diagonal antisymmetry.

### 3. Viscosity damps the whole correlation matrix

The viscous terms give

```math
\nu\langle \Delta J_A, J_B\rangle
+
\nu\langle J_A,\Delta J_B\rangle
=
-2\nu\langle \nabla J_A,\nabla J_B\rangle.
\tag{12}
```

So viscosity acts on the full cross-rung correlation matrix, not only on the
diagonal energies.

## Cross-rung matrix identity

Combining `(6)`--`(12)`, we get

```math
\boxed{
\frac{d}{dt}K_{A,B}
+
2\nu\langle \nabla J_A,\nabla J_B\rangle
=
-\langle \widetilde T_A,J_B\rangle
-\langle J_A,\widetilde T_B\rangle.
}
\tag{13}
```

This is the exact cross-rung pairing law.

When `A=B`, it reduces to the familiar diagonal energy identity.

## Meaning of the matrix law

This answers the “line up the cancellations differently” question.

### Pressure

Pressure cancels more broadly than the diagonal picture suggests:

```math
\boxed{
\text{pressure cancels in every jet-vs-jet pairing, not only same-rung energy pairings.}
}
\tag{14}
```

### Base transport

Base transport is not just a diagonal zero.
It is a skew transfer operator on the whole jet-correlation matrix:

```math
\boxed{
\text{base transport moves correlation between rungs, but contributes no symmetric growth.}
}
\tag{15}
```

### Viscosity

Viscosity damps every matrix entry through the gradient pairing
`\langle \nabla J_A,\nabla J_B\rangle`.
So there is a genuine “upward consequence” of viscous damping:

```math
\boxed{
\text{every rung-to-rung correlation is filtered through the viscous Dirichlet form.}
}
\tag{16}
```

## Where the real burden moves

After pressure and base transport are removed at matrix level, the only live
object is the mixed-term matrix source

```math
\mathcal R_{A,B}
:=
\langle \widetilde T_A,J_B\rangle
+
\langle J_A,\widetilde T_B\rangle.
\tag{17}
```

This is the real across-rung burden.

It contains:

- upward feed from lower/split jets into rung `A`, tested against rung `B`;
- upward feed from lower/split jets into rung `B`, tested against rung `A`.

So the actual global question is not just about one-rung remainders.
It is:

```math
\boxed{
\text{does the matrix source }\mathcal R_{A,B}
\text{ admit cancellation, sign, telescoping, or summable closure?}
}
\tag{18}
```

## Relation to the lower-triangular feed picture

The earlier raw feed picture remains true:

- low rungs feed many higher ones;
- defects feed upward into deeper defects;
- viscosity is the only direct downward damping channel.

The new point from `(13)` is that if one studies the **matrix**
`K_{A,B}` instead of only the diagonal `K_{A,A}`, then:

1. pressure is gone everywhere;
2. base transport is skew everywhere;
3. viscosity damps the whole matrix;
4. the only live global source is the mixed-term matrix `\mathcal R_{A,B}`.

That is a sharper across-rung formulation of the tower.

## Parity inside the matrix picture

Parity still does not give sign by itself.
But it does sort the matrix entries into channels:

- even-even blocks = state/state correlations;
- even-odd and odd-even blocks = state/transfer correlations;
- odd-odd blocks = transfer/transfer correlations.

So parity can help organize where the mixed source `\mathcal R_{A,B}` lands,
but it does **not** by itself force those blocks to cancel.

## Consequence for the smoothness question

The tower now has two exact formulations:

1. diagonal rung energies:
   useful for raw viscous extraction and same-rung symmetrization;
2. off-diagonal correlation matrix:
   useful for seeing the stronger pressure cancellation, base-transport
   antisymmetry, and viscous filtering of cross-rung transfer.

So the honest unresolved burden becomes:

```math
\boxed{
\text{find a sign, cancellation, or summability law for the mixed-term matrix source }\mathcal R_{A,B}.}
\tag{19}
```

If such a law exists, it would be a genuine across-rung closure mechanism.

## Limitation

This note does **not** prove that `\mathcal R_{A,B}` cancels globally.

It proves only the sharper structural fact:

```math
\boxed{
\text{the same-rung cancellations extend to a full cross-rung pairing matrix,}
}
```

```math
\boxed{
\text{and the remaining obstruction is entirely the mixed-term source on that matrix.}
}
\tag{20}
```
