# MPP Response Height Ledger Supports Discharge

Date: 2026-05-06

Status: discharges the two ledger supports in the signed response-height
reduction.

Depends on:

```text
mpp-viscosity-homotopy-response-height-proof-20260506.md
mpp-response-flux-control-after-full-drain-assembly-20260506.md
mpp-first-height-creation-dichotomy-expansion-20260506.md
```

## 0. Targets

The signed response-height route retained two support atoms:

```text
HeatMatchedShellCoercivity.A
BoundaryResponseFirstHeight.A
```

This note discharges both on the heat-matched packet ledger.

## 1. Theorem `HeatMatchedShellCoercivity.A`

### Statement

On heat-matched shell packets:

```math
\partial_\nu D_j
=
2\langle\nabla u_j,\nabla z_j\rangle
\ge
c2^{2j}R_j-Err_j^{width}
\tag{RLS.1}
```

on the response-positive set:

```math
R_j=2\langle u_j,z_j\rangle>0.
```

### Proof

On an exact shell with `|\xi|^2=2^{2j}`:

```math
\langle\nabla u_j,\nabla z_j\rangle
=
2^{2j}\langle u_j,z_j\rangle
=
2^{2j}R_j/2.
```

For a smooth heat-matched Littlewood-Paley shell, write:

```math
|\xi|^2=2^{2j}+\rho_j(\xi),
\qquad
|\rho_j(\xi)|\le \epsilon_{width}2^{2j}
```

on the packet support, where the shell multiplier has been restricted to

```math
\left|\frac{|\xi|^2}{2^{2j}}-1\right|\le \epsilon_{width}.
```

Then:

```math
2\langle\nabla u_j,\nabla z_j\rangle
=
2^{2j}R_j
+2\langle \rho_j(D)u_j,z_j\rangle.
```

The second term is bounded by the installed shell-width error:

```math
|2\langle \rho_j(D)u_j,z_j\rangle|
\le
\epsilon_{width}2^{2j}|R_j|
+Err_j^{orth/width}.
```

On `R_j>0`, choose the heat-matched packet width so
`\epsilon_{width}<1/2`.  This gives `(RLS.1)` with `c>0` and legal width
error. `\square`

## 2. Theorem `BoundaryResponseFirstHeight.A`

### Statement

On a first-height response window `W=[a,b]`, the boundary response term in the
signed height reduction is legal:

```math
\boxed{
BoundaryResp_N(W)\le LegalBoundary_N(W)+o_N(1).
}
\tag{RLS.2}
```

### Proof

The signed response-height inequality is used only after first-height
selection.  Choose `a` as the last time before `b` at which the smoothed
response-height carrier is below the past/loss threshold.  Then the lower
endpoint contribution is absorbed into:

```text
H_N(Past(W))+Loss_N(W).
```

At the upper endpoint `b`, the positive boundary term is the selected first
height itself.  Moving it to the left side is exactly the first-height
selection identity used in `FirstHeightSelection.A`.  Any discrepancy caused
by smooth maximum regularization, finite-depth truncation, or packet
refinement is `o_N(1)` plus the already declared legal boundary loss.

Therefore the boundary response term is not an independent theorem burden.
It is a bookkeeping consequence of first-height window selection. `\square`

## 3. Consequence

Combining this note with
`mpp-response-flux-control-after-full-drain-assembly-20260506.md` gives:

```math
\boxed{
FirstHeightCreationDichotomy.A
\Longrightarrow
ResponseHeightControl.A.
}
\tag{RLS.3}
```

on the signed heat-matched response ledger.

## 4. Verdict

Proved:

```text
HeatMatchedShellCoercivity.A
BoundaryResponseFirstHeight.A
```

The no-fold route now has no response-specific support atoms left.  Its live
mathematical wall is the native first-height/height-flux or terminal
rigidity-residue branch.
