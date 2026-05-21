# Field row: `Field_avg + READ.COVER + ATD_m^epsilon => Field_{N,r,Q}`

## Status

Theorem-grade readout row under the fixed-cover hypotheses.

The same-carrier condition is explicit: `READ.COVER` supplies the finite same-fluid cover with lower radius, and `ATD_m^epsilon` is applied on the shrunken cover elements with `m>=N+2`.

## Target

Prove the CM Field witness row:

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow Field_{N,r,Q}.
```

## Inputs

Assume `READ.COVER` gives a finite same-fluid cover

```math
\{B_i'\Subset B_i\Subset 2B_i\}_{i=1}^{J}
```

with lower radius

```math
r_i\ge r_*>0.
```

Assume `ATD_m^\varepsilon` on shrunken cover elements with

```math
m\ge N+2.
```

The local theorem `ATD_m^epsilon CKN-Admissible Local Completion` supplies finite-depth local smoothness and pressure derivative bounds on every SCF-good same-fluid cylinder in the cover.

## Pressure readout

On one cover element choose `\chi_i=1` on `B_i` and supported in `2B_i`. Split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

For `0\le q\le N`, Schauder / Calderon-Zygmund estimates give

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

`ATD_m^\varepsilon` controls the product term by local Morrey/Sobolev readout and Leibniz. The harmonic tail obeys

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u(t)\|_{L^2}^2.
```

Therefore pressure derivatives through the forcing depth are bounded on each cover element.

## Field readout

`Field_{avg}` gives averaged field control on the same finite cover. `ATD_m^\varepsilon` upgrades the averaged local packet to pointwise local regularity on the shrunken cover elements. Since the cover is finite and `r_i\ge r_*`, the constants are uniform across the retained terminal tail.

Thus for every `q\le N` and every cover element,

```math
\sup_{B_i'} |\nabla^q u|+\\sup_{B_i'} |\nabla^{q+1}p|
\le C(N,m,r_*,\varepsilon,M_\sharp,E_0).
```

This is the pointwise field predicate at depth `N` and scale `r_*`:

```math
Field_{N,r_*,Q}.
```

Renaming `r=r_*` gives

```math
Field_{N,r,Q}.
```

## Theorem

```math
\boxed{
Field_{avg}+READ.COVER+ATD_m^\varepsilon\ (m\ge N+2)
\Longrightarrow Field_{N,r,Q}.
}
```

## Boundary

The theorem uses `READ.COVER` as an input. It does not produce the terminal cover. It also uses `ATD_m^\varepsilon` on the same carrier supplied by the cover. A mismatched cover or an averaged packet on a different carrier cannot be spent here.

## Claimed status

Field row complete under fixed-cover, same-carrier readout hypotheses.