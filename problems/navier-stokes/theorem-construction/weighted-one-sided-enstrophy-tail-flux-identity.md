# Weighted One-Sided Enstrophy-Tail Flux Identity

## Purpose

This note records the sharpest PDE-structure route currently known for
producing the frontier square theorem `(SDS^\sharp)`.

The weighted tail identity does two things:

- it packages the upper shells above a lower threshold into a one-sided
  enstrophy queue;
- it exposes the lifted packet as a kernelized lower-to-upper carrier after the
  weighted tail summation.

## Weighted Tail Functional

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
\Phi_j^\sigma(t):=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}E_\ell(t),
\qquad
E_\ell(t):=2^{2\ell}\|\Delta_\ell u(t)\|_{L_x^2}^2,
```

with dissipation queue

```math
\mathcal T_j^\sigma(t):=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t),
\qquad
D_\ell(t):=2^{4\ell}\|\Delta_\ell u(t)\|_{L_x^2}^2.
```

## Weighted Packet Decomposition

For each `\ell`, write the shellwise `H^1`-energy identity as

```math
\partial_t E_\ell(t)+\nu D_\ell(t)=\mathcal N_\ell(t),
```

and decompose `\mathcal N_\ell` relative to the lower threshold `j` into

```math
\mathcal N_\ell
=
\mathcal N_{\ell,\mathrm{strict}(j)}
+
\mathcal N_{\ell,\mathrm{spill}(j)}
+
\mathcal N_{\ell,\mathrm{lift}(j)}
+
\mathcal N_{\ell,\mathrm{HH}(j)}.
```

Weight by `2^{-\sigma(\ell-j)}` and sum over `\ell\ge j`. Then

```math
\partial_t \Phi_j^\sigma(t)+\nu \mathcal T_j^\sigma(t)
=
\mathcal R_j^\sigma(t),
\qquad
\mathcal R_j^\sigma
=
\mathcal R_{j,\mathrm{strict}}^\sigma
+
\mathcal R_{j,\mathrm{spill}}^\sigma
+
\mathcal R_{j,\mathrm{lift}}^\sigma
+
\mathcal R_{j,\mathrm{HH}}^\sigma.
\tag{1}
```

Here

```math
\mathcal R_{j,\bullet}^\sigma(t):=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}\mathcal N_{\ell,\bullet(j)}(t).
```

## Controlled Weighted Packets

Define

```math
A_j(t):=\sum_{k\le j-4}2^{5k/2}\|\Delta_k u(t)\|_{L_x^2},
\qquad
B_j(t):=2^{3j}\sum_{m=j-M}^{j+M}\|\Delta_m u(t)\|_{L_x^2}^2.
```

The shellwise strict and spill estimates lift to the weighted tail as

```math
|\mathcal R_{j,\mathrm{strict}}^\sigma(t)|
\le
C\,A_j(t)\,\Phi_j^\sigma(t)+\varepsilon \nu \mathcal T_j^\sigma(t),
\tag{2}
```

```math
|\mathcal R_{j,\mathrm{spill}}^\sigma(t)|
\le
C\,B_j(t)\,\Phi_j^\sigma(t)+\varepsilon \nu \mathcal T_j^\sigma(t).
\tag{3}
```

The weighted genuine high-high piece satisfies

```math
|\mathcal R_{j,\mathrm{HH}}^\sigma(t)|
\le
\varepsilon \nu \mathcal T_j^\sigma(t)+C_*2^{-2\delta j}.
\tag{4}
```

So the decisive new content lies entirely in the lifted term.

## Exact Lifted-Term Gain

Set

```math
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_{L_x^2}.
```

The true lifted geometry relative to the lower threshold `j` is

```math
j+M<k<\ell-4.
```

Accordingly,

```math
\mathcal R_{j,\mathrm{lift}}^\sigma(t)
=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}
\sum_{j+M<k<\ell-4}
a_k(t)\,D_\ell(t).
\tag{5}
```

Swapping the `(k,\ell)` sums gives

```math
\mathcal R_{j,\mathrm{lift}}^\sigma(t)
=
\sum_{k>j+M}
2^{-\sigma(k-j)}\,a_k(t)\,
\underbrace{\Big(\sum_{\ell\ge k+4}2^{-\sigma(\ell-k)}D_\ell(t)\Big)}_{=:\mathcal D_k^\uparrow(t)}.
\tag{6}
```

So the weighted tail summation already creates a genuine lower-to-upper kernel
`2^{-\sigma(k-j)}`.

## What The Square-Theorem Weight Does

Now sum `(6)` in `j` with the square-theorem weight `2^j`. Then

```math
\sum_{j>N+M+4}2^j\,\mathcal R_{j,\mathrm{lift}}^\sigma(t)
=
\sum_{k>N+M}
2^k\,a_k(t)\,\mathcal D_k^\uparrow(t).
\tag{7}
```

So the weighted one-sided flux route does expose a real one-sided cancellation
structure, but the residual theorem content is the control of the paired
carrier with weight `2^k`.

## Frontier Theorem Shape

The clean theorem target above the packet stack is still

```math
\textbf{(SDS}^\sharp\textbf{)}
\qquad
\int_0^T
\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
```

The exact theorem content now exposed by the weighted lifted term is the
paired-carrier control

```math
\int_0^T
\sum_{k>N+M}
2^k\,a_k(t)\,\mathcal D_k^\uparrow(t)\,dt
\le
C_*2^{-2\delta N},
```

or any stronger sufficient coercive square theorem from which it follows.

## Equivalent Coercive Forms

The missing step above `(SDS^\sharp)` can be stated in three equivalent
languages.

First, the transport-loss form:

```math
\mathcal R_{j,\mathrm{lift}}^\sigma
\le
\Lambda_{j\to\uparrow}^\sigma\,\mathcal T_j^\sigma,
\qquad
\Lambda_{j\to\uparrow}^\sigma
\le
\varepsilon\,2^j\mathcal T_j^\sigma
+ \partial_t\Theta_j^\sigma
+ \mathrm{err}_j^\sigma.
```

Second, the entropy / weighted-enstrophy form:

```math
\mathcal H_j^\sigma:=\Phi_j^\sigma+\Psi_j^\sigma,
\qquad
\partial_t \mathcal H_j^\sigma
+ c\,2^j\big(\mathcal T_j^\sigma\big)^2
\le
\mathrm{Err}_j^\sigma.
```

Third, the spectral-locality / anti-resonance form:

```math
\mathfrak L_j^\sigma[u]
:=
\sum_{k>j+M}2^{-\sigma(k-j)}\,a_k\,\mathcal D_k^\uparrow,
\qquad
\mathfrak L_j^\sigma[u]
\le
\varepsilon\,2^j\big(\mathcal T_j^\sigma\big)^2
+ \partial_t\Psi_j^\sigma
+ \mathrm{Err}_j^\sigma.
```

All three are equivalent on the current route because
`\mathfrak L_j^\sigma[u]` and `\mathcal R_{j,\mathrm{lift}}^\sigma` are the same
routed expression, and each version says the same thing: the lifted packet is coercive against the square
of the one-sided dissipation queue after a tail correction is added.

The entropy statement is the preferred master formulation because it is the
closest to the PDE identity and yields `(SDS^\sharp)` directly after summing
in `j` and integrating in time.

## Position In The Route

The parent-theorem chain is now

```math
\text{weighted one-sided enstrophy-tail flux identity}
\Longrightarrow
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}
\Longrightarrow
\text{(UTKD}^\sharp\text{)}
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}.
```

The new audit `weighted-tail-flux-lifted-j-sum-audit.md` records the exact
packet-by-packet derivation of `(6)` and `(7)`.

## Honest Boundary

This note does not derive the weighted flux identity or prove `(SDS^\sharp)`.

What it fixes is the exact structural place where new theorem content must
enter: after weighted tail summation, the lifted packet becomes a kernelized
lower-to-upper carrier, and after the `2^j` summation that carrier picks up the
residual weight `2^k`.
