# Source-control next-target solver pass `SCN.A`

## Target list and solve plan

1. `SignedWeightedLiftedRemainderCancellation.A`.
   Solve by proving signed cancellation for the true weighted lifted remainder before positive-part extraction.

2. `MonotoneShellFluxDominance.A`.
   Solve by proving a shell-flux inequality
   ```math
   F_j\le a_j(t)E_j+b_j(t)
   ```
   with active-scale integrability for `a_j` and a Carleson or square-source reserve for `b_j`.

3. `DirectActiveSquareCarleson.A`.
   Solve by proving a direct Carleson estimate for the active-square positive carrier on selected terminal windows.

4. `ActiveShellSourceNormalize.A`.
   Solve from any one of the three targets above.

5. `HeatScaleSquareSource.A`.
   Solve from `ActiveShellSourceNormalize.A`.

6. `UniformTemporalSourceIntegrability.A`, `TemporalNonAtomicSource.A`, and no-inflow Zeno assembly.
   Solve from `HeatScaleSquareSource.A`.

## Direct solving pass

### 1. Signed weighted lifted-remainder route

The unweighted dyadic exchange identity cancels paired shell transfer before one-sided weights, lifted packet reductions, cutoffs, and terminal active-window selection enter.

After those operations, the live term has principal strain form

```math
R_{j,k,\ell}^{lift}:=2^{2j}\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
```

Its sign follows active packet alignment with the local symmetric strain. Terminal active packets may align with expanding strain eigendirections. The current route has no theorem forcing eigendirection decorrelation or signed cancellation of this weighted term.

Result: `SignedWeightedLiftedRemainderCancellation.A` remains open.

### 2. Monotone shell-flux dominance route

The shell balance has form

```math
E_j'+c\nu D_j\le F_j.
```

A scalar source term can balance a short active pulse. Therefore the damping identity alone gives no monotone dominance. A proof must use the Navier-Stokes trilinear structure of `F_j`.

The available trilinear structure gives signed dyadic exchange cancellation in the unweighted global sum. One-sided terminal weights create a weighted defect with variable sign. The positive strain-alignment configuration above remains legal.

Result: `MonotoneShellFluxDominance.A` remains open.

### 3. Direct active-square Carleson route

A direct active-square estimate would absorb the positive fallback created after taking absolute values. Current estimates send the positive carrier back to the same active-square / scale-critical tree-Carleson reserve. Pressure and cutoff terms move into legal ledgers and leave the interior positive shell-flux carrier.

Result: `DirectActiveSquareCarleson.A` remains open.

## Consequence

All three source-control routes reduce to one primitive theorem:

```math
\boxed{
\text{NonlinearShellFluxControl.A: terminal active shell flux has signed cancellation, monotone dominance, or a direct active-square Carleson reserve.}
}
```

Without this primitive, the chain remains blocked at

```math
ActiveShellSourceNormalize.A
\Longrightarrow
HeatScaleSquareSource.A
\Longrightarrow
UniformTemporalSourceIntegrability.A.
```

## Next exact target

The strongest next theorem to attack is

```math
NonlinearShellFluxControl.A
```

with the sharpest concrete first subtarget

```math
ActiveEigendirectionDecorrel.A:
\quad
\text{selected terminal high-shell packets decorrelate from expanding low-strain eigendirections.}
```
