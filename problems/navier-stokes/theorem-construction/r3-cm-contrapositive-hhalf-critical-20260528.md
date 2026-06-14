# R3 Critical H^{1/2} Wall To CM Face

Date: 2026-05-28

Status: repaired and installed as a route-local CM face-classification theorem.

## Target

For a synchronized R3 witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove

```math
CritExit_{H^{1/2}}(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Installed cells used

1. `SameLedgerHHalfExtraction.A`: a terminal critical `H^{1/2}` shell either lands at `\neg Pack_Q`, lands at `\neg Part_{N,Q}`, or becomes a same-ledger localized dyadic packet.
2. `FieldFiniteDifferenceReadoutHHalf.A`: the actual `Field_{N,r,Q}` service supplies the matched finite-difference/tower-coherence modulus at `r_J=2^{-J}`.
3. `FieldCoherenceControlsCriticalShell.A`: that matched modulus controls the critical shell quantity `2^J\|P_Jv\|_2^2`.
4. `R3CriticalL3WallToCMFace.A`: the amplitude branch of critical concentration lands in the Field face through the local `L^3` translator.

## Proof

Let `CritExit_{H^{1/2}}(\mathcal W)` hold. Select a terminal sequence `t_m\to T_*` and dyadic levels `J_m` carrying the critical shell defect.

Apply `SameLedgerHHalfExtraction.A`. If the shell lacks a compatible retained material chart or the selected scale cannot be synchronized with the packet atlas, then

```math
\neg Pack_Q(\mathcal W).
```

If the localized shell cannot participate in the same fixed-viscosity pressure law on `Q`, then

```math
\neg Part_{N,Q}(\mathcal W).
```

It remains to treat the retained Pack+Part branch. In that branch the selected shell is a same-ledger dyadic packet

```math
v_m=\chi_{a_m}^{\mathcal W}(t_m)u(t_m),
\qquad J_m,
\qquad r_m:=2^{-J_m}.
```

Split the critical `H^{1/2}` signal into amplitude and pure oscillatory alternatives.

In the amplitude alternative, the critical shell carries local critical size visible through the installed local `L^3` translator. By `R3CriticalL3WallToCMFace.A`, retained Pack+Part sends that terminal concentration to the Field face.

In the pure oscillatory alternative, coarse amplitude remains controlled while the selected half-derivative shell persists. Suppose some positive Field service survives at the matched scale. By `FieldFiniteDifferenceReadoutHHalf.A`, `Field_{N(J_m),r_m,Q}` supplies

```math
r_m^{-1}\fint_{c_hr_m\le |h|\le C_hr_m}\|v_m(\cdot+h)-v_m(\cdot)\|_2^2\,dh
\le
C\mathfrak C_{N(J_m),r_m,Q}(\mathcal W).
```

By `FieldCoherenceControlsCriticalShell.A`, this gives

```math
2^{J_m}\|P_{J_m}v_m\|_2^2
\le
C\mathfrak C_{N(J_m),r_m,Q}(\mathcal W).
```

Thus a retained positive Field service controls the same shell quantity selected by the terminal `H^{1/2}` defect. Persistent terminal shell energy beyond the Field budget contradicts retained Field. Hence, on retained Pack+Part,

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

The terminal `H^{1/2}` wall is exhausted by Pack, Part, or Field.

## CM embedding

The derived face failure is passed through `ClayCMContrapositiveEmbedding.A`, yielding the route conclusion as a classified CM class-exit witness for the same ledger.
