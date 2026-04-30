# AVG.RCV.A Averaged Receiver Theorem

Status: conditional averaged receiver theorem.

## Statement

```math
AVG.RCV.A:
DTC.A_{avg}
\Longrightarrow
LCI.A_{avg}.
```

More explicitly, for every required averaged receiver parameter `\mathfrak p\in\mathscr P_{req}`, `DTC.A_avg` supplies the averaged transported-center ledgers needed to close the averaged lower-carrier Gronwall inequality.

## Averaged receiver ledgers

From `DTC.A_avg`, read the averaged analogues

```math
EOC.A_{avg,\mathfrak p}:
\Omega_{\mathfrak p}^{avg}\in L^2(I),
```

```math
AFD.A_{avg,\mathfrak p}:
\mathfrak D_{1,\mathfrak p}^{aff,avg}\in L^1(I),
```

and

```math
RCF.A_{avg,\mathfrak p}:
\mathfrak F_{\mathfrak p}^{ctr,res,avg}\in L^1(I)
\Longrightarrow
\mathfrak A_{\mathfrak p}^{ctr,avg}\in L^2(I).
```

Thus

```math
\Omega_{\mathfrak p}^{avg}\in L^2(I),
\qquad
\mathfrak A_{\mathfrak p}^{ctr,avg}\in L^2(I).
```

## Gronwall closure

The averaged lower-carrier packet obeys the same coefficient form as the retained lower-carrier identity:

```math
\frac{d}{dt}\mathcal G_{\mathfrak p}^{avg}(t)
+ c\mathcal D_{\mathfrak p}^{avg}(t)
\le
\mathfrak B_{\mathfrak p}^{avg}(t)\mathcal G_{\mathfrak p}^{avg}(t).
```

The averaged coefficient is

```math
\mathfrak B_{\mathfrak p}^{avg}(t)
=
C_{\mathfrak p}
\left[
(1+\Gamma_\sharp(t))(1+
\mathfrak A_{\mathfrak p}^{ctr,avg}(t)
+
\Omega_{\mathfrak p}^{avg}(t))
+1+(
\mathfrak A_{\mathfrak p}^{ctr,avg}(t))^2
+(
\Omega_{\mathfrak p}^{avg}(t))^2
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

one has

```math
\mathfrak B_{\mathfrak p}^{avg}\in L^1(I).
```

The set `\mathscr P_{req}` is finite, so summing the finitely many coefficients gives one common integrable majorant. Gronwall yields

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

This is `LCI.A_avg`.

## Output

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

## Boundary

The conclusion is averaged. It does not assert old pointwise `LCI.A`. Old pointwise receiver data is recovered later through `READ.COVER`, `DTC.Read`, and `Field.Read` where required.