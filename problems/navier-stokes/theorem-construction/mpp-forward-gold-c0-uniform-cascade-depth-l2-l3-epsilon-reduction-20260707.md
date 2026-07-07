---
theorem_id: forward-gold-c0-uniform-cascade-depth-l2-l3-epsilon-reduction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / uniform cascade termination depth / L2-to-L3 uniformity
status: strict-reduction-and-failed-proof-attempt-not-c0-closure
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - UniformCascadeTerminationDepth
  - SpatialSignedCoreProjection
  - L2ToL3RecordEquiIntegrability
  - FullPositiveMaterialRecordTermination
  - SameCarrierTailUI.A
  - TerminalPulseSeparationModel
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
  - epsilon_star_positive
  - MovingDriverFixedChartJordanOrientationAllocation.A
  - MovingDriverPreEnvelopeSignedCurrentRetention.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-what-any-proof-must-supply-target-spec-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-null-lagrangian-projection-demotion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-unified-object-referee-placement-vs-CKN-ESS-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hs-lp-heat-flow-continuum-ontology-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-parent-owned-positive-record-bill-currency-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-collapse-to-parent-owned-bill-currency-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-matrix-early-branch-contraction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-terminal-tail-ui-bill-currency-strict-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-viscous-thickness-square-not-first-ratio-no-go-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-wlf60-carrier-mismatch-tail-ui-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selected-return-admission-same-edge-bill-currency-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selector-force-balance-leg-bill-currency-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-acceleration-endpoint-impulse-finite-storage-routeout-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-snell-compensator-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-driver-positive-envelope-orientation-retention-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-driver-pre-readout-jordan-orientation-sublemma-20260707.md
completion_truth: >-
  This note resolves the proposed route at the current source state, and the
  resolution is a strict separation. Uniform cascade-termination depth in the
  L2-to-L3 sense is exactly the spatial
  signed-core no-critical-concentration projection: it prevents the Jacobian /
  null-Lagrangian record core from forming arbitrarily deep spatial
  concentration atoms. That equivalence is useful but it is not enough to prove
  epsilon_* > 0. The corrected c_0 object is the positive one-way retained
  material record of one same-fluid history, and epsilon_* needs that positive
  edge to be owned before readout and paid in
  B=dE_Field+dA_4B+dVisc currency. This note proves the conditional route:
  a strengthened same-edge cascade-termination theorem that terminates every
  positive record thread in a parent-owned B-currency payer, legal/stop exit, or
  typed CM route-out implies ParentOwnedPositiveRecordBillCurrency.A; hence the
  retained bill/record ratio has epsilon_* > 0 and c_0=2 epsilon_*. It also
  records the obstruction: the bare L2-to-L3/equi-integrability theorem lacks
  positive-part retention, material-time tightness, and same-parent edge
  ownership. The terminal pulse model is the separating object: it has fixed
  positive record, no new spatial concentration, and no same-carrier tail
  uniform integrability. The later selector-force balance audit shows the same
  obstruction through the acceleration endpoint leg: endpoint impulse can carry
  the terminal pulse without square-force billing. The fixed-chart acceleration
  sublemma now sharpens this branch: sign-coherent endpoint impulse is finite
  endpoint storage plus negative return variation, so repeated service must
  spend reset/frame variation or route out; those currencies still are not the
  retained B-bill until same-edge admission is proved. The moving-driver Jordan
  sublemma removes a different false obstruction: once a raw moving-driver event
  is parent-owned on a fixed material chart, positive leg / negative partner /
  signed current orientation is supplied by ordinary Hahn-Jordan splitting. It
  does not close c_0, because the pre-readout ownership, stopped-line,
  no-recount, and first-ratio/tower-tail bill passage remain unproved. A
  continuation pressure
  test checked the WLF/ODP affine-weight route and the Rellich selector-force
  route against the terminal pulse obstruction. The WLF/ODP route does not
  close from predictable envelopes, raw Bessel square, no-recount, or local
  first-admission atoms; it needs paid stopped active-weight compensator /
  root Hilbert martingale geometry, or the same terminal tail UI/no-atom
  payment. The selector-force route has the scale-normalized H^{-1} floor and
  pays the viscous leg, but the acceleration, nonlinear, and defect legs are
  not in retained B-currency until same-edge bill-or-route-out admission is
  proved. The early-row bill-matrix pivot further sharpens the first failed
  line: viscous residence controls square thickness, while the c_0 service row
  needs first-ratio linear payment. The half-tail profile has finite viscous
  square charge and divergent first-ratio service, so same-parent detector
  origin, finite menus, and no-recount do not close WLF.60/ODP.91. Therefore
  the requested proof does not close c_0 unless the uniform-depth theorem is
  upgraded to the same WLF/ODP same-carrier payment /
  FullTowerPositiveChannelThreeMeasureAdmission / same-edge custody theorem,
  or to the full record-admitted active-critical/full-exchange/active-transit
  matrix with spectral radius strictly below one. No c_0 or MPP closure is
  claimed.
---

# Uniform cascade depth, L2-to-L3 uniformity, and the epsilon extraction

## 1. Same object

The object is one retained same-fluid Navier-Stokes history. The cascade is not
a detached dyadic counting problem. It is the same material record being read
through transport, pressure, viscosity, incompressibility, scale, sign, and
time.

For a retained relay window,
\[
R(W)=\int_W dR_N^+,
\qquad
B(W)=\int_W\bigl(dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}\bigr).
\tag{UCD.1}
\]

The c0 target is
\[
B(W)\ge \varepsilon R(W),
\qquad
\varepsilon_*=\inf_{R(W)=1}B(W)>0,
\qquad
c_0=2\varepsilon_*.
\tag{UCD.2}
\]

The question tested here is whether "uniform cascade-termination depth" is the
same thing as the \(L^2\to L^3\) uniformity row, and whether that alone proves
`(UCD.2)'.

## 2. Projection-level equivalence

There is a valid equivalence, but only at the spatial signed-core projection.

Let `UCTD_sp` mean:

> a retained spatial Jacobian/null-Lagrangian record core cannot keep positive
> record mass through arbitrarily deep shrinking spatial cascade cylinders while
> the controlling \(L^2\) bills stay bounded.

Let `L2L3_sp` mean:

> the positive Jacobian record core is equi-integrable at the \(L^3\) endpoint
> relative to the \(L^2\) pair-field control; equivalently, no critical spatial
> concentration atom survives in the signed tower Jacobian core.

Then
\[
\texttt{UCTD\_sp}
\quad\Longleftrightarrow\quad
\texttt{L2L3\_sp}.
\tag{UCD.3}
\]

Proof. If `L2L3_sp` fails, there is a normalized sequence whose record core
keeps a fixed positive mass inside spatial cylinders with radii tending to
zero. Taking the dyadic depth of those cylinders gives retained cascades of
arbitrarily large spatial depth, so `UCTD_sp` fails.

Conversely, if `UCTD_sp` fails, choose retained spatial cascade cylinders of
depth \(m\to\infty\) carrying a fixed amount of positive signed-core record.
After critical rescaling to a unit cylinder, the \(L^2\) pair-field control
stays bounded while a positive amount of \(L^3\)-critical Jacobian record sits
inside a shrinking subcylinder. That is exactly failure of equi-integrability of
the \(L^3\)-critical record core. Hence `L2L3_sp` fails.

This proves the equality the older target-spec was trying to name:

\[
\boxed{
\text{uniform spatial cascade termination}
=
\text{\(L^2\to L^3\) no-critical-concentration for the signed core}.
}
\tag{UCD.4}
\]

It does not prove c0.

## 3. Why this projection does not imply epsilon positivity

The c0 record is a positive one-way material record. Three operations are
missing from `(UCD.4)'.

First, positive-part retention. A signed Jacobian core can pass weakly while
the selected positive variation is not retained as a same-packet positive /
negative / current object before readout. Equi-integrability of the signed core
does not by itself say where the future-positive leg is paid.

Second, material-time tightness. Spatial equi-integrability does not prevent a
positive record from collapsing to a material-time atom. The model density
\[
r_m(x,t)=m\,{\bf 1}_{(0,1/m)}(t)\,\phi(x),
\qquad
\int\phi=1,
\tag{UCD.5}
\]
has fixed total record and no spatial concentration in \(\phi\), but converges
in time to a terminal atom. This is not asserted as a Navier-Stokes solution;
it is the functional obstruction showing why spatial \(L^2\to L^3\) does not
control the material-time record.

Third, same-parent edge ownership. A spatial record core may remain visible
while the future-positive selected edge loses its parent address, exact chart,
detector/service payer, or full-exchange face before readout. The current
sources name that missing operation as the same-edge pre-readout custody tuple.

Therefore
\[
\texttt{L2L3\_sp}
\not\Longrightarrow
\varepsilon_*>0
\tag{UCD.6}
\]
from the installed source logic. The implication becomes true only after the
uniform-depth theorem is strengthened from spatial termination to same-edge
positive-record termination in bill currency.

## 3b. Full equivalence separation

There are two different statements:

\[
\texttt{UCTD\_sp}
\Longleftrightarrow
\texttt{L2L3\_sp},
\tag{UCD.6a}
\]

and

\[
\texttt{UCTD\_full}
\Longrightarrow
\varepsilon_*>0.
\tag{UCD.6b}
\]

The first is the spatial signed-core equivalence proved above. The second is
the retained positive material-record theorem needed for \(c_0\). They are not
the same theorem at the current source state.

The separating model is the terminal pulse already isolated in the terminal-tail
and selector-force audits:

\[
a_\tau(t)=\tau^{-1}{\bf 1}_{(-\tau,0]}(t),
\qquad
r_\tau(x,t)=a_\tau(t)\phi(x),
\qquad
\int\phi\,dx=1.
\tag{UCD.6c}
\]

It has fixed positive record:

\[
\int r_\tau\,dx\,dt=1.
\tag{UCD.6d}
\]

It has no spatial concentration beyond the fixed profile \(\phi\), so it is
invisible to a theorem that only forbids spatial \(L^3\)-critical concentration
of the signed core. But it has no tail uniform integrability in material time:

\[
\lim_{K\to\infty}\sup_{\tau}
\int_{\{a_\tau>K\}}a_\tau(t)\,dt=1.
\tag{UCD.6e}
\]

It also has divergent square force:

\[
\int_{-1}^{0}a_\tau(t)^2\,dt=\tau^{-1}\to\infty.
\tag{UCD.6f}
\]

while it can be written as the derivative of an endpoint impulse coordinate
with order-one endpoint displacement. Thus spatial \(L^2\to L^3\) uniformity
does not force the terminal record into the retained bill.

Therefore the full statement cannot be

\[
\texttt{UCTD\_full}
=
\texttt{L2L3\_sp}.
\tag{UCD.6g}
\]

The strongest correct equality is

\[
\texttt{UCTD\_full}
=
\texttt{L2L3\_sp}
+\texttt{PositivePartRetention}
+\texttt{MaterialTimeTailUI}
+\texttt{SameEdgeBillCurrency}.
\tag{UCD.6h}
\]

At this resolution, the new non-spatial clause is exactly:

\[
\texttt{SameCarrierTailUI.A}
\quad\hbox{or}\quad
\texttt{RootFixedTerminalUniformL1FullPacketServiceStorage.A}
\quad\hbox{or}\quad
\texttt{AccelerationEndpointImpulseOrFrameVariationBillOrRouteOut.A}.
\tag{UCD.6i}
\]

Without one of `(UCD.6i)', the terminal pulse remains a normalized
zero-bill/positive-record countersequence to the proposed epsilon extraction.

## 4. The strengthened theorem that would close epsilon

The useful strengthened statement is:

\[
\boxed{\texttt{UniformCascadeTerminationDepthWithSameEdgeBillCurrency.A}.}
\tag{UCD.7}
\]

Statement. On every retained relay window \(W\), after legal and stop exits are
removed, every future-positive record thread terminates within a uniform
cascade depth in one of the following same-edge outcomes before readout:

\[
\begin{array}{ll}
\text{paid:} & \text{a parent-owned Field/four-body/viscous bill event,}\\[1mm]
\text{admitted:} & \text{a same-edge parent face controlled by the bill matrix,}\\[1mm]
\text{routed:} & \text{a legal/stop/Pack/Part/Field route-out before readout.}
\end{array}
\tag{UCD.8}
\]

Quantitatively, the stopped thread decomposition has bounded overlap and gives
\[
dR_P^+
\le
C_D\,dB_P+dLegal_P+dStop_P+dRouteOut_P,
\tag{UCD.9}
\]
with \(C_D\) independent of the cascade rung.

This is exactly the content needed for parent-owned bill currency:
\[
\texttt{UniformCascadeTerminationDepthWithSameEdgeBillCurrency.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{UCD.10}
\]

Proof. Decompose \(dR_P^+\) into maximal stopped positive record threads. By
`(UCD.8)' each thread terminates before readout in a paid, admitted, or routed
same-edge event. Bounded overlap of the stopped decomposition gives `(UCD.9)'.
Integrating over \(W\) and quotienting legal/stop/route-out branches gives
\[
R(W)\le C_D B(W).
\tag{UCD.11}
\]
This is `ParentOwnedPositiveRecordBillCurrency.A`.

## 5. Epsilon extraction from the strengthened theorem

Assume `(UCD.7)'. Then `(UCD.11)' holds on retained windows. On the normalized
slice \(R(W)=1\),
\[
B(W)\ge C_D^{-1}.
\tag{UCD.12}
\]

Hence
\[
\varepsilon_*
=\inf_{R(W)=1}B(W)
\ge C_D^{-1}>0,
\qquad
c_0=2\varepsilon_*>0.
\tag{UCD.13}
\]

Equivalently, a retained minimizing sequence
\[
R(W_j)=1,\qquad B(W_j)\to0
\tag{UCD.14}
\]
is impossible because `(UCD.11)' gives
\[
1=R(W_j)\le C_D B(W_j)\to0.
\tag{UCD.15}
\]

This recovers the c0 epsilon extraction without needing a separate weak-limit
record-passage argument for such a sequence.

## 6. Where the proof still stops

The installed source state proves the projection equivalence `(UCD.3)' and the
conditional implication `(UCD.10)'--`(UCD.13)'. It does not prove `(UCD.7)'.

The missing same-edge bill-currency termination is the already-isolated lower
wall:
\[
\begin{gathered}
\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A},\\
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A},\\
\texttt{RecordAdmittedSubHeatLagEarlyBranchStorage.A},\\
\texttt{WLF.60/ODP.91 on the order-locked full-packet selected carrier,}\\
\texttt{FreshOverrunSameCarrierTailUI.A}
\ \text{or a typed terminal route-out.}
\end{gathered}
\tag{UCD.16}
\]

The moving-driver Jordan pass removes only the orientation part of this wall.
On a fixed parent-known material event space,

\[
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}
+\texttt{fixed-chart finite raw throughput}
\Longrightarrow
\texttt{MovingDriverFixedChartJordanOrientationAllocation.A}.
\tag{UCD.16a}
\]

The remaining moving-driver theorem is:

\[
\begin{gathered}
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}\\
+\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A}\\
+\texttt{same-event no-recount / no-delamination / first-ratio bill currency}
\end{gathered}
\Longrightarrow
\texttt{MovingDriverPreEnvelopeSignedCurrentRetention.A}.
\tag{UCD.16b}
\]

Then

\[
\texttt{MovingDriverPreEnvelopeSignedCurrentRetention.A}
\Longrightarrow
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{UCD.16c}
\]

Thus the fixed-chart sign split is no longer the blocker. The blocker is the
same-edge admission of the raw event before positive readout and its passage
through the normalized bill-record limit.

In the finite matrix coordinate, the same statement is:
\[
\rho(K_P)<1
\tag{UCD.17}
\]
for the record-admitted active-critical/full-exchange/active-transit matrix,
or exclusion of the corresponding record-feeding surplus-zero Perron class.

So the proof result is sharp:

\[
\begin{array}{c}
\text{uniform cascade termination as \(L^2\to L^3\) uniformity}\\
\text{proves only the spatial signed-core projection;}\\[1mm]
\text{uniform cascade termination with same-edge bill-currency admission}\\
\text{proves }\varepsilon_*>0.
\end{array}
\tag{UCD.18}
\]

The current files do not license the shorter conclusion from the first line to
the second. A future proof must either prove `(UCD.7)' directly, prove the
record-admitted matrix gap `(UCD.17)', prove same-carrier WLF/ODP early-row
payment, or route the terminal/overrun survivor through an admitted
legal/stop/Pack/Part/Field exit before positive readout.

## 7. Continuation pressure test: the two apparent routes share one wall

The WLF/ODP affine-weight route and the Rellich selector-force route were
checked against the same terminal pulse obstruction. They are not independent
ways around `(UCD.7)'.

On the WLF/ODP side, the installed support is real but insufficient:

\[
\text{same-parent origin}
+\text{no-recount}
+\text{raw Bessel square}
+\text{local first-admission atom}
\not\Longrightarrow
\texttt{WLF.60}.
\tag{UCD.19}
\]

The half-tail still has finite square/raw admission and divergent selected
first-ratio bill. The sharper affine route is therefore:

\[
\begin{gathered}
\texttt{StoppedPredictableActiveWeightCompensator.A}\\
+\texttt{PredictableProjectionTransitionInnovation.A}\\
\Longrightarrow
\texttt{PredictableRootWeightMartingaleRealization.A}\\
\Longrightarrow
\texttt{WLF.60/ODP.91}.
\end{gathered}
\tag{UCD.20}
\]

This is a genuine smaller theorem only if the active-weight compensator is
paid by original-history scale derivative, turnstile, exchange, covector,
record/return, legal, or stop variation before selected positive readout. A
parent-predictable envelope alone only moves the future weight earlier; it
does not pay its upcrossings.

On the Rellich side, the selector-force floor is already installed:

\[
\|\mathbb P(S\nabla\chi)\|_{\dot H^{-1}}
\gtrsim
{|M_A(T)|\over |A|D^{3/2}}.
\tag{UCD.21}
\]

The viscous balance leg is bill-compatible on the same selected carrier. The
other balance legs are native currencies:

\[
\begin{array}{ll}
\text{acceleration:} & \text{endpoint impulse / frame variation},\\
\text{nonlinear:} & \text{kinetic, collar, or Reynolds stress},\\
\text{defect:} & \text{trace ballast, variation, or certificate}.
\end{array}
\tag{UCD.22}
\]

The acceleration leg reproduces the terminal pulse countercheck:

\[
a_\tau(t)=\tau^{-1}{\bf 1}_{(-\tau,0]}(t),
\qquad
\int a_\tau=1,
\qquad
\int a_\tau^2=\tau^{-1}\to\infty,
\tag{UCD.23}
\]

while the endpoint impulse can remain order one. Thus selector-force
noncancellation still needs:

\[
\texttt{SelectorForceBalanceLegBillCurrency.A}
\tag{UCD.24}
\]

meaning the nonviscous leg is admitted to the retained \(B\)-bill on the same
edge, or is routed out before readout.

The acceleration endpoint part is now smaller. On a fixed retained affine
chart, sign-coherent endpoint service is positive increase of
\[
I_A(t)=\langle v(t),\Psi_A\rangle,
\tag{UCD.24a}
\]
so it is bounded by endpoint coordinate range plus the negative return
variation needed to reset that coordinate. This proves
\[
\texttt{AccelerationEndpointImpulseFiniteStorageRouteOut.A}.
\tag{UCD.24b}
\]
The remaining acceleration burden is no longer "endpoint impulse" as a black
box. It is same-edge admission of the reset variation, frame variation, or
endpoint-face route-out into the retained bill before positive readout.

So the current pressure-test conclusion is:

\[
\begin{array}{c}
\texttt{WLF.60/ODP.91}\\
\text{and}\\
\texttt{SelectorForceHminusOneBillCurrency.A}
\end{array}
\quad
\text{both reduce to same-edge bill admission / terminal no-atom payment.}
\tag{UCD.25}
\]

The proof of \(\varepsilon_*>0\) is complete from `(UCD.7)' or from either
source theorem once it proves `(UCD.7)'. The source theorem itself is still
open in the current files.

## 8. Current first failed line after the early-row pivot

The present first failed line is no longer bare spatial \(L^2\to L^3\)
uniformity. That projection has already been separated from \(\varepsilon_*>0\)
by the terminal pulse model. The first failed line is the same-edge
pre-readout bill admission needed to turn selected positive service into
parent-owned retained \(B\)-currency.

In the bill-matrix coordinate, the coupled active-critical/full-exchange/
active-transit loop has two noncircular exits:

\[
\begin{array}{ll}
\text{matrix exit:}
  & \rho(K_P)<1
    \text{ for the full record-admitted storage matrix},\\[1mm]
\text{early-row exit:}
  & \texttt{RecordAdmittedSubHeatLagEarlyBranchStorage.A},
    \text{ equivalently WLF.60/ODP.91 on the same carrier.}
\end{array}
\tag{UCD.26}
\]

The early-row exit is not supplied by viscous thickness alone. A half-tail
profile
\[
\omega_\ell=2^\ell,\qquad
\Delta_\ell={2^{-\ell}\over \ell+1}
\tag{UCD.27}
\]
has finite square charge
\[
\sum_\ell \omega_\ell|\Delta_\ell|^2
=
\sum_\ell {2^{-\ell}\over(\ell+1)^2}<\infty
\tag{UCD.28}
\]
and divergent first-ratio service
\[
\sum_\ell \omega_\ell|\Delta_\ell|
=
\sum_\ell {1\over \ell+1}
=\infty .
\tag{UCD.29}
\]

Thus heat residence, Bessel-square control, finite menu, same-parent detector
origin, and no-recount are checked support only. The proof of
\(\varepsilon_*>0\) now requires one of the following same-edge producers:

\[
\texttt{FreshOverrunSameCarrierTailUI.A}
\quad\text{or}\quad
\texttt{BillCoerciveRecordAdmittedStorageMatrix.A}
\tag{UCD.30}
\]

with the terminal source-curve atom either admitted as a typed CM route-out or
paid before readout. This is a strict narrowing of the source wall, not a proof
of \(c_0\).
