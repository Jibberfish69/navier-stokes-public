# Superlinear Phi_s Structural Repair Target

## Result

The superlinear growth in

```math
E'(t)+c\Xi(t)\le C\Phi_s(E(t))
```

comes from the lifted same-rung transport commutator.

In model notation, applying `H_D^s` derivatives to the carrier transport term gives a term of the form

```math
\langle \Lambda_D^s N_D(X),\Lambda_D^s X\rangle.
```

The skew transport part cancels at top order, but the commutator remains:

```math
\langle [\Lambda_D^s, X\cdot\nabla_D]X,\Lambda_D^s X\rangle.
```

Kato-Ponce/tame estimates give

```math
|\langle [\Lambda_D^s, X\cdot\nabla_D]X,\Lambda_D^s X\rangle|
\le C\|\nabla_DX\|_{L^\infty}\|X\|_{H_D^s}^2+	ext{lower terms}.
```

On the current lifted surface,

```math
\|\nabla_DX\|_{L^\infty}\lesssim E(t)^{1/2}.
```

Therefore

```math
E'(t)\lesssim E(t)^{3/2}+E(t)+1.
```

This is the exact source of the non-Osgood `Phi_s`.

## Required repair theorem

The route needs a replacement for

```math
\|\nabla_DX\|_{L^\infty}\lesssim E^{1/2}.
```

Any one of the following repairs is sufficient.

### Repair A: integrable coefficient form

Prove

```math
\|\nabla_DX(t)\|_{L^\infty}\le a(t),
\qquad a\in L^1(0,T).
```

Then

```math
E'(t)+c\Xi(t)\le C a(t)E(t)+C(1+E(t)),
```

which closes by Gronwall.

### Repair B: viscous-scale coherent coefficient form

Prove on the selected persistent support that

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_{L^\infty}\le c\nu2^{2j}
```

with exported remainders absorbed. This is the carrier low-mode strain theorem and feeds the HFG route directly.

### Repair C: normalized coherent block

Introduce a readout-preserving normalization `\mathcal N_j` of the selected coherent block such that

```math
\|\nabla_D\mathcal N_j\mathbb S_D(j)\mathbb H_DX\|_{L^\infty}\le c\nu2^{2j}
```

and prove that the normalization commutes with the classical readout up to lower-order leakage.

## Exact next theorem target

The shortest structural target is Repair B:

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_{L^\infty}\le c\nu2^{2j}
```

with a proof from persistent-support transport rather than from the lifted energy size. That theorem eliminates the same-rung coefficient causing `Phi_s(E)\sim E^{3/2}`.

## Boundary

The current lifted carrier package identifies the obstruction precisely. It does not remove it. Removing it requires a coefficient theorem or a readout-preserving normalization theorem.