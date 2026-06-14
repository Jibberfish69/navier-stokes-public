# `E_u` replacement charge audit

## Target

Repair the no-`Field_avg` `Jump_avg` route by either:

```math
E_u\text{ terminal threshold}\Longrightarrow D_u/P_{loc}\text{ terminal mass},
```

or by replacing `nu_SCF` with a charge that includes `E_u` and still has the required scale-normalized upper control.

## Candidate enlarged charge

The natural enlarged object is

```math
\nu_{SCF}^{+}:=E_u+\mu_D+\sum_\chi\mu_{P,\chi}.
```

It sees every analytic component of the component split

```math
SCF_{base}=E_u+D_u+P_{loc}+G_\Phi,
```

once pack/gauge control removes the geometric contribution `G_Phi`.

## What this fixes

If `SCF_base` threshold concentration is carried by `E_u`, then `nu_SCF` may miss it, but `nu_SCF^+` sees it. Thus the enlarged charge formally fixes the component-selection defect.

## What this breaks

The no-escape contradiction requires the same object to satisfy a normalized upper estimate on separated terminal windows:

```math
\sum_k \operatorname{dens}_{SCF}(\nu_{SCF}^{+};Q_k)
\le C(E_0,\text{source}).
```

The current energy class does not provide this. Finite energy supplies global `L_t^\infty L_x^2` and `L_{t,x}^{10/3}` bounds, but repeated shrinking terminal windows can have finite raw mass while their scale-normalized densities have divergent sum. Time-slice energy also cannot be counted across infinitely many terminal windows without a monotone or Carleson mechanism.

Thus `nu_SCF^+` has component coverage but no installed matching upper theorem.

## Conversion route check

The alternative conversion theorem would be:

```math
E_u(Q_k)\ge c\varepsilon_m
\Longrightarrow
D_u(Q_k)+P_{loc}(Q_k)\ge c'\varepsilon_m
```

on the terminal schedule. The repo does not currently contain a reverse Caccioppoli, active-shell amplitude gain, heat-scale square-source, or monotone flux theorem strong enough to force this conversion.

## Verdict

The replacement-charge route does not eliminate `Jump_avg` from the installed inputs.

The exact remaining analytic wall is unchanged in sharper form:

```math
\boxed{
\text{active-square / active-shell / heat-scale square-source control for the normalized terminal SCF charge.}
}
```

Without that scale-gain theorem, neither `nu_SCF` nor `nu_SCF^+` can support the no-`Field_avg` contradiction.
