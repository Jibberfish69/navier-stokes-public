# Dyadic Shell Gain Lemma

## Status

Frontier shell-level estimate for the high-frequency gain needed to force the
endpoint Besov control on the classical three-dimensional incompressible
Navier-Stokes equation.

This note does not prove the gain. It isolates the exact shellwise estimate
whose proof would imply the dyadic high-frequency gain theorem `HFG` and, in
turn, the critical-space continuation bound.

## Classical Surface

Let `u` be a smooth classical solution on `[0,T]\times\mathbb R^3` and let
`ω = \nabla\times u`. Fix a homogeneous Littlewood-Paley decomposition
`ω = \sum_{j\ge -1} \Delta_j ω`.

## Shell-Level Target

For each dyadic shell `j`, define the cascade defect

```math
\mathrm{cascade}_j(t)
:=
\langle \Delta_j((\omega\cdot\nabla)u), \Delta_j\omega\rangle
+ \mathrm{Comm}_j(t),
```

where `\mathrm{Comm}_j` denotes the commutator contribution in the localized
vorticity energy identity.

The exact shellwise gain target is:

```math
\mathrm{cascade}_j(t)
\le
\varepsilon \nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
+
C_\varepsilon 2^{-2j}\|\nabla\omega(t)\|_{L^2_x}^2
```

for almost every `t`, uniformly for `j` in the high-frequency regime and with
constants independent of the approximation index.

## Equivalent Integrated Form

If the shell gain target holds, then the dyadic energy inequality becomes

```math
\frac{d}{dt}\|\Delta_j\omega(t)\|_{L^2_x}^2
+
c\nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
\le
C 2^{-2j}\|\nabla\omega(t)\|_{L^2_x}^2.
```

Integrating in time and summing over `j` yields

```math
\sum_{j\ge 0} 2^{\frac32 j}\,\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)} < \infty,
```

which is exactly the endpoint high-frequency gain statement recorded in
`dyadic-high-frequency-gain-theorem.md`.

## Shell-Closed Interpretation

The shell gain target is the local form of the same commutator problem. After
splitting the dyadic commutator into a local block and a tail block, the local
piece is controlled by the usual Lipschitz coefficient `|\nabla u|_{L^\infty}`
times the shell energy. The live obstruction is the tail piece, which only
closes if one can insert a half-derivative gain of the form

```math
\|\Delta_k\omega\|_{L^\infty_x}
\lesssim
2^{-\frac12 k}\times(\text{controlled quantity})
```

or an equivalent shellwise decay statement that makes the tail kernel
summable. That is precisely the missing gain behind the endpoint theorem.

## Proof Interface

The shell gain lemma is equivalent to controlling the genuine high-high packet
after the strict low-mode and spill pieces have been removed:

- `gradient-paraproduct-reduction-lemma.md` isolates the strict low-mode terms;
- `gradient-spill-reduction-lemma.md` removes the finite-band spill;
- `exact-dyadic-interaction-decomposition.md` records the unconditional
  shellwise identity and the low-high obstruction;
- `gradient-commutator-remainder-lemma.md` records the remaining cascade bound;
- `dyadic-high-frequency-gain-theorem.md` packages the endpoint integrated gain.

## Honest Boundary

This lemma is still open. The obstruction is the same half-derivative gap that
prevents `\omega \in L^\infty_t L^2_x \cap L^2_t \dot H^1_x` from implying
`L^1_t B^0_{\infty,1}` by static interpolation alone.
