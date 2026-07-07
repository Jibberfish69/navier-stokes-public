---
theorem_id: forward-gold-c0-moving-pump-finite-work-circularity-audit-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / moving low-high driver / signed commutator source
status: checked-no-go-finite-pump-work-is-continuation-clock-not-lower-producer
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_objects:
  - MovingLowHighPressureStrainPumpFiniteWork.A
  - StoppedFreeMaterialGraphDriverCarleson.A
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
  - SignedSmoothSamePacketCommutatorCoercivity.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - RecordAdmittedActiveCriticalFullExchangeStorageMatrix.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/claim-ladder.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-full-tower-positive-channel-projection-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-pure-local-xcomm-storage-no-go-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-pressop-collar-graph-split-free-driver-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mcp-movinglowhighpressurestrainpumpfiniteworkhardboundary-a-globalsamepacketfullclockfromoriginaldata-a-5206f8d65f.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-weighted-material-energy-identity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-all-scale-pressure-stress-transfer-pump-split-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-feeding-perron-circulation-normal-form-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-perron-circulation-fourbody-coercivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-theta-envelope-not-three-measure-packet-no-go-20260707.md
completion_truth: >-
  Circularity audit and strict retarget, not c_0 closure. The graph/collar
  split correctly lowers the surviving signed-commutator channel to the moving
  low-high pressure/strain pump / stopped free-material graph driver after
  affine, pressure-collar normal-defect, fixed-low, high-high, and legal/stop
  branches are removed. But finite work of that pump is equivalent to the
  continuation-depth material clock. Therefore using
  MovingLowHighPressureStrainPumpFiniteWork.A as the independent c_0 source
  would prove continuation directly and is not a smaller noncircular producer.
  The lawful c_0 use of the moving-driver picture is narrower: prove
  pre-readout three-measure admission / signed orientation retention for its
  positive channel, prove a direct original-data subcritical active/root matrix
  face, or route failure to bill, legal, stop, Pack, Part, or Field before
  readout. No finite pump-work theorem is installed here.
---

# Moving pump finite work is not a lower producer

## 1. Same physical object

The surviving full-tower positive channel is the same transported
Navier-Stokes packet's moving low-high pressure/strain driver.  In dyadic
language it is the work of the low material strain, pressure Hessian,
coefficient, and collar services on the active high shell:

\[
\int_0^{T^*}
\sum_j w_j
\Bigl(
\|\nabla S_{<j-C}u\|_\infty
+\|S_{<j-C}\nabla^2p\|_{\mathcal X_j}
+\|S_{<j-C}\dot G\|_{\mathcal Y_j}
+\|S_{<j-C}\dot B_\psi\|_{\mathcal Z_j}
\Bigr)E_j(t)\,dt .
\tag{MPF.1}
\]

This is the correct same-fluid physical object after the graph/collar split.
The pressure/operator-collar normal defect is paid by relative Schur/interface
bookkeeping; the tangent graph motion is the free material driver.

## 2. Exact identity for the pump

On a material chart, with \(v_j=\Delta_j^a v\) and continuation-depth weights
\(w_j\), define

\[
E_w(t)=\frac12\sum_jw_j\|v_j(t)\|_2^2 .
\tag{MPF.2}
\]

The exact weighted material-energy identity is

\[
{d\over dt}E_w(t)+\nu D_w(t)=\mathcal M_w(t),
\tag{MPF.3}
\]

where \(\mathcal M_w\) is the pressure/incompressibility/coefficient interface
plus viscous coefficient commutator.  The moving pump is

\[
\mathcal P_w^{pump}(t)=[\mathcal M_w(t)]_+ .
\tag{MPF.4}
\]

Thus

\[
\left[{d\over dt}E_w(t)\right]_+
\le
\mathcal P_w^{pump}(t)
\tag{MPF.5}
\]

and

\[
\mathcal P_w^{pump}(t)
\le
\left[{d\over dt}E_w(t)\right]_+
+\nu D_w(t).
\tag{MPF.6}
\]

Finite pump work is therefore equivalent, up to the weighted viscous/interface
loss already inside the same packet, to finite positive variation of the
continuation-depth material energy.

## 3. Circularity test

The continuation-depth material record is precisely what Gold needs to bound.
If

\[
\int_0^{T^*}\mathcal P_w^{pump}(t)\,dt<\infty,
\tag{MPF.7}
\]

then the material tower growth law gives

\[
\sup_{t<T^*}\mathcal P_N^{mat}(t)<\infty,
\tag{MPF.8}
\]

and the fixed \(H^s\) readout relaunches the smooth solution.  Conversely, a
high enough continuation-depth bound gives finite pump work by Sobolev product,
Calderon-Zygmund pressure, and transported-collar estimates.

So

\[
\texttt{MovingLowHighPressureStrainPumpFiniteWork.A}
\tag{MPF.9}
\]

is not a lower c0 source.  It is continuation-strength.  A proof that invokes
finite pump work as an input has already bought the regularity conclusion.

This is the same warning in stopped language:

\[
\texttt{StoppedFreeMaterialGraphDriverCarleson.A}
\tag{MPF.10}
\]

is useful only if it is produced from a strictly smaller original-history
one-way storage, not if it is defined as finite continuation-clock work.

## 4. Lawful noncircular uses of the pump picture

The moving-driver coordinate can still close c0, but only in one of these
noncircular forms.

First, pre-envelope signed admission:

\[
\texttt{SignedSmoothSamePacketCommutatorCoercivity.A}
\Longrightarrow
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}.
\tag{MPF.11}
\]

This must retain the positive channel's orientation before the theta/BKM
absolute-value envelope loses the negative partner and signed current.

Second, an original-data subcritical active/root face:

\[
X_P\le -dM_P+K_PX_P+C\,dB_P,
\qquad
\rho(K_P)<1,
\tag{MPF.12}
\]

for the record-admitted active-critical/full-exchange/active-transit faces,
with residual in \(B=dE^{Field}+dA_{4B}+dVisc\).  This proves parent-owned bill
currency without first proving the whole pump clock finite.

Third, typed route-out:

\[
\text{failure of retained driver admission}
\Longrightarrow
\text{legal, stop, Pack, Part, or Field before readout}.
\tag{MPF.13}
\]

This is lawful because the bad branch then stops being a retained positive
record inside the Gold class.

## 5. No-go for two tempting shortcuts

The unsigned theta envelope is not a lawful replacement for `(MPF.11)'. It is
formed after absolute values, so it no longer carries a same-carrier positive
part, negative partner, and signed current.

The pure local \(X_{comm}\) primitive is not a lawful replacement either. The
incompressible affine normal form has positive line-growth clock with no local
affine heat or higher relay detector; any bounded primitive paying that clock
would decrease like \(-c\log|\ell|\) and become unbounded below.

Thus the sign cannot come from the envelope or from a local primitive. It must
come from nonlocal same-packet pressure-viscosity-incompressibility coupling,
or the branch must post a bill/exit.

## 6. Consequence for c0

The current implication chain should be read as:

\[
\begin{aligned}
&\text{pre-readout signed orientation retention for the moving driver}\\
&\quad\text{or a direct subcritical active/root matrix face}\\
&\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}\\
&\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}\\
&\Longrightarrow c_0>0 .
\end{aligned}
\tag{MPF.14}
\]

It should not be read as:

\[
\text{prove finite moving pump work from itself}
\Longrightarrow c_0>0 .
\tag{MPF.15}
\]

That second reading is circular at continuation strength.  The physical bottom
is therefore not "finite pump work" as a free input; it is the same-edge
pre-readout admission/coercivity or route-out theorem that prevents the pump's
positive channel from becoming a future-selected, orientationless first-ratio
tail.
