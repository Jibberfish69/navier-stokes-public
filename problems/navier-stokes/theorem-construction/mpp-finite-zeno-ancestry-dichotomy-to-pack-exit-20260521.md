# MPP Finite Zeno Ancestry Dichotomy To Pack Exit

Date: 2026-05-21

Status: CM-relative proof installed after
`mpp-no-persistent-unpaid-positive-radius-ancestry-20260521.md`.

## Claim

Let `P_m` be a same-fluid selected source ancestry chain with finite legal
packets

```math
r_m>0,\qquad t_m<T_*.
```

Assume the branch does not pay reserve, dissipate, receive incoming flux, hit a
legal/boundary exit, or hit a finite-scale CM face before the terminal time.

Then the branch must be Zeno:

```math
r_m\downarrow 0,\qquad t_m\uparrow T_*.
```

Consequently the endpoint is not a retained CM packet. It is a terminal
zero-radius source residue and gives

```math
\neg Pack_Q.
```

## Proof Shape

There are only two radius cases.

### Case 1: a positive radius survives

Suppose some terminal tail has

```math
r_m\ge r_0>0.
```

Then the selected same-fluid packet family has a positive-scale terminal
subsequence. After passing to the terminal subsequence, the source residue is
carried by an ordinary positive-radius packet, not by a Zeno endpoint.

The proof here is the retained finite-carrier participation contradiction from
`NoPersistentUnpaidPositiveRadiusAncestry.A`.

The positive lower radius gives an ordinary terminal carrier. If `Pack_Q`,
`Part_{N,Q}`, or `Field_{N,r,Q}` fails on that carrier, the branch has already
hit a finite CM face. On the retained subcase,

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q},
```

the source-current participation balance gives

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}
+Exit_m
+o_m(1).
```

The unpaid all-internal hypothesis removes `Exit_m`; a nonzero `J_in` is already
incoming flux; and the no-incoming retained subcase has `J_{in,m}=o_m(1)` by
`RetainedPackFieldNoIncomingParticipationFlux.A`. Passing to the selected
terminal source residue yields

```math
c_0\le M_{CM}(N,r,Q)\varepsilon
```

for every `\varepsilon>0`, contradicting `c_0>0`.

So an unpaid all-internal ancestry cannot keep a positive lower radius.

### Case 2: no positive radius survives

The only remaining possibility is

```math
r_m\downarrow0.
```

This is the Zeno branch. The limit object is a terminal source measure on the
time face, not a positive-radius packet:

```math
\mu_*^{src}(B_R\times\{0\})>0.
```

Since retained `Pack_Q` requires a legal positive-scale carrier/cover at the
terminal CM object, this endpoint is

```math
\neg Pack_Q.
```

Equivalently, prove it by contradiction. If `Pack_Q` holds at the endpoint, then
`Pack_Q` supplies a positive retained carrier radius `r_Q>0` and a finite
same-fluid cover through the terminal window. For all sufficiently large `m`,
the selected ancestry has a legal representative inside that cover with radius
bounded below by a fixed fraction of `r_Q`, contradicting
`r_m\downarrow0`. Thus the terminal object cannot satisfy Pack.

It is already CM exit. Any Field/Jump language applied to the terminal residue
is post-exit readout unless a separate theorem produces a positive-scale retained
carrier.

## Installed Upstream Lemma

The upstream positive-radius alternative is discharged by:

```text
NoPersistentUnpaidPositiveRadiusAncestry.A
```

Statement:

```text
If a selected same-fluid finite ancestry has a positive lower radius on a
terminal tail, then retained finite-CM source-accounting forces reserve payment,
dissipation, incoming flux, legal/boundary exit, or finite CM-face exit.
```

Therefore every retained no-pay survivor is forced into the Zeno case, and the
Zeno endpoint is typed before Pack is spent: it is Part-first when the same
original-NS pointwise participation record remains, and true `not Pack_Q` only
when that record/carrier/readout is absent.

The stronger forward supplier theorem `PositiveRemainderDepletion.A` remains a
separate source-production problem. It is not needed for this CM-legality
dichotomy.
