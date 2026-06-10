---
ns_viewer:
  theorem_id: lowhigh-terminal-source-cost-dichotomy-20260610
  status: proved-cost-dichotomy-not-original-data-production
  proof_role: active_completion_cost_dichotomy
  logical_landing_node: lowhigh_terminal_source_cost_dichotomy
  edge_effect: "Uses the explicit source-strip cost to split the low-high terminal source branch into uniform super-L1 residence, which excludes terminal atoms, and infinite-cost terminal artifact, which cannot serve as forward Pack-survival payment."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-minimum-singularity-cost-functional-lowhigh-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-mechanism-reentry-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-low-high-terminal-signed-saturation-forward-no-free-sink-direct-attempt-20260610.md
  downstream_consequence: "Proves UniformTemporalSourceIntegrability_{p,lowhigh}.A => LowHighTerminalSourceTimeAntiAtom.A for the terminal strip branch, and identifies the surviving no-uniform-p branch as infinite-cost limit-of-class / Pack-face support rather than forward payment."
---

# MPP LowHighTerminalSourceCostDichotomy.A

Date: 2026-06-10

Status: proved cost dichotomy. This does not prove that original smooth data
supplies the needed uniform source residence. It does remove the ambiguity
around what the terminal strip costs and what each branch means.

## Target

The current live child after
`LowHighTerminalSignedSaturationForwardNoFreeSink.A` is the terminal source
strip:

```text
positive selected low-high source mass
in shrinking same-witness terminal windows.
```

The old wording let this branch keep reproducing as:

```text
terminal anti-atom,
uniform temporal integrability,
source Carleson,
rigid anti-atom,
or non-source Pack survival.
```

The cost theorem makes the split sharper.

## Statement

Let `I_n=(T_n-tau_n,T_n]` with `tau_n -> 0`. Let `g_n >= 0` be the selected
low-high positive source density on `I_n`.

For the positive terminal-atom obstruction, the useful split is the following.

### Branch A: Super-L1 residence

There exists `p>1` and `C<infinity` such that for all selected terminal
windows in the same witness family,

```text
integral_{I_n} g_n(s)^p ds <= C.
```

Then the terminal positive source atom is impossible:

```text
integral_{I_n} g_n(s) ds
  <= C^{1/p} tau_n^{1-1/p}
  -> 0.
```

So:

```text
UniformTemporalSourceIntegrability_{p,lowhigh}.A
  => LowHighTerminalSourceTimeAntiAtom.A.
```

### Branch B: Terminal atom persists

There is a subsequence with terminal mass

```text
integral_{I_n} g_n(s) ds >= M0 > 0.
```

Then every `p>1` temporal source-residence cost diverges:

```text
integral_{I_n} g_n(s)^p ds >= M0^p tau_n^{1-p} -> infinity.
```

The branch can no longer be described as "maybe controlled but not yet
tracked." It is explicitly an infinite super-`L1` cost branch.

## Proof

Branch A is the absolute-continuity consequence of Holder's inequality:

```text
integral_{I_n} g_n ds
  <= |I_n|^{1-1/p} ||g_n||_{L^p(I_n)}
  <= tau_n^{1-1/p} C^{1/p}
  -> 0.
```

So a uniform `p>1` residence bound removes the terminal atom.

Branch B is the contrapositive cost lower bound from
`MinimumSingularityCostFunctional_lowhigh.A`. Positive mass in a vanishing
window forces:

```text
||g_n||_{L^p(I_n)}^p >= M0^p tau_n^{1-p}.
```

Since `tau_n -> 0` and `p>1`, the cost diverges.

These two alternatives cover the selected low-high terminal source obstruction
that matters to the current branch: uniform super-`L1` residence kills the
atom; a surviving positive atom has infinite super-`L1` cost.

## CM Reading

This theorem does not spend CM face support as a forward theorem.

It says the forward public first-Pack survival chain now has one exact
mathematical burden:

```text
produce a same-witness super-L1 / Orlicz / Morrey / Carleson residence budget
for the low-high terminal source strip,
```

or stop calling the branch a forward Pack-survival payment.

If Branch B persists, the object is:

```text
finite L1_s endpoint mass
+ infinite every-super-L1 residence cost
+ no positive preterminal residence modulus.
```

That is not a hidden smooth source history. It is a terminal boundary artifact
or Pack-face support, depending on the installed Pack requirement for the
selected witness. It may support `Exit(Q):=not Member(Q)` through the CM
face grammar; it cannot pay `LowHighTerminalSignedSaturationForwardNoFreeSink.A`
as a forward no-free-sink theorem.

## What This Solves

This closes one ambiguity in the live obstruction.

The branch

```text
g_m(s)=m 1_{(-1/m,0]}(s)
```

is not a mysterious untraceable event. It is exactly:

```text
L1-visible,
heat-moment invisible,
super-L1 infinitely expensive.
```

So the next proof step is no longer "find some source anti-atom theorem." The
next step is one of two exact moves:

```text
1. prove the same participating fluid supplies the required super-L1 residence
   budget, which kills the atom; or

2. prove that absence of such residence is not Pack_Q for the same selected
   witness, which routes the surviving endpoint strip into CM class exit.
```

## Remaining Burden

The theorem still leaves a real burden:

```text
ParticipationTransferThrottle.A / DonorDrainCompetition.A
```

must decide whether the same fluid can lawfully pay a finite super-`L1`
residence budget for the selected terminal source branch from original smooth
data.

And:

```text
LimitOfClassTerminalArtifact.A
```

must decide whether the infinite-cost endpoint strip is only a terminal
boundary artifact rather than a valid finite-time Pack survivor.

## Live Criticism Delta

`NS-LIVE-20260610-COST-002`: the low-high terminal source branch now has a
proved dichotomy. Uniform `p>1` temporal source residence excludes the terminal
source atom by absolute continuity. A surviving terminal atom has infinite
super-`L1` cost by the explicit lower bound. The obstruction has moved from
"maybe the terminal strip is merely hard to trace" to the sharper question:
does the same participating fluid produce a super-`L1` budget, or does the
infinite-cost endpoint strip fail Pack / land as a limit-of-class terminal
artifact?
