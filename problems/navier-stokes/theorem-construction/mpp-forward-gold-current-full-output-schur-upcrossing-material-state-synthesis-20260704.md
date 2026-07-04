---
theorem_id: forward-gold-current-full-output-schur-upcrossing-material-state-synthesis-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold full-output critical transfer / affine Schur material state
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - FullOutputCriticalBellmanUpcrossingStorage.A
  - RetainedFullOutputSchurAccretivity.A
  - SchurThinMaterialSourceVariationOrHeatThickness.A
  - ActualSelectedDensityCaptureAndParentCurrentSquareFunction.A
role: >-
  Re-locks the current manual Gold edge after the WLF.60/primitive-channel
  boundary: the live Gold selector is the recombined full-output critical
  transfer, the full-output one-point parent-current identity is installed, and
  the remaining noncircular producer is a bounded-below material upcrossing
  state whose Schur-thin core reduces to actual selected-density capture,
  parent-current log-density/square-function control, and endpoint no-atom.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-output-bellman-upcrossing-storage-proof-plan-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-parent-current-admission-identity-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-paid-parent-current-span-perpendicular-category-repair-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-same-carrier-identity-primitive-channel-boundary-20260704.md
completion_truth: >-
  This note does not prove Gold closure and does not prove the bounded-below
  full-output upcrossing storage. It records the current strict reduction:
  signed full-output current identity plus paid-current category repair are
  installed support; scalar signed-current primitives and Schur residence alone
  are insufficient; the live producer is material-state upcrossing storage, with
  Schur-thin nonendpoint mass reduced to selected-density capture and
  parent-current square-function control, plus same-witness endpoint no-atom.
---

# Current full-output Schur upcrossing material-state synthesis

## 1. Physical story

The current Gold object is one parent Navier-Stokes packet before child positive
readout.  Transport carries the material history, pressure and incompressibility
choose the projected stress, viscosity supplies the only strict dissipative
margin, and the selected positive quantity must be read from the same packet
before clipping.

The selector is now the net full-output critical transfer

\[
B^{crit}(t)
=
\sum_m
-\left\langle
\Lambda^{1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\Lambda^{1/2}u_m
\right\rangle ,
\tag{FUS.1}
\]

with positivity taken after the input interactions have recombined.  Individual
input-colored positive triads are diagnostics unless a separate two-point
material current is installed.  The one-point parent-current route uses the
full-output stress.

The physical question is:

\[
\text{can positive full-output stress work keep recurring without changing a
bounded parent-known material state, paying return/motion/legal/stop/endpoint,
or spending a strict viscous fraction?}
\tag{FUS.2}
\]

That is the current form of the old affine Schur / no-free-upcrossing wall.

## 2. Installed support

The full-output one-point current identity is installed.  For parent-declared
full-output tests, the projected Navier-Stokes equation gives a signed current
read

\[
B^{crit}(t)\,dt
=
dq_{pc}
+dPaid_{\rm Hodge/collar/frame/motion/legal/stop}
+LP_{err}(t)\,dt .
\tag{FUS.3}
\]

The paid-current category repair is also installed.  A direction that has zero
paid current is fresh relative to the paid parent-current history; its first
positive entry is Bessel-payable.  Once the entry is admitted, repeated
same-coordinate production is Schur current work.  Motion, route change, return,
viscosity, legal, stop, and endpoint terms are the paid exits.

Thus the old repeated-perpendicular obstruction is gone.  The retained problem
is not "a new orthogonal direction forever."  The retained problem is one-sided:
after the full-output current has been admitted, positive variation still has
to be paid before it is used in the critical energy inequality.

## 3. The open upcrossing law

The absorption needed for Gold is

\[
\int_0^T[B^{crit}(t)]_+\,dt
\le
C_N(u_0)
+\theta\nu\int_0^T D_c(t)\,dt
+R_{\rm legal}+Stop,
\qquad 0<\theta<1,
\tag{FUS.4}
\]

where \(D_c\simeq\|\Lambda^{3/2}u\|_2^2\).  The strict margin matters: the
remaining \((1-\theta)\nu D_c\) is what feeds continuation.

The noncircular parent-state form is

\[
[dq_{pc}]_+
\le
-d\mathcal U_P
+dFresh_{\rm Bessel}^{pc}
+dSchur_{\rm retained}^{pc}
+dMotion+dReturn
+\theta\nu D_c\,dt
+dLegal+dStop+dEnd,
\tag{FUS.5}
\]

with

\[
\mathcal U_P(t)\ge -C_N(u_0)-R_{\rm legal}-Stop.
\tag{FUS.6}
\]

The storage \(\mathcal U_P\) must be a material state of the same packet:
affine Schur record, admitted frame/current state, carrier metric, route state,
pressure-Hodge/collar data, and legal/stop/endpoint ledgers.  It cannot be a
scalar primitive of the desired positive variation.

## 4. Checked obstruction to signed-current closure

The signed identity `(FUS.3)' does not imply `(FUS.4)'.  A scalar current can
return to its initial value while accumulating arbitrarily large positive
variation:

\[
q(T)-q(0)=0,
\qquad
\int_0^T[dq]_+\gg1 .
\tag{FUS.7}
\]

The same obstruction appears in a sustained-refuel test.  If a proposed storage
depends only on \(E_c\) and \(q_{pc}\), and

\[
dE_c=0,
\qquad
dq_{pc}=\nu D_c\,dt>0,
\qquad
Motion=Return=Legal=Stop=End=0,
\tag{FUS.8}
\]

then `(FUS.5)' forces the storage to decrease by
\((1-\theta)\nu D_c\,dt\).  A scalar storage independent of \(q_{pc}\) cannot
do that.  A scalar storage decreasing with \(q_{pc}\) is bounded below only if
the desired positive-current accumulation is already bounded.  That is circular.

So the signed parent-current representation is proof support only.  The proof
needs an independent material-state lower bound.

## 5. Schur-thick and Schur-thin split

For an affine Schur block, define the visibility ratio

\[
\chi_J
:=
{\langle G_J^{-1}m_J,p_J\rangle_+
\over
H_w\|c_{\theta,J}^{+}\|_2^2}.
\tag{FUS.9}
\]

On the Schur-thick branch \(\chi_J\ge\eta\), the selected square bill is paid
by the Schur pairing with an \(\eta^{-1}\) loss.  The only nonendpoint analytic
core is the retained Schur-thin branch \(\chi_J<\eta\).

First-passage Schur memory pays residence after the source has time to write a
record.  It does not pay square-large, record-small positive impulses.  The
scalar pulse model has small accumulated record and large square bill, so Schur
residence alone cannot prove the thin branch.

The needed Schur-thin estimate is

\[
\sum_{B:\chi_B<\eta}
\int_B H_w\|c_{\theta,B}^{+}\|_2^2
\le
C_\eta(E_{\rm fresh}+E_{\rm motion}+A^-+Legal+Stop+End)
+\theta\nu\sum_BD_B ,
\tag{FUS.10}
\]

or the sharper same-carrier source-variation form

\[
\sum_{B:\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|\,
{\rm Var}_B^P(G_B^{-1/2}p_B)
\le
\theta\nu\sum_BD_B
+C_\eta(E_{\rm fresh}+E_{\rm motion}+A^-+Legal+Stop+End).
\tag{FUS.11}
\]

This is the physical role of "thickness": a source too thin to build Schur
residence must turn on/off, move the material frame, change pressure-Hodge or
collar state, spend return/legal/stop/endpoint, or be absorbed with strict
viscous margin.

## 6. Pushdown below Schur-thin

The source-frontier pushdown says the retained Schur-thin nonendpoint core has
already been reduced further.  After admitted full-output current update, split
visible and invisible reads.  Visible mass is Schur-paid.  Invisible retained
children must become lawful stopped children or same-witness endpoint material.
First-hit stopping makes the interval parent-announced; first-exit interiors are
harmonic-Cauchy paid; fixed-core replay routes through the parent-known harmonic
return score and root geometry.

Raw root geometry still loses to the half-tail.  The original-data producer is
therefore:

\[
d\mu_{\rm root}^{sel}
\le
C f_{pc}\,d\mathcal R_{\rm root}
+dPaid+dEnd,
\tag{FUS.12}
\]

together with a parent-current log-density equation

\[
\Delta_Q\log f_{pc}
=
\ell_Q(\Delta_QZ_{pc})
-\psi_Q+e_Q+\Delta_Q^{lab},
\qquad \|\ell_Q\|\le C,
\tag{FUS.13}
\]

and the stopped square-function bound

\[
\sup_{P'\subset P}
{1\over\mathcal R_{\rm root}(P')}
\sum_{Q\subset P'}
\left(
\|\Delta_QZ_{pc}\|_{\mathcal H_P}^2
+|e_Q|^2
+|\Delta_Q^{lab}|^2
\right)\mathcal R_{\rm root}(Q)
\le C_N(u_0)+R_{\rm legal}(P')+Stop(P').
\tag{FUS.14}
\]

John--Nirenberg/Gehring is a consumer after `(FUS.12)'--`(FUS.14)'.  It is not
the producer.  The physical content is that raw energy gives square mass, while
the parent-current log-density square function limits how many selected future
arrangements that same mass can become.

## 7. Current proof truth

Installed proof/support:

\[
\text{net full-output carrier choice}
+\text{one-point full-output current identity}
+\text{paid-current first-entry/retained-current category repair}.
\tag{FUS.15}
\]

Checked obstruction:

\[
\text{signed current identity or scalar current Bellman}
\not\Rightarrow
\text{one-sided positive upcrossing absorption}.
\tag{FUS.16}
\]

Strict reduction:

\[
\begin{aligned}
&\text{actual selected-density capture `(FUS.12)'}\\
&+\text{parent-current log-density equation `(FUS.13)'}\\
&+\text{root square-function bound `(FUS.14)'}\\
&+\text{same-witness endpoint no-atom/no-replay}\\
&\Longrightarrow
\text{Schur-thin payment `(FUS.10)'--`(FUS.11)'}\\
&\Longrightarrow
\text{bounded-below material upcrossing storage `(FUS.5)'--`(FUS.6)'}\\
&\Longrightarrow
\text{positive critical transfer absorption `(FUS.4)'} .
\end{aligned}
\tag{FUS.17}
\]

The WLF.60 primitive-channel boundary remains relevant as physical custody
support: pre-readout event ownership is necessary.  It is not the current
manual Gold edge by itself.  The current edge uses the full-output critical
transfer of the original packet and asks for the bounded material state that
prevents positive full-output work from cycling for free.
