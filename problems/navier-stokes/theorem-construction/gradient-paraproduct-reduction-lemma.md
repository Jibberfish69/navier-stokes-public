# Gradient Paraproduct Reduction Lemma

## Purpose

This note isolates the strict low-mode target on the gradient-transfer surface.
Its job is to pin down the exact coefficient-preserving estimate that the
proposition-level packet needs on the dyadic enstrophy identity:

```math
\mathcal N^{strict}_{N,\mathrm{grad}}(t)
\le
C\,\mathcal L_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
```

Under the stricter audit standard, this file should be read as the local theorem
target plus the current proof route. It is not yet an independently discharged
packet.

## Setting

Let `u = u(t,x)` be a classical solution on `(0,T)\times\mathbb{R}^3`. For `j \ge N`, set

```math
E_N(t) := \sum_{m\ge N} 2^{2m}\|\Delta_m u(t)\|_{L^2_x}^2,
\qquad
D_N(t) := \sum_{m\ge N} 2^{4m}\|\Delta_m u(t)\|_{L^2_x}^2,
```

```math
\mathcal{L}_N(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

Split the low transport coefficient at the fixed cutoff and a fixed collar width
`M \ge 4`:

```math
S_{j-4}u
=
S_{N-4}u
+
(S_{N+M}-S_{N-4})u
+
(S_{j-4}-S_{N+M})u.
```

In the dyadic enstrophy identity, define the strict low-mode pieces

```math
LH_j^{strict}
:=
2^{2j}\left\langle \Delta_j\big((S_{N-4}u\cdot\nabla)\Delta_j u\big), -\Delta \Delta_j u\right\rangle,
```

```math
HL_j^{strict}
:=
2^{2j}\left\langle \Delta_j\big((\Delta_j u\cdot\nabla)S_{N-4}u\big), -\Delta \Delta_j u\right\rangle.
```

The frozen-cutoff remainder is split into a threshold-local spill collar coming
from `(S_{N+M}-S_{N-4})u` and a lifted high-side remainder coming from
`(S_{j-4}-S_{N+M})u`. The strict low-mode lemma does not discharge those
packets; it only isolates them cleanly for downstream control.

## Target Statement

For every `\varepsilon \in (0,\nu)`, there is `C_\varepsilon` such that, for almost every `t`,

```math
\sum_{j\ge N}\big(|LH_j^{strict}| + |HL_j^{strict}|\big)
\le
C_\varepsilon\,\mathcal{L}_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
```

This is the coefficient-preserving strict low-mode target for the gradient-side
packet.

## Exact Gradient-Side Shell Algebra

Let

```math
a := S_{N-4}u,
\qquad
v_j := \Delta_j u,
```

and let `\widetilde\Delta_j := \sum_{|m-j|\le C_0}\Delta_m` denote the
standard fattened shell. The strict low-mode packet on the gradient surface is
the shell family

```math
LH_j^{strict}
:=
2^{2j}\left\langle \Delta_j\big((a\cdot\nabla)\widetilde\Delta_j u\big), v_j\right\rangle,
```

```math
HL_j^{strict}
:=
2^{2j}\left\langle \Delta_j\big((\widetilde\Delta_j u\cdot\nabla)a\big), v_j\right\rangle.
```

Because `v_j = \Delta_j v_j`, the low-high piece splits as

```math
\Delta_j\big((a\cdot\nabla)\widetilde\Delta_j u\big)
=
(a\cdot\nabla)v_j
+
[\Delta_j,a\cdot\nabla]\widetilde\Delta_j u.
```

The transport part cancels by incompressibility:

```math
\langle (a\cdot\nabla)v_j,v_j\rangle = 0.
```

So the exact shell identity is

```math
LH_j^{strict}
=
2^{2j}\left\langle [\Delta_j,a\cdot\nabla]\widetilde\Delta_j u, v_j\right\rangle.
```

Kernel commutator bounds now give

```math
\|[\Delta_j,a\cdot\nabla]\widetilde\Delta_j u\|_{L^2_x}
\lesssim
\|\nabla a\|_{L^\infty_x}\,\|\widetilde\Delta_j u\|_{L^2_x},
```

so

```math
|LH_j^{strict}|
\le
C\,\|\nabla a\|_{L^\infty_x}\,2^{2j}\|v_j\|_{L^2_x}^2.
```

The same computation applies to the strict high-low piece, which also reduces
to the low-mode strain acting on the shell energy:

```math
|HL_j^{strict}|
\le
C\,\|\nabla a\|_{L^\infty_x}\,2^{2j}\|v_j\|_{L^2_x}^2.
```

Bernstein on the fixed low cutoff gives

```math
\|\nabla a\|_{L^\infty_x}
\le
\sum_{k\le N-4}2^{5k/2}\|\Delta_k u\|_{L^2_x}
=:
\Lambda_N(t)-1,
```

where

```math
\Lambda_N(t)
:=
1+\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

Therefore the exact gradient-side strict low-mode estimate furnished by the
current shell algebra is

```math
\sum_{j\ge N}\bigl(|LH_j^{strict}|+|HL_j^{strict}|\bigr)
\le
C\,\Lambda_N(t)\,E_N(t).
```

This is the currently justified strict low-mode bound on the gradient surface.
It stays on the same Euclidean theorem surface, but it does not preserve the
declared weaker coefficient `\mathcal L_N`.

## Consequence For The Declared Target

The displayed target

```math
\sum_{j\ge N}\big(|LH_j^{strict}| + |HL_j^{strict}|\big)
\le
C_\varepsilon\,\mathcal{L}_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t)
```

is therefore still open. The conservative rewrite of the transport term is
useful, but on the exact shell identity it only removes the transported
high-frequency part; the surviving commutator still differentiates the frozen
low transport coefficient and therefore lands on the low-mode strain surface
`\Lambda_N`.

There is also a coarser same-surface transport-form estimate, obtained by
rewriting both strict low packets as divergences:

```math
(a\cdot\nabla)\widetilde\Delta_j u
=
\nabla\cdot(a\otimes \widetilde\Delta_j u),
\qquad
(\widetilde\Delta_j u\cdot\nabla)a
=
\nabla\cdot(\widetilde\Delta_j u\otimes a),
```

with `a=S_{N-4}u`. This gives the shellwise bound

```math
|LH_j^{strict}|+|HL_j^{strict}|
\lesssim
\mathcal L_N(t)\,2^{3j}\|\Delta_j u\|_{L^2_x}^2.
```

Equivalently,

```math
|LH_j^{strict}|+|HL_j^{strict}|
\lesssim
\mathcal L_N(t)\,
\big(2^{2j}\|\Delta_j u\|_{L^2_x}^2\big)^{1/2}
\big(2^{4j}\|\Delta_j u\|_{L^2_x}^2\big)^{1/2}.
```

But this does **not** by itself prove the declared target. Standard Young
applied to the product above yields either

```math
C_\varepsilon \mathcal L_N(t)^2\,2^{2j}\|\Delta_j u\|_{L^2_x}^2
+
\varepsilon \nu\,2^{4j}\|\Delta_j u\|_{L^2_x}^2,
```

or

```math
C\,\mathcal L_N(t)\,2^{2j}\|\Delta_j u\|_{L^2_x}^2
+
\varepsilon \nu\,\mathcal L_N(t)\,2^{4j}\|\Delta_j u\|_{L^2_x}^2.
```

So the remaining strict-low obstruction is now very precise: even after the
transport-form rewrite removes the low derivative from the shell estimate, the
coefficient-preserving linearization step

```math
\mathcal L_N \sqrt{E_jD_j}
\rightsquigarrow
C\,\mathcal L_N E_j + \varepsilon \nu D_j
```

is still not justified on the current theorem surface.

Using the shell relation

```math
D_j \sim 2^{2j}E_j,
```

the mixed term may also be written as the weighted dyadic sum

```math
\sum_{j\ge N}\mathcal L_N(t)\sqrt{E_jD_j}
\sim
\mathcal L_N(t)\sum_{j\ge N}2^jE_j.
```

So the strict-low gate has been reduced to one exact weighted-sum question on
the declared Euclidean surface:

```math
\text{can }\;
\sum_{j\ge N}2^jE_j
\text{ be controlled strongly enough relative to }
E_N
\text{ or }
D_N
\text{ to recover }
C\,\mathcal L_NE_N+\varepsilon \nu D_N?
```

At present the repo contains no theorem-grade argument that performs this
conversion without either squaring the coefficient or upgrading the theorem
surface itself.

Finally, the threshold-local collar `(S_{N+M}-S_{N-4})u` is handed to
`gradient-spill-reduction-lemma.md`, while the lifted remainder
`(S_{j-4}-S_{N+M})u` is merged into the genuine high-high packet. This note
discharges neither of those packets; it isolates the strict low-mode gate and
the exact coefficient it currently produces.

## Output Of This Note

The exact gradient-side strict low-mode target is now frozen on record:

- same Euclidean surface;
- declared coefficient target `\mathcal L_N`;
- exact currently justified coefficient `\Lambda_N`;
- same dissipation surface `D_N` in the proposition statement;
- no `L_x^\infty` continuation norm.

The remaining task is to decide the theorem route at this gate:

- either supply an additional low-mode strain suppression or new cancellation
  that returns the gradient packet to the declared `\mathcal L_N` surface,
- or rewrite Proposition `6.1` and its downstream interface on the stronger
  coefficient/interface whose strict low-mode core is `\Lambda_N` and whose
  minimal coherent full packet surface is
  `\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp`.

A third, more delicate possibility would be a genuinely coercive weighted-sum
argument that uses the dyadic relation `D_j \sim 2^{2j}E_j` together with
additional tail structure to control `\sum_{j\ge N}2^jE_j`; no such argument is
currently on record in the lane. The bounded self-attempt now isolated in
[weighted-high-frequency-shell-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-high-frequency-shell-reduction-lemma.md)
shows that the basic collar/far-tail split is explicit but still too weak to
recover the declared proposition surface.

The further bounded self-attempt in
[strict-low-sum-level-cancellation-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/strict-low-sum-level-cancellation-audit.md)
shows that summing the strict-low packet first only rewrites the obstruction as
a commutator of the high-frequency enstrophy multiplier with low-mode
transport. That summed commutator is still controlled by the low-mode strain
surface `\Lambda_N E_N`, so no new flux/telescoping cancellation is currently
available on the present theorem surface.

The exact same-surface rescue input already isolated in source recovery is the
low-frequency strain suppression target from
`theorem-construction/h2-standalone-half-derivative-bound.md`:

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}\le c\,\nu\,2^{2j_0},
```

equivalently

```math
A_{j_0-1}(t)\le C\,\nu\,2^{2j_0},
\qquad
A_j(t):=\sum_{k\le j}2^{5k/2}\|\Delta_k\omega(t)\|_{L^2_x}.
```

## Honest Boundary

This note does **not** claim that the gradient-side strict low packet is
discharged on the declared `\mathcal L_N` surface.

The important asymmetry is that the tail-energy surface carries only one high
derivative, so the fixed-gap kernel gain can still return that packet to the
declared coefficient. On the gradient surface the extra dyadic derivative in
the enstrophy shell creates two distinct but still open routes:

- the exact commutator algebra lands on the low-mode strain coefficient
  `\Lambda_N`;
- the coarser transport-form estimate lands on `\mathcal L_N\sqrt{E_jD_j}`,
  but the needed linear `\mathcal L_N E_j + \varepsilon \nu D_j` reduction is
  still missing.

So the honest current status is:

- the gradient-side strict low-mode target is explicit;
- the exact gradient-side commutator route currently lands on `\Lambda_N E_N`;
- the direct transport-form route currently lands on
  `\mathcal L_N\sqrt{E_ND_N}` rather than on the declared linear target;
- recovering the declared `\mathcal L_N` surface needs extra input that is not
  yet part of the theorem package;
- the cleanest currently known same-surface candidate for that extra input is
  the low-mode strain suppression target recorded in
  `theorem-construction/h2-standalone-half-derivative-bound.md`.
