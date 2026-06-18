# Uniform Local Hs Bootstrap From Whole-Space Shell-Tail Control

## Statement

Assume the localized whole-space shell-tail theorem on `B_{2R}` over `[0,T]`:

```math
\sup_{t\le T}E_{N,2R}(t)+\int_0^TD_{N,2R}(t)dt\le \rho.
```

Fix `s>5/2`, and let `k` be an integer with `k>=s`.  Assume the pressure-tail theorem and the
localized shell-tail theorem supply the following exact forcing package for the
cutoff supported in `B_{2R}`:

```math
M_{m,R}:=
\int_0^T\Big(
  \|\nabla^m\mathcal N_R(t)\|_{L^2(B_{2R})}^2
 +\|\nabla^{m+1}p_R(t)\|_{L^2(B_{2R})}^2
 +\|\mathcal C_{m,R}(t)\|_{L^2(B_{2R})}^2
\Big)\,dt <\infty
```

for every `0<=m<=k`.  Then

```math
\sup_{t\le T}\|u(t)\|_{H^s(B_R)}<\infty.
```

The same estimate is uniform for expanding periodic approximants once the
shell-tail, pressure-tail, commutator, and low-mode data give
`sup_n M_{m,R}^{(n)}<\infty` for every `m<=k`.

## Proof

Choose a cutoff `chi` equal to one on `B_R` and supported in `B_{2R}`. Split

```math
\chi u=P_{<N}(\chi u)+P_{\ge N}(\chi u).
```

The high part is controlled by the shell-tail theorem. In particular,

```math
\sup_{t\le T}\|P_{\ge N}(\chi u)(t)\|_{H^1}^2
+\int_0^T\|P_{\ge N}(\chi u)(t)\|_{H^2}^2dt<\infty.
```

The low part has finitely many modes below `N`.  On the fixed ball, the
localized equation gives a parabolic system.  Its low-mode control is not a
separate scale estimate: it is one input in the finite quantities `M_{m,R}` and
in the initial localized Sobolev norm.

For higher derivatives, differentiate the localized equation:

```math
\partial_t\nabla^m(\chi u)-\nu\Delta\nabla^m(\chi u)
=
\nabla^m\mathcal N_R+
\nabla^{m+1}p_R+
\mathcal C_{m,R},
```

where `mathcal N_R` is the localized nonlinearity and `mathcal C_{m,R}` contains
cutoff commutators supported in `B_{2R}\setminus B_R`.  The proof spends exactly
the finiteness of `M_{m,R}`; it does not get to replace the nonlinear,
pressure, or commutator terms by the words "lower order" or "standard local
estimate."

Put `w_m=\nabla^m(\chi u)`.  Multiplying the localized equation by `w_m`,
integrating by parts, and applying Cauchy--Young gives the exact estimate

```math
{d\over dt}\|w_m(t)\|_2^2
 + \nu\|\nabla w_m(t)\|_2^2
\le
C_{m,R,\nu}\|w_m(t)\|_2^2
+C_{m,R,\nu}\Big(
  \|\nabla^m\mathcal N_R(t)\|_2^2
 +\|\nabla^{m+1}p_R(t)\|_2^2
 +\|\mathcal C_{m,R}(t)\|_2^2
\Big).
```

Gronwall therefore gives, for every `0<=m<=k`,

```math
\sup_{0\le t\le T}\|w_m(t)\|_2^2
+\nu\int_0^T\|\nabla w_m(t)\|_2^2\,dt
\le
C_{m,R,\nu,T}\Big(\|w_m(0)\|_2^2+M_{m,R}\Big).
```

Induction over `m<=k`, followed by the embedding `H^k(B_R)\hookrightarrow
H^s(B_R)`, yields

```math
\sup_{t\le T}\|u(t)\|_{H^s(B_R)}<\infty.
```

## Consequence

The old proof phrase "controlled by lower-order bounds and local
Calderon-Zygmund/Schauder estimates" is replaced by the exact forcing package
`M_{m,R}` and the displayed localized energy inequality.  Downstream uses may
cite this local `H^s` bootstrap only after they have supplied the nonlinear,
pressure, commutator, and low-mode pieces of `M_{m,R}`; otherwise the remaining
burden is a local concentration/pressure-tail theorem, not a completed
bootstrap.

## Boundary

This theorem is local in space. The exhaustion theorem supplies the passage from local estimates and exterior tightness to a global whole-space solution.
