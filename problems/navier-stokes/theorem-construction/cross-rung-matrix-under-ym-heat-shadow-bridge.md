# Cross-Rung Matrix Under YM Heat Shadow Bridge

## Status

This is a theorem-facing synthesis note.

Its job is to rewrite the already-recorded cross-rung pairing matrix under the
heat-governed carrier bridge:

```text
carrier heat tower
-> torus spectral matrix law
-> classical cross-rung matrix law
-> bridge-defect packet.
```

## 1. Classical cross-rung matrix law

The visible classical object is

```math
K_{A,B}(t):=\langle J_A(t),J_B(t)\rangle_{L^2_x},
\qquad
A=(m,\alpha),\ B=(n,\gamma),
\tag{1}
```

with exact classical identity already recorded in
[mixed-jet-cross-rung-pairing-matrix.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-cross-rung-pairing-matrix.md):

```math
\frac{d}{dt}K_{A,B}
+
2\nu\langle \nabla J_A,\nabla J_B\rangle
=
-\langle \widetilde T_A,J_B\rangle
-\langle J_A,\widetilde T_B\rangle.
\tag{2}
```

Pressure cancels in every pairing and base transport is skew in every pairing.

## 2. Lifted carrier matrix object

Let `X` satisfy the projected carrier heat law

```math
\partial_t X + \mathbb P_A N_A(X)=\nu\,\mathbb P_A\Delta_A X.
\tag{3}
```

Let carrier jets be

```math
\mathsf X_A:=\mathsf X_{m,\alpha},
\qquad
\mathsf X_B:=\mathsf X_{n,\gamma},
\tag{4}
```

and define the carrier cross-rung matrix entry

```math
\mathsf K_{A,B}(t):=
\langle \mathsf X_A(t),\mathsf X_B(t)\rangle_{\mathcal H_A}.
\tag{5}
```

Differentiate the lifted tower and split the differentiated carrier interaction
into:

- the skew / exact transport part,
- the off-diagonal carrier interaction spread,
- the operator-commutator defect produced by differentiated projection /
  coefficient structure.

Record that split as the tower identity

```math
\partial_t \mathsf X_A
+
\mathsf U_A
+
\widetilde{\mathsf T}_A
=
\nu\,\mathbb P_A\Delta_A \mathsf X_A
+
\mathsf E_A^{\mathrm{comm}},
\tag{6}
```

and similarly for `B`.

Here:

- `\mathsf U_A` is the exact skew transport piece on the physical sector,
- `\widetilde{\mathsf T}_A` is the off-diagonal carrier interaction spread,
- `\mathsf E_A^{\mathrm{comm}}` is the differentiated operator-commutator
  defect.

## 3. Lifted carrier matrix law

Pair `(6)` with `\mathsf X_B`, pair the `B`-equation with `\mathsf X_A`, and
add.

Under the intended carrier heat structure:

```math
\langle \mathsf U_A,\mathsf X_B\rangle_{\mathcal H_A}
+
\langle \mathsf X_A,\mathsf U_B\rangle_{\mathcal H_A}
=
0,
\tag{7}
```

and the heat operator contributes the Dirichlet form

```math
\nu\langle \mathbb P_A\Delta_A \mathsf X_A,\mathsf X_B\rangle
+
\nu\langle \mathsf X_A,\mathbb P_A\Delta_A \mathsf X_B\rangle
=
-2\nu\langle \nabla_A \mathsf X_A,\nabla_A \mathsf X_B\rangle_{\mathcal H_A},
\tag{8}
```

modulo physical-sector projection conventions.

So the lifted cross-rung matrix law is

```math
\frac{d}{dt}\mathsf K_{A,B}
+
2\nu\langle \nabla_A \mathsf X_A,\nabla_A \mathsf X_B\rangle_{\mathcal H_A}
=
-\langle \widetilde{\mathsf T}_A,\mathsf X_B\rangle_{\mathcal H_A}
-\langle \mathsf X_A,\widetilde{\mathsf T}_B\rangle_{\mathcal H_A}
+
\mathsf R^{\mathrm{comm}}_{A,B},
\tag{9}
```

where

```math
\mathsf R^{\mathrm{comm}}_{A,B}
:=
\langle \mathsf E_A^{\mathrm{comm}},\mathsf X_B\rangle_{\mathcal H_A}
+
\langle \mathsf X_A,\mathsf E_B^{\mathrm{comm}}\rangle_{\mathcal H_A}.
\tag{10}
```

This is the carrier analogue of the classical cross-rung identity.

## 4. Shadowing the carrier matrix law

Let

```math
J_A=\mathcal C(\mathsf X_A),
\qquad
J_B=\mathcal C(\mathsf X_B).
\tag{11}
```

Shadowing the heat form gives

```math
\mathcal C\!\left(
\langle \nabla_A \mathsf X_A,\nabla_A \mathsf X_B\rangle_{\mathcal H_A}
\right)
\rightsquigarrow
\langle \nabla J_A,\nabla J_B\rangle_{L^2_x},
\tag{12}
```

and shadowing the off-diagonal carrier interaction gives

```math
\mathcal C\!\left(
\langle \widetilde{\mathsf T}_A,\mathsf X_B\rangle_{\mathcal H_A}
\right)
=
\langle \widetilde T_A,J_B\rangle
+
\mathsf R^{\mathrm{sh}}_{A,B},
\tag{13}
```

for a shadow-defect matrix term `\mathsf R^{\mathrm{sh}}_{A,B}`.

So the shadowed matrix law becomes

```math
\frac{d}{dt}K_{A,B}
+
2\nu\langle \nabla J_A,\nabla J_B\rangle
=
-\langle \widetilde T_A,J_B\rangle
-\langle J_A,\widetilde T_B\rangle
+
\mathcal R^{\mathrm{bridge}}_{A,B}(X),
\tag{14}
```

where the total bridge-defect matrix entry is

```math
\mathcal R^{\mathrm{bridge}}_{A,B}(X)
:=
\mathcal C(\mathsf R^{\mathrm{comm}}_{A,B})
+
\mathsf R^{\mathrm{sh}}_{A,B}
+
\mathsf R^{\mathrm{sh}}_{B,A}.
\tag{15}
```

If the bridge is exact, then

```math
\mathcal R^{\mathrm{bridge}}_{A,B}(X)=0,
\tag{16}
```

and `(14)` reduces exactly to the classical law `(2)`.

## 5. What changes in interpretation

The cross-rung matrix law changes meaning in four exact ways.

### (i) Matrix damping is inherited heat damping

The term

```math
2\nu\langle \nabla J_A,\nabla J_B\rangle
```

is re-read as the classical shadow of the carrier heat Dirichlet form

```math
2\nu\langle \nabla_A \mathsf X_A,\nabla_A \mathsf X_B\rangle_{\mathcal H_A}.
```

So the matrix damping is not merely a classical lucky identity.
It is inherited from the carrier heat law.

### (ii) Skew transport is the visible trace of carrier exact transport

The classical skew cancellation

```math
\langle (u\cdot\nabla)J_A,J_B\rangle
+
\langle J_A,(u\cdot\nabla)J_B\rangle
=
0
```

is re-read as the shadow of the carrier skew piece `(7)`.

### (iii) The real matrix burden moves to the bridge defect

The open matrix object is no longer only

```math
\langle \widetilde T_A,J_B\rangle
+
\langle J_A,\widetilde T_B\rangle.
```

It becomes

```math
\boxed{
\text{visible mixed-source matrix}
+
\text{bridge-defect matrix } \mathcal R^{\mathrm{bridge}}_{A,B}(X).
}
\tag{17}
```

So the theorem pressure shifts toward killing or absorbing the matrix shadow
defect, not only estimating visible mixed packets one-by-one.

### (iv) The matrix object is now more natural than the diagonal tower

Because the carrier heat law is global on the spectral side, the cross-rung
matrix is the natural shadow object.

Diagonal energies are recovered by setting `A=B`.
But the non-diagonal entries are no longer side curiosities; they are the
actual visible matrix face of the carrier heat dissipation law.

## 6. Short verdict

Under the YM-heat shadow bridge, the new cross-rung matrix tower is:

```math
\boxed{
\frac{d}{dt}K_{A,B}
+
2\nu\langle \nabla J_A,\nabla J_B\rangle
=
-\langle \widetilde T_A,J_B\rangle
-\langle J_A,\widetilde T_B\rangle
+
\mathcal R^{\mathrm{bridge}}_{A,B}(X).
}
\tag{18}
```

This is the precise upgraded object:

- the old visible matrix law is retained,
- but it is now re-read as the commutative shadow of a carrier heat matrix law,
- and the exact new burden is the bridge-defect matrix
  `\mathcal R^{\mathrm{bridge}}_{A,B}(X)`.

## Source anchors

- [mixed-jet-cross-rung-pairing-matrix.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-cross-rung-pairing-matrix.md)
- [tower-rewrite-under-ym-heat-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tower-rewrite-under-ym-heat-shadow-bridge.md)
- [ym-heat-to-torus-heat-to-classical-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md)
