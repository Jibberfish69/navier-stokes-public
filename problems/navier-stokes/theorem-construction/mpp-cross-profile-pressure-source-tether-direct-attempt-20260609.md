---
theorem_id: cross-profile-pressure-source-tether-direct-attempt-20260609
status: direct_attempt_open_with_installed_split
created: 2026-06-09
updated: 2026-06-09
route_role: active-completion-loop proof pass after CrossProfileMinimalBadAncestryRigidity.A
edge_effect: "Tests CrossProfilePressureSourceAC.A / CrossProfileLocalizedLeraySourceTether_ind.A in the canonical minimal bad cross-profile terminal ancestry object. Installs only the measure-level pressure/source carrier split; broad pressure/source tether and terminal time-face spread remain open."
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-cross-profile-minimal-bad-ancestry-rigidity-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-one-sided-pressure-source-tether-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-source-ac-basac-time-spread-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-source-ac-independent-leray-tether-direct-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-leray-one-sided-gates-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-pure-pressure-source-singular-residue-three-gate-attempt-20260517.md
new_live_criticism: NS-LIVE-20260609-177
downstream_consequence: "CrossProfilePressureSourceAC.A / CrossProfileLocalizedLeraySourceTether_ind.A is not proved from installed inputs. The pass installs CrossProfilePressureCarrierLebesgueSplit.A as a support theorem, then narrows the live pressure-side burden to CrossProfilePressureSourceTimeFaceSpread.A on the source-absolutely-continuous branch and CrossProfilePurePressureSingularResidueElimination.A on the source-singular pressure branch."
---

# Cross-profile pressure/source tether direct attempt

## Target

The current loop target is:

```text
CrossProfilePressureSourceAC.A / CrossProfileLocalizedLeraySourceTether_ind.A.
```

In the canonical minimal bad cross-profile terminal ancestry object, the desired
payment is stronger than pressure adjacency. The pressure/Leray structure must
either bind to the native positive terminal source residue with a terminal
time-spread estimate, or force a same-ledger pressure branch into a legal,
rigid, or witness-face failure.

The branch under test is still the Navier-Stokes CM contrapositive branch:

```text
Exit(Q):=not Member(Q)
```

through the Pack/Part/Field witness tree. A pressure support statement is not a
Clay finality statement unless it removes the terminal Pack-survival obstruction
for the same alleged counterexample object.

## Checked installed inputs

The minimal bad ancestry pass produced a canonical zero-radius terminal
source-residue obstruction. It did not produce Type I control, finite ancient
energy, critical smallness, bounded vorticity/strain, self-similarity, symmetry,
source cancellation, temporal spread, spatial exhaustion, or a Liouville class.

The pressure notes give only spatial pressure/Leray structure:

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\qquad
\nabla^2p=\mathcal R\mathcal R(\nabla u\otimes\nabla u).
```

The one-sided pressure/source tether notes already record the unpaid gates:

```text
SelectedPressurePositivePartComparison.A,
PressureSourceTimeFaceSpread.A,
TerminalLerayOrientation_ind.A,
TerminalLerayCommutatorLegal_ind.A,
TerminalLeraySaturation_ind.A,
TerminalPressurePureStrainLegal.A,
PurePressureSourceSingularLiouville.A.
```

Those gates cannot be imported as installed pressure payment.

## Installed support theorem: pressure carrier split

The pass does install the part of the pressure/source route that follows from
measure theory and the existing compactness record.

Let:

```math
\mu_\ast^{press}
```

be a weak-* terminal pressure-sustain residue on a compact terminal cylinder,
and let:

```math
\nu_\ast^{src,+}
```

be the native positive selected source-current residue carried by the same
minimal bad cross-profile ancestry object. Both are locally finite Radon
measures after the compactness extraction.

By the Lebesgue decomposition theorem, there are unique measures:

```math
\mu_\ast^{press,ac}
= f\,\nu_\ast^{src,+},
\qquad
\mu_\ast^{press,sing}\perp\nu_\ast^{src,+},
```

such that:

```math
\mu_\ast^{press}
=
\mu_\ast^{press,ac}
+
\mu_\ast^{press,sing}.
```

This proves the support theorem:

```text
CrossProfilePressureCarrierLebesgueSplit.A.
```

It is a real bookkeeping theorem. It does not close the branch. It only says
which two pressure residues must be paid.

## Why the absolutely continuous branch is still open

The absolutely continuous pressure part can still charge the same terminal time
face as the native source residue. The terminal scalar model:

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has finite unit `L^1_s` mass, converges to a terminal atom, and is compatible
with pressure response at each time slice. Spatial Calderon-Zygmund control
does not create a terminal strip modulus:

```math
\nu_m^{src,+}(B_R\times[-\epsilon,0])
\le
\omega_R(\epsilon)+o_m(1),
\qquad
\omega_R(\epsilon)\downarrow0.
```

The cross-profile ancestry data do not add that modulus. Finite donor balance,
same-fluid ancestry, local energy, and zero ASAC defect all allow the same
shrinking terminal layer unless a new time-residence theorem is proved.

So the source-absolutely-continuous pressure branch still needs:

```text
CrossProfilePressureSourceTimeFaceSpread.A.
```

## Why the singular pressure branch is still open

The singular pressure part is not killed by the native source-current carrier.
The local pure-strain tangent:

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
\Omega=0
```

separates pressure-Hessian sustain from the native vorticity source carrier at
the algebraic level. Existing collar, harmonic, cutoff, projector, boundary,
and off-family pressure ledgers have already been removed before this retained
interior pressure branch is selected.

Thus the source-singular pressure branch needs one of:

```text
CrossProfileTerminalPressurePureStrainLegal.A,
CrossProfilePurePressureSourceSingularLiouville.A,
CrossProfileDirectionalPressureTraceSaturation.A,
CrossProfileTerminalLerayOrientation_ind.A
  + CrossProfileTerminalLerayCommutatorLegal_ind.A
  + CrossProfileTerminalLeraySaturation_ind.A.
```

None is installed by the current cross-profile ancestry pass.

## Failed closure attempt

The tempting closure is:

```text
pressure/Leray structure
=> pressure/source tether
=> terminal source atom impossible.
```

The checked proof only gives:

```text
pressure/Leray structure
=> pressure residue has source-AC part plus source-singular part.
```

The AC part still needs time-face spread. The singular part still needs legal
classification, pressure Liouville, trace saturation, or independent Leray
gates. The pressure route has narrowed the wall but has not paid it.

## New live criticism

`NS-LIVE-20260609-177`: `CrossProfilePressureSourceAC.A /
CrossProfileLocalizedLeraySourceTether_ind.A` is not proved. The current proof
earns only `CrossProfilePressureCarrierLebesgueSplit.A`. The source-AC pressure
branch still lacks terminal time-face spread, and the source-singular pressure
branch still lacks pure-pressure legal classification, pressure Liouville,
directional trace saturation, or independent terminal Leray gates. The loop must
attack those pressure children and keep `pdfs_final: false`.

## Next parent action

Attack:

```text
CrossProfilePressureSourceTimeFaceSpread.A
```

for the source-absolutely-continuous branch. In parallel route accounting, keep:

```text
CrossProfilePurePressureSingularResidueElimination.A
```

open for the singular pressure branch. The finality gate cannot close until
both branches are paid or a stronger theorem removes the pressure split itself.
