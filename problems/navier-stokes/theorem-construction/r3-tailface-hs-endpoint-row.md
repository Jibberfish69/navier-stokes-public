# TailFace_R3^Hs Endpoint Row

## Status

Conditional theorem note.

## Row definition

For `s>5/2`, define the high-frequency spatial-infinity endpoint face by

```math
TailFace_{R3}^{Hs}:
\limsup_{R\to\infty}\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s(R^3)}>0.
```

This row records exterior high-order derivative concentration at spatial infinity.

## Theorem

If `Tail.Hs_R3` holds, then `TailFace_R3^Hs` is eliminated.

```math
Tail.Hs_{R3}\Longrightarrow \neg TailFace_{R3}^{Hs}.
```

## Proof

`Tail.Hs_R3` is exactly the assertion

```math
\lim_{R\to\infty}\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s(R^3)}=0.
```

This is the negation of the positive limsup defining `TailFace_R3^Hs`. Therefore the endpoint row is removed once exterior `H^s` tail tightness is supplied.

## Matrix placement

This row is independent of the compact-core endpoint faces `Dead`, `packing-detached`, `tower-blown`, and `Jump`. Those rows classify failures on retained finite packets. `TailFace_R3^Hs` classifies high-order escape along the noncompact end of `R^3`.

## Boundary

This note eliminates the row under `Tail.Hs_R3`. The theorem `OriginalSmoothData_R3 => Tail.Hs_R3` remains conditional on `ExtCascade_s_R3`.