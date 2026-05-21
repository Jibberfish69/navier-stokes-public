# Jump_avg no-Field branch elimination audit

## Target

Eliminate the averaged jump branch without assuming the averaged field row on that same branch:

```math
Jump_{avg}+OriginalSmoothData
\Longrightarrow \bot
```

with the explicit side condition

```math
\text{do not assume }Field_{avg}\text{ on the }Jump_{avg}\text{ branch.}
```

## Diligence gate

Status: failed discharge / conditional no-escape bridge only for the stronger
no-field/no-pulse task.

The MCP-visible route surfaces do not currently prove a branch-native
contradiction from `Jump_avg` and original-data inputs alone. The only
non-circular route for that stronger no-field/no-pulse task is a shared-charge
contradiction for one object, and the required lower/upper pair for that same
object is not installed.

This audit does not block the CM-retained branch split: that later split is
handled by `SourcePulseCMExit.A`.

## Non-circular route

The viable no-`Field_avg` route is:

```math
Jump_{avg}
\Longrightarrow
\text{terminal }SCF_{base}\text{ threshold sequence}
\Longrightarrow
\text{positive scale-normalized density for }\nu_{SCF},
```

paired with

```math
\sum_k \operatorname{dens}_{SCF}(\nu_{SCF};Q_k)
\le C(E_0,\text{source})
```

on separated or bounded-overlap terminal same-fluid windows.

Here the final selected analytic charge is

```math
\nu_{SCF}:=\mu_D+\sum_\chi\mu_{P,\chi},
```

where `mu_D` is the dissipation carrier and `mu_P,chi` are the packet-local pressure carriers.

## Conditional theorem actually supported

Assume the following two extra theorems.

1. Component selection:

```math
SCF_{base}(Q_k)>\varepsilon_m
\Longrightarrow
\operatorname{dens}_{SCF}(\nu_{SCF};Q_k)\ge c_*>0
```

on the terminal `Jump_avg` extraction schedule after pack/geometric terms are controlled.

2. Scale-normalized Carleson control:

```math
\sum_k \operatorname{dens}_{SCF}(\nu_{SCF};Q_k)
\le C(E_0,\text{source})<\infty
```

for separated or bounded-overlap terminal same-fluid windows.

Then `Jump_avg` is eliminated without using `Field_avg`.

Proof: `Jump_avg` gives terminal windows with no positive SCF-good scale, hence an epsilon-threshold `SCF_base` concentration sequence. Component selection converts each selected bad window into a fixed lower unit of scale-normalized `nu_SCF` density. A separated terminal extraction gives

```math
\sum_k \operatorname{dens}_{SCF}(\nu_{SCF};Q_k)=\infty.
```

The scale-normalized Carleson estimate gives the same sum finite. Contradiction.

This proof uses no `Field_avg`, no `AACT.Global.noJump`, no `AVG.END.A`, and no `CAVG.J` as a contradiction theorem.

## Why the unconditional elimination fails now

The current repo surfaces supply only:

```math
Jump_{avg}
\Longrightarrow
\text{epsilon-threshold }SCF_{base}\text{ concentration sequence},
```

and the raw finite upper carrier

```math
\sum_k \nu_{SCF}(Q_k)
\le C_{atlas}\nu_{SCF}(total)<\infty
```

for bounded-overlap terminal windows.

That is not enough. First, the `SCF_base` defect can still be carried by the velocity-energy channel `E_u`; the current selected charge `nu_SCF` only sees dissipation and packet-local pressure. Thus the component-selection implication is missing:

```math
SCF_{base}\text{ threshold}
\Longrightarrow
\nu_{SCF}\text{ positive mass}.
```

Second, even if positive mass is obtained, raw finite mass controls only unweighted sums. The `Jump_avg` lower side is scale-normalized, so the upper estimate must control the same normalized density. A finite Radon measure can concentrate on shrinking terminal windows with finite raw mass while the scale-normalized weighted sum diverges.

## Excluded circular routes

The following do not eliminate the branch:

```math
Field_{avg}\text{ on the }Jump_{avg}\text{ branch},
```

```math
AACT.Global.noJump\text{ on the }Jump_{avg}\text{ branch},
```

```math
AVG.END.A\text{ as an upstream producer of }\neg Jump_{avg},
```

```math
CAVG.J\text{ as a contradiction theorem.}
```

`CAVG.J` is endpoint-face typing. It sends bad material contact or terminal good-radius collapse into `Jump_avg`; it does not by itself rule the branch out.

## Result

The requested theorem is not discharged from the current installed inputs. The strongest correct statement is:

```math
\boxed{
\text{ComponentSelect}_{SCF\to\nu}
+
\text{Carleson}_{sc}(\nu_{SCF})
\Longrightarrow
(Jump_{avg}\Rightarrow\bot)
}
```

The live burden remains:

```math
\boxed{
\text{prove component selection and scale-normalized }\nu_{SCF}\text{ Carleson control,}
}
```

or replace `nu_SCF` with a final charge that simultaneously sees every `SCF_base` threshold component and has the matching scale-normalized upper estimate.
