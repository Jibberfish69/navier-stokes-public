# MPP PCTP.5.C Known-Criteria Source No-Pulse Attack

## Status

Theorem-facing attack note for the current full-route obstruction:

```math
PCTP.5.C:
\qquad
OriginalSmoothData\Longrightarrow SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot.
```

This note keeps the target broad.  It does not replace `PCTP.5.C` by another
small supplier label.  It asks which known Navier--Stokes regularity mechanisms
could actually kill the terminal active source-pulse object.

External anchors checked:

- Escauriaza--Seregin--Sverak, `L_{3,\infty}` / backward uniqueness route:
  <https://link.springer.com/article/10.1023/B%3AJOTH.0000041475.11233.d8>.
- Koch--Nadirashvili--Seregin--Sverak, bounded ancient Liouville route:
  <https://www-users.cse.umn.edu/~sverak/publications/liouville.pdf>.
- Caffarelli--Kohn--Nirenberg partial-regularity route, represented here by
  modern CKN/quantitative partial regularity references such as
  <https://arxiv.org/abs/2210.01783>.
- Constantin--Fefferman vorticity-direction regularity route, represented in
  accessible lecture/source form at
  <https://www.macs.hw.ac.uk/~simonm/lms-epsrc_short_course_2011/constantinfefferman.pdf>.

## Target Object

Use the exact source atom from the terminal target stack:

```math
SOURCE.NO\text{-}PULSE.A
:
\quad
\text{exclude heat-scale, scale-critical nonlinear source pulses carrying
mixed bilinear dissipation on the same short windows where }\gamma_j
\text{ is large.}
```

In the route notation used here, the same target is the exclusion of a terminal
family of source-balanced active windows supporting the mixed bilinear
dissipation measure

```math
\mathfrak B_N^\sigma(t)\,dt
```

on the bad spill-coefficient set.

## Theorem `KC.A` (known-criterion closures for `PCTP.5.C`)

Any one of the following four placements of the terminal active source-pulse
object discharges `PCTP.5.C`.

### `KC.L3` critical-norm placement

The terminal rescaling sequence associated to every `Jump_avg` source-pulse
family has a uniformly bounded critical velocity norm:

```math
\sup_n \|u^{(n)}\|_{L_t^\infty L_x^3(Q_1)}<\infty
```

on the normalized source-pulse cylinders, with enough compactness to pass to
the Escauriaza--Seregin--Sverak backward-uniqueness criterion.

Then a genuine finite singular source-pulse is impossible; hence
`Jump_avg=>\bot`.

### `KC.Liouville` source-residue Liouville placement

Every nonzero terminal source-pulse compactness limit lies in a class for which
an ancient-source Liouville theorem is available, for example a bounded ancient
mild class, a two-dimensional/axisymmetric scalar class, or another rigid class
with a maximum-principle replacement.  The limit must still carry nonzero
source residue.

The Liouville theorem forces the limit to be trivial in the active source
channel, contradicting the retained nonzero source residue.

### `KC.CKN` quantitative CKN placement

The bad source-pulse carrier admits an absolute-continuity or diagonal-local
placement strong enough to produce a terminal subcover on which the CKN
scale-invariant local quantities are small:

```math
C(r)+D(r) < \varepsilon_{CKN}
```

after same-fluid rescaling.

Then the source-pulse cylinder is regular and cannot contribute the bad
`Jump_avg` source mass.  In route language this is the high-power version of
`MSC.BadAC`, `DiagDom.A`, or `LocalSource.NoPulse.A`.

### `KC.Dir` vorticity-direction coherence placement

On every terminal active source-pulse window with large vorticity, the vorticity
direction has the scale-critical coherence required by a Constantin--Fefferman
type criterion.  Then the vortex-stretching channel

```math
\omega\cdot S\omega
```

cannot concentrate as a positive source-balanced active pulse, and the
`Jump_avg` source branch is eliminated.

### Proof

Each clause is conditional on a named placement hypothesis for the same
normalized source-pulse family.

For `KC.L3`, the terminal source pulse would give a bounded critical
`L_t^\infty L_x^3` blow-up profile.  The backward-uniqueness route rules out a
finite singularity under that critical bound, contradicting the assumed
terminal source-pulse nonsmoothness.

For `KC.Liouville`, compactness produces an ancient source-residue limit.  The
placement hypothesis puts that limit in a Liouville class.  The Liouville
conclusion removes the nonzero active source residue, contradicting the
definition of the source-pulse limit.

For `KC.CKN`, the placement hypothesis is the displayed smallness
`C(r)+D(r)<epsilon_CKN` on the pulse cylinder.  CKN epsilon regularity then
gives a regular cylinder, and a regular cylinder cannot carry the bad
`Jump_avg` source-pulse defect.

For `KC.Dir`, vorticity-direction coherence blocks concentration of the
stretching source in the active channel.  Without positive source-balanced
stretching, `AWG.A` follows on the branch and hence
`JAVG.1+JAVG.2` eliminates `Jump_avg`.

Any one placement theorem gives

```math
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot.
```

Together with the installed TGC/AACT/AVG/READ assembly, this gives
`PCTP.hard/TTU.A`.

## What The Known Criteria Do Not Supply

The external criteria are consumers, not original-data suppliers.  The current
repo inputs do not yet prove:

```math
OriginalSmoothData\Longrightarrow KC.L3,
```

```math
OriginalSmoothData\Longrightarrow KC.Liouville,
```

```math
OriginalSmoothData\Longrightarrow KC.CKN,
```

or

```math
OriginalSmoothData\Longrightarrow KC.Dir.
```

This matches the installed direct audits:

- energy controls first-moment dissipation, not active-square source pulses;
- smooth initial data gives finite preterminal amplitudes, not terminal
  scale-normalized source smallness;
- pressure recovery gives response ledgers, not a sign for vortex stretching;
- unweighted dyadic exchange cancels globally, not on the weighted active
  source carrier;
- broad ancient Liouville is false in general 3D without extra class
  placement.

## Fast Full-Route Target

The broad theorem still to prove is not another supplier synonym. It is the
placement dichotomy:

```math
\boxed{
\text{Every terminal active source-pulse family from }OriginalSmoothData
\text{ either enters }KC.L3\vee KC.Liouville\vee KC.CKN\vee KC.Dir,
\text{ or has already exited }Pack\vee Part\vee Field.
}
```

Call this:

```math
SourcePulseKnownCriterionPlacement.A.
```

Then:

```math
SourcePulseKnownCriterionPlacement.A
\Longrightarrow
PCTP.5.C
\Longrightarrow
PCTP.hard/TTU.A
\Longrightarrow
\text{conditional terminal-consumption bridge}
\Longrightarrow
\text{periodic Theorem 2.1 warrant}.
```

This is the current high-power attack surface for the contrapositive proof
program.  It preserves the broad target while avoiding further churn among
route-alias labels such as `AWG.A`, `SOURCE.NO-PULSE.A`, `QDrain.A`,
`MSC.BadAC`, `PulseCharge.A`, and `SignedLocalSource.A`.

## Candidate `KC.Place` Boundary Audit

The retained-field argument gives only the following conditional placement:

```math
\boxed{
\text{terminal active source-pulse family}
+Field^{\le C}_{N+2,r,Q}
\Longrightarrow
KC.CKN.
}
\tag{KC.Place.retained}
```

Indeed, once a fixed positive retained field scale and finite endpoint depth are
already available on the same source-pulse family, the retained-field anchoring
lemma from
`mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md`
gives uniform interior velocity, pressure, and finite-tower bounds.  The exact
consumer statement is: for each retained cylinder there is a same-carrier
subcylinder of radius `rho` inside the retained positive field scale such that

```math
C(\rho)+D(\rho)<\varepsilon_{CKN}.
```

That is a retained-branch CKN placement, not a branch-native `Jump_avg`
placement.

This is useful, but it is not a branch-native proof of `PCTP.5.C`.

The obstruction is logical, not technical.  The current hard branch is

```math
Jump_{avg},
```

which is the failure of a positive averaged one-field coherence scale on the
terminal tail.  Spending retained `Field` or `Field_avg` to obtain the CKN
subcover proves the non-jump retained branch only.  It does not eliminate the
raw `Jump_avg` branch where that coherence is absent.

The following stronger line is not installed:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
SourcePulseKnownCriterionPlacement.A.
}
\tag{KC.Place.open}
```

The still-open placement theorem must produce one of the known criteria from
the source-pulse structure itself, without first assuming the positive
field/averaged-field scale denied by the branch:

```math
KC.L3\vee KC.Liouville\vee KC.CKN\vee KC.Dir
```

or it must force an already-real class exit through `Pack`, `Part`, or `Field`
by a theorem that does not spend the missing field assumption.

## Boundary

`KC.Place.retained` is retained as a conditional consumer:

```math
retained\ Field
\Longrightarrow
KC.CKN
\Longrightarrow
\text{no source pulse on that retained branch}.
```

It may be used after a terminal positive-scale field readout has been produced.
It must not be used as the proof of branch-native `Jump_avg` elimination or as
a discharge of `PCTP.5.C`.
