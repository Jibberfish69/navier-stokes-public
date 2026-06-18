# Non-Diagonal Tower Functional Preliminary Verdict

## Purpose

This note records the bounded verdict on the idea:

```math
\boxed{
\text{replace purely diagonal tower energies by a non-diagonal jet-correlation functional.}
}
```

The point is not to claim closure. The point is to pin down exactly what is
already better off-diagonal than on the diagonal.

## Existing exact object

For arbitrary jet indices

```math
A=(m,\alpha),
\qquad
B=(n,\gamma),
```

define

```math
K_{A,B}(t):=\langle J_A(t),J_B(t)\rangle_{L^2_x}.
```

By the cross-rung pairing note,

```math
\frac{d}{dt}K_{A,B}
+
2\nu\langle \nabla J_A,\nabla J_B\rangle
=
-\langle \widetilde T_A,J_B\rangle
-\langle J_A,\widetilde T_B\rangle.
\tag{1}
```

The exact structural gain is:

1. pressure cancels for every pair `(A,B)`;
2. base transport is skew for every pair `(A,B)`;
3. viscosity damps the whole correlation matrix, not only the diagonal.

So the diagonal identity is only the shadow of a stronger matrix law.

## What this route genuinely buys

The non-diagonal route isolates the true remaining source as

```math
\mathcal R_{A,B}
:=
\langle \widetilde T_A,J_B\rangle
+
\langle J_A,\widetilde T_B\rangle.
\tag{2}
```

That is cleaner than the diagonal view, because all exact cancellation structure is
already removed before any estimate:

- pressure is gone;
- base transport contributes no symmetric growth;
- only the mixed-source matrix remains.

So the best honest use of the route is:

```math
\boxed{
\text{search for sign, skew, telescoping, block cancellation, or normal-form structure in }\mathcal R_{A,B}.}
```

## What this route does not yet buy

Equation `(1)` does **not** by itself produce a monotone matrix functional.
The obstacle is that the Dirichlet pairing

```math
\langle \nabla J_A,\nabla J_B\rangle
```

is not positive definite entrywise, and the mixed-source matrix `(2)` still has
no proved sign or telescoping law.

So the non-diagonal route is presently a **better structural microscope**, not
yet a closed Lyapunov theorem.

## Leading candidate next object

The sharpest candidate is not the full unrestricted matrix, but a bounded block
functional built from:

- same parabolic-order blocks,
- near-order off-diagonal blocks,
- and parity-sorted blocks
  (`even-even`, `even-odd`, `odd-odd`).

That is the smallest version of the matrix route likely to reveal more
cancellation than the purely diagonal energy.

## Verdict

```math
\boxed{
\text{This route is promising as a structural reformulation.}
}
```

```math
\boxed{
\text{Its real value is that it relocates the live burden to the mixed-source matrix }\mathcal R_{A,B}.}
```

```math
\boxed{
\text{It does not yet supply a closed global functional on its own.}
}
```
