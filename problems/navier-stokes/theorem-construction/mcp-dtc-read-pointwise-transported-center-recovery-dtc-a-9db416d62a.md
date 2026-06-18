# DTC.Read Pointwise Transported-Center Recovery

Status: conditional readout theorem.

## Statement

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

## Inputs

`READ.COVER` supplies a finite fixed SCF-good same-fluid cover with positive lower scale. `DTC.A_avg` supplies averaged transported-center packets on that cover. `ATD_m^\varepsilon` supplies local finite-depth regularity on the shrunken cover elements.

## Velocity tower readout

On every fixed cover element, `ATD_m^\varepsilon` and the averaged tower packet give local `H^2` control at the required rungs. In three dimensions,

```math
H^2\hookrightarrow L^\infty.
```

Thus, after shrinking inside the cover element,

```math
\sup |U_q|
```

is controlled for every `q<=N` required by the endpoint/tower packet. Finite cover summation gives the pointwise velocity tower readout.

## Forcing rung readout

The forcing rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The viscous part is supplied by the `U_{q+2}` tower readout. Hence the exact
depth condition is `m >= q+2`.

For the pressure part, use the fixed-cover local Poisson split. On a cover element `(B_i',B_i,2B_i)`, choose `\chi_i=1` on `B_i` and supported in `2B_i`, then write

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local Schauder/Calderon-Zygmund estimate gives

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The product-source carrier is supplied by `ATD_m^\varepsilon` on the fixed cover. The harmonic tail satisfies

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le
C_{q,i}\|u_0\|_{L^2(T^3)}^2.
```

Thus the pressure component of `K_q` is controlled. Combining the pressure and viscous halves gives pointwise control of `K_q` for all required `q`.

## Output

The pointwise transported-center/tower packet is available:

```math
DTC.A.
```

This feeds

```math
END.TowerAmp
\Longrightarrow
END.TowerBound.
```

## Boundary

`DTC.Read` is a readout theorem on the finite cover supplied by `READ.COVER`. It uses `DTC.A_avg` and `ATD_m^\varepsilon` as inputs and supplies the old pointwise `DTC.A`.
