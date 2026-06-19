# MPP Clay Counterexample-Exclusion Bridge Direct Work

Date: 2026-06-01

Status: direct bridge construction pass; proof reduced to the exact missing
face-exclusion input.

## Target

Write the Clay-closing bridge directly, using the installed torus-first CM
surface:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ TorusGlobalMaterialAtlasTerminalCapture.A
+ ClayTerminalWitnessCMEntry.A
+ ClayFiniteFailureTypeCMExhaustion.A
+ ClayCMContrapositiveEmbedding.A
=> contradiction with W_* being a finite Clay counterexample.
```

The tempting shortcut tested here is:

```text
classified Exit(Q_atlas)
=> not a valid finite-breakdown counterexample.
```

The proof attempt below rejects that shortcut.  The exact bridge has to exclude
the first-face failure side for the original smooth datum, or equivalently
produce the same-solution continuation packet; target fidelity alone does not
turn `Exit(Q_atlas)` into a Clay contradiction.

## Installed Inputs Checked

1. `TorusGlobalMaterialAtlasTerminalCapture.A` selects the whole transported
   material atlas on `T^3`, not a diagnostic subpacket.

2. That same note discharges the three terminal-capture atoms for the periodic
   surface:

```text
TerminalSelectionCompleteness.A
SelectedPacketReadoutCompleteness.A
PackDefinitionUnification.A
```

3. Its theorem gives the Pack-first terminal face trichotomy:

```text
finite terminal non-continuation on T^3
=> not Pack_{Q_atlas}
   or Pack_{Q_atlas} and not Part_{N_s,Q_atlas}
   or Pack_{Q_atlas} and Part_{N_s,Q_atlas}
      and for all r>0 not Field_{N_s,r,Q_atlas}.
```

4. `ClayCMContrapositiveEmbedding.A` reads any derived first face failure as

```text
Exit(Q_atlas; O_NS^work):=not Member(Q_atlas; O_NS^work).
```

5. `GenuineCMExit.Equiv.A` proves the positive continuation equivalence:

```text
ContCM(T_*) <=> classical continuation through T_*.
```

## Direct Proof Attempt

Assume a finite periodic Clay counterexample from smooth zero-mean data. Let
`(u,p)` be the maximal classical solution on `[0,T_*)`.

By the torus global material atlas theorem, the alleged terminal breakdown is
tested on `Q_atlas`, the whole transported material atlas. There is no spatial
escape and no unselected local diagnostic packet.

The terminal packet has exactly two logical outcomes.

### Pass Outcome

If, for some continuation depth `N_s` and some `r>0`,

```text
Pack_{Q_atlas}
and Part_{N_s,Q_atlas}
and Field_{N_s,r,Q_atlas}
```

all survive, then the readout-complete atlas gives

```text
sup_{t<T_*} ||u(t)||_{H^s(T^3)} < infinity,
s>5/2.
```

Set \(M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}\).  Periodic \(H^s\) local theory
supplies a lifespan \(\tau=\tau(\nu,s,M_s)>0\) for every datum with norm at most
\(M_s\).  Choosing \(t_j\uparrow T_*\) with \(T_*-t_j<\tau/2\), the solution
launched from \(u(t_j)\) exists beyond \(T_*\), and uniqueness identifies it with
the original solution on the overlap. This contradicts the assumed finite
endpoint.

So the pass outcome closes.

### Fail Outcome

If the endpoint is genuinely finite, the torus-atlas theorem forces one first
face failure:

```text
not Pack_{Q_atlas},
or Pack_{Q_atlas} and not Part_{N_s,Q_atlas},
or Pack_{Q_atlas} and Part_{N_s,Q_atlas}
   and for all r>0 not Field_{N_s,r,Q_atlas}.
```

The installed CM embedding then gives class exit:

```text
Exit(Q_atlas):=not Member(Q_atlas).
```

This is a real CM classification. It is not yet a contradiction with the Clay
breakdown assumption. A finite Clay breakdown is allowed to say that the
continuation-complete packet fails at the terminal time. Therefore the rule

```text
Exit(Q_atlas) => no valid Clay counterexample
```

does not follow from target fidelity alone. The repo already rejects that
shortcut in `mpp-clay-breakdown-class-exit-inadmissibility-proof-attempt-20260524.md`.

## Exact Bridge That Would Close Clay

The noncircular Clay bridge has to be:

```text
OriginalSmoothData_T3
=> not(
     not Pack_{Q_atlas}
     or Pack_{Q_atlas} and not Part_{N_s,Q_atlas}
     or Pack_{Q_atlas} and Part_{N_s,Q_atlas}
        and for all r>0 not Field_{N_s,r,Q_atlas}
   ).
```

Equivalently:

```text
OriginalSmoothData_T3
=> ContCM(T_*).
```

Then `GenuineCMExit.Equiv.A` gives classical continuation through `T_*`, and the
finite counterexample is impossible.

This is not a separate positive estimate chosen by habit. It is the exact
face-exclusion theorem needed by the CM bridge once the whole-torus atlas has
made the terminal packet readout-complete.

## Current Repo Conflict Located

`mpp-periodic-main-theorem-manuscript-grade-package.md` presents the periodic
closure as though the `Jump_avg` branch is removed by the averaged endpoint
theorem.

The stricter frontier audit
`mpp-pctp-hard-five-burden-frontier-audit-note.md` says that this is not enough:
the averaged endpoint row removes `Jump_avg` only after `CFI.A_avg` /
`Field_avg` is available on the good branch. It is not a branch-native proof
that a bad-material `Jump_avg` terminal tail cannot occur.

So the direct bridge construction lands at one surviving mathematical atom:

```text
BranchNativeJumpAvgNoEscape.A
```

or an equivalent face-exclusion theorem proving, from original smooth periodic
data, that the global terminal atlas cannot realize the remaining Field /
`Jump_avg` failure.

## Bridge Theorem, Correct Form

```text
ClayCounterexampleExclusionBridge.A:

Assume the periodic original-data face-exclusion theorem:

  OriginalSmoothData_T3
  => no Pack/Part/Field first face failure on Q_atlas.

Then no finite periodic Clay counterexample exists.
```

### Proof

Assume `T_*<infty`. By `TorusGlobalMaterialAtlasTerminalCapture.A`, the alleged
finite endpoint either has the full readout-complete `Pack+Part+Field` packet on
`Q_atlas`, or it has a first Pack/Part/Field face failure.

The face-exclusion theorem eliminates the second alternative.

Therefore the full readout-complete packet survives on `Q_atlas`. By the
readout bridge, the solution has a bounded `H^s(T^3)` norm for some `s>5/2` on
`[0,T_*)`. Set \(M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}\). Periodic local
well-posedness gives a lifespan \(\tau=\tau(\nu,s,M_s)>0\). Choose
\(t_j\uparrow T_*\) with \(T_*-t_j<\tau/2\); the solution launched from
\(u(t_j)\) exists past `T_*` and agrees with the original solution on the
overlap by uniqueness, contradiction.

Thus `T_*` is not finite.

## Work Result

The bridge is now written in the proof grammar. The current repo inputs prove it
conditionally on original-data face exclusion. They do not prove the unconditional
Clay bridge unless the branch-native face-exclusion atom is installed.

The next object-level mathematical work is therefore not another status demotion.
It is to prove or refute:

```text
BranchNativeJumpAvgNoEscape.A
```

inside the periodic terminal-atlas route, or to replace it with a stronger
direct theorem:

```text
OriginalSmoothData_T3
=> no Pack/Part/Field first face failure on Q_atlas.
```
