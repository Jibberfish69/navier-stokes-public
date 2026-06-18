# Amplitude-Speed Gate Supplier Rollup Result

## Target

This note collects the supplier branches for the coherent amplitude gate

```math
\|u_{coh}\|_{L^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C2^{-j}\Phi_*(\mathcal E_D(X)).
\tag{ASR.1}
```

Here `\Phi_*` denotes the active lower-order ledger. It may equal the original `\Phi`, or the extended low-shell ledger `\Phi_{low}`.

## Branch 1: high-shell threshold gate

If

```math
\sup_{r\in I_j}\|X(r)\|_{H_D^s}\le C_X
\tag{ASR.2}
```

and

```math
j\ge J_{high}(C_X,\nu,\kappa_U),
\tag{ASR.3}
```

then the uniform threshold theorem gives `ASR.1`.

## Branch 2: finite low-shell residual ledger

For

```math
j<J_{high}(C_X,\nu,\kappa_U),
\tag{ASR.4}
```

define the finite low-shell amplitude ledger `M_{low}`. If either

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)),
\tag{ASR.5}
```

or the lower-order ledger is extended by

```math
\Phi_{low}(\mathcal E_D(X))
:=
\Phi(\mathcal E_D(X))+\theta_{low}M_{low}(X),
\tag{ASR.6}
```

then the finite low-shell residual is included in the selected residual
functional and the amplitude gate holds with `\Phi_* = \Phi` in the first case
and `\Phi_* = \Phi_{low}` in the second case.

## Branch 3: preferred weighted branch by plateau containment

Let the fixed collar support be

```math
K_{i,j}(t):=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))^{+M}.
\tag{ASR.7}
```

Assume the selector plateau construction supplies

```math
K_{i,j}(t)\subseteq\mathcal P_j(t),
\qquad
w_j=1\text{ on }\mathcal P_j(t).
\tag{ASR.8}
```

Then

```math
w_j=1\text{ on }K_{i,j}(t),
\qquad
(1-w_j)u_{coh}=0\text{ on }K_{i,j}(t).
\tag{ASR.9}
```

Consequently, plateau containment supplies both weighted closures:

```math
\|w_j u_{coh}\|_\infty=\|u_{coh}\|_\infty
\quad\text{on the collar support},
\tag{ASR.10}
```

and

```math
C^{res}_{i,j}=0.
\tag{ASR.11}
```

This is the preferred weighted branch, because one geometric containment gives the lower envelope and the zero residual simultaneously.

## Branch 4: fallback weighted collar residual branch

If plateau containment is unavailable, the weighted collar branch supplies the collar coefficient inputs directly when

```math
\|\nabla(w_j u_{coh})\|_\infty
+2^j\|P_{>j-M}(w_j u_{coh})\|_\infty
\le
c_w\nu2^{2j}+C_w\Phi_*(\mathcal E_D(X)),
\tag{ASR.12}
```

and the residual coefficient

```math
a^{res}:=(1-w_j)u_{coh}
\tag{ASR.13}
```

satisfies

```math
\|\nabla a^{res}\|_\infty
+2^j\|P_{>j-M}a^{res}\|_\infty
\le
C\Phi_*(\mathcal E_D(X)).
\tag{ASR.14}
```

This branch gives the same collar consequence as `ASR.1` through the weighted-principal plus residual collar estimate.

## Theorem ASR

For each active shell `j`, assume Branch 1, Branch 2, Branch 3, or Branch 4 holds. Then the coherent coefficient inputs required by the low-pass commutator collar closure are supplied:

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{ASR.15}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{ASR.16}
```

or, in Branch 4, the corresponding weighted-principal plus residual collar estimate supplies the same commutator absorption.

## Boundary

The roll-up is conditional branch bookkeeping. The preferred weighted route is plateau containment on the fixed collar support. The finite low-shell route uses either original-ledger domination `M_{low}\le C\Phi` or the extended ledger `\Phi_{low}`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-residual-closure-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-ledger-inclusion-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
- `problems/navier-stokes/theorem-construction/weighted-branch-final-closure-from-plateau-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-supplier-result.md`
