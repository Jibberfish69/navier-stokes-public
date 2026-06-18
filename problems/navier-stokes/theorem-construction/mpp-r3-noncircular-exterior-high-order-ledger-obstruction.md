# R3 Noncircular Exterior High-Order Ledger Obstruction

## Status

Failed discharge. This note tests whether the exterior high-order coefficient ledger can be proved from `OriginalSmoothData_R3` without spending a continuation criterion.

## Target

For `s>5/2`, the desired noncircular theorem is

```math
OriginalSmoothData_{R^3}
\Longrightarrow
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\qquad(R\to\infty),
```

where `E_s^{tail}` controls the exterior commutator, cutoff, and pressure ledgers in the high-order tail identity.

## Available inputs

The branch has:

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
```

and the exterior mass tightness theorem

```math
\sup_{t<T_*}\|u(t)\|_{L^2(|x|>R)}\to0.
```

It also has local tower/readout bounds on any fixed compact core once the local terminal cover is built.

## Exterior high-order identity

With an exterior cutoff `eta_R`, the high-order energy inequality is

```math
\frac d{dt}\|eta_R\Lambda^s u\|_2^2
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u\|_{L^\infty}\|eta_R\Lambda^s u\|_2^2
+\mathcal E_s^{tail}(R,t).
```

Here `E_s^{tail}` contains annular commutators, cutoff losses, and localized pressure commutators.

## Attempt 1: finite energy

Finite energy controls only `L^2` mass and spacetime `H^1` dissipation. It gives no control of exterior `H^s` tails for `s>5/2`. High-frequency packets can have arbitrarily small exterior `L^2` mass and arbitrarily large exterior `H^s` norm. Therefore finite energy cannot supply `E_s^{tail}->0`.

## Attempt 2: compact-core tower bounds

Compact-core tower estimates control derivatives inside fixed balls. The exterior ledger is supported where `|x|` is large. Any proof using a compact core must choose the core radius first, while `Tail.Hs_R3` requires a uniform tail statement as that radius tends to infinity. Thus compact-core control cannot supply the exterior high-order ledger.

## Attempt 3: pressure tail estimates

The Riesz pressure split plus exterior `L^2` tightness controls low-order pressure tails on compact readout balls. For high-order pressure commutators in the exterior `H^s` identity, the source is differentiated and localized in the far field. The needed bound again depends on exterior high-order norms of `u`, not only on exterior `L^2` mass. Hence pressure estimates do not close the ledger without `Tail.Hs_R3`-level input.

## Attempt 4: parabolic smoothing

For each positive time, smoothness gives finite `H^s` norm. Uniform control up
to a finite maximal endpoint is exactly the continuation question. Smoothing
does not supply the exterior tail ledger at `T_*`; the Gronwall inequality above
requires the exact coefficient condition

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty.
```

That is BKM/continuation-grade information, and it must be proved separately
from the original whole-space data before the direct-positive tail route may
spend it.

## Conclusion

The noncircular exterior high-order coefficient ledger is not derivable from the current whole-space inputs. The branch must either prove a new theorem giving exterior high-order dissipation directly from the dynamics, or treat

```math
TailFace_{R^3}^{Hs}
```

as an explicit endpoint face and provide a separate row eliminating it.

## Verdict

`R3.HighTailLedger.non_circular` remains open. The next admissible step is to add `TailFace_R3^Hs` to the R3 endpoint matrix and attempt a direct endpoint-row elimination theorem, rather than hiding the tail obstruction inside `TTU.A_R3`.
