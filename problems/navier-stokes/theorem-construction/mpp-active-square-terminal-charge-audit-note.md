# Active-square / active-shell terminal charge audit

## Target

Prove a direct terminal estimate strong enough to eliminate `Jump_avg` without assuming `Field_avg`:

```math
\sum_k \operatorname{dens}_{SCF}(\mathcal Q;Q_k)
\le C(E_0,\text{source})
```

for a final charge `mathcal Q` that sees every `SCF_base` threshold component on separated terminal same-fluid windows. The candidate charges are `nu_SCF` and the enlarged `nu_SCF^+` including `E_u`.

## Required mechanism

A successful theorem would need at least one of:

```math
\text{direct active-square Carleson control},
```

```math
\text{active-shell amplitude gain},
```

```math
\text{heat-scale square-source estimate},
```

or

```math
\text{monotone terminal quantity whose dissipation dominates normalized charge density.}
```

## Attempt and obstruction

The local energy inequality supplies finite energy and dissipation, and the pressure Poisson structure supplies packet-local pressure integrability. These give raw finite carriers. They do not give the shrinking-window weights needed by the normalized terminal density.

For `nu_SCF`, the route already fails component selection when the threshold sits in `E_u`. For `nu_SCF^+`, component coverage is repaired but the upper estimate becomes harder: one must control normalized repeated `E_u` threshold packets across terminal windows. Finite `L_t^\infty L_x^2` and finite spacetime integrability do not prevent a terminal sequence with finite raw mass and divergent normalized active-square sum.

No installed surface supplies the closing input: a monotone quantity, square-source estimate, or active-shell gain with the same terminal normalization.

## Verdict

The active-square / active-shell theorem is not proved from the installed inputs. This is the hard stop for the current no-`Field_avg` `Jump_avg` elimination attempt.

The strongest correct route statement remains conditional:

```math
\boxed{
CS.SCF_{base\to\mathcal Q}
+
Carleson_{sc}(\mathcal Q)
\Longrightarrow
(Jump_{avg}\Rightarrow\bot),
}
```

where `mathcal Q` must either be `nu_SCF` plus an `E_u` conversion theorem, or an enlarged charge `nu_SCF^+` plus the same scale-normalized Carleson upper control.

No `Field_avg` was assumed in this audit. No `AVG.END.A` or `AACT.Global.noJump` was used as an upstream branch eliminator.
