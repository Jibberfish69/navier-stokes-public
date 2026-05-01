# Sharp Pressure Readout Elliptic Package

## Statement

Let `READ.COVER` provide a finite nested cover

```math
B_i'\Subset B_i\Subset 2B_i
```

with lower radius `r_*>0` and bounded overlap. Let `chi_i=1` on `B_i` and be supported in `2B_i`. Assume `ATD_m^epsilon` on the shrunken cover elements with

```math
m\ge N+2.
```

Then for every `0<=q<=N`, the pressure derivative needed by the forcing rung is controlled:

```math
\|\nabla^{q+1}p\|_{L^\infty(B_i')}
\le C_{q,i}\,\mathcal R_{m,i}(u,p),
```

where `R_{m,i}` is the finite-depth readout norm supplied by `ATD_m^epsilon`, the frame ledger, and the periodic energy bound.

Consequently

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

is controlled for all `q<=N`.

## Proof

Split the pressure on `2B_i` as

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

For the local part, interior Calderon-Zygmund and Schauder estimates give

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

Leibniz expands

```math
\nabla^q(\chi_i u\otimes u)=\sum_{a+b+c=q}C_{abc}(\nabla^a\chi_i)(\nabla^b u)(\nabla^c u).
```

The cutoff derivatives are bounded by powers of `r_*^{-1}`, and the derivatives of `u` are supplied by the `ATD_m^epsilon` readout since `q<=N<=m-2`.

For the harmonic part, interior harmonic estimates and the periodic energy bound give

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|h_i\|_{L^2(B_i)}
\le C_{q,i}\|u(t)\|_{L^2(\mathbb T^3)}^2.
```

The pressure gauge has zero spatial derivatives. The affine frame pressure potential contributes only the finite frame-ledger derivatives already included in `ATD_m^epsilon`.

Thus `nabla^{q+1}p` is controlled for every `q<=N`. Since

```math
\Delta U_q=U_{q+2},
```

and `m>=N+2`, the viscous readout is also controlled. Therefore each

```math
K_q=-\nabla^{q+1}p+\nu U_{q+2}
```

is controlled on the endpoint readout cover.

## Output

The package supplies the pressure/forcing part of

```math
DTC.Read\Longrightarrow DTC.A\Longrightarrow END.TowerBound.
```

## Constant dependence

The constants depend on

```text
q, N, m, nu, r_*, M_sharp, cover overlap, cutoff profile, energy bound.
```

All dependencies are terminal-readout dependencies after `READ.COVER`.