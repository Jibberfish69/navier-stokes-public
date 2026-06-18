# MPP PDF CMI Proof-Core Reentry

Date: 2026-06-09

Status: live proof-core reentry from the active PDF completion loop; CMI finality remains open.

## Trigger

The 2026-06-09 active PDF completion loop reopened the prior `pdfs_final: true`
claim. Parallel PDF criticism and repo-support checks produced the same
mathematical pressure point:

```text
terminal-record entry + Pack/Part/Field classification
is not by itself a Clay counterexample-exclusion theorem.
```

The papers must not hide that issue behind cleaner prose.

## Checked Installed Support

### 1. Terminal record entry is supported.

`mpp-terminal-record-entry-standard-pde-hardening-20260608.md` proves terminal
record entry through the exact bounded-norm relaunch:

```math
M_s:=\sup_{0\le t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad
\tau=\tau(\nu,s,M_s)>0.
```

For `t_j\uparrow T_*` with `T_*-t_j<\tau/2`, local `H^s` theory relaunches
from `u(t_j)` beyond `T_*`, and uniqueness on `[t_j,T_*)` identifies that
solution with the original branch. Therefore a finite maximal classical
breakdown on the same original branch must fail the continuation readout along
that branch. This is a PDE reduction, not a CM definition.

### 2. Pack/Part/Field exhaustion is route-relative.

`mpp-continuation-complete-terminal-face-exhaustion-working-pass-20260526.md`
proves the ordered packet-exhaustion statement after a continuation-complete
same-solution terminal packet is the object under test:

```text
not Pack_Q
or Pack_Q and not Part_{N_s,Q}
or Pack_Q and Part_{N_s,Q} and forall r>0 not Field_{N_s,r,Q}.
```

This is a classification of the failed continuation-complete packet. It is not
a positive theorem saying such failure cannot occur.

### 3. No-third-branch is supported.

`mpp-no-third-branch-clay-closure-audit-20260525.md` proves the branch-law
boundary:

```text
pass branch  => Member(Q) => same-solution continuation,
fail branch  => first Pack/Part/Field face failure => Exit(Q):=not Member(Q).
```

It rules out a third object that is both an in-class continuation branch and a
mechanism-derived face-failure branch.

## The CMI Gap That Remains

The Clay negation is the claim that the original smooth solution cannot be
continued classically past a finite time. Such a counterexample is not required
to remain a class member at the terminal time. It may be exactly the alleged
loss of continuation-complete class structure.

Therefore this implication is not installed:

```text
Clay finite breakdown + classified Exit(Q)
=> contradiction with being a valid finite-breakdown counterexample.
```

The June 1 gap audit stated this correctly, and the current PDF criticisms
reopen it as a CMI-finality blocker. The June 8 finite-obstruction inventory
reconciliation is useful for the CM route, but it does not by itself prove that
terminal class exit cannot be the actual finite Clay failure.

## Repaired Proof Target

The proof core must now attack the positive no-genuine-exit theorem:

```text
NoGenuineExitFromSmoothData.A:
OriginalSmoothData => not GenuineCMExit(T_*)
for every finite terminal time T_*.
```

Inside the installed Pack-first grammar this is equivalent to ruling out the
three first-exit faces from original smooth data:

```text
1. OriginalSmoothData
   => terminal Pack survival
   through a noncircular replacement for ScaleCriticalTreeCarleson.A;

2. OriginalSmoothData + Pack_Q
   => Part_{N_s,Q}
   terminal no-drop on the retained same carrier;

3. OriginalSmoothData + Pack_Q + Part_{N_s,Q}
   => exists r>0 Field_{N_s,r,Q}
   terminal coherence at continuation depth.
```

This is exactly the wall exposed in
`mpp-no-genuine-exit-from-smooth-data-direct-attempt-20260525.md`.

## PDF Consequence

Until `NoGenuineExitFromSmoothData.A` or a different noncircular Clay-closing
bridge is proved, both PDFs must treat the CM material as a classified
pass-or-exit proof program with a live no-genuine-exit burden, not as a completed
CMI submission proof.

The next object-level work unit is not prose polish. It is the first concrete
no-exit wall:

```text
OriginalSmoothData => terminal Pack survival
```

with the current first named wall:

```text
ScaleCriticalTreeCarleson.A
```

or an equivalent theorem that prevents terminal Pack loss without assuming
classical continuation.
