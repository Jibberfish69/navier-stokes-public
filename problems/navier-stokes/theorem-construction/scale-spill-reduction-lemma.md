# Scale Spill Reduction Lemma

## Purpose

This note isolates the threshold-local spill collar created when the low-mode
transport coefficient is frozen at the cutoff `N`. It is a packet-definition
and target-estimate note, not a fully discharged proposition-level proof.

## Local Debt Label

`Threshold-local spill collar for the scale-barrier transport defect`

## Target Estimate

Fix a collar width `M \ge 4` and let

```math
\mathcal{T}^{spill}_{j,n}
:=
\Delta_j\Big(((S_{N+M}-S_{N-4})u^{(n)}\cdot\nabla)\Delta_j u^{(n)}\Big)
+
\Delta_j\Big((\Delta_j u^{(n)}\cdot\nabla)(S_{N+M}-S_{N-4})u^{(n)}\Big),
```

for `j \ge N`, on the fixed classical approximation family
`\{u^{(n)},p^{(n)}\}`. The target estimate is: for every
`\varepsilon > 0` there exists `C_\varepsilon > 0`, independent of `n` and
`N`, such that

```math
\int_0^T \sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{spill}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right| dt
\le
C_\varepsilon \int_0^T \mathcal{L}_N^{(n)}(t)\,E_N^{(n)}(t)\,dt
+
\varepsilon \int_0^T D_N^{(n)}(t)\,dt.
```

Here `E_N^{(n)}`, `D_N^{(n)}`, and `\mathcal L_N^{(n)}` are the high-tail
energy, high-tail dissipation, and strict-low coefficient from
`scale-barrier-transport-defect-lemma.md`.

The lifted remainder created by `(S_{j-4}-S_{N+M})u^{(n)}` is **not** part of
this note. It is merged into the genuine high-high packet because it no longer
contains a threshold-local low factor.

## Missing Collar Estimate

Expanding

```math
S_{N+M}-S_{N-4}=\sum_{N-3\le k\le N+M}\Delta_k
```

does not by itself place the collar inside the strict-low coefficient
`\mathcal L_N^{(n)}`.  The actual extra quantity created by Bernstein is the
threshold-collar amplitude

```math
A_{N,M}^{(n)}(t)
:=
\sum_{N-3\le k\le N+M}
2^{5k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}.
```

The proof of the target estimate requires the separate bound

```math
\int_0^T A_{N,M}^{(n)}(t) E_N^{(n)}(t)\,dt
\le
C_\varepsilon \int_0^T
\mathcal L_N^{(n)}(t)E_N^{(n)}(t)\,dt
+
\varepsilon \int_0^T D_N^{(n)}(t)\,dt,
\tag{SC}
```

uniformly in `n` and `N`, or a further packet split that replaces `(SC)` by an
exact estimate of the same strength.  Without `(SC)`, the line "finite collar
plus Bernstein" is only a route proposal.

## Consequence

The threshold-local spill collar is the smallest scale-side packet that still
needs proposition-level alignment after the strict low-mode reduction. The
lifted high-side remainder is tracked with the genuine high-high interaction in
`scale-genuine-high-high-packet.md`.

That packet is tracked separately in `scale-genuine-high-high-packet.md`.

## Honest Boundary

This note no longer claims that the whole frozen-cutoff remainder has already
been reduced. It isolates only the threshold-local spill collar and names
`(SC)` as the missing estimate. The collar remains a live proposition-level
packet-discharge burden until `(SC)` or an exact replacement is proved.
