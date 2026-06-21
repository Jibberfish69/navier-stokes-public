---
ns_viewer:
  theorem_id: clay-part-face-exclusion-working-pass-20260607
  status: failed-proof-demoted-from-current-blocker
  proof_role: part_face_exclusion_attempt
  logical_landing_node: cm_part_face_attempts
  edge_effect: "Tests the generic retained-Pack Part-face exclusion theorem and records why same preterminal ancestry does not prove terminal Part participation."
  upstream_origin: "June 7 generic Part-face exclusion work order."
  downstream_consequence: "Demote generic Part-face exclusion as a global blocker; future named terminal obstruction rows must certify same-witness CM entry plus first-Part/Field landing."
---

# MPP Clay Part-Face Exclusion Working Pass

Date: 2026-06-07

Status: precise failure. `ClayPartFaceExclusion.A` is not proved by the
installed inputs.

## Theorem Target

Test the proposed Part-face exclusion:

```text
ClayPartFaceExclusion.A:

Let W_* be a finite Clay breakdown from smooth original data. Let Q be the
canonical same-solution terminal obstruction extracted from W_*. Assume Pack_Q
is retained. Then the first failed face cannot be not Part_{N,Q} unless the
alleged counterexample has left the original Navier-Stokes equation, pressure,
or source ancestry, and therefore has failed target fidelity.
```

Equivalently, the desired conclusion is:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal Q
+ Pack_Q
+ same original preterminal Navier-Stokes equation
=> Part_{N,Q}.
```

That is the exact positive statement needed to exclude a retained-Pack first
Part face.

## Installed Inputs Read

- `mpp-clay-breakdown-canonical-terminal-obstruction-20260524.md`:
  a finite same-surface Clay breakdown is attached to the same datum, solves the
  same equation on every preterminal interval, uses the same fluid family until
  terminal failure, and enters the Field-certification witness grammar.
- `mpp-clay-terminal-cm-completeness-hardening-20260524.md`:
  once canonical, the terminal obstruction is exhausted by Pack, Part, and
  Field. The Part row is explicitly the retained-carrier row where the
  pressure-viscosity participation tower fails.
- `mpp-clay-counterexample-exclusion-bridge-direct-work-20260601.md`:
  the direct Clay bridge is conditional on an original-data face-exclusion
  theorem. A derived `Exit(Q)` is not by itself a contradiction with the finite
  Clay breakdown assumption.
- `mpp-any-finite-failure-witness-cm-exit-20260521.md`:
  after Pack survives, failure of shared participation, pressure-viscosity
  participation, or tower residence lands as `Pack_Q and not Part_{N,Q}`.
- `mpp-terminal-source-residue-cm-exit-20260522.md`:
  the requested `20260521` source-residue filename is not present in the repo;
  the live source-residue note is the `20260522` file. It says a terminal source
  residue from the same maximal Navier-Stokes evolution lands in Pack or Part;
  under retained Pack, an unpaid raw source residue is already `not Part_{N,Q}`.
- `live-theorem-edge.yaml`:
  the live Clay-facing route is terminal witness entry, finite failure type
  exhaustion, and CM contrapositive embedding. The live edge also records that
  raw source residue lands in Part once Pack is retained, and that no
  `PartNoFirstTerminalLoss.A` bridge is installed.
- Additional read-only checks:
  `mpp-torus-global-material-atlas-terminal-capture-20260526.md`,
  `mpp-clay-admissible-breakdown-cm-lawfulness-test-20260524.md`,
  `mpp-clay-breakdown-preterminal-reflection-proof-attempt-20260524.md`,
  `mpp-clay-breakdown-class-exit-inadmissibility-proof-attempt-20260524.md`,
  `mpp-pctp-hard-terminal-tail-current-obstruction.md`,
  `mpp-retained-pressure-package-cm-face-placement-20260605.md`, and the
  Part/source-residue rows of `cm-branch-family-certificate-ledger-20260526.yaml`.

## Proof Attempt

Use a contradiction / first-terminal-face method.

Assume a finite Clay breakdown from smooth original data. Let `(u,p)` be the
maximal classical Navier-Stokes solution on `[0,T_*)`, and let `Q` be the
canonical terminal packet after legal losses, non-selected branches, readout
artifacts, and paid finite ledgers have been removed.

Assume:

```text
Pack_Q
```

and try to prove:

```text
Part_{N,Q}.
```

### 1. Same equation on preterminal intervals

For every `epsilon>0`, the solution is classical on `[0,T_* - epsilon]`.
Therefore the differentiated Navier-Stokes tower is available there:

```text
D_t U_k = K_k + B_k,
K_k = -nabla^{k+1} p + nu Delta U_k,
```

with the original pressure law and no foreign force. This proves same
preterminal ancestry.

It does not prove terminal Part. The Part predicate is not just that the
equation was true before `T_*`; it is the statement that the same
pressure-viscosity/source tower participates through depth `N` on the retained
terminal carrier after passage to the terminal packet.

### 2. Distributional terminal passage

Take a terminal approach sequence inside the retained carrier supplied by
`Pack_Q`. Pack gives same-fluid carrier and readout-compatible atlas geometry.
It does not give the compactness needed to pass all pressure, viscosity,
commutator, and nonlinear source terms through depth `N` without a defect.

For test functions compactly supported away from `T_*`, the equation passes
with no issue. The Part branch needs the terminal limit on `Q`. At that limit,
weak convergence of the nonlinear stress may leave a defect in `u\otimes u`;
the pressure, as a nonlocal projection of that stress, may inherit a terminal
defect; and the differentiated tower may fail to remain paid on the same
ledger.

That defect is foreign to the original equation only after target-fidelity is
proved. It can be a native terminal source residue generated by the same maximal
preterminal Navier-Stokes evolution.

### 3. Source-residue participation

The installed source-residue note is decisive against the target-fidelity
shortcut. It starts with a terminal source residue from the same maximal
Navier-Stokes evolution. It does not say that this residue came from a
regularized equation, a surrogate pressure, or an external forcing law.

Its Field-certification conclusion is:

```text
terminal source residue
=> not Pack_Q or Pack_Q and not Part_{N,Q}.
```

So under retained Pack, the installed grammar permits:

```text
same original preterminal solution
+ native unpaid terminal source residue
+ Pack_Q
=> not Part_{N,Q}.
```

This is exactly the branch `ClayPartFaceExclusion.A` tries to forbid. The
installed note treats the residue as the CM witness, not as target-fidelity
failure.

### 4. Pressure-viscosity tower custody

The retained pressure package note gives the same result from the pressure
side. A pressure package is not a fourth face. The first question is whether it
is still the same-law pressure-viscosity participation object on the retained
carrier. When it is not, the terminal witness lands in:

```text
not Part_{N,Q}.
```

Thus same pressure ancestry before `T_*` is weaker than terminal tower custody.
To prove Part survival, one must show that the pressure projection, viscosity
term, tower commutators, and source ledgers converge to the same terminal
participation object on `Q`.

The installed Part closedness row is conditional. It proves terminal Part under
retained positive Field scale and tower-amplitude control. Those hypotheses are
not automatic in the first Part-face branch. Importing them would smuggle in
the retained readout data that the branch is allowed to lack.

## Result

`ClayPartFaceExclusion.A` is not proved.

The proof fails at the step:

```text
same original preterminal Navier-Stokes equation
+ Pack_Q
=> terminal pressure-viscosity/source participation Part_{N,Q}.
```

That implication is not installed, and it is not definition-level. The current
repo grammar explicitly allows retained-Pack native source or pressure-tower
residue to land first at `not Part_{N,Q}` while still coming from the same
maximal preterminal Navier-Stokes evolution.

Therefore a first Part face is not presently disqualified as target-fidelity
failure. It is a lawful CM Part/Field failure unless an additional terminal tower
closedness theorem removes the native Part-defect branch.

## Smallest Exact Missing Lemma

The missing lemma is the retained-Pack terminal participation theorem:

```text
RetainedPackOriginalAncestryPartSurvival.A:

Let (u,p) be the maximal classical Navier-Stokes solution from smooth original
data on [0,T_*). Let Q be a canonical same-solution terminal packet extracted
from a finite Clay breakdown after legal losses, non-selected branches,
readout-only artifacts, and paid finite ledgers have been removed.

Assume Pack_Q. Assume Q is generated by the same Lagrangian carrier and the
same original pressure/velocity pair on every preterminal interval.

Then the differentiated pressure-viscosity/source tower has no unpaid terminal
defect on Q through depth N. Equivalently, for every k <= N,

  D_t U_k = -nabla^{k+1}p + nu Delta U_k + B_k

passes to the terminal packet with the pressure law, viscous term, nonlinear
source, commutators, and local ledgers all paid on the same retained carrier.
Consequently Part_{N,Q}.
```

An equivalent formulation is:

```text
OriginalSmoothData
+ Pack_Q
+ canonical same-solution terminal packet
=> no native unpaid terminal source/pressure-viscosity residue on Q.
```

This is the smallest lemma because it attacks only the retained-Pack Part face.
It does not require a full Pack exclusion, a Field exclusion, or a global
positive smoothness theorem. It does, however, require exactly the terminal
compactness/no-defect information that the current sources mark as missing:
the production of Part on every terminal same-fluid approach tail from the
original dynamics.
