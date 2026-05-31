# R3 Forward-Positive Wall Exhaustion

Date: 2026-05-30

Status: umbrella theorem installed for the listed native R3 CM contrapositive wall surfaces.

## Target

Let

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T)
```

be a synchronized same-fluid R3 witness ledger attached to a maximal smooth finite-energy Navier-Stokes solution on `R^3 x [0,T_*)`.

The theorem is

```math
R3ForwardPositiveWallExhaustion.A:
\quad
ForwardWall_{R3}^{listed}(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

Here `ForwardWall_{R3}^{listed}` ranges over the forward-positive terminal walls currently written in the route-local R3 CM stack:

```text
Sobolev / H^s energy hierarchy,
vorticity / BKM / strain,
Prodi-Serrin,
local L3 critical,
critical H^{1/2},
admissible Besov/Lorentz,
CKN / epsilon regularity,
compactness-rigidity,
Type-I / self-similar,
pressure route,
Fourier / dyadic cascade,
Lagrangian / deformation.
```

## Route-local inputs

The theorem consumes the following installed route-local wall-to-face theorems:

```text
R3SobolevEnergyWallToCMFace.A
R3VorticityBKMWallToCMFace.A
R3ProdiSerrinWallToCMFace.A
R3CriticalL3WallToCMFace.A
R3HHalfWallToCMFace.A
R3BesovLorentzWallToCMFace.A
R3CKNEpsilonWallToCMFace.A
R3CompactnessRigidityWallToCMFace.A
R3TypeISelfSimilarWallToCMFace.A
R3PressureWallToCMFace.A
R3FourierDyadicWallToCMFace.A
R3LagrangianDeformationWallToCMFace.A
```

The critical-norm substack is installed through

```text
CriticalNormCMExit.A
R3CriticalL3WallToCMFace.A
R3HHalfWallToCMFace.A
BesovLorentzAdmissibleCriticalToCMFace.A
```

with `H^{1/2}` repaired by

```text
SameLedgerHHalfExtraction.A
FieldFiniteDifferenceReadoutHHalf.A
FieldCoherenceControlsCriticalShell.A.
```

## Proof

Let `ForwardWall_{R3}^{listed}(\mathcal W)` hold. By definition, the terminal wall belongs to one listed forward-positive route.

If it is a Sobolev/H^s wall, apply `R3SobolevEnergyWallToCMFace.A`.

If it is a vorticity/BKM/strain wall, apply `R3VorticityBKMWallToCMFace.A`.

If it is a Prodi-Serrin wall, apply `R3ProdiSerrinWallToCMFace.A`.

If it is a local `L^3` critical wall, apply `R3CriticalL3WallToCMFace.A`.

If it is a critical `H^{1/2}` wall, apply `R3HHalfWallToCMFace.A`. This theorem now uses same-ledger extraction and the matched Field finite-difference readout, so the frequency-critical branch lands in the same Pack/Part/Field grammar.

If it is an admissible Besov/Lorentz wall, apply `R3BesovLorentzWallToCMFace.A`. The Besov dyadic branch reduces by Bernstein to the repaired `H^{1/2}` route, while the Lorentz amplitude branch reduces to the installed local `L^3` route.

If it is a CKN/epsilon-regularity wall, apply `R3CKNEpsilonWallToCMFace.A`.

If it is a compactness-rigidity wall, apply `R3CompactnessRigidityWallToCMFace.A`.

If it is a Type-I/self-similar wall, apply `R3TypeISelfSimilarWallToCMFace.A`.

If it is a pressure-route wall, apply `R3PressureWallToCMFace.A`.

If it is a Fourier/dyadic cascade wall, apply `R3FourierDyadicWallToCMFace.A`.

If it is a Lagrangian/deformation wall, apply `R3LagrangianDeformationWallToCMFace.A`.

Each case gives

```math
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

The cases exhaust `ForwardWall_{R3}^{listed}` by the definition of the listed route family. Hence the umbrella implication holds.

## CM embedding discipline

The resulting face failure is passed through

```math
ClayCMContrapositiveEmbedding.A.
```

Thus the umbrella theorem supplies a classified CM face witness on the same ledger. It preserves the route discipline that `Member(Q)` is downstream of the full Pack/Part/Field packet certificate.