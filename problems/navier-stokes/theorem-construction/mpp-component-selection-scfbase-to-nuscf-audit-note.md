# Component selection from `SCF_base` threshold to `nu_SCF` — audit

## Target

Prove the component-selection theorem needed by no-`Field_avg` `Jump_avg` elimination:

```math
SCF_{base}(Q_r^\Phi)>\varepsilon_m
\Longrightarrow
\operatorname{dens}_{SCF}(\nu_{SCF};Q_r^\Phi)\ge c_*>0,
```

on the terminal `Jump_avg` extraction schedule, after pack/geometric terms are controlled.

The selected charge is

```math
\nu_{SCF}:=\mu_D+\sum_\chi\mu_{P,\chi}.
```

## Decomposition

The base packet has the split

```math
SCF_{base}=E_u+D_u+P_{loc}+G_\Phi.
```

`G_Phi` is geometric and is controlled by pack/gauge stabilization. The selected charge `nu_SCF` sees `D_u` and packet-local pressure `P_loc`. It does not see the velocity-energy channel `E_u`.

## Attempt

If the threshold defect satisfies

```math
D_u(Q_r^\Phi)+P_{loc}(Q_r^\Phi)\ge c\varepsilon_m,
```

then component selection is immediate:

```math
\operatorname{dens}_{SCF}(\nu_{SCF};Q_r^\Phi)\ge c_*.
```

This is the part of the route that works.

## Failure channel

The remaining alternative is

```math
E_u(Q_r^\Phi)\ge c\varepsilon_m,
```

while `D_u` and `P_loc` are small. The current theorem surfaces do not contain a Caccioppoli, reverse-Poincare, pressure-Poisson, or active-shell estimate converting such an `E_u` terminal threshold packet into `D_u` or `P_loc` mass on the same terminal schedule.

Finite energy does not close the gap. It gives global integrability and a.e. smallness after shrinking at good points, but it does not exclude a terminal sequence of shrinking windows whose scale-normalized velocity-energy component stays above threshold while the final charge `nu_SCF` remains too small to carry the lower side.

## Enlarged-charge check

One could define

```math
\nu_{SCF}^{+}:=E_u+\mu_D+\sum_\chi\mu_{P,\chi}.
```

This would formally solve component coverage, but it does not solve branch elimination. The `E_u` term is scale-critical and window-normalized; the current repo does not provide an additive finite measure or scale-normalized Carleson upper estimate for repeated terminal `E_u` threshold packets. Thus the enlarged charge only moves the obstruction from lower selection to upper control.

## Verdict

`CS.SCF_to_nu` is not installed.

The valid partial theorem is:

```math
(D_u+P_{loc})\text{ carries the }SCF_{base}\text{ threshold}
\Longrightarrow
\nu_{SCF}\text{ carries a positive lower unit.}
```

The missing theorem is exactly one of:

```math
E_u\text{ terminal threshold}\Longrightarrow D_u/P_{loc}\text{ terminal mass},
```

or

```math
\nu_{SCF}^{+}\text{ has the same scale-normalized upper control required by the no-escape argument.}
```

Therefore `Jump_avg` is still not eliminated without `Field_avg`.
