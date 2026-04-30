# AVG.RCV.A Completion

Status: conditional averaged receiver theorem completed.

## Theorem

```math
AVG.RCV.A:
DTC.A_{avg}
\Longrightarrow
LCI.A_{avg}.
```

## Proof

Fix a required averaged receiver parameter

```math
\mathfrak p\in\mathscr P_{req}.
```

The averaged transported-center packet supplies the averaged receiver ledgers

```math
\Omega_{\mathfrak p}^{avg}\in L^2(I),
```

and

```math
\mathfrak A_{\mathfrak p}^{ctr,avg}\in L^2(I).
```

These are the averaged analogues of the `EOC` and `RCF` inputs for the lower-carrier inequality.

The averaged lower-carrier packet satisfies

```math
\frac{d}{dt}\mathcal G_{\mathfrak p}^{avg}
+c\mathcal D_{\mathfrak p}^{avg}
\le
\mathfrak B_{\mathfrak p}^{avg}(t)\mathcal G_{\mathfrak p}^{avg},
```

where

```math
\mathfrak B_{\mathfrak p}^{avg}
=
C_{\mathfrak p}
\left[
(1+\Gamma_\sharp)(1+
\mathfrak A_{\mathfrak p}^{ctr,avg}
+
\Omega_{\mathfrak p}^{avg})
+1+(
\mathfrak A_{\mathfrak p}^{ctr,avg})^2
+(
\Omega_{\mathfrak p}^{avg})^2
\right].
```

Since

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak A_{\mathfrak p}^{ctr,avg}\in L^2(I),
\qquad
\Omega_{\mathfrak p}^{avg}\in L^2(I),
```

we have

```math
\mathfrak B_{\mathfrak p}^{avg}\in L^1(I).
```

The parameter set `\mathscr P_{req}` is finite, so the sum of all coefficient functions gives a single `L^1` majorant. Gronwall yields

```math
\sup_{\mathfrak p\in\mathscr P_{req}}
\sup_{t\in I}\mathcal G_{\mathfrak p}^{avg}(t)<\infty.
```

The averaged lower-carrier readout then gives

```math
\Gamma_{\mathfrak p}^{low,avg}\in L^1(I)
\qquad
(\mathfrak p\in\mathscr P_{req}).
```

This is exactly `LCI.A_avg`.

## Output

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

## Boundary

The conclusion is typed to averaged objects. Pointwise lower-carrier data enters only through the later readout layer where required.