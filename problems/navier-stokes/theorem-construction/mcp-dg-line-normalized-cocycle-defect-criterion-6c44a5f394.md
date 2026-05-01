# DG-Line Normalized Cocycle Defect Criterion

## Status

Conditional theorem.

The target is

```math
\|E_H\|_{op}
\le
(\epsilon_A/2)\,\sigma_2(H_J)^2/\sigma_1(H_J).
```

Assume on the retained family that

```math
\sigma_2(H_J)\ge s_*>0,
\qquad
\sigma_1(H_J)
\le S_*<\infty.
```

Then

```math
\sigma_2(H_J)^2/\sigma_1(H_J)
\ge
s_*^2/S_*.
```

Therefore the normalized defect target follows from the absolute bound

```math
\|E_H\|_{op}
\le
(\epsilon_A/2)s_*^2/S_*.
```

This supplies the source estimate needed for the DG-Line relative Gramian error packet.

## Source estimates retained

```text
upper singular-value bound sigma_1(H_J)<=S_*,
lower singular-value floor sigma_2(H_J)>=s_*,
absolute reduced cocycle defect bound
||E_H||_op <= (epsilon_A/2)s_*^2/S_*.
```