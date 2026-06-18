# MPP Branch-Native Jump_avg No-Escape Direct Work

Date: 2026-06-01

Status: direct proof work after the Clay bridge insertion; no unconditional
discharge from current inputs.

## Target

The direct Clay bridge on the whole torus atlas reduces the remaining bad face
to the branch-native theorem

```text
OriginalSmoothData_T3
=> no Pack/Part/Field first face failure on Q_atlas.
```

At the current Field face this is the no-escape target

```text
Jump_avg + OriginalSmoothData_T3 => contradiction.
```

The already-installed conditional chain is:

```text
OriginalSmoothData_T3 => SourcePulseExclusion.A
SourcePulseExclusion.A + Jump_avg => contradiction.
```

So the direct proof question is whether the current repo proves

```text
OriginalSmoothData_T3 => SourcePulseExclusion.A.
```

## Installed Positive Side

The `Jump_avg` branch has a lower-side theorem: persistent averaged bad cells
produce the full-SCF terminal charge used in the contradiction scheme.

The upper side is available only under `SourcePulseExclusion.A`, equivalently
active-window amplitude gain, heat-scale square-source control, or the
scale-normalized active-source Carleson estimate.

Therefore the lower/upper contradiction is real but conditional.

## Direct Proof Attempt

Failure of `SourcePulseExclusion.A` gives terminal heat-scale active windows

```text
P_n=(Q_n^Phi,j_n,I_n),  j_n -> infinity,
c_I 2^(-2j_n) <= |I_n| <= C_I 2^(-2j_n),
```

with nonvanishing normalized active nonlinear source mass:

```text
liminf_n int_{I_n} S_{j_n,loc}^{active}(t) dt > 0.
```

To prove branch-native no-escape from original data, the repo has to do one of
three things to that active source packet.

### Remove

A remove proof would show positive source/strain depletion on the same selected
terminal windows, for example

```text
int_{Bad_N(eta)} S_{N,loc}^{active,+}(t) dt = o_N(1).
```

Checked mechanisms:

```text
pressure-vortex depletion,
vorticity-direction coherence,
Beltrami/helical alignment,
localized drain,
parabolic/local-energy no-pulse.
```

Current result: these mechanisms do not prove a sign or depletion theorem for
the exact selected active packet. Pressure recovers elliptic structure but does
not make the stretching carrier sign-definite. Vorticity-direction coherence is
not derived uniformly on the terminal shrinking active windows. Local energy and
CKN-type controls do not eliminate the scale-normalized positive source packet.

### Charge

A charge proof would force each source-balanced pulse to spend a finite reserve:

```text
P_n => Reserve(P_n) >= c0,
sum_n Reserve(P_n) < infinity.
```

Checked mechanisms:

```text
finite energy,
finite dissipation,
same-scale coefficient scheduling,
active-square control,
square-source control,
active-shell amplitude gain,
scale-critical tree Carleson.
```

Current result: raw finite energy/dissipation allows heat-scale critical pulses.
At shell `j`, the model pulse `E_j(t)=2^j 1_{I_j}(t)` on
`|I_j|=2^{-2j}` has finite first-moment cost

```text
int_{I_j} E_j(t) dt = 2^(-j),
```

while the normalized activity coefficient is exactly one:

```text
gamma_j(t)=2^(-j)E_j(t) = 1 on I_j.
```

Thus first-moment energy bookkeeping does not charge the exact object. The
square-source route also cannot be a universal original-data theorem at fixed
shell, since nonlinear shell flux scales cubically with amplitude.

### Rigidify

A rigidify proof localizes the active source pulse to physical same-fluid
heat-scale cylinders, extracts a terminal source-residue ancient limit, and
proves that such a source-residue limit is impossible.

Checked mechanisms:

```text
MSC.Localize^src,
DiagDom.A,
Ancient.NoPulse^src,
ParentConcentrationOrDiffuseCharge.A,
BackwardDrainFunctional.A,
BoundedAncestryClass.A + SourceResidueLiouville.A.
```

Current result: the global mixed-shell carrier does not by itself select a
single physical heat-scale cylinder with nonzero local source residue. Broad
ancient no-pulse is false because nonzero smooth ancient source-compatible
profiles exist outside the source-residue-specific class. The necessary
source-residue localization plus typed Liouville/drain theorem is not installed.

## Result

The current repo does not yet prove

```text
OriginalSmoothData_T3 => SourcePulseExclusion.A.
```

Therefore it does not yet prove the unconditional branch-native theorem

```text
Jump_avg + OriginalSmoothData_T3 => contradiction.
```

The direct bridge is now installed in the proof object. The exact remaining
mathematics is not another demotion pass. It is one of these concrete theorem
discharges:

```text
Remove:  terminal positive source/strain depletion on selected active windows.
Charge:  active-window Carleson / square-source / finite source-reserve theorem.
Rigidify: localized source-residue extraction plus typed ancient no-pulse.
```

Any one of these supplies `SourcePulseExclusion.A`, eliminates `Jump_avg`,
removes the final Field-face branch on `Q_atlas`, and feeds the Clay bridge.
