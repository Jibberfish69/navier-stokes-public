# Body 1 Kernelized Lifted-Band Leakage Barrier

## Purpose

This note records the strongest coherent upstream theorem candidate for the one
remaining open packet in the Euclidean four-body route: the lifted high-side
remainder with exact shell geometry

```math
N+M<k<j-4.
```

The point is not that this theorem is already proved. The point is that if
Body `1` is to be strengthened in a way that genuinely targets the remaining
obstruction, it should export a frequency-localized transport leakage barrier
for that exact lifted band rather than another coarse high-tail norm.

## Exact Gradient-Shaped Band Quantity

For the approximation family `u^{(n)}`, define the unkernelized lifted-band
transport carrier

```math
\mathfrak L_N[u^{(n)}](t)
:=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
2^{4j}\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2.
```

This is the gradient-shaped coefficient targeted by the strengthened Body `1`
export. It matches the open gradient-side lifted packet algebra after the
strict low-mode and threshold-local spill collar are removed.

## Stronger Kernelized Version

The cleaner theorem target inserts an explicit gap kernel:

```math
\mathfrak L_N^{(K)}[u^{(n)}](t)
:=
\sum_{j\ge N}\sum_{N+M<k<j-4}
K_{j-k}\,
2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
2^{4j}\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2,
```

where `K_r` is summable, for example `K_r = 2^{-\sigma r}` with `\sigma>0`.

The corresponding strengthened Body `1` export is:

```math
\sup_n\int_0^T \mathfrak L_N^{(K)}[u^{(n)}](t)\,dt
\le
C_*2^{-2\delta N},
\qquad N\ge N_*.
```

## Exact Scale-Side Carrier Actually Reached So Far

Testing the current scale-side packet algebra gives a more precise result than
was available before. The new note
`scale-kernelized-lifted-band-reduction-lemma.md` proves that the lifted
remainder on Body `1` reduces to the kernelized **scale-side** carrier

```math
\mathfrak K_N^{scale}[u^{(n)}](t)
=
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
\|\nabla \Delta_j u^{(n)}(t)\|_{L^2_x}\,
\|\Delta_j u^{(n)}(t)\|_{L^2_x}.
```

The dyadic Bernstein upper form used in the barrier is

```math
\mathfrak K_N^{scale}[u^{(n)}](t)
\le C_{LP}
\sum_{j\ge N}\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}\,
2^j\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2.
```

So the current scale-side shell algebra really does contain a summable gap
kernel. What it gives directly is the natural one-derivative scale-side
carrier, not yet the stronger gradient-side `2^{4j}` carrier.

## Why This Is The Right Upstream Target

The current scale barrier only exports the coarse tail bound

```math
\sup_n \int_0^T \|P_{\ge N}u^{(n)}(t)\|_{L^2_x}^2\,dt
\le
C_*2^{-2\delta N},
```

which does not see:

- the lifted-band shell range `N+M<k<j-4`;
- the strict gap below the output shell `j`;
- the dissipation weight `2^{4j}`;
- or any off-diagonal gain in `j-k`.

So the exact Body `1` export target is this intermediate transport leakage
quantity, or a theorem that dominates it.

## Why The Kernel Matters

Without a decaying kernel, the lifted packet stays as an intermediate-band
coefficient multiplying the high shell. The scale-side reduction now shows that
a summable kernel is in fact present at exact shell level. The remaining
question is whether Body `1` can integrate that kernelized carrier sharply
enough to export a theorem useful downstream.

So the kernelized theorem is the cleaner candidate:

```math
\sum_{N+M<k<j-4}K_{j-k}\,a_k(t)\,D_j(t),
```

with `K_{j-k}` summable and `a_k(t)=2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}`.

## Consequence If Proved

If Body `1` proves a theorem-grade integrated barrier for the natural
kernelized scale-side carrier `\mathfrak K_N^{scale}`, and Body `3` passes it
stably to the exact limit, the route gains a real noncircular transport-leakage
input upstream of the last open packet.

The resulting theorem interface turns the open lifted packet from

```math
\text{unsupported intermediate-band transport}
```

into

```math
\varepsilon \nu \int_0^T D_N(t)\,dt + C_*2^{-2\delta N}
```

at the theorem interface.

## Honest Boundary

This note records a leading upstream repair target, not a discharged theorem.

- The current Body `1` package does **not** prove this kernelized leakage
  barrier.
- Bodies `2` and `3` do not create this estimate automatically; they can only
  preserve it if Body `1` already exports it.
- The current shell algebra **does** now supply a summable gap kernel on the
  scale-side lifted band, via
  `scale-kernelized-lifted-band-reduction-lemma.md`.
- What remains genuinely new theorem content is the integrated leakage barrier
  for that kernelized carrier, and any upgrade from the natural scale-side
  carrier to the stronger gradient-side carrier.
- The bounded self-attempt
  `body1-kernelized-lifted-band-integration-audit.md` now sharpens that
  boundary: the first direct integration routes still fail on the current Body
  `1` surface because the kernelized carrier leaves a residual shell factor
  `2^k` beyond the available `L_t^2H_x^1` control.
- The refinement target is now explicit in
  `body1-half-derivative-lifted-band-gain-target.md`: the gap decay
  `2^{-(j-k)}` is already real, so the remaining missing theorem content is an
  integrated `k`-side payment of the exact residual square factor `2^k`, or an
  equivalent weighted Body `1` transport/dissipation theorem that absorbs that
  factor while preserving the band gap.
- The cleanest exact theorem statement is now recorded in
  `meso-scale-shear-inefficiency-theorem.md`: a frequency-directional transport
  inefficiency law on the exact lifted band, landing directly on the remainder
  scale `C_*2^{-2\delta N}`.

So the live theorem meaning is:

```math
\text{open lifted remainder in Body 4}
\quad\rightsquigarrow\quad
\text{candidate stronger leakage theorem in Body 1}.
```

## Practical Status

Among the currently visible route changes, this remains the most targeted
upstream candidate because it matches the exact remaining shell geometry rather
than renaming the old coarse high-tail barrier. The new scale-side reduction
shows the candidate is not empty: a real `j-k` kernel is already visible in the
packet algebra.
