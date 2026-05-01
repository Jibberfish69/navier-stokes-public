# Sharp Pressure Readout For All Endpoint Rungs

Status: conditional fixed-cover pressure readout theorem.

## Statement

Assume `READ.COVER` supplies a finite fixed same-fluid readout cover with nested triples

```math
B_i'\Subset B_i\Subset 2B_i,
\qquad
1\le i\le M.
```

Assume `ATD_m^epsilon` supplies product-source carriers through every `0<=q<=N`, and the depth condition includes the viscous slots `U_{q+2}`. Then for every endpoint rung

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad 0\le q\le N,
```

the pressure component has a finite-cover pointwise readout.

## Local pressure split

On each cover element choose `chi_i=1` on `B_i` and supported in `2B_i`. Write

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Then `h_i` is harmonic on `B_i`.

## Local part

For `0<=q<=N`, the local Schauder/Calderon-Zygmund estimate gives

```math
\|\nabla^{q+1}p_i^{loc}(t)\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}
\|\nabla^q(\chi_i u\otimes u)(t)\|_{C^{0,\alpha}(2B_i)}.
```

The product-source carrier on the right is supplied by `ATD_m^epsilon` and the fixed cutoff bounds.

## Harmonic tail

The harmonic remainder satisfies

```math
\|\nabla^{q+1}h_i(t)\|_{L^\infty(B_i')}
\le
C_{q,i}\|u(t)\|_{L^2(T^3)}^2
\le
C_{q,i}\|u_0\|_{L^2(T^3)}^2.
```

## Finite-cover constant

Define

```math
C_{press,N,cover}
:=
\max_{1\le i\le M}\max_{0\le q\le N}
(C_{q,\alpha,i}+C_{q,i}).
```

Since the cover is finite and has positive lower separation, this constant is finite. Thus

```math
\sup_{i,q\le N}
\|\nabla^{q+1}p(t)\|_{L^\infty(B_i')}
\le
C_{press,N,cover}
\left(
\sup_{i,q\le N}\|\nabla^q(\chi_i u\otimes u)(t)\|_{C^{0,\alpha}(2B_i)}
+
\|u_0\|_{L^2}^2
\right).
```

## Forcing rung

The viscous component `nu Delta U_q` is read from the `U_{q+2}` slot. Hence

```math
DTC.Read.Press.local+U_{q+2}\text{ readout}
\Longrightarrow
K_q\text{ readout for every }0\le q\le N.
```

## Boundary

This theorem is a fixed-cover readout. The cover is supplied by `READ.COVER`, downstream of `End_NS_avg`.