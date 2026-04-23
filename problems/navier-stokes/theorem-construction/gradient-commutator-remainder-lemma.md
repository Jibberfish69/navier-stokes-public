# Gradient Commutator Remainder Lemma

## Purpose

This note isolates the exact Euclidean commutator/high-high remainder estimate
that used to be the final local debt inside the gradient bridge.

The route-control surfaces now treat this file as part of the intended
gradient-side packet stack feeding
`gradient-cubic-tail-absorption-lemma.md`. Under the stricter audit standard it
should be read as an exact decomposition target, not as an independently
discharged proof object.

## Local Debt Label

`Euclidean commutator remainder bound for the gradient transfer operator`

## Exact Statement Used In The Final Package

On the classical Euclidean theorem surface, prove that for some `\eta \in (0,1)`, `\delta > 0`, and `C_* > 0`,

```math
\sum_{j\ge N}2^{2j}|\mathcal{C}_j(t)|
\le \eta\nu D_N(t) + C_*2^{-2\delta N}
```

for almost every `t`, where

```math
D_N(t) := \sum_{j\ge N}2^{4j}\|P_j u(t)\|_{L^2_x}^2
```

and `\mathcal{C}_j(t)` is the commutator/high-high remainder in the Bony decomposition of `P_j((u\cdot\nabla)u)`.

## Why This Was Smaller Than The Whole Bridge

The rest of the gradient package is already explicit:

- the high-frequency quantity `E_N`,
- the low-mode coefficient `\mathcal{L}_N`,
- the Gronwall continuation step once the remainder estimate holds.

So this note no longer carries an unresolved theorem burden by itself. It
records the exact remainder estimate that the final Euclidean gradient package
reduces and absorbs on the classical surface.

## Exact Dyadic Decomposition

For each `j \ge N`, test the frequency-localized equation against `-\Delta P_j u` and write

```math
2^{2j}\left\langle P_j((u\cdot\nabla)u), -\Delta P_j u\right\rangle
= LH_j + HL_j + HH_j,
```

where:

- `LH_j` is the low-high paraproduct contribution, with low mode in the transport coefficient and high mode in the differentiated factor;
- `HL_j` is the high-low commutator contribution where differentiation lands on the lower mode;
- `HH_j` is the high-high remainder. The quantity `\mathcal{C}_j` is the remainder bundle built from these `HH_j` terms after cancelling the already-controlled `LH_j` and `HL_j` pieces.

The desired reduction is

```math
\sum_{j\ge N}|LH_j^{strict}| + \sum_{j\ge N}|HL_j^{strict}|
\le C\,\mathcal{L}_N(t)\,E_N(t) + \frac{\eta\nu}{2}D_N(t),
```

after extracting the strict low-mode pieces with `S_{N-4}u`, as carried out in `theorem-construction/gradient-paraproduct-reduction-lemma.md`. The exact shell algebra there currently produces the stronger low-mode strain coefficient `\Lambda_N`, so the displayed `\mathcal L_N` reduction remains a live theorem target rather than a discharged local fact. The threshold-local spill collar created by replacing `S_{j-4}` with `S_{N-4}` is isolated separately by `theorem-construction/gradient-spill-reduction-lemma.md`, and the lifted high-side remainder is kept distinct from the genuine high-high packet. The genuine high-high component is therefore only one part of the repaired unresolved high-side bundle:

```math
\sum_{j\ge N}|\mathcal{C}^{HH}_j|
\le \frac{\eta\nu}{2}D_N(t) + C_*2^{-2\delta N}.
```

The intermediate spill piece is no longer merged blindly into the high-high
term. On the repaired gradient-side route it is isolated as its own upgraded
packet on the augmented coefficient surface
`\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp`, where `\Lambda_N` is the strict
low-mode strain core and `\Theta_N^\sharp` is the finite threshold-collar
coefficient. That upgrade removes the old coefficient mismatch, but the full
proposition-level high-side propagation is still open.

## Closure Route

1. Expand `P_j((u\cdot\nabla)u)` by Bony paraproduct and isolate `LH_j`, `HL_j`, and `HH_j`.
2. Resolve the strict low-mode low-high and high-low pieces either by recovering the declared coefficient `\mathcal{L}_N(t)E_N(t)` through additional low-mode strain control, or by rewriting the gradient interface on the stronger fixed-cutoff/finite-collar coefficient surface `\widetilde\Lambda_N^\sharp(t)E_N(t)` whose strict low-mode core `\Lambda_N(t)E_N(t)` is currently produced by the shell algebra.
3. Use the scale-barrier tail package to convert the genuinely high-high remainder into a dyadic summable error plus a small dissipative fraction.
4. Apply Young absorption to move the `\eta\nu D_N` term onto the left-hand side of the gradient-transfer inequality.

## Honest Form Of The Dyadic Gap

The crude heuristic inequality

```math
\frac{d}{dt}\|\Delta_j\omega\|_{L^2_x}^2
+
2\nu 2^{2j}\|\Delta_j\omega\|_{L^2_x}^2
\le
C\|\nabla u\|_{L^\infty_x}\|\Delta_j\omega\|_{L^2_x}^2
+
\mathrm{cascade}_j
```

is not by itself a discharge, because the coefficient `\|\nabla u\|_{L^\infty}`
is exactly the critical quantity that remains uncontrolled globally.

So the mathematically correct same-surface target is not “high frequencies beat
`\|\nabla u\|_{L^\infty}` for large `j`.” The correct target is the refined
low/high decomposition already encoded in the gradient-transfer object:

- strict low modes are the live coefficient frontier on the gradient surface;
- the genuine high-high packet must satisfy the absorbable-plus-summable bound;
- only after that refinement does the dyadic damping become a theorem-level
  continuation mechanism.

## Honest Boundary

This note no longer carries the live theorem blocker by itself. The strict
low-mode and spill reductions remain useful exact decomposition steps, and the
high-high packet is localized here for downstream absorption. Under the stricter
audit standard, however, that packet does not yet count as fully discharged.

So the honest current status is:

- decomposition target preserved here;
- theorem-primary absorption target recorded downstream in
  `gradient-cubic-tail-absorption-lemma.md`;
- no additional shell-gain or endpoint-gain theorem is needed for the active
  Route B package.

## Historical Exploratory Reformulations

Older endpoint-gain and shell-gain reformulations are archived provenance only.
They remain useful as search history, but they are not active theorem blockers
and they do not outrank the final Euclidean paraproduct / spill / cubic-tail
absorption chain.
