# READ.COVER_R3 Compact-Core Plus Exterior-Tail Cover

## Status

Conditional theorem note.

## Theorem

Assume `Tail.Hs_R3` and assume the compact core of the terminal same-fluid approach tail has strict positive SCF-good scale. Then the whole-space readout cover exists:

```math
READ.COVER_{R3}.
```

## Proof

Let the terminal active region decompose as

```math
A_{term}=A_{core}\cup A_{tail},
```

where `A_core` is contained in a compact spatial ball `B_R` and `A_tail` lies in the exterior region.

On `A_core`, strict SCF-goodness is open in same-fluid coordinates. Compactness of `A_core` gives a finite subcover by moving cylinders

```math
\{Q_{r_i}^{\Phi}(a_i,t_i)\}_{i=1}^M,
\qquad r_*:=\min_i r_i>0.
```

On each selected cylinder, the local `R3` scale-critical packet gives the same finite-depth local readout inputs as the periodic branch.

On `A_tail`, `Tail.Hs_R3` gives

```math
\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s(R^3)}\to0
```

for `s>5/2`. Hence the exterior tail contributes no terminal endpoint face and no active readout cell is needed outside a sufficiently large compact core.

Combining the compact finite cover with exterior tail exclusion yields `READ.COVER_R3`.

## Boundary

This theorem is conditional on `Tail.Hs_R3`. It supplies the noncompact readout cover only after high-order spatial-infinity control is available.