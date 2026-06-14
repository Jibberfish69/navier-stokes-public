# MinimalZenoAncientResidue_B class-production and Liouville attempt

## Status

Failed direct discharge.  The terminal Zeno compactness argument does produce a natural minimal ancient class `B_min`, but that class is not rigid enough to prove a source-residue Liouville theorem.  Strengthening the class enough to force residue zero requires hypotheses not produced by the Zeno extraction, or it assumes the desired source-drain conclusion.

## Target

Find an explicit class `B` such that

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_B.A
```

and

```math
ZenoBoundedClass_B.A\Longrightarrow ZenoResidueLiouville_B.A.
```

Then the terminal Zeno branch would close by contradiction with the inherited nonzero source residue.

## Produced minimal class

The terminal Zeno branch has

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
```

Rescale around the selected source-pulse windows.  The compactness package yields a local suitable ancient source-residue object

```math
(v,q,\nu_*)\quad\text{on }(-\infty,0]\times\mathbb R^3\text{ locally},
```

with local energy bounds on compact backward cylinders and source-residue measure convergence.  The selected packet gives

```math
\nu_*(Q_1(0,0))\ge \eta>0.
```

First-pulse selection supplies the no-incoming property:

```math
\nu_*(\text{threshold source-pulse class in }s<-a)=0
\qquad\forall a>0.
```

This defines the automatically produced class

```math
B_{min}:=
\{\text{local suitable ancient source-residue objects with local energy bounds, nonzero selected residue, and no fixed-time incoming threshold pulse}\}.
```

Thus

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_{B_{min}}.A
```

is available at the compactness level.

## Liouville test for `B_min`

A source-residue Liouville theorem would need

```math
(v,q,\nu_*)\in B_{min}\Longrightarrow \nu_*=0.
```

The local energy inequality used by this test is

```math
E_\phi(s_2)+\int_{s_1}^{s_2}D_\phi(s)\,ds
\le
E_\phi(s_1)+\nu_*([s_1,s_2]\times\operatorname{supp}\phi)+\text{standard local terms}.
```

The no-incoming property controls threshold source-pulse residue on fixed slices `s<-a`.  It does not exclude positive residue concentrating in a terminal layer `s\uparrow0`.  Thus it permits a measure scenario of the form

```math
\nu_*\text{ supported in }\{-\varepsilon<s\le0\}\text{ for every }\varepsilon>0
```

in the limiting Zeno sense.  This is exactly terminal Zeno accumulation.

The local energy inequality is compatible with such a positive terminal source measure.  It gives no sign contradiction and no backward uniqueness because `\nu_*` is an allowed positive source-residue measure.

Therefore the desired implication

```math
B_{min}\Longrightarrow \nu_*=0
```

is false as a consequence of the stated structure; at minimum it is not provable without an additional terminal-support exclusion or monotone ancestry rank.

## Why stronger classes do not solve production

One can name classes strong enough for known Liouville tools:

```math
B=\text{finite global ancient energy},
\quad
B=\text{Type I},
\quad
B=\text{critical-smallness},
\quad
B=\text{bounded vorticity/strain},
\quad
B=\text{self-similar or symmetric}.
```

But terminal Zeno compactness from `OriginalSmoothData` does not produce any of them.  Local energy is local, Type I and bounded-vorticity are endpoint amplitude controls, critical smallness conflicts with the retained nonzero residue, and self-similarity/symmetry is not imposed by the selected same-fluid ancestry.

A source-cancellation class would force `\nu_*=0`, but producing it is exactly the source-wall theorem and hence circular.

## Conclusion

The only class automatically produced by terminal Zeno compactness is

```math
B_{min}=\text{local suitable ancient source-residue object with no fixed-time incoming threshold pulse}.
```

This class is too weak for a Liouville theorem because terminal-time Zeno residue concentration remains allowed.  Every stronger known rigid class is not produced by the route.

Therefore the direct rigid-class strategy fails unless a new class `B` is found with both properties:

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_B.A,
```

and

```math
ZenoResidueLiouville_B.A.
```

## Remaining hard obstruction

The remaining missing ingredient is one of:

```math
\text{terminal-support exclusion for }\nu_*,
```

```math
\text{a monotone ancestry rank forbidding Zeno accumulation},
```

```math
\text{a genuinely produced rigid ancient class},
```

or the direct source-Carleson route

```math
ScaleCriticalTreeCarleson.A/LocalPositiveSourceCarleson.A.
```
