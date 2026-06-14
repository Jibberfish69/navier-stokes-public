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

where `\mathcal{T}^{spill}_{j,n}` is the threshold-local spill collar created
by freezing the low-mode cutoff near `N`, and `\mathcal{T}^{HH}_{j,n}` is the
genuine high-high term from the Bony decomposition.

After the threshold-local spill collar is separated, the lifted remainder is

```math
\mathcal{T}^{lift}_{j,n}
:=
\Delta_j\big((((S_{j-4}-S_{N+M})u^{(n)})\cdot\nabla)\Delta_j u^{(n)}\big)
+
\Delta_j\big((\Delta_j u^{(n)}\cdot\nabla)((S_{j-4}-S_{N+M})u^{(n)})\big).
```

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

The repaired open high-side packet therefore splits as

```math
\mathfrak{H}^{scale}_{N}[u^{(n)}](t)
=
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{lift}_{j,n} + \mathcal{T}^{HH}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|.
```

## Reduction Already Achieved

This combined packet is no longer the smallest live burden, but it still has
two distinct components after the threshold-local spill collar is removed.

- `scale-paraproduct-reduction-lemma.md` removes the strict low-mode low-high and high-low terms.
- `scale-spill-reduction-lemma.md` isolates the threshold-local spill collar created by freezing the low cutoff at `N`.
- `scale-high-high-near-diagonal-reduction-lemma.md` discharges the genuine high-high component of the high-side packet by reducing it to a cubic dyadic tail.

So the exact unresolved scale-side packet is no longer the genuine high-high
object alone. After the threshold-local spill collar is isolated, the live
high-side remainder still contains

```math
\mathfrak{P}^{scale,lift}_{N}[u^{(n)}]
:=
\int_0^T
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{lift}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|dt,
```

while the genuine high-high packet is tracked separately in
`scale-genuine-high-high-packet.md`.

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

This object is now a reduction surface. After the threshold-local spill collar
is isolated, the remaining live scale-side burden splits into:

- the lifted high-side remainder created by `(S_{j-4}-S_{N+M})u^{(n)}`;
- the genuine high-high packet recorded in `scale-genuine-high-high-packet.md`.

The genuine high-high component is already reduced to a cubic tail. The lifted
high-side remainder remains a separate open packet.

## Why The Lifted Remainder Is The Real Open Packet

The lifted remainder is not forced into a near-diagonal collar by support
geometry alone. In `\mathcal{T}^{lift}_{j,n}`, the transport factor may live on
any shell `k` with

```math
N+M < k < j-4,
```

while the differentiated factor stays on the output shell `j`. The product
still survives the projection `\Delta_j` because the high shell `\Delta_j
u^{(n)}` carries the output scale. So unlike the genuine high-high term, the
lifted remainder does **not** satisfy a support restriction `|k-j|\le M`.

That is why the repaired packet cannot honestly be collapsed to a single
near-diagonal cubic tail by support geometry alone.

## Exact Frontier Question

The live scale-side frontier is now:

1. prove a theorem-grade bound for the threshold-local spill collar;
2. prove a theorem-grade bound for the lifted remainder `\mathcal{T}^{lift}_{j,n}`;
3. combine those with the already explicit genuine high-high reduction and
   cubic-tail absorption.

The cleanest unresolved theorem question is whether `\mathcal{T}^{lift}_{j,n}`
can still be reduced to the admissible coefficient surface
`\mathcal{L}_N^{(n)}E_N^{(n)}` plus a harmless dissipation fraction, or whether
it forces a refined intermediate high-side coefficient.

The new note `scale-kernelized-lifted-band-reduction-lemma.md` sharpens this
frontier: at exact shell level, the lifted scale-side packet does carry a real
off-diagonal gain `2^{-(j-k)}` on the band `N+M<k<j-4`, but only on the
natural scale-side carrier with one high derivative
`\|\nabla \Delta_j u^{(n)}\|_{L^2_x}\|\Delta_j u^{(n)}\|_{L^2_x}`.

The new coupled repair note
`scale-lifted-band-stress-strain-flux-repair.md`
replaces that shellwise viewpoint by the exact scale-side theorem target:
the lifted packet is bounded by a single mesoscopic stress-strain flux
functional `\Pi_N^{lift,\mathrm{dy}}[u^{(n)}]`, and the remaining theorem debt
is the barrier-scale estimate `(L-Flux)` for that coupled object.

The signed continuous-scale route now has one more theorem-grade reduction on
record in `lifted-band-collar-class-reduction-lemma.md`: after passing to the
glued signed scalar channel and quotienting by the accepted collar class, the
lifted-band burden is reduced to an upper boundary packet plus the
mesoscopic residual `\chi_{mid}\mathcal W`. The lower fixed-cutoff collar and
same-scale spill are no longer genuinely new theorem targets on this route.

## Diagnostic Naive Bound

For the lifted low-high term, one immediately gets

```math
\left|
\left\langle
\Delta_j\big((((S_{j-4}-S_{N+M})u^{(n)})\cdot\nabla)\Delta_j u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C_{naive}
\Big(\sum_{N+M<k<j-4}2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\Big)
2^j\|\Delta_j u^{(n)}\|_{L^2_x}^2.
```

The obstruction is immediate: the coefficient sum now ranges with `j`, so it is
not controlled by the fixed-cutoff low-mode quantity `\mathcal{L}_N^{(n)}`.
Moreover, a naive Cauchy-Schwarz bound only yields a supercritical nonclosing
estimate

```math
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{lift}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C_{naive}'
2^{-N/2} D_N^{(n)}(t)^{3/2},
```

which is not of the theorem-grade form
`\mathcal{L}_N^{(n)}E_N^{(n)} + \varepsilon D_N^{(n)}`.

So the lifted remainder is not open because of missing bookkeeping. It is open
because the naive estimate lands on the wrong scale.

## Sharpened Support-Level Reduction

The diagnostic naive bound is not the strongest shell statement now on record.
The exact commutator/high-low shell algebra also yields

```math
\sum_{j\ge N}
\left|
\left\langle \mathcal{T}^{lift}_{j,n},\Delta_j u^{(n)}\right\rangle
\right|
\le
C_M^{lift}
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x},
```

as proved in `scale-kernelized-lifted-band-reduction-lemma.md`.

So the current scale-side algebra really does produce a summable gap kernel on
the lifted band. What remains open is the theorem-grade **integrated** control
of that kernelized carrier.
