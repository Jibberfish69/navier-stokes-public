# MPP Critical Norm CM Exit Unification

## Status

Installed unification bridge for the local critical-norm CM-exit layer.

## Statement

Let

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T)
```

be a synchronized CM witness ledger. Define

```math
CriticalNormSignal(\mathcal W)
:=
CritConc_{L^3}(\mathcal W)
\vee
CritConc_{H^{1/2}}(\mathcal W).
```

Then

```math
CriticalNormCMExit.A:
\quad
CriticalNormSignal(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Branch I: L3 amplitude-critical route

The `L^3` branch reads terminal amplitude concentration. Under retained `Pack_Q` and `Part_{N,Q}`, the installed local translator sends critical `L^3` concentration to a same-ledger native source residue or selected scale-critical source-wall failure. The installed route-local theorem is

```math
R3CriticalL3WallToCMFace.A.
```

Hence the `L^3` branch lands in the Pack/Part/Field face grammar.

## Branch II: Hhalf frequency-critical route

The `H^{1/2}` branch reads frequency-weighted critical shell energy:

```math
\|u\|_{\dot H^{1/2}}^2
c_{LP}\sum_J2^J\|P_Ju\|_2^2
\le
\|u\|_{\dot H^{1/2}}^2
\le
C_{LP}\sum_J2^J\|P_Ju\|_2^2.
```

The repaired route uses:

```text
SameLedgerHHalfExtraction.A
FieldFiniteDifferenceReadoutHHalf.A
FieldCoherenceControlsCriticalShell.A
R3HHalfWallToCMFace.A
```

The extraction theorem sends failed material localization to `\neg Pack_Q`, failed pressure-viscosity ancestry to `\neg Part_{N,Q}`, and the retained Pack+Part branch to a same-ledger dyadic packet. The matched Field finite-difference readout then controls the selected shell. Persistent terminal shell energy therefore lands in the Field face.

## Admissible Besov/Lorentz extension

The admissible critical Besov/Lorentz subfamilies are handled by

```math
BesovLorentzAdmissibleCriticalToCMFace.A.
```

The Besov dyadic branch reduces by Bernstein to the repaired `H^{1/2}` shell route. The Lorentz amplitude branch reduces by same-ledger superlevel/cylinder selection to the installed local `L^3` route.

## Unified role

The local critical-norm mechanisms are distinct:

```math
L^3: \text{amplitude-critical concentration},
```

```math
H^{1/2}: \text{frequency-critical dyadic organization}.
```

Both mechanisms enter the same CM face grammar:

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\forall\rho>0\,\neg Field_{N,\rho,Q}.
```

## CM embedding discipline

The face disjunction is passed through

```math
ClayCMContrapositiveEmbedding.A.
```

Thus `Member(Q)` remains downstream of the full Pack/Part/Field packet certificate, and the critical-norm bridge supplies a classified CM face witness on the same ledger.
