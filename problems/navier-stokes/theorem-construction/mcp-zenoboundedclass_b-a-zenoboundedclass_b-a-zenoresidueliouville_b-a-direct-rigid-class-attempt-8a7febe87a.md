# ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A direct rigid-class attempt

## Status

Failed direct discharge.  The terminal Zeno branch produces a local suitable ancient source-residue object, but the compactness package does not place that object into any currently known rigid class strong enough to support a source-residue Liouville theorem.  Therefore this note does not prove the Zeno source-wall closure from `OriginalSmoothData`.

## Target

The terminal Zeno refill branch is

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
```

The desired rigid-class closure is

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
\Longrightarrow
\text{no terminal Zeno source-residue branch}.
}
```

Expanded:

1. `ZenoBoundedClass_B.A`: every terminal Zeno rescaling limit belongs to an explicit rigid ancient class `B`.
2. `ZenoResidueLiouville_B.A`: every ancient source-residue object in class `B` has zero source residue.
3. The selected Zeno limit carries nonzero inherited source residue, giving contradiction.

## Extracted object

The Zeno compactness step gives a local suitable ancient object

```math
(v,q,\nu_*)\quad\text{on }(-\infty,0]\times\mathbb R^3\text{ locally},
```

with nonzero inherited source residue

```math
\nu_*(Q_1(0,0))\ge \eta>0.
```

The available compactness is local: local energy inequality, local pressure decomposition, and weak convergence of the source-residue measures.  This is not yet a rigid class.

## Candidate class tests

### 1. Finite global ancient energy

A finite global energy class would support stronger compactness and possible Liouville inputs.  But Zeno rescaling of a local packet does not preserve a uniform global ancient energy bound.  Under parabolic blowup, global energy scales like the inverse length scale on larger rescaled domains, and the terminal Zeno extraction is only locally controlled.

Therefore

```math
OriginalSmoothData\not\Rightarrow \text{finite global ancient energy class}
```

for the extracted Zeno object.

### 2. Type I class

A Type I class would require a scale-uniform amplitude envelope, for example

```math
|v(y,s)|\le C_I |s|^{-1/2}
```

or an equivalent critical bound.  The refill geometry supplies a normalized source-residue packet, not a Type I amplitude bound.  Source-balanced active pulses are precisely the obstruction to such an envelope.

Thus Type I membership is not produced.

### 3. Critical-smallness class

Critical smallness would allow an epsilon-regularity or Liouville argument.  But the selected Zeno object carries nonzero normalized source residue.  A class strong enough to force critical smallness would already preclude the selected residue and hence would assume the desired conclusion.

Thus critical smallness is circular as a produced class.

### 4. Bounded vorticity / bounded strain class

A bounded vorticity or bounded strain class would imply strong regularity.  Original smooth data gives such bounds only on compact preterminal windows.  The Zeno sequence approaches the terminal endpoint at shrinking scales; no uniform bound survives the rescaling from the currently installed inputs.

Thus bounded vorticity/strain is not inherited.

### 5. Self-similar, axisymmetric, or two-dimensional class

The same-fluid terminal packet selection and local suitable compactness do not impose self-similarity, axisymmetry, or two-dimensionality.  These are extra structural assumptions, not produced by the source-wall route.

Thus these rigid classes are unavailable.

### 6. Source-cancellation class

A source-cancellation class would assert that the source residue vanishes or has enough signed cancellation in the limit.  But the selected object is built precisely to retain positive localized source residue.  Producing this class would be equivalent to proving the desired source-wall theorem.

Thus source-cancellation is not an independent class.

## Broad ancient no-pulse obstruction

A broad theorem of the form

```math
\text{no nontrivial local suitable ancient object can carry a unit active packet}
```

is too strong.  Smooth ancient profiles and cancellation examples can be nontrivial while not carrying the particular source residue.  Therefore the Liouville theorem must be source-residue typed and must use a genuine rigid class `B`.

## Conclusion

No currently named candidate `B` satisfies both requirements:

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_B.A,
```

and

```math
ZenoBoundedClass_B.A\Longrightarrow ZenoResidueLiouville_B.A.
```

The direct Zeno rigid-class branch therefore remains open.

## Remaining source-wall primitives

The remaining viable closures are still:

```math
ScaleCriticalTreeCarleson.A,
\qquad
LocalPositiveSourceCarleson.A,
\qquad
ReverseHolderParentConcentration.A,
\qquad
\text{or a genuinely new rigid class }B\text{ for the Zeno branch.}
```

This note sharpens the Zeno requirement: the next useful progress must name an explicit class `B`, prove the Zeno limit belongs to `B` from `OriginalSmoothData`, and prove a source-residue Liouville theorem for exactly that class.
