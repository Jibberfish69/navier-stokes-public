# Persistent-Support Coherent Bound: Threshold Result

## Raw target

The requested bound was

```math
\|\mathbb S_D(j)\mathbb H_DX\|_{H_D^s}
\le c_D\nu2^{2j}.
```

## Fixed-shell obstruction

For any fixed cutoff `j`, choose a nonzero coherent mode `e` in the range of `\mathbb S_D(j)\mathbb H_D`. Set

```math
X_A:=Ae.
```

Then

```math
\|\mathbb S_D(j)\mathbb H_DX_A\|_{H_D^s}=A\|e\|_{H_D^s}.
```

The right side `c_D\nu2^{2j}` is fixed once `j` and `nu` are fixed. Taking `A` large violates the estimate. Thus the raw all-amplitude, fixed-shell theorem is false.

## Valid threshold theorem

Because `\mathbb S_D(j)` and `\mathbb H_D` are bounded projections,

```math
\|\mathbb S_D(j)\mathbb H_DX\|_{H_D^s}
\le C\|X\|_{H_D^s}.
```

Hence the viscosity-scale estimate holds on every shell satisfying

```math
2^{2j}\ge C(c_D\nu)^{-1}\|X\|_{H_D^s}.
```

Equivalently, if

```math
j\ge J_D(X):={1\over2}\log_2\left(C(c_D\nu)^{-1}\|X\|_{H_D^s}\right),
```

then

```math
\|\mathbb S_D(j)\mathbb H_DX\|_{H_D^s}
\le c_D\nu2^{2j}.
```

## Consequence

The persistent-support coherent bound is a dynamic active-shell threshold theorem. To use it as the carrier low-mode input for all active shells, the route must prove either:

```math
\sup_t\|X(t)\|_{H_D^s}<\infty
```

with a controlled threshold, or a stronger normalized persistent-support transport theorem that directly bounds the selected coherent block at the viscous scale.