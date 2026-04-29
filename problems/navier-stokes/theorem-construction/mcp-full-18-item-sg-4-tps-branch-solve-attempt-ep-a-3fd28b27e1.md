# Full 18-Item SG.4/TPS Branch Solve Attempt

## Status

Conditional branch-local solve. Items with pure selection or perturbation content close. Items requiring retained mass, true equidistribution, independent tensor comparison, and positive spectral-gap mass remain source hypotheses.

## Item-by-item result

### 1. Retained-mass theorem

If the selected bad sets are `B_1,...,B_N`, then

```math
\mu(G\setminus\cup_i B_i)\ge \mu(G)-\sum_i\mu(B_i).
```

Thus retained mass closes once each selection packet supplies a loss budget and the total loss is below the starting selector-good mass.

### 2. Density-selected parent center

Let `delta>=0` and `bar delta_Q` be the parent average. The set `{delta>=bar delta_Q}` has positive measure. Choose `a_Q` as a Lebesgue point in that set. Then

```math
\delta(a_Q)\ge \bar\delta_Q.
```

This closes the center lower-density packet with `c=1`.

### 3. Diagonal-density Holder / oscillation

If `delta` has finite local Holder seminorm, refine or stop the parent cell until

```math
[\delta]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha\le \gamma\bar\delta_Q.
```

This closes the oscillation packet under density-adapted stopping and retained-mass control.

### 4. QSP.11r package

Items 2 and 3 imply the parent-center route `QSP.11r`, hence the selector-side part of `PTC-Shape`.

### 5. Finite shell equidistribution

For shrinking shells, choose shell boundaries outside the atom set of the finite active radial distributions. Active shell mass and spherical shell mass both tend to zero, giving

```math
\int |\delta_{shell}-s_{shell}|d\mu\to0.
```

For fixed-width shells, this remains an equidistribution source theorem.

### 6. Shell-boundary regularity

Finite measures have at most countably many atom radii for each radial distribution. Pick the finite shell boundaries outside those atom sets. Boundary mass is zero.

### 7. Regular-window C2 collar control

Assume

```math
\sup_I\|\nabla v_J\|_\infty\le M,
\qquad
\sup_I\|\nabla^2v_J\|_\infty\le H.
```

The flow variational equations give

```math
\|D^2X_t\|_{op}\le H\tau e^{2M\tau}.
```

### 8. Frame-scale compatibility

Choose

```math
h_J\le \min_k h_{J,k}^{max}
```

over the finite list of cap, collar, shell, and frame upper constraints, and require

```math
h_JH\tau e^{2M\tau}\to0.
```

This closes compatibility when the finite-frame geometry allows refinement to that scale.

### 9. Finite-frame PTC-Lin

Items 7 and 8 give segment-collar derivative continuity. The finite-frame linearization theorem gives `PTC-Lin`.

### 10. Exact-potential tensor comparison

If the branch defines

```math
C_J^{CG}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^* ,
```

the comparison is exact. If `C_J^{CG}` is independently fixed, this item remains the exact-potential comparison source theorem.

### 11. Reference CG entrance gap

If the entrance simple-top set has positive measure, choose strips with

```math
g_0=\lambda_1(C_J^{CG}(t_0))-\lambda_2(C_J^{CG}(t_0))>0.
```

If the CG tensor lies on the repeated-top locus throughout the active family, this item fails.

### 12. Reference CG persistence

Restricted CG persistence proves:

```math
E_{J,t_0}^{CG}\le g_0/4
\Longrightarrow
g_J^{CG}(t)\ge g_0/2.
```

This item closes from the existing surface once item 11 supplies `g_0>0`.

### 13. Selector-strain compatibility

The installed sufficient route is:

```math
D.7mp+D.7mo+D.7mm\Longrightarrow SSC\text{-}EP.A.
```

This item is available through the existing selector-strain sufficiency packet.

### 14. Same-strip synchronization

Use the retained family from item 1 and require shared data:

```text
same selector-good family,
same core-cap family,
same entrance-sector refinement,
same time strip,
same finite frame,
same CG reference tensor,
same selector-strain packet.
```

This closes once the retained intersection has usable mass.

### 15. D.7mq

Items 4, 5, 7, 8, 9, 10, 11, 12, and 14 fire:

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq.
```

### 16. D.7mr2

Items 13 and 15 fire:

```text
D.7mq + SSC-EP.A
=> D.7mr2.
```

### 17. RPC.3

The existing exact-potential assembly gives:

```text
D.7mr2 => RPC.3.
```

### 18. SG.4B

The existing handoff gives:

```text
RPC.3 => SG.4B.
```

## Remaining source hypotheses

The branch-local completion still depends on:

```text
retained mass after all selections,
Holder regularity or admissible density-adapted stopping,
fixed-shell equidistribution if fixed-width shells are required,
exact-potential tensor comparison for an independently fixed CG tensor,
positive-mass entrance CG simple-top selection,
same-strip synchronization with retained mass.
```