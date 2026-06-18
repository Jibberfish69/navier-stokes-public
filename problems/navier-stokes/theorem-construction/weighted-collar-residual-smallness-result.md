# Weighted Collar Residual Smallness Result

## Target

The weighted collar alternative leaves the residual coefficient

```math
a^{res}:=(1-w_j)u_{coh}.
\tag{WCR.1}
```

The residual-smallness target is

```math
\boxed{
\|\nabla a^{res}\|_\infty
+2^j\|P_{>j-M}a^{res}\|_\infty
\le
C\Phi(\mathcal E_D(X)).
}
\tag{WCR.2}
```

## Plateau containment supplier

Assume the active collar support is contained in the plateau region of `w_j`:

```math
1-w_j=0
\qquad\text{on }\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})
\text{ enlarged by the fixed collar kernel.}
\tag{WCR.3}
```

Then

```math
C^{res}_{i,j}=0
\tag{WCR.4}
```

for the weighted collar residual term. Hence `WCR.2` is satisfied with zero residual contribution on that collar support.

## Collar-smallness supplier

More generally, assume a residual amplitude and strain ledger:

```math
\|(1-w_j)u_{coh}\|_\infty
\le
C_0 2^{-j}\Phi(\mathcal E_D(X)),
\tag{WCR.5}
```

and

```math
\|\nabla((1-w_j)u_{coh})\|_\infty
\le
C_1\Phi(\mathcal E_D(X)).
\tag{WCR.6}
```

Since `P_{>j-M}` is an `L^\infty`-bounded multiplier on fixed collar width,

```math
2^j\|P_{>j-M}a^{res}\|_\infty
\le
C_M2^j\|a^{res}\|_\infty
\le
C_MC_0\Phi(\mathcal E_D(X)).
\tag{WCR.7}
```

Combining `WCR.6` and `WCR.7` gives `WCR.2`.

## Result

The weighted collar residual satisfies the required smallness bound under
either of the following supplier conditions:

```text
plateau containment of the active collar support;
```

or

```text
residual amplitude plus residual strain ledger estimates WCR.5-WCR.6.
```

Under either condition, the weighted collar theorem may consume the weighted coefficient `w_j u_coh` directly.

## Boundary

This is a conditional residual-smallness theorem. The geometric content is the plateau containment statement `WCR.3`; the analytic content is the residual ledger pair `WCR.5`--`WCR.6`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/weighted-collar-alternative-result.md`
- `problems/navier-stokes/theorem-construction/selector-weight-lower-envelope-result.md`
- `problems/navier-stokes/theorem-construction/weighted-direct-speed-mechanism-assessment-result.md`
