# Far pressure summability — conditional reduction note

Target: prove the far-tail term in the pressure-flux supplier:

`sum_k 2^((2a-1)k) int F_k ||u||_{L2(A_k)} < infinity`.

The accessible `PFlux.Supplier` closure treats this as a named input. A standard far-pressure route uses Calderon-Zygmund kernel decay away from the annulus, energy control of the remote velocity factors, and the summability of the annular weights. Under that far-tail estimate, the supplier line closes directly.

Result: far pressure summability is conditionally reduced to the kernel-decay far-tail theorem for `F_k`. This pass did not verify the underlying far-tail theorem line by line from an accessible source surface, so the supplier remains conditional at this row.