# LocalPressureStrainDeplete.A direct loop note

## Target

Prove from original smooth data a positive stretching depletion estimate on selected terminal bad windows:

```math
\int_{Bad_N(\eta)}(\omega_j\cdot S_{<j}\omega_j)_+(t)\,dt
\le \text{viscous drain}+\text{legal losses}+o_N(1).
```

## Attempt

The vorticity equation is

```math
\partial_t\omega+u\cdot\nabla\omega-\nu\Delta\omega=S\omega.
```

The active stretching carrier is `omega dot S omega`. Pressure disappears after curl. Pressure Poisson recovery gives elliptic/Calderon-Zygmund response and source routing, while it gives no sign law for localized stretching.

The sign obstruction is direct. For

```math
S=diag(2,-1,-1),\qquad \omega=(1,0,0),
```

one has

```math
\omega\cdot S\omega=2>0,
```

with `tr S=0`. Hence incompressibility allows positive stretching.

The strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f
```

is a downstream integrability supplier on the selected route, with `FCC.C1a`
included as a cutoff input. It does not eliminate positive source production on
terminal bad windows.

## Result

`LocalPressureStrainDeplete.A from OriginalSmoothData` remains open.

The exact missing theorem is a terminal positive-stretching depletion law, beyond pressure recovery and source-supplier integrability.

## Next target

Proceed to `ActiveVorticityCoherence.A`.
