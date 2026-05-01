# BootSquare Multiplier Residual Source Boundary

## Status

Failed as an unconditional source proof.

The beta variable is

```math
\beta_J=\Lambda_J^{boot}\eta_J^{boot}.
```

To prove

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

it is sufficient to prove either:

```math
\|\Lambda_J^{boot}\|_{L^\infty(d\nu_J)}\le C_\Lambda,
\qquad
\|\eta_J^{boot}\|_{L^p(d\nu_J)}\le C_\eta,
```

or the Holder-compatible variant

```math
\|\Lambda_J^{boot}\|_{L^r(d\nu_J)}\le C_\Lambda,
\qquad
\|\eta_J^{boot}\|_{L^s(d\nu_J)}\le C_\eta,
\qquad
1/p=1/r+1/s,
\quad p>2.
```

The persisted criteria prove that these estimates imply beta control. They do not prove the actual multiplier and residual estimates.

## Source estimates still needed

```text
actual Lambda_J^boot weighted multiplier control,
actual eta_J^boot weighted Lp control,
same retained weighted family.
```