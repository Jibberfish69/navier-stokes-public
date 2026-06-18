# Scale Kernelized Lifted-Band Reduction Lemma

## Purpose

This note tests the proposed upstream repair route for the last open packet by
working directly on the **scale-side** lifted high-side remainder. The question
is whether the current shell algebra already produces any genuine off-diagonal
gain in the lifted band

```math
N+M<k<j-4.
```

The answer is yes, but only on the natural scale-side carrier with one fewer
high derivative than the gradient packet.

## Scale-Side Lifted Packet

For the approximation family `u^{(n)}` and `j\ge N`, recall

```math
\mathcal{T}^{lift}_{j,n}
:=
\Delta_j\big((((S_{j-4}-S_{N+M})u^{(n)})\cdot\nabla)\Delta_j u^{(n)}\big)
+
\Delta_j\big((\Delta_j u^{(n)}\cdot\nabla)((S_{j-4}-S_{N+M})u^{(n)})\big).
```

Write

```math
b_j^{(n)}:= (S_{j-4}-S_{N+M})u^{(n)}
=
\sum_{N+M<k<j-4}\Delta_k u^{(n)}.
```

Define the scale-side kernelized lifted-band carrier

```math
\mathfrak K_N^{scale}[u^{(n)}](t)
:=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}(t)\|_{L^2_x}\,
\|\Delta_j u^{(n)}(t)\|_{L^2_x}.
```

The dyadic Bernstein constants `c_{\nabla},C_{\nabla}>0` satisfy

```math
c_{\nabla}2^j\|\Delta_j u^{(n)}\|_{L^2_x}
\le
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}
\le
C_{\nabla}2^j\|\Delta_j u^{(n)}\|_{L^2_x}.
```

Thus the following shell sum is an explicitly constant-equivalent version of
`\mathfrak K_N^{scale}`:

```math
K_{N,dy}^{scale}[u^{(n)}](t)
:=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
2^j\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2.
```

It obeys

```math
c_{\nabla}K_{N,dy}^{scale}[u^{(n)}](t)
\le
\mathfrak K_N^{scale}[u^{(n)}](t)
\le
C_{\nabla}K_{N,dy}^{scale}[u^{(n)}](t).
```

## Lemma Statement

For every fixed collar width `M\ge 4`,

```math
\sum_{j\ge N}
\left|
\left\langle \mathcal{T}^{lift}_{j,n},\Delta_j u^{(n)}\right\rangle
\right|
\le
C_{K,M}
\mathfrak K_N^{scale}[u^{(n)}](t)
```

for almost every `t`.

So the current scale-side shell algebra does produce a genuine summable gap
kernel `2^{-(j-k)}` on the lifted band.

## Proof

Fix `j\ge N`. Split `\mathcal{T}^{lift}_{j,n}` into low-high and high-low
pieces shell by shell in `k`:

```math
\mathcal{T}^{lift}_{j,n}
=
\sum_{N+M<k<j-4}
\Delta_j\big((\Delta_k u^{(n)}\cdot\nabla)\widetilde\Delta_j u^{(n)}\big)
+
\sum_{N+M<k<j-4}
\Delta_j\big((\widetilde\Delta_j u^{(n)}\cdot\nabla)\Delta_k u^{(n)}\big),
```

where `\widetilde\Delta_j` denotes the usual finite `j`-collar.

### Low-high term

Because `\nabla\cdot \Delta_k u^{(n)}=0`, the principal transport part cancels:

```math
\langle \Delta_k u^{(n)}\cdot\nabla \Delta_j u^{(n)},\Delta_j u^{(n)}\rangle=0.
```

So only the commutator remains:

```math
\left\langle
[\Delta_j,\Delta_k u^{(n)}\cdot\nabla]\widetilde\Delta_j u^{(n)},
\Delta_j u^{(n)}
\right\rangle.
```

The kernel commutator estimate, using the cancellation of the `\Delta_j`
kernel and the gap `k<j`, gives

```math
\|[\Delta_j,\Delta_k u^{(n)}\cdot\nabla]\widetilde\Delta_j u^{(n)}\|_{L^2_x}
\le
C_{comm}
2^{-j}\|\nabla \Delta_k u^{(n)}\|_{L^\infty_x}\,
\|\nabla \widetilde\Delta_j u^{(n)}\|_{L^2_x}.
```

Bernstein yields

```math
\|\nabla \Delta_k u^{(n)}\|_{L^\infty_x}
\le
C_B
2^{5k/2}\|\Delta_k u^{(n)}\|_{L^2_x}
=
C_B\,2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,2^j.
```

Hence

```math
\|[\Delta_j,\Delta_k u^{(n)}\cdot\nabla]\widetilde\Delta_j u^{(n)}\|_{L^2_x}
\le
C_{lh}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}.
```

Pairing with `\Delta_j u^{(n)}` gives

```math
\left|
\left\langle
[\Delta_j,\Delta_k u^{(n)}\cdot\nabla]\widetilde\Delta_j u^{(n)},
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C_{lh}'
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

### High-low term

For the symmetric term,

```math
\left|
\left\langle
\Delta_j\big((\widetilde\Delta_j u^{(n)}\cdot\nabla)\Delta_k u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C_{hl}
\|\nabla\Delta_k u^{(n)}\|_{L^\infty_x}\,
\|\widetilde\Delta_j u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

Using the same Bernstein bound on the `k` shell and
`c_{\nabla}2^j\|\Delta_j u^{(n)}\|_{L^2_x}
\le\|\nabla \Delta_j u^{(n)}\|_{L^2_x}`,

```math
\left|
\left\langle
\Delta_j\big((\widetilde\Delta_j u^{(n)}\cdot\nabla)\Delta_k u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C_{hl}'
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

### Summation

Summing over `N+M<k<j-4` and then over `j\ge N` proves

```math
\sum_{j\ge N}
\left|
\left\langle \mathcal{T}^{lift}_{j,n},\Delta_j u^{(n)}\right\rangle
\right|
\le
C_{K,M}
\mathfrak K_N^{scale}[u^{(n)}](t).
```

This is the claimed kernelized reduction.

## Consequence

The current scale-side packet algebra does contain a real off-diagonal gain for
the lifted band. What it gives is the kernelized **scale-side** carrier

```math
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x},
```

not the stronger gradient-side carrier with an extra high derivative.

So the theorem question becomes:

```math
\text{can Body `1` prove an integrated barrier for } \mathfrak K_N^{scale}[u^{(n)}] ?
```

## Honest Boundary

This note proves only the support-level reduction.

- It does **not** prove the integrated leakage theorem.
- It does **not** show that the scale-side kernelized carrier automatically
  upgrades to the gradient-side lifted packet.
- It does show that the proposed upstream repair is not empty: a summable
  `j-k` kernel really is present on the scale-side lifted band once the packet
  is written at exact shell level.
