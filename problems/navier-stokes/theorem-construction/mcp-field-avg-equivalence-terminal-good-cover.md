# Field_avg Terminal Good-Cover Equivalence

## Status

Conditional theorem-object installation for the averaged `PCTP.hard` route.

This note turns the terminal-scale reading of `Field_avg` into a precise equivalence theorem, so that `TGC.A` no longer depends on an implicit naming convention.

## Setup

Let `T` be a bounded-distortion same-fluid terminal approach tail. For `(a,t)\in T`, define the local SCF-good radius

```math
r_{good}(a,t):=\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m\}.
```

Define the pointwise bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}:=\{(a,t):r_{good}(a,t)=0\}.
```

## Definition: averaged field/coherence object

The averaged field object is the terminal positive-scale same-fluid SCF-good cover object:

```math
Field_{avg}(T)
\Longleftrightarrow
\exists T'\subset T\text{ terminal},\ \exists r_*>0
\text{ such that }r_{good}(a,t)\ge r_*\text{ for all }(a,t)\in T'.
```

Equivalently, after passing to a terminal subtail, every point admits an `SCF_base` good same-fluid cylinder at a common positive scale.

Define

```math
Jump_{avg}(T)\Longleftrightarrow \neg Field_{avg}(T).
```

This definition includes both pointwise bad-set contact and terminal radius degeneration.

## Theorem 1: Field_avg equivalence with terminal good cover

Assume `SGC.A_{a.e.}` and bounded same-fluid distortion. Then

```math
Field_{avg}(T)
```

is equivalent to existence of a terminal finite positive-scale SCF-good same-fluid cover of the route-relevant terminal tail:

```math
\exists T'\subset T,\ \exists\{Q_{r_j}^{\Phi}(a_j,t_j)\}_{j=1}^{J},\ \exists r_*>0
```

such that

```math
T'\subset\bigcup_{j=1}^J Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
\qquad
r_j\ge r_*.
```

### Proof

Suppose `Field_avg(T)` holds. Then there is a terminal subtail `T'` and `r_*>0` such that `r_good(a,t)\ge r_*` on `T'`. For each `(a,t)\in T'`, choose a same-fluid SCF-good cylinder with radius at least `r_*/2`. These cylinders form an open cover of the route-relevant material tail. The material cross-section is compact after passing to the retained terminal subtail, and bounded same-fluid distortion preserves finite overlap after shrinking if necessary. Hence finitely many selected cylinders cover `T'`, all with radius at least `r_*/2` and all satisfying `SCF_base\le\varepsilon_m`.

Conversely, suppose such a finite positive-scale cover exists. For every point of the covered terminal tail, the containing cover cylinder supplies a positive SCF-good scale bounded below by a geometric fraction of the cover radius. Since the finite cover has minimum radius at least `r_*`, there is a common positive lower bound for `r_good` on a terminal subtail. Hence `Field_avg(T)` holds.

This proves the equivalence.

## Theorem 2: Jump_avg equivalence

Under the same definitions,

```math
Jump_{avg}(T)
\Longleftrightarrow
\forall T'\subset T\text{ terminal},\quad
\inf_{(a,t)\in T'}r_{good}(a,t)=0.
```

### Proof

By definition, `Jump_avg` is failure of `Field_avg`. Failure of `Field_avg` means there is no terminal subtail and no positive lower bound for `r_good` on that subtail. Equivalently, every terminal subtail has arbitrarily small good radius somewhere:

```math
\inf_{(a,t)\in T'}r_{good}(a,t)=0.
```

This covers both cases:

1. some point lies in `\mathcal B_{\varepsilon_m}^{\Phi}`;
2. every point may have positive radius, but the radii degenerate along a sequence approaching `T_*`.

Thus terminal radius collapse is a genuine `Field_avg` failure, not a fifth endpoint face.

## Corollary: TGC.A object-law form

With `Field_avg` installed, `TGC.A` becomes the object-law dichotomy

```math
Field_{avg}(T)\quad\vee\quad Jump_{avg}(T).
```

On the `Field_avg` branch, Theorem 1 gives a finite positive-scale SCF-good cover. Combining this with `ATD_m^\varepsilon` and the finite route parameter set supplies the scheduler-ready cover used by `AACT.Global.noJump`:

```math
Field_{avg}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
\text{terminal scheduled averaged cover}
\Longrightarrow
DTC.A_{avg}.
```

On the `Jump_avg` branch, the face is carried to the averaged endpoint matrix and removed downstream by

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Noncircularity

This theorem uses only:

1. the SCF-good radius function;
2. compact-good coverage from `SGC.A_{a.e.}`;
3. bounded same-fluid distortion;
4. compactness of the retained material terminal tail;
5. the definition of the averaged field/coherence object.

It does not use

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad End_{NS},
\quad End_{NS,avg},
\quad old\ Field,
\quad old\ DTC.A,
\quad old\ CFI.A.
```

## Boundary

This note installs the object-law equivalence needed by `TGC.A`. It does not prove local `AACT.KX` term estimates, source closure, endpoint matrix closure, or release promotion.