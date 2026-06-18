# MPP CM Field-Face Two-Root Run-Through

## Status

This note runs the contrapositive CM witness-face proof shape through both live
source-wall options:

```math
SquareReserveEvolution.A
```

and

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Verdict:

```math
\boxed{
\text{neither option is discharged by the current installed repo inputs.}
}
```

The CM witness-face framing is correct and should be kept.  It does not by
itself solve the Field-face residual wall.

## Periodic Navier--Stokes Target

For smooth divergence-free zero-mean data on `T^3`,

```math
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
u(0)=u_0,
```

prove the maximal classical lifespan is infinite:

```math
T_*=\infty.
```

Assume for contradiction:

```math
T_*<\infty.
```

Then there are terminal same-fluid parabolic windows `Q_j\nearrow T_*` on which
the classical tower cannot remain uniformly smooth:

```math
\neg Smooth(Q_j;\mathfrak O_{NS}^{work})
```

for a terminal subsequence.

## CM Witness-Face Split

The class-membership predicate is:

```math
Member(Q;\mathfrak O_{NS}^{work}).
```

The contrapositive primitive is:

```math
Exit(Q):=\neg Member(Q;\mathfrak O_{NS}^{work}).
```

The CM witness envelope is:

```math
CM_{N,r,Q}
:=
Pack_Q(u,\Phi)
\wedge
Part_{N,Q}(u,p)
\wedge
Field_{N,r,Q}(u,p).
```

The installed direction is:

```math
\forall N\ \exists r_N:
CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work})
\Longrightarrow
Smooth_N(Q).
```

Therefore:

```math
\neg Smooth(Q)
\Longrightarrow
\neg Member(Q).
```

And since `CM=>Member`, the contrapositive gives:

```math
\neg Member(Q)
\Longrightarrow
\exists N\ \forall r>0:\neg CM_{N,r,Q}.
```

Expanding the finite conjunction:

```math
\boxed{
\neg Smooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right).
}
```

This uses only the installed direction `CM=>Member`; it does not require the
false converse `\neg CM=>\neg Member`.

## Face Discharge Reduction

The current route treats retained Pack and Part exits as already routed inside
the terminal class-membership packet:

```math
\neg Pack_Q\Longrightarrow\bot,
```

```math
\neg Part_{N,Q}\Longrightarrow\bot.
```

Thus the surviving branch is:

```math
Pack_Q\wedge Part_{N,Q}\wedge \forall r>0\,\neg Field_{N,r,Q}.
```

This is the Field-face residual wall.

The Field-face failure is translated into a native terminal positive source
reserve / source-pulse event:

```math
Pack_Q\wedge Part_{N,Q}\wedge \neg Field_{N,r,Q}
\Longrightarrow
\text{terminal positive source reserve}.
```

The scale-critical reserve is:

```math
\mathcal R_N(I)
:=
\int_I
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt.
```

The remaining contradiction engine must either prove:

```math
\mathcal R_N([T_*-\epsilon,T_*))\to0
\qquad(N\to\infty),
```

or prove that the reserve cannot carry a terminal positive atom/pulse.

## Option A: `SquareReserveEvolution.A`

The desired dynamic law is:

```math
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}
+
o_N(1).
```

If installed, this would close the Field-face wall.  Indeed, choose the first
terminal same-fluid window with reserve at least a fixed `c_0>0`, independent
of the backward iteration depth.  Iterating backward gives:

```math
\mathcal R_N(W_0)
\le
\sum_{m\ge0}(1-\delta)^mCharge(Past_m(W_0))
+
\lim_{m\to\infty}(1-\delta)^m\mathcal R_N(Past_m(W_0))
+
Loss_{legal}
+
o_N(1).
```

The first-pulse choice removes every earlier reserve pulse of size at least
`c_0`, the contractive term dies, and the charge is paid by the high-frequency
dissipation tail:

```math
\int\sum_{q>N}D_q(t)\,dt\to0.
```

So:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
\text{no Field-face source pulse}.
```

### Direct Attempt

The installed corpus supplies:

```math
ParentSquareEmbed.A:
\quad
\text{diffuse parent clouds embed statically into }\mathcal R_N,
```

and

```math
WeightedAdjRes.A:
\quad
\text{child packet residual charges are controlled by }
\int\sum_{q>N}D_q+o_N(1).
```

These do not produce a dynamic inequality for `\mathcal R_N`.

The missing object is a parent-or-charge law for the donor square factor:

```math
|A_{P^-}(t)|^2.
```

Current adjoint packet dynamics control normalized child mass:

```math
M(T)=g_T^{-2}|\langle w_j(t_+),\psi_T(t_+)\rangle|^2,
```

but the reserve after `ParentSquareEmbed.A` is the donor cloud square mass:

```math
\sum_{P^-}|A_{P^-}(t)|^2.
```

There is no installed derivative, dissipative sign, residual charge, or
contractive parent edge for this donor square reserve itself.

### Option A Verdict

```math
\boxed{
SquareReserveEvolution.A
\text{ remains open.}
}
```

The exact missing subtheorem is:

```math
\boxed{
DonorSquareParentOrCharge.A:
\mathcal R_N(W)
\le
Charge(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}
+
o_N(1).
}
```

This is not lower than `SquareReserveEvolution.A`; it is the dynamic content of
`SquareReserveEvolution.A`.

A sharper equivalent name from the full Option A run is:

```math
\boxed{
ReserveCreationCharge.A:
\left[
\mathcal R_N(W)
-
(1-\delta)\mathcal R_N(Past(W))
-
Loss_{legal}(W)
\right]_+
\le
Charge_N(W)+o_N(1).
}
```

The scalar counter-ledger pattern is first-time creation:

```math
Past(W_m)=0,
\qquad
Charge_N(W_m)\to0,
\qquad
\mathcal R_N(W_m)\ge c_R.
```

To rule that out one needs `ReserveCreationCharge.A`, or a genuinely
noncircular substitute such as:

```math
ActiveWindowHeight.A,
\qquad
DonorReserveAdjointTrace.A,
\qquad
RetainedPackGainProduction.A+RetainedFaceAmplitudeGain.A.
```

## Option B: Zeno Rigid Class And Residue Liouville

If square-reserve control fails, the compactness route extracts a terminal Zeno
source-residue limit:

```math
(u_*,p_*,\mu_*^{src}),
```

with

```math
\mu_*^{src}(Q_1^-)>0.
```

The desired closure is:

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_B.A,
```

and

```math
ZenoResidueLiouville_B.A:
\quad
B\Longrightarrow\mu_*^{src}=0.
```

### Produced Class

The actually produced class is the minimal local suitable ancient
source-residue class:

```math
B_{min}
=
\{
\text{local suitable ancient source-residue objects with local energy bounds,
positive selected residue, and no fixed-time incoming threshold pulse}
\}.
```

The no-incoming property says that earlier selected source-pulse arrivals are
absent on fixed backward slices:

```math
\mu_*^{src}(\text{selected source residue in }s<-a)=0
\qquad
\forall a>0.
```

### Liouville Attempt

The desired Liouville claim would be:

```math
B_{min}\Longrightarrow \mu_*^{src}=0.
```

This is false from the stated structure.  The local energy inequality allows a
positive source-residue measure concentrating into the terminal layer:

```math
s\uparrow0.
```

The no-incoming property excludes earlier fixed-slice threshold pulses, but it
does not exclude a terminal-time atom or a terminal Zeno concentration.

### Stronger Classes Not Produced

The current extraction does not produce any of the rigid classes that would put
a Liouville theorem in reach:

```math
\text{finite global ancient energy},
```

```math
\text{Type I control},
```

```math
\text{critical smallness},
```

```math
\text{bounded vorticity/strain},
```

```math
\text{self-similarity or discrete self-similarity},
```

```math
\text{symmetry reduction},
```

```math
\text{native signed cancellation strong enough to kill positive residue}.
```

The temporal anti-atom route would close if produced:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad
\forall R<\infty.
```

But the prelimit theorem needed for that, such as

```math
UniformTemporalSourceIntegrability_p.A,
```

has already reduced back to `HeatScaleSquareSource.A` /
`ScaleCriticalTreeCarleson.A`.

### Option B Verdict

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
\text{ remains open for every currently produced explicit class }B.
}
```

The exact missing subtheorem is:

```math
\boxed{
ZenoRigidClassProduction.A:
\text{terminal Zeno source-residue rescaling produces a rigid ancient class
strong enough for source-residue Liouville.}
}
```

or, in the temporal support formulation:

```math
\boxed{
TemporalNonAtomicSource.A
}
```

from inputs not already equivalent to `ScaleCriticalTreeCarleson.A`.

The full Option B run sharpens this further.  The produced class
is:

```math
B_{min}
```

and it is too weak because it permits terminal-time source-residue atoms.  The
sharpened class

```math
B_{time}
=
B_{min}
+
\{\mu_*^{src}(B_R\times\{0\})=0\ \forall R<\infty\}
```

has a clean Liouville theorem:

```math
B_{time}\Longrightarrow\mu_*^{src}=0.
```

So the exact production-side missing theorem is:

```math
\boxed{
TemporalNonAtomicSource.A:
\mu_*^{src}(B_R\times\{0\})=0
\quad \forall R<\infty.
}
```

A sufficient prelimit theorem is:

```math
\boxed{
UniformTemporalSourceIntegrability_p.A
}
```

for some `p>1`, but existing direct tests route that sufficient estimate back
to:

```math
HeatScaleSquareSource.A
\equiv
ScaleCriticalTreeCarleson.A.
```

## Combined Contrapositive Chain

The desired one-line proof is structurally correct:

```math
T_*<\infty
\Longrightarrow
\neg Smooth
\Longrightarrow
\neg Member
\Longrightarrow
(\neg Pack\vee\neg Part\vee\neg Field)
\Longrightarrow
\neg Field
\Longrightarrow
\text{terminal source pulse}
\Longrightarrow
\bot.
```

The unresolved part is the final arrow:

```math
\text{terminal source pulse}\Longrightarrow\bot.
```

Current repo truth:

```math
\boxed{
\text{terminal source pulse}\Longrightarrow\bot
}
```

is equivalent, on the live branches, to proving one of:

```math
\boxed{
SquareReserveEvolution.A
}
```

or

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

## Final Remaining Targets

The direct target is:

```math
ReserveCreationCharge.A
\equiv
SquareReserveEvolution.A.
```

The alternate target is:

```math
TemporalNonAtomicSource.A
\quad
\text{for the Zeno native source-residue limit,}
```

or a genuinely produced rigid class `B` with an independent
`ZenoResidueLiouville_B.A`.

The retained-face amplitude route adds a useful conditional side bridge:

```math
PackGainLedger.A+PartEnvelope.A
\Longrightarrow
RetainedFaceAmplitudeGain.A
\Longrightarrow
CycleHeatAction.Amp,
```

but current finite `Pack_Q` does not imply `PackGainLedger.A`; the bridge
requires:

```math
RetainedPackGainProduction.A
```

or explicit promotion of `PackGainLedger.A` into the Pack face.
