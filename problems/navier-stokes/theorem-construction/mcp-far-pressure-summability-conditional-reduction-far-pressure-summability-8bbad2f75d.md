# Far pressure summability — conditional reduction note

Target: prove the far-tail term in the pressure-flux supplier:

`sum_k 2^((2a-1)k) int F_k ||u||_{L2(A_k)} < infinity`.

The accessible `PFlux.Supplier` closure treats this as a named input. The exact
far-pressure supplier is the annular kernel statement

```math
F_k(t)\le C|A_k|^{1/2}
\sum_{|\ell-k|>2}
2^{-3\max\{k,\ell\}}\|u(t)\|_{L^2(A_\ell)}^2,
```

together with the finite weighted Schur constant for the selected exponent
`a`,

```math
C_a^{far}:=
\sup_{\|x\|_{\ell^2}=1}
\sum_{k,\ell}
2^{(2a-1)k}|A_k|^{1/2}
2^{-3\max\{k,\ell\}}
2^{-ak}2^{-2a\ell}
|x_k|\,|x_\ell|^2
<\infty.
```

If the weighted moment

```math
M_a(t)=\sum_\ell2^{2a\ell}\|u(t)\|_{L^2(A_\ell)}^2
```

is finite and `M_a^{3/2}\in L^1(0,T)`, then

```math
\sum_k2^{(2a-1)k}F_k(t)\|u(t)\|_{L^2(A_k)}
\le
C\,C_a^{far}M_a(t)^{3/2},
```

and integrating in time gives the far-tail input.

Result: far pressure summability is conditionally reduced to the kernel-decay far-tail theorem for `F_k`. This pass did not verify the underlying far-tail theorem line by line from an accessible source surface, so the supplier remains conditional at this row.
