# R3 Pressure Route Wall To CM Face

Date: 2026-05-28

Status: discharged as a route-local CM Part/Field-classification theorem.

## Target

For a synchronized R3 witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove

```math
PressureWall(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Proof

A pressure-route terminal wall occurs when the local Poisson pressure, harmonic/far-field pressure tail, or pressure-source readout prevents the forward route from producing the continuation packet.

First test carrier placement. If the pressure source region, harmonic tail, or far-field contribution cannot be assigned to the selected same-fluid localized R3 carrier Q with retained ancestry and tightness, then the carrier service fails:

```math
\neg Pack_Q(\mathcal W).
```

Assume Pack_Q survives. The pressure must remain the pressure of the same Navier-Stokes solution. The local Poisson equation, harmonic tail, velocity source, viscosity, and time ancestry must all remain in the same participation ledger. If this pressure law detaches from the selected packet, then

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume Part_{N,Q} plus Field-window evidence survive. The remaining pressure wall is a failure of pressure-source readout at positive scale. Since the carrier and the same pressure law both survive, this failure is exactly loss of positive-scale coherent field control:

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

If some Field_{N,rho,Q} survives, the local Poisson pressure and admissible far-field harmonic tail are controlled in the same terminal packet. The continuation readout survives, contradicting the pressure terminal wall.

Therefore every pressure-route terminal wall lands in Part or Field.

## CM consequence

The Part/Field failure gives

```math
Exit(Q):=\neg Member(Q).
```