# All-Scale Frequency-Transfer Inefficiency Theorem

## Purpose

This note records the strongest global version of the new upstream route.

The meso-scale theorem in
`meso-scale-shear-inefficiency-theorem.md` targets only the lifted band

```math
N+M<k<j-4.
```

The present note records the broader theorem shape suggested by that local
shadow: an all-scale directional transport law saying that transfer across
frequency always loses efficiency with spectral gap.

## Spectral Functional Form

Let

```math
\mathcal E_\phi(t)
:=
\sum_{j\in \mathbb Z}\phi(j)\,\|\Delta_j u(t)\|_{L^2_x}^2,
```

where `\phi` is increasing in `j`.

The global theorem one wants is a weighted spectral balance of the form

```math
\frac{d}{dt}\mathcal E_\phi(t)
+
\nu \sum_j \phi(j)\,2^{2j}\|\Delta_j u(t)\|_{L^2_x}^2
\le
\sum_{j,k}
\big(\phi(j)-\phi(k)\big)\,\mathcal T_{j,k}(t),
```

followed by a one-sided estimate on the transfer terms showing that whenever
`j>k`, the upward transport carries a decaying factor in the spectral gap
`j-k`.

## Abstract Gap-Damped Transport Law

The clean abstract theorem target is:

```math
\int_0^T
\sum_j\sum_{k<j}
K_{j-k}\,
2^{\alpha k}\|\Delta_k u(t)\|_{L^2_x}^{p}\,
2^{\beta j}\|\Delta_j u(t)\|_{L^2_x}^{q}
\,dt
\le
\text{controlled quantity on the inherited Euclidean route},
```

with:

- `K_r` summable in `r\ge 1`;
- exponents `\alpha,\beta,p,q` chosen so that the lifted packet sits inside
  this bound;
- and the right-hand side depending only on already-inherited route data.

This is the global all-scale version of:

```math
\text{frequency gain comes with transport loss.}
```

## Relation To The Meso-Scale Theorem

The meso-scale theorem `(MSI)` is a local corollary candidate of this more
global route.

The implication to `(MSI)` is not a scale slogan.  It requires that the
all-scale theorem's exponents dominate the exact lifted-band carrier used in
`(MSI)` and that its kernel remain summable after restriction to

```math
N+M<k<j-4
```

Under those hypotheses, restricting the all-scale estimate to that range gives
the gap-damped transport bound required by
`meso-scale-shear-inefficiency-theorem.md`.

Thus the theorem-level relationship is conditional:

```math
\text{all-scale frequency-transfer inefficiency}
\quad+\quad
\text{lifted-band exponent embedding}
\Longrightarrow
\text{meso-scale shear inefficiency}
\Longrightarrow
\text{closure of the lifted packet}.
```

## Why This Is Stronger Than The Current Route

The present Euclidean inputs supply only:

- `u\in L_t^\infty L_x^2`,
- `u\in L_t^2 H_x^1`,
- the coarse tail barrier
  `\int_0^T \|P_{\ge N}u(t)\|_{L^2_x}^2\,dt \le C_*2^{-2\delta N}`,
- and local packet algebra.

Those inputs are too coarse to imply a global directional law for transfer
across all scales.

So this note records a genuinely stronger theorem direction.  If the
all-scale estimate and the lifted-band exponent embedding are both proved, Body
`1` exports a global transport-loss principle and the lifted band becomes a
corollary rather than the unique open packet.

## Relation To Existing Frontier Notes

This route is adjacent to, but not identical with:

- `dyadic-shell-gain-lemma.md`
- `dyadic-high-frequency-gain-theorem.md`

Those notes already seek a shellwise anti-cascade / high-frequency gain law.
The present all-scale theorem is a broader transport-direction formulation of
the same instinct:

```math
\text{nonlocal upward transfer is spectrally inefficient.}
```

The scale-side kernelized lifted-band reduction
`scale-kernelized-lifted-band-reduction-lemma.md`
is concrete local evidence for this stronger idea, because the factor
`2^{-(j-k)}` appears inside the displayed scale-side carrier for one exact
packet.

## Honest Boundary

This theorem is not proved by the current Euclidean package. It is a stronger
upstream route candidate.

Its role in the lane is:

- to explain how the meso-scale target fits into a larger transport-law
  program;
- to mark a genuine route broadening rather than a local patch;
- and to keep the present proof state honest: the current route has only local
  shadows of this all-scale law, not the theorem itself.
