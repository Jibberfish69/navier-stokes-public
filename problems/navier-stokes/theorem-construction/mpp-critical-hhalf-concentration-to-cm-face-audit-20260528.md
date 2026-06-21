# MPP Critical H^{1/2} Concentration To CM Face Audit

## Status

Conditional translator/audit. Installation remains open.

## Target

Define a critical Sobolev witness on the synchronized CM ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T).
```

The proposed theorem is

```math
CriticalHHalfToCMFace.A:
\quad
CritConc_{H^{1/2}}(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\neg Field_{N,r,Q}(\mathcal W).
```

Here `CritConc_{H^{1/2}}` means that along a terminal sequence `t_m -> T_*` there are selected dyadic levels `J_m` and same-ledger packets such that the critical shell quantity

```math
\sum_{|j-J_m|\le C}2^j\|P_j u(t_m)\|_{L^2(Q_m)}^2
```

has a positive terminal lower bound or diverges after the route normalization.

## Proof spine

1. **Field-certification branch.** If the selected critical shell energy cannot be placed on the transported material packet `Q` with the retained cover and coordinate ledger, the witness lands at `\neg Pack_Q`.

2. **Part branch.** If the selected critical shell energy is located on `Q` but cannot be evolved through the same fixed-viscosity pressure/participation law, the witness lands at `\neg Part_{N,Q}`.

3. **Retained Part plus Field-window evidence branch.** Assume `Pack_Q` and `Part_{N,Q}`. The critical `H^{1/2}` signal is then attached to one same-fluid pressure-viscosity carrier.

4. **Amplitude-concentration branch.** When the critical Sobolev signal contains local amplitude concentration visible in `L^3`, the existing local `L^3` translator supplies the route: local critical concentration becomes same-ledger native source residue or selected scale-critical source-wall failure, and the installed diagnostics land that object in the CM witness grammar.

5. **Pure oscillatory branch.** When the `L^3` readout stays bounded while the selected `H^{1/2}` defect persists, the defect is high-frequency organization. Retained `Pack` preserves the material coordinate ledger. Retained `Part` preserves the pressure-viscosity participation law. The remaining terminal failure is loss of neighboring tower coherence at the selected depth/scale, hence `\neg Field_{N,r,Q}`.

Therefore the candidate class-exit statement is valid once the same-ledger dyadic extraction and Field-landing lemmas are proved.

## Physical / ontological explanation

`L^3` sees critical size. `H^{1/2}` sees critical size together with frequency placement. A terminal `H^{1/2}` defect has two possible physical readings.

The amplitude reading is ordinary critical concentration: energy piles into shrinking terminal regions. The repo already routes that through native source residue and critical source-wall objects.

The oscillatory reading is different: the flow carries increasingly fine same-scale alternation while preserving coarse amplitude. Physically this is unresolved vortex/strain texture rather than mere large velocity. In the CM ontology, retained `Pack` says the material packet still exists, retained `Part` says the same pressure-viscosity law still participates, and the oscillatory terminal defect says neighboring towers no longer agree coherently. That is the Field face.

## Required missing lemmas

1. **SameLedgerHHalfExtraction.A**: a selected terminal `H^{1/2}` defect either fails Part/Field before localization or produces a same-ledger dyadic packet on the retained carrier.

2. **HHalfOscillationFieldExit.A**: retained `Part_{N,Q} plus Field-window evidence` plus a same-ledger pure high-frequency `H^{1/2}` defect forces `\neg Field_{N,r,Q}` at the selected depth/scale.

3. **HHalfAmplitudeToL3Translator.A**: the amplitude branch of the `H^{1/2}` signal feeds the already installed local `L^3` translator without losing the witness ledger.

## Boundary

This note records a candidate class-exit route on `H^{1/2}`. It does not install the theorem. The live CM promotion gate remains Part/Field landing through the direct-live surfaces.
