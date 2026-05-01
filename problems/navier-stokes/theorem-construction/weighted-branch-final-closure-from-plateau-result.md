# Weighted Branch Final Closure From Plateau Result

## Target

Use selector plateau containment to close both weighted branch requirements:

```math
w_j\ge 1
\quad\text{on the fixed collar support},
\tag{WBF.1}
```

and

```math
(1-w_j)u_{coh}=0
\quad\text{on the fixed collar support}.
\tag{WBF.2}
```

## Input

Let the fixed collar support be

```math
K_{i,j}(t)
:=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))^{+M}.
\tag{WBF.3}
```

Assume the selector plateau construction supplies

```math
K_{i,j}(t)\subseteq\mathcal P_j(t),
\qquad
w_j=1\text{ on }\mathcal P_j(t).
\tag{WBF.4}
```

## Theorem WBF

Under `WBF.4`, the weighted direct branch and weighted collar residual branch both close on the fixed collar support.

### Proof

Since `K_{i,j}(t)\subseteq\mathcal P_j(t)` and `w_j=1` on `\mathcal P_j(t)`,

```math
w_j(x,t)=1
\qquad (x,t)\in K_{i,j}(t)\times I_j.
\tag{WBF.5}
```

Hence

```math
w_j(x,t)\ge 1
\qquad (x,t)\in K_{i,j}(t)\times I_j.
\tag{WBF.6}
```

This supplies the positive lower envelope with `m_j=1`.

Also,

```math
(1-w_j(x,t))u_{coh}(x,t)=0
\qquad (x,t)\in K_{i,j}(t)\times I_j.
\tag{WBF.7}
```

This makes the weighted-collar residual vanish on the fixed collar support. ∎

## Consequence

The plateau branch supplies both weighted closures at once:

```math
\|w_j u_{coh}\|_\infty\text{ converts to }\|u_{coh}\|_\infty
\tag{WBF.8}
```

and

```math
C^{res}_{i,j}=0
\quad\text{on the collar support.}
\tag{WBF.9}
```

Thus the preferred weighted branch is fully reduced to construction of the selector plateau with fixed collar buffer.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-containment-on-fixed-collar-support-result.md`
- `problems/navier-stokes/theorem-construction/weighted-branch-decision-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-supplier-result.md`