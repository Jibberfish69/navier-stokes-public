---
ns_viewer:
  theorem_id: terminal-collar-strain-integrability-proof-method-audit-20260607
  status: failed-proof-method-audit
  proof_role: proof_method_audit
  logical_landing_node: cm_pack_face_attempts
  edge_effect: "Shows TerminalCollarStrainIntegrability.A is continuation-strength and cannot honestly close Pack retention as a smaller bookkeeping lemma."
  upstream_origin: "June 7 Pack-face exclusion working pass."
  downstream_consequence: "Keep Pack retention as row-level CM certification unless a strictly weaker carrier mechanism is supplied."
---

# MPP Terminal Collar Strain Integrability Proof-Method Audit

Date: 2026-06-07

Status: failed as a smaller Pack-closing lemma; reclassified as a
continuation-strength theorem.

## Target Under Audit

The Pack-face working pass isolated the following analytic sufficient input:

```text
TerminalCollarStrainIntegrability.A:

For the canonical terminal atlas collar A_sharp,

  Lambda_sharp(t)
  := ||D u(.,t)||_{L^\infty(Phi_t(A_sharp))}

belongs to L^1([0,T_*)).
```

By the existing Pack-side Gronwall reduction, this would make the material
deformation gauge finite and retain Pack for the terminal atlas.

## Proof-Method Classification

Proof program: Navier-Stokes CM contrapositive class exit.

Target role: analytic bridge for Pack retention.

Logical skeleton: direct analytic estimate.

Mechanism being attempted: continuation-strength strain control.

Current failure mode: the target is not a local bookkeeping lemma. It asks for
the same kind of terminal strain integrability that classical continuation
criteria require.

## Direct Attempt

For a classical solution on each compact interval `[0,T]`, `T<T_*`, the
Lagrangian deformation tensor satisfies

```text
dF/dt = (Du)(Phi_t(a),t) F.
```

Gronwall gives

```text
Gamma_sharp(t)
<= Gamma_sharp(0)
   exp int_0^t ||Du(.,tau)||_{L^\infty(Phi_tau(A_sharp))} dtau.
```

So `TerminalCollarStrainIntegrability.A` is enough for Pack retention. The
problem is proving the hypothesis.

The following analytic routes do not make the burden smaller:

1. A Beale-Kato-Majda style route replaces `||Du||_{L^\infty}` by vorticity
   control at continuation scale. That is a continuation criterion, not a
   Pack-only bookkeeping input.
2. Sobolev embedding controls `||Du||_{L^\infty}` from `H^s`, `s>5/2`.
   That is exactly the continuation norm the Clay proof is trying to force.
3. Restricting to the transported collar does not remove the difficulty. The
   collar is chosen because it contains the terminal atlas carrier, so a blowup
   localized on that carrier is precisely the Pack failure under test.
4. Incompressibility only gives `det F=1`. It allows determinant-one distortion
   with unbounded singular values, so it cannot supply the missing `L^1` strain
   control.

## Result

`TerminalCollarStrainIntegrability.A` is not a smaller proof atom for Clay
closure in its present form.

It is a valid sufficient condition for retaining Pack, but proving it from
original smooth data would already prove continuation-strength control on the
canonical terminal carrier.

Therefore the Pack lane cannot honestly close by naming
`TerminalCollarStrainIntegrability.A` as the next lemma unless a new mechanism
is supplied that is strictly weaker than continuation.

## Corrected Pack Work Order

The Pack blocker should be split into two distinct questions:

```text
Pack-retention route:
  find a noncircular mechanism that gives finite terminal deformation
  comparability on the canonical atlas collar without assuming H^s continuation.

Pack-face-validity route:
  decide whether a same-solution zero-radius or unbounded-deformation terminal
  atlas is a valid Clay breakdown witness, rather than trying to exclude it by
  the same estimates that would prove smooth continuation.
```

The current installed sources support the second route as classification:
zero-radius or unbounded terminal atlas collapse lands as `not Pack_Q`.
They do not yet turn that Pack face into a contradiction with the Clay
counterexample assumption.

## Direct Consequence For The Proof Blocker

The live proof blocker is sharper than the earlier phrase
`SameSolutionTerminalPackRetention.A`.

The honest Pack statement is:

```text
Either prove a noncircular Pack-retention mechanism strictly weaker than
continuation, or prove a target-fidelity bridge saying that the Pack-failure
terminal atlas is not a valid finite Clay breakdown witness.
```

This note does not close the Pack face. It prevents the proof from hiding the
whole continuation theorem inside the words "terminal collar strain
integrability."
