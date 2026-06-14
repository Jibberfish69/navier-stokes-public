# Lifted-Band Coarse-Grained Stress-Strain Flux Inequality

## Purpose

This note proves the first genuinely coupled reduction for the live lifted-band
obstruction. The target is **not** another shellwise carrier theorem. The point
is to rewrite the lifted commutator functional as a single mesoscopic
stress-strain flux object.

The live quantity is

```math
\mathcal J_N^{lift}(t)
:=
\sum_{j\ge N}
2^{2j}
\left\langle
[\Delta_j,(S_{j-4}-S_{N+M})u(t)\cdot\nabla]\Delta_j u(t),
\Delta_j u(t)
\right\rangle.
```

The theorem below shows that `\mathcal J_N^{lift}` is controlled by one
coarse-grained stress-strain flux measure. After this reduction, the route
should no longer be read as a family of independent shell estimates.

## Setup

Fix a smooth dyadic Littlewood-Paley family. Write

```math
u_j := \Delta_j u,
\qquad
b_j := (S_{j-4}-S_{N+M})u.
```

Let `K_j` denote the kernel of `\Delta_j`. Choose a second Schwartz kernel
`\eta` such that:

1. `\widehat\eta` is supported in a fixed annulus,
2. `\widehat\eta \equiv 1` on the support of the dyadic symbol defining
   `\Delta_j`,
3. `\widehat\eta(0)=0`.

Set `\eta_j(x):=2^{3j}\eta(2^j x)`. Then for every `j`,

```math
u_j = \eta_j * u_j
=
\int_{\mathbb R^3}\eta_j(a)\,\delta_a u_j\,da,
\qquad
\delta_a f(x):=f(x-a)-f(x).
```

Define the `H^1`-level band stress density

```math
\tau_j^{H^1}[u](x,t)
:=
2^{2j}
\int_{\mathbb R^3}|\eta_j(a)|\,|\delta_a u_j(x,t)|^2\,da.
```

Because `\eta` has mean zero and reproduces the `j`-band,

```math
2^{2j}|u_j(x,t)|^2 \le C_\tau \tau_j^{H^1}[u](x,t).
```

Finally, let `\rho_j` be any fixed nonnegative unit-mass kernel adapted to
radius `2^{-j}` and define the mesoscopic strain density

```math
\Sigma_j^{meso}(x,t)
:=
(\rho_j * |\nabla b_j(\cdot,t)|)(x).
```

This is the natural strain field seen by the `j`-packet after the commutator
kernel shifts are unfolded.

## Theorem

For every classical Euclidean solution and every `N`,

```math
2^{2j}
\left|
\left\langle
[\Delta_j,b_j(t)\cdot\nabla]u_j(t),
u_j(t)
\right\rangle
\right|
\le C_{\Sigma}
\int_{\mathbb R^3}
\Sigma_j^{meso}(x,t)\,
\tau_j^{H^1}[u](x,t)\,dx
```

for each `j\ge N`. Hence

```math
|\mathcal J_N^{lift}(t)|
\le C_{\mathrm{dy}}
\Pi_N^{lift,\mathrm{dy}}(t),
```

where

```math
\Pi_N^{lift,\mathrm{dy}}(t)
:=
\sum_{j\ge N}
\int_{\mathbb R^3}
\Sigma_j^{meso}(x,t)\,
\tau_j^{H^1}[u](x,t)\,dx.
```

Equivalently, after restricting `\ell` to the dyadic window
`c_\ell2^{-j}\le \ell\le C_\ell2^{-j}` and interpolating piecewise constantly
in `\ell`,

```math
|\mathcal J_N^{lift}(t)|
\le C_{\mathrm{lift}}
\Pi_N^{lift}(t)
:=
\int_0^{c2^{-N}}
\int_{\mathbb R^3}
\Sigma_\ell^{meso}(x,t)\,
\tau_\ell^{H^1}[u](x,t)\,dx\,
\frac{d\ell}{\ell}.
```

So the coupled lifted-band route is reduced to a single coarse-grained
stress-strain flux functional.

## Proof

Fix `j\ge N` and abbreviate

```math
\mathcal C_j(t)
:=
2^{2j}
\left\langle
[\Delta_j,b_j(t)\cdot\nabla]u_j(t),
u_j(t)
\right\rangle.
```

### 1. Kernel commutator identity

Since `\nabla\cdot b_j = 0`, the transport part is skew before localization.
Writing `K_j` for the kernel of `\Delta_j`,

```math
[\Delta_j,b_j\cdot\nabla]u_j(x)
=
-\int_{\mathbb R^3}
\nabla K_j(h)\cdot\delta_h b_j(x)\,
u_j(x-h)\,dh.
```

Therefore

```math
|\mathcal C_j(t)|
\le
2^{2j}
\iint
|\nabla K_j(h)|\,
|\delta_h b_j(x,t)|\,
|u_j(x-h,t)|\,|u_j(x,t)|\,
dh\,dx.
```

### 2. Mean-value expansion of the drift increment

For every `h`,

```math
|\delta_h b_j(x,t)|
\le
|h|\int_0^1
|\nabla b_j(x-\theta h,t)|\,d\theta.
```

Insert this bound and change variables `y=x-\theta h`:

```math
|\mathcal C_j(t)|
\le
2^{2j}
\int_0^1
\iint
|\nabla K_j(h)|\,|h|\,
|\nabla b_j(y,t)|\,
|u_j(y-(1-\theta)h,t)|\,
|u_j(y+\theta h,t)|
\,dh\,dy\,d\theta.
```

### 3. Band stress controls the shifted packet amplitudes

Because `u_j=\eta_j*u_j` with `\int \eta_j =0`,

```math
u_j(z,t)
=
\int \eta_j(a)\,\delta_a u_j(z,t)\,da.
```

Jensen then gives the bandpass Poincare estimate

```math
2^{2j}|u_j(z,t)|^2
\le C_\tau
\tau_j^{H^1}[u](z,t).
```

Apply this at the shifted points `z=y-(1-\theta)h` and `z=y+\theta h`. Using
`2ab\le a^2+b^2`,

```math
2^{2j}
|u_j(y-(1-\theta)h,t)|\,|u_j(y+\theta h,t)|
\le C_\tau
\tau_j^{H^1}[u](y-(1-\theta)h,t)
+
\tau_j^{H^1}[u](y+\theta h,t).
```

### 4. The commutator is a local stress-strain flux

Substituting the previous estimate into the kernel bound yields

```math
|\mathcal C_j(t)|
\le C_C
\int
|\nabla b_j(y,t)|
\Bigg[
\int_0^1\int
|\nabla K_j(h)|\,|h|\,
\Big(
\tau_j^{H^1}[u](y-(1-\theta)h,t)
+
\tau_j^{H^1}[u](y+\theta h,t)
\Big)
\,dh\,d\theta
\Bigg]dy.
```

The inner bracket is exactly a radius-`2^{-j}` average of the band stress,
since `|\nabla K_j(h)|\,|h|` is an `L^1` kernel at that scale. After one more
change of variables, this may be rewritten as

```math
|\mathcal C_j(t)|
\le C_C'
\int_{\mathbb R^3}
(\rho_j * |\nabla b_j(\cdot,t)|)(x)\,
\tau_j^{H^1}[u](x,t)\,dx
=
\int_{\mathbb R^3}
\Sigma_j^{meso}(x,t)\,
\tau_j^{H^1}[u](x,t)\,dx.
```

That is the claimed dyadic stress-strain flux inequality.

### 5. Sum over all high scales

Summing in `j\ge N` proves

```math
|\mathcal J_N^{lift}(t)|
\le C_J
\sum_{j\ge N}
\int_{\mathbb R^3}
\Sigma_j^{meso}(x,t)\,
\tau_j^{H^1}[u](x,t)\,dx
=
\Pi_N^{lift,\mathrm{dy}}(t).
```

Passing from the dyadic sum to the scale integral `\int d\ell/\ell` gives the
continuous coarse-grained version `\Pi_N^{lift}(t)`.

This completes the reduction.

## Consequence

The live lifted-band theorem burden is no longer a shellwise carrier bound. It
is the barrier-scale control of one space-scale flux measure:

```math
\int_0^T \Pi_N^{lift}(t)\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
```

That is the coupled route in its cleanest current form. Everything weaker in
the shell notes is a positive flattening of this object.

## Honest Boundary

This note proves the correct coarse-grained reduction, not the final barrier
bound. The remaining work is to show that the measure

```math
\Sigma_\ell^{meso}(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx\,dt\,\frac{d\ell}{\ell}
```

is Carleson- or barrier-controlled on the high-frequency window
`\ell\le C_N2^{-N}`.
