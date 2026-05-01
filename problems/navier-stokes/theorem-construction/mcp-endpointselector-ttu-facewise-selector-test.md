# EndpointSelector.TTU Facewise Selector Test

## Status

Failed for fixed finite label selectors. Conditional cell-selector route identified.

## Face 1: tower-blown

`tower-blown` means

```math
\mathfrak A_{N,Q}(t)
```

escapes every finite bound. Thus for every threshold `M`, there is a time `t_M` and active point `x_M\in Q_{t_M}` with tower amplitude above `M`.

If a fixed finite cell cover is already present, pigeonhole gives one cell whose cell-supremum tower amplitude is unbounded. This yields a finite cell selector.

It does not give a fixed finite label selector. The high tower point may move through infinitely many labels inside that cell.

## Face 2: packing-detached

`packing-detached` means

```math
\Gamma_{pack,Q}(t)=\sup_{a\in A_Q}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}
```

escapes every finite bound. For each threshold, a label can be selected. The selected label may vary with the threshold.

A fixed finite cell decomposition can carry an unbounded cell-supremum pack gauge by pigeonhole. A fixed finite label selector requires an additional theorem.

## Face 3: Jump

`Jump` means loss of every positive terminal field or SCF-good scale. With a fixed finite cell cover, if every cell retained a positive scale, the minimum over finitely many cells would give a positive global scale. Hence Jump forces at least one bad cell.

This gives a finite cell selector. It does not give a fixed finite label selector because the bad material point can move through a continuum of labels inside the bad cell.

## Conclusion

The facewise selector theorem splits into two forms.

Finite label form:

```math
EndpointSelector.TTU_{label}
```

fails in the continuum active-label setting.

Finite cell form:

```math
EndpointCellSelector.TTU:
\text{endpoint face occurs}
\Longrightarrow
\text{a fixed finite cover cell carries the same face}
```

is viable once a fixed finite-complexity cell cover is supplied.

## Next target

The correct selector target is therefore

```math
FiniteComplexity.TTU
```

or

```math
EndpointCellSelector.TTU
```

rather than a bare finite label selector theorem.