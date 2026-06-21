# R3 Critical Besov / Lorentz Wall To CM Face

Date: 2026-05-28

Status: repaired and installed for the admissible Besov/Lorentz critical subfamilies.

## Target

For a synchronized R3 witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove, for admissible critical Besov/Lorentz terminal exits,

```math
CritExit_{Besov/Lorentz}^{adm}(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

`Admissible` means the public critical signal is synchronized to the same CM witness ledger and appears in one of the following two forms:

1. a dyadic Besov branch represented by same-ledger Littlewood--Paley packets with `p\ge 3` and critical weight `-1+3/p`;
2. a Lorentz/amplitude branch represented by same-ledger local critical concentration.

## Proof

First perform same-ledger extraction. If the selected critical signal has no retained localized carrier inside `\mathcal W`, then

```math
\neg Pack_Q(\mathcal W).
```

If the selected critical signal has a carrier while its velocity, pressure, nonlinear, or viscous participation detaches from the same Navier-Stokes law, then

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume retained Field-window evidence and retained Part.

### Besov dyadic branch

Let `v=\chi_a^{\mathcal W}u` be the same-ledger localized packet. For `p\ge3`, Bernstein gives

```math
\|P_Jv\|_{L^p}
\le
C2^{3J(1/2-1/p)}\|P_Jv\|_{L^2}.
```

Multiplying by the critical Besov weight gives

```math
2^{(-1+3/p)J}\|P_Jv\|_{L^p}
\le
C2^{J/2}\|P_Jv\|_{L^2}.
```

Thus every selected admissible Besov dyadic shell is controlled by the matched `H^{1/2}` shell. By the repaired theorem `R3HHalfWallToCMFace.A`, persistent same-ledger `H^{1/2}` terminal shell exit lands in the Field face. Therefore the admissible Besov dyadic branch lands in

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W)
```

on retained Part plus Field-window evidence.

### Lorentz amplitude branch

A Lorentz terminal amplitude exit is distribution-function concentration. Same-ledger superlevel/cylinder selection either fails Pack, fails Part, or produces local critical amplitude concentration on the retained carrier. On retained Part plus Field-window evidence this is a local `L^3` critical concentration branch. By `R3CriticalL3WallToCMFace.A`, it lands in the Field face.

## Conclusion

Every admissible Besov/Lorentz terminal critical exit lands in Part or Field. The resulting Part/Field failure is passed through `ClayCMContrapositiveEmbedding.A`; the theorem supplies a classified CM class-exit witness on the same ledger.