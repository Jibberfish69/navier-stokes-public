# Scale Lifted-Band Stress-Strain Flux Repair

## Purpose

This note records the exact repair needed to close the open lifted high-side
remainder inside the Euclidean scale-barrier package. The point is to replace
the old shellwise leakage language by the coupled stress-strain flux object
already isolated in
`lifted-band-coarse-grained-stress-strain-flux-inequality.md`.

The theorem below is not a new route outside the scale barrier. It is the
missing packet-level theorem that plugs directly into the open scale-side
transport-defect step.

## Setting

Let `\{u^{(n)},p^{(n)}\}` be the fixed classical approximation family on
`(0,T)\times\mathbb R^3`, and fix `N`.

For each `j\ge N`, define

```math
u^{(n)}_j := \Delta_j u^{(n)},
\qquad
b^{(n)}_j := (S_{j-4}-S_{N+M})u^{(n)}.
```

Define the lifted shell contribution

```math
\mathcal T^{lift}_{j,n}
:=
\Delta_j\big((b^{(n)}_j\cdot\nabla)u^{(n)}_j\big)
+
\Delta_j\big((u^{(n)}_j\cdot\nabla)b^{(n)}_j\big).
```

The open scale-side lifted packet is

```math
\mathfrak P^{scale,lift}_{N}[u^{(n)}]
:=
\int_0^T
\sum_{j\ge N}
\left|
\left\langle
\mathcal T^{lift}_{j,n}(t),u^{(n)}_j(t)
\right\rangle
\right|dt.
```

Now define the mesoscopic strain and band stress densities exactly as in
`lifted-band-coarse-grained-stress-strain-flux-inequality.md`:

```math
\Sigma^{meso}_{j,n}(x,t)
:=
(\rho_j * |\nabla b^{(n)}_j(\cdot,t)|)(x),
```

```math
\tau^{H^1}_{j,n}(x,t)
:=
2^{2j}
\int_{\mathbb R^3} |\eta_j(a)|\,|\delta_a u^{(n)}_j(x,t)|^2\,da.
```

Set

```math
\Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)
:=
\sum_{j\ge N}
\int_{\mathbb R^3}
\Sigma^{meso}_{j,n}(x,t)\,
\tau^{H^1}_{j,n}(x,t)\,dx.
```

## Coupled Repair Lemma

For every `n` and almost every `t`,

```math
\sum_{j\ge N}
\left|
\left\langle
\mathcal T^{lift}_{j,n}(t),u^{(n)}_j(t)
\right\rangle
\right|
\le
C_{flux}
\Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t).
```

Hence

```math
\mathfrak P^{scale,lift}_{N}[u^{(n)}]
\le
C_{flux}
\int_0^T \Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)\,dt.
```

### Proof

Apply
`lifted-band-coarse-grained-stress-strain-flux-inequality.md`
shell-by-shell to the classical solution `u^{(n)}`. Its dyadic bound gives

```math
\left|
\left\langle
[\Delta_j,b^{(n)}_j(t)\cdot\nabla]u^{(n)}_j(t),
u^{(n)}_j(t)
\right\rangle
\right|
\le
C_{meso}
2^{-2j}
\int_{\mathbb R^3}
\Sigma^{meso}_{j,n}(x,t)\,
\tau^{H^1}_{j,n}(x,t)\,dx.
```

Since `\nabla\cdot b^{(n)}_j = 0`, the transported term is skew before
localization, so the shell pairing of `\mathcal T^{lift}_{j,n}` with
`u^{(n)}_j` is exactly the commutatorized lifted defect. Multiplying by the
outer `2^{2j}` from the stress note and summing over `j\ge N` proves the
claim.

## Exact Repair Theorem Needed By The Scale Barrier

The lifted packet closes once one proves the barrier-scale flux estimate

```math
\sup_n
\int_0^T \Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)\,dt
\le
\frac{\eta\nu}{4}\sup_n \int_0^T D^{(n)}_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{L-Flux}
```

This is the exact coupled replacement for the old missing shellwise lifted-band
estimate.

The new note
`lifted-band-descent-coboundary-l-flux-theorem.md`
formalizes the abstract bridge behind `(L-Flux)`:
if the lifted mesoscopic strain is exact in the combined space-time-scale
direction modulo a barrier-sized tail, and the induced boundary/dual pairing
terms are controlled at the same barrier scale, then `(L-Flux)` follows by
integration by parts. So the live burden is no longer just "guess a Carleson
estimate". It splits into:

1. `(L-Descent)`: global descent-coboundary representation of the lifted
   mesoscopic strain;
2. `(L-Dual)`: barrier control of the scale/time boundary terms and the dual
   pairings against `\tau^{H^1}`.

The note `signed-lifted-band-scale-descent-identity.md` sharpens the order of
proof further: the descent theorem must first be proved for the **signed**
continuous-scale lifted commutator density, where refinement appears as a
literal `\ell\partial_\ell` derivative of a cumulative commutator energy and
the derivative of the drift lands only on the threshold-local collar. Only
after that signed telescoping step does one obtain the signed lifted estimate
`(L-Signed)`; the positive coupled flux theorem `(L-Flux)` is then a separate
downstream corollary via the residual-majorant route.

The new reduction note
`lifted-band-collar-class-reduction-lemma.md`
sharpens that signed route further without overclaiming closure: modulo the
accepted collar packet class, the middle-band signed channel is reduced to an
upper boundary packet plus the mesoscopic residual `\chi_{mid}\mathcal W`.
So the live scale-barrier question is no longer the whole lifted band, but the
combination

```math
\text{upper boundary packet}
\quad+\quad
\text{mesoscopic residual}.
```

The new note
`lifted-band-mesoscopic-residual-reduction-lemma.md`
pushes the second term one step further: after profile renormalization, the
mesoscopic residual is reduced to a localized middle-band stress-strain flux
packet `\Pi_N^{mid}` modulo the same collar class. So the remaining scale-side
burden is now naturally split into:

```math
\text{upper boundary theorem}
\quad+\quad
\text{middle-band flux theorem}.
```

The note `middle-band-flux-gap-kernel-theorem.md` then records the current
continuum route to that second theorem: split the middle-band flux into a
bounded-width moving spill term and a far-corona term with explicit gap kernel
`\ell/r`. That note also isolates the exact remaining theorem debt there: once
the kernel is exposed, Hardy/Schur summation is routine, and the real open
input is the one-sided square / Carleson estimate for the far-corona
transport-stress density.

The companion notes
`far-corona-carleson-direct-attack.md` and
`far-corona-cumulative-tail-stress-theorem.md`
push directly on that far-corona theorem without collapsing first to a shell
carrier. They record two exact sufficient theorem surfaces:

1. the weighted `L_x^2` stress theorem `FCTS` on the accumulated stress field
   `T_r`;
2. the cumulative dissipation-tail theorem `(CTS)` against the exact source
   `\tau_\ell^{H^1}[u]`.

Both are honest direct reformulations of the far-corona burden. Neither is
presently derivable from the inherited Euclidean inputs alone; the inherited
surface reduces `(CTS)` only to a new lower-prefix-times-active-square dyadic
object, not to any already-installed one-sided tail theorem.

## Scale-Barrier Consequence

Assume `(L-Flux)`. Combine it with:

1. strict low-mode reduction from `scale-paraproduct-reduction-lemma.md`,
2. threshold-local spill reduction from `scale-spill-reduction-lemma.md`,
3. genuine high-high absorption from
   `scale-high-high-near-diagonal-reduction-lemma.md` and
   `scale-cubic-tail-absorption-lemma.md`.

Then the nonlinear transport-defect inequality becomes

```math
\int_0^T \mathcal F_N^{(n)}(t)\,dt
\le
C \int_0^T \mathcal L_N^{(n)}(t)\,E_N^{(n)}(t)\,dt
+
\eta\nu\int_0^T D_N^{(n)}(t)\,dt
+
C_*2^{-2\delta N}.
```

So the classical scale-barrier tail lemma closes exactly as intended.

## Honest Boundary

This note fixes the shape of the missing lifted-band step. It does **not**
prove `(L-Flux)` from the inherited Euclidean inputs alone. What it does prove
is that the open scale-barrier packet is now reduced to one coupled mesoscopic
stress-strain flux theorem rather than a family of shellwise leakage bounds.
