# R3 TailFace Hs Endpoint-Row Obstruction

## Status

Failed discharge. This note defines the missing whole-space endpoint row and tests whether it can be eliminated from the current R3 inputs.

## Endpoint face

The spatial-infinity high-frequency face is

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{0\le t<T_*}
\|\eta_R u(t)\|_{H^s(R^3)}>0,
\qquad s>5/2,
```

where `eta_R` is an exterior cutoff equal to one outside `2R` and zero inside `R`.

This face records derivative concentration escaping every compact core while the compact-core endpoint matrix remains controlled.

## Conditional row elimination

If `Tail.Hs_R3` holds, then

```math
\lim_{R\to\infty}\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s}=0,
```

so `TailFace_R3^Hs` is absent. In that case compact-core tower bounds plus exterior Hs tail control give the global continuation norm, and the R3 endpoint row is eliminated.

Likewise, if an exterior high-order dissipation ledger gives

```math
\sup_{t<T_*}\|\eta_R\Lambda^s u(t)\|_2^2\to0,
```

then `TailFace_R3^Hs` is eliminated.

## Attempted unconditional elimination

### Energy route

Exterior L2 tightness has already been proved. It does not control high frequency. Small-amplitude, high-frequency packets can have vanishing exterior L2 mass and non-vanishing or unbounded Hs norm. Therefore finite energy cannot remove `TailFace_R3^Hs`.

### Compact-core endpoint route

Compact-core tower bounds control every fixed ball after the radius is selected. `TailFace_R3^Hs` is a statement about what remains after every radius is sent to infinity. No finite compact-core cover can control this face.

### Pressure route

The pressure local/far split controls compact-core pressure readout once exterior tightness and local bounds are available. The high-order exterior face lives in the far-field differentiated velocity and pressure commutators. Those require exterior Hs information or an exterior high-order ledger. Thus the pressure route is conditional on the same missing input.

### Local smoothing route

Parabolic smoothing gives smoothness on every compact subinterval `[0,T]` with `T<T_*`. Uniform control up to `T_*` is exactly the continuation problem. Using it to remove the tail face would be circular.

## Endpoint-matrix consequence

The R3 endpoint matrix must add the row

```math
TailFace_{R^3}^{Hs}
```

beside the compact-core rows

```math
Dead,
\quad
packing\text{-}detached,
\quad
tower\text{-}blown,
\quad
Jump,
\quad
response\text{-}margin\text{-}collapse.
```

The compact-core matrix removes the old four faces together with the repaired
Part response-margin subface, or assumes the Part response-margin input before
spending the old four rows. The new tail row remains open until `Tail.Hs_R3` or
an equivalent exterior high-order ledger is proved.

## Verdict

`TailFace_R3^Hs` cannot currently be eliminated from `OriginalSmoothData_R3`. The dedicated R3 proof matrix should remain blocked at this row. The next mathematical target is a noncircular theorem proving exterior Hs tail control from whole-space original dynamics.
