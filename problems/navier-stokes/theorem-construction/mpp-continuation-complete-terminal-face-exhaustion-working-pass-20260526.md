# MPP Continuation-Complete Terminal Face Exhaustion Working Pass

Date: 2026-05-26

Status: conditional working proof pass for the CM contrapositive referee gate.

## Target

This note works the live CM burden instead of only classifying it:

```text
finite Clay terminal non-continuation
=> no continuation-complete CM participation-field record
=> first failed Part/Field face
=> Exit(Q):=not Member(Q).
```

The point is to remove the vague manuscript step "pass to a terminal subsequence
producing Rterm" as the load-bearing sentence.  The proof does not need a new
compact terminal object if the terminal packet is defined as the
continuation-complete packet itself.

## Definitions Used

Fix a maximal classical Navier-Stokes solution `(u,p)` on `[0,T_*)`, with
`T_*<infty`, and fix `s>5/2`.  Let `N_s` be a finite depth high enough for the
installed `H^s` readout.

For an admissible same-fluid terminal cover/window `Q`, write

```text
CM_{N_s,r,Q} := Pack_Q and Part_{N_s,Q} and Field_{N_s,r,Q}.
```

`ContCM(T_*)` means that some admissible same-fluid terminal packet satisfies
`CM_{N_s,r,Q}` for some `r>0`, and that the installed readout bridge turns that
packet into

```text
sup_{t<T_*} ||u(t)||_{H^s(T^3)} < infinity.
```

`GenuineCMExit(T_*)` means `ContCM(T_*)` fails for every admissible same-fluid
terminal packet at continuation depth.

## Theorem `ContinuationCompleteTerminalFaceExhaustion.A`

If `T_*` is a finite terminal non-continuation time for the same original
Navier-Stokes solution, then the failure is exhausted by a Field-certification
Part/Field failure:

```text
finite terminal non-continuation at T_*
=>
not Pack_Q
or (Pack_Q and not Part_{N_s,Q})
or (Pack_Q and Part_{N_s,Q} and for all r>0 not Field_{N_s,r,Q})
```

for the selected admissible terminal packet class.  If no positive same-fluid
terminal carrier exists, the selected failure is the first case.

## Proof

### Step 1. Continuation-complete packet rules out terminal failure

Assume `ContCM(T_*)`.  Then for some same-fluid terminal packet `Q` and some
positive scale `r>0`,

```text
Pack_Q and Part_{N_s,Q} and Field_{N_s,r,Q}
```

hold with the installed readout bridge.  By the readout, the same solution
satisfies

```text
sup_{t<T_*} ||u(t)||_{H^s(T^3)} < infinity.
```

The `H^s`, `s>5/2`, local well-posedness/relaunch theorem gives a lifespan
depending only on that bound.  Starting from times `t_j` increasing to `T_*`
and using uniqueness on overlaps, the same solution extends classically past
`T_*`.  This contradicts terminal non-continuation.

Therefore a finite terminal non-continuation time forces

```text
not ContCM(T_*).
```

### Step 2. Negating `ContCM` gives the CM participation-field record failure

`ContCM(T_*)` is exactly the existence of a same-fluid terminal packet with all
three services plus readout.  Its negation says that no admissible terminal
packet carries all three continuation services at positive scale.

So, for every admissible candidate packet `Q`, the conjunction

```text
Pack_Q and Part_{N_s,Q} and Field_{N_s,r,Q}
```

fails for every `r>0`.

### Step 3. Field-certification exhaustion

Read the failed conjunction in the required Pack-out-of-CM audited order.

1. If no positive same-fluid terminal carrier exists, then `not Pack_Q`.
   This is the Pack face.  It covers terminal zero-radius, detached carrier, and
   unpaid ancestry cases.

2. If `Pack_Q` survives for a selected same-fluid carrier but the
   differentiated Navier-Stokes pressure-viscosity tower does not survive
   through depth `N_s` on that carrier, then `Pack_Q and not Part_{N_s,Q}`.
   This is the Part face.

3. If both `Pack_Q` and `Part_{N_s,Q}` survive, the failed `ContCM` conjunction
   leaves only the Field slot.  Since any positive `Field_{N_s,r,Q}` would
   restore the full continuation packet and contradict Step 1, every positive
   scale fails:

```text
Pack_Q and Part_{N_s,Q} and for all r>0 not Field_{N_s,r,Q}.
```

This is the Field face.

These three cases exhaust the continuation-complete packet because Pack, Part,
and Field are the three witness records in the installed CM witness grammar.
Readout is the bridge from the complete packet to classical continuation, not a
fourth face.

## What This Discharges

This working pass proves the conditional face-exhaustion theorem at the
continuation-complete packet level:

```text
finite terminal non-continuation
=> failure of the continuation-complete CM participation-field record
=> first failed Part/Field face.
```

It does not by itself prove that the selected terminal packet is canonical or
readout-complete.  That gap is handled on the torus-first branch by
`mpp-torus-global-material-atlas-terminal-capture-20260526.md`, where the
selected packet is the whole transported material atlas.

It does not discharge the branch-family census by itself.  Each branch family
still has to show that the object it contributes is either:

1. the selected terminal packet tested above;
2. support-only / readout-only / supplier-only context;
3. obsolete, moot, or logically unreachable; or
4. a genuine unresolved positive requirement that cannot be forced into CM
   language.

## Referee Boundary

The proof is non-circular because it does not assume smooth continuation.  It
uses only the conditional `H^s` relaunch theorem already invoked in Step 1:
for `s>5/2`, if the same solution satisfies

```text
sup_{t<T_*} ||u(t)||_{H^s(T^3)} <= M,
```

then local well-posedness gives a lifespan `delta=delta(s,nu,M)>0`; choosing
times `t_j\uparrow T_*` and using uniqueness on overlaps extends the same
classical solution past `T_*`.

```text
continuation-complete Part/Field packet + H^s readout
=> classical continuation.
```

It then takes the contrapositive.  The remaining live work is record-level:
each promoted branch family must be tied to one of the three failed packet
services, or removed from Clay-facing proof mass.
