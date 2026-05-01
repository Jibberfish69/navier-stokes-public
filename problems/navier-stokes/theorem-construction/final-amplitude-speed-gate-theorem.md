# Final Amplitude-Speed Gate Theorem

## Target

The final coherent amplitude/speed gate is

```math
\boxed{
\|u_{coh}\|_{L^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C2^{-j}\Phi_*(\mathcal E_D(X)).
}
\tag{FAS.1}
```

Here `\Phi_*` is the active lower-order ledger:

```math
\Phi_*\in\{\Phi,\Phi_{low}\}.
\tag{FAS.2}
```

## Supplier hypotheses

For each active shell `j`, assume one of the following supplier branches.

### High-shell branch

```math
\sup_{r\in I_j}\|X(r)\|_{H_D^s}\le C_X,
\qquad
j\ge J_{high}(C_X,\nu,\kappa_U).
\tag{FAS.3}
```

### Low-shell ledger branch

For `j<J_{high}`, either

```math
M_{low}(X)
\le C\Phi(\mathcal E_D(X))
\tag{FAS.4}
```

or

```math
\Phi_*=
\Phi_{low}:=\Phi+	heta_{low}M_{low}.
\tag{FAS.5}
```

### Weighted plateau branch

The global plateau selector satisfies

```math
w_j=1
\qquad\text{on every active fixed collar support.}
\tag{FAS.6}
```

### Weighted fallback branch

The weighted-principal estimate and residual smallness estimates hold:

```math
\|\nabla(w_j u_{coh})\|_\infty
+2^j\|P_{>j-M}(w_j u_{coh})\|_\infty
\le
c_w\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{FAS.7}
```

and

```math
\|\nabla((1-w_j)u_{coh})\|_\infty
+2^j\|P_{>j-M}((1-w_j)u_{coh})\|_\infty
\le
C\Phi_*(\mathcal E_D(X)).
\tag{FAS.8}
```

## Theorem FAS

Under the high-shell branch, low-shell ledger branch, or weighted plateau branch, the amplitude gate `FAS.1` holds.

Under the weighted fallback branch, the route supplies the equivalent collar coefficient inputs directly through the weighted-principal plus lower-order residual decomposition.

## Coefficient consequences

Assume the coherent coefficient is frequency localized:

```math
\boxed{u_{coh}=P_{\le j+A}u_{coh}.}
\tag{FAS.9}
```

When `FAS.1` holds, Bernstein gives

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi_*(\mathcal E_D(X))
\tag{FAS.10}
```

inside the absorption window. The finite high-collar multiplier gives

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi_*(\mathcal E_D(X)).
\tag{FAS.11}
```

## Boundary

The theorem is final for the local collar route once the chosen supplier branch is installed. The current ledger decision is to use `\Phi_* = \Phi_{low}` until an original-ledger recovery theorem proves `M_{low}\le C\Phi`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/amplitude-speed-gate-supplier-rollup-result.md`
- `problems/navier-stokes/theorem-construction/final-global-selector-plateau-theorem.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-supplier-result.md`
- `problems/navier-stokes/theorem-construction/original-phi-vs-phi-low-ledger-decision-result.md`