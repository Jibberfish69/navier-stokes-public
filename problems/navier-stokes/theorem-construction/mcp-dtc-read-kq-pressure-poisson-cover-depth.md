# DTC.Read Pressure Local Poisson Estimate For `K_q` On The Fixed Readout Cover

## Status

Conditional readout lemma for the terminal averaged-to-pointwise bridge.

This note verifies the pressure component of the `K_q` readout used in

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

## Setting

Let `READ.COVER` supply a finite fixed same-fluid cover with positive lower scale. For one cover element choose nested balls

```math
B_i'\Subset B_i\Subset 2B_i
```

and a cutoff `\chi_i` satisfying

```math
\chi_i\equiv 1\text{ on }B_i,
\qquad
\operatorname{supp}\chi_i\subset 2B_i.
```

Use the local pressure split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Then `h_i` is harmonic on `B_i`.

## Local Pressure Readout

For `0\le q\le N`, write

```math
\mathcal P_{q,\alpha,i}(t)
:=\|\nabla^q(\chi_i u\otimes u)(t)\|_{C^{0,\alpha}(2B_i)}.
```

The local pressure operator is

```math
\nabla^{q+1}p_i^{loc}=T_q(\nabla^q(\chi_i u\otimes u)),
```

where `T_q` is the order-zero local pressure Calderon-Zygmund/Schauder operator. Hence

```math
\|\nabla^{q+1}p_i^{loc}(t)\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\mathcal P_{q,\alpha,i}(t).
```

`ATD_m^\varepsilon` at sufficient depth supplies the product-source carrier on each shrunken readout cylinder:

```math
\sup_{t,i,q\le N}\mathcal P_{q,\alpha,i}(t)<\infty.
```

Thus the local pressure part is available on the same finite cover used by `DTC.Read`.

## Harmonic Tail

Since `h_i` has only the distant pressure source on `B_i'`, the kernel for `\nabla^{q+1}h_i` is smooth against `(1-\chi_i)u\otimes u`. Therefore

```math
\|\nabla^{q+1}h_i(t)\|_{L^\infty(B_i')}
\le C_{q,i}\|u(t)\otimes u(t)\|_{L^1}
\le C_{q,i}\|u(t)\|_{L^2}^2.
```

The energy inequality gives

```math
\|u(t)\|_{L^2}^2\le\|u_0\|_{L^2}^2.
```

Thus

```math
\|\nabla^{q+1}h_i(t)\|_{L^\infty(B_i')}
\le C_{q,i}\|u_0\|_{L^2}^2.
```

Combining local and harmonic parts,

```math
\|\nabla^{q+1}p(t)\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\mathcal P_{q,\alpha,i}(t)
+C_{q,i}\|u_0\|_{L^2}^2.
```

## `K_q` Readout

The forcing rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The pressure term is supplied by the preceding estimate. The viscous term is a contraction of `U_{q+2}` and is supplied by the same fixed-cover tower readout when the depth reaches at least `N+2`.

Therefore, for every `0\le q\le N`,

```math
\|K_q\|_{L^\infty(B_i')}
\le
C\left(
1+\\mathcal P_{q,\alpha,i}(t)+\|u_0\|_{L^2}^2+\|U_{q+2}\|_{L^\infty(B_i')}
\right),
```

and the right side is controlled by `ATD_m^\varepsilon` plus energy on the finite readout cover.

## Output

The pressure/viscous forcing readout needed by `DTC.Read` is verified on the same finite cover and same depth convention:

```math
READ.COVER+ATD_m^\varepsilon\text{ at depth }N+2
\Longrightarrow
\{K_q\}_{q=0}^{N}\text{ pointwise readout on the cover}.
```

Consequently `DTC.Read` can supply the endpoint tower input

```math
DTC.A\Longrightarrow END.TowerAmp.
```

## Boundary

This note does not supply `READ.COVER` and does not prove pointwise `DTC.A` before `DTC.Read`. It verifies the pressure component needed by `DTC.Read` once the finite readout cover and `ATD_m^\varepsilon` depth are already available.