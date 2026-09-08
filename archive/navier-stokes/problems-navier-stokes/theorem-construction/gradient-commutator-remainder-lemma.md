# Gradient Commutator Remainder Lemma

## Purpose

This note isolates the exact remaining local debt inside the gradient bridge: the Euclidean commutator/high-high remainder estimate for the gradient-transfer operator.

## Local Debt Label

`Euclidean commutator remainder bound for the gradient transfer operator`

## Exact Statement To Prove

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

## Why This Is Smaller Than The Whole Bridge

The rest of the gradient package is already explicit:

- the high-frequency quantity `E_N`,
- the low-mode coefficient `\mathcal{L}_N`,
- the Gronwall continuation step once the remainder estimate holds.

So the unresolved work is not “prove the whole gradient bridge” in one jump. It is this single remainder estimate on the classical surface.

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

after extracting the strict low-mode pieces with `S_{N-4}u`, as carried out in `theorem-construction/gradient-paraproduct-reduction-lemma.md`. The spill created by replacing `S_{j-4}` with `S_{N-4}` is reduced separately by `theorem-construction/gradient-spill-reduction-lemma.md`, so that the only genuinely unresolved term becomes

```math
\sum_{j\ge N}|\mathcal{C}^{HH}_j|
\le \frac{\eta\nu}{2}D_N(t) + C_*2^{-2\delta N}.
```

The intermediate spill piece is no longer part of the live frontier: it is reduced by `theorem-construction/gradient-spill-reduction-lemma.md` to `\mathcal{L}_N(t)E_N(t)` plus a harmless dissipation fraction.

## Candidate Proof Route

1. Expand `P_j((u\cdot\nabla)u)` by Bony paraproduct and isolate `LH_j`, `HL_j`, and `HH_j`.
2. Use Bernstein and divergence-free cancellation to reduce the strict low-mode low-high and high-low pieces to the admissible coefficient `\mathcal{L}_N(t)E_N(t)` plus a harmless dissipative fraction.
3. Use the scale-barrier tail package to convert the genuinely high-high remainder into a dyadic summable error plus a small dissipative fraction.
4. Apply Young absorption to move the `\eta\nu D_N` term onto the left-hand side of the gradient-transfer inequality.

## Equivalent High-Frequency Cascade Target

The same unresolved burden can be restated at the dyadic vorticity level. After
applying `\Delta_j` to

```math
\partial_t \omega + (u\cdot\nabla)\omega = (\omega\cdot\nabla)u + \nu\Delta\omega,
```

testing against `\Delta_j\omega`, and separating strict low-mode pieces from
the genuine high-high packet, the target estimate becomes:

```math
\mathrm{cascade}_j(t)
\le
\varepsilon \nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
+
C_\varepsilon 2^{-2j}\|\nabla\omega(t)\|_{L^2_x}^2,
```

uniformly for `j` in the high-frequency regime.

If this bound held on the same classical surface, then the dyadic evolution
would close to

```math
\frac{d}{dt}\|\Delta_j\omega(t)\|_{L^2_x}^2
+
c\nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
\le
C 2^{-2j}\|\nabla\omega(t)\|_{L^2_x}^2,
```

which is exactly the kind of absorbable-plus-summable high-frequency estimate
needed to upgrade the gradient frontier to a critical-space continuation bound.

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

- strict low modes contribute the integrable coefficient `\mathcal L_N(t)E_N(t)`;
- the genuine high-high packet must satisfy the absorbable-plus-summable bound;
- only after that refinement does the dyadic damping become a theorem-level
  continuation mechanism.

## Honest Boundary

This lemma is still open. The unresolved part is no longer the whole gradient bridge or the full combined packet; it is the genuine high-high remainder estimate after the strict low-mode and spill pieces have both been reduced to the admissible coefficient surface.

## Endpoint Reformulation

The same burden can be stated as the endpoint high-frequency gain theorem
[dyadic-high-frequency-gain-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-high-frequency-gain-theorem.md):

```math
\sum_{j\ge 0} 2^{\frac32 j}\,\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)} < \infty.
```

That endpoint statement is stronger than a bare `\dot H^{1/2}` slogan and is
the exact same-surface formulation of the remaining cascade burden. If the
cascade estimate above is proved, then the HFG theorem follows by Bernstein and
the usual dyadic summation.

The more primitive shellwise formulation is recorded in
[dyadic-shell-gain-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md):

```math
\mathrm{cascade}_j(t)
\le
\varepsilon \nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
+
C_\varepsilon 2^{-2j}\|\nabla\omega(t)\|_{L^2_x}^2.
```

That shell-level inequality is the precise local object whose summation yields
the endpoint gain.

## Shell-Closed Reformulation

The proposed dyadic commutator closure splits into a local block and a tail
block. In the local regime one has the standard bound

```math
2^{\frac32 j}|C_j^{\mathrm{loc}}|_{L^2}
\lesssim
|\nabla u|_{L^\infty}A_j,
```

where `A_j = 2^{\frac32 j}\|\Delta_j\omega\|_{L^2}`. This part is not the
obstruction.

The tail block is the live frontier. The shell-closed target is the estimate

```math
2^{\frac32 j}|C_j^{\mathrm{tail}}|_{L^2}
\lesssim
2^{2j}\sum_{k\ge j}2^{-(k-j)/2}A_k,
```

which would close after summation. But this requires an additional shellwise
decay input of half-derivative strength, equivalently a bound of the form

```math
\|\Delta_k\omega\|_{L^\infty_x}
\lesssim
2^{-\frac12 k}\times(\text{controlled quantity}),
```

or any equivalent replacement that makes the tail kernel summable in `k`.
That decay is the missing gain; it is not produced by the current energy or
enstrophy surface alone.
