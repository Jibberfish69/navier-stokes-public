# DTC.Read Completion With Pressure Poisson Component

Status: conditional pointwise transported-center readout theorem.

## Statement

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

## Velocity tower

`READ.COVER` supplies a finite fixed same-fluid cover with positive lower scale. On each cover element, `ATD_m^epsilon` supplies finite-depth local regularity and the averaged tower packet. Local Morrey readout gives pointwise bounds for each required tower rung:

```math
\sup |U_q|<\infty
\qquad (q\le N).
```

The finite cover allows summation with uniform constants.

## Forcing tower

The forcing rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The viscous component is controlled by the `U_{q+2}` readout, so the local depth includes the required `q+2` slots.

For the pressure component, use the fixed-cover pressure split. On one nested cover element `(B_i',B_i,2B_i)`, choose `chi_i=1` on `B_i` and supported in `2B_i`, and write

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local Schauder/Calderon-Zygmund estimate gives

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}
\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

`ATD_m^epsilon` supplies the fixed-cover product-source carrier by local derivative bounds and Leibniz. The harmonic tail obeys

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le
C_{q,i}\|u_0\|_{L^2(T^3)}^2.
```

Thus the pressure part of every `K_q` is pointwise controlled.

Combining the velocity, viscous, and pressure readouts yields the old pointwise transported-center packet:

```math
DTC.A.
```

## Output

`DTC.A` feeds

```math
END.TowerAmp\Longrightarrow END.TowerBound.
```

## Boundary

`DTC.Read` is a fixed-cover readout theorem. The cover comes from `READ.COVER`; the averaged packet comes from the averaged route; the pressure component comes from the local Poisson estimate.