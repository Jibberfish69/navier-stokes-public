---
theorem_id: forward-gold-no-unpaid-upward-birth-minimal-first-birth-attempt-20260628
status: material-capacity-frame-reduces-to-critical-capacity-admission-packing-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material native reserve birth-spend
logical_landing_node: BoundedBelowSameMaterialServiceStorage.A
attacks_hinge:
  - NativeBirthChargePacking.A
  - ForwardNativeReserveBirthPaysFullPLS.A
  - SelectedCompressionRootReserve.A
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
  - PositiveCriticalTransferBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-to-native-reserve-birth-spend-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-packing-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-charge-packing-obstruction-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-raw-zoom-selector-native-birth-packing-live-edge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-physical-reformulation-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-spent-source-projection-nonreuse-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-affine-endpoint-threading-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-packet-return-bv-producer-test-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-endpoint-seed-absorption-proof-skeleton-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bellman-root-capacity-branch-collapse-and-shrinking-core-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-route-metric-bellman-capacity-pressure-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-finiteness-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
completion_truth: partial-not-mpp-closed
---

# No-unpaid upward-birth minimal first-birth attempt

The live producer is the native reserve birth-spend law: every retained selected
high-ratio birth must consume a parent-known original-history reserve atom once,
be carried as lower-band material, or pay rebase, reset, exchange, stop, or legal
tax.  After those paid branches are removed, the theorem must exclude the fourth
branch: selected-scale birth with no nonresettable original-history charge.

## 1. Alias collapse

The following labels are not independent live producers:

- selected-density Hilbert BMO / reverse Holder;
- parent-predictable fresh innovation Carleson;
- stopped full exchange root reserve;
- native birth charge packing;
- positive critical transfer / scale-native reserve;
- bounded-below same-material service storage.

They all ask for the same line in different coordinates:

\[
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{1}
\]

with \(\rho_{\iota(\gamma)}\) born from original history before the selected
descendant readout, and

\[
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{2}
\]

The hard point is not the name of the reserve.  The hard point is whether the
selected-scale atom has root-native size and bounded multiplicity without
importing the future selected clock.

## 2. Method pass

Proof program: forward Gold same-material participation, not CM class-exit.

Target object: the producer inside `NativeBirthChargePacking.A`, specifically
no unpaid high-ratio upward birth after all paid branches are removed.

Object role: target producer, with a formal countermodel used only to test the
current proof mechanism.

Logical skeleton: contradiction by minimal bad retained birth.

Mechanism: minimal first birth plus no-reuse/nonresettable-spend invariant.

Current failure mode: parent-relative freshness can restart after rebase, so a
birth can be first relative to each stopped child while not being first relative
to the original root packet.

## 3. Minimal first-birth attempt

Assume `(1)`--`(2)` fail after lower-band carry, entrance, legal loss, reset,
reselection, parent leverage, bounded original-packet Riesz projections, and
paid exchange defects have been removed.  Choose the first retained bad birth
\(\gamma_\ast\) in the stopped tree order.

Because the local source partition is already installed, \(\gamma_\ast\) cannot
be detached from the original packet.  It has a source-channel endpoint seed
\(M_{\gamma_\ast}\) coming from annular stress, Hodge/projector motion,
strain-frame compression, pressure-collar service, vis/rad loss, or finite
entrance.

The paid line in this attempt is local:

\[
\omega_{\gamma_\ast}
\lesssim
\int_{I_{\gamma_\ast}}
H_{\gamma_\ast}(t)\|M_{\gamma_\ast}(t)\|_2^2\,dt
+DER(\gamma_\ast)+R_{\rm legal}(\gamma_\ast)+Stop(\gamma_\ast).
\tag{3}
\]

This is the endpoint-seed admission line from the physical reformulation.  It
says a retained first selected birth must leave a selected-size endpoint seed.
It does not by itself prove root summability.

To close the proof, one would define a root-native tag
\(a(\gamma_\ast)\in\mathcal A_{orig}(P)\), put

\[
\rho_{a(\gamma_\ast)}
:=
\int_{I_{\gamma_\ast}}
H_{\gamma_\ast}(t)\|M_{\gamma_\ast}(t)\|_2^2\,dt
+DER(\gamma_\ast)+R_{\rm thread}(\gamma_\ast),
\tag{4}
\]

and then argue that any strict descendant using the same tag is reuse, carry, or
refund, while any strict descendant changing tags pays reset, reselection,
return, or exchange.  The desired invariant is:

\[
\gamma'\subsetneq\gamma,\quad a(\gamma')=a(\gamma)
\Longrightarrow
\gamma' \text{ is reuse/carry/refund-paid,}
\tag{5}
\]

and

\[
a(\gamma')\ne a(\gamma)
\Longrightarrow
\gamma' \text{ pays a root-visible rebase tax or is a genuinely new root atom.}
\tag{6}
\]

Equations `(5)`--`(6)` would turn the local seed line `(3)` into bounded
multiplicity and then into `(1)`--`(2)`.

## 4. Where the proof fails

The proof fails exactly at `(6)`.

The current formalism has parent-relative freshness.  A child can rebase the
stopped parent, project away what was spent below that parent, and then call a
new descendant endpoint seed fresh.  That makes the birth first relative to the
child, but not first relative to the original root packet.

This is the formal half-tail model of the failure.  Take a nested retained chain
\(\gamma_0\supset\gamma_1\supset\cdots\) with scales \(r_k\downarrow0\).  Let
the raw original-history endpoint cost satisfy

\[
\|M_{\gamma_k}\|_{\mathfrak H_{orig}}^2\simeq r_k,
\qquad
\sum_k r_k<\infty,
\tag{7}
\]

while the selected heat-scale weight satisfies

\[
H_{\gamma_k}\|M_{\gamma_k}\|_{\mathfrak H_{orig}}^2\simeq1.
\tag{8}
\]

Unweighted Bessel and local source attachment both survive `(7)`.  The selected
action diverges by `(8)`.  If every rebased child is allowed to create a new
parent-fresh tag with no root-visible rebase tax, the minimal first-birth proof
restarts at every scale and never reaches a contradiction.

This is not a Navier-Stokes counterexample.  It is a countermodel to the present
proof mechanism: source attachment plus local first-birth language does not
prove selected-scale root packing.

## 5. Exact paid and unproved lines

Paid line:

\[
\text{retained first selected birth}
\Rightarrow
\text{selected-size endpoint seed,}
\tag{9}
\]

in the local form `(3)`, after the paid branches have been removed.

Unproved line:

\[
\sum_{\gamma\subset P}
\int_{I_\gamma}H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt
\le
C_N(u_0)\mathcal R(P)
+R_{\rm legal}(P)+Stop(P)+StoppedReturnBV(P)+CriticalResetBV(P).
\tag{10}
\]

Equivalently, the missing discrete clause is:

\[
\gamma\mapsto a(\gamma)\in\mathcal A_{orig}(P),
\qquad
\omega_\gamma\le C_N\rho_{a(\gamma)}+R_{\rm paid}(\gamma),
\qquad
\#\{\gamma:a(\gamma)=a\}\le C_N,
\tag{11}
\]

where the tag \(a(\gamma)\) is root-relative and cannot be reset by changing the
stopped parent.

## 6. Sharper mechanism forced by the failure

The next non-aliased mechanism is not another Bellman or Carleson name.  It is a
root-relative spend law:

\[
d\mathfrak R_N^{root}
+d\mathfrak L_N
+c\,d\mathcal A_{\rm sel}^{birth}
\le
dR_N^{entr/legal}
+dR_N^{exchange/reset/return}
\tag{12}
\]

with \(\mathfrak R_N^{root}\ge0\), \(\mathfrak L_N\ge-C_N(u_0)\), and with
freshness measured against the original packet rather than the current rebased
parent.

In discrete form, every retained upward birth must do one of three things:

1. spend a previously unspent root endpoint tag;
2. reuse an old tag and therefore fall into carry/reuse/refund;
3. change tags and pay reset/reselection/return/exchange at selected scale.

The forbidden fourth branch is now precise:

\[
\text{new parent-fresh selected unit}
\quad+\quad
\text{old root ancestry}
\quad+\quad
\text{no selected-scale rebase tax}.
\tag{13}
\]

Proving that `(13)` cannot occur is smaller than the full clock and stronger
than source attachment.  Exhibiting a lawful original-packet configuration with
`(13)` would show that the native-reserve formalism still lacks a noncircular
producer.

## 7. Thomas-dialogue interrogation of the mechanism

Is `(13)` actually the live object?

Yes, but only after tightening the words.  "Old root ancestry" is too coarse.
A raw root ancestry label can contain infinitely many raw-orthogonal descendants
whose total raw mass is finite while selected action diverges.  The live object
is the selected-metric endpoint state, not a raw source label.

Did the rebase-tax line prove smoothness?

No.  It identified the only shape a proof must forbid:

\[
\text{parent-fresh in the local stopped metric}
\quad+\quad
\text{not fresh in the root selected endpoint metric}
\quad+\quad
\text{no return/reset/exchange charge.}
\tag{14}
\]

What does it mean physically?

The child is not creating new material from nothing.  It is reading the same
original pressure-viscosity-incompressibility packet through a changed
endpoint window.  If the endpoint window is the same, the event is reuse or
return.  If the endpoint window changes, the surrounding material frame,
collar, covector, turnstile, or exchange geometry moved.  If it is genuinely
new, it must be a fresh endpoint atom with a root Carleson bound.

Is this the full coupled packet or a scalar proxy?

The full packet is required.  A scalar root label or raw Hilbert atom loses the
scale weight.  The state must include the routed endpoint mass together with
the material frame/covector/turnstile/exchange derivatives that make changes of
that state visible in the original coupled law.

Is this already handled in the repo?

Only in pieces.  The checked surfaces show:

- spent-source projection pays same-chain raw reuse relative to a fresh selected
  root reserve;
- the endpoint reduction identifies the positive affine endpoint mass as the
  candidate selected-scale atom;
- original-packet return gives a weighted square return identity, not linear
  BV without selected admission;
- strict reset is recorded as needing critical weighted reset BV;
- endpoint-current compactness still stops at a nonzero current, so it needs
  the same positive critical transfer/native-reserve producer.

So the repo has the components, not the closed cocycle.

Did this create another alias?

It becomes an alias if "root ancestry" means a raw source bucket.  It becomes a
genuine mechanism only when the root tag is the selected-metric endpoint state
and every transition of that state is forced into one of three paid cases:
reuse/return, critical reset, or fresh endpoint Carleson.

## 8. Selected-metric endpoint cocycle attempt

Define the root endpoint state of a retained birth \(\gamma\) as the pullback to
the original stopped parent of the weighted endpoint seed

\[
E_\gamma
:=
H_\gamma^{1/2}M_\gamma
\quad
\text{together with its frame/covector/turnstile/exchange coordinates.}
\tag{15}
\]

The intended cocycle is:

\[
E_{\gamma'}
=
E_\gamma
+\Delta_{\rm ret}E_{\gamma\to\gamma'}
+\Delta_{\rm reset}E_{\gamma\to\gamma'}
+\Delta_{\rm fresh}E_{\gamma'}.
\tag{16}
\]

The three terms have different proof roles.

Return/reuse term:

\[
\Delta_{\rm ret}E_{\gamma\to\gamma'}
\quad\text{is paid by}\quad
StoppedReturnBV(P)
\tag{17}
\]

after the retained endpoint state is already admitted in the selected harmonic
square currency.

Reset term:

\[
\Delta_{\rm reset}E_{\gamma\to\gamma'}
\quad\text{is paid by}\quad
CriticalResetBV(P),
\tag{18}
\]

where the derivative is critical-weighted and root-relative, not raw parent
variation.

Fresh term:

\[
\Delta_{\rm fresh}E_{\gamma'}
\quad\text{is paid by}\quad
\rho_{\gamma'}^{EP}
=
\int_{I_{\gamma'}}H_{\gamma'}\|M_{\gamma'}^{fresh}\|_2^2dt
+DER(\gamma')+R_{\rm thread}(\gamma').
\tag{19}
\]

The cocycle would close the forbidden branch if it proved

\[
\sum_{\gamma\subset P}
\left(
\|\Delta_{\rm ret}E_\gamma\|^2
+\|\Delta_{\rm reset}E_\gamma\|^2
+\|\Delta_{\rm fresh}E_\gamma\|^2
\right)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{20}
\]

Then a locally parent-fresh selected unit cannot be old in the root endpoint
state without entering return or reset, and cannot be new without spending a
fresh endpoint atom.

## 9. Where the cocycle proof fails

The paid line is only the algebraic split `(16)` plus the local endpoint seed
admission `(3)`.

The unproved line is the selected-metric root bound:

\[
\sum_{\gamma\subset P}
\|E_\gamma-E_{\operatorname{par}(\gamma)}\|_{\mathcal H_{\rm root,sel}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{21}
\]

The current reset and return surfaces prove raw or conditional pieces.  They do
not prove `(21)` because raw variation can be heat-scale small while the
selected endpoint displacement is unit:

\[
\|E_\gamma-E_{\operatorname{par}(\gamma)}\|_{\mathcal H_{\rm raw}}^2
\simeq r_\gamma,
\qquad
\|E_\gamma-E_{\operatorname{par}(\gamma)}\|_{\mathcal H_{\rm root,sel}}^2
\simeq1.
\tag{22}
\]

This is the same half-tail in endpoint-state language.  A root ancestry tag
does not solve it; a selected-metric endpoint cocycle would.

The stronger insight is that the route cannot close by proving "no reset" or
"finite return" separately.  The theorem must prove a coupled endpoint-state
cocycle:

\[
\text{fresh endpoint atom}
+\text{critical reset derivative}
+\text{selected return square}
\quad\text{all in the same root selected metric.}
\tag{23}
\]

That is smaller than the full clock but stronger than each branch note.

## 10. Current proof requirements

From the present hinge, smoothness is complete only after these proof-bearing
items are proved from original history before future selected-tail readout:

1. endpoint lower edge: every retained first birth has selected-size positive
   endpoint mass;
2. endpoint root upper edge: fresh endpoint atoms satisfy a root Carleson bound;
3. return payment: repeated endpoint-state reads are bounded in selected
   harmonic square currency;
4. reset payment: changes of endpoint state have critical weighted reset BV;
5. metric eligibility: the root selected metric is a parent-known critical
   material capacity, not raw divergence capacity and not a future-tail weight;
6. noncircular cocycle: the same root selected metric contains the endpoint
   atom, return square, and reset derivative;
7. relay: the resulting native birth packing gives selected compression root
   reserve, finite selected action, full same-material clock, \(H^s\) control,
   and local continuation.

Only item 7 is already a conditional consumer relay.  Items 1--6 are still the
producer.

## 11. Root selected metric legality test

The cocycle in `(16)`--`(23)` still hides one possible lie: the metric
\(\mathcal H_{\rm root,sel}\) could be built from the selected endpoint tail.
Then every term is measured in exactly the currency that the proof is trying to
bound.

The legal metric must be fixed by the parent material packet before the fresh
endpoint read.  In dual form, the metric is legal only when the following four
clauses use the same parent-known weight \(H\) and current-energy measure
\(d\mathcal R\).

Endpoint divergence form:

\[
M_\gamma=D_AJ_\gamma+M_{\gamma}^{paid}.
\tag{24}
\]

Adjoint testing:

\[
\int |D_A^*(Hg)|^2\,d\mathcal R^{-1}
\le
C\int H|g|^2+Paid(P).
\tag{25}
\]

Current energy:

\[
\sum_{\gamma\subset P}\int |J_\gamma|^2\,d\mathcal R
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{26}
\]

Selector admission:

\[
\omega_\gamma
\le
C_N\int H|M_\gamma|^2+Paid(\gamma).
\tag{27}
\]

If `(24)`--`(27)` hold in the same metric, then Cauchy--Schwarz proves the
endpoint atom bound:

\[
\sum_{\gamma\subset P}\omega_\gamma
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{28}
\]

The checked repo state supplies only pieces.  The endpoint-current notes supply
the representation shape `(24)`.  The stopped endpoint testing notes identify
`(25)` as an open accretive testing theorem.  The current-Carleson notes
identify `(26)` as the original-history fresh innovation theorem.  The native
birth notes identify `(27)` as the selected-scale lower edge.

So the cocycle is not yet a proof.  It is a proof exactly after the same metric
passes all four clauses.

## 12. Capacity reformulation

The non-aliased way to state the metric is material capacity.

For a parent-known stopped packet \(P\), define the material capacity norm of an
endpoint seed \(M\) by

\[
\|M\|_{\operatorname{Cap}_P^{-1}}^2
:=
\inf_{D_AJ=M+paid}
\int_{\operatorname{Hist}(P)}|J|^2\,d\mathcal R
+Paid(P).
\tag{29}
\]

Then the live line is:

\[
\omega_\gamma
\le
C_N\|M_\gamma\|_{\operatorname{Cap}_P^{-1}}^2
+Paid(\gamma),
\tag{30}
\]

with the fresh capacity atoms packing:

\[
\sum_{\gamma\subset P}
\|M_\gamma^{fresh}\|_{\operatorname{Cap}_P^{-1}}^2
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{31}
\]

This is the selected-metric cocycle without the hidden weight.  The selected
weight \(H\) is legal only as a witness of the parent-known capacity norm, not
as a definition copied from the future selected tail.

There are three failure modes:

1. circular metric: \(H\) is chosen after the endpoint tail is known, so
   `(27)` is tautological;
2. thin metric: \(H\) is parent-known and testing-good, but `(27)` fails and a
   retained selected unit is not admitted by material capacity;
3. fat metric: \(H\) admits the selected unit, but `(25)` or `(26)` fails and
   the half-tail survives as current energy defect.

The stronger mechanism forced by this failure is not another named reserve.  It
is capacity admission:

\[
\text{retained selected endpoint seed}
\Rightarrow
\text{parent-known material capacity of selected size,}
\tag{32}
\]

and capacity packing:

\[
\text{fresh material capacities are Bessel/Carleson in the parent packet.}
\tag{33}
\]

This recovers the physical ontology: a selected birth is real only when the
same pressure-viscosity-incompressibility packet has enough material capacity
to transmit that endpoint seed before the selector reads it.

The proof still fails at `(30)`--`(31)`.  Those lines are exactly the coupled
version of endpoint lower edge, accretive testing, current Carleson, reset, and
return in one root metric.

## 13. Capacity frame pressure test

The capacity reformulation still has a false easy reading.  The norm in `(29)`
cannot be ordinary divergence capacity.

For a shrinking heat-scale endpoint seed \(M_r\), the raw material current can
have

\[
\|M_r\|_{\operatorname{Cap}_{raw,P}^{-1}}^2\sim r,
\tag{34}
\]

while the retained selected readout is normalized as

\[
\omega_r\sim1.
\tag{35}
\]

Thus raw capacity admission

\[
\omega_r
\le
C\|M_r\|_{\operatorname{Cap}_{raw,P}^{-1}}^2
+Paid
\tag{36}
\]

is false by the same half-tail mechanism.  It is exactly the old \(r\) versus
unit selected-action gap in capacity language.

The only possible legal capacity is the critical material capacity:

\[
\|M_r\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
\simeq
r^{-1}\|M_r\|_{\operatorname{Cap}_{raw,P}^{-1}}^2,
\tag{37}
\]

or its equivalent parent-known routed-current / positive-critical-transfer
metric.  Then admission can see unit selected seeds, but packing becomes the
whole producer:

\[
\sum_{\gamma\subset P}
\|M_\gamma^{fresh}\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{38}
\]

So capacity has two independent frame requirements.

Lower frame / admission:

\[
\omega_\gamma
\le
C_N\|M_\gamma\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
+Paid(\gamma).
\tag{39}
\]

Upper frame / packing:

\[
\sum_{\gamma\subset P}
\|M_\gamma^{fresh}\|_{\operatorname{Cap}_{crit,P}^{-1}}^2
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{40}
\]

Both must be parent-known before future selected-tail readout.  If `(39)` is
proved by choosing the capacity witness after seeing the endpoint tail, the
metric is circular.  If `(40)` is proved by importing finite selected action or
the downstream full clock, the packing is circular.  If the capacity is raw,
`(39)` fails.  If the capacity is critical but not originally finite, `(40)`
fails.

This is the exact frame version of the Thomas-dialogue pressure:

- Does this prove smoothness? No; it proves the relay only after `(39)`--`(40)`.
- Is it full packet? Yes only if the critical capacity is built from the
  pressure-viscosity-incompressibility traction/current packet.
- Did it become another alias? It becomes an alias if `Cap_{crit}` is defined
  from selected action.  It is noncircular only if it is a parent-known material
  frame with lower and upper bounds.
- What stronger insight did the failure reveal? The live theorem is not
  "capacity" by itself.  It is a critical capacity frame theorem: the retained
  selector must be a lower frame for endpoint seeds, while the same material
  current must give the upper Bessel/Carleson frame bound.

In dual language, for parent-known critical capacity test fields
\(\varphi_\gamma\), the target is

\[
\omega_\gamma
\lesssim
|\langle M_\gamma,\varphi_\gamma\rangle|^2+Paid(\gamma),
\qquad
\|\varphi_\gamma\|_{\operatorname{Cap}_{crit,P}}\le C_N,
\tag{41}
\]

and

\[
\sum_{\gamma\subset P}
|\langle D_AJ,\varphi_\gamma\rangle|^2
\le
C_N\int_{\operatorname{Hist}(P)}|J|^2\,d\mathcal R_{crit}
+Paid(P).
\tag{42}
\]

Equation `(41)` is selected admission / endpoint lower edge.  Equation `(42)`
is parent-known accretive testing plus current Carleson in the same metric.
Together they are smaller than the full clock and stronger than any single
endpoint, return, reset, Bellman, or current-energy note.

The proof still fails at `(41)`--`(42)`: the repo has the raw divergence
representation, same-chain nonreuse, and conditional testing/current surfaces,
but not the critical capacity frame from original data.

## 14. Truth ledger

Proved consumer: selected-density Hilbert BMO and reverse Holder close after the
weighted fresh-innovation/native-reserve producer is supplied.

Proved support: bounded original-packet tests Bessel-pack; spent-source
projection closes same-chain raw nonreuse; local source attachment rules out
detached high-ratio birth; retained first selected birth has a local
endpoint-seed admission line; return and reset surfaces identify the right paid
currencies.

Conditional relay: a parent-known material-capacity cocycle gives
`NativeBirthChargePacking.A`, then selected compression root reserve, finite
selected action, full same-material clock, and continuation.

Failed route: minimal first birth closes only in parent-relative language; it
does not stop a shrinking chain whose first-birth status restarts after each
rebase.  Raw root ancestry is also too coarse, because one ancestry bucket can
hide infinitely many selected-scale endpoint-state changes.

Equivalent hinge: the live issue is the root-relative nonresettable ancestry
clause upgraded to a parent-known critical material-capacity frame inside
`NativeBirthChargePacking.A`, equivalently the shared metric behind fresh
endpoint Carleson, selected return square, critical weighted reset BV, stopped
endpoint accretive testing, and positive critical transfer.

Live producer: prove the critical material-capacity lower/upper frame
`(39)`--`(42)`, or
produce a specific noncircular obstruction showing that a locally parent-fresh
selected unit can keep old root endpoint ancestry with no selected return,
critical reset, exchange, or fresh endpoint Carleson charge.

Partial, not Gold closed.
