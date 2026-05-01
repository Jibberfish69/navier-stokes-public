# Final Global Selector Plateau Theorem

## Target

Construct one global selector weight `w_j` independent of `v_{coh}` such that every active collar support satisfies

```math
K_{i,j}(t)
\subseteq\mathcal P_j(t),
\qquad
w_j=1\text{ on }\mathcal P_j(t).
\tag{FGS.1}
```

## Inputs

### Carrier-localized active readouts

For every active coherent readout,

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})
\subseteq
\Gamma_j(t).
\tag{FGS.2}
```

### Proper persistent carrier collar

With fixed collar radius `r_{j,M}=C_M2^{-j}`,

```math
\Gamma_j(t)^{+M}
\subsetneq\mathbb R^3.
\tag{FGS.3}
```

### Carrier core and plateau construction

Define

```math
\mathcal K_j(t):=\Gamma_j(t)^{+M},
\qquad
\mathcal P_j(t):=\mathcal K_j(t)^{+L2^{-j}},
\tag{FGS.4}
```

where `L` dominates the fixed collar constants. Choose `w_j` by the regularized-distance construction so that

```math
w_j=1\text{ on }\mathcal P_j(t),
\qquad
\operatorname{supp}w_j\subseteq\mathcal K_j(t)^{+2L2^{-j}}.
\tag{FGS.5}
```

## Theorem FGS

Under `FGS.2`--`FGS.5`, every active collar support

```math
K_{i,j}(t):=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})^{+M}
\tag{FGS.6}
```

satisfies

```math
K_{i,j}(t)
\subseteq
\mathcal K_j(t)
\subseteq
\mathcal P_j(t),
\tag{FGS.7}
```

and therefore

```math
w_j=1\text{ on }K_{i,j}(t).
\tag{FGS.8}
```

Consequently,

```math
w_j\ge1\text{ on }K_{i,j}(t),
\qquad
(1-w_j)u_{coh}=0\text{ on }K_{i,j}(t).
\tag{FGS.9}
```

The global selector closes both weighted branch requirements from one `v_{coh}`-independent construction.

### Proof

By `FGS.2`, the unexpanded active support lies inside `\Gamma_j(t)`. Taking the fixed collar enlargement gives

```math
K_{i,j}(t)
\subseteq
\Gamma_j(t)^{+M}
=
\mathcal K_j(t).
```

By `FGS.4`, `\mathcal K_j(t)\subseteq\mathcal P_j(t)`. By `FGS.5`, `w_j=1` on `\mathcal P_j(t)`. This proves `FGS.7`--`FGS.9`. ∎

## Boundary

If `FGS.3` fails, the selector can still be taken as the algebraic full-space plateau `w_j\equiv1`, while geometric localization is absent. If `FGS.2` is replaced by unrestricted active tests, a universal proper carrier core requires a separate active-support theorem.

## Source surfaces

- `problems/navier-stokes/theorem-construction/universal-active-support-localization-result.md`
- `problems/navier-stokes/theorem-construction/controlled-proper-core-or-carrier-localization-result.md`
- `problems/navier-stokes/theorem-construction/active-coherent-readout-carrier-localization-result.md`
- `problems/navier-stokes/theorem-construction/proper-persistent-carrier-collar-result.md`
- `problems/navier-stokes/theorem-construction/persistent-carrier-core-construction-result.md`