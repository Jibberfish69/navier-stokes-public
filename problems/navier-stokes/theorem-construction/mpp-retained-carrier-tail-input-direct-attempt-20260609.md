# MPP RetainedCarrierTailInput Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt; not proved, split to retained-terminal
scale-barrier transfer plus lifted-band flux.

## Target

This pass attacks:

```text
RetainedCarrierTailInput.A.
```

The desired theorem is:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ Pack_Q
+ same original preterminal Navier-Stokes solution
=> scale-normalized high-frequency tail smallness on Q's retained terminal
   charts sufficient for local strong L^2 compactness of the stress.
```

The target is deliberately before `Part_{N,Q}`.  It may not assume retained
Field, tower amplitude, endpoint CKN classification, or raw finite charge as a
substitute for the retained-carrier tail input.

## Checked inputs

`scale-barrier-tail-lemma.md` gives the fixed classical scale-barrier surface:

```text
sup_n int_0^T ||P_{>=N} u^{(n)}(t)||_2^2 dt
<= C_* 2^{-2 delta N}.
```

Its own boundary says the proof is conditional on the lifted-band flux theorem:

```text
(L-Flux).
```

`scale-lifted-band-stress-strain-flux-repair.md` identifies the live scale-side
burden.  The lifted packet closes after:

```text
int Pi_N^{lift,dy} <= eta * int D_N + C_* 2^{-2 delta N}.
```

That note further reduces the route through signed lifted-band descent,
barrier-scale dual terms, collar reduction, mesoscopic residual reduction,
upper-boundary packet control, and middle-band/far-corona flux.

`energy-insufficiency-lemma.md` says raw energy/enstrophy is necessary but does
not supply the dangerous-scale tail/flux estimate.

`mcp-field-avg-equivalence-terminal-good-cover.md` and
`mcp-tgc-a-hard-audit-terminal-radius-collapse.md` say that a terminal positive
SCF-good scale is Field/coherence data; failure of such a scale is a Field face,
not a retained-Pack tail theorem.

## Direct attempt

There are three possible shortcuts.  All fail.

### 1. Raw energy

The energy inequality supplies finite total energy and integrated dissipation.
It does not give a terminal scale-normalized tail modulus on the retained packet.
A terminal sequence can concentrate high-frequency activity in shrinking time
slabs while preserving finite integrated dissipation.  This is exactly the gap
between raw mass and a terminal anti-atom/modulus.

So raw energy does not prove `RetainedCarrierTailInput.A`.

### 2. Fixed-scheme scale barrier

The fixed-scheme scale barrier would be the right compactness input after it is
proved.  The current installed note is conditional on `(L-Flux)`, and it lives
on the fixed classical approximation surface.  The retained terminal target
also needs a transfer statement:

```text
fixed classical scale-barrier tail
=> scale-normalized tail smallness on Q's retained terminal charts.
```

That transfer is not automatic from `Pack_Q`.  Pulling the fixed dyadic tail to
moving retained charts introduces localization, chart distortion, and terminal
window normalization.  Those are precisely the places where pressure/source
residue and lifted-band flux defects can live.

### 3. Terminal good cover / Field

A positive terminal SCF-good cover would give coherent positive-scale control on
a terminal subtail.  The checked Field notes identify that as Field/coherence
data.  It cannot be imported into the first retained-Part tail input without
assuming a downstream face.

If the good radius collapses, the current grammar classifies that as an averaged
Field failure.  That is a CM face classification, not a proof of the retained
tail input needed for Part.

## Result

`RetainedCarrierTailInput.A` is not proved from the current inputs.

The exact next target splits into two ordered pieces:

```text
RetainedTerminalScaleBarrierTransfer.A:

fixed classical scale-barrier tail on the same original solution
=> scale-normalized high-frequency tail smallness on Q's retained terminal charts.
```

and its upstream scale-side theorem:

```text
RetainedLiftedBandFlux.A / L-Flux:

the lifted-band stress-strain flux bound needed to prove the fixed classical
scale-barrier tail, with the retained-terminal chart/localization transfer kept
explicit.
```

Because the fixed scale-barrier proof itself is conditional on `(L-Flux)`, the
next non-alias target is:

```text
RetainedLiftedBandFluxTransfer.A:

prove the lifted-band flux theorem strongly enough to feed both the fixed
scale-barrier tail and the retained-terminal transfer to Q's charts, or split
the failure into signed lifted descent, dual boundary terms, upper-boundary
packet, and middle-band/far-corona flux blockers.
```

## New live criticism

`NS-LIVE-20260609-109`: `RetainedCarrierTailInput.A` is not proved. Raw energy
does not give a terminal scale-normalized tail modulus; the fixed classical
scale-barrier tail is conditional on `(L-Flux)` and still needs transfer onto
`Q`'s retained terminal charts; and terminal good-cover positivity would import
Field/coherence data.  The active loop must attack
`RetainedLiftedBandFluxTransfer.A`, or split it into signed lifted descent,
dual boundary, upper-boundary packet, and middle-band/far-corona flux blockers,
while keeping `pdfs_final: false`.
