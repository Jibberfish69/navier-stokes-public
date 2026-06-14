# Zeno entropy class and Liouville test

## Status

Failed as an unconditional source-wall discharge under installed inputs.

## Proposed rigid class

Define a candidate class `B_entropy` for a Zeno-extracted ancient limit:

```math
B_{entropy}:=
\text{ancient local suitable source-residue limit}
+
\text{no incoming parent mass on finite backward slices}
+
\text{finite inherited branch entropy production}.
```

The intended route is

```math
ZenoEntropyClass.A:
\quad OriginalSmoothData\Longrightarrow B_{entropy},
```

and

```math
ZenoResidueLiouville_{B_{entropy}}.A:
\quad B_{entropy}\Longrightarrow \mu_*^{src}=0.
```

## What extraction supplies

The installed compactness extraction gives an ancient local suitable source-residue limit

```math
(u_*,p_*,\mu_*^{src}),
\qquad
\mu_*^{src}(Q_1^-)\ge c_0>0.
```

It supplies local energy, local dissipation, pressure bounds, and Radon compactness for the source residue on compact backward cylinders.

## Entropy production issue

The failed entropy-charge test shows that diffuse legal parent branching can carry large entropy while paying vanishing quadratic cost.  Therefore the current inputs do not supply a finite inherited branch-entropy production bound.  In fact, the uniform diffuse model allows entropy to grow like

```math
H(\pi_P)=\log M
```

with no installed positive route ledger controlling it.

Thus

```math
OriginalSmoothData\Longrightarrow B_{entropy}
```

is unavailable unless a new theorem supplies

```math
ScaleNormalizedBranchEntropyReserve.A.
```

## No-incoming issue

The first-pulse construction gives no earlier threshold-crossing source pulse on finite backward slices.  It does not eliminate all diffuse incoming parent mass from `s=-\infty`.  Diffuse parent measures can disappear from every fixed bounded parent selector while retaining total source-parent mass.

Thus the no-incoming part of `B_entropy` is also stronger than the current first-pulse selection unless the source-parent compactness wall is solved.

## Liouville test

Even if `B_entropy` were produced, the Liouville implication

```math
B_{entropy}\Longrightarrow\mu_*^{src}=0
```

is not currently available.  Finite entropy production and local suitable weak bounds do not imply Type I control, finite global ancient energy, critical smallness, self-similarity, symmetry, or native source cancellation.  The class lacks a known monotone quantity forcing the positive native source-residue measure to vanish.

## Verdict

Both halves fail under installed inputs:

```math
\boxed{ZenoEntropyClass.A\text{ remains open.}}
```

```math
\boxed{ZenoResidueLiouville_{B_{entropy}}.A\text{ remains open.}}
```

The exact missing theorem is still a scale-normalized branch-complexity reserve or a new rigidity principle for ancient local suitable source-residue limits with diffuse parent ancestry.

## Consequence

The Zeno entropy fallback does not close the source wall.  It identifies a sharpened possible future target:

```math
ScaleNormalizedBranchEntropyReserve.A
+EntropyNoIncomingCompactness.A
+EntropyResidueLiouville.A.
```

No component is installed by the current source-wall inputs.
