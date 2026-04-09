# Paired Carrier Inequality

## Purpose

This note records the clean stronger sufficient theorem for the paired
kernelized carrier.

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
```

```math
\mathcal D_k^\uparrow(t):=
\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t),
```

and

```math
\mathcal C_N^\sigma(t):=
\sum_{k>N+M}
2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}\,\mathcal D_k^\uparrow(t).
```

The paired carrier theorem wanted downstream is

```math
\textbf{(PC)}
\qquad
\int_0^T \mathcal C_N^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

## Clean Sufficient Theorem

The clean one-line sufficient theorem is:

```math
\textbf{(PCI}^\sharp\textbf{)}
\qquad
\int_0^T\sum_{k>N+M}
\Big(
2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2
+
2^{k}\big(\mathcal D_k^\uparrow(t)\big)^2
\Big)\,dt
\le
C_*2^{-2\delta N}.
```

Pointwise in `(k,t)`, weighted Young gives

```math
2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}\,\mathcal D_k^\uparrow(t)
\le
\frac12\,2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2
+
\frac12\,2^{k}\big(\mathcal D_k^\uparrow(t)\big)^2.
```

Summing over `k>N+M` and integrating in time yields

```math
\int_0^T \mathcal C_N^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

So `(PCI^\sharp)` implies `(PC)`.

## Split Version

Equivalently, one may ask for the pair

```math
\textbf{(PCI}_1^\sharp\textbf{)}
\qquad
\int_0^T\sum_{k>N+M}2^{2k}\|\Delta_k u(t)\|_{L_x^2}^2\,dt
\le
C_*2^{-2\delta N},
```

and

```math
\textbf{(PCI}_2^\sharp\textbf{)}
\qquad
\int_0^T\sum_{k>N+M}2^{k}\big(\mathcal D_k^\uparrow(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
```

Then AM-GM gives the same conclusion.

## Exact Position In The Route

The kernelized lifted-band quantity is

```math
\mathcal M_N^\sigma(t):=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-\sigma(j-k)}\,2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}\,D_j(t).
```

Swapping the order of summation gives

```math
\mathcal M_N^\sigma(t)=\mathcal C_N^\sigma(t).
```

So the exact implication stack is

```math
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(PC)}
\Longrightarrow
\text{(MSI)}
\Longrightarrow
\text{lifted remainder closure}.
```

## Relation To UTKD

`(PCI^\sharp)` is stronger than the minimal route:

- `(PCI_2^\sharp)` is exactly `(UTKD^\sharp)`;
- `(PCI_1^\sharp)` asks the `L_t^2H_x^1` tail itself to decay at scale
  `2^{-2\delta N}`, rather than merely using its finiteness.

So `(PCI^\sharp)` is cleaner as a theorem package, but stronger than the exact theorem
currently needed.

## Honest Boundary

This note does not prove `(PCI^\sharp)`.

What it contributes is a theorem-grade sufficient package matched to the exact
coupled carrier, with the reduction to `(PC)` accomplished entirely by
pointwise weighted Young.
