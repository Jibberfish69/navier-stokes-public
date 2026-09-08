# Scale High-Side Remainder Packet

## Object

`scale_high_side_remainder_packet`

## Definition

Let `\{u^{(n)},p^{(n)}\}` be the fixed classical approximation family and `N` a dyadic cutoff. After extracting the strict low-mode low-high and high-low pieces using `S_{N-4}u^{(n)}`, define the scale-side high packet by

```math
\mathfrak{H}^{scale}_{N}[u^{(n)}](t)
:=
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{spill}_{j,n} + \mathcal{T}^{HH}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|,
```

where `\mathcal{T}^{spill}_{j,n}` is the finite-band spill created by replacing `S_{j-4}` with `S_{N-4}`, and `\mathcal{T}^{HH}_{j,n}` is the genuine high-high term from the Bony decomposition.

Equivalently, the integrated high-side packet is

```math
\mathfrak{P}^{scale}_{N}[u^{(n)}]
:=
\int_0^T \mathfrak{H}^{scale}_{N}[u^{(n)}](t)\,dt.
```

The scale-barrier bridge is discharged once one proves

```math
\sup_n \mathfrak{P}^{scale}_{N}[u^{(n)}]
\le
\eta\nu\int_0^T D_N^{(n)}(t)\,dt + C_0 2^{-2\delta N}
```

for all large `N`, with constants uniform on the same classical approximation surface.

## Reduction Already Achieved

This combined packet is no longer the smallest live burden.

- `scale-paraproduct-reduction-lemma.md` removes the strict low-mode low-high and high-low terms.
- `scale-spill-reduction-lemma.md` removes the finite-band spill term created by freezing the low cutoff at `N`.

So the exact unresolved scale-side packet is now the genuine high-high object

```math
\mathfrak{P}^{scale,HH}_{N}[u^{(n)}]
:=
\int_0^T
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{HH}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|dt,
```

tracked in `scale-genuine-high-high-packet.md`.

## Slots

- `domain`: one fixed classical approximation family on `(0,T)\times\mathbb{R}^3`.
- `codomain`: a nonnegative high-side transport-defect density and its time integral.
- `admissibility`: original Euclidean Navier-Stokes dynamics only, with the strict low-mode reduction already extracted.
- `invariance`: pressure gauge invariant and stable under equivalent dyadic partitions up to harmless constants.
- `theorem_interface`: this is the exact unresolved packet inside the classical scale-barrier functional after the readable low-mode pieces are removed.
- `critical_scale_measure`: the dissipation tail `D_N^{(n)}` and the integrated transport into frequencies `j\ge N`.
- `closure_mechanism`: absorb an `\eta`-fraction of dissipation and leave a summable dyadic remainder.
- `gradient_transfer`: once controlled, this packet supplies the summable tail input later consumed by the gradient-transfer operator.

## Honest Boundary

This object is now a reduction surface. The live scale-side burden is the genuine high-high packet recorded in `scale-genuine-high-high-packet.md`, not the combined spill-plus-high-high packet.
