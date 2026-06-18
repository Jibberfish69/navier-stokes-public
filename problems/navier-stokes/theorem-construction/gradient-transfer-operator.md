# Gradient Transfer Operator

## Object

`gradient_transfer_operator`

## Definition

For a classical solution `u` on `(0,T)\times\mathbb{R}^3` and dyadic threshold `N`, define

```math
E_N(t) := \sum_{j\ge N} 2^{2j}\|P_j u(t)\|_{L^2_x}^2,
\qquad
D_N(t) := \sum_{j\ge N} 2^{4j}\|P_j u(t)\|_{L^2_x}^2,
```

and

```math
\Lambda_N(t)
:=
1+\sum_{k\le N-4}2^{5k/2}\|P_k u(t)\|_{L^2_x},
```

```math
\Theta_N^\sharp(t)
:=
2^{3N}\sum_{m=N-M}^{N+M}\|P_m u(t)\|_{L^2_x}^2,
```

```math
\widetilde\Lambda_N^\sharp(t)
:=
\Lambda_N(t)+\Theta_N^\sharp(t),
```

and the live upgraded gradient-transfer defect

```math
\widetilde{\mathfrak{G}}_N^\sharp[u](t)
:=
\frac{d}{dt}E_N(t)
+ (1-\eta)\nu D_N(t)
- C\,\widetilde\Lambda_N^\sharp(t)\,E_N(t),
```

where the declared weaker coefficient
`\mathcal{L}_N(t) = 1 + \sum_{k\le N-4}2^{3k/2}\|P_k u(t)\|_{L^2_x}` remains the
original theorem surface but is no longer the default supported candidate for
Proposition `6.1`.

The gradient bridge is discharged once one proves

```math
\widetilde{\mathfrak{G}}_N^\sharp[u](t) \le C_*2^{-2\delta N}
```

for almost every `t`, with constants independent of the approximation index and no geometric surrogate.

## Slots

- `domain`: classical Euclidean Navier-Stokes solutions with the same admissibility surface as the scale-barrier and compactness packages.
- `codomain`: a high-frequency enstrophy-defect density.
- `admissibility`: scale-barrier tail input, nonlinear closure on the classical limit surface, and low-mode integrability.
- `invariance`: pressure gauge invariant and stable under equivalent Littlewood-Paley decompositions.
- `theorem_interface`: once bounded by a summable remainder, it yields Gronwall continuation for `\|\nabla u(t)\|_{L^2_x}`.
- `critical_scale_measure`: high-frequency enstrophy `E_N` and dissipation `D_N`.
- `closure_mechanism`: the unresolved high-side remainder packet must be absorbed into dissipation plus a tail remainder after the strict low-mode and threshold-collar pieces are removed on the upgraded `\widetilde\Lambda_N^\sharp` surface.
- `gradient_transfer_role`: this is the exact operator whose control prevents gradient blow-up on the classical equation.

## Honest Boundary

There are now two distinct gradient-side frontiers:

- the **declared-surface frontier**, where one would still need to return the
  strict low-mode and spill packets to the weaker `\mathcal L_N` interface;
- the **live upgraded frontier**, where strict low-mode is carried by
  `\Lambda_N`, spill is carried by `\Theta_N^\sharp`, and the minimal coherent
  full Proposition `6.1` interface is
  `\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp`.

At the strict low-mode gate, the exact gradient-side shell algebra currently
lands on the stronger fixed-cutoff low-strain coefficient

```math
\Lambda_N(t)
:=
1+\sum_{k\le N-4}2^{5k/2}\|P_k u(t)\|_{L^2_x}.
```

So the live theorem question is no longer whether that stronger coefficient is
just a mnemonic artifact. The current shell computation really produces it. To
return Proposition `6.1` to the declared weaker `\mathcal L_N` surface, the
lane now needs an additional low-mode strain suppression input or a genuinely
new cancellation beyond the present shell algebra. The fallback fixed-cutoff
admissibility and interface cost of `\Lambda_N` are recorded in
`theorem-construction/stronger-low-strain-coefficient-admissibility-lemma.md`
and `theorem-construction/gradient-stronger-coefficient-interface-audit.md`.
The minimal stronger upgraded Body `4` candidate is recorded in
`theorem-construction/minimal-stronger-gradient-coefficient-interface-theorem.md`.

After the negative shellwise, weighted-shell, and sum-level cancellation
audits, and after the upgraded spill collar audit, the live default candidate
for Proposition `6.1` is no longer the declared `\mathcal L_N` surface or even
pure `\Lambda_N`, but the minimal coherent upgraded interface

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C\,\widetilde\Lambda_N^\sharp(t)\,E_N(t)+C_*2^{-2\delta N},
```

where `\Lambda_N` comes from the strict low-mode strain algebra and
`\Theta_N^\sharp` comes from the finite threshold-collar spill audit. On that
upgraded interface, the remaining live burden is now the lifted high-side
remainder plus full proposition-level genuine high-high propagation.

This asymmetry is specific to the gradient surface. On the local tail-energy
surface there is one fewer high derivative, so the fixed-gap kernel gain may
still return the strict low-mode packet to the declared
`\mathcal L_N` coefficient.

The exact same-surface rescue input already isolated in source recovery is the
low-frequency strain bound from
`theorem-construction/h2-standalone-half-derivative-bound.md`:
\(\|\nabla u_{<j_0}(t)\|_{L^\infty_x}\le c\nu 2^{2j_0}\), equivalently
`A_{j_0-1}(t)\le C\nu 2^{2j_0}`.

Low-mode bookkeeping and the continuation step are already explicit, and
`\mathcal{L}_N` is automatically integrable on the classical energy surface.
The repaired high-side packet is recorded in
`theorem-construction/gradient-high-side-remainder-packet.md`, and the local
strict-low / high-side debt surface is recorded in
`theorem-construction/gradient-commutator-remainder-lemma.md`.
