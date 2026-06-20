---
ns_viewer:
  theorem_id: lowhigh-limit-of-class-terminal-artifact-20260610
  status: proved-measure-limit-classification-not-original-data-production
  proof_role: active_completion_limit_of_class_theorem
  logical_landing_node: lowhigh_limit_of_class_terminal_artifact
  edge_effect: "Classifies the surviving infinite-cost low-high terminal source strip as a terminal boundary measure artifact: the weak limit is an endpoint atom singular to time measure, with no positive preterminal residence density."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-lowhigh-terminal-source-cost-dichotomy-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-minimum-singularity-cost-functional-lowhigh-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-basac-closed-atom-cm-field-face-diagnostic-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-basac-terminal-atom-cm-face-labeling-20260519.md
  downstream_consequence: "Supplies LimitOfClassTerminalArtifact_lowhigh.A: a surviving zero-thickness low-high source atom is not a hidden finite-time source history. It is a terminal boundary artifact and can only be used as CM face support, Pack-first unless a retained positive-scale bridge moves it."
---

# MPP LimitOfClassTerminalArtifact_lowhigh.A

Date: 2026-06-10

Status: proved measure-limit classification for the low-high terminal source
strip. This does not prove that original smooth data produces or excludes the
strip. It classifies what the strip is once the positive terminal mass branch
survives.

## Target

The cost dichotomy left this exact branch:

```text
finite L1_s source mass,
positive selected terminal mass,
support in windows I_n=(T*-tau_n,T*],
tau_n -> 0,
infinite every-super-L1 residence cost.
```

This theorem answers what kind of object that branch is.

There is no theorem notation `T*+` here. The formal object is the left terminal
limit `t up to T*`, viewed as a finite measure on the closed terminal time
interval. The question is whether the limit is represented by a preterminal
time density or only by a boundary atom at `T*`.

## Statement

Let

```text
dmu_n(s) = g_n(s) ds
```

on `[T*-delta,T*]`, with `g_n >= 0`,

```text
supp mu_n subset (T*-tau_n,T*],
tau_n -> 0,
mu_n([T*-delta,T*]) -> M > 0.
```

Then, after passing to the mass-convergent subsequence,

```text
mu_n weak-* -> M delta_{T*}
```

as finite measures on `[T*-delta,T*]`.

The limit has:

```text
mu_*([T*-delta,T*)) = 0,
mu_*({T*}) = M,
mu_* singular with respect to ds.
```

In particular, the limit is not represented by any `L1_s` density on the
preterminal interval. It is a terminal boundary measure artifact.

## Proof

Let `phi` be any continuous test function on `[T*-delta,T*]`. Since the support
of `mu_n` lies inside `(T*-tau_n,T*]`, uniform continuity gives:

```text
sup_{s in supp mu_n} |phi(s)-phi(T*)| -> 0.
```

Then:

```text
integral phi(s) dmu_n(s)
  = phi(T*) mu_n([T*-delta,T*])
    + integral (phi(s)-phi(T*)) dmu_n(s).
```

The first term converges to `M phi(T*)`. The second term is bounded by:

```text
sup_{s in supp mu_n} |phi(s)-phi(T*)| mu_n([T*-delta,T*]),
```

which tends to zero because the masses stay bounded and the support collapses
to `T*`.

So `mu_n` converges weak-* to `M delta_{T*}`.

The remaining claims are the defining properties of `delta_{T*}`: it gives zero
mass to every preterminal set `[T*-delta,T*)`, gives mass one to `{T*}`, and is
singular with respect to Lebesgue time measure. Multiplying by `M` gives the
stated result.

## Consequence For Terminal Strip Moduli

Any terminal strip modulus of the form:

```text
mu_n([T*-epsilon,T*]) <= omega(epsilon) + o_n(1),
omega(epsilon) -> 0
```

rules out this branch, because the left side tends to `M` for every fixed
`epsilon>0`.

Conversely, the branch above shows why finite `L1_s` alone cannot produce that
modulus. It allows the weak-* endpoint atom.

## CM Reading

This is the precise home for the no-payment branch of the cost dichotomy.

The object is not a hidden finite-time source history. It is:

```text
an endpoint atom in the terminal measure compactification,
with no positive preterminal residence density.
```

The existing CM diagnostic surfaces already give the face discipline:

```text
B_ASAC^closed terminal Zeno source atom
  -> zero-radius source-residue support: Part-first when the same original-NS pointwise record remains and true `not Pack_Q` only when that record is absent,
unless a separate positive-scale retained-carrier bridge is supplied.
```

The low-high terminal strip has the same measure-theoretic shape. It may
therefore be used only as terminal face support in the CM contrapositive
grammar. It cannot be spent as a forward proof of
`LowHighTerminalSignedSaturationForwardNoFreeSink.A`.

## Result

The surviving low-high source strip has been classified:

```text
positive terminal atom
=> weak-* endpoint measure M delta_{T*}
=> no L1_s preterminal density represents the limit
=> no positive preterminal residence modulus
=> limit-of-class terminal artifact.
```

When the route requires a positive-scale Pack carrier, this is Pack-first
support for `not Pack_Q`. When a later theorem supplies a retained positive-scale
bridge, the branch must be retyped by that bridge before any Field or Part
landing is claimed.

## Remaining Burden

This theorem does not prove:

```text
OriginalSmoothData => UniformTemporalSourceIntegrability_{p,lowhigh}.A.
```

It proves the other side of the split: a surviving positive low-high terminal
source atom is a boundary measure artifact, not a finite preterminal source
history.

The next real theorem choice is:

```text
ParticipationTransferThrottle.A / DonorDrainCompetition.A
  prove a same-witness super-L1 residence budget,
```

or:

```text
PackFaceLandingFromInfiniteCostEndpointSource.A
  connect the infinite-cost boundary artifact directly to not Pack_Q
  for the selected low-high witness.
```

## Live Criticism Delta

`NS-LIVE-20260610-COST-003`: the no-payment branch is now classified. A positive
low-high terminal source mass confined to vanishing terminal strips converges
as a measure to an endpoint atom `M delta_{T*}`. Its limit is singular with
respect to time measure and has no preterminal `L1_s` density. This branch is a
limit-of-class terminal artifact / Pack-first face-support object unless a
separate positive-scale retained-carrier bridge retypes it.
