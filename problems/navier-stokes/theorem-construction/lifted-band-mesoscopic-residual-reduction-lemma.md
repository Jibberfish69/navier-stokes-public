# Lifted-Band Mesoscopic Residual Reduction Lemma

## Purpose

This note attacks the remaining interior term

```math
\chi_{mid}\mathcal W
```

left by
`lifted-band-collar-class-reduction-lemma.md`.

It does **not** prove the barrier theorem for the interior residual. What it
does prove is the next honest reduction:

1. the purely profile-driven part of `\mathcal W` is moved into the
   renormalized scalar potential by the gauge normalization in this note,
   modulo admissible collar errors;
2. the genuinely interior part of `\mathcal W` reduces to a middle-band
   stress-strain flux packet controlled by the same coupled mesoscopic flux
   mechanism already isolated in
   `lifted-band-coarse-grained-stress-strain-flux-inequality.md`.

The collar phrase in item 1 is a structural reduction only.  It becomes a paid
estimate only after the resulting collar residual is named and shown to satisfy
the quantitative `(collar-res)` bound in
`lifted-band-collar-class-reduction-lemma.md`.

So after this note, the interior problem is no longer an undefined remainder.
It is a localized middle-band flux theorem.

## Setup

Keep the continuous-scale signed framework from
`signed-lifted-band-scale-descent-identity.md`.

The signed local balance form is

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+ \mathcal S_\ell^{spill}
+ \mathcal W_\ell.
\tag{SD2}
```

The collar-class note already proves

```math
\chi_{mid}\mathfrak c
\equiv
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \chi_{mid}\mathcal W
\quad \mod \mathscr A_{collar}.
\tag{CCR}
```

We now analyze the interior residual `\chi_{mid}\mathcal W`.

## Residual split

Write

```math
\mathcal W
=
\mathcal W^{trans}
+ \mathcal W^{prof},
\tag{1}
```

where:

1. `\mathcal W^{trans}` is the transpose partner produced when the logarithmic
   scale derivative falls on the second low-pass factor;
2. `\mathcal W^{prof}` is the derivative-of-weight / smooth-profile correction
   produced by differentiating the scalar prefactor and the smooth cutoff
   profile in the cumulative commutator potential.

This is the exact structural origin of `\mathcal W` in `(SD1)`.

## Lemma A: the profile part is exact modulo collar errors

There exist a scalar profile potential `\Psi^{prof}` and an admissible collar
error `\mathcal E^{prof}_{collar}\in\mathscr A_{collar}` such that

```math
\chi_{mid}\mathcal W^{prof}
=
\partial_s \Psi^{prof}
+ \mathcal E^{prof}_{collar}.
\tag{2}
```

### Proof

The terms in `\mathcal W^{prof}` come only from differentiating scalar weight
factors and smooth multiplier profiles in the cumulative potential. They are
therefore linear combinations of the same scalarized commutator pairing as
`\Psi`, multiplied by smooth bounded coefficients or bounded-gap perturbations
of the cutoff profile.

The pure scalar coefficient derivatives may be integrated back into the scale
primitive, producing a new scalar profile potential `\Psi^{prof}`. Any
bounded-gap perturbation of the smooth multiplier profile is, by definition,
an admissible collar error once projected to the scalarized pairing class.
This gives `(2)`.

## Lemma B: the transpose part is a middle-band flux packet

There exists a scalarized middle-band residual packet `\mathcal R^{flux}_{mid}`
such that

```math
\chi_{mid}\mathcal W^{trans}
=
\mathcal R^{flux}_{mid}
+ \mathcal E^{trans}_{collar},
\qquad
\mathcal E^{trans}_{collar}\in\mathscr A_{collar},
\tag{3}
```

and, pointwise in time,

```math
\left|
\int \mathcal R^{flux}_{mid}(s,t)\,ds
\right|
\le C_{\mathrm{mid}}
\Pi_N^{mid}(t),
\tag{4}
```

where

```math
\Pi_N^{mid}(t)
:=
\int_0^{\ell_N}
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\Sigma_\ell^{meso}(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx\,
\frac{d\ell}{\ell}.
```

### Proof

The transpose term is produced by differentiating the second low-pass factor in
the cumulative commutator pairing. So it has the same scalarized commutator
geometry as the original signed density: one factor is a commutator output
localized at the edge scale `\ell^{-1}`, and the paired test factor is a
band-pass contribution at the same scale.

After discarding bounded-gap smooth multiplier perturbations into
`\mathscr A_{collar}`, the remaining kernel structure is the same commutator
pairing already treated in
`lifted-band-coarse-grained-stress-strain-flux-inequality.md`.
Applying the same mean-value / local averaging argument at each scale yields a
pointwise bound by the mesoscopic strain-band stress product

```math
\Sigma_\ell^{meso}(x,t)\,\tau_\ell^{H^1}[u](x,t),
```

localized by `\chi_{mid}` to the middle band. Integrating over `s` gives `(4)`.

## Corollary: renormalized interior residual reduction

Define the renormalized scalar potential

```math
\widetilde\Psi := \Psi + \Psi^{prof}.
```

Then, combining `(2)` and `(3)`,

```math
\chi_{mid}\mathcal W
=
\mathcal R^{flux}_{mid}
+ \mathcal E^{mid}_{collar}
+ \partial_s(\widetilde\Psi-\Psi),
\qquad
\mathcal E^{mid}_{collar}\in\mathscr A_{collar}.
\tag{5}
```

Substituting this into `(CCR)` gives

```math
\chi_{mid}\mathfrak c
\equiv
-\partial_s(\chi_{mid}\widetilde\Psi)
+ \mathcal I^{nose}
+ \mathcal R^{flux}_{mid}
\quad \mod \mathscr A_{collar}.
\tag{6}
```

So the interior residual is reduced to a localized middle-band flux packet.

## Consequence

After collar-class reduction and profile renormalization, the signed route is
reduced to

```math
\text{upper boundary packet}
\quad+\quad
\text{middle-band stress-strain flux packet}.
```

Equivalently, the only genuinely new analytic tasks are:

1. the upper-boundary barrier theorem from
   `lifted-band-upper-boundary-packet.md`;
2. a barrier theorem for the localized middle-band flux `\Pi_N^{mid}`.

The new note
`middle-band-flux-gap-kernel-theorem.md`
records the only continuum proof route currently visible for the second item:
split `\Pi_N^{mid}` into a bounded-width near corona, reducible to a moving
spill packet, and a far corona carrying the explicit scale-ratio kernel
`\ell/r`, the continuous analogue of the old dyadic gap factor `2^{-(j-k)}`.

## Honest boundary

This note does **not** prove the barrier estimate

```math
\int_0^T \Pi_N^{mid}(t)\,dt
\le
\frac{\eta\nu}{8}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
```

It proves only that the interior residual is faithfully reduced to that one
middle-band flux object, modulo exact scale derivatives and collar-class
errors.
