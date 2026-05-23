# MPP SameLedgerHeatAncestorLocalization.A Proof

Date: 2026-05-23

Status: theorem proof for the heat-side ledger subburden inside the CM-facing
public `L^3` translator.

## Statement

On the retained same-ledger heat branch,

```math
\boxed{SameLedgerHeatAncestorLocalization.A}
```

holds:

```math
\text{terminal local }L^3\text{ mass of a heat evolution}
\Longrightarrow
\text{same-ledger earlier critical slice}
\vee
\neg Pack_Q.
```

## Proof

Let

```math
v_m(t)=e^{(t-s_m)\nu\Delta}f_m
```

be the linear heat part on the selected terminal ledger, and suppose a selected
terminal cylinder `Q_m` of radius `ell_m` carries critical mass

```math
\ell_m^{-2}\int_{Q_m}|v_m|^3\,dxdt\ge c_0>0 .
```

Choose the same critical dual atom as in the Duhamel response proof:

```math
\psi_m
=
\ell_m^{-2/3}
{|\eta_m v_m|\eta_m v_m\over \|\eta_m v_m\|_{L^3(Q_m)}^2},
```

where `eta_m` is supported on the selected terminal cylinder and equals one on
the inner terminal cylinder. Then

```math
\int_{Q_m}v_m\cdot\psi_m\,dxdt\ge c_1>0.
```

Push this spacetime test backward by the adjoint heat flow:

```math
\Psi_m(s_m)
=
\int_{s_m}^{t_m}
e^{(t-s_m)\nu\Delta}\psi_m(t)\,dt .
```

Heat self-adjointness gives

```math
\int_{Q_m}v_m\cdot\psi_m\,dxdt
=
\int f_m\cdot\Psi_m(s_m)\,dx .
```

Now split `\Psi_m(s_m)` into the same-ledger parent ball of radius `C ell_m`
and its complement.

If the complement carries a fixed fraction of the pairing, the backward heat
mass that produced the terminal atom came from outside the selected parent
ledger. That is exactly loss of retained carrier localization, hence
`\neg Pack_Q`.

On the retained `Pack_Q` branch, the complement is small. The parent part of
`\Psi_m(s_m)` is an `L^{3/2}` atom at the earlier parent scale, by heat-kernel
positivity and `L^{3/2}` contraction. Therefore

```math
\int_{B_{C\ell_m}(x_m)} |f_m|^3\,dx\ge c_2>0.
```

This is the same-ledger earlier critical slice. Thus terminal heat mass either
has an earlier same-ledger critical ancestor or has already selected the Pack
face.

This proves `SameLedgerHeatAncestorLocalization.A`. `\square`

## Consequence

The heat-side reduction from
`mpp-heat-linear-remainder-no-terminal-critical-mass-direct-attempt-20260519.md`
now gives

```math
HeatLinearRemainderNoTerminalCriticalMass.A.
```

Together with the installed nonlinear half

```math
DuhamelInverseNativeSourceLocalization.A,
```

the May 19 split closes the local `L^3` native conversion:

```math
\boxed{CriticalL3ConcentrationToNativeSourceResidue.A.}
```

Under retained `Pack_Q` and `Part_{N,Q}`, the installed native-residue and
selected scale-critical-source-wall landings give

```math
\boxed{RetainedPackPartCriticalL3FieldExit.A}
```

and therefore the local `L^3` case of
`PublicCriticalExitToCMFace_X.A`.

This is only the CM-facing local `L^3` translator. It is not a public
regularity discharge, not a generic all-critical-class theorem, and not a
replacement for `TerminalCMNoExit.A / NoGenuineCMExit.A`.
