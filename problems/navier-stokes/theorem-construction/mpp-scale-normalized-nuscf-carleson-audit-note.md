# Scale-normalized `nu_SCF` Carleson estimate — audit

## Target

Prove the upper estimate needed to eliminate `Jump_avg` without `Field_avg`:

```math
\sum_k \operatorname{dens}_{SCF}(\nu_{SCF};Q_k)
\le C(E_0,\text{source})
```

for separated or bounded-overlap terminal same-fluid windows.

The selected charge is

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

## Installed upper side

The current repo supports the raw bounded-overlap estimate

```math
\sum_k \nu_{SCF}(Q_k)
\le C_{atlas}\nu_{SCF}(total)<\infty.
```

This follows from finite dissipation, packet-local pressure integrability, finite transported atlas, and bounded overlap.

## Required upper side

The `Jump_avg` lower argument is not raw. It comes from the scale-critical threshold

```math
SCF_{base}(Q_r^\Phi)>\varepsilon_m,
```

so the lower unit is the normalized density

```math
\operatorname{dens}_{SCF}(\nu_{SCF};Q_r^\Phi)
:= r^{-\alpha}\nu_{SCF}(Q_r^\Phi)
```

with the precise exponent determined by the selected packet normalization.

Thus the contradiction needs

```math
\sum_k r_k^{-\alpha}\nu_{SCF}(Q_k)
\le C(E_0,\text{source}).
```

## Obstruction

Raw finite measure does not imply the normalized estimate. A model finite measure can satisfy

```math
\nu(Q_k):= r_k^{\alpha}
```

on disjoint shrinking windows with

```math
\sum_k \nu(Q_k)<\infty,
```

while

```math
\sum_k r_k^{-\alpha}\nu(Q_k)=\sum_k 1=\infty.
```

Bounded overlap does not fix this: it controls repeated raw counting of the same measure, not the scale weights created by the normalized `SCF_base` threshold.

## PDE input missing

To turn the raw upper carrier into the required normalized Carleson carrier, the route needs one of the following genuine estimates:

```math
\text{direct active-square / Carleson theorem for }\nu_{SCF},
```

```math
\text{active-shell amplitude gain implying the Carleson theorem},
```

```math
\text{heat-scale square-source estimate},
```

or

```math
\text{monotone flux/source dominance for normalized }\nu_{SCF}.
```

None is currently installed in the canonical surfaces.

## Verdict

`Carleson_sc(nu_SCF)` is not proved from finite energy, pressure Poisson structure, bounded pack gauge, and same-fluid geometry alone.

The no-`Field_avg` `Jump_avg` route remains conditional:

```math
Carleson_{sc}(\nu_{SCF})
+CS.SCF_{base\to\nu}
\Longrightarrow
(Jump_{avg}\Rightarrow\bot),
```

but the Carleson estimate itself is an open analytic theorem.
