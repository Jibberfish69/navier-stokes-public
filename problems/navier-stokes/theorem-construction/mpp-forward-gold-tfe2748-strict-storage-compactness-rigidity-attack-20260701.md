---
theorem_id: forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701
status: strict-storage-reduction-critical-capacity-storage-open
created: 2026-07-01
problem: navier-stokes
route: forward-gold coupled pressure-viscosity-incompressibility participation law
logical_landing_node: TFE2748StrictStorageCompactnessRigidity.A
completion_truth: >-
  This note does not prove Gold closure. It narrows the open strict storage line
  TFE2748A.5 by applying the endpoint-admitted ledger correction, the exact
  parent-scale integral correction, and the existing component rigidity audit.
  After those removals, the surviving nonconsumer source is the strict
  original-data storage of the parent critical-entry source: the positive
  baseline log entropy plus the singular zero-baseline endpoint-seed capacity.
  The July 1 continuation audit further corrects the storage wording: a finite
  root critical capacity bound is not enough; the capacity must be parent-fixed
  or have paid variation so that Mcrit=Ccrit-Ecrit is a true bounded-below
  storage derivative.
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-original-data-source-theorem-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-creation.yaml
consumes:
  - TFE.2430-TFE.2459
  - TFE.2654-TFE.2672
  - TFE.2680-TFE.2696
  - TFE2748A.2-TFE2748A.21
produces:
  - TFE2748B strict-storage compactness/rigidity reduction
  - endpoint-admitted critical-source survivor statement
  - exact parent-scale integral form of the remaining storage theorem
---

# TFE2748 strict storage compactness/rigidity attack

This is a source-theorem attack, not a smoothness proof.  The object is the
same parent packet after endpoint admission: one continuous full-exchange
ledger, measured in the original packet scale space before any selected child
positive part is clipped.

## 1. Exact parent-scale object

Let \(\mathfrak S_P^{FE,\ast}\) be the stopped parent scale/transition space for
the endpoint-admitted full-exchange ledger, let \(d\mathfrak m_P^{FE,\ast}\) be
the parent-pulled measure including material Jacobian, route/collar/Hodge
weights, endpoint heat-thickness, and stopped overlap, and let
\(R_P^{FE,\ast,+}\) be the selected positive full-exchange readout density before
child clipping.  The ledger in `(TFE2748A.2)' is read as the exact integral

\[
\int_{\operatorname{Hist}(P)}d\Xi_P^{FE,\ast}
=
\int_{\mathfrak S_P^{FE,\ast}}
R_P^{FE,\ast,+}\,d\mathfrak m_P^{FE,\ast}.
\tag{TFE2748B.1}
\]

Dyadic or tree notation is lawful only as a finite-overlap quadrature of
`(TFE2748B.1)'.  A child chart may renormalize its inspected radius to one, but
the physical unit remains the parent-pulled measure in `(TFE2748B.1)'.

The strict source theorem is therefore still `(TFE2748A.5)', now read as a
statement about this parent integral:

\[
\begin{aligned}
d\Omega_P^{gen}
&\le
C_Nd\Xi_P^{FE,\ast}
+dR_{\rm legal,P}
+dStop_P,\\
d\Xi_P^{FE,\ast}
&\le
-dM_P
+d\Theta_P^0
+\vartheta\,d\Omega_P^{gen}
+dR_{\rm legal,P}
+dStop_P,
\qquad C_N\vartheta<1.
\end{aligned}
\tag{TFE2748B.2}
\]

The first line says the coupled generator clock is visible to the admitted
full-exchange ledger.  The second line is the hard direction: the admitted
positive full-exchange readout cannot feed itself faster than the same original
packet's generator clock can absorb with strict margin.

## 2. Normalized failure after endpoint admission

If `(TFE2748B.2)' fails, then after subtracting exact/telescoping material and
after routing legal and stop material, there is a stopped parent sequence
\(P_n\) such that

\[
\int d\Xi_{P_n}^{FE,\ast}=1,
\qquad
\int(d\Theta_{P_n}^0+dR_{{\rm legal},P_n}+dStop_{P_n})\to0,
\tag{TFE2748B.3}
\]

and

\[
\int
\left(
d\Xi_{P_n}^{FE,\ast}
-\vartheta d\Omega_{P_n}^{gen}
\right)
\ge \eta_0>0 .
\tag{TFE2748B.4}
\]

The compactness/rigidity route is to show that every noncritical component of
this normalized mass either vanishes, is paid by a source already tending to
zero, or is the restriction of the critical-entry source below.  Then the bad
sequence has to converge to a pure critical-source storage failure.

## 3. Component removals already supplied by the repo

The reset component is conditional support, not the current source.  When a
reset edge has the parent-announced first-exit derivative representation and the
witness tubes have bounded stopped overlap, `(TFE.2448)'--`(TFE.2450)' give

\[
d\Xi^{reset}
\le
-dM^{reset}
+\vartheta_{reset}d\Omega^{gen}
+d\Theta^0+dPaid,
\tag{TFE2748B.5}
\]

with the strict coefficient coming from the weighted Cauchy/overlap estimate.
A reset that lacks this representation or overlap is a reset/legal/stop defect,
not a new source of Gold \(L^1\).

The transport/silent/frame/collar branch is also component support.  Existing
zero-cost rigidity says that, after parent subtraction and after commutator,
covector, frame, collar, Hodge, exchange, legal, and stop motion vanish,

\[
d\Xi^{tr/sil/frame}=0
\quad\text{in the zero-source stopped limit.}
\tag{TFE2748B.6}
\]

The endpoint branch is no longer a side bin.  The zero-baseline endpoint trace
is admitted into the same ledger by `(TFE2748A.4)' through
\(d\Omega_P^{EP,tr}\) and \(d\rho_{crit,P}^{entry}\).  Hence a retained endpoint
square cannot be removed by invoking finite storage, and it also cannot remain
as an external residue after storage is tested.  It is part of the critical
source term in Section 4.

The retained heat-lag quotient gives a strict fraction only after all sub-lag
and zero-mode material has been admitted.  On the honest retained quotient,
`(TFE2748A.15)'--`(TFE2748A.17)' give

\[
d\Xi^{loop,ret}
\le
\vartheta_{heat}d\Omega^{gen}
+d\Theta^0+dPaid,
\qquad C_N\vartheta_{heat}<1,
\tag{TFE2748B.7}
\]

while the material excluded from the honest quotient is exactly inherited
baseline, route/reset, endpoint trace, zero mode, legal, stop, or critical-entry
material.  Thus heat-lag contraction is a consumer after admission, not the
source theorem by itself.

## 4. The surviving critical-entry source

After the removals above, the only retained source not already discharged is the
scale-native critical-entry measure identified in `(TFE.2655)':

\[
d\mathfrak Z_P^{crit}
:=
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
+d\Theta_P^0
+dPaid_P .
\tag{TFE2748B.8}
\]

The two critical-entry pieces are

\[
d\Xi_P^{crit,entry}
=
d\Xi_P^{crit,ac}
+d\Xi_P^{crit,0},
\tag{TFE2748B.9}
\]

with deterministic admissions

\[
d\Xi_P^{crit,ac}
\le C_Nd\rho_{crit,P}^{ac}+dPaid_P,
\qquad
d\Xi_P^{crit,0}
\le C_Nd\rho_{crit,P}^{entry}+dPaid_P .
\tag{TFE2748B.10}
\]

Therefore zero-source rigidity is not the missing supplier:

\[
d\mathfrak Z^{crit}=0
\Longrightarrow
d\Xi^{crit,entry}=0 .
\tag{TFE2748B.11}
\]

The missing supplier is the strict same-parent storage of the source itself:

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
-dM_P^{crit}
+d\Theta_P^0
+\vartheta_{crit}d\Omega_P^{gen}
+dPaid_P,
\tag{TFE2748B.12}
\]

with

\[
0\le M_P^{crit}\le C_N(u_0)\mathcal R(P)+Paid(P),
\qquad
C_{\rm adm}C_N\vartheta_{crit}
+C_N\vartheta_{closed}<1 .
\tag{TFE2748B.13}
\]

Here \(C_{\rm adm}\) is the admission constant in `(TFE2748B.10)' and
\(\vartheta_{closed}\) is the total strict coefficient from the already
discharged reset, transport/silent/frame, and honest heat-lag quotient branches.
The strict inequality in `(TFE2748B.13)' is the real margin bookkeeping: the
critical-source storage must leave enough room for all consumer constants after
the first line of `(TFE2748B.2)' is used.

## 5. Entropy-contraction form of the remaining theorem

The repo's current best form of `(TFE2748B.12)' is the entropy-contraction
package in `(TFE.2663)'--`(TFE.2672)'.  A parent-announced stopped critical
filtration \(\mathcal F_{P,\sigma}^{crit}\), selected before child clipping,
has positive-baseline density

\[
dA_{P,\sigma}^{crit,+}
=
f_{P,\sigma}\,dR_P^{root},
\qquad
f_{P,\sigma}
=
\mathbb E_{R_P^{root}}(f_P\mid\mathcal F_{P,\sigma}^{crit}),
\tag{TFE2748B.14}
\]

and the exact source is the entropy increment plus the singular first-entry
increment:

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
d\mathcal E_P^{crit}
+dPaid_P .
\tag{TFE2748B.15}
\]

The coupled participation law decomposes as one transaction: volume-preserving
pressure/advection/Hodge re-coordination, viscous/Stokes heat contraction, and
selector/collar/frame projection.  The first part preserves the parent root
measure, the heat part dissipates entropy, and the projection part creates the
geometric distortion term:

\[
d\mathcal E_P^{crit}
+\nu d\mathcal I_P^{crit}
\le
d\mathcal D_P^{geom}
+dPaid_P .
\tag{TFE2748B.16}
\]

The distortion theorem is mostly a consumer once the component audit is used:
bounded stopped-detector/log-carrier distortion is packed by the parent generator
clock, routed frame/collar/Hodge/selector motion is in \(d\Theta^0+dPaid\), and
the zero-baseline scale-native detector has been admitted as
\(d\rho_{crit}^{entry}\).  In that audited setting the required distortion line is

\[
d\mathcal D_P^{geom}
\le
d\Theta_P^0
+\vartheta_{geom}d\Omega_P^{gen}
+dPaid_P,
\qquad C_N\vartheta_{geom}<1,
\tag{TFE2748B.17}
\]

The remaining nonconsumer clause is stronger than a root critical capacity
bound.  Define

\[
M_P^{crit}
:=
\mathcal C_P^{crit}
-\mathcal E_P^{crit},
\qquad
0\le M_P^{crit}\le C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE2748B.18}
\]

For `(TFE2748B.18)' to be a storage, \(\mathcal C_P^{crit}\) must be
parent-fixed on the stopped history or have only paid positive variation:

\[
d\mathcal C_P^{crit}
\le
d\Theta_P^0+dPaid_P .
\tag{TFE2748B.19}
\]

The actual open source theorem is therefore

\[
\boxed{
\begin{array}{c}
\text{construct \(\mathcal F_{P,\sigma}^{crit}\) and \(\mathcal C_P^{crit}\)
from the original packet before clipping,}\\
\text{prove `(TFE2748B.17)' as a component/entry-admission consumer,}\\
\text{and prove the capacity variation law `(TFE2748B.19)'.}
\end{array}}
\tag{TFE2748B.20}
\]

Equations `(TFE2748B.15)'--`(TFE2748B.20)' imply
`(TFE2748B.12)'.  With the component removals in Section 3 and the admissions in
Section 4, `(TFE2748B.12)' implies the endpoint-admitted strict storage
`(TFE2748B.2)'.

## 6. Compactness equivalent of the same remaining theorem

The compactness/rigidity wording is equivalent only when the zero-source phrase
includes the exact critical-entry source.  A genuine normalized failure of the
remaining theorem is a sequence with

\[
\int(d\rho_{crit,P_n}^{ac}+d\rho_{crit,P_n}^{entry})=1,
\qquad
\int(d\Theta_{P_n}^0+dPaid_{P_n}+dR_{{\rm legal},P_n}+dStop_{P_n})\to0,
\tag{TFE2748B.21}
\]

and

\[
\int
\left(
d\rho_{crit,P_n}^{ac}
+d\rho_{crit,P_n}^{entry}
-\vartheta_{crit}d\Omega_{P_n}^{gen}
\right)
\ge \eta_0>0 .
\tag{TFE2748B.22}
\]

The needed compactness theorem is not another silent-source theorem.  It is
tightness of the stopped parent critical filtration, the endpoint heat-thickness
trace, and the parent root capacity:

\[
(P_n,\mathcal F_{P_n,\sigma}^{crit},d\mathfrak Z_{P_n}^{crit})
\Longrightarrow
(P_\infty,\mathcal F_{\infty,\sigma}^{crit},d\mathfrak Z_\infty^{crit}),
\tag{TFE2748B.23}
\]

with the entropy-contraction and distortion inequalities passing to the limit.
Then `(TFE2748B.17)'--`(TFE2748B.19)' contradict `(TFE2748B.22)'.

So the compactness formulation and the direct storage formulation have the same
remaining content:

\[
\boxed{
\begin{array}{c}
\text{parent critical filtration tightness}\\
+\text{root critical capacity paid-variation law}\\
+\text{strict geometric-distortion domination}
\end{array}
\Longleftrightarrow
\text{critical-source storage `(TFE2748B.12)'.}
}
\tag{TFE2748B.24}
\]

The direct storage form is more honest for the current proof surface because it
names the actual physical supplier.  The compactness form is useful as a
contradiction test for whether a proposed supplier has left a zero-cost
critical feedback cycle.

## 7. Current truth state

This note narrows `(TFE2748A.5)' but does not prove it.  The endpoint correction
has moved the zero-baseline endpoint pulse into the same parent ledger; the
exact-scale correction has removed the fake child-count summation; and the
component rigidity audit removes reset, silent/frame, route, legal, stop, and
honest heat-lag quotient branches as independent sources.

The remaining Gold source theorem is:

\[
\boxed{
\begin{array}{c}
\text{prove the parent critical filtration and capacity variation law}\\
\text{`(TFE2748B.19)' from the original coupled packet, before child clipping;}\\
\text{use the component audit to supply `(TFE2748B.17)';}\\
\text{then `(TFE2748B.12)' gives `(TFE2748A.5)', hence terminal-uniform }L^1.
\end{array}}
\tag{TFE2748B.25}
\]

Gold smoothness remains conditional on this source theorem.  This file is a
strict reduction of the MPP wall, not a closure claim.

## 8. Capacity-variation pressure test

The reason `(TFE2748B.19)' is now explicit is simple.  The entropy chain gives

\[
d\rho_{crit}^{ac}+d\rho_{crit}^{entry}
\le d\mathcal E_P^{crit}+dPaid_P .
\tag{TFE2748B.26}
\]

The heat/participation step plus component distortion audit gives

\[
d\mathcal E_P^{crit}
\le
d\Theta_P^0+\vartheta d\Omega_P^{gen}+dPaid_P .
\tag{TFE2748B.27}
\]

This proves a raw positive-source estimate, but it does not yet provide the
bounded-below storage derivative in `(TFE2748B.12)'.  If

\[
M_P^{crit}:=\mathcal C_P^{crit}-\mathcal E_P^{crit},
\tag{TFE2748B.28}
\]

then

\[
d\mathcal E_P^{crit}
=
-dM_P^{crit}
+d\mathcal C_P^{crit}.
\tag{TFE2748B.29}
\]

Substituting `(TFE2748B.29)' into `(TFE2748B.26)' gives the desired storage only
after the extra capacity term is paid:

\[
d\rho_{crit}^{ac}+d\rho_{crit}^{entry}
\le
-dM_P^{crit}
+d\mathcal C_P^{crit}
+dPaid_P .
\tag{TFE2748B.30}
\]

So a finite bound

\[
0\le \mathcal C_P^{crit}\le C_N(u_0)\mathcal R(P)+Paid(P)
\tag{TFE2748B.31}
\]

is not enough by itself.  The proof also needs

\[
[d\mathcal C_P^{crit}]_+
\le
d\Theta_P^0+dPaid_P,
\tag{TFE2748B.32}
\]

or the stronger stopped-history statement that \(\mathcal C_P^{crit}\) is fixed
by the original parent packet before the critical filtration is read.  This is
the exact mathematical form of "the parent packet supplies the state counter."

Three tempting shortcuts are circular:

\[
\begin{array}{ll}
\text{future selected tail:}
&\mathcal C(t)=\int_t^{T_*}d\rho_{crit}^{+}
\quad\text{defines the desired \(L^1\) bound as storage;}\\[1mm]
\text{future generator clock:}
&\mathcal C(t)=\int_t^{T_*}d\Omega^{gen}
\quad\text{uses the storage theorem being proved;}\\[1mm]
\text{raw energy reserve:}
&\mathcal C(t)=E_0
\quad\text{misses the scale-native half-tail unless critical atoms are packed.}
\end{array}
\tag{TFE2748B.33}
\]

Thus the sharpened noncircular theorem is:

\[
\boxed{
\begin{array}{c}
\texttt{OriginalCriticalCapacityVariation.A:}\\
\text{construct a parent-known critical capacity before clipping, prove}
\ [d\mathcal C^{crit}]_+\le d\Theta^0+dPaid,\\
\text{and prove the zero-baseline/positive-baseline critical atoms are measured
by that same capacity.}
\end{array}}
\tag{TFE2748B.34}
\]

This is smaller than the Gold \(L^1\) theorem but still not supplied by standard
energy or by endpoint admission alone.  Endpoint admission says the endpoint
seed belongs in the ledger.  `(TFE2748B.34)' says the original ledger has a
bounded-below capacity whose positive variation pays the creation of those
critical states.

## 9. Integrated diagnostic audit

The current repo state is now clean at the level of proof topology.  The live
source theorem is exactly `(TFE2748B.34)'.  No checked surface proves it from
arbitrary original data.  The installed support has the following roles:

\[
\begin{array}{ll}
\text{endpoint admission:}
&\text{the zero-baseline endpoint trace is entered into }d\Xi_P^{FE,\ast}
\text{ before storage is invoked;}\\[1mm]
\text{exact parent scale:}
&d\Xi_P^{FE,\ast}\text{ is the integral `(TFE2748B.1)', not a child-unit sum;}\\[1mm]
\text{distortion / route / reset / stop:}
&\text{consumer terms paid by }d\Theta_P^0+dPaid_P;\\[1mm]
\text{downstream closure:}
&\text{terminal no-jump, finite selected action, full clock, fixed }H^s
\text{ continuation,}\\
&\text{and classical relaunch consume terminal-uniform }L^1
\text{ conditionally.}
\end{array}
\tag{TFE2748B.35}
\]

Thus there is no second downstream Gold wall hiding behind `(TFE2748B.34)'.
Assuming `(TFE2748B.34)' as an original-data theorem, the downstream chain is
already a consumer chain.  The obstruction is upstream and singular:

\[
\boxed{
\begin{array}{c}
\text{prove, before child clipping, that the original parent packet supplies}\\
\text{a critical capacity whose positive opening is only material motion or paid
route/ledger motion:}\\[1mm]
[d\mathcal C_P^{crit}]_+
\le d\Theta_P^0+dPaid_P .
\end{array}}
\tag{TFE2748B.36}
\]

Equivalently, in the full-exchange language, prove the strict no-self-feeding
storage for the endpoint-admitted ledger:

\[
\begin{aligned}
d\Omega_P^{gen}
&\le C_Nd\Xi_P^{FE,\ast}+dR_{\rm legal,P}+dStop_P,\\
d\Xi_P^{FE,\ast}
&\le
-dM_P+d\Theta_P^0+\vartheta d\Omega_P^{gen}
+dR_{\rm legal,P}+dStop_P,
\qquad C_N\vartheta<1 .
\end{aligned}
\tag{TFE2748B.37}
\]

These are the same remaining source theorem seen in two coordinates.  The
capacity coordinate says that the state counter cannot open for free.  The
full-exchange coordinate says the same coupled packet cannot feed its own
selected generator clock with a unit return after endpoint, inherited baseline,
route, reset, legal, and stop material have been removed.

The physical picture is therefore: pressure/Hodge may re-coordinate the whole
parent signal immediately, viscosity/Stokes gives heat-time thickness before a
velocity/strain readout is counted, and selected child tests are lawful only as
pulled-back parent covectors.  What is still unproved is the strict one-way
inequality saying that this same coupled transaction has no zero-cost retained
feedback loop.  No dyadic counting correction, endpoint admission, Schur/Bessel
no-recount, or downstream no-jump relay supplies that inequality by itself.

## 10. Preallocated-reserve normalization

The capacity in \(M_P^{crit}=\mathcal C_P^{crit}-\mathcal E_P^{crit}\) must be a
preallocated parent reserve, not the cumulative amount of selected critical
material already observed.  If \(\mathcal C_P^{crit}\) is defined as the
accumulated selected entries, then \(d\mathcal C_P^{crit}\) is just the source
being estimated and `(TFE2748B.36)' becomes circular.

The noncircular normalization is:

\[
\mathcal C_P^{crit}(\tau)
:=
\mathfrak C_P^{root}\bigl(\mathfrak S_{P,\tau}^{crit}\bigr)
+\mathcal C_P^{geom}(\tau),
\tag{TFE2748B.38}
\]

where \(\mathfrak C_P^{root}\) is a parent-root critical capacity measure built
from the original coupled packet before child clipping, \(\mathfrak
S_{P,\tau}^{crit}\) is the parent-announced critical window in the stopped
material frame, and \(\mathcal C_P^{geom}\) records only paid changes of chart,
collar, Hodge frame, selector, stop, legal, or reselection geometry.  The spent
critical material is not added to \(\mathcal C_P^{crit}\); it is recorded in
\(\mathcal E_P^{crit}\).  Thus

\[
M_P^{crit}
=
\mathcal C_P^{crit}-\mathcal E_P^{crit}
\tag{TFE2748B.39}
\]

is literally the unspent selected-critical reserve of the same parent packet.

With this normalization, `(TFE2748B.36)' follows from two smaller statements.
First, every positive-baseline log atom and zero-baseline endpoint-seed atom must
be admitted to the fixed parent reserve before clipping:

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
d\mathcal E_P^{crit}
+dPaid_P,
\qquad
0\le \mathcal E_P^{crit}\le \mathcal C_P^{crit}+Paid_P .
\tag{TFE2748B.40}
\]

Second, the parent critical window cannot open except by visible material motion:

\[
\bigl[d\,\mathfrak C_P^{root}(\mathfrak S_{P,\tau}^{crit})
+d\mathcal C_P^{geom}(\tau)\bigr]_+
\le
d\Theta_P^0+dPaid_P .
\tag{TFE2748B.41}
\]

Then

\[
d\mathcal E_P^{crit}
=
-dM_P^{crit}+d\mathcal C_P^{crit}
\le
-dM_P^{crit}+d\Theta_P^0+dPaid_P,
\tag{TFE2748B.42}
\]

which is the bounded-below storage derivative needed in `(TFE2748B.12)'.

So the proof is not looking for a moving child count.  It is looking for an
original parent reserve measure \(\mathfrak C_P^{root}\) whose window is fixed in
the stopped material frame up to paid geometry.  First entries spend that reserve
by increasing \(\mathcal E_P^{crit}\); they do not open new capacity.  Any proof
that lets a child-selected event enlarge \(\mathcal C_P^{crit}\) after the
positive part is read has put the parent package on the wrong side of the
equation.

The sharpened source theorem is therefore:

\[
\boxed{
\begin{array}{c}
\texttt{PreallocatedParentCriticalReserve.A:}\\
\text{construct \(\mathfrak C_P^{root}\) before child clipping, prove the atom
admission `(TFE2748B.40)',}\\
\text{and prove the paid-window-variation law `(TFE2748B.41)' from the original
coupled packet.}
\end{array}}
\tag{TFE2748B.43}
\]

This is equivalent to `OriginalCriticalCapacityVariation.A' but removes the last
possible ambiguity in the word "capacity."  Capacity is the original packet's
available critical reserve; \(\mathcal E^{crit}\) is what the packet has spent;
\(M^{crit}\) is what remains.

## 11. Noncircular proof fork

The preallocated-reserve normalization leaves exactly two possible proof
methods.  Both have to keep the selected child readout downstream of the parent
reserve.

The direct method is a BV chain-rule construction.  Build a parent map
\(\Phi_P\) and a root measure \(dR_P^{root}\), both determined by the stopped
original coupled packet, so that

\[
\mathfrak C_P^{root}(\mathfrak S_{P,\tau}^{crit})
=
R_P^{root}\bigl(\Phi_P^{-1}\mathfrak S_{P,\tau}^{crit}\bigr)
\tag{TFE2748B.44}
\]

and the critical window moves only by material/frame/collar/Hodge/selector
motion already measured by \(d\Theta_P^0+dPaid_P\).  Then the BV transport
formula gives

\[
\bigl[d\,\mathfrak C_P^{root}(\mathfrak S_{P,\tau}^{crit})\bigr]_+
\le
R_P^{root}\bigl(|D_t^P\mathbf 1_{\Phi_P^{-1}\mathfrak S_{P,\tau}^{crit}}|_+\bigr)
\le d\Theta_P^0+dPaid_P .
\tag{TFE2748B.45}
\]

This proves `(TFE2748B.41)' only if \(\Phi_P\), \(R_P^{root}\), and
\(\mathfrak S_{P,\tau}^{crit}\) are all parent-announced before positive
clipping.  Defining any one of them from the set of children whose positive
readout has already fired makes `(TFE2748B.45)' circular.

The compactness method is the corresponding no-free-window-opening contradiction.
Assume `(TFE2748B.41)' fails.  After normalization there are stopped packets
\(P_n\) such that

\[
\bigl[d\,\mathfrak C_{P_n}^{root}
(\mathfrak S_{P_n,\tau}^{crit})
d\mathcal C_{P_n}^{geom}\bigr]_+=1,
\qquad
d\Theta_{P_n}^0+dPaid_{P_n}\to0 .
\tag{TFE2748B.46}
\]

A successful compactness proof must extract a stopped parent limit in which the
root measure and critical windows still carry positive opening.  But the
vanishing motion term freezes the parent map and window in that limit, so a
parent-announced reserve has no positive variation:

\[
D_t^P\Phi_P=0,\qquad
D_t^P\mathfrak S_{P,\tau}^{crit}=0
\quad\Longrightarrow\quad
d\,\mathfrak C_P^{root}(\mathfrak S_{P,\tau}^{crit})=0 .
\tag{TFE2748B.47}
\]

Thus the only compactness gap is tightness/nondegeneracy of the selected parent
windows: the normalized positive opening must not disappear into a zero-thickness
or escaping high-weight detector while the fixed parent carrier converges to
zero.  That tightness is the compactness form of the same preallocated-reserve
theorem, not an independent downstream Gold wall.

So the current proof attack is exact.  Prove either the direct BV chain-rule
construction `(TFE2748B.44)'--`(TFE2748B.45)' from the original coupled packet, or
prove the compactness/tightness contradiction `(TFE2748B.46)'--`(TFE2748B.47)'.
Either route supplies `(TFE2748B.41)', then `(TFE2748B.42)', then the
terminal-uniform Gold \(L^1\) line.

## 12. BV/coarea reduction to the root entropy producer

The direct BV fork becomes noncircular only after the parent window is represented
by a parent-announced score.  Write

\[
\mathfrak S_{P,\lambda}^{crit}(t)
=
\{z\in X_P:\ a_P(t,z)>\lambda\},
\qquad
\mathcal C_{P,\lambda}^{crit}(t)
=
\int_{X_P}\mathbf 1_{\{a_P(t,z)>\lambda\}}\,dR_P^{root}(z),
\tag{TFE2748B.48}
\]

where \(X_P\), \(dR_P^{root}\), and \(a_P\) are fixed by the stopped original
coupled packet before the child positive part is read.  The coarea/transport
formula gives, modulo paid chart/collar/Hodge/selector motion,

\[
\bigl[d\mathcal C_{P,\lambda}^{crit}\bigr]_+
\le
\int_{\{a_P=\lambda\}}
{(D_t^Pa_P)_+\over |\nabla_{R}a_P|}
\,d\sigma_{R}
+d\Theta_P^0+dPaid_P .
\tag{TFE2748B.49}
\]

Layer-cake with the critical selected weight \(w(\lambda)\) then yields

\[
\int_0^\infty
w(\lambda)\bigl[d\mathcal C_{P,\lambda}^{crit}\bigr]_+\,d\lambda
\le
\int_{X_P}w(a_P)(D_t^Pa_P)_+\,dR_P^{root}
+d\Theta_P^0+dPaid_P .
\tag{TFE2748B.50}
\]

Thus BV geometry itself is only the conversion from window motion to a parent
score-variation integral.  The actual PDE input is the strict root variation
bound

\[
\int_{X_P}w(a_P)(D_t^Pa_P)_+\,dR_P^{root}
\le d\Theta_P^0+dPaid_P ,
\tag{TFE2748B.51}
\]

or equivalently the root Carleson/BMO/log-amplification theorem that gives the
selected-density entropy telescope.  This is the same producer isolated in the
active-capacity and entropy-capacity surfaces: deterministic Bellman deletion
starts after `(TFE2748B.51)' supplies the parent score with finite root
variation.

The circularity test is now exact.  If \(a_P\) is defined as the child-selected
positive readout, then \(D_t^Pa_P\) is the source measure
\(d\rho_{crit,P}^{ac}+d\rho_{crit,P}^{entry}\), and `(TFE2748B.50)' simply
rewrites the \(L^1\) bill being proved.  If \(a_P\) is a parent carrier built
from the full coupled packet, then `(TFE2748B.51)' is a genuine original-data
PDE theorem: it must prove that positive active-window opening is root-recorded
material motion, not a fresh child-created capacity.

So the direct BV fork does not create a third wall.  It reduces
`PreallocatedParentCriticalReserve.A' to:

\[
\boxed{
\begin{array}{c}
\text{construct a parent-announced active score }a_P\text{ for the coupled packet,}\\
\text{prove the weighted positive root-variation bound `(TFE2748B.51)',}\\
\text{then use coarea/layer-cake `(TFE2748B.48)'--`(TFE2748B.50)' to obtain}
\ (TFE2748B.41).
\end{array}}
\tag{TFE2748B.52}
\]

This matches the older entropy-capacity chain: root entropy/log-amplification
production is the PDE supplier; good-lambda, reverse Holder, Bellman deletion,
no-recount, and terminal no-jump are consumers after that supplier is installed.

## 13. Stopped-tree form of the same supplier

The differential score-variation line `(TFE2748B.51)' has a stopped-tree form.
Let the selected full-packet density before descendant tail summation be

\[
dA_P^{sel}=f_P\,dR_P^{orig},
\qquad
a_Q=\log {f_Q\over f_{\operatorname{par}(Q)}} .
\tag{TFE2748B.53}
\]

The parent active score is noncircular only if the log-ratio \(a_Q\) is carried
by a stopped record of the original coupled packet:

\[
a_Q
=
\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q,
\tag{TFE2748B.54}
\]

where \(Z^S\) is the parent-known selected record of the full
pressure-Hodge-strain-frame/full-output stress packet before positive clipping.
The source theorem is the root Carleson/log-amplification bound

\[
\sup_{P'\subseteq P}
{1\over R_P^{orig}(P')}
\sum_{Q\subseteq P'}
\left(\|\Delta_QZ^S\|_{\mathcal H}^2+|e_Q|^2\right)R_P^{orig}(Q)
\le
C_N(u_0)+{Paid(P')\over R_P^{orig}(P')}.
\tag{TFE2748B.55}
\]

Once `(TFE2748B.55)' is proved, the deterministic entropy chain is already
available.  With

\[
\mathcal H(P)
=
\int_P f_P\log {f_P\over (f_P)_P}\,dR_P^{orig},
\tag{TFE2748B.56}
\]

the exact martingale chain rule gives

\[
\mathcal H(P)
=
\sum_{Q\in ch(P)}\mathcal H(Q)
+
\sum_{Q\in ch(P)}
f_QR_P^{orig}(Q)
\log {f_Q\over f_P}.
\tag{TFE2748B.57}
\]

Therefore the high-ratio selected part satisfies

\[
\sum_{\substack{Q\in ch(P)\\ f_Q\ge2f_P}}
f_QR_P^{orig}(Q)
+
{1\over\log2}\sum_{Q\in ch(P)}\mathcal H(Q)
\le
{1\over\log2}\mathcal H(P),
\tag{TFE2748B.58}
\]

up to the already routed lower-ratio, reuse, return, reset, motion, legal, stop,
and endpoint terms.  This is the stopped-tree version of
`(TFE2748B.51)'--`(TFE2748B.52)': the positive selected count is finite because
high-ratio child reads spend parent entropy.

The remaining original-data work is now not a Bellman or coarea problem.  It is
exactly:

\[
\boxed{
\begin{array}{c}
\text{construct the full-packet stopped carrier }Z^S\text{ from the coupled NS
packet,}\\
\text{prove the log-amplification representation `(TFE2748B.54)',}\\
\text{prove the root Carleson bound `(TFE2748B.55)' with paid selector/order-lock
errors.}
\end{array}}
\tag{TFE2748B.59}
\]

This is equivalent, in stopped-tree language, to the parent active-score
root-variation supplier `(TFE2748B.51)'.  Without `(TFE2748B.59)', a proposed
capacity can still be the forbidden descendant-tail storage or a passive
heat-square capacity defeated by the half-tail.

## 14. Current-factorization pushdown of the stopped carrier theorem

The stopped carrier theorem `(TFE2748B.59)' is not an abstract Hilbert/BMO
problem once the selected source is kept as a same-material current.  On a
stopped packet \(S\), the noncircular source form is

\[
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal},
\tag{TFE2748B.60}
\]

where \(J^S\) is the routed participation current of the original coupled
pressure-viscosity-incompressibility-velocity packet before scalar positive
selection.  Its coordinates include the pressure-visible current,
silent/exchange current, reset/order-lock current, collar/turnstile/covector
current, and legal lower-order current.  The stopped pressure-Hodge lift is

\[
Z^S=T_S\nu^S,\qquad T_S=\nabla_A L_A^{-1}
\tag{TFE2748B.61}
\]

or the equivalent stopped martingale/Hodge transform.  If `(TFE2748B.60)' is
available, then

\[
T_S(D_AJ^S)=\Pi_{\nabla,A}J^S,
\tag{TFE2748B.62}
\]

so the transform side is a bounded Hodge projection, up to cutoff collar,
legal, and stop errors:

\[
\sum_{Q\subseteq P'}
\|\Delta_QZ^S\|_{\mathcal H}^2 R_P^{orig}(Q)
\le
C\int_{\widehat P'}|J^S|^2\,dR_P^{orig}
+CStop(\widehat P')+CR_{\rm legal}(\widehat P').
\tag{TFE2748B.63}
\]

Thus defining \(Z^S=T_S\nu^S\) is lawful only after the source has been routed
as `(TFE2748B.60)'.  It does not by itself prove `(TFE2748B.55)'.  The remaining
current theorem is

\[
\sup_{P'\subseteq P}
{1\over R_P^{orig}(P')}
\left[
\int_{\widehat P'}|J^S|^2\,dR_P^{orig}
+Stop(\widehat P')+R_{\rm legal}(\widehat P')
\right]
\le C_N(u_0).
\tag{TFE2748B.64}
\]

There is still a separate selected-readout condition.  The selected density
must be a nondegenerate readout of that same carrier, or the readout failure
must be paid by selector motion, order-lock gap, reselection, legal, or stop:

\[
\left|\log {f_Q\over f_{\operatorname{par}(Q)}}\right|
\le
C\|\Delta_QZ^S\|_{\mathcal H}
+e_Q^{sel}+e_Q^{ol}+e_Q^{legal},
\tag{TFE2748B.65}
\]

with the \(e\)-terms Carleson-packed by paid material.  Combining
`(TFE2748B.63)'--`(TFE2748B.65)' gives the root Carleson/log-amplification
bound `(TFE2748B.55)'.

The checked current-route surfaces therefore push `(TFE2748B.59)' one layer
down to:

\[
\boxed{
\begin{array}{c}
\text{route the selected source as the same-material divergence current
`(TFE2748B.60)',}\\
\text{prove stopped routed-current Carleson `(TFE2748B.64)' from original data,}\\
\text{prove selector-carrier nondegeneracy or paid reselection `(TFE2748B.65)'.}
\end{array}}
\tag{TFE2748B.66}
\]

The nonduplicate hard part is `(TFE2748B.64)' in the selected critical metric.
In the existing source language it is the same theorem as
`StoppedSelectorPredictableWeight.A' /
`OriginalHistoryParentPredictableFreshInnovationCarleson.A' /
`NativeBirthChargePacking.A': the active weight attached to a first selected
birth must be parent-predictable before the fresh projected current increment
is read, and those weighted fresh innovations must square-pack in the original
material history.  Without that predictability/current-Carleson estimate, the
half-tail remains possible in the proof language even though the formal
Hilbert transform and martingale entropy consumers are available.

## 15. Continuous critical-entry storage replaces routed-current wording

The current-route phrase in `(TFE2748B.64)' is still too coarse unless it is
read in the exact parent-measure sense.  The selected \(L^1\) object is not a
sum of child-normalized units.  For a stopped parent \(P\), there is one
parent-pulled active space \(\mathfrak S_P\), one parent measure
\(d\mathfrak m_P\), and one before-clipping selected readout \(R_P^+\):

\[
A_P^{sel,+}
=
\int_{\mathfrak S_P}R_P^+\,d\mathfrak m_P .
\tag{TFE2748B.67}
\]

With

\[
N_P(\lambda)
=
\mathfrak m_P(\{R_P^+>\lambda\}),
\tag{TFE2748B.68}
\]

this is equivalently the layer-cake identity

\[
A_P^{sel,+}
=
\int_0^\infty N_P(\lambda)\,d\lambda .
\tag{TFE2748B.69}
\]

Dyadic shells, stopped trees, and endpoint atom sums are lawful only as
finite-overlap quadrature of `(TFE2748B.67)'.  The parent measure, heat
thickness, Jacobian, selected density, and critical scale weight must already be
inside \(d\mathfrak m_P\).  A raw sum over zoomed child units is a moving-unit
error.

The exact before-clipping ledger is the full-exchange active-transit measure

\[
d\Xi_P^{FE,act}
=
d\Xi_P^{root}
+d\Xi_P^{Ent}
+d\Xi_P^{tower}
+d\Xi_P^{LH}
+d\Xi_P^{route}
+dPaid_P ,
\tag{TFE2748B.70}
\]

where the components are, respectively, the root generator/selected chart
action, time-thick endpoint or inherited material, signed tower partner,
low-high first-entry detector, and routed frame/collar/Hodge/reset/reselection/
return/legal/stop material.  The generator comparison and strict storage are

\[
d\Omega_P^{gen}
\le
C_Nd\Xi_P^{FE,act}+dPaid_P ,
\tag{TFE2748B.71}
\]

and

\[
d\Xi_P^{FE,act}
\le
-dM_P
+d\Theta_P^0
+\vartheta\,d\Omega_P^{gen}
+dPaid_P,
\qquad
C_N\vartheta<1,
\qquad
0\le M_P\le C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE2748B.72}
\]

Absorbing `(TFE2748B.71)'--`(TFE2748B.72)' gives the local stopped generator
Carleson estimate

\[
\int_{\operatorname{Hist}(P')}d\Omega_{P'}^{gen}
\le
C_N(u_0)\mathcal R(P')+Paid(P')
\qquad(P'\preceq P).
\tag{TFE2748B.73}
\]

Then `(TFE2748B.64)' is a projection of `(TFE2748B.73)', and
`(TFE2748B.65)' is a selected-log readout consumer: fixed stopped charts read
the parent carrier, and moving chart/label/order-lock failures are paid by
full-exchange, reselection, legal, or stop material.  Thus `(TFE2748B.64)' and
`(TFE2748B.65)' are not independent bottom theorems after the continuous parent
measure has been restored.

The strict-margin failure of `(TFE2748B.72)' is forced onto the exact
critical-entry source.  Split the retained critical-entry measure as

\[
d\mathfrak Z_P^{crit}
:=
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
+d\Theta_P^0
+dPaid_P .
\tag{TFE2748B.74}
\]

Here \(d\rho_{crit}^{ac}\) is the positive-baseline log-ratio entropy source,
and \(d\rho_{crit}^{entry}\) is the zero-baseline singular endpoint-seed source.
Once these two source measures are in the parent ledger, zero-source rigidity is
immediate: \(d\mathfrak Z_P^{crit}=0\) forces the retained critical-entry
measure to vanish.

Therefore the actual arbitrary-data source theorem is the strict storage

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
-dM_P^{crit}
+d\Theta_P^0
+\vartheta\,d\Omega_P^{gen}
+dPaid_P,
\qquad
C_N\vartheta<1,
\tag{TFE2748B.75}
\]

with

\[
0\le M_P^{crit}\le C_N(u_0)\mathcal R(P)+Paid(P),
\qquad
\int_{\operatorname{Hist}(P)}d\Theta_P^0
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE2748B.76}
\]

Equivalently, the source package is:

\[
\boxed{
\begin{array}{c}
\text{construct the parent-announced critical filtration before clipping,}\\
\text{prove the entropy chain rule with singular first entry,}\\
\text{prove coupled entropy dissipation for the pressure-heat-viscous packet,}\\
\text{dominate detector/frame/Hodge/collar distortion by }d\Theta^0+\vartheta d\Omega^{gen}+dPaid,\\
\text{and prove the critical capacity has parent-fixed or paid positive variation.}
\end{array}}
\tag{TFE2748B.77}
\]

This is the sharpened TFE2748B wall.  The pressure/incompressibility part
re-coordinates the parent measure without volume gain; the heat/Stokes part
dissipates the parent entropy; and the remaining positive selected critical
entry must be either positive-baseline log entropy or zero-baseline endpoint
seed material already present in the same parent ledger.  Gold remains open
until `(TFE2748B.75)'--`(TFE2748B.77)' are proved from arbitrary original smooth
data.
