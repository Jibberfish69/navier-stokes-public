# Lifted Remainder Feedback Into Body 1 Audit

## Purpose

This note tests the route change:

```math
\text{rewrite Body 1 to absorb the lifted remainder}
\;\to\;
\text{pass the stronger output through Bodies 2 and 3}
\;\to\;
\text{return to Body 4 with the missing estimate already built in.}
```

The goal is to decide whether this feedback loop produces a genuinely stronger
theorem package, or whether it merely relocates the same open packet from Body
`4` back into Body `1`.

## The Proposed Feedback Idea

The current Euclidean route already uses Body `1` to export the inherited scale
barrier

```math
\int_0^T \|P_{\ge N}u(t)\|_{L^2_x}^2\,dt \le C_*2^{-2\delta N}.
```

The proposed refinement asks Body `1` to export the exact lifted-band leakage
barrier needed later on the exact solution side.

The theorem slot is a bound on the intermediate high-side transport remainder
itself, or on a stronger carrier dominating it.

## What Body 1 Must Export

To help Body `4`, the strengthened Body `1` output must control the
packet created by

```math
(S_{j-4}-S_{N+M})u,
```

whose exact shell geometry is

```math
N+M<k<j-4.
```

So a meaningful strengthened Body `1` theorem must export more than the tail
barrier alone. It must provide one of:

1. a direct integrated estimate for the lifted high-side packet on the
   approximation family;
2. a stronger shellwise or spacetime tail theorem that dominates the
   intermediate-band coefficient `\sum_{N+M<k<j-4}2^{3k/2}\|\Delta_k u\|_2`;
3. a new transport carrier whose compactness/limit passage preserves exactly
   that intermediate-band control.

## What Bodies 2 And 3 Actually Preserve

Body `2` (the monotone bridge) supplies global bulk control:

- `u \in L_t^\infty L_x^2`,
- `u \in L_t^2 H_x^1`,
- the named global control quantity `Q(t)`.

But Body `2` is frequency-coarse. It does not sharpen the intermediate shell
range `N+M<k<j-4` into a better packet estimate.

Body `3` (compactness) passes to the exact limit using:

- strong local `L_t^2L_x^2`,
- weak / weak-* bulk bounds,
- the inherited `L_t^2L_x^2` tail barrier.

But Body `3` does not manufacture new shellwise information. It can pass
through a theorem already proved on the approximation family, but it does not
upgrade a coarse tail barrier into a finer intermediate-band transport bound.

So the only way the feedback loop can help is if the strengthened theorem is
already proved inside Body `1` itself.

## Leading Upstream Theorem Candidate

The strongest coherent refinement identified so far is not another coarse tail
norm. It is a frequency-localized transport leakage barrier on the exact lifted
band

```math
N+M<k<j-4.
```

That candidate is recorded explicitly in
`body1-kernelized-lifted-band-leakage-barrier.md`. Its kernelized form asks
Body `1` to export the bound

```math
\sup_n \int_0^T
\sum_{j\ge N}\sum_{N+M<k<j-4}
K_{j-k}\,
2^{3k/2}\|\Delta_k u^{(n)}\|_{L^2_x}\,
2^{4j}\|\Delta_j u^{(n)}\|_{L^2_x}^2
\,dt
\le
C_*2^{-2\delta N},
```

with `K_{j-k}` summable.

This is the right sort of export because it matches the exact remaining packet
geometry. Once proved on the approximation family and passed through Body `3`,
it feeds Body `4` noncircularly.

The route is now sharper than before: `scale-kernelized-lifted-band-reduction-lemma.md`
shows that the current scale-side shell algebra really does produce a summable
off-diagonal gain `2^{-(j-k)}` on the lifted band. What remains open is the
integrated theorem bounding that kernelized carrier uniformly on the
approximation family, and any downstream upgrade from the natural scale-side
carrier to the stronger gradient-side target.

The bounded self-attempt in
`body1-kernelized-lifted-band-integration-audit.md` shows that the first
direct integration routes still fail on the current Body `1` surface: after
Young/Cauchy-Schwarz, the kernelized carrier leaves a residual shell factor
`2^k` beyond the available `L_t^2H_x^1` control.

The sharpened exact upstream theorem target is now recorded in
`meso-scale-shear-inefficiency-theorem.md`: a frequency-directional transport
inefficiency law on the exact lifted band `N+M<k<j-4`, with summable spectral
gap decay and the same dyadic remainder scale `C_*2^{-2\delta N}` as the Body
`1` tail barrier.

## Exact Obstruction

The scale-side theorem surfaces already show that Body `1` carries the same
high-side split:

- strict low-mode;
- threshold-local spill collar;
- lifted high-side remainder;
- genuine high-high packet.

In particular, `scale-high-side-remainder-packet.md` records the same live
intermediate-band geometry

```math
N+M<k<j-4
```

and the same failure of the naive estimate to land on the admissible
fixed-coefficient surface.

So feeding the missing estimate "back into 1" does not currently solve the
problem. It moves the exact same packet-level burden upstream:

```math
\text{Body 4 lifted remainder}
\rightsquigarrow
\text{Body 1 lifted remainder}.
```

## Honest Verdict

The feedback route is mathematically coherent, but it does **not** currently
create a solution automatically.

The exact conditional reduction is:

1. prove a stronger Body `1` theorem that controls the lifted high-side
   remainder on the approximation family;
2. pass that stronger theorem through Body `3` to the exact limit;
3. consume it in Body `4` noncircularly.

But on the present lane, the missing estimate is not improved by the feedback
loop itself. The same packet remains open, only at the Body `1` level instead
of the Body `4` level.

So the route change does **not** make the obstruction disappear. It identifies
an equivalent reformulation:

```math
\text{solve the lifted remainder in Body 4}
\quad\Longleftrightarrow\quad
\text{solve a stronger lifted-remainder theorem already in Body 1}.
```

## Consequence For The Four-Body Pipeline

The current pipeline remains:

1. Body `1` exports the inherited scale barrier.
2. Body `2` stabilizes the bulk layer but does not sharpen the packet.
3. Body `3` passes the inherited tail barrier to the exact limit.
4. Body `4` still faces the lifted high-side remainder as the one real open
   packet.

So rewriting Body `1` is not wrong, but it is not a free cascade fix. It only
helps if the rewritten Body `1` actually proves a new stronger transport/tail
estimate that the current package does not yet contain. The kernelized
lifted-band leakage barrier is the cleanest current candidate for that stronger
Body `1` export, but it remains an invented upstream theorem target rather than
an established result.
