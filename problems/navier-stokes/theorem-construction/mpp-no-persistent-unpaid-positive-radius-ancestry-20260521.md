# MPP NoPersistentUnpaidPositiveRadiusAncestry.A

Date: 2026-05-21

Status: installed as a CM-relative ancestry lemma.

## Claim

In the current post-ASAC / `B_ASAC^closed` source-pulse branch, a selected
same-fluid finite ancestry cannot keep a positive terminal carrier radius while
remaining unpaid and retained.

Precisely, assume a selected ancestry tail has

```math
\liminf_m r_m \ge r_0>0
```

and carries a positive selected terminal source residue

```math
\mu_*^{src}(Q_R\times\{0\})=c_0>0.
```

Then at least one of the following must occur on that tail:

```text
reserve payment,
dissipation payment,
incoming participation/source flux,
legal/projected/cutoff/boundary exit,
finite CM Part/Field exit.
```

Equivalently, an all-internal unpaid retained ancestry has no positive-radius
terminal tail.

## Proof

Pass to a subsequence with `r_m>=r_0`. The transported packet geometry has a
positive terminal carrier, so the branch is no longer a zero-radius Zeno
endpoint. If `Pack_Q`, `Part_{N,Q}`, or `Field_{N,r,Q}` fails on this finite
carrier, the desired finite CM Part/Field exit has already occurred.

It remains to test the retained case

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

On this same retained branch, `SourceMeasureParticipationDensityBridge.A` reads
the selected terminal source residue as the source-current trace of the shared
participation/tower field. The `B_ASAC^closed` shared-participation balance gives
the terminal strip inequality

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}(\partial Q_R\times[-\varepsilon,0])
+Exit_m([-\varepsilon,0])
+o_m(1).
```

Here `M_CM(N,r,Q)<\infty` is supplied by retained `CM_{N,r,Q}`. The unpaid
all-internal hypothesis removes the paid exit ledger:

```math
Exit_m=0.
```

If the incoming participation/source flux is nonzero, that is one of the
listed accounting events. On the no-incoming subcase,
`RetainedPackFieldNoIncomingParticipationFlux.A` gives

```math
J_{in,m}=o_m(1)
```

on the retained extraction. Taking the terminal residue limit gives

```math
c_0
\le
M_{CM}(N,r,Q)\varepsilon
```

for every `\varepsilon>0`. Letting `\varepsilon\downarrow0` contradicts
`c_0>0`.

Thus a positive-radius terminal tail cannot be simultaneously selected,
unpaid, no-incoming, and retained in finite `CM`. It must pay, receive flux,
leave through a legal ledger, or hit a finite CM witness.

## Consequence For The Zeno Dichotomy

For the CM contrapositive route, the finite ancestry alternatives are now:

```text
positive-radius terminal tail -> finite accounting event or finite CM Part/Field exit;
no positive-radius terminal tail -> Zeno radius collapse.
```

The second alternative is exactly the terminal zero-radius residue handled by
`mpp-terminal-zeno-pack-failure-correction-20260521.md`, hence it lands first as
`not Pack_Q`.

## Boundary

This is a retained-CM ancestry lemma. It does not prove the bare forward source
supplier theorem

```text
PositiveRemainderDepletion.A
```

from original data alone. The forward supplier still needs an independent
non-Carleson temporal anti-concentration theorem, a scale-critical active-square
reserve, or a produced rigid residue class with Liouville. The CM route does
not need that stronger supplier to close the terminal Zeno legality question.
