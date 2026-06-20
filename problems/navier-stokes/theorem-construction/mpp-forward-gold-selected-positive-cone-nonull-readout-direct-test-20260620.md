# Selected Positive Cone No-Null Readout Direct Test

Date: 2026-06-20

## Status

Direct algebra test complete.  `SelectedPositiveConeNoNullReadout.A` is not
installed by the current lower-frame, Bessel, mode, stress-current, or tangent
observability inputs.

The theorem is a strict no-cancellation statement on the selected positive
source cone.  It is not the endpoint time-compactness theorem.  Endpoint
time-compactness is `SelectedCarrierEndpointUI.A`.

## 1. Statement under test

Let `C_N^+` be the selected positive source cone after legal exits, retained
finite signed partners, and finite donor telescoping have been removed.  Normalize
the native selected positive carrier by

```math
M_N^+(q_N)=1.
\tag{SPN.1}
```

Let

```math
L_N q_N
\tag{SPN.2}
```

be the usable same-shadow signed readout: local-energy defect, projected stress
trace, source mode trace, or another legal signed terminal readout on the same
selected packet family.

The no-null readout theorem is the lower bound

```math
\boxed{
\inf_{\substack{q_N\in C_N^+\\ M_N^+(q_N)=1}}
\|L_Nq_N\|_N
\ge c_0>0 .
}
\tag{SPN.3}
```

Equivalently, the following sequence is forbidden:

```math
q_N\in C_N^+,
\qquad
M_N^+(q_N)=1,
\qquad
\|L_Nq_N\|_N\to0 .
\tag{SPN.4}
```

By the kernel normal form note, `(SPN.3)` is exactly the algebraic half of
`SelectedPositivePolarSaturation.A`.  The other half is compactness of the
selected carrier at the endpoint, represented by `SelectedCarrierEndpointUI.A`.

## 2. Immediate consequence if the theorem is true

Homogeneity gives the saturation estimate on the compact selected-carrier side.
For every nonzero `q_N` in the selected cone, apply `(SPN.3)` to
`q_N/M_N^+(q_N)` and obtain

```math
M_N^+(q_N)
\le
c_0^{-1}\|L_Nq_N\|_N
+Legal_N+o_N(1).
\tag{SPN.5}
```

Thus no-null readout plus endpoint compactness supplies the missing signed-to-
positive carrier bridge:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
+
\text{SelectedPositiveConeNoNullReadout.A}
\Longrightarrow
\text{SelectedPositivePolarSaturation.A}.
}
\tag{SPN.6}
```

This implication is a normalization argument, not an additional analytic
estimate.

## 3. Why the installed lower frames do not prove it

The response lower frame has the form

```math
\|f\|^2
\le
C\sum_a|\langle f,\chi_a\rangle|^2+Err.
\tag{SPN.7}
```

It applies after the source cloud has already formed a response vector `f`.
The no-null readout theorem needs an inverse estimate before cancellation:

```math
\|q_N\|_{carrier}
\le
C\|L_Nq_N\|_N+Legal_N+o_N(1)
\quad
\text{on } C_N^+ .
\tag{SPN.8}
```

A Bessel estimate gives only the forward direction

```math
\|L_Nq_N\|_N
\le
C\|q_N\|_{carrier}.
\tag{SPN.9}
```

It does not exclude a kernel of `L_N` inside the selected cone.

The finite-dimensional obstruction is:

```math
B(a_1,a_2)=a_1-a_2,
\qquad
A=(1,1).
\tag{SPN.10}
```

Then

```math
\|A\|_{\ell^2}^2=2,
\qquad
BA=0.
\tag{SPN.11}
```

This is the same algebraic wall isolated by the donor-reserve adjoint trace
test.  Lower frames on the image do not imply inverse control of the source
cloud.

## 4. Positive carrier cancellation model

There is also a carrier-form version.  Let two selected sheets carry equal
opposite signed residues:

```math
q_1=1,
\qquad
q_2=-1,
\qquad
L(q_1,q_2)=q_1+q_2.
\tag{SPN.12}
```

The native positive carrier sees

```math
M^+(q_1,q_2)=1,
\tag{SPN.13}
```

while the signed readout sees

```math
L(q_1,q_2)=0.
\tag{SPN.14}
```

So the unsigned selected positive carrier can survive while the signed same-
shadow record cancels.  This is not a terminal time pulse.  It is a same-shadow
positive-cone kernel.

## 5. Relation to mode deficit

`SourceWeightedModeDeficit.A` is stronger than the no-null readout needed here.
No-null readout needs a positive lower bound such as `(SPN.3)`: every normalized
selected positive carrier is seen by some signed readout.

Mode deficit needs near equality on the original selected carrier:

```math
M_m^+-|I_m|
\le
Legal_m^{def}+o_m(1).
\tag{SPN.15}
```

Thus ordinary lower-frame visibility is enough for no-null only when it is
proved on the same selected positive source cone.  It is not enough for the
mode-deficit equality case.

## 6. Relation to source-null tangents

`NoSourceNullProfileTangent.A` concerns profile-changing tangent directions
whose source trace vanishes:

```math
\Gamma_U a=0.
\tag{SPN.16}
```

`SelectedPositiveConeNoNullReadout.A` concerns selected source coefficient
clouds whose signed readout cancels:

```math
L_Nq_N=0,
\qquad
M_N^+(q_N)>0.
\tag{SPN.17}
```

These objects meet when a profile tangent produces the selected source cloud,
but neither theorem follows from the other without a carrier realization bridge
from tangent motion to the native selected positive source cone.

## 7. Noncircular suppliers

The no-null theorem would follow from any one of these exact inputs:

1. `NoNullSourceParentCloud.A` plus `SameLedgerPositiveCarrierFidelity.A`;
2. retained signed-partner saturation, i.e. `TerminalSignedSaturation.A`;
3. a carrier-first mode atlas plus `ModeJacobianOnNativeCarrier.A` and the
   positive carrier bridge;
4. same-carrier source-square or strict no-waste domination;
5. a CM face consumption theorem proving that a surviving null positive carrier
   is already a Pack, Part, or Field face failure.

Each supplier excludes `(SPN.4)` by charging the missing signed partner,
preventing the cancellation, or routing the surviving positive carrier into an
already legal exit.

## Verdict

`SelectedPositiveConeNoNullReadout.A` is not proved by current response lower
frames, Bessel estimates, signed visibility, formal mode separation, endpoint
readout polarization, finite source mass, or tangent observability.

Its failure is a concrete positive-cone kernel: a selected positive carrier can
remain nonzero while the signed same-shadow readout cancels.  This is separate
from the terminal time-face pulse.  The pulse belongs to
`SelectedCarrierEndpointUI.A`; the cancellation belongs to
`SelectedPositiveConeNoNullReadout.A`.
