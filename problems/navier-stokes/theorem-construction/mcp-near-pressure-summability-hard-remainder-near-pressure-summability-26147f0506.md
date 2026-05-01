# Near pressure summability — hard remainder record

Target: prove the near term used by `PFlux.Supplier`:

`sum_k 2^((2a-1)k) int ||u tensor u||_{L2(A_k^*)} ||u||_{L2(A_k)} < infinity`.

A direct Hölder expansion gives `||u tensor u||_{L2(A_k^*)} <= ||u||_{L4(A_k^*)}^2`, so the target follows from a weighted annular `L4` source estimate paired with the annular `L2` velocity factor.

The accessible pressure-flux closure surface names this as a required near summability input. A previous read of the weighted annular `L4` source surface was blocked by the connector in this session, so the line-by-line proof cannot be verified from visible text here.

Result: near pressure summability is reduced to the weighted annular `L4` source theorem. It remains a hard pressure/source remainder for this pass.