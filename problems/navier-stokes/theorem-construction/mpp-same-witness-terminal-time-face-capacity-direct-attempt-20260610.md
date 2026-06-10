---
title: Same-Witness Terminal Time-Face Capacity For First Pack Exit Direct Attempt
date: 2026-06-10
status: direct-attempt-open
loop_criticism_id: NS-LIVE-20260609-202
governing_program: "Exit(Q):=not Member(Q) through Pack_Q / Part_{N,Q} / Field_{N,r,Q}"
claim_boundary:
  logical_landing_node: SameWitnessTerminalTimeFaceCapacityZeroForFirstPackExit.A
  claim_status: not_proved
  edge_effect: "Tests one of the live alternatives exposed by NS-LIVE-20260609-201. The same-witness terminal time-face capacity route does not defeat the shrinking terminal layer model: the terminal face is a full spatial boundary slice with positive trace capacity for finite Radon native source measures, and backward-adjoint tests either hide the atom by vanishing at the terminal face or detect it through an unpaid terminal trace."
  downstream_consequence: "The active loop remains open below OriginalSmoothDataPackSurvival.A. Future progress cannot count time-face capacity language as a payment for first-Pack survival unless it adds a stronger same-witness trace regularity, super-L1/source-Carleson residence, rigid anti-atom production, or a genuinely non-source Pack-survival theorem. pdfs_final remains false."
evidence_refs:
  - problems/navier-stokes/theorem-construction/mpp-same-witness-terminal-strip-modulus-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-backward-adjoint-parabolic-capacity-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-parabolic-time-face-capacity-direct-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-basac-local-energy-trace-no-positive-jump-reentry-20260609.md
---

# Direct Target

```text
SameWitnessTerminalTimeFaceCapacityZeroForFirstPackExit.A
```

Proposed statement:

```text
For the original-data first Pack witness W_*, a positive terminal native source
atom cannot live on the terminal time face because that face has zero effective
capacity for the same-witness source class.
```

If proved, this would supply the missing terminal strip modulus:

```text
terminal time-face capacity zero for W_*
=> no order-one mass in vanishing terminal strips
=> OriginalSmoothDataPackSurvival.A
=> NoGenuineExitFromSmoothData.A.
```

# Installed Inputs Checked

The current same-witness first Pack branch supplies the same data already tested
in the terminal strip pass:

```text
finite local L1_s native positive source mass,
local-energy BV balance primitives,
weak linear terminal traces,
zero ASAC,
paid named exits,
no fixed earlier selected source slice,
and the same original-data terminal Pack witness W_*.
```

Those inputs are enough to define the terminal measure. They are not enough to
make the terminal time face removable.

# Capacity Test

The terminal time face is not a thin polar set for this problem. It is a full
spatial boundary slice. A finite terminal Radon source of the form

```math
d\mu_*^{src,+}(y,s)=\rho(y)\,dy\otimes\delta_{s=0}
```

is admissible as terminal boundary data for the trace pairing. This is the same
object produced by the shrinking strip model:

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
\qquad
g_m(s)\,ds\rightharpoonup\delta_0.
```

Finite local source mass and Radon compactness allow this weak limit. They do
not assign zero capacity to the terminal slice.

# Backward-Adjoint Test

A backward adjoint probe `\phi` gives:

```math
\langle\mu_*^{src,+},\phi\rangle
=
\int \rho(y)\phi(y,0)\,dy.
```

If `\phi(\cdot,0)=0`, the test hides the atom. If `\phi(\cdot,0)` is nonzero,
the test detects the atom through the terminal trace. Neither case removes it.
There is no forward interior time after `s=0` in which heat smoothing dissolves
the boundary measure.

# Same-Witness Check

The same-witness restriction does not change the capacity conclusion. It keeps
custody of the original-data first Pack witness, which is necessary, but it does
not add a new estimate on the time marginal. The obstruction is still:

```text
same W_* + finite L1_s source mass + terminal Radon compactness
allows order-one mass on B_R x {0}.
```

A capacity proof would need an added source residence or trace regularity
theorem. Without that theorem, the word "capacity" only renames the missing
terminal anti-atom payment.

# Result

`SameWitnessTerminalTimeFaceCapacityZeroForFirstPackExit.A` is not proved from
current installed inputs, and the bare time-face capacity statement is false
for the current finite Radon source measure class.

The remaining live alternatives from NS-LIVE-20260609-201 are narrowed to:

```text
1. SameWitnessSuperL1TerminalResidence.A,
2. SameWitnessTerminalSourceCarleson.A,
3. SameWitnessTraceNoPositiveJumpWithStrongerRegularity.A,
4. SameWitnessRigidAntiAtomLiouvilleProduction.A,
5. a genuinely non-source Pack-survival theorem.
```

The next pass should attack the trace-no-positive-jump route at same-witness
strength, because capacity has now been checked and does not remove the terminal
boundary atom.

# New Live Criticism

`NS-LIVE-20260609-202`: the same-witness terminal time-face capacity route does
not prove first Pack survival. The terminal time face has positive trace capacity
for finite Radon native source measures; backward-adjoint tests either vanish at
the terminal face and hide the atom, or detect it through an unpaid terminal
trace. The shrinking model `g_m(s)=m 1_{(-1/m,0]}` remains compatible with the
current same-witness inputs. The active loop must next attack same-witness
trace no-positive-jump, super-L1/source-Carleson residence, rigid anti-atom
production, or a genuinely non-source Pack-survival theorem. Keep `pdfs_final`
false.
