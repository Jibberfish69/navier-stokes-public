# Gradient Commutator Remainder Lemma

## Purpose

This note records the proposition-level split of the gradient commutator
remainder after the high-high packet correction. The genuine high-high slot is
now repaired by the enstrophy half-tail inequality stated below. The remaining
theorem work sits in the strict low-mode coefficient and threshold-spill collar
slots.

## Setup

For each `j\ge N`, test the frequency-localized equation against `-\Delta\Delta_j u` and decompose

```math
\left\langle \Delta_j((u\cdot\nabla)u),-\Delta\Delta_j u\right\rangle
=LH_j+HL_j+SP_j+HH_j.
```

Here:

- `LH_j` is the strict low-high transport packet;
- `HL_j` is the strict high-low commutator packet;
- `SP_j` is the threshold-spill collar created by freezing the low-mode cutoff at `N`;
- `HH_j` is the genuine near-diagonal high-high packet.

The target inequality is

```math
\sum_{j\ge N}|LH_j|+|HL_j|+|SP_j|+|HH_j|
\le
C\widetilde\Lambda_N^\sharp(t)E_N(t)
+\eta\nu D_N(t)
+C_*2^{-2\delta N}.
```

The augmented coefficient is

```math
\widetilde\Lambda_N^\sharp(t):=\Lambda_N(t)+\Theta_N^\sharp(t),
```

where `\Lambda_N` is the strict low-mode strain coefficient and `\Theta_N^\sharp` is the finite threshold-collar coefficient.

## Slot 1: strict low-mode coefficient

The strict low-mode packets must satisfy

```math
\sum_{j\ge N}|LH_j|+|HL_j|
\le
C\Lambda_N(t)E_N(t)+\frac{\eta\nu}{4}D_N(t).
```

This is the next analytic pressure point. It requires a coefficient surface that is genuinely lower than the target continuation quantity and stays integrable on the accepted route.

## Slot 2: threshold-spill collar

The threshold-spill packet must satisfy

```math
\sum_{j\ge N}|SP_j|
\le
C\Theta_N^\sharp(t)E_N(t)+\frac{\eta\nu}{4}D_N(t)+C_*2^{-2\delta N}.
```

This slot is finite-width in dyadic scale. Its proof should use finite-collar overlap, cutoff freezing, and the same high-frequency dissipation reserve as the strict packet.

## Slot 3: genuine high-high packet

The genuine high-high packet is now repaired. With the convention from `gradient-high-high-near-diagonal-reduction-lemma.md`,

```math
\sum_{j\ge N}|HH_j|
\le
C_M\sum_{j\ge N-M}2^{\frac92j}\|\Delta_j u\|_2^3.
```

The patched `gradient-cubic-tail-absorption-lemma.md` gives, under the enstrophy component of `Q(t)`,

```math
\sum_{j\ge N}|HH_j|
\le
\frac{\eta\nu}{2}D_{N-M}(t).
```

After shifting the high-side cutoff by the fixed collar width, this gives the
required high-high contribution to the dissipative side:

```math
\sum_{j\ge N+M}|HH_j|
\le
\frac{\eta\nu}{2}D_N(t).
```

## Reassembled conditional theorem

If Slot 1 and Slot 2 hold, then the gradient commutator remainder satisfies

```math
\sum_{j\ge N}2^{2j}|\mathcal C_j(t)|
\le
C\widetilde\Lambda_N^\sharp(t)E_N(t)+\eta\nu D_N(t)+C_*2^{-2\delta N}.
```

This is the exact proposition-level remainder estimate needed for the shell/tail suppression route.

## Boundary

The high-high slot is now discharged under `Q(t)` enstrophy control. The strict low-mode and threshold-spill slots remain the next theorem targets. This note is the split/reassembly surface, not the final proof of those two remaining slots.
