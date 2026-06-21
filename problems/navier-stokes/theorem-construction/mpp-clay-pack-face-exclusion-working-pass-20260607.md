---
ns_viewer:
  theorem_id: clay-pack-face-exclusion-working-pass-20260607
  status: failed-proof-demoted-from-current-blocker
  proof_role: pack_face_exclusion_attempt
  logical_landing_node: cm_pack_face_attempts
  edge_effect: "Tests the generic Pack-face exclusion theorem and records why same-solution terminal ancestry does not prove positive carrier scale plus finite deformation comparability."
  upstream_origin: "June 7 generic Pack-face exclusion work order."
downstream_consequence: "Demote generic Pack-face exclusion as a global blocker; named terminal obstruction rows must be typed by the Pack-out-of-CM audit before Pack is spent."
---

# MPP Clay Pack-Face Exclusion Working Pass

Date: 2026-06-07

Status: proof failed; conditional reduction only. `ClayPackFaceExclusion.A` is
not installed by the checked inputs.

## Theorem Target

```text
ClayPackFaceExclusion.A
```

Target statement under attack:

```text
For a finite Clay breakdown from smooth original data, the canonical terminal
obstruction cannot have first Part/Field not Pack_Q unless the alleged counterexample
has failed to identify an actual same-solution terminal obstruction.
```

Typed CM reading:

- finite Clay breakdown object: alleged bad same-surface object under test;
- canonical terminal obstruction: same-solution terminal object after legal
  losses, non-selected branches, readout artifacts, and paid finite ledgers are
  removed;
- `Pack_Q`: positive legal same-fluid carrier / cover plus the terminal
  deformation comparability needed by the readout-compatible packet;
- `not Pack_Q`: first Part/Field failure of that carrier / cover service;
- `Exit(Q):=not Member(Q)`: downstream class-exit readback, not identical to
  the Pack face itself.

## Installed Inputs Read

Required sources:

- `mpp-clay-breakdown-canonical-terminal-obstruction-20260524.md`;
- `mpp-clay-terminal-cm-completeness-hardening-20260524.md`;
- `mpp-clay-counterexample-exclusion-bridge-direct-work-20260601.md`;
- `mpp-canonical-terminal-packet-capture-20260522.md`;
- `mpp-terminal-zeno-pack-failure-correction-20260521.md`;
- `problems/navier-stokes/live-theorem-edge.yaml`.

Additional read-only support checked:

- `mpp-torus-global-material-atlas-terminal-capture-20260526.md`;
- `mpp-clay-terminal-witness-invalidation-20260523.md`;
- `mpp-any-finite-failure-witness-cm-exit-20260521.md`;
- `mpp-primitive-class-laws-note.md`;
- `mpp-pack-side-forward-preservation-reduction-note.md`.

Installed conclusions used:

1. `ClayBreakdownCanonicalTerminalObstruction.A` extracts a finite same-surface
   Clay breakdown object into a same-solution terminal obstruction eligible for
   `CanonicalTerminalPacketCapture.A`.
2. `CanonicalTerminalPacketCapture.A` sorts every same-solution terminal
   obstruction into the Field-certification tree:

   ```text
   not Pack_Q
   or Pack_Q and not Part_{N_s,Q}
   or Pack_Q and Part_{N_s,Q} and forall r>0 not Field_{N_s,r,Q}.
   ```

3. `TorusGlobalMaterialAtlasTerminalCapture.A` makes the active `T^3` object
   the whole transported material atlas `Q_atlas`; its Pack predicate requires
   positive terminal carrier scale and finite deformation comparability for
   readout, not mere preterminal material identity.
4. `mpp-terminal-zeno-pack-failure-correction-20260521.md` says finite Zeno
   ancestry packets may be legal positive-radius CM participation-field records, while the terminal
   zero-radius limit lands Part-side when the same original-NS participation record remains and true packet/window evidence only when that record is
   absent, before any retained Field face can be spent.
5. `mpp-clay-counterexample-exclusion-bridge-direct-work-20260601.md` already
   rejects the shortcut

   ```text
   Exit(Q_atlas) => no valid finite Clay counterexample.
   ```

   The bridge needs an original-data face-exclusion theorem.

## Proof Attempt

Let `W_*` be a finite same-surface Clay breakdown object from smooth original
data. Let `(u,p)` be the maximal classical solution on `[0,T_*)`.

By `ClayBreakdownCanonicalTerminalObstruction.A`, the canonical object extracted
from `W_*` is attached to the same datum, same equation, same preterminal fluid
carrier, and same terminal role. Hence it is a same-solution terminal
obstruction, not a surrogate, once the admissibility clauses are satisfied.

The desired Pack exclusion would need to prove:

```text
actual same-solution canonical terminal obstruction
=> Pack_Q.
```

The checked sources do not prove that implication. They prove entry into the
Field-certification terminal tree.

### Attempt 1: Incompressible Material Volume

On every preterminal window, smoothness gives the Lagrangian flow

```text
d Phi_t / dt = u(Phi_t,t),
```

and incompressibility gives

```text
det D_a Phi_t = 1.
```

This proves same-fluid ancestry and volume preservation for every `t<T_*`.
It does not prove the terminal Pack predicate.

Reason: Pack on `Q_atlas` includes positive terminal carrier scale and finite
deformation comparability. Determinant control alone does not control the
singular values of `D_a Phi_t`. The model matrix

```text
F_m = diag(lambda_m, lambda_m^{-1}, 1),
lambda_m -> infinity,
```

has `det F_m = 1` but has deformation gauge

```text
max(|F_m|, |F_m^{-1}|) -> infinity.
```

So a material volume can be preserved while the readout-compatible terminal
carrier degenerates. This is exactly the Field-window support distinction recorded in the
primitive laws: the material-packet reading identifies the same fluid parcel,
while Pack requires usable common packing coordinates at the finite terminal
edge.

### Attempt 2: Same-Fluid Ancestry

Same-fluid ancestry rules out a detached diagnostic packet. It does not rule
out terminal collapse of the same carried packet.

If an alleged counterexample selects a packet that is not drawn from the
preterminal maximal solution, then it fails the CM-test-admissibility clauses
and is not an actual same-solution terminal obstruction. That subcase is
already handled by the admissibility/canonical-extraction notes.

The Field-window branch under attack is different: the selected object is drawn from
the same preterminal solution, but no positive legal terminal carrier survives.
The installed tree reads that as the first Part/Field

```text
not Pack_Q.
```

Same-fluid ancestry therefore supplies the object to be tested; it does not
exclude Pack failure of that object.

### Attempt 3: Canonical Terminal Packet Capture

`CanonicalTerminalPacketCapture.A` is a classifier, not a Pack-retention
theorem. It says every same-solution terminal obstruction has no fourth
primitive service beyond Part and Field.

In particular, when the first service fails, the theorem returns:

```text
same-solution terminal obstruction with no positive legal carrier
=> not Pack_Q.
```

It does not return:

```text
Pack failure rules out the same-solution terminal obstruction.
```

Using the capture theorem that way would reverse its role and erase the Pack
face as a lawful CM exit witness.

### Attempt 4: Zero-Radius / Zeno Ontology

The Zeno correction is decisive against the proposed exclusion as currently
stated.

For every finite stage `m`, a packet with radius `r_m>0` can be a legal CM
packet. A terminal limit

```text
r_m -> 0,   t_m -> T_*
```

is a zero-radius terminal residue and lands first at

```text
not Pack_Q.
```

The correction explicitly says that this endpoint does not carry a further
forward deletion burden inside the terminal CM Pack-legality program. It is
already illegal as a retained positive-radius packet.

Thus a same-solution Zeno terminal tail is not excluded by the installed
ontology. It is one of the Pack-face outputs of the ontology.

## Result

`ClayPackFaceExclusion.A` is not proved.

The checked sources prove the following weaker and already installed statement:

```text
finite same-surface Clay breakdown
=> canonical same-solution terminal obstruction
=> first Part/Field failure.
```

They do not prove:

```text
finite same-surface Clay breakdown
=> not(not Pack_Q)
```

for the canonical terminal obstruction.

The theorem target also cannot be rescued by saying that every Pack failure is
a failure to identify the actual same-solution terminal obstruction. That is
true for detached or surrogate packets only. It is false for the current CM
grammar when the same preterminal solution produces a zero-radius terminal tail
or a terminal material-atlas deformation collapse.

So the honest proof judgment is:

```text
Pack-face misidentification exclusion: installed for surrogate/detached packets
  by CM-test admissibility.

Pack-face exclusion for actual same-solution terminal obstructions: open.
```

## Exact Missing Lemma

The smallest missing lemma is a Pack-retention theorem for the canonical
same-solution terminal atlas.

```text
SameSolutionTerminalPackRetention.A
```

Suggested exact statement:

```text
Let (u,p) be the maximal classical Navier-Stokes solution from smooth original
data on [0,T_*), and let Q_atlas be the canonical whole same-fluid terminal
atlas extracted from the alleged finite Clay breakdown.

If the extraction is an actual same-solution terminal obstruction, then
Pack_{Q_atlas} holds.
```

Equivalently, in the torus-atlas Pack predicate:

```text
actual same-solution terminal obstruction
=> positive terminal carrier scale
   and finite material deformation comparability
   for Q_atlas.
```

A sharper analytic sufficient lemma, matching the installed pack-side reduction,
is:

```text
TerminalCollarStrainIntegrability.A:

For the canonical terminal atlas collar A_sharp,

  Lambda_sharp(t)
  := ||D u(.,t)||_{L^\infty(Phi_t(A_sharp))}

belongs to L^1([0,T_*)).
```

By the installed pack-side Gronwall reduction, this bounds the common
deformation gauge and retain `Pack_{Q_atlas}`. Without this lemma, volume
preservation and same-fluid ancestry leave open the determinant-one,
unbounded-distortion terminal collapse that lands exactly at `not Pack_Q`.

This missing lemma is Pack-only in the CM grammar. It does not assert Part,
Field, `Member(Q)`, or global smoothness by itself. It is the exact missing
input needed before `ClayPackFaceExclusion.A` can be promoted from a failed
attempt to a proof.
