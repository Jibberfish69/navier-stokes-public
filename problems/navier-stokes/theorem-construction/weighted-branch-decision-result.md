# Weighted Branch Decision Result

## Target

The weighted branch has two possible closures.

The first is unweighted conversion:

```math
w_j\ge m_j>0
\qquad\Longrightarrow\qquad
\|u_{coh}\|_\infty
\le
m_j^{-1}\|w_j u_{coh}\|_\infty.
\tag{WBD.1}
```

The second is weighted collar closure:

```math
(1-w_j)u_{coh}\text{ satisfies the collar residual bound.}
\tag{WBD.2}
```

## Decision criterion

Choose the positive lower-envelope branch when the active persistent support is contained in a strict plateau core:

```math
\Gamma_j(t)\subseteq\{x:w_j(x,t)\ge m_j\},
\qquad m_j^{-1}\kappa_W\le\kappa_U.
\tag{WBD.3}
```

This gives the unweighted amplitude/speed gate directly.

Choose the weighted collar branch when the selector weight is allowed to
degenerate near the boundary while the residual satisfies the collar bound:

```math
\|\nabla((1-w_j)u_{coh})\|_\infty
+2^j\|P_{>j-M}((1-w_j)u_{coh})\|_\infty
\le
C\Phi(\mathcal E_D(X)).
\tag{WBD.4}
```

This gives collar absorption through the weighted principal term plus residual lower-order term.

## Preferred branch for the current route

The current selector/collar geometry already uses plateau and fixed-collar language. Therefore the preferred branch is:

```text
prove plateau containment on the fixed collar support.
```

This branch simultaneously supports both mechanisms:

```math
w_j=1\text{ on the collar support}
\quad\Longrightarrow\quad
w_j\ge1\text{ there}
\quad\text{and}\quad
(1-w_j)u_{coh}=0\text{ there.}
\tag{WBD.5}
```

Thus plateau containment is the strongest single geometric supplier. It removes the weighted residual and gives the lower-envelope conversion on the same active core.

## Boundary

If plateau containment fails, use the weighted collar branch with the residual ledger. If the residual ledger also fails, the weighted branch does not feed the unweighted collar closure.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-weight-lower-envelope-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-alternative-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-supplier-result.md`
- `problems/navier-stokes/theorem-construction/amplitude-speed-gate-supplier-rollup-result.md`
