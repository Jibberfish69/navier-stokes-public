# Whole-Space Pressure-Tail Theorem

## Status

Conditional pressure-tail theorem for the periodic-to-`R^3` exhaustion export.

## Setup

Let `u_n` be smooth periodic solutions on boxes of side length `L_n\to\infty`, identified with functions on the interior of the boxes. Assume local smooth convergence

```math
u_n\to u
```

on compact subsets of `R^3\times[0,T]`, and assume exterior energy tightness:

```math
\lim_{R\to\infty}\sup_n\sup_{t\le T}\int_{|x|>R}|u_n(x,t)|^2dx=0.
```

Let `p_n` be the periodic zero-mean pressure and let

```math
p=\mathcal R_i\mathcal R_j(u_i u_j)
```

be the whole-space pressure, normalized up to an additive function of time.

## Theorem `PTail.R3`

For every compact `K\subset R^3` and every finite `T`, after fixing additive time functions, the pressure gradients satisfy

```math
\nabla p_n\to \nabla p
```

locally on `K\times[0,T]` in every topology supported by the local smooth convergence. In particular, the pressure-tail term in the periodic-to-`R^3` exhaustion theorem converges to the whole-space pressure tail.

## Proof

Fix nested compact sets

```math
K\Subset B_R\Subset B_{2R}.
```

Split pressure by a cutoff `\chi_R=1` on `B_R`, supported in `B_{2R}`:

```math
p_n=p_{n,R}^{loc}+h_{n,R},
\qquad
-\Delta p_{n,R}^{loc}=\partial_i\partial_j(\chi_R u_{n,i}u_{n,j}).
```

The local source converges smoothly:

```math
\chi_R u_{n,i}u_{n,j}\to \chi_R u_i u_j
```

on `B_{2R}`. Local Calderon-Zygmund/Schauder estimates give

```math
\nabla p_{n,R}^{loc}\to \nabla p_R^{loc}
```

on `K\times[0,T]`.

The difference

```math
h_{n,R}:=p_n-p_{n,R}^{loc}
```

is harmonic on `B_R` up to the additive time normalization. Interior harmonic estimates give

```math
\|\nabla h_{n,R}\|_{C^k(K)}\le C_{K,R,k}\|h_{n,R}-c_{n,R}(t)\|_{L^1(B_R)}.
```

Representing the harmonic part by the far pressure source yields a smooth kernel against `(1-\chi_R)u_n\otimes u_n`. For `x\in K`, the kernel derivatives satisfy

```math
|\nabla_x^{k+1}K(x-y)|\le C_{K,k}|y|^{-4-k}
```

for `|y|>R`. Therefore

```math
\|\nabla^{k+1}h_{n,R}\|_{L^\infty(K)}
\le C_{K,k}R^{-4-k}\int_{|y|>R}|u_n(y,t)|^2dy.
```

By exterior tightness, the right side tends to zero uniformly in `n` as `R\to\infty`. The same estimate holds for the whole-space harmonic tail of `p`. Hence the local pressure convergence follows by first taking `n\to\infty` at fixed `R`, then `R\to\infty`.

## Conclusion

The periodic pressure gradients converge locally to the whole-space pressure gradient, and the far-field/harmonic tail is controlled by exterior energy tightness and kernel decay.

## Boundary

The theorem supplies the pressure-tail component of the exhaustion export. It consumes exterior tightness or an equivalent decay hypothesis; finite energy alone gives distributional pressure control and does not give the stated pointwise harmonic-tail convergence at all derivative levels.