# Full Gradient Commutator Estimate From Repaired Packet Split

## Status

Theorem-facing reassembly of the gradient commutator route after the repaired high-high absorption and the threshold-spill collar estimate.

## Definitions

For `j\ge N`, write the frequency-localized gradient test as

```math
\left\langle \Delta_j((u\cdot\nabla)u),-\Delta\Delta_j u\right\rangle
=LH_j+HL_j+SP_j+HH_j.
```

Set

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
```

Let

```math
\Lambda_N(t):=\|\nabla S_{N-4}u(t)\|_\infty,
```

```math
\Theta_N^\sharp(t):=\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2,
```

and

```math
\widetilde\Lambda_N^\sharp(t):=\Lambda_N(t)+\Theta_N^\sharp(t).
```

## Theorem `GC.A`

For every `\eta>0`, after choosing the high-side threshold large enough for the genuine high-high absorption, one has

```math
\sum_{j\ge N}\left|\left\langle \Delta_j((u\cdot\nabla)u),-\Delta\Delta_j u\right\rangle\right|
\le
C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t)E_N(t)
+\eta\nu D_N(t)
+C_*2^{-2\delta N}.
```

The summable reserve may be set to zero when the high-high and spill estimates are used without reserve terms.

## Proof

The strict low-mode estimate gives

```math
\sum_{j\ge N}|LH_j|+\sum_{j\ge N}|HL_j|
\le
C\Lambda_N(t)E_N(t).
```

The threshold-spill estimate gives, with `\varepsilon=\eta/4`,

```math
\sum_{j\ge N}|SP_j|
\le
C_{\eta,M,\nu}\Theta_N^\sharp(t)E_N(t)
+\frac{\eta\nu}{4}D_N(t).
```

The repaired high-high estimate gives, for `N\ge N_*`,

```math
\sum_{j\ge N}|HH_j|
\le
\frac{\eta\nu}{2}D_N(t)+C_*2^{-2\delta N}.
```

Adding the three estimates and using

```math
\Lambda_N+\Theta_N^\sharp=\widetilde\Lambda_N^\sharp
```

yields

```math
\sum_{j\ge N}\left|\left\langle \Delta_j((u\cdot\nabla)u),-\Delta\Delta_j u\right\rangle\right|
\le
C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp E_N
+\frac{3\eta\nu}{4}D_N
+C_*2^{-2\delta N}.
```

Replacing `\eta` by a smaller parameter gives the stated form.

## Consequence

The high-frequency gradient tail obeys the differential inequality

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t)E_N(t)
+C_*2^{-2\delta N}.
```

This is the gradient commutator estimate needed for the shell/tail suppression theorem.

## Boundary

The coefficient `\widetilde\Lambda_N^\sharp` is fixed-threshold admissible. Any downstream argument that sends `N\to\infty` must use a scheduler or a uniform coefficient lemma. This note supplies the reassembled commutator estimate itself.