# Jump_avg to SCFBase charge lower accumulation — obstruction

## Target

Use the canonical upper-carrier charge from the previous note,

```math
\nu_{SCF}:=\mu_D+\sum_\chi\mu_{P,\chi},
\qquad
D_k^{SCF}:=\nu_{SCF}(Q_k),
```

and prove lower accumulation from `Jump_avg`:

```math
Jump_{avg}\Longrightarrow
\sum_kD_k^{SCF}=\infty
\quad\text{or}\quad
D_k^{SCF}\ge d_0>0\text{ on a separated terminal schedule.}
```

## Attempt

`Jump_avg` supplies terminal loss of a uniform positive `SCF_base` good radius. In radius language,

```math
Jump_{avg}(T)
\Longleftrightarrow
\forall T'\subset T\text{ terminal},\quad
\inf_{(a,t)\in T'}r_{good}(a,t)=0.
```

The intended proof target identifies the cause of this radius collapse with
analytic concentration in the dissipation/local-pressure carrier `nu_SCF`. It
then requires a terminal compactness theorem to extract nonzero terminal
`nu_SCF` mass and a separation theorem to turn that nonzero mass into a lower
accumulation schedule.

## Obstruction

The implication is currently unproved. The definition of `Jump_avg` records terminal failure of the full `SCF_base` coherence radius. The charge `nu_SCF` records only the analytic dissipation and local-pressure components:

```math
\mu_D=|\nabla u|^2dxdt,
\qquad
\mu_{P,\chi}=|p^{loc}_\chi|^{3/2}dxdt.
```

The current surfaces do not force the `SCF_base` failure to occur in these analytic components. Failure can still be assigned, at the level of available definitions, to geometric or field-side degeneration unless an additional component-selection theorem is installed.

A formal obstruction model is therefore possible: terminal good-radius collapse holds, so `Jump_avg` holds, while the analytic measure `nu_SCF` has zero terminal lower density along the selected windows. This satisfies the present branch definitions and violates the desired lower bound.

## Required missing theorem

The next necessary theorem is a component-selection / moving-concentration compactness result:

```math
Jump_{avg}+Pack.TTU+SCF_{base}\text{ failure}
\Longrightarrow
\exists\text{ terminal defect carried by }\nu_{SCF}.
```

Equivalently:

```math
\text{failure of }SCFBase.Modulus
\Longrightarrow
\text{a nonzero terminal defect carried by }\mu_D+\sum_\chi\mu_{P,\chi}.
```

After that theorem, a second theorem must separate the terminal mass into a lower accumulation schedule.

## Result

Lower accumulation for the same `nu_SCF` charge is open. The finite upper carrier is installed, but the lower side is unavailable from the current definitions.

## Boundary

This note is a failed attempt for the lower-bound half of the `Jump_avg` no-escape route. It preserves the prior solved upper-carrier lemma and narrows the next proof target to `MovingConcentration.Compactness` plus component selection.
