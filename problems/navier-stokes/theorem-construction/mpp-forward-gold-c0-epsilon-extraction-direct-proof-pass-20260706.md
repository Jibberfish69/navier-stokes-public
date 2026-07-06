---
theorem_id: forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706
status: direct-proof-pass-reduces-to-normalized-relay-bill-compactness-record-passage-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 endgame / epsilon extraction
target_object:
  - C0EpsilonExtraction
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RelayRecordZeroBillKernel
  - FullTowerSignedTotalExchangeRetention.A
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
completion_truth: >-
  Direct proof pass. The zero-bill record kernel gives the right rigidity
  statement, but it does not by itself yield c_0>0. The exact epsilon extraction
  is equivalent to a normalized compactness/record-passage theorem: every
  retained same-fluid relay sequence with dR_N^+=1 and total bill tending to
  zero must converge, modulo the legal symmetries/rescalings, to a retained
  same-fluid zero-bill profile with record still positive. If that theorem is
  installed, the kernel proves a positive epsilon and c_0=2 epsilon. Current
  checked sources do not install it: localized tower closure still needs the
  legal flux/cutoff estimate, now sharpened on the pressure side to exact
  pressure-increment CZ/tail admission and then to remote tower-difference
  pressure-tail summability or route-out; full-tower signed-total exchange
  retention is explicitly open; chapter-2 closedness is finite-readout/conditional
  rather than tight no-loss passage of the selected positive record; and
  signed-height record-net work admission still lacks native same-parent edge
  admission/storage. So this pass does not close c_0 or the repo; it reduces
  closure to one exact compactness-and-record theorem and names the current
  escape routes for a vanishing-bill sequence.
---

# c_0 epsilon extraction direct proof pass

## 1. The object

For a retained same-fluid relay window, write

```math
R(W):=\int_W dR_N^+
\tag{CEE.1}
```

for the one-way unpaid relay record, and

```math
B(W):=
\int_W
\big(
dE_{N,h}^{Field}
+dA_{4B,N}
+dVisc_{N,h}
\big)
\tag{CEE.2}
```

for the three-window bill: neighboring-tower coherence, same-packet four-body
payment, and viscous defect payment.

The desired half-barrier gap is exactly

```math
B(W)\ge \varepsilon R(W)
\tag{CEE.3}
```

on retained normalized relay windows. In the recurrence coordinate this gives

```math
q\le {1\over2}-\varepsilon,
\qquad
c_0=2\varepsilon .
\tag{CEE.4}
```

So solving `c_0` now means proving that the best normalized bill/record ratio
is strictly positive:

```math
\varepsilon_*:=
\inf_{\substack{W\ \mathrm{retained}\\ R(W)=1}} B(W)>0.
\tag{CEE.5}
```

## 2. What the zero-bill kernel proves

The relay-record kernel proves the zero-level rigidity:

```math
B(W)=0
\quad\Longrightarrow\quad
R(W)=0
\tag{CEE.6}
```

inside the retained class, after quotienting common-mode affine/co-rotating
motion and routing runaway common-mode sectors to class exit.

Physically: if neighboring towers do not follow the relay, the Field bill sees
it; if they follow while scale is created, viscosity sees it; if the motion is
only common-mode, the four-body bill strips away the one-way ratchet. Zero bill
leaves recordless motion or exit, not positive relay record.

That proves nonattainment of the zero ratio. It does not prove a positive
infimum in an infinite-dimensional critical class.

## 3. Conditional epsilon extraction theorem

The exact missing theorem is:

```math
\boxed{
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}
}
\tag{CEE.7}
```

Statement. Let `W_j` be retained same-fluid relay windows with

```math
R(W_j)=1,
\qquad
B(W_j)\to0 .
\tag{CEE.8}
```

Then, after the legal packet symmetries, material-time recentering, and
critical rescaling, a subsequence converges to a retained same-fluid relay
profile `W_*` such that

```math
B(W_*)=0,
\qquad
R(W_*)\ge1 .
\tag{CEE.9}
```

If `(CEE.7)` holds, then `(CEE.3)` follows. Proof: if no positive epsilon
exists, choose `W_j` satisfying `(CEE.8)`. By `(CEE.7)` obtain a retained limit
with `(CEE.9)`. This contradicts the zero-bill kernel `(CEE.6)`. Therefore
`\varepsilon_*>0`, and `c_0=2\varepsilon_*`.

This is the whole extraction. It is compactness plus record passage.

## 4. Direct proof attempt and where it stops

The attempted proof of `(CEE.7)` has four gates.

### Gate 1: localized Field compactness

The neighboring-tower identity supplies the signed viscous defect term, but the
repo's own coherence note says the usable localized estimate still needs
`(TC.31)` together with a legal flux/cutoff bound `(TC.31a)`. Without that
bound, `dE_{N,h}^{Field}+dVisc` does not yet give compactness of the retained
tower differences on the selected windows.

The pressure part has a sharper current reading. The TC.20 pressure flux is
not an arbitrary collar current; it is generated by pairing
\(\delta_h\nabla^{k+1}p\) with \(\delta_hU_k\). Since pressure is closed by
incompressibility, the local pressure increment is a Calderon-Zygmund image of
one ordinary rung times one tower difference. Thus the free collar-atom model
is demoted. Gate 1 now reduces on the pressure side to

```math
\texttt{RetainedPressureIncrementCZTailAdmission.A}.
\tag{CEE.7a}
```

The remaining tail clause is now:

```math
\texttt{RemoteTowerDifferencePressureTailSummabilityOrRouteOut.A}.
\tag{CEE.7b}
```

So "the bills are the compactness" is conditional on the flux/cutoff theorem:
transport flux is removable, pressure-increment flux is absorbable only after
the exact CZ/tail admission, and the only surviving pressure tail must be remote
tower decoherence that is summable, absorbed, or routed out. This is not
installed from the paired identity alone.

### Gate 2: full-tower positive-record retention

The four-body direct attempt proves signed adjacent exchange identities. It
does not prove that every positive generated tower-record channel is retained
as a same-packet signed partner, strict loss, Q-activity, or legal residual.
That is exactly `FullTowerSignedTotalExchangeRetention.A`.

Thus `dA_{4B,N}\to0` does not yet force all positive record variation to vanish
or remain in the compact packet. A vanishing-bill sequence can still escape
through the unretained positive-total-variation channel unless `(FTR.13)` is
proved.

### Gate 3: no-loss passage at the tower-record level

The chapter-2 closedness note gives a useful finite-readout cone theorem and
routes the infinite-readout complement to Silver. It is not a general
tower-record passage theorem for `dR_N^+`. The epsilon extraction needs the
record itself to pass:

```math
R(W_j)=1
\quad\Longrightarrow\quad
R(W_*)\ge1 .
\tag{CEE.10}
```

Weak-star compactness of adjacent defect measures does not supply `(CEE.10)`.
The direction needed here is tight no-loss passage of the selected positive
record: the unit record in the approximating windows must not cancel, oscillate,
pinch into a post-readout time atom, or lose its selector/source address before
the limit is read.

### Gate 4: native same-parent record admission

The signed-height record-net note says the scalar record work is installed, but
native same-parent edge admission and scale-normalized storage are still open.
It gives the exact warning: positive scalar work does not identify which
same-fluid high packet, low coefficient/current, material interval, and
parent-announced charge coordinate carried the work before readout.

Therefore a unit record can pass as a scalar event while failing to pass as the
same retained relay record needed in `(CEE.10)`.

The lowered c_0-facing test is detector visibility before record readout:
every future-positive native work edge must either be visible to the parent
root/full-exchange detectors or its detector-silent component must already be
paid or routed out. In the notation of the Gate 4 direct attempt, this is

```math
\texttt{RecordMenuPressureActiveOrSilentService.A}
+
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}.
\tag{CEE.10a}
```

## 5. The current theorem boundary

The direct attempt does not close `c_0`. It proves the following strict
conditional theorem:

```math
\boxed{
\texttt{RelayRecordZeroBillKernel}
+
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}
\Longrightarrow
c_0=2\varepsilon_*>0 .
}
\tag{CEE.11}
```

The second input expands into the four concrete rows:

```math
\begin{array}{ll}
\text{localized Field flux/cutoff closure, including pressure-increment CZ tail admission} & \text{for compactness},\\
\text{full-tower signed-total exchange retention} & \text{for positive record retention},\\
\text{tight selected tower-record no-loss passage} & \text{for limit passage},\\
\text{native same-parent record admission/storage} & \text{for source address}.
\end{array}
\tag{CEE.12}
```

These rows are not decorative. They are exactly the ways a unit-record,
vanishing-bill sequence can avoid producing the zero-bill positive-record limit:
it can leak through flux/cutoff, lose the signed-total positive carrier, lose
the selected record through cancellation/pinch/delamination, or lose the
same-parent source address.

## 6. Physical reading

The physical reason for expecting `c_0>0` is still sharp: a same-fluid relay
cannot move danger rung-to-rung for free. Either neighboring towers fail to
follow, the Field bill appears; or they follow and smaller scale is created, so
viscosity appears; or the motion is common-mode, and four-body zero leaves no
ratchet for one-way record.

The mathematical reason this is not yet a proof is equally sharp: a minimizing
sequence can try to make each bill vanish while the record survives only as a
limit artifact. The proof must stop that artifact from detaching from the same
fluid packet, same tower, same parent source edge, and same material-time
window.

That stopping theorem is `(CEE.7)`. Proving it closes the current `c_0` wall.
Without it, the repo has a correct kernel and a correct extraction architecture,
not closure.
