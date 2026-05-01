# Field_avg / Jump_avg Definition Integrity

## Status

Closed definition-integrity surface.

## Definitions

For a bounded-distortion same-fluid terminal tail `T`, define

```math
r_{good}(a,t):=\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m\}.
```

Define

```math
Field_{avg}(T)
\Longleftrightarrow
\exists T'\subset T\text{ terminal},\ \exists r_*>0
\text{ such that }r_{good}(a,t)\ge r_*\text{ for all }(a,t)\in T'.
```

Equivalently, `Field_avg` means a terminal positive-scale SCF-good same-fluid cover exists.

Define

```math
Jump_{avg}(T)\Longleftrightarrow\neg Field_{avg}(T).
```

Equivalently,

```math
Jump_{avg}(T)
\Longleftrightarrow
\forall T'\subset T\text{ terminal},\quad
\inf_{(a,t)\in T'}r_{good}(a,t)=0.
```

## Integrity theorem

The two definitions form an exact dichotomy:

```math
Field_{avg}(T)\vee Jump_{avg}(T),
\qquad
Field_{avg}(T)\wedge Jump_{avg}(T)\text{ impossible}.
```

## Proof

If `Field_avg` holds, a terminal subtail has a positive lower SCF-good radius. Compactness and bounded same-fluid distortion extract a finite positive-scale SCF-good cover on that subtail. Thus terminal radius loss fails.

If `Field_avg` fails, every terminal subtail has arbitrarily small SCF-good radius somewhere. This includes both direct bad-set contact and sequence collapse toward `T_*`. By definition this is `Jump_avg`.

The two alternatives are complementary by construction and by the radius characterization.

## Boundary

`Field_avg` is an averaged object. The pointwise `Field` predicate appears only later through `Field.Read` after `READ.COVER`.

`Jump_avg` is removed only by the averaged endpoint theorem

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

This prevents both endpoint-face definition drift and averaged/pointwise type leakage.