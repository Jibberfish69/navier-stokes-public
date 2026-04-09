# NS Carrier Axiom Sheet

## Status

Certification-only reference surface. This note records the exact hypotheses
needed to verify the projected NS route from first principles. It does not
assert any new theorem beyond the existing lane closure notes.

The concrete classical realization of these hypotheses is recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

## Carrier Surface

Fix a complex Hilbert space

```text
H
```

with inner product `\langle \cdot,\cdot\rangle_H`.

## Axiom A1. Carrier operator

`D` is a densely defined self-adjoint operator on `H`.

## Axiom A2. First-order carrier derivation

There is a closable derivation

```text
\nabla_D:\operatorname{Dom}(\nabla_D)\subset H\to H
```

with graph norm

```text
|X|_{H_D^1}^2:=|X|_H^2+|\nabla_DX|_H^2.
```

The space `H_D^1:=\operatorname{Dom}(\nabla_D)` is complete in this norm.

## Axiom A3. Higher carrier Sobolev scale

For each integer `s\ge 1`, there is a Hilbert space `H_D^s\subset H` with
norm

```text
|X|_{H_D^s}^2 \simeq \sum_{k=0}^s |\nabla_D^{\,k}X|_H^2,
```

and continuous dense embeddings

```text
H_D^{s+1}\hookrightarrow H_D^s\hookrightarrow H.
```

## Axiom A4. Divergence operator

There is a densely defined closed operator

```text
\delta_D:\operatorname{Dom}(\delta_D)\subset H\to H
```

such that `\delta_D\nabla_D` is defined on a dense core in `H_D^1`.

## Axiom A5. Carrier Leray-Hodge projector

There is a bounded orthogonal projection

```text
\mathbb P_D:H\to H
```

with the following properties:

1. `\mathbb P_D(H_D^1)\subset H_D^1`.
2. `\mathbb P_D(H_D^s)\subset H_D^s` for all `s\ge 1`.
3. `[\mathbb P_D,\nabla_D]=0` on `H_D^1`.
4. `[\mathbb P_D,\delta_D]=0` on `\operatorname{Dom}(\delta_D)`.
5. `\operatorname{Ran}(\mathbb P_D)\subset \ker(\delta_D)`.

## Axiom A6. Carrier space

Define

```text
\mathfrak R:=\{X\in H_D^1:\ X=\mathbb P_DX,\ \delta_DX=0\}.
```

This is a closed subspace of `H_D^1`.

## Axiom A7. Carrier Laplacian and curvature splitting

```text
\Delta_{D,\omega}
=
\nabla_D^*\nabla_D + \mathcal R_{D,\omega}.
```

There is an operator

```text
\Delta_{D,\omega}:H_D^1\supset \operatorname{Dom}(\Delta_{D,\omega})\to H
```

with decomposition

```text
\Delta_{D,\omega}=\nabla_D^*\nabla_D+\mathcal R_{D,\omega},
```

where:

1. `\nabla_D^*\nabla_D` is self-adjoint on its natural domain.
2. `\mathcal R_{D,\omega}\in\mathcal B(H)`.
3. `[\mathbb P_D,\Delta_{D,\omega}]=0` on `\operatorname{Dom}(\Delta_{D,\omega})`.
4. `\Delta_{D,\omega}(H_D^1\cap \mathfrak R)\subset H\cap \mathfrak R`.

## Axiom A8. CP drift

There is a bounded linear map

```text
\delta_\omega:H\to H
```

of Lindblad form

```text
\delta_\omega(X)=\sum_{j=1}^m M_j^*XM_j-\frac12\sum_{j=1}^m(M_j^*M_jX+XM_j^*M_j),
```

with `M_j\in\mathcal B(H)`, together with:

1. `\delta_\omega(H_D^s)\subset H_D^s` for all `s\ge 1`.
2. `[\mathbb P_D,\delta_\omega]=0`.
3. `\delta_D\delta_\omega X=0` for every `X\in\mathfrak R`.

## Axiom A9. Bilinear nonlinearity

There is a bilinear map

```text
N_D:H_D^1\times H_D^1\to H_D^{-1}
```

and we write `N_D(X):=N_D(X,X)`. It satisfies:

1. Bilinear estimate:

   ```text
   |N_D(U,V)|_{H_D^{-1}}\le C_N|U|_{H_D^1}|V|_{H_D^1}.
   ```

2. Carrier preservation:

   ```text
   \mathbb P_DN_D(U,V)=N_D(U,V)
   ```

   whenever `U,V\in\mathfrak R`.

3. Divergence preservation:

   ```text
   \delta_DN_D(U,V)=0
   ```

   whenever `U,V\in\mathfrak R`.

4. Local Lipschitz consequence:

   ```text
   |N_D(X)-N_D(Y)|_{H_D^{-1}}
   \le C_N(|X|_{H_D^1}+|Y|_{H_D^1})|X-Y|_{H_D^1}.
   ```

## Axiom A10. Linear generator on the carrier

Define

```text
A_D:=\mathbb P_D\Delta_{D,\omega}+\delta_\omega
```

with domain

```text
\operatorname{Dom}(A_D):=\operatorname{Dom}(\Delta_{D,\omega})\cap \mathfrak R.
```

The restriction of `\mathbb P_D\Delta_{D,\omega}` to `\mathfrak R` is
self-adjoint on `\operatorname{Dom}(A_D)`. Hence `A_D` generates an analytic
semigroup on `\mathfrak R`.

## Axiom A11. Carrier mild formulation

For `X_0\in\mathfrak R`, the projected flow is

```text
\partial_tX+\mathbb P_DN_D(X)=A_DX,\qquad X(0)=X_0.
```

Its mild form is

```text
X(t)=e^{tA_D}X_0-\int_0^t e^{(t-s)A_D}\mathbb P_DN_D(X(s))\,ds.
```

## Axiom A12. Readout map

There is a continuous linear map

```text
\rho:H_D^1\to L^2(\mathbb R^3;\mathbb C^3)
```

such that for every `X\in\mathfrak R`,

1. `\rho(\mathbb P_DX)=\mathbb P\,\rho(X)`, where `\mathbb P` is the classical Leray projector.
2. `\rho(\delta_DX)=\nabla\cdot \rho(X)`.
3. `\rho(\nabla_DX)=\nabla\rho(X)`.
4. `\rho(\Delta_{D,\omega}X)=\Delta\rho(X)`.
5. `\rho(N_D(X))=(u\cdot\nabla)u` with `u=\rho(X)`.
6. Norm comparison holds:

   ```text
   c_0|X|_H\le |\rho(X)|_{L^2}\le C_0|X|_H,
   ```

   ```text
   c_1|\nabla_DX|_H\le |\nabla\rho(X)|_{L^2}\le C_1|\nabla_DX|_H.
   ```

## D.1 Discharge Against The Axiom Sheet

The local well-posedness statement is discharged line by line from the axioms
above.

1. Sectoriality of `\mathbb P_D\Delta_{D,\omega}` on the actual carrier domain:
   A1, A5, A7, and A10 give self-adjointness and the analytic semigroup.
2. Bounded drift:
   A8 gives the bounded CP drift on `H` and on the carrier Sobolev scale.
3. Local Lipschitz of `N_D`:
   A9 gives the bilinear estimate and hence the local Lipschitz consequence.
4. Local mild well-posedness:
   A10 and A11 give the fixed-point formulation on `\mathfrak R`.
5. Invariance of `\mathfrak R`:
   A5, A8, and A9 keep the solution in the projected carrier sector.
6. Continuation criterion:
   the `H_D^1` local theory restarts whenever the `H_D^1` norm stays bounded.

## Proof-Dependency Map

The first-principles discharge requirements are:

```text
D.1 := A1 + A2 + A4 + A5 + A7 + A8 + A9 + A10 + A11.
D.2 := A2 + A3 + A4 + A5 + A6 + A7 + A8 + A9.
D.4 := A2 + A3 + A5 + A6 + A7 + A12.
D.6 := A2 + A3 + A4 + A5 + A6 + A7 + A8 + A9.
```

## What This Sheet Does Not Claim

This sheet does not prove the axioms. It isolates the exact hypotheses that
must be available for a first-principles verification of the NS lane.
