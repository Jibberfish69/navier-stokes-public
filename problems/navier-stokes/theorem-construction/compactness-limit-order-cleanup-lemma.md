# Compactness Limit-Order Cleanup Lemma

## Purpose

This note isolates the order of limits in the nonlinear compactness bridge so
the passage from low-mode compactness plus high-mode smallness to tensor closure
is explicit rather than implicit.

## Fixed Surface

Let `u^{(n)}` be a classical approximation family on `[0,T)\times\mathbb R^3`
with

```math
\sup_n \|u^{(n)}\|_{L_t^\infty L_x^2}<\infty,
\qquad
\sup_n \|u^{(n)}\|_{L_t^2 H_x^1}<\infty,
\qquad
\sup_n \|\partial_t u^{(n)}\|_{L_t^2 H_x^{-1}}<\infty,
```

and assume the scale barrier

```math
\sup_n\int_0^T\|P_{\ge N}u^{(n)}(t)\|_{L_x^2}^2\,dt
\le
C_*2^{-2\delta N}
\qquad (N\ge N_*).
```

## Lemma Statement

There exists a subsequence, still denoted `u^{(n)}`, and a limit field `u`
such that for every `R<\infty`,

```math
u^{(n)}\to u
\quad\text{strongly in }L^2([0,T];L^2(B_R)),
```

and consequently

```math
u^{(n)}\otimes u^{(n)}\to u\otimes u
\quad\text{in }\mathcal D'((0,T)\times\mathbb R^3).
```

The order of limits is:

1. fix `N`,
2. compactify `P_{<N}u^{(n)}` on `B_R`,
3. use the scale barrier to make `P_{\ge N}u^{(n)}` uniformly small,
4. send `N\to\infty`,
5. pass to the tensor limit against compactly supported test fields.

## Proof

Fix `R<\infty`. For each dyadic cutoff `N`, decompose

```math
u^{(n)}=P_{<N}u^{(n)}+P_{\ge N}u^{(n)}.
```

For fixed `N`, Aubin--Lions applies to `P_{<N}u^{(n)}` on `B_R` because the
fixed low-frequency projector preserves the uniform `L_t^2H_x^1(B_R)` and
`L_t^2H_x^{-1}(B_R)` bounds. Hence there exists a subsequence such that

```math
P_{<N}u^{(n)}\to v_N
\quad\text{strongly in }L^2([0,T];L^2(B_R)).
```

Diagonalizing over `N=N_*,N_*+1,\dots`, after passing to a single subsequence
this strong convergence holds for every fixed `N\ge N_*`.

For the complementary block,

```math
\sup_n\int_0^T\|P_{\ge N}u^{(n)}(t)\|_{L^2(B_R)}^2\,dt
\le
\sup_n\int_0^T\|P_{\ge N}u^{(n)}(t)\|_{L_x^2}^2\,dt
\le
C_*2^{-2\delta N},
```

so the high modes are uniformly small in `L_t^2L_x^2(B_R)` once `N` is large.

Now let `\varepsilon>0`. Choose `N\ge N_*` so large that
`C_*2^{-2\delta N}<\varepsilon^2/16`. For this fixed `N`, the low-mode strong
convergence implies that there exists `n_0` such that for all `m,n\ge n_0`,

```math
\|P_{<N}u^{(n)}-P_{<N}u^{(m)}\|_{L_t^2L_x^2(B_R)}<\frac{\varepsilon}{2}.
```

Using the decomposition `u^{(n)}-u^{(m)}=(P_{<N}u^{(n)}-P_{<N}u^{(m)})+
(P_{\ge N}u^{(n)}-P_{\ge N}u^{(m)})`, we obtain

```math
\|u^{(n)}-u^{(m)}\|_{L_t^2L_x^2(B_R)}
\le
\|P_{<N}u^{(n)}-P_{<N}u^{(m)}\|_{L_t^2L_x^2(B_R)}
+
\|P_{\ge N}u^{(n)}\|_{L_t^2L_x^2(B_R)}
+
\|P_{\ge N}u^{(m)}\|_{L_t^2L_x^2(B_R)}.
```

The two high-mode terms are each at most `\varepsilon/4` by the tail bound, so
`u^{(n)}` is Cauchy in `L^2([0,T];L^2(B_R))`. Since that space is complete,
there exists `u_R` such that

```math
u^{(n)}\to u_R
\quad\text{strongly in }L^2([0,T];L^2(B_R)).
```

Compatibility for nested balls gives a single field `u` on
`(0,T)\times\mathbb R^3` satisfying the same strong local `L^2` convergence.

To pass to the tensor limit, let
`\varphi\in C_c^\infty((0,T)\times\mathbb R^3;\mathbb R^{3\times 3})`, and
choose `R` so that `\operatorname{supp}\varphi\subset (0,T)\times B_R`. Then

```math
\int_0^T\!\!\int_{\mathbb R^3}
\big(u^{(n)}\otimes u^{(n)}-u\otimes u\big):\varphi\,dx\,dt
```

splits as

```math
\int_0^T\!\!\int_{B_R}
\big(u^{(n)}-u\big)\otimes u^{(n)}:\varphi\,dx\,dt
+
\int_0^T\!\!\int_{B_R}
u\otimes\big(u^{(n)}-u\big):\varphi\,dx\,dt.
```

The strong `L_t^2L_x^2(B_R)` convergence of `u^{(n)}` to `u` and the uniform
`L_t^\infty L_x^2` bound imply that both terms converge to zero. Therefore

```math
u^{(n)}\otimes u^{(n)}\to u\otimes u
\quad\text{in }\mathcal D'((0,T)\times\mathbb R^3).
```

This is exactly the compactness architecture used in Proposition `5.1`, now
written with the order of limits made explicit.
