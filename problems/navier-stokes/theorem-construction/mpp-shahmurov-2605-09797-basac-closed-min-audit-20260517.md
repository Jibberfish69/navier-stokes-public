# MPP Shahmurov 2605.09797 audit against B_ASAC^closed,min

Date: 2026-05-17

Status: failed as a direct discharge of the local obstruction. The paper is a relevant claimed proof, and its displayed mechanisms do not yet supply the exact missing production theorem for the native terminal time-face source atom.

## External source audited

Rishad Shahmurov, `arXiv:2605.09797`, *A Classical Two-Part First-Threshold Proof of Global Smoothness for Navier--Stokes: Axisymmetric Swirl Closure and Full-System Reduction*.

The paper claims a two-part first-threshold proof. The relevant claimed mechanisms are:

```text
localized temporal source-to-score estimates;
finite-overlap descendant exclusion;
pressure/tail/source-channel removal;
endpoint compactness;
zero-final-defect rigidity.
```

## Local obstruction to discharge

The target is the minimal `B_ASAC` closed atom:

```math
B_{ASAC}^{closed,min},
\qquad
\mu_*^{src}=\rho(y)dy\otimes\delta_{s=0}.
```

The required theorem is one of:

```math
TerminalTimeFaceAntiAtomComponent.A,
\qquad
TransportedBoundaryTightness.A,
\qquad
TerminalSourceReverseHolder.A.
```

## Audit point 1: Temporal Source-to-Score Descendant

The paper's temporal descendant mechanism detects a transfer-active burst on an interior subinterval and produces a smaller positive-score descendant.

In the full-system part, the relevant channel is `Dtemp`, defined by transfer-active stretching on subintervals of `(-1,0]`. Proposition 16.2 then says that a transfer-active temporal burst on shrinking intervals creates a positive corrected-score descendant.

This is not the same as the local obstruction. Our atom is a native source Radon measure on the terminal boundary face `s=0`, not necessarily an interior transfer-active stretching burst. The missing bridge is:

```math
NativeTimeFaceAtomToTransferActiveBurst.A:
\rho(y)dy\otimes\delta_{s=0}
\Longrightarrow
D_{temp}>0
\text{ on shrinking interior intervals.}
```

The paper text available in the audit does not supply this bridge.

## Audit point 2: finite-overlap descendant exclusion

Finite-overlap descendant exclusion removes channels that already generate a smaller admissible packet with positive corrected score. This is a powerful minimality device.

The `B_ASAC^closed,min` obstruction was deliberately built after descendant/minimality arguments have failed to create such a packet. A terminal boundary atom can survive descendant exclusion unless the atom is first converted into a named descendant-producing channel.

Thus finite-overlap exclusion alone does not prove terminal anti-atom.

## Audit point 3: pressure/tail/source-channel removal

The paper's full-system dictionary includes leakage, shell, pressure/tail, fragmentation, passive, angular/phase, and temporal-transfer channels.

Our transported no-flux reduction shows that pressure/tail control would help the spatial boundary part, but the terminal time-face atom is independent of lateral pressure/tail removal. Spatial tail removal does not remove `dy tensor delta_{s=0}`.

## Audit point 4: endpoint compactness

Endpoint compactness can produce a limiting profile after noncompact channels are excluded. For this obstruction, compactness produces the already-known minimal atom:

```math
B_{ASAC}^{closed,min}.
```

Compactness must add temporal spread, source cancellation, or a rigidity identity to become a discharge. The audited text does not show such an identity for an arbitrary native source measure on `s=0`.

## Audit point 5: zero-final-defect rigidity

The paper's Part II claims that zero final defect forces the active frame measure into a locally two-dimensional or axisymmetric-with-swirl class.

This is downstream of proving that every positive final defect either gives strict loss or a descendant. For our route, the unresolved question is whether the native terminal source atom is included in the final defect dictionary or forces one of those channels. Without that bridge, zero-final-defect rigidity does not apply to `B_ASAC^closed,min`.

## Verdict

Shahmurov `2605.09797` identifies a relevant possible strategy, especially the temporal source-to-score descendant mechanism. It does not, from the audited text, directly discharge the local obstruction:

```math
\rho(y)dy\otimes\delta_{s=0}.
```

The missing external-to-local bridge is one of:

```text
NativeTimeFaceAtomToTransferActiveBurst.A;
TimeFaceAtomInFinalDefect.A;
TerminalSourceReverseHolder.A from the paper's TSD estimates;
TransportedBoundaryTightness.A from the paper's pressure/tail channel removal.
```

Until one of these is proved, `B_ASAC^closed,min` remains live in the local theorem ledger.