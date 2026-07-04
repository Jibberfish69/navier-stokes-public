---
theorem_id: ns-unified-physical-roof-control-synthesis-20260703
status: control-synthesis-installed
created: 2026-07-03
problem: navier-stokes
route: repo-control-unified-physical-roof
target_object: SignedCriticalHeightSignPersistenceOrPeakBound.A
role: theorem-targeting authority grammar and synthesis roof
source_refs:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-packet.yaml
  - problems/navier-stokes/review-verdict.yaml
  - problems/navier-stokes/release-decision.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-summation-type-custody-audit-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-noncircular-same-parent-coupled-storage-proof-pressure-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-scalar-spike-model-obstruction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-same-fluid-charge-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-thin-record-upcrossing-production-obstruction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-positive-production-witness-cover-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-witness-cover-active-density-source-wall-unification-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-terminal-anti-atom-reserve-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-anti-atom-signed-height-loop-boundary-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-extremal-two-branch-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-record-return-balance-law-sharpener-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-critical-reset-carleson-sharpener-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-physical-payment-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admitted-critical-no-arbitrage-compactness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-edge-no-detachment-producer-topology-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-radon-nikodym-tightness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-polarity-same-face-no-cancellation-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-record-edge-selector-menu-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-edge-selector-modulus-same-packet-gate-reduction-20260704.md
completion_truth: >-
  This artifact installs a single control synthesis for the Navier-Stokes repo. It
  gives theorem attempts one physical roof before target selection, proof writing,
  audit, PDF work, or automation. It is a local theorem-control artifact. It is not
  a proof of Navier-Stokes global regularity.
---

# NS unified physical roof control synthesis

## 1. Root physical story

There is one original smooth Navier-Stokes datum and one same-fluid evolution.
Every useful theorem surface is a disciplined reading of that same evolution:
velocity, pressure, viscosity, incompressibility, material transport, critical
height, packet records, CM witness faces, selected readouts, and terminal
continuation criteria.

The root question is whether a finite-time obstruction can arise from that same
original evolution while preserving the Navier-Stokes participation law. Every
subproblem is a lens on that same question.

The repo therefore has one physical roof:

\[
\text{original datum} \longrightarrow
\text{same-fluid material history} \longrightarrow
\text{critical-height / CM witness readout} \longrightarrow
\text{continuation or admissible exit classification}.
\]

The roof governs all theorem writing. A theorem attempt starts by naming which
part of this physical chain it controls.

## 2. Current live Gold hinge

The current Gold live object is the signed critical height

\[
H(t)=\mathcal H_{1/2}(t)={1\over 2}\|\Lambda^{1/2}u(t)\|_2^2.
\]

The signed equation is

\[
{dH\over dt}=P(t)-\nu D(t),
\qquad
P(t)= -\langle \Lambda^{1/2}\mathbb P(u\cdot\nabla u),\Lambda^{1/2}u\rangle,
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2.
\]

The active theorem target is

\[
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}.
\]

The theorem-grade burden is:

1. prove that a same-fluid packet can keep the signed rate positive only by paying
   a visible physical cost; or
2. prove peak-height control when the signed rate changes sign.

A valid Gold theorem attempt must act on this signed object or supply an explicit
bridge into it.

## 3. Program topology under the roof

### Gold forward program

Gold aims at positive continuation control. Its current primitive is the signed
critical-height equation above. Selected positive variation, post-readout
positive bookkeeping, TFE2748B critical-capacity language, same-parent storage,
atom ledgers, and source-reserve terminology are support coordinates until they
prove the signed critical-height sign-persistence or peak-height theorem.

No clipping operation is needed to state the Gold method. The only lawful use of
positive notation here is after a signed record interval has already been fixed:
\(P_+\) names the positive part of the signed production on that event, not a new
primitive proof engine.

Gold closure standard:

\[
\sup_{t<T}H(t)<\infty
\]

or a rigorously bridged higher continuation norm from the same original datum.

### Silver CM contrapositive program

Silver starts from the installed CM membership / class-exit grammar. It tracks
whether a proposed terminal obstruction remains a lawful same-solution object,
then localizes the failure into typed Pack, Part, or Field witness structure.
Silver’s governing primitive is the class-exit engine, not a Gold source estimate.

Silver closure standard: every admitted finite terminal obstruction enters the
CM test and resolves into continuation, admissibility failure, or a concrete
Part/Field failure supporting class exit.

### Source-wall supplier program

Source-wall work supplies Gold or Silver only through typed bridges. It includes
TFE, source reserve, full-exchange, active-transit, parent critical reserve,
annular flux, affine Schur, TPS/SG.4, Hodge/BMO, and related supplier surfaces.

Supplier closure standard: a supplier theorem names the target object it feeds
and proves the exact bridge into Gold signed height or Silver class-exit grammar.

### Readout, export, and manuscript program

PDFs, submission bundles, review surfaces, release decisions, theorem packets,
frontier summaries, viewer states, and generated dashboards are readout surfaces.
They may report authority already installed by live theorem surfaces. They do
not create theorem authority through formatting, freshness, or surface count.

### Runtime and automation program

Codex, MCP, goal loops, autocommit, compilers, viewers, and bridge queues are
execution infrastructure. Their success condition is mechanical: read, write,
compile, check, commit, or route. Mathematical success is earned only by the
resulting theorem surface satisfying the roof grammar.

## 4. Authority hierarchy

The authority order is:

1. direct live surfaces: `live-theorem-edge.yaml`, `source-frontier.yaml`,
   `theorem-packet.yaml`, `review-verdict.yaml`, `release-decision.yaml`;
2. current theorem-construction notes that cite and respect the direct live
   surfaces;
3. generated maps, dashboards, audits, and viewer states;
4. manuscript and PDF exports;
5. archived, legacy, or superseded attempts.

A lower surface can assist a higher surface. Proof authority flows downward only
from the live target grammar into packaging, never upward from packaging into
closure.

## 5. Proxy classification under the roof

The following statuses are installed for current NS control.

### Selected positive L1 / post-readout positive bookkeeping

Status: sufficient stress test and support coordinate.

A positive-part integral measures upward variation of a chosen readout. The
primitive physical object is the signed height. A positive-variation theorem
gains Gold force only by proving sign persistence, peak-height control, or an
explicit bridge into those statements.

### Child, atom, shell, and point-sample sums

Status: typed bookkeeping after the parent packet is named.

Allowed readings:

- continuum parent integral;
- finite-overlap quadrature;
- layer-cake representation;
- Hardy atomic norm;
- simple-measure approximation to a parent transport coupling;
- Littlewood-Paley tail bookkeeping;
- algebraic signed-channel identity.

A sum gains physical force only after the same parent measure or same parent
transport coupling has been constructed.

### TFE2748B / coupled same-parent storage

Status: support route and sufficient mechanism.

The coupled storage loop has real content only when it proves a strict
same-parent coupled inequality with absorption:

\[
\mathcal F_P\le -d\mathcal M_P+K_P\mathcal F_P+d\Theta_P^0+dPaid_P,
\qquad
\rho(K_P)<1.
\]

This route feeds Gold only by proving the signed-height sign-persistence or
peak-height theorem, or by giving a direct continuation bridge from the same
original datum.

### Affine Schur, pressure-Hodge, TPS/SG.4, and downstream branch work

Status: local support unless explicitly promoted through the roof.

These surfaces can supply estimates, coordinates, countertests, or branch-local
classification. They become main theorem work only when their propagated object
is the active roof object for the selected proof mode.

## 6. The theorem-attempt entry card

Every new NS theorem attempt must begin with this card.

```yaml
physical_roof: original smooth datum -> same-fluid NS material history -> critical-height or CM witness readout -> continuation or exit classification
proof_mode: gold_forward | silver_cm_contrapositive | source_wall_supplier | readout_export | runtime_repair
target_object: exact theorem label or burden
propagated_quantity: exact scalar, vector, packet, carrier, witness, or storage object
primitive_equation_or_structure: signed NS height equation, CM membership grammar, parent packet law, transport coupling, etc.
support_surfaces: repo-relative paths used only as support
closure_standard: exact inequality, bridge, classification, or continuation criterion
proxy_risk: selected L1, child count, atom count, stale dashboard, manuscript packaging, circular storage loop, or runtime success
result_class: proved | failed | strict_reduction | support_only | mechanical_only
next_hinge: one exact mathematical work unit
```

The entry card is the send gate. A theorem note without this card lacks target
custody.

## 7. Judgment rule for theorem work

A theorem attempt advances the repo only when it does one of these:

1. proves the active target object;
2. fails the target object with an exact obstruction;
3. strictly reduces the target object to a sharper theorem;
4. proves a bridge from a support surface into the active target object;
5. repairs a runtime blocker that directly prevents one of the previous four
   operations.

All other activity is classified as support, readout, packaging, or mechanical
execution.

## 8. Current synthesis verdict

The repo has many real theorem surfaces and many real support reductions. The
current controlling story is still singular:

A finite-time Navier-Stokes obstruction would have to manifest through the same
original fluid history. Gold now asks whether the signed critical height can form
unbounded peaks without paying same-fluid physical cost. Silver asks whether any
admitted obstruction remains a lawful CM member or exits through a typed witness
failure. Source-wall work is valuable exactly when it feeds one of those two
programs through a named bridge.

The immediate theorem direction under this roof is:

\[
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}
\]

with the first live subproblem:

\[
\text{scale-aware same-fluid peak-thickness / sign-cost theorem for } H(t).
\]

The first strict reduction under that subproblem is now installed in
`mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md`: if every
record upcrossing of \(H(t)\) either has scale-aware time thickness or pays a
finite-budget same-fluid charge, then \(\sup_{t<T}H(t)<\infty\). The remaining
PDE burden is to derive that thickness-or-charge criterion from the original
Navier-Stokes packet.

The first charge audit is installed in
`mpp-forward-gold-record-upcrossing-same-fluid-charge-audit-20260703.md`. It
finds one conditional branch-local charge, the high-weight tube escape charge,
and three incomplete charge candidates: affine Schur residence/thickness,
Schur-thin nonretained payment, and superheat acceleration/storage. The remaining
noncircular theorem is `RecordUpcrossingSameFluidCharge.A`: every thin signed
critical-height record upcrossing must localize into one of those finite-budget
same-fluid charges.

The direct scalar test
`mpp-forward-gold-thin-record-upcrossing-production-obstruction-20260703.md`
adds the first forced lower edge: a record upcrossing from \(\lambda\) to
\(2\lambda\) forces \(\int D(t)\,dt\gtrsim\lambda^{1/2}\) on that upcrossing.
This is same-fluid critical service, but not an original-data finite budget. So
the active proof burden is the event-local conversion from forced critical
service into a finite same-fluid charge.

The scalar obstruction
`mpp-forward-gold-signed-height-scalar-spike-model-obstruction-20260703.md`
proves the corresponding no-go theorem for scalar methods: there are scalar
functions \(H,P,D\) satisfying the signed-height equation, the critical product
bound, and finite \(L^2_tH\), while \(H\) has unbounded record peaks. The proof
must therefore use the discarded same-fluid spatial packet structure: parent
source admission, pressure/transport geometry, viscosity, incompressibility, and
a finite branch charge or strict storage law.

The branch-exhaustion reduction is installed in
`mpp-forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703.md`.
It consolidates the live branches into
`RecordLocalCriticalServiceChargeExhaustion.A`: every thin signed-height record
upcrossing must land nonanticipatorily in high-weight reset, affine Schur,
superheat residence/acceleration, or another finite same-fluid charge with
original-data total budget. This is now the pure form of the remaining Gold
work under the physical roof.

The next reduction is installed in
`mpp-forward-gold-record-local-positive-production-witness-cover-reduction-20260703.md`.
It sharpens the proof method: the route must localize the positive production
\(P_+\) that raises \(H(t)\), not only the aggregate critical service \(D\). The
open producer is `RecordLocalPositiveProductionWitnessCover.A`, a
nonanticipatory parent-known witness cover feeding the branch charges above.

The source-wall unification is installed in
`mpp-forward-gold-record-witness-cover-active-density-source-wall-unification-20260703.md`.
It identifies that witness cover as the signed-height record-local projection of
the parent-announced active-density/full-exchange source wall. Thus the old
TFE2748B storage work and the new signed-height record work are one physical
story: original same-fluid packet, parent-known source before any post-readout
positive bookkeeping, record-local signed production witnesses, finite branch
charges, peak control for \(H(t)\).

The active-density proof pass is installed in
`mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md`.
It sharpens that story at the first nonconsumer arrow: the actual signed-height
record-positive production trace must be shown to be parent-known before the
record is counted, and that source must carry noncircular strict same-parent
storage. Storage without trace admission budgets a source measure that may not
be the record production; trace admission without storage localizes the record
production without an original-data finite budget.

The no-clipping correction sharpens this once more. A record upcrossing from
\(\lambda\) to \(2\lambda\) already gives

\[
\int_a^bP(t)\,dt
=
H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge\lambda .
\]

Thus the preferred producer is record-net signed work admission, not pointwise
\(P_+dt\) admission. The older \(P_+dt\) form remains a sufficient stronger test,
but the pure physical theorem is to identify the signed nonlinear work that
raised \(H\) inside the parent-announced active source and then prove strict
same-parent storage for that source.

The record-net work proof pass is installed in
`mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md`.
It proves `(RNW.2)' from the signed-height equation and reduces the remaining
producer to native same-parent admission of the signed record work plus
scale-normalized no-self-feeding storage. It also records why the current repo
does not close that producer: a global signed work scalar is not yet a
parent-native source face with finite original-data storage. The admission-row
pressure test now sharpens that boundary: scalar record work proves positivity
only. LP/Bony localization gives legal coordinates and terminal adjoint response
gives covector support, but neither proves that the record work is preannounced
on the same native high-packet/low-coefficient edge before readout.

The newest strict reduction under that pressure test is
`RecordNativeWorkMenuPreannouncement.A'. Its physical content is: build the whole
menu of native work edges from the parent history before any record is read, with
each edge carrying a retained high packet, a low strain/current coefficient from
the same velocity field, a material time window, and a parent charge coordinate.
Then prove a parent-known positive-selection storage law over that menu. This
would prevent the record from hiding its positive excess in an unstored legal
edge coordinate. The current repo has coordinate and covector support for this
menu, but not the positive-selection reserve itself.

The current proof pass separates those two halves. The preannounced menu and
record admission follow from the before-readout LP/Bony/native work
decomposition of the signed production \(P(t)\). The remaining producer is
`RecordNativeWorkMenuPositiveSelectionStorage.A': a finite original-data
Carleson/BV/storage reserve for the positive net selections drawn from that menu
over all future disjoint signed-height records. Existing TFE root-generator,
log-carrier, critical-source, and full-exchange storage rows are support after
their selected ledgers exist; they do not yet prove this whole-menu reserve.

The next lower bridge is `RecordMenuCriticalFaceAdmission.A'. It asks that every
future-positive native work edge from the signed-height record menu enter, before
record readout, one of the same parent faces already isolated in TFE: positive
parent-baseline log/root capacity, zero-baseline endpoint-seed/native-birth
capacity, or retained active full-exchange motion. Coupled with noncircular
same-parent storage for those faces, this would imply
`RecordNativeWorkMenuPositiveSelectionStorage.A'. The installed TFE trichotomy is
for selected critical-capacity coordinates after root projection; the missing
bridge is the admission of arbitrary signed-height record-menu edges into that
trichotomy.

The sharper installed lower theorem is
`RecordMenuRootProjectionFaithfulness.A'. Its physical content is the entrance
condition underneath the face split: the same-fluid native work edge must be
faithfully visible in parent root or active full-exchange currency before the
record selector reads it as positive. Without that visibility bridge, a real
high-packet/low-strain work event can remain outside the parent pressure-Hodge
root detector, so the TFE faces have no lawful object to store.

The current sharper reduction splits that visibility theorem into two physical
jobs. First, `RecordMenuPressureActiveOrSilentService.A' says a frozen retained
high-packet/low-strain work edge is either pressure-active with positive angle
from the joint null cone of the parent root and active full-exchange detectors,
or its pressure-Hodge-silent transverse part is already paid by material service
before the record can count it. Second, `ExactProjectorDyadicParametrix.A' must
lift that frozen statement through the full variable-coefficient
pressure-Hodge/root projector by giving the shellwise principal-symbol
realization and order-minus-one remainder. Its physical license is retained
packet chart control: the same high packet remains in a material chart with
uniform metric symbol bounds, and any boundary/collar/cutoff leakage is already
legal, stopped, or material-service paid. The 2026-07-03 chart-license audit
names this as `RetainedRecordEdgeExactProjectorChartLicense.A' and keeps it
open for arbitrary Gold record-menu edges. Its metric half is no longer vague:
ellipticity has finite same-carrier strain support, while the open spatial
symbol input is `RetainedRecordEdgeC11MetricTowerOrExit.A'. Its projector-escape
half is now separated too: base cutoff/collar/frame leakage is supported, while
the open higher-service input is `RetainedRecordEdgeHigherProjectorServiceOrExit.A'
for pressure/RHS, annular-stress, higher-collar, finite-depth tower, and
moving-chart exact-projector residues. The higher-service input is no longer a
detached projector problem: it is the same stopped primitive PLS
graph-driver/strict half-barrier obstruction after a record-edge admission
bridge. That admission bridge is now lower: existing Hodge/material-service
sources give same-packet pressure/strain identity, while the open lower object is
`RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A`, a coupled stopped
selector-cone admission that supplies both polar sign and pre-readout timing.
That coupled object now splits into `RecordMenuPressureActiveOrSilentService.A`,
`RetainedRecordEdgeCommonSelectorRefinementNoLoss.A`, and
`RetainedRecordEdgePrimitiveChannelCompatibility.A`; stopped selector cone
aperture is consumed support after common-selector refinement.
The primitive-channel compatibility face is now sharpened in
`mpp-forward-gold-retained-record-edge-selector-primitive-channel-compatibility-reduction-20260704.md`:
same-packet pressure/strain identity and parent-announced selector capture do
not yet prove that the exact-projector residue enters the selector-announced
primitive signed channel. The lower open theorem is
`RetainedRecordEdgeSelectorProjectorChannelAlignment.A`, or else a paid
pre-readout mismatch route.
The angle-lock obstruction note sharpens this again: frozen pressure-Hodge
visibility and stopped-core identity do not force positivity in the
selector-announced primitive channel. The smaller physical input is
`RetainedRecordEdgeProjectorSelectorAngleLockOrPaidRotation.A`: either the
projector active functional and selector channel have a uniform pre-readout
angle lock on the surviving residue, or the rotation away from that cone is
paid as same-packet service, legal, stop, chart/collar transfer, or exit.
The paid-rotation branch is now split by
`mpp-forward-gold-retained-record-edge-projector-selector-paid-rotation-split-20260704.md`:
near-silent mismatch is the detector-silent pre-readout reserve, while genuine
selector/channel motion is selector-stratum/order-lock variation payable only
through parent-announced stopped selection plus stopped full-exchange or
selected-density first-ratio gain. Local silent routing and selector BV support
remain support until those record-level producers are proved for the same edge.
The producer-collapse note
`mpp-forward-gold-retained-record-edge-paid-rotation-producer-collapse-20260704.md`
then removes the duplicate reading: after parent-announced selector capture, both
paid-rotation suppliers are consumers of
`CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A`.
This is the original-history selected-critical tent/scale-memory bound that
inserts the missing weight before the future selected tail; without it the same
half-tail defeats silent-service reserve and selector-motion payment alike.
The root-projection producer classification is now installed in
`mpp-forward-gold-record-menu-root-projection-faithfulness-producer-classification-20260704.md`.
It puts this visibility wall under one physical roof:
`RecordMenuRootProjectionFaithfulness.A` is a same-edge entrance theorem, not a
detector lemma or a clipping/counting theorem. For one retained future-positive
signed-height edge before readout, the nonduplicate producer classes are
parent-announced selector capture, same-packet \(C^{1,1}\) metric tower-or-exit
for the exact projector, and pre-entrance original-history selected-critical
fresh-source/scale-memory payment for detector-silent service and
projector/selector rotation. The selected-critical payment noncircularity audit
`mpp-forward-gold-root-projection-selected-critical-payment-noncircularity-audit-20260704.md`
blocks the circular use of record-admitted depletion/reset/storage as this
input: those theorems consume root projection after entrance. Active/full-exchange
coupled storage is downstream after entrance; it is not evidence that the edge
entered parent root/full-exchange currency.
The pre-entrance scale-memory producer collapse is now installed in
`mpp-forward-gold-root-projection-pre-entrance-scale-memory-producer-collapse-20260704.md`.
It sharpens that third input: parent-known scale-memory representation and
maximal witness sparse packing are conditional support, while the remaining
noncircular producer is `OriginalScaleMemoryGeneratorEnergyBound.A`,
equivalently `OriginalScaleMemoryStorageCoercivity.A` /
`SelectedGeneratorStorageCoercivity.A` / `PositiveCriticalTransferBound.A`.
Natural scale-memory storage supplies a signed balance, not the selected
generator square coercivity.
The selected-generator physical payment synthesis
`mpp-forward-gold-selected-generator-physical-payment-synthesis-20260704.md`
now pins that producer to one physical packet: the same original material
history must pay first retained upward critical-scale births through
no-free-upcascade/native-birth accretive payment before root projection reads
the future-positive edge.
The fresh-source tent extremal reduction makes the physical shape explicit:
after inherited parent pieces and local consumers are removed, the bad object is
one original history with finite raw fresh mass but infinite selected-critical
fresh action. It must be repeated same-core reuse or shrinking selected-core
escape; the corresponding open branch theorems are
`RepeatedCorePositiveVariationRootBound.A` and
`ScaleInvariantSelectedCapacityNoEscape.A`.
The repeated-core sharpener opens the first branch: on one stopped material
ancestry, positive selected reuse splits into record growth plus negative return.
Bounded record height alone is false because a scalar record can oscillate
forever; the branch now requires parent-predictable record geometry plus
`SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A`.
The shrinking-core sharpener opens the second branch: after no-reset inherited
children are returned to repeated-core record/return, genuinely fresh selected
children must pay `CriticalWeightedParentChildResetCarleson.A` from
original-history log-scale derivative, collar/turnstile, exchange, or
covector/frame motion before child readout. Raw capacity and raw reset distance
still fail the half-tail.
The pressure-active/silent face now reduces to
`RecordMenuPressureActiveQuotientAngleGap.A` plus
`RecordMenuDetectorSilentServicePreReadoutReserve.A`: raw detector faithfulness
is false on transverse trace-free modes, and the unpaid PDE content is a
pre-readout material-service reserve for detector-silent work. The primitive
half-tail audit shows that local silent-source/complete-frame routing is only
support; the reserve requires an independent original-history primitive PLS
strict half-barrier / bounded-below Lyapunov / weighted laminar reserve theorem,
and a proof through `RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A` is
circular because that admission already assumes the pressure-active-or-silent
face. The quotient-angle collar audit makes the split robust: exact nonzero
detector response is not enough for pressure-active storage, so a fixed
detector-near-silent collar belongs to the service-paid side before the quotient
angle becomes finite-dimensional bookkeeping.
The primitive full-action synthesis now collapses the independent reserve named
there: robust detector reserve, primitive PLS no-free-upcrossing, strict
half-barrier, endpoint entropy, native birth, and good-lambda tail are all
coordinates of one surviving scale-native physical burden. After pressure,
selector, complete-frame, bounded-Riesz, return/reset/exchange, legal, stop, and
subheat consumers are removed, the open producer is
`SameParentCriticalDepletionNoZeno.A`: construct a parent-known critical carrier
from the original coupled packet before selected child readout, prove first
scale-native births lower into it, prove strict depletion/good-lambda margin,
and prove terminal no-Zeno/no-atom or Hardy thickness in the same carrier.
The signed-height custody correction is now installed in
`mpp-forward-gold-signed-height-record-admitted-scale-native-depletion-bridge-20260704.md`:
that scale-native depletion package has Gold force only after the record-net
signed work is admitted into the same parent critical carrier before readout.
Freestanding selected-birth depletion remains support; record-admitted
depletion supplies the finite charge branch in the signed-height
record-upcrossing criterion.
The record-admitted critical no-arbitrage compactness reduction is now installed
in
`mpp-forward-gold-record-admitted-critical-no-arbitrage-compactness-reduction-20260704.md`.
It sharpens the proof method for that carrier: compactness/zero-cost rigidity
must retain the record-admission row. A freestanding critical carrier or
full-exchange storage limit remains support if the signed-height record work can
disappear from the limiting carrier.
The record-admission same-edge closed-graph reduction is now installed in
`mpp-forward-gold-record-admission-same-edge-closed-graph-reduction-20260704.md`.
It makes that compactness burden physical: the limiting carrier must preserve the
same retained record edge through parent selector capture, retained
exact-projector chart/license, pressure-active-or-silent service split, and
root/full-exchange face address. Current sources prove scalar record work, native
work coordinates, and downstream storage support, but not this same-edge closed
graph.
The no-detachment modulus reduction is now installed in
`mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md`.
It makes the closed graph quantitative: selector drift, retained
chart/projector drift, detector-angle or selector-channel rotation, and
root/full-exchange face-address drift must all be charged before readout.
Existing local support identifies those coordinates, but no current source
proves the uniform same-edge no-detachment modulus from arbitrary original data.
The same-edge no-detachment producer topology synthesis is now installed in
`mpp-forward-gold-same-edge-no-detachment-producer-topology-synthesis-20260704.md`.
It separates that modulus into nonduplicate physical jobs: parent-announced
selector address, retained exact-projector chart license, original-history
selected-critical payment, and record-admitted face persistence. It blocks the
false collapse where selected-critical scale memory is made to supply parent
address/chart license, or where address/chart support is treated as
selected-critical half-tail payment.
The record-face Radon-Nikodym tightness reduction is now installed in
`mpp-forward-gold-record-face-radon-nikodym-tightness-reduction-20260704.md`.
It sharpens record-admitted face persistence: weak compactness of a
full-exchange/root carrier does not preserve the positive signed record face
unless that face is uniformly absolutely continuous or thick inside the same
admitted carrier, and unless the positive polarity cone is closed under the
same-edge no-detachment topology. The concrete obstruction is a prelimit
absolutely-continuous face concentrating to a singular atom against the limiting
carrier.
The record-face local thickness-charge modulus reduction is now installed in
`mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md`.
It sharpens this again: the signed-height record-upcrossing criterion is a
whole-record scalar reduction, while compactness needs a local same-face
modulus. Every positive subface of the record must either have admitted carrier
thickness or pay same-face charge before readout. Terminal anti-atom reserve is
support unless it is localized to this subface modulus; whole-record charge can
coexist with singular concentration on an unpaid subface.
The record-face polarity same-face no-cancellation reduction is now installed in
`mpp-forward-gold-record-face-polarity-same-face-no-cancellation-reduction-20260704.md`.
It sharpens the sign half of face persistence: a positive record face can be
locally thick in the admitted carrier and still vanish from the signed limit by
cancellation with an opposite same-face return. The proof must either keep the
positive marked face or charge the cancelling partner as same-face negative
return, signed-partner saturation, endpoint/material-record return, legal, stop,
or exit before readout. Terminal anti-atom and negative-return language remain
support until localized to the exact positive subface whose sign was lost.
The reset-charge consolidation is now installed in
`mpp-forward-gold-record-admitted-critical-reset-charge-consolidation-20260704.md`.
It applies the same rule to the shrinking-core reset branch. A freestanding
`CriticalWeightedParentChildResetCarleson.A` theorem is support under the
signed-height roof unless the fresh reset edge is the parent-announced carrier of
record-net work before readout. The derivative-Cauchy reset estimate pays only
derivative-exact increments after record-menu/root/full-exchange visibility is
proved. The record-admitted reset form reduces to
`RecordMenuRootProjectionFaithfulness.A` plus
`RecordAdmittedActiveFullExchangeCoupledStorage.A`: pressure-active reset/menu
work needs a detector angle, while detector-silent work must be pre-readout
service-paid or routed back to record/return.
The common-selector face now reduces to
`RetainedRecordEdgeParentAnnouncedSelectorCapture.A` plus stopped-selector
variation/payment support: the arbitrary future-positive record edge must be
captured by a finite parent-known stopped score before positive readout.
The selector-capture finite-score scope audit is now installed in
`mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md`.
It blocks the false import of `StoppedSelectorFiniteScoreOrPaidDrift.A` as proof
of retained record-edge capture. The finite-score theorem pays selector/reset
motion after an order-locked retained chart exists; it does not prove that every
arbitrary future-positive record edge is already in a parent-known finite score
menu before readout. The missing selector producer is
`FiniteParentKnownRecordEdgeSelectorMenu.A`, or paid selector drift, tie gap,
order-lock partner deficit, collar/geometric loss, donor/reselection loss,
legal, stop, material-service, or exit for the uncaptured part.
The finite record-edge selector menu modulus reduction is now installed in
`mpp-forward-gold-finite-record-edge-selector-menu-modulus-reduction-20260704.md`.
It makes the physical selector burden explicit: before positive readout, the
same retained edge must be captured by a parent finite selector atlas through a
same-record label modulus, finite-complexity/no-moving-spike law, or paid
selector drift classification. Compact labels and finite stopped-score support
are not enough, because a future argmax can reselect the payer after the
positive work appears. The open producer is
`RecordEdgeSelectorLabelModulusOrPaidDrift.A`; it strictly reduces to
`FiniteParentKnownRecordEdgeSelectorMenu.A` and then, with
`StoppedSelectorFiniteScoreOrPaidDrift.A`, feeds
`RetainedRecordEdgeParentAnnouncedSelectorCapture.A`.
The record-edge selector modulus same-packet gate reduction is now installed in
`mpp-forward-gold-record-edge-selector-modulus-same-packet-gate-reduction-20260704.md`.
It decomposes the open producer into same-retained-edge physical gates. The pass
case is material/order-locked selector generation by the local velocity-pressure
finite jet plus transported heat-scale return, selector tie/drift charge, finite
endpoint jet temporal modulus, and same-edge order-lock partner payment. The
checked obstructions are a moving future argmax over labels and a channel-first
positive pulse whose full-packet partner cancels it. Both remain unpaid
same-packet defects until paid, stopped, made legal, or routed to exit.
The same-edge order-lock partner payment selected-density reduction is now
installed in
`mpp-forward-gold-same-edge-order-lock-partner-payment-selected-density-reduction-20260704.md`.
It keeps the same physical packet in view: the gap is
\(\Delta^{ol}=([n]_+-[h]_+)_+=\min\{[n]_+,[-b]_+\}\), so the selected edge looks
positive only because its negative full-packet partner was ignored. The gate is
paid by selected-density reverse-Holder/uniform-integrability/root reserve, or
by retained same-packet four-body overlap channel payment. The checked
obstruction is the terminal channel-first pulse \(n=a\tau^{-1}1_{(-\tau,0]}\),
\(b=-n\), \(h=0\), with finite raw \(L^1\) mass and no \(L^q\) terminal gain.
This is a strict reduction, not closure from original data.
The lower retained-edge faces are now consolidated in
`mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md`.
Selector capture, retained exact-projector chart license, and the
pressure-active/silent-service split must be proved for the same retained edge
before record readout. Separate support on those faces does not give
`RecordMenuRootProjectionFaithfulness.A`, because the record work could otherwise
be captured, charted, and detector-paid on different projections of the packet.
After that bridge, the record/return package
`StoppedPrimitivePLSSignedScalePotentialLift.A',
`StoppedPotentialRecordAverageBound.A', and
`StoppedNegativeScaleReturnCharge.A' as the nonlocal payment mechanism. WEP.2'
is now a wrapper around that licensed parametrix plus standard low-high \(S^0\)
commutator calculus.

The sharper reading is that algebraic localization is not the wall. LP/Bony and
pressure-Hodge decompositions can give legal work coordinates. The remaining
producer is `RecordNetWorkNativeEdgeSpend.A`: anchor the net signed record work
to the actual same-fluid high packet and low strain/current edge, then spend that
edge through scale-normalized same-parent storage.

The next reduction is now installed in
`mpp-forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703.md`.
It reads `RecordNetWorkNativeEdgeSpend.A' through the older TFE2748B
parent-meter machinery: after record work is admitted as a parent-adjoint
selected meter, raw atomization and same-parent current representation are
support, while the surviving source theorem is one-sided aligned-current/Fisher
domination for that normalized record meter. This makes the live producer
`RecordWorkParentAdjointAlignedCurrentDomination.A', still open from arbitrary
original data.

The entropy-flux split reduction is installed in
`mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md`.
It separates the aligned current physically: reversible pressure/Hodge/self-advection
is same-parent entropy flux and support, while the non-reversible selected-meter
motion must be paid by same-history capacity with strict Fisher/full-exchange
margin. The same note now back-substitutes that same-history capacity through
the current TFE2748B source chain: the record-level open producer is now
`RecordAdmittedActiveFullExchangeCoupledStorage.A'. Record parent-adjoint meter
admission and the record-local active-transit/full-exchange parent storage object
represented by TFE2748B.1393 and TFE2748B.1555 are rows of one same-parent
coupled inequality built from the original packet before readout. Raw atom
attachment, endpoint admission, bounded detector projection, retained
Duhamel-Hodge pullback, and reversible entropy flux are consumer/support faces
after that coupled object exists. The bounded proof pass against the current
TFE rows gives a checked obstruction: `(TFE2748B.1527)'--`(TFE2748B.1531)' and
`(TFE2748B.1541a)'--`(TFE2748B.1556)' supply lower storage rows, but they do not
construct the record-admission row from signed-height work before readout. The
coupled-storage loop audit still governs this lower target: its feedback matrix
must have spectral radius strictly below one, not a sequential
finite-excess/full-exchange chain that feeds itself.

The current deepest record-net reduction is
`mpp-forward-gold-record-net-work-terminal-anti-atom-reserve-reduction-20260703.md`.
It checks the no-upcrossing route against the TFE2748B flat quotient obstruction:
current representation and signed atom pairing alone can still carry positive
parallel surplus. The storage-compatible object is therefore not pure
no-upcrossing but `RecordTerminalAntiAtomReserve.A': the normalized record meter
must pay any retained positive terminal anti-atom through signed-partner
saturation, endpoint jump control, geometry/tower/material-record return, or the
small \(2^{-N}D_Ndt\) tail before the record is counted.

The noncircularity boundary is installed in
`mpp-forward-gold-terminal-anti-atom-signed-height-loop-boundary-20260703.md`.
The terminal anti-atom is a terminal readout of unpaid aligned current, not an
independent primitive producer for the signed-height theorem. It can feed Gold
only after the signed-height dynamics prove that every high record upcrossing
has scale-aware thickness or pays a finite same-fluid charge. Until then,
terminal anti-atom reserve is support/strict-reduction evidence under the signed
height roof.

## 9. Control consequence

The repo should judge future work from this roof before writing or accepting any
surface. A proposed theorem path must show its physical object, proof mode, and
bridge to the roof first. This gives one source of control for subproblems,
solution attempts, theorem notes, audits, manuscript edits, and automation.
