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
  - ThetaRelayDetectorFaithfulnessOrAffineQuotientPayment.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-ns-fluid-field-object-corrected-ontology-lock-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-full-tower-positive-channel-projection-audit-20260706.md
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-reset-root-payment-frontier-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate2-root-payment-integration-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate2-signed-cycle-kernel-no-go-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate2-terminal-part-not-three-measure-ownership-no-go-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-theta-clock-retention-liouville-bridge-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-relay-rigidity-vs-theta-profile-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-parent-owned-positive-record-bill-currency-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-opus-radiodrome-source-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-failed-gate-minimal-theorem-20260706.md
completion_truth: >-
  Direct proof pass. The zero-bill record kernel gives the right rigidity
  statement, but it does not by itself yield c_0>0. The exact epsilon extraction
  is equivalent to a normalized compactness/record-passage theorem: every
  retained same-fluid relay sequence with dR_N^+=1 and total bill tending to
  zero must converge, modulo the legal symmetries/rescalings, to a retained
  same-fluid zero-bill profile with record still positive. If that theorem is
  installed, the kernel proves a positive epsilon and c_0=2 epsilon. Current
  checked sources still do not install it: the localized tower closure / Gate 1
  flux-collaring branch has now been discharged on retained same-fluid relay
  windows by the pressure-increment Field-envelope chain, but full-tower
  signed-total exchange retention is explicitly open; the record/reset
  root-payment frontier gives the right pre-readout producer shape for Gate 2
  but leaves that producer open, and the full-tower positive-channel projection
  audit sharpens the uncovered channel to the scale-normalized full material
  strain/coefficient/commutator clock / signed smooth same-packet
  commutator-coercivity line, while the zero-payment relay audit shows that the
  qualitative all-zero relay kernel does not see positive Theta_N service unless
  detector faithfulness/root-full-exchange visibility or affine-quotient payment
  is proved,
  and the signed-cycle kernel no-go refutes the direct implication from signed
  four-body cancellation to positive-record retention;
  chapter-2 closedness is finite-readout/conditional rather than tight no-loss
  passage of the selected positive record; and signed-height record-net work
  admission still lacks native same-parent edge admission/storage; and the
  parent-owned positive-record bill-currency reduction shows that all three
  record escapes disappear if the pre-readout native menu, detector
  faithfulness, exact-projector admission, and B-currency storage package is
  proved. That package is explicitly open in the allowed sources. So this pass
  does not close c_0 or the repo; it reduces closure to one exact
  compactness-and-record theorem and names the current escape routes for a
  vanishing-bill sequence. The first failed gate is now Gate 2.
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

The remote-tail dichotomy proves the absorption branch for sources inside an
enlarged retained Field envelope. The remaining custody theorem

```math
\texttt{RetainedFieldEnvelopeExhaustsPressureIncrementSource.A}.
\tag{CEE.7c}
```

is now proved by terminal Part / Field custody: an outside-envelope
pressure-increment source needed by the selected readout is either Field-visible
after neighboring inclusion, or the pressure-viscosity carrier is not retained
with the terminal readout control needed by the witness.

Thus Gate 1 is installed on retained same-fluid relay windows:

```math
\texttt{RetainedRelayFluxCutoffClosure.A}.
\tag{CEE.7d}
```

Transport flux is removed by the material cutoff, viscous collars are absorbed
or killed by large retained windows, local pressure increments are absorbed by
Field/viscous currency, and nonlocal pressure-increment sources are either
enveloped or route-out.

### Gate 2: full-tower positive-record retention

The four-body direct attempt proves signed adjacent exchange identities. It
does not prove that every positive generated tower-record channel is retained
as a same-packet signed partner, strict loss, Q-activity, or legal residual.
That is exactly `FullTowerSignedTotalExchangeRetention.A`.

Thus `dA_{4B,N}\to0` does not yet force all positive record variation to vanish
or remain in the compact packet. A vanishing-bill sequence can still escape
through the unretained positive-total-variation channel unless `(FTR.13)` is
proved.

The direct implication from signed cancellation to positive retention is now
checked false at the finite algebraic level. A signed two-leg exchange
\(j=(M,-M)\) has zero signed sum but positive total record
\([M]_+ + [-(-M)]_+ = 2M\). Therefore Gate 2 must prove strict positivity on
the signed-cycle kernel:

```math
j\in\ker(\text{signed exchange}),\quad R^+(j)>0
\Longrightarrow
dA_{Q,N}(j)+dD_S(j)+dD_C(j)+dD_G(j)+dR_{4B,N}(j)>0 .
\tag{CEE.9aa}
```

After-the-fact retained compactness is a consumer only after the
positive/negative/current packet has already been produced.

The retained-window hypothesis does not remove this gap. Terminal `Part` means
that the pressure-viscosity carrier law is retained with the terminal
tower/readout control needed by the witness. Gate 2 needs a stricter
pre-readout object: the positive carrier, negative partner, and signed current
for the same selected positive record channel. The terminal-Part no-go note
checks that these are not the same condition.

The record/reset root-payment input gives the right possible producer for this
missing pawl, but it is not yet the proof. The checked relation is:

```math
\begin{aligned}
&\texttt{OriginalHistoryRecordResetRootPayment.A}\\
&+\texttt{FullTowerPositiveChannelRootProjection.A}\\
&\Longrightarrow
\texttt{StrictSamePacketCycleExchangeCoercivity.A}\\
&\Longrightarrow
\texttt{Gate2.FullTowerPositiveRecordRetention}.
\end{aligned}
\tag{CEE.9a}
```

The first clause is still open in the record/reset frontier, and the second
clause is the unproved covering map from every full-tower positive channel in
`(FTR.10)` to that pre-readout root-payment dialect, strict payment, or legal
residual. Therefore the Opus/root-payment input sharpens Gate 2; it does not
discharge it.

The theta-clock bridge sharpens the second clause further. The unowned
full-tower positive channel is the scale-normalized material
strain/coefficient/pressure-service/commutator clock \(\Theta_N\), together
with the same-packet interface defects needed to carry that clock through the
four-body packet. The checked direct smooth calculation gives a BKM-type
growth law, not a payment law:

```math
d[\log(1+E_N)]_+
\le
C\,\Theta_N\,d\sigma+dR_N^0 .
\tag{CEE.9a1}
```

So Gate 2 now has an exact fork:

```math
\int\Theta_N<\infty
\quad\Longrightarrow\quad
\text{the full material clock is paid and the positive channel can be retained,}
\tag{CEE.9a2}
```

or else the retained ratio-one heat-scale branch must produce a certified
surplus-zero \(\Theta_N\) profile with positive normalized clock service and
vanishing same-packet surplus payers. Current sources do not prove the
certificate-flow invariance or zero-loss tower rigidity needed to exclude that
profile. Thus the lower Gate 2 producer is:

```math
\texttt{SignedSmoothSamePacketCommutatorCoercivity.A}
+
\texttt{SamePacketInterfaceDefectSummabilityOrStrictLoss.A}
\tag{CEE.9a3}
```

or equivalently the route-b profile theorem:

```math
\texttt{CertifiedSurplusZeroThetaProfileRigidity.A}.
\tag{CEE.9a4}
```

The Opus radiodrome handoff is current only in this reduced sense: it gives the
right coordinate for the marginal bad sequence and identifies the strict
rigidity as self-similar difference-operator coercivity, with \(c_0=2\varepsilon\).
It does not install that coercivity. The older `GOAL-item6` terminus language
that used a proved Gate2 pawl is superseded by the item2 regrade withdrawing the
reversible temporal pawl, so this Gate2 fork remains the active boundary.

The stronger local reduction is now named as

```math
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{CEE.9b}
```

It says that the positive record has a preannounced same-parent native work
menu, detector faithfulness/root-full-exchange visibility or silent-service
payment before readout, exact-projector chart admission, and storage in
\(B=dE^{Field}+dA_{4B}+dVisc\) currency. If `(CEE.9b)' holds, then a normalized
sequence with \(R(W_j)=1\) and \(B(W_j)\to0\) cannot exist, so the normalized
passage theorem holds in the stronger coercive form \(B\gtrsim R\). The allowed
sources prove the native-coordinate/admission identity at finite truncation,
but leave detector faithfulness, exact-projector admission, and B-currency
storage open.

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
