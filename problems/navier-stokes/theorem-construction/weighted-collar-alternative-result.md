# Weighted Collar Alternative Result

## Target

This note tests whether the collar estimate can consume the weighted coefficient

```math
\|w_j u_{coh}\|_{L^\infty}
\tag{WCA.1}
```

directly.

The original collar commutator is

```math
C_{i,j}
=
\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}.
\tag{WCA.2}
```

## Weighted decomposition

On the active support, decompose the coherent velocity coefficient as

```math
u_{visc}:=\nu
\tag{WCA.visc}
```

and use the canonical velocity split

```math
\boxed{
 u_{coh,i}=w_j u_{coh,i}+(1-w_j)u_{coh,i}.
}
\tag{WCA.3}
```

Here `u_{coh}` is velocity and `\nu` is viscosity.

The commutator splits as

```math
C_{i,j}=C^{w}_{i,j}+C^{res}_{i,j},
\tag{WCA.4}
```

where

```math
C^{w}_{i,j}
:=
\widetilde Q_i[I-P_{\le j},(w_ju_{coh,i})\partial_i]P_{\le j}v_{coh},
\tag{WCA.5}
```

and

```math
C^{res}_{i,j}
:=
\widetilde Q_i[I-P_{\le j},((1-w_j)u_{coh,i})\partial_i]P_{\le j}v_{coh}.
\tag{WCA.6}
```

## Weighted principal estimate

The harmonic-analysis collar estimate applies to the weighted coefficient:

```math
\|\nabla C^{w}_{i,j}\|_\infty
\le
C\left(
\|\nabla(w_ju_{coh})\|_\infty
+2^j\|P_{>j-M}(w_ju_{coh})\|_\infty
\right)
\|v_{coh}\|_{W^{1,\infty}}.
\tag{WCA.7}
```

Thus a weighted collar route needs

```math
\|\nabla(w_ju_{coh})\|_\infty
+2^j\|P_{>j-M}(w_ju_{coh})\|_\infty
\le
c_w\nu2^{2j}+C_w\Phi(\mathcal E_D(X)).
\tag{WCA.8}
```

Under readout Sobolev comparison, `WCA.8` gives absorption for `C^w_{i,j}`.

## Residual term

The residual coefficient is

```math
a^{res}:=(1-w_j)u_{coh}.
\tag{WCA.9}
```

It contributes

```math
\|\nabla C^{res}_{i,j}\|_\infty
\le
C\left(
\|\nabla a^{res}\|_\infty
+2^j\|P_{>j-M}a^{res}\|_\infty
\right)
\|v_{coh}\|_{W^{1,\infty}}.
\tag{WCA.10}
```

The weighted collar alternative succeeds when the residual coefficient satisfies

```math
\|\nabla((1-w_j)u_{coh})\|_\infty
+2^j\|P_{>j-M}((1-w_j)u_{coh})\|_\infty
\le
C\Phi(\mathcal E_D(X)).
\tag{WCA.11}
```

## Plateau corollary

If the active localizer obeys

```math
1-w_j=0
\qquad\text{on the support of }\widetilde Q_iP_{\le j}v_{coh}
\tag{WCA.12}
```

up to a collar region controlled by the residual ledger, then `C^{res}_{i,j}`
satisfies the required collar residual bound. In that case the weighted route
consumes `w_ju_{coh}` directly through `WCA.8`.

## Boundary

The weighted collar alternative replaces the original collar coefficient by a
weighted principal coefficient plus a residual. The residual can be discarded
only under a plateau or collar-smallness theorem:

```text
(1-w_j)u_coh satisfies the collar residual bound on the collar support.
```

Weighting transfers the burden from a positive lower envelope to a residual collar-smallness statement.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-weight-lower-envelope-result.md`
- `problems/navier-stokes/theorem-construction/weighted-direct-speed-mechanism-assessment-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-smallness-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
