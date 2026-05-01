# Weighted Collar Residual Supplier Result

## Target

The weighted collar residual coefficient is

```math
a^{res}:=(1-w_j)u_{coh}.
\tag{WCRS.1}
```

The supplier target is

```math
\|\nabla a^{res}\|_\infty
+2^j\|P_{>j-M}a^{res}\|_\infty
\le
C\Phi(\mathcal E_D(X)).
\tag{WCRS.2}
```

## Branch A: plateau containment

Assume the fixed collar support satisfies

```math
\operatorname{supp}\big(\widetilde Q_iP_{\le j}v_{coh}\big)^{+M}
\subseteq
\{x:w_j(x,t)=1\},
\tag{WCRS.3}
```

where `+M` denotes the fixed Littlewood-Paley collar enlargement. Then

```math
a^{res}=0
\quad\text{on the full collar support.}
\tag{WCRS.4}
```

Hence the residual commutator vanishes there:

```math
C^{res}_{i,j}=0.
\tag{WCRS.5}
```

Thus `WCRS.2` holds with zero contribution from the plateau branch.

## Branch B: residual amplitude and strain ledger

Assume instead

```math
\|(1-w_j)u_{coh}\|_\infty
\le
C_0 2^{-j}\Phi(\mathcal E_D(X)),
\tag{WCRS.6}
```

and

```math
\|\nabla((1-w_j)u_{coh})\|_\infty
\le
C_1\Phi(\mathcal E_D(X)).
\tag{WCRS.7}
```

The fixed collar multiplier gives

```math
2^j\|P_{>j-M}a^{res}\|_\infty
\le
C_M2^j\|a^{res}\|_\infty
\le
C_MC_0\Phi(\mathcal E_D(X)).
\tag{WCRS.8}
```

Combining `WCRS.7` and `WCRS.8` gives `WCRS.2`.

## Theorem WCRS

The weighted-collar residual supplier is discharged under either branch:

```text
plateau containment on the fixed collar support;
```

or

```text
residual amplitude plus residual strain ledger estimates.
```

Under either branch, the weighted collar alternative consumes `w_j u_{coh}` as the principal coefficient and places the residual in the lower-order ledger.

## Boundary

The geometric work is the plateau containment statement `WCRS.3`. The analytic fallback is the residual ledger pair `WCRS.6`--`WCRS.7`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/weighted-collar-alternative-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-smallness-result.md`
- `problems/navier-stokes/theorem-construction/selector-weight-lower-envelope-result.md`