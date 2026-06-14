# MPP SourcePulse Normal Form and Unspent Reserve Audit Note

## Status

This note executes the direct normal-form attack on the remaining atom:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

It proves a bookkeeping-normalization theorem for any failure of
`SourcePulseExclusion.A` and audits every currently installed original-data
reserve against that normalized failure packet.  It does not prove the
exclusion theorem.

## Normal-Form Target

Assume `SourcePulseExclusion.A` fails.  Then after passing to a subsequence
there is a terminal same-fluid source-pulse packet

```math
\mathcal P_n=(Q_n^\Phi,j_n,I_n),
\qquad
|I_n|=2^{-2j_n},
\qquad
j_n\to\infty,
\qquad
t_n\uparrow T_\ast,
```

with active coefficient lower bound

```math
\sup_{t\in I_n}\gamma_{j_n}(t)\ge \eta>0
\tag{NF.1}
```

and native positive active source lower bound

```math
\int_{I_n}
\mathfrak S_{j_n,loc}^{active,+}(t)\,dt
\ge c_0>0.
\tag{NF.2}
```

The packet may be chosen so that all already-installed legal losses are
absorbed into `o_n(1)` and all same-fluid labels, collars, cutoffs, and active
windows are fixed from the same preterminal packet.  This is just the standard
terminal subsequence selection used throughout the source-pulse notes.

## Normal-Form Theorem `SPNF.A`

```math
\boxed{
\neg SourcePulseExclusion.A
\Longrightarrow
\text{there exists a terminal packet } \mathcal P_n
\text{ satisfying }(NF.1)\text{--}(NF.2)
\text{ and evading every installed reserve below.}
}
```

### Proof

Failure of `SourcePulseExclusion.A` gives active windows with nonvanishing
normalized source mass.  Discard windows whose pressure, cutoff, collar, or
finite-depth ledger losses dominate the source mass; those windows are already
legal-loss windows and cannot witness the failed theorem.  On the remaining
subsequence, the source mass is carried by the native positive active carrier.

If an installed reserve charged a fixed positive amount on infinitely many of
these windows with summable total reserve, the pulse sequence would be finite.
Therefore an infinite failed sequence can be normalized so each installed
reserve either vanishes along the packet or is already accounted for as legal
loss.  This yields `(NF.1)`--`(NF.2)` plus the reserve-evasion conditions
audited below.

## Reserve Audit

### 1. Energy and first-moment dissipation

The energy reserve gives:

```math
\sup_t\|u(t)\|_2^2<\infty,
\qquad
\int_0^{T_\ast}\|\nabla u(t)\|_2^2\,dt<\infty.
```

This is a first-moment reserve.  The normalized pulse `(NF.2)` is a heat-scale
active source/square-type carrier.  A short pulse can carry order-one
normalized source mass while contributing only finite first-moment dissipation.
Thus energy does not charge `\mathcal P_n`.

### 2. Preterminal smoothness

Smoothness on every compact interval `[0,T_\ast-\delta]` controls only
preterminal leaves.  It proves the non-Zeno entrance-leaf decay already
recorded in `mpp-entrance-leaf-decay-nonzeno-proof-note.md`.

The normal-form packet is terminal:

```math
t_n\uparrow T_\ast,
\qquad
j_n\to\infty.
```

Thus compact preterminal smoothness does not charge `\mathcal P_n`.

### 3. Scheduler bad-time smallness

The scheduler gives small Lebesgue time measure of large-coefficient windows:

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt=o_N(1).
```

It does not imply absolute continuity of the native active source measure with
respect to Lebesgue time.  The normalized failure packet is precisely the case
where source mass sits on short bad windows.  This is the `MSC.BadAC` wall.

Thus scheduler smallness does not charge `\mathcal P_n`.

### 4. Signed dyadic exchange

Unweighted shell exchange cancels before one-sided active weights, cutoffs,
same-fluid localization, and positive-part selection.  The normalized packet
uses the positive active carrier.  Signed cancellation therefore does not
charge `(NF.2)` unless a separate positive/negative balance theorem is proved.

Thus dyadic exchange does not charge `\mathcal P_n`.

### 5. Pressure/cutoff/source suppliers

Pressure and cutoff ledgers route legal losses.  They do not give a sign or
Carleson bound for the interior native source carrier after positive-part
selection.  The downstream source theorem `FFSRC.A=>FCI.5f` supplies
integrability after the receiver/source route is admitted; importing it here
would assume the bad branch has already been eliminated.

Thus pressure/cutoff/source suppliers do not charge `\mathcal P_n`.

### 6. Local energy and compactness

Local energy supports extraction after a physical source-residue packet is
available.  It does not itself prove source-residue localization from the
global or active shell carrier, nor does broad ancient compactness kill the
resulting residue.

Thus local energy/compactness do not charge `\mathcal P_n` without the
additional rigidify package.

### 7. Same-fluid transport

Same-fluid transport preserves labels and legality of the packet.  It does not
remove, charge, or rigidify the positive source mass.  In normal form it is a
license condition, not a depletion estimate.

Thus same-fluid transport does not charge `\mathcal P_n`.

## Consequence

The normal-form theorem eliminates one possible ambiguity: the remaining atom
is not hidden inside a forgotten original-data reserve.  A failed terminal
packet can be selected so that all installed reserves have already been spent,
absorbed into legal losses, or shown irrelevant to the native positive active
source carrier.

Therefore the live target is exactly:

```math
\boxed{
\text{prove a new theorem that removes, charges, or rigidifies the normal-form
packet } \mathcal P_n.
}
```

Equivalently:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A
}
```

remains open, and no promotion is licensed by the normal-form audit alone.
The follow-up measure decomposition
`mpp-sourcepulse-native-source-measure-decomposition-note.md` identifies the
same normal-form survivor as the singular component of the native positive
active source measure relative to all installed route ledgers.
