# Besov / Lorentz Admissible Critical Class To CM Face

Date: 2026-05-29

Status: installed bridge for the admissible Besov/Lorentz critical subfamilies used by the R3 CM route.

## Target

For the synchronized same-fluid witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove that every admissible Besov/Lorentz terminal critical exit on `\mathcal W` lands in

```math
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

Admissible means the public critical signal is synchronized to the same ledger and falls into one of two forms:

1. a dyadic Besov branch represented by same-ledger Littlewood--Paley packets;
2. a Lorentz/amplitude branch represented by same-ledger local critical concentration.

## Besov dyadic branch

Let

```math
v=P_Q u=\chi_a^{\mathcal W}u
```

be a same-ledger localized packet and let `P_J` be a dyadic projector. For `p\ge 3`, Bernstein gives

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
\tag{BES.1}
```

Squaring `(BES.1)` shows that the critical Besov shell is controlled by the matched `H^{1/2}` shell:

```math
\left(2^{(-1+3/p)J}\|P_Jv\|_{L^p}\right)^2
\le
C2^J\|P_Jv\|_{L^2}^2.
```

By `R3HHalfWallToCMFace.A`, persistent same-ledger `H^{1/2}` shell exit lands in the Field face on retained Part plus Field-window evidence. Therefore the admissible dyadic Besov terminal branch lands in Part or Field.

For Besov summation with finite `q`, apply the same shell inequality on each selected terminal shell. Any terminal exit has a shell or finite block carrying a positive fraction of the normalized exit; that selected shell/block lands by the preceding argument.

## Lorentz amplitude branch

A Lorentz terminal exit is distribution-function concentration. If its superlevel region has no same-fluid localized carrier in `\mathcal W`, the Pack service fails:

```math
\neg Pack_Q(\mathcal W).
```

Assume Field-window evidence is present. If the selected superlevel cylinder or amplitude packet loses the same pressure-viscosity participation law, the Part face fails:

```math
\neg Part_{N,Q}(\mathcal W).
```

On retained Part plus Field-window evidence, the Lorentz amplitude branch gives local critical amplitude concentration. Selecting a same-ledger superlevel/cylinder packet yields a local `L^3` critical concentration branch. By `R3CriticalL3WallToCMFace.A`, that branch lands in the Field face.

## Conclusion

Every admissible Besov/Lorentz terminal critical exit lands in Part or Field. The bridge uses actual dyadic Bernstein control for the Besov branch and the installed local `L^3` translator for the Lorentz amplitude branch.