# ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A explicit rigid class search

## Target

Find an explicit rigid ancient class `B` such that

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_B.A
```

and

```math
ZenoResidueLiouville_B.A:
\quad B\Longrightarrow \mu_*^{src}=0.
```

Together these close the Zeno compact-rigidity supplier branch for `SourcePulseExclusion.A` once the class-production half is proved. Zeno compactness gives a nonzero residue limit, membership in `B` activates the residue Liouville theorem, and the resulting `\mu_*^{src}=0` contradicts `\mu_*^{src}(Q_1^-)\ge c_0`.

## Installed extraction

The extraction half is installed:

```math
ZenoCompactnessExtraction.A.
```

It produces an ancient local suitable source-residue limit

```math
(u_*,p_*,\mu_*^{src})
```

with positive native residue:

```math
\mu_*^{src}(Q_1^-)\ge c_0>0.
```

## Candidate rigid classes

Finite global ancient energy is unavailable from the rescaling. For the
parabolic rescaling \(u_m(y,s)=r_m u(x_m+r_my,t_m+r_m^2s)\),
\(\|u_m(s)\|_{L^2_y}^2=r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2_x}^2\) on the rescaled
global domain.

Type I control is unavailable from the local energy and pressure compactness package. The source-pulse branch supplies active residue, not a pointwise envelope.

Critical smallness is unavailable. CKN-style smallness is a regularity consumer, while the extracted source residue is positive at unit scale.

Bounded ancient vorticity is unavailable. The extraction supplies weak local energy and pressure bounds, with no uniform vorticity bound.

Self-similar or discretely self-similar structure is unavailable. A Zeno sequence gives shrinking scales and finite parabolic time accumulation, while it supplies no invariance equation or fixed scale ratio.

Two-dimensional or axisymmetric reduction is unavailable. Same-fluid packet geometry preserves carrier fidelity, while it supplies no invariant axis or dimensional reduction.

The source-cancellation class has residue-vanishing built in only in the native positive-residue sense. Weak signed cancellation leaves positive native residue compatible with signed cancellation. Strong native cancellation is exactly the desired contradiction.

## Result

The current explicit candidate list supplies no rigid class `B` produced from the Zeno ancestry inputs. The class-specific Liouville half may be valid for some classes, while production of those classes is the active obstruction.

## Verdict

The Zeno rigid-class branch reduces to one of two paths:

```math
LocalPositiveSourceCarleson.A
```

or a new theorem producing an explicit rigid Zeno ancient class `B` that controls the native positive source-residue measure.

No current candidate class provides a discharge.
