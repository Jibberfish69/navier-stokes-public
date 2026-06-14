# SCFBase Pressure Defect Compatibility

## Status

Conditional compatibility note for `SCFBase.ConcentrationCompactness`.

## Local pressure split

On each cutoff chart, write

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The harmonic tail `h` is controlled by energy and kernel separation:

```math
\|\nabla^m h\|_{L^\infty(B')}
\le C_m\|u_0\|_{L^2}^2.
```

Thus harmonic pressure does not create the terminal SCF defect.

## Local pressure carrier

The local pressure defect is carried by

```math
p^{loc}=R_iR_j(\chi u_i u_j)
```

on the chart. Calderon-Zygmund estimates give

```math
\|p^{loc}\|_{L^{3/2}}
\le C_{CZ}
\|\chi u\otimes u\|_{L^{3/2}}.
```

For higher local readout norms, the same relation holds with the corresponding product-source carrier.

Therefore a terminal pressure defect is compatible with the local product-source defect:

```math
P^{loc}\text{ defect}
\Longrightarrow
u\otimes u\text{ source concentration or SCF-level pressure defect}.
```

Equivalently, the pressure part of the SCF packet remains tied to the velocity product source on the same cutoff chart.

## SCF defect typing

If the combined SCF defect reaches the epsilon threshold,

```math
SCF_{base}(Q_r^\Phi(a,T_*))>\varepsilon_m
\quad\text{at every positive scale,}
```

then the endpoint grammar gives

```math
Jump_{avg}.
```

With tower-depth and readout compatibility, the same epsilon-level defect gives

```math
tower\text{-}blown.
```

## Output

Pressure concentration does not form an independent endpoint object. It is absorbed into the same SCF defect carrier:

```math
P^{loc}\text{ defect}
\leadsto
SCF\text{ defect}
\Longrightarrow
Jump_{avg}\quad\text{or conditionally }tower\text{-}blown.
```

## Boundary

This note records pressure compatibility. It does not exclude the defect. Upstream exclusion still requires a theorem ruling out the epsilon-level SCF defect or ruling out the endpoint face it types into.
