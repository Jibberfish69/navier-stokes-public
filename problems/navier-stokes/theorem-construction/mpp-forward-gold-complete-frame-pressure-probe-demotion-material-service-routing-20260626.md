---
theorem_id: forward-gold-complete-frame-pressure-probe-demotion-material-service-routing-20260626
status: complete-frame-pressure-probe-availability-false-as-schur-probe-theorem-material-service-routing-installed
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - RetainedCompleteFramePressureProbeAvailability.A
  - PressureActiveSelection.A
  - MaterialParabolicSelectedTraceObservability.A
  - SelectedActionTraceCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-pressure-probe-spanning-route-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-symbol-kernel-exclusion-counterboundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-parabolic-selected-trace-observability-kernel-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-authority-reconciliation-20260626.md
---

# Complete-frame pressure-probe demotion and material-service routing

## 1. The complete-frame algebra is correct

For a trace-free symmetric tensor \(Z\), finitely many longitudinal contractions
determine \(Z\).  In a fixed Euclidean frame, the six probes

\[
e_1,\ e_2,\ e_3,\ {e_1+e_2\over\sqrt2},\
{e_1+e_3\over\sqrt2},\ {e_2+e_3\over\sqrt2}
\]

give

\[
|Z|^2
\le
C\sum_n |n^T Zn|^2 .
\tag{CFD.1}
\]

This repairs the purely algebraic objection to a one-direction pressure-Hodge
symbol.

## 2. It is not a retained pressure-Hodge probe theorem

The scalar pressure-Hodge field of one retained microlocal packet does not
automatically provide six independent longitudinal boundary probes.

For a rank-one packet with wave covector \(\xi\), the pressure-Hodge principal
symbol sees

\[
{ \xi_i\xi_jZ_{ij}\over |\xi|^2}.
\tag{CFD.2}
\]

The pair directions in `(CFD.1)` are algebraic probes.  They are not, by
themselves, additional physical pressure traces carried by the same scalar
pressure field.  Treating them as independent parent-collar Schur probes would
add external test information not supplied by the retained packet.

Thus

\[
\texttt{RetainedCompleteFramePressureProbeAvailability.A}
\]

is false in the literal Schur-probe form:

\[
A_{sel}(Q')
\le
C\sum_{n\in\mathcal N_Q}
\langle U_Q^{(n)},\mathsf S_Q^{(n)}U_Q^{(n)}\rangle
+R(Q)
\tag{CFD.3}
\]

unless the extra probes are separately constructed and paid.

## 3. The complete frame has the correct material role

The complete-frame trace-free payment note already supplies the correct role.
For one divergence-free retained rank-one packet, the velocity polarization
\(p\), wave covector \(\widehat\xi\), and packet-normal/collar direction

\[
n=p\times\widehat\xi
\]

form the same-packet frame.  Since \(\operatorname{tr}S=0\),

\[
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{CFD.4}
\]

The two right-hand terms are material service:

* wave-covector compression / frequency service;
* packet-normal collar or annular compression service.

So the pressure-Hodge-null transverse part is not an invisible pressure child.
It is routed into the material parabolic service term.

## 4. Correct replacement inequality

The valid selected trace estimate is therefore not a pure complete-frame Schur
probe estimate.  It is

\[
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+
C\,\mathcal E_{\rm par}(Q)
+
R_{\rm legal}(Q),
\tag{CFD.5}
\]

where \(\mathcal E_{\rm par}\) contains the same-packet wave-covector,
coefficient/frame, transported collar, annular/interface, Hodge/projector,
viscous/radius, and lower-order legal service.

The pressure-Hodge-visible part is handled by the actual parent Schur trace.
The pressure-Hodge-null trace-free part is handled by `(CFD.4)` and lands in
\(\mathcal E_{\rm par}\).

## 5. Consequence for the invisible-child route

The invisible-child theorem is now split correctly:

\[
\text{pressure-visible selected part}
\quad\longrightarrow\quad
\text{parent Schur defect},
\]

\[
\text{pressure-Hodge-null selected part}
\quad\longrightarrow\quad
\text{material parabolic service}.
\]

Hence the raw counterexample from
`SelectedSymbolKernelExclusion.A` does not create a new pressure-Hodge silent
child.  It proves only that the pressure-Hodge Schur coordinate must be paired
with material service.

This discharges the complete-frame pressure-probe detour as a standalone route
and returns the Gold proof to the already identified selected first-ratio
problem:

\[
\texttt{RepeatedCorePositiveVariationRootBound.A}
\quad\text{or}\quad
\texttt{ScaleInvariantSelectedCapacityNoEscape.A},
\tag{CFD.6}
\]

or an equivalent direct bound on the full selected first-ratio action.

## 6. Status

The theorem

\[
\texttt{RetainedCompleteFramePressureProbeAvailability.A}
\]

is not the final lock.  The retained complete frame supplies orientation and
material-service routing, not free extra pressure-Hodge boundary probes.

The live Gold hinge is therefore:

\[
\boxed{
\text{prove the selected first-ratio / selected-capacity strict gain after the
pressure-visible and pressure-null branches are routed as above.}
}
\tag{CFD.7}
\]

The installed relay remains:

\[
\text{selected first-ratio finiteness}
\Rightarrow
\text{ParentDrop}
\Rightarrow
\text{finite same-material action}
\Rightarrow
\text{fixed }H^s\text{ continuation}.
\]
