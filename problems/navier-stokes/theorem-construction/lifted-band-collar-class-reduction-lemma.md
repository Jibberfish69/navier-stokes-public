# Lifted-Band Collar-Class Reduction Lemma

## Purpose

This note records the first theorem-grade reduction that is actually justified
on the continuous-scale signed route.

It does **not** close the lifted-band theorem. It proves that, after passing to
the signed scalar channel and quotienting by the already-accepted collar
packet class, the lifted-band problem is reduced to only two genuinely new
terms:

```math
\text{upper boundary packet}
\quad+\quad
\text{mesoscopic residual}.
```

That is the sharpest honest reduction presently available on the Euclidean
surface.

## Continuous-scale signed setup

Work with the continuous LP family from
`signed-lifted-band-scale-descent-identity.md`:

```math
P_{\le \ell} := \varphi(\ell D),
\qquad
Q_\ell := -\,\ell\partial_\ell P_{\le \ell},
\qquad
s:=\log \ell.
```

Let

```math
b_\ell^{meso} := P_{\le c/\ell}u - P_{\le 2^{N+M}}u,
```

and let `\Psi=\Psi(s,t)` be a chosen global scalar representative after
gluing modulo spill on the signed route.

The signed density is

```math
\mathfrak c_\ell(t)
:=
\ell^{-2}
\left\langle
[Q_\ell,b_\ell^{meso}\!\cdot\nabla]u,\,
Q_\ell u
\right\rangle.
```

Choose a smooth partition of unity in the logarithmic scale variable:

```math
\chi_{nose}+\chi_{mid}+\chi_{tail}=1.
```

The transition supports of `\partial_s\chi_{mid}` are the upper and lower
collars. Define

```math
\mathcal I^{nose}+\mathcal I^{tail}:=(\partial_s\chi_{mid})\Psi.
```

## Collar class

Define the admissible collar packet class `\mathscr A_{collar}` to be the
linear span of the following scalarized pairing objects:

1. finite lower fixed-collar packet families supported on the lower transition
   collar, centered at the fixed cutoff scale `2^{N+M}`;
2. same-scale edge packets obtained by replacing a low-pass test factor with
   its edge-band contribution in a commutator pairing at scale `\ell^{-1}`;
3. admissible collar errors: finite linear combinations of scalarized
   pairings whose multipliers differ by smooth bounded-gap perturbations and
   whose frequency support stays inside a `C_{\mathrm{collar}}` collar around one of the two
   transition bands.

This is a reduction class, not a new theorem target.

The phrase "modulo admissible collar errors" is structural until a quantitative
residual bound is supplied.  A proof-spending collar residual on an interval `I`
must be named as `\mathcal E_N^{collar}` and satisfy a bound of the form

```math
\int_I |\mathcal E_N^{collar}(t)|\,dt
\le
\varepsilon_{collar}^{res}\nu\int_I D_N(t)\,dt
+
C_{collar,*}^{res}2^{-2\delta N}.
\tag{collar-res}
```

Without `(collar-res)`, the reduction only says where the leftover packet lives;
it does not absorb the leftover packet into the dissipative budget.

## Structural identity

From the signed scale-descent identity,

```math
\mathfrak c
=
-\partial_s\Psi
+ \mathcal S^{spill}
+ \mathcal W,
```

one gets by the product rule

```math
\chi_{mid}\mathfrak c
=
-\partial_s(\chi_{mid}\Psi)
+ (\partial_s\chi_{mid})\Psi
+ \chi_{mid}\mathcal S^{spill}
+ \chi_{mid}\mathcal W.
```

Equivalently,

```math
\chi_{mid}\mathfrak c
=
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \mathcal I^{tail}
+ \chi_{mid}\mathcal S^{spill}
+ \chi_{mid}\mathcal W.
\tag{1}
```

This identity is exact.

## Lemma A: tail interface reduces to the lower fixed-collar family

On the lower transition collar, there exists a finite collar width `C` such
that

```math
\mathcal I^{tail}
=
\mathcal T^{lower\text{-}collar}_{N+M}
+ \mathcal E^{tail}_{collar},
\qquad
\mathcal E^{tail}_{collar}\in \mathscr A_{collar},
\tag{2}
```

where

```math
\mathcal T^{lower\text{-}collar}_{N+M}
:=
\sum_{|m-(N+M)|\le C}\mathcal T_m
```

is a finite fixed-cutoff collar family.

### Proof

On the support of `\partial_s\chi_{mid}` inside the lower transition collar,
the scale variable satisfies

```math
c_\ell2^{-(N+M)}\le \ell\le C_\ell2^{-(N+M)}
```

up to fixed constants depending only on the partition profile. Therefore the
smooth multipliers `P_{\le \ell}` and `P_{\le c/\ell}` vary only inside a
`C_{\mathrm{collar}}` family of multiplier supports centered at the cutoff
`2^{N+M}`.

Write

```math
\Psi_\ell
=
\ell^{-2}
\left\langle
[P_{\le \ell},b_\ell^{meso}\!\cdot\nabla]u,\,
P_{\le \ell}u
\right\rangle.
```

Inside the lower collar, replace `P_{\le \ell}` and the tail part of
`b_\ell^{meso}` by a bounded family of reference multipliers
`\{P_{\le 2^m}\}_{|m-(N+M)|\le C}`. The difference between the actual smooth
multiplier and the reference family is a bounded-gap perturbation supported on
the same collar. In a scalarized pairing, every such perturbation produces an
admissible collar error by definition of `\mathscr A_{collar}`.

Multiplying by `\partial_s\chi_{mid}` keeps the whole expression supported on
the same lower collar. So the tail interface is exactly a finite sum of
fixed-cutoff collar packets plus an admissible collar error, which is `(2)`.

## Lemma B: spill reduces to the same-scale edge packet in the scalar channel

In the scalarized pairing/channel,

```math
\chi_{mid}\mathcal S^{spill}
=
\mathcal S^{edge}
+ \mathcal E^{spill}_{collar},
\qquad
\mathcal E^{spill}_{collar}\in \mathscr A_{collar},
\tag{3}
```

where `\mathcal S^{edge}` is the same-scale edge packet.

### Proof

By the continuous-scale definition of the mesoscopic drift,

```math
\ell\partial_\ell b_\ell^{meso}
=
\ell\partial_\ell P_{\le c/\ell}u
=
\widetilde Q_\ell u,
```

for a smooth band-pass operator `\widetilde Q_\ell` localized at
`c_Q\ell^{-1}\le |\xi|\le C_Q\ell^{-1}`. Therefore the spill term has the
scalarized form

```math
\mathcal S^{spill}_\ell
:=
\ell^{-2}
\left\langle
[P_{\le \ell},(\widetilde Q_\ell u)\!\cdot\nabla]u,\,
P_{\le \ell}u
\right\rangle.
```

The commutator output is supported near the edge scale `\ell^{-1}`. Hence,
inside the scalarized pairing, only the edge-band component of the low-pass
test factor contributes. Replace `P_{\le \ell}u` in the pairing by a smooth
edge-band projection `P_{[\ell]}u`. The discarded part is a same-scale
bounded-gap perturbation and therefore belongs to `\mathscr A_{collar}`.

This produces the same-scale edge packet `\mathcal S^{edge}` plus an
admissible collar error, proving `(3)`.

## Corollary: reduced identity modulo collar class

Substituting `(2)` and `(3)` into `(1)` gives

```math
\chi_{mid}\mathfrak c
\equiv
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \chi_{mid}\mathcal W
\quad \mod \mathscr A_{collar}.
\tag{4}
```

Equivalently, in expanded form,

```math
\chi_{mid}\mathfrak c
=
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \mathcal T^{lower\text{-}collar}_{N+M}
+ \mathcal S^{edge}
+ \chi_{mid}\mathcal W
+ \mathcal E^{collar},
\qquad
\mathcal E^{collar}\in \mathscr A_{collar}.
\tag{5}
```

## Consequence

The lifted-band problem is now reduced, modulo the already-accepted collar
class, to exactly two genuinely new analytic burdens:

```math
\text{upper boundary packet } \mathcal I^{nose}
\quad+\quad
\text{mesoscopic residual } \chi_{mid}\mathcal W.
```

The lower transition collar and same-scale spill are no longer new theorem
targets on this route. They are bookkeeping reductions back into the accepted
packet class.

The next note
`lifted-band-mesoscopic-residual-reduction-lemma.md`
attacks the second term. It proves that, after the scalar-potential gauge
normalization stated in that note, the interior residual
`\chi_{mid}\mathcal W` reduces further to a localized middle-band
stress-strain flux packet `\Pi_N^{mid}` modulo the same collar class.

## Honest boundary

This note proves only the reduction. It does **not** prove either of the two
remaining analytic steps:

1. barrier control of the upper boundary packet `\mathcal I^{nose}`;
2. barrier control or further structural decomposition of the mesoscopic
   residual `\chi_{mid}\mathcal W`.

So the signed continuous-scale route is now narrowed to one boundary term and
one interior residual class, and no longer to the whole lifted band.
