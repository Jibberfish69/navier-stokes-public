# Gradient Spill Reduction Lemma

## Purpose

This note isolates the threshold-local spill collar in the dyadic enstrophy
identity after the low-mode transport coefficient is frozen at the cutoff `N`.
Under the stricter audit standard it should be read as a packet-definition and
target-estimate note, not as a fully discharged proposition-level proof.

## Local Debt Label

`Threshold-local spill collar in the gradient transfer packet`

## Exact Statement

Fix a collar width `M \ge 4`. Let `\mathcal{C}^{spill}_j(t)` denote the
threshold-local spill part of the dyadic enstrophy remainder created by the
replacement `S_{j-4}u \mapsto S_{N+M}u` after the strict low piece with
`S_{N-4}u` has been extracted. Then the intended estimate is

```math
\sum_{j\ge N} 2^{2j} |\mathcal{C}^{spill}_j(t)|
\le
C_\varepsilon\,\mathcal{L}_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t)
```

for almost every `t` on the same classical Euclidean theorem surface.

On the upgraded gradient-side coefficient candidate

```math
\Lambda_N(t):=
1+\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_{L^2_x},
```

the corresponding proposition-level target becomes

```math
\sum_{j\ge N} 2^{2j} |\mathcal{C}^{spill}_j(t)|
\le
C_\varepsilon\,\Lambda_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
```

That upgraded target removes the low-strain coefficient mismatch coming from the
strict low packet, but it does **not** by itself discharge the spill collar.

The lifted remainder created by `(S_{j-4}-S_{N+M})u` is **not** part of this
note. It is merged into the genuine high-high packet because it contains no
threshold-local low factor.

Define the finite threshold-collar coefficient

```math
\mathcal K_N(t)
:=
\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_{L^2_x}^2.
```

The cleaner theorem-facing equivalent is

```math
\Theta_N^\sharp(t)
:=
2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L^2_x}^2,
```

and `\mathcal K_N \sim_M \Theta_N^\sharp`.

Then the minimal coherent upgraded gradient-side coefficient candidate is

```math
\widetilde\Lambda_N^\sharp(t)
:=
\Lambda_N(t)+\Theta_N^\sharp(t),
```

with

```math
\Lambda_N(t):=
1+\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

The upgraded spill target is

```math
\sum_{j\ge N} 2^{2j} |\mathcal{C}^{spill}_j(t)|
\le
C_\varepsilon\,\widetilde\Lambda_N^\sharp(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
```

## Why The Square-Root Collar Is Not Yet Supported

A tempting further shrink is the threshold-amplitude coefficient

```math
\Lambda_N^{spill,min}(t)
:=
2^N\Big(\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L^2_x}^2\Big)^{1/2},
```

or any equivalent square-root collar expression. The present spill proof does
**not** justify that smaller surface.

The proved route first reduces the threshold strip to

```math
\Theta_N(t)\,E_N(t)^{1/2}D_N(t)^{1/2},
\qquad
\Theta_N(t):=\sum_{m=N-M}^{N+M}2^{3m/2}\|\Delta_m u(t)\|_{L^2_x}.
```

Since `\Theta_N \sim_M 2^{3N/2}(\sum_{m=N-M}^{N+M}\|\Delta_m u\|_{L^2_x}^2)^{1/2}`,
Young gives

```math
\Theta_N E_N^{1/2}D_N^{1/2}
\le
\varepsilon \nu D_N
+
C_{\varepsilon,\nu}\Theta_N^2 E_N,
```

so the current theorem-grade coefficient is quadratic in the collar amplitude:

```math
\Theta_N^2 \sim_M \Theta_N^\sharp.
```

Replacing `\Theta_N^\sharp` by a square-root collar coefficient would require a
new argument that lowers one full power of the collar amplitude after the
`E_N^{1/2}D_N^{1/2}` step. No such argument is currently present in the lane.

## Intended Proof Route

1. Expand the threshold collar `S_{N+M}u - S_{N-4}u` into bands `N-3 \le k \le N+M`.
2. Use Bernstein on the collar factor together with the already isolated dyadic enstrophy weights `2^{2j}`, or else identify the exact further split still needed if the naive coefficient reduction is not yet theorem-grade.
3. Sum the finite-band interactions by almost orthogonality.
4. Use Young absorption to place the derivative-bearing part into `\varepsilon \nu D_N(t)` and the remainder into `\mathcal{L}_N(t)E_N(t)`.

## Divergence-Form Spill Reduction On The Upgraded Surface

For a representative spill term with one threshold shell and one output shell,
the dyadic enstrophy test gives a shellwise bound of the form

```math
2^{2j}\big|\langle \Delta_j(\Delta_k u\cdot\nabla \Delta_\ell u),\Delta_j u\rangle\big|
\lesssim
\Theta_N(t)\,2^{2j}\|\Delta_j u\|_{L^2_x}^2,
```

where `j\ge N`, `|j-\ell|\le C_0`, and one of `k,\ell` lies in the threshold
strip `N-M\le \cdot \le N+M`.

The key point on the upgraded surface is that every such spill interaction can
be rewritten in divergence form so that the derivative lands on the high output
shell rather than on the threshold shell. Because every dyadic block of a
divergence-free velocity field is itself divergence-free, one has schematically

```math
\Delta_k u\cdot\nabla \Delta_\ell u
=
\nabla\cdot(\Delta_k u\otimes \Delta_\ell u)
```

whenever the transport factor `\Delta_k u` is used, and likewise after
symmetry when the threshold shell appears in the non-transport slot. Therefore
all threshold-collar configurations reduce to the same coefficient type

```math
\Theta_N(t)
:=
\sum_{m=N-M}^{N+M}2^{3m/2}\|\Delta_m u(t)\|_{L^2_x},
```

rather than to the derivative-bearing threshold coefficient `\Theta_N^{str}`.

For the representative shell,

```math
2^{2j}\big|\langle \Delta_j(\Delta_k u\cdot\nabla \Delta_\ell u),\Delta_j u\rangle\big|
\lesssim
\Theta_N(t)\,E_j(t)^{1/2}D_j(t)^{1/2}.
\tag{1}
```

Summing over `j\ge N` and using Cauchy-Schwarz,

```math
\sum_{j\ge N}2^{2j}|\mathcal C_j^{spill}(t)|
\lesssim
\Theta_N(t)\sum_{j\ge N}E_j(t)^{1/2}D_j(t)^{1/2}
\le
\Theta_N(t)\,E_N(t)^{1/2}D_N(t)^{1/2}.
\tag{2}
```

Young now gives, for every `\varepsilon>0`,

```math
\Theta_N(t)\,E_N(t)^{1/2}D_N(t)^{1/2}
\le
\varepsilon \nu D_N(t)
+
C_{\varepsilon,\nu}\,\Theta_N(t)^2\,E_N(t).
\tag{3}
```

Because the threshold strip has only `O_M(1)` shells,

```math
\Theta_N(t)^2
\lesssim_M
\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_{L^2_x}^2
=
\mathcal K_N(t).
\tag{4}
```

Equivalently,

```math
\Theta_N(t)^2 \lesssim_M \Theta_N^\sharp(t).
\tag{4'}
```

Combining `(2)` through `(4)` yields the upgraded spill estimate

```math
\sum_{j\ge N}2^{2j}|\mathcal C_j^{spill}(t)|
\le
C_{\varepsilon,M,\nu}\,\mathcal K_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t),
\tag{5}
```

and therefore

```math
\sum_{j\ge N}2^{2j}|\mathcal C_j^{spill}(t)|
\le
C_{\varepsilon,M,\nu}\,\widetilde\Lambda_N^\sharp(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
\tag{6}
```

and therefore, on the cleaner theorem-facing surface,

```math
\sum_{j\ge N}2^{2j}|\mathcal C_j^{spill}(t)|
\le
C_{\varepsilon,M,\nu}\,\widetilde\Lambda_N^\sharp(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
\tag{6'}
```

## Fixed-Threshold Admissibility Of The Collar Coefficient

For fixed `N`, the collar coefficient `\mathcal K_N` satisfies

```math
\mathcal K_N(t)
\le
C_{N,M}\|u(t)\|_{L^2_x}^2,
```

because the threshold strip contains only finitely many shells. Hence the
classical energy bound gives

```math
\mathcal K_N \in L^\infty(0,T)\cap L^1(0,T)
```

for each fixed `N`.

## Consequence

On the upgraded gradient-side interface

```math
\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp,
```

the threshold-local spill collar is no longer a live coefficient mismatch. It
reduces to a finite-collar coefficient that is fixed-threshold admissible on
the same Euclidean surface.

The spill packet therefore looks locally viable on the upgraded route. The
remaining proposition-level gradient burden is pushed onto:

- the lifted high-side remainder,
- the full proposition-level genuine high-high propagation,
- and the final compatibility audit of the upgraded Proposition `6.1`.

The downstream high-side packet is tracked in
`gradient-genuine-high-high-packet.md`.

## Honest Boundary

This note now records a coherent upgraded spill route, but it still does **not**
claim that the full proposition-level gradient bridge is discharged.

What remains open after the spill upgrade is:

- the lifted high-side remainder,
- the full proposition-level genuine high-high propagation,
- the final compatibility audit of the upgraded gradient proposition with the
  full C3 warrant.
