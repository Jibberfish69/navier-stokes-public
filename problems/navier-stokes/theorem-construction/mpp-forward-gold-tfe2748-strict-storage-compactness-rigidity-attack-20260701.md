---
theorem_id: forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701
status: strict-storage-reduction-critical-capacity-variation-open
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
  storage derivative. The July 1 continuation audit also records the
  detector/frame/Hodge/collar distortion line as a component consumer after the
  zero-baseline endpoint branch is admitted into the critical-entry source. The
  July 1 Markov-entropy pressure test shows that entropy dissipation would prove
  the storage only after the selected critical density is represented by a
  parent-announced positive Markov active-density equation; the current source
  surfaces prove the deterministic consumers but not that original-data
  positivity/nonanticipation equation. The July 1 no-free-upcrossing
  reconciliation pushes the same source one level lower: weighted fresh packing
  is not produced by predictability, Bessel, martingale language, or rectified
  annular flux admission. The nonconsumer source is the original packet's paid
  root measuring geometry: active weight plus parent-frame connection, generated
  before any child positive readout is clipped. The active-capacity audit below
  then lowers that phrase to its actual source theorem: a continuous
  parent-measure critical depletion/no-Zeno law for the same coupled packet,
  with derivative-exact reset, finite-band compactness, Schur/Bessel, return,
  route, legal, and stop pieces all treated as consumers. The direct
  active-density test below then isolates the remaining non-Markov residue:
  pressure/Hodge/commutator motion is sign-changing and becomes entropy
  dissipative only after its same-parent signed partner is retained or paid. The
  July 1 minimal-counterexample/descent audit then proves the deterministic
  lower-edge conversion: finite parent active thickness plus parent active
  log-density/entropy controls the positive zero-source cycle, so the remaining
  PDE supplier is exactly the stopped selector testing/current Carleson producer
  for that log-density from arbitrary original data.
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-original-data-source-theorem-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-creation.yaml
consumes:
  - TFE.2430-TFE.2459
  - TFE.2654-TFE.2672
  - TFE.2680-TFE.2696
  - TFE2748A.2-TFE2748A.24
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

The distortion theorem is a consumer once the component audit is used:
bounded stopped-detector/log-carrier distortion is packed by the parent generator
clock, routed frame/collar/Hodge/selector motion is in \(d\Theta^0+dPaid\), and
the zero-baseline scale-native detector has been admitted as
\(d\rho_{crit}^{entry}\).  This is exactly `(TFE.2673)'--`(TFE.2678)' in the
tower-feedback source file.  The resulting distortion line is

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
\bigl[d\mathcal C_P^{crit}\bigr]_+
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
\text{use the component/entry-admission audit to supply `(TFE2748B.17)',}\\
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
+\text{component distortion consumer `(TFE2748B.17)'}\\
+\text{root critical capacity paid-variation law}
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
\text{construct the parent critical filtration and capacity}\\
\text{from the original coupled packet, before child clipping;}\\
\text{use the component audit to supply `(TFE2748B.17)';}\\
\text{prove the paid positive-variation law `(TFE2748B.19)';}\\
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

This is a genuinely smaller theorem only after
\(\mathfrak C_P^{root}\), \(\mathfrak S_{P,\tau}^{crit}\), and the paid geometry
term are independently constructed from the stopped original packet.  Without
that construction, `OriginalCriticalCapacityVariation.A' is just `(TFE2748A.5)'
or `(TFE2748B.75)' in reserve notation: the same positive \(L^1\) storage wall
with a different name.

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
+d\mathcal C_{P_n}^{geom}\bigr]_+=1,
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

This matches the older entropy-capacity chain as a coordinate reduction: root
entropy/log-amplification is the proposed PDE supplier in the stopped-tree
language; good-lambda, reverse Holder, Bellman deletion, no-recount, and
terminal no-jump are consumers after that supplier is installed.  Section 15
below restores the exact continuous parent-measure object and prevents this
tree coordinate from being mistaken for the final bottom theorem.

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

In the stopped-tree coordinate, the remaining original-data work is no longer a
Bellman or coarea problem.  It appears as:

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

This is the stopped-tree face of the parent active-score root-variation supplier
`(TFE2748B.51)'.  Without `(TFE2748B.59)', a proposed capacity can still be the
forbidden descendant-tail storage or a passive heat-square capacity defeated by
the half-tail.  The later continuous-parent correction in Section 15 identifies
the actual bottom source as exact critical-entry storage, with this stopped-tree
carrier theorem only one coordinate route to that source.

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

The checked current-route surfaces give a further coordinate pushdown of
`(TFE2748B.59)':

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

At this coordinate level, `(TFE2748B.64)' is the apparent hard Carleson face in
the selected critical metric.  Section 15 corrects that reading: routed-current
Carleson, selector-carrier nondegeneracy, and paid reselection are consumers once
the exact continuous parent critical-entry storage exists.  The real source
language is that the active weight attached to a first selected birth must be
parent-predictable before the fresh projected current increment is read, and the
resulting weighted fresh innovations must be admitted into the original
critical-entry storage before child clipping.  Without that continuous
parent-entry storage, the half-tail remains possible in the proof language even
though the formal Hilbert transform and martingale entropy consumers are
available.

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
\text{insert the component distortion consumer `(TFE2748B.17)',}\\
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

## 16. Markov-entropy pressure test for the storage proof

There is one clean way the critical-capacity storage would follow.  The
before-clipping selected critical density would have to be an honest positive
parent density, not a density created after a child has already clipped a
positive readout.

Let \(f_t\ge0\) be the parent-announced selected critical density on the fixed
root reserve \((X_P,dR_P^{root})\), including the singular endpoint entry as the
measure part of \(f_t\,dR_P^{root}\).  Suppose the coupled packet produced the
active-density equation

\[
d(f_t\,dR_P^{root})
=
-\operatorname{div}_{R}(b_t f_t)\,dR_P^{root}dt
+\operatorname{div}_{R}(A_t\nabla_R f_t)\,dR_P^{root}dt
+d\sigma_P^{paid}
-d\sigma_P^{spent},
\tag{TFE2748B.78}
\]

where \(b_t\) is \(R_P^{root}\)-divergence free, \(A_t\ge0\) is the heat/Stokes
part on the retained critical quotient, and every defect in the moving Hodge,
collar, covector, selector, endpoint, route, legal, and stop structure is in
\(d\sigma_P^{paid}\).  Then the usual entropy calculation is exact:

\[
d\int_{X_P} f_t\log f_t\,dR_P^{root}
+\int_{X_P}{\langle A_t\nabla_R f_t,\nabla_R f_t\rangle\over f_t}\,dR_P^{root}dt
\le d\sigma_P^{paid}.
\tag{TFE2748B.79}
\]

The transport term drops because \(b_t\) preserves the parent measure, and the
parabolic term is dissipative.  With the singular first-entry Hardy term added
to the same entropy, `(TFE2748B.79)' would give

\[
d\mathcal E_P^{crit}
+\nu\,d\mathcal I_P^{crit}
\le
d\Theta_P^0+dPaid_P.
\tag{TFE2748B.80}
\]

If the root critical capacity is fixed in this parent measure, or if its positive
variation is paid,

\[
[d\mathcal C_P^{crit}]_+
\le d\Theta_P^0+dPaid_P,
\tag{TFE2748B.81}
\]

then \(M_P^{crit}=\mathcal C_P^{crit}-\mathcal E_P^{crit}\) satisfies

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
-dM_P^{crit}
+d\Theta_P^0
+\vartheta\,d\Omega_P^{gen}
+dPaid_P,
\qquad C_N\vartheta<1,
\tag{TFE2748B.82}
\]

after inserting the already-audited component distortion consumer
`(TFE2748B.17)' and absorbing the retained generator comparison.  Thus the
Markov-density theorem `(TFE2748B.78)' plus paid capacity variation
`(TFE2748B.81)' would prove the target storage line `(TFE2748B.75)'.

The current repo does not prove `(TFE2748B.78)' from arbitrary original smooth
data.  The Navier--Stokes velocity/strain jet is governed by the coupled
pressure-Hodge-viscous-material equation, but the selected critical density is a
nonlinear readout of that jet.  The heat/Stokes factor is positivity preserving
on a passive density; the Leray/Hodge pressure re-coordinates the coupled field
with a sign-changing operator; and the selected density is defined through
critical detectors, endpoint traces, and before-clipping readout geometry.  The
installed estimates prove that bounded detector distortion, endpoint heat-lag
normalization, no-recount, Bessel/Schur admission, and retained Poincare are
consumers.  They do not yet prove that the full selected critical density itself
evolves by the positive parent Markov equation `(TFE2748B.78)'.

The closest original NS identity is the local energy balance for a smooth
solution,

\[
\partial_t e+\nabla\cdot((e+p)u)
=
\nu\Delta e-\nu|\nabla u|^2,
\qquad e={1\over2}|u|^2,\qquad \nabla\cdot u=0.
\tag{TFE2748B.84}
\]

On the whole torus, the pressure flux integrates out and viscosity dissipates.
On a selected critical parent window \(\mathfrak S_t\), however, `(TFE2748B.84)'
gives schematically

\[
d\int_{\mathfrak S_t}e\,dR_P^{root}
=
-\nu\int_{\mathfrak S_t}|\nabla u|^2\,dR_P^{root}dt
+\int_{\partial\mathfrak S_t}
\left(\nu\nabla e-(e+p)(u-v_{\mathfrak S})\right)\cdot n_{\mathfrak S}\,d\sigma dt
+dPaid_P .
\tag{TFE2748B.85}
\]

This is the physical place where pressure acts in the same coupled packet.  It
does not create volume, but it can push energy/strain information through the
boundary of the selected active window.  The positive part of that boundary flux
is exactly what a child readout would like to count as new critical entry.  The
critical-capacity storage theorem is therefore equivalent to the one-sided
window-flux bound

\[
\left[
\int_{\partial\mathfrak S_t}
\left(\nu\nabla e-(e+p)(u-v_{\mathfrak S})\right)\cdot n_{\mathfrak S}\,d\sigma dt
\right]_+
\le
d\Theta_P^0+\vartheta\,d\Omega_P^{gen}+dPaid_P,
\qquad C_N\vartheta<1,
\tag{TFE2748B.86}
\]

with \(\mathfrak S_t\) parent-announced before clipping.  The repo has proved
many routes and consumer estimates that identify which boundary motions are
paid.  It has not proved `(TFE2748B.86)' for arbitrary original smooth data.
That is the local-energy/flux form of `(TFE2748B.81)'--`(TFE2748B.83)'.

This is not a new wall beside TFE2748B.  It is the exact positive-density form of
the same wall:

\[
\boxed{
\begin{array}{c}
\text{construct a parent-announced positive active density \(f_t\) for}
\\
\text{\(d\rho_{crit}^{ac}+d\rho_{crit}^{entry}\) before clipping,}
\\
\text{prove its coupled pressure-Hodge-viscous evolution has the}
\\
\text{Markov entropy inequality `(TFE2748B.79)' with paid defects,}
\\
\text{and prove the parent critical capacity is fixed or has paid positive
variation.}
\end{array}}
\tag{TFE2748B.83}
\]

Without `(TFE2748B.83)', an entropy proof would silently replace the selected
critical readout by a passive scalar density.  With `(TFE2748B.83)', the
capacity-variation line `(TFE2748B.75)' follows by the displayed calculation.

## 17. Signed local energy gives net flux, not rectified positive flux

The local energy identity cannot be used one more time to hide the one-sided
problem.  It controls the signed net boundary exchange.  The Gold storage line
needs the positive part of the same exchange after the parent window has been
selected.

For a gauge-reduced selected parent window set

\[
\mathcal F_{\mathfrak S}^{\sharp}(t)
:=
\int_{\partial\mathfrak S_t}
\left(\nu\nabla e^\sharp
-(e^\sharp+p^\sharp)(u^\sharp-v_{\mathfrak S})\right)
\cdot n_{\mathfrak S}\,d\sigma ,
\tag{TFE2748B.87}
\]

with the sign convention inherited from `(TFE2748B.85)'.  On every stopped
interval \(J\), scalar rectification gives

\[
\int_J[\mathcal F_{\mathfrak S}^{\sharp}(t)]_+\,dt
\le
\left|\int_J\mathcal F_{\mathfrak S}^{\sharp}(t)\,dt\right|
+\int_J |(\mathcal F_{\mathfrak S}^{\sharp})'(t)|\,dt .
\tag{TFE2748B.88}
\]

The first term is the part paid by the transported local energy identity:

\[
\left|\int_J\mathcal F_{\mathfrak S}^{\sharp}(t)\,dt\right|
\le
\Delta_J\int_{\mathfrak S_t} e^\sharp\,dR_P^{root}
+\nu\int_J\int_{\mathfrak S_t}|\nabla u^\sharp|^2\,dR_P^{root}dt
+dPaid_P .
\tag{TFE2748B.89}
\]

Thus signed local energy pays net exchange and viscous drain.  The second term
in `(TFE2748B.88)' is the unspent positive-variation part:

\[
\sum_{\mathfrak S\preceq P}
\int_{J_{\mathfrak S}}
|(\mathcal F_{\mathfrak S}^{\sharp})'(t)|\,dt
\le
C_N(u_0)\mathcal R(P)
+\theta\,\int_{\operatorname{Hist}(P)}d\Omega_P^{gen}
+dPaid_P,
\qquad C_N\theta<1.
\tag{TFE2748B.90}
\]

This is exactly the gauge-reduced rectified annular flux variation theorem
already isolated as `(TFE.595)' / `SignedSmoothSamePacketCommutatorCoercivity.A'
in the tower-feedback surface.  In that notation, differentiating the reduced
annular stress-work flux produces only same-packet pressure, strain/stress,
metric/frame, collar, velocity-gradient, and viscous terms, but the sign test
finds no hidden nonnegative bulk.  Admission is proved; finite positive
variation is not.

Combining `(TFE2748B.88)'--`(TFE2748B.90)' gives the one-sided window-flux bound
`(TFE2748B.86)', hence the Markov-entropy storage `(TFE2748B.82)'.  Conversely,
without `(TFE2748B.90)', the local energy identity only says that positive and
negative pressure/stress flux cancel in the net account.  It does not prevent
the same parent transaction from oscillating with finite signed net and
unbounded positive selected variation.

The current proof state is therefore:

\[
\boxed{
\begin{array}{c}
\text{transported local energy signed net flux `(TFE2748B.89)': available as a
consumer;}\\
\text{gauge-reduced rectified flux variation Carleson `(TFE2748B.90)': not
proved from arbitrary data;}\\
\text{critical-capacity storage `(TFE2748B.75)': follows once `(TFE2748B.90)' is
proved.}
\end{array}}
\tag{TFE2748B.91}
\]

The affine-strain local no-go explains why `(TFE2748B.90)' cannot be replaced by
a finite local commutator storage built only from the finite material tower.  A
local affine strain can make the positive material-record log clock grow while
the signed local algebra remains gauge-compatible.  The missing theorem must
retain the global same-parent pressure/strain partner or prove a finite
same-material flux-variation clock; it cannot be obtained from a purely local
smooth commutator calculation.

## 18. Partner-retention surfaces confirm the same producer is open

The global pressure/strain partner files do not give an independent closing
estimate for `(TFE2748B.90)'.  They identify the same coupled parent transaction
from another side.

The theorem-creation surface for `GlobalPressureStrainPartnerRetention.A' says
that pressure-Hessian partner retention and annular stress-work identify the
carrier, but finite work of the moving low-high pump is the remaining primitive:

\[
\texttt{GlobalPressureStrainPartnerRetention.A}
\quad\leadsto\quad
\texttt{MovingLowHighPressureStrainPumpFiniteWork.A}.
\tag{TFE2748B.92}
\]

The direct pressure/strain service attempt states the same point in clock
language:

\[
\int_0^{T_*}d\Omega_N^{press/strain,partner}<\infty
\quad\Longleftrightarrow\quad
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\tag{TFE2748B.93}
\]

modulo the already legal lower-order residuals.  Thus the direct partner-service
estimate is continuation-strength.  It is not a noncircular proof of finite
positive service from original data.

The pressure-Hessian partner-retention reduction gives the signed pressure-side
classification:

\[
\text{positive pressure-Hessian service}
\le
\text{retained pressure cancellation}
+\text{legal pressure/collar service}
+d\Omega_N^{press,miss}.
\tag{TFE2748B.94}
\]

This is real same-fluid accounting: a selected positive pressure lobe either
retains its Calderon-Zygmund partner, exits through legal pressure/collar
material, or becomes missing-partner pressure clock.  The reduction does not
prove

\[
\int_0^{T_*}d\Omega_N^{press,miss}<\infty .
\tag{TFE2748B.95}
\]

So the current non-PDF Gold source picture is one obstruction in several
coordinate systems:

\[
\boxed{
\begin{array}{c}
\text{rectified annular flux variation `(TFE2748B.90)'}\\
\text{same-packet commutator/coercivity `SignedSmoothSamePacketCommutatorCoercivity.A'}\\
\text{finite full service clock \(\int_0^{T_*}\Theta_N(t)\,dt<\infty\)}\\
\text{global pressure/strain partner retention}\\
\text{moving low-high pressure/strain pump finite work}
\end{array}}
\tag{TFE2748B.96}
\]

The installed surfaces prove the equivalence/reduction map around this object
and the downstream consumers once it is granted.  They do not yet prove the
strict same-parent positive-variation estimate from arbitrary original smooth
data.

## 19. Entropy deletion is deterministic; the PDE source is weighted fresh packing

The active-entropy calculation is not the missing proof.  It is the deterministic
consumer that explains exactly why the half-tail would die after the parent
packet supplies a before-clipping active density.

Let \(f_P\,d\mathcal R_P\) be a parent-known selected active density on the
original stopped packet, and set

\[
\mathcal C_P^{ent}
:=
\int_P f_P\log(e+f_P)\,d\mathcal R_P .
\tag{TFE2748B.97}
\]

For the level pieces

\[
E_L=\{2^L\le f_P<2^{L+1}\},
\qquad
a_L=\int_{E_L}f_P\,d\mathcal R_P ,
\tag{TFE2748B.98}
\]

one has, for \(L\ge1\),

\[
\int_{E_L}f_P\log(e+f_P)\,d\mathcal R_P
\ge cL\,a_L,
\qquad
\sum_{L\ge1}a_L
\le C\mathcal C_P^{ent}.
\tag{TFE2748B.99}
\]

Thus a model half-tail \(f_L=2^L\) on mass \(\mu_L=2^{-L}/(L+1)\) has infinite
selected \(L^1\) mass and infinite active entropy:

\[
\sum_L 2^L\mu_L=\infty,
\qquad
\sum_L L\,2^L\mu_L=\infty.
\tag{TFE2748B.100}
\]

This proves the state-count deletion algebra: parent-known \(L\log L\), or any
stronger reverse-Holder bound, controls the positive selected count.  What it
does not prove is that the original coupled Navier--Stokes packet actually
produces such an \(f_P\) with root-finite entropy before the child readout is
clipped.

The current PDE source therefore sits one layer lower.  After inherited record,
spent source, return, reset, selector motion, legal, and stop material are
removed, write each fresh coupled generator increment as

\[
D_e^{new}
=
\Pi_e^{fresh}
\bigl(D_e^{comm}+D_e^{cov}+D_e^{frame}+D_e^{turn}+D_e^{scale}\bigr)
+D_e^{legal}+D_e^{stop}.
\tag{TFE2748B.101}
\]

Raw parent-subtracted orthogonality gives only

\[
\sum_{e\subset P'}\int
\|\Pi_e^{fresh}F_e(t)\|_{\mathcal H_{orig}}^2\,dt
\le C_N\|F\|_{\mathcal H_{orig}}^2+Paid(P').
\tag{TFE2748B.102}
\]

Gold needs the selected-critical weighted form

\[
\sum_{e\subset P'}\int
H_{e^-}(t)\|\Pi_e^{fresh}F_e(t)\|_{\mathcal H_{orig}}^2\,dt
\le
C_N(u_0)\mathcal R(P')+Paid(P'),
\tag{TFE2748B.103}
\]

where \(H_{e^-}\) is the active heat-scale/log-amplification weight announced by
the parent history before the fresh increment is read.  If \(H_{e^-}\) is chosen
after seeing \(\Pi_e^{fresh}F_e\), `(TFE2748B.103)' is exactly the forbidden
future-selected tail.  Parent-predictability is necessary, but it is only the
causality gate.  It prevents the child from choosing the weight after seeing the
crest; it does not by itself prove `(TFE2748B.103)'.  A predictable half-tail can
still have finite raw Hilbert mass and infinite selected-critical mass unless
the original packet supplies the weighted generator energy in the announced
parent metric.

The sharpened source theorem is therefore:

\[
\boxed{
\begin{array}{c}
\texttt{ParentPredictableWeightedFreshGeneratorPacking.A:}\\
\text{construct \(H_{e^-}\), the fresh projection, and \(F_e\) from the original
stopped packet before clipping as a causality/detector clause,}\\
\text{represent retained fresh increments by parent scale-memory source and
maximal stopped sparse witnesses,}\\
\text{prove `(TFE2748B.103)' from original weighted generator energy/full-exchange
critical depletion storage,}\\
\text{and route all future-fitted, uncharged motion, reset, reselection, legal,
stop, and terminal residue failures.}
\end{array}}
\tag{TFE2748B.104}
\]

In older labels this source package factors as the parent-predictable detector
plus `FreshSourceScaleMemoryRepresentation.A',
`FreshSourceWitnessSparsePacking.A', and
`OriginalScaleMemoryGeneratorEnergyBound.A'; after the later deduplication the
last clause is the full-exchange critical depletion storage.  Weighted
martingale/Bessel packing is a consumer once those parent objects are fixed, not
the PDE producer by itself.  Proving `(TFE2748B.104)' would supply
`(TFE2748B.55)', then the entropy deletion
`(TFE2748B.97)'--`(TFE2748B.100)', then the critical-entry storage
`(TFE2748B.75)'.  The repo does not yet prove `(TFE2748B.104)' from arbitrary
original smooth data.

## 20. No-free-upcrossing reconciliation: the parent measuring frame is the source

The tower-feedback surface already sharpened the rectified flux wall.  A fixed
transported annulus is not the remaining physical enemy: once the same
continuation-depth material record and same-packet service clock are bounded,
its stress-work flux has finite variation.  So arbitrary fixed-annulus pressure
chatter is routed.  The surviving branch is one-way access to higher selected
heat-scale states after return, reset, collar, turnstile, viscosity, legal, and
stop material have been removed.

In the notation of that surface, the free upcrossing measure is

\[
\operatorname{Up}_N^{free}
:=
\int_0^{T_*}
\sum_j [m_j^{PLS,free}(t)]_+\,dt .
\tag{TFE2748B.105}
\]

The weighted shell identity is the exact place where signed exchange stops
being enough:

\[
{d\over dt}E_w(t)+\nu D_w(t)=m_w^{PLS}(t),
\tag{TFE2748B.106}
\]

and hence

\[
d(-E_w)+[m_w^{PLS}]_+\,dt
=
\nu D_w\,dt+[-m_w^{PLS}]_+\,dt .
\tag{TFE2748B.107}
\]

This pays signed motion and return.  It does not by itself pay the positive
selected first moment.  The half-tail profile

\[
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty
\tag{TFE2748B.108}
\]

is still the exact obstruction to replacing weighted selected \(L^1\) by raw
square/current mass.

Thus `(TFE2748B.104)' should be read as a detector-plus-source package, not as
the bottom producer.  The source side is the strict good-lambda/native-reserve
law

\[
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_{L\ge0}2^LB_L<\infty,
\tag{TFE2748B.109}
\]

or equivalently a bounded-below root/native storage

\[
d\mathfrak R_N^{nat}
+d\mathfrak L_N
+c\,d\Omega_N^{full}
\le
dR_N,
\qquad
\mathfrak R_N^{nat}\ge0,
\qquad
\mathfrak L_N\ge-C_N(u_0),
\qquad
\int_0^{T_*}dR_N<\infty .
\tag{TFE2748B.110}
\]

The repo's source audit then lowers `(TFE2748B.109)'--`(TFE2748B.110)' through
the affine transition stack.  Raw spent-source geometry gives only

\[
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N\|Z_P^{orig}\|_{\mathcal H_{raw}}^2+R_{legal}(P),
\tag{TFE2748B.111}
\]

while Gold needs the selected-critical tent bound

\[
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{TFE2748B.112}
\]

Parent-known scale-memory representation and sparse witness packing are
consumer steps reducing `(TFE2748B.112)' to weighted generator energy.  The
noncircular producer is the parent root geometry/storage law.  In the notation
of the tower-feedback surface,

\[
dA_P^{root}=dA_P^{wt}+dA_P^{conn},
\tag{TFE2748B.113}
\]

where \(dA_P^{wt}\) pays admitted active-weight upcrossings and
\(dA_P^{conn}\) pays comparison in one parent frame: transported frame,
covector, selector, collar, endpoint chart, turnstile, exchange, and legal
motion.  The producer estimate is

\[
\int_{\operatorname{Hist}(P')}dA_{P'}^{root}
+
\sum_{e\subset P'}
\int H_{e^-}(t)
\|D_e^{vis}+D_e^{sil}+D_e^{ex}\|_{\mathcal H_{lift}}^2\,dt
\le
C_N(u_0)\mathcal R(P')
+R_{legal}(P')
+Stop(P').
\tag{TFE2748B.114}
\]

This is `StoppedPredictableRootGeometryCompensator.A', equivalently the
original-history bounded-below same-material service storage /
positive-critical-transfer source.  Once `(TFE2748B.114)' is available, the
parent-predictable martingale split, Bessel square packing, affine quotient
payment, branch return/reset payments, entropy deletion, and rectified flux
variation are consumers:

\[
\begin{aligned}
&\text{root geometry/storage `(TFE2748B.114)'}\\
&\quad\Longrightarrow
\text{weighted fresh generator packing `(TFE2748B.103)'}\\
&\quad\Longrightarrow
\text{active entropy deletion `(TFE2748B.97)'--`(TFE2748B.100)'}\\
&\quad\Longrightarrow
\text{critical capacity storage `(TFE2748B.75)'}\\
&\quad\Longrightarrow
\text{terminal-uniform }L^1 .
\end{aligned}
\tag{TFE2748B.115}
\]

This resolves the apparent split between the rectified annular flux wall and
the parent-weighted detector wall.  The flux derivative calculation proves that
the positive traffic is attached to the same coupled packet, and the
parent-predictable detector proves the child cannot choose the weight after
seeing the crest.  The still-open Gold source is stronger: the original
pressure-viscosity-incompressibility-velocity history must itself pay the
active scale weight and the parent-frame connection before the child is read.
Without that paid measuring frame, all children can be same-parent and still
fail the weighted \(L^1\) count by `(TFE2748B.108)'.

The current mathematical truth is therefore:

\[
\boxed{
\begin{array}{c}
\text{same-parent admission, no-recount, signed net energy, fixed-annulus
variation,}\\
\text{parent-predictable weights, martingale/Bessel packing, and entropy
deletion are consumers;}\\
\text{the unproved source is `(TFE2748B.114)' from arbitrary original smooth
data.}
\end{array}}
\tag{TFE2748B.116}
\]

## 21. Active capacity audit: root geometry reduces to critical depletion/no-Zeno

The phrase "paid root measuring geometry" is still too high-level unless its
source currency is fixed.  The tower-feedback audit identifies the exact split:
first-exit and derivative-announced reset branches really are paid by a
parent-announced interval average plus weighted Cauchy, but the fixed-core
root-upcrossing branch has no derivative average.  Predictability of the weight
therefore does not kill the half-tail `(TFE2748B.108)'.  It only prevents the
child from choosing the weight after seeing the crest.

The nonconsumer object is the continuous parent-measured critical birth/readout

\[
dA_{P,crit}^{birth,+}
 =
R_{N,P}^{crit,+}\,dm_{P}^{crit},
\tag{TFE2748B.117}
\]

where \(dm_P^{crit}\) already contains the parent pullback: scale width, heat
thickness, material Jacobian, stopped overlap, selector/covector comparison, and
the low-high interface measure before positive clipping.  Equivalently,

\[
A_{P,crit}^{birth,+}
=
\int_{\mathfrak S_P}R_{N,P}^{crit,+}\,dm_P^{crit}
=
\int_0^\infty N_P(\lambda)\,d\lambda .
\tag{TFE2748B.118}
\]

Dyadic shells are lawful only as finite-overlap quadrature of `(TFE2748B.118)'.
They are not physical child-count units.

The strict tail form is

\[
N_P(2\lambda)
\le
\theta N_P(\lambda)+B_P(\lambda),
\qquad
\theta<{1\over2},
\qquad
\int_0^\infty B_P(\lambda)\,d\lambda
\le
C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE2748B.119}
\]

Integrating `(TFE2748B.119)' gives a finite bound for the layer-cake object in
`(TFE2748B.118)' by absorption.  The storage form is the same theorem written
before layer-cake:

\[
dA_{P,crit}^{birth,+}
\le
-d\mathcal B_P^{crit}
+
\theta\,dR_P^{nat}
+
d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\mathcal B_P^{crit}\ge -C_N(u_0),
\tag{TFE2748B.120}
\]

with the endpoint no-Zeno/no-residue clause in the same parent carrier.  This is
the active capacity/depletion statement behind
`SameParentCriticalDepletionNoZeno.A',
`PositiveCriticalTransferDepletion.A',
`NativeBirthChargePacking.A', and
`PositiveCriticalTransferBound.A'.  In the original-ledger/full-exchange
coordinates it is the same source as `ActiveCapacityDeletion.A',
`FullExchangeCriticalDepletionStorage.A', `TFE.2426', and the strict
parent-measured tail law `TFE.2470'.

The direct critical identity is only signed:

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{TFE2748B.121}
\]

It supplies the native reserve coordinate
\(dR_P^{nat}\sim\nu\|\Lambda^{3/2}u\|_2^2\,dt\), but it does not supply
`(TFE2748B.120)'.  The scaling \(u=A\phi\) makes the positive critical transfer
cubic while the viscous critical reserve is quadratic, so no fixed local
finite-energy or signed-balance absorption can produce a uniform
\(\theta<1\) for arbitrary data.

The compactness attack now has an exact failure form.  If `(TFE2748B.120)' fails,
there is a stopped same-parent sequence with

\[
A_{P_n,crit}^{birth,+}=1,
\qquad
\int d\Theta_{P_n}^{0}
+Paid(P_n)+Stop(P_n)\to0,
\tag{TFE2748B.122}
\]

and with the retained critical birth escaping every claimed bounded-below
storage/depletion account.  Existing component results remove the derivative
average branch, finite-band branch, inherited transport branch, Schur/Bessel
fresh-square branch, route/return, legal, and stop material.  What remains is a
nonzero fixed-core critical endpoint-capacity defect in the same parent frame.

Thus the zero-cost rigidity needed for the normalized failure is precisely:

\[
\text{zero original source in the stopped parent frame}
\quad\Longrightarrow\quad
dA_{P,crit}^{birth,+}
\le
\theta\,dR_P^{nat}
\quad\text{on the retained face,}
\tag{TFE2748B.123}
\]

with endpoint no-Zeno/no-residue in that same carrier.  The compactness route
proves `(TFE2748B.120)' only after the normalized bad sequence is made tight in
one stopped parent frame and the zero-cost retained face satisfies
`(TFE2748B.123)'; equivalently, this is the
`FullExchangeCriticalCompactness.A' plus
`ZeroCostFullExchangeCriticalRigidity.A' no-arbitrage package, with the existing
component rigidity results serving as support.  With that package installed,
`(TFE2748B.120)' gives `(TFE2748B.119)' and the continuous \(L^1\) bound for
`(TFE2748B.118)'.  Without it, the compactness route only restates the missing
source theorem.

So the corrected proof chain is:

\[
\begin{aligned}
&\text{active critical depletion/no-Zeno `(TFE2748B.120)'--`(TFE2748B.123)'}\\
&\quad\Longrightarrow
\text{continuous parent-measured critical birth bound `(TFE2748B.118)'}\\
&\quad\Longrightarrow
\text{root measuring geometry/storage `(TFE2748B.114)'}\\
&\quad\Longrightarrow
\text{weighted fresh generator packing `(TFE2748B.103)'}\\
&\quad\Longrightarrow
\text{active entropy deletion and terminal-uniform }L^1 .
\end{aligned}
\tag{TFE2748B.124}
\]

The mathematical status after this audit is exact: the deterministic counting,
continuous-measure correction, first-exit Cauchy payment, no-recount/admission,
Schur/Bessel packing, component compactness, endpoint consumers, and downstream
Gold relays are installed as reductions or consumers.  The arbitrary-data PDE
producer still missing is the parent-known critical active-capacity
depletion/no-Zeno theorem `(TFE2748B.120)'--`(TFE2748B.123)' for the original
coupled pressure-viscosity-incompressibility-velocity packet before child
clipping.

## 22. Direct active-density test: the pressure-Hodge residue is not Markov

The remaining source theorem cannot be obtained by declaring the selected
critical readout to be a passive scalar density.  In a stopped parent frame let
\(Z_P\) denote the coupled pressure-Hodge/strain/frame carrier and let

\[
f_P=\Phi_P(Z_P)\ge0
\tag{TFE2748B.125}
\]

be the before-clipping selected active density.  The material equation has the
schematic parent form

\[
D_t^PZ_P
=
\nu\mathcal L_P^{Stokes}Z_P
+
\mathcal H_P^{press}Z_P
+
\mathcal C_P^{mat}Z_P
+
\mathcal R_P^{paid},
\tag{TFE2748B.126}
\]

where \(\mathcal H_P^{press}\) contains the Leray/Hodge pressure response and
\(\mathcal C_P^{mat}\) contains self-advection, frame, collar, covector,
commutator, selector, and endpoint chart motion.  Here
\(\mathcal L_P^{Stokes}\) is written with the heat-generator convention: after
integration by parts, the first line of `(TFE2748B.128)' contributes the
dissipative term \(-\nu\,d\mathcal I_P^{crit}\), up to paid boundary, chart, and
stopping defects.  Differentiating the selected density gives


\[
D_t^Pf_P
=
D\Phi_P(Z_P)[D_t^PZ_P]
+(D_t^P\Phi_P)(Z_P).
\tag{TFE2748B.127}
\]

Substituting `(TFE2748B.126)' into the entropy derivative yields

\[
\begin{aligned}
D_t^P\int f_P\log f_P\,dR_P^{root}
&=
\nu\int (1+\log f_P)
D\Phi_P(Z_P)[\mathcal L_P^{Stokes}Z_P]\,dR_P^{root}\\
&\quad+
\int (1+\log f_P)
D\Phi_P(Z_P)[\mathcal H_P^{press}Z_P+\mathcal C_P^{mat}Z_P]\,dR_P^{root}\\
&\quad+
\int (1+\log f_P)(D_t^P\Phi_P)(Z_P)\,dR_P^{root}
+
dPaid_P .
\end{aligned}
\tag{TFE2748B.128}
\]

The first line becomes the Fisher-dissipative term in `(TFE2748B.79)' only if
\(\Phi_P\) is already compatible with a positive Markov/Stokes density
evolution.  The second line is the obstruction.  The pressure/Hodge operator is
a Calderon-Zygmund/Leray projection face of the same vector packet; its kernel
is signed, not positivity preserving.  The commutator and moving-frame terms are
also signed.  Therefore `(TFE2748B.128)' does not imply the Markov entropy
inequality unless the positive part of that signed line keeps its opposite
same-parent partner.

Define the exact non-Markov residue

\[
d\mathfrak P_P^{+}
:=
\left[
\int (1+\log f_P)
D\Phi_P(Z_P)[\mathcal H_P^{press}Z_P+\mathcal C_P^{mat}Z_P]\,dR_P^{root}
+\int (1+\log f_P)(D_t^P\Phi_P)(Z_P)\,dR_P^{root}
\right]_+dt .
\tag{TFE2748B.129}
\]

The entropy route closes only if this residue satisfies the same-parent
orientation inequality

\[
d\mathfrak P_P^{+}
\le
d\mathfrak P_P^{ret,-}
+
\theta\,d\Omega_P^{gen}
+
d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\theta<1,
\tag{TFE2748B.130}
\]

where \(d\mathfrak P_P^{ret,-}\) is the retained opposite signed partner of the
same pressure/Hodge/material exchange before clipping.  This is the active
density version of the signed-partner retention inequality `(TFE.2298)' and the
rectified flux-variation Carleson line `(TFE2748B.90)'.

With `(TFE2748B.130)' in hand, `(TFE2748B.128)' becomes

\[
d\mathcal E_P^{crit}
+\nu\,d\mathcal I_P^{crit}
\le
d\mathfrak P_P^{ret,-}
+
\theta\,d\Omega_P^{gen}
+
d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.131}
\]

The retained negative partner is a return/depletion term in the same parent
current.  Absorbing the strict \(\theta d\Omega_P^{gen}\) part gives the
critical storage `(TFE2748B.120)' after adding the zero-baseline endpoint-seed
entry and paid capacity variation.  Conversely, without `(TFE2748B.130)', the
direct entropy proof has replaced the coupled pressure-Hodge field by a passive
positive density and has assumed the missing storage mechanism.

The direct original-data attack has therefore reached the following exact
normal form:

\[
\begin{aligned}
&\text{parent-announced active density \(f_P=\Phi_P(Z_P)\)}\\
&\quad+
\text{signed-partner retention for the pressure-Hodge/material residue
`(TFE2748B.130)'}\\
&\quad+
\text{paid capacity variation and endpoint no-Zeno}\\
&\Longrightarrow
\text{critical active-capacity storage `(TFE2748B.120)'.}
\end{aligned}
\tag{TFE2748B.132}
\]

This is still not a proof from arbitrary original smooth data.  It is the
noncircular source equation that must be proved: the selected active density may
be treated as entropy-deleting only after the same parent packet supplies the
signed pressure-Hodge/material partner retention before any positive child
readout is clipped.

## 23. Endpoint Hardy test: cancellation must be supplied by the parent packet

The endpoint singular-integral route does not change the source theorem.  It
only gives the correct analytic language for `(TFE2748B.130)'.  Let the signed
pre-clipping pressure-Hodge/material residue be

\[
d\mathfrak P_P
:=
\left[
\int (1+\log f_P)
D\Phi_P(Z_P)[\mathcal H_P^{press}Z_P+\mathcal C_P^{mat}Z_P]\,dR_P^{root}
+\int (1+\log f_P)(D_t^P\Phi_P)(Z_P)\,dR_P^{root}
\right]dt .
\tag{TFE2748B.133}
\]

The Hodge/Leray operator is Calderon-Zygmund in the stopped parent chart.  Such
operators are not strong \(L^1\) maps on arbitrary positive mass.  Their
endpoint \(L^1\) control comes from Hardy cancellation: the source must already
be written before clipping as a sum of same-parent mean-zero atoms plus paid
defects,

\[
d\mathfrak P_P
=
\sum_{\alpha\in\mathcal A(P)}c_\alpha a_\alpha
+d\mathfrak P_P^{paid}
+d\mathfrak P_P^{stop},
\qquad
\int a_\alpha\,dR_P^{root}=0,
\tag{TFE2748B.134}
\]

with atom supports, atom tests, and stopping charts all announced by the same
parent packet before the selected child readout clips the positive part.  The
needed coefficient bound is the strict parent-current form

\[
\sum_{\alpha\in\mathcal A(P)}|c_\alpha|
\le
C_N(u_0)\mathcal R(P)
+\theta\,\Omega_P^{gen}
+\Theta_P^0+Paid_P+Stop_P,
\qquad C_N\theta<1 .
\tag{TFE2748B.135}
\]

Then the endpoint theorem gives

\[
\|T_P d\mathfrak P_P\|_{L^1(P)}
\le
C\sum_{\alpha\in\mathcal A(P)}|c_\alpha|
+C(Paid_P+Stop_P),
\tag{TFE2748B.136}
\]

and each atom's mean-zero cancellation keeps its positive lobe attached to its
opposite same-parent signed partner, up to the stopped boundary and paid
defects.  In this form `(TFE2748B.136)' supplies `(TFE2748B.130)' and hence the
critical storage `(TFE2748B.120)'.

The audit of the older tower-feedback surface matches this exactly.  The
stopped Hilbert/Riesz/BMO transform, stopped \(Tb\) testing, selected
log-amplification Carleson, and current-factorization lines are consumers once
`(TFE2748B.134)'--`(TFE2748B.135)' are supplied.  They do not construct the
Hardy atoms, their cancellation, the accretive tests, or the coefficient
Carleson norm from arbitrary original smooth data.  Thus the endpoint route has
one noncircular source theorem:

\[
\boxed{
\texttt{ParentHardyAtomicPressureHodgePartnerRetention.A}
}
\tag{TFE2748B.137}
\]

construct the signed same-parent atomic decomposition of the full coupled
pressure-Hodge/material residue before clipping and prove its strict coefficient
bound from the original pressure-viscosity-incompressibility-velocity packet.
This is `(TFE2748B.130)' / `(TFE.2298)' / `(TFE.557)' in Hardy endpoint
coordinates, not an additional downstream wall and not an independent proof of
smoothness.

## 24. Local affine no-go: the source theorem is nonlocal no-arbitrage

The Bellman, Hardy, and active-density rewritings above all expose the same
source theorem.  They do not prove it by localizing the coupled
pressure-Hodge/material packet, because the local coupled Navier-Stokes law has
legal affine survivors.

In the affine strain normal form

\[
u(x)=Ax,\qquad
p(x)=-{1\over2}x\cdot A^2x,\qquad
A=A^\top,\qquad \operatorname{tr}A=0,
\tag{TFE2748B.138}
\]

one has the exact local coupled balance

\[
(u\cdot\nabla)u+\nabla p=0,\qquad
\Delta u=0,\qquad
\nabla\cdot u=0 .
\tag{TFE2748B.139}
\]

For \(A=\operatorname{diag}(\lambda,-\lambda/2,-\lambda/2)\),

\[
{d\over dt}\log |D_aX(t)e_1|=\lambda .
\tag{TFE2748B.140}
\]

Thus a local bounded-below storage \(X_{loc}\) paying the selected affine action
would have to imply, modulo finite legal/stop residual,

\[
dX_{loc}+c\lambda\,dt\le dR(t),
\qquad
X_{loc}\ge -C,
\qquad
\int_0^T dR<\infty .
\tag{TFE2748B.141}
\]

Integrating gives

\[
c\lambda T
\le
X_{loc}(0)-X_{loc}(T)+\int_0^T dR
\le
X_{loc}(0)+C+\int_0^T dR .
\tag{TFE2748B.142}
\]

This is false on arbitrarily long persistent affine-strain windows.  The
pressure Hessian in `(TFE2748B.138)' is not missing participation; it is the
same coupled participation law balancing convection in a local tangent packet.
What is missing from a local proof is the original-history fact that such a
packet cannot be harvested as fresh positive critical action without either
using up same-parent capacity, returning through the surrounding material
history, or becoming a lawful class-exit witness in a different proof program.

Consequently the noncircular Gold source cannot be a purely local Hodge,
Hardy, affine, or finite-jet symmetrizer.  The exact minimal source theorem is
the same-parent no-arbitrage form:

\[
\boxed{\texttt{GlobalSameParentCriticalNoArbitrage.A}}
\tag{TFE2748B.143}
\]

For every stopped parent packet \(P\), no normalized same-parent sequence may
satisfy

\[
\int_P d\Xi^{FE}=1,\qquad
\int_P dE^0\to0,\qquad
\int_P\bigl(d\Xi^{FE}-\vartheta\,d\Omega^{gen}-dE^0\bigr)_+
\ge \eta_0>0
\tag{TFE2748B.144}
\]

while all silent, reset, route, return, legal, stop, and paid motion components
have vanished or been charged in the same stopped parent frame.  Equivalently,
after stopped-frame compactness the retained zero-original-source face must
obey

\[
d\Xi^{crit}+d\Xi^{endpoint}
\le
\vartheta\,d\Omega^{gen}
\tag{TFE2748B.145}
\]

as a same-parent measure inequality on the retained face.  In Bellman language,
the profit measure

\[
d\Pi_P:=d\Xi^{FE}-\vartheta\,d\Omega^{gen}-dE^0
\tag{TFE2748B.146}
\]

has no positive zero-source cycle in the original parent history.  A positive
cycle would be exactly the retained fixed-core critical endpoint-capacity defect
recorded in `(TFE2748B.122)'--`(TFE2748B.123)'.

If `(TFE2748B.143)' is proved, the Bellman value `(TFE.2432)' is bounded by the
original ledger, `(TFE.2434)' gives the storage drop, and `(TFE2748B.120)' /
`(TFE.2426)' follow.  If it is not proved, the endpoint Hardy theorem
`(TFE2748B.137)' and the active-density orientation inequality
`(TFE2748B.130)' remain conditional consumers.  This is not a new downstream
wall: it is the same arbitrary-original-data source theorem in the minimal
zero-profit-cycle form.

## 25. Minimal counterexample test: entropy is the lower-edge conversion

The no-positive-zero-source-cycle form `(TFE2748B.143)' can be attacked by
minimal counterexample rather than by another pointwise estimate.  Suppose a
retained zero-source cycle survives after the component removals in
`(TFE2748B.144)'.  Write its positive profit in the exact parent continuum
measure as

\[
d\Pi_P^+
=F_P\,d\mathfrak m_P,
\qquad
d\Pi_P=d\Xi^{FE}-\vartheta d\Omega^{gen}-dE^0 .
\tag{TFE2748B.147}
\]

Here \(d\mathfrak m_P\) is the parent active readout measure of
`(TFE2748B.118)' / `(TFE.2033)', not a dyadic child count.  The deterministic
lower-edge fact is:

\[
\begin{array}{c}
\mathfrak m_P(\{F_P>0\})\le T_P,\\[1mm]
\displaystyle
\int \Phi(F_P)\,d\mathfrak m_P
\le E_P,
\qquad
\Phi(s)=s\log(e+s)
\end{array}
\quad\Longrightarrow\quad
\int F_P\,d\mathfrak m_P<\infty .
\tag{TFE2748B.148}
\]

Indeed, for any \(K>1\),

\[
\int F_P\,d\mathfrak m_P
\le
K\,T_P
+
{1\over \log(e+K)}
\int \Phi(F_P)\,d\mathfrak m_P .
\tag{TFE2748B.149}
\]

Thus a retained positive zero-source cycle cannot survive once the same parent
packet supplies finite active thickness and parent active entropy.  This is the
continuous-integral version of the strict tail recurrence `(TFE2748B.119)'.
The half-tail can only survive by making the log-density/entropy side infinite:

\[
\int F_P\,d\mathfrak m_P=\infty,
\qquad
\int \Phi(F_P)\,d\mathfrak m_P=\infty
\quad
\text{on the retained zero-source face.}
\tag{TFE2748B.150}
\]

So the minimal bad object is not a mysterious fourth account.  It is exactly a
same-parent active density whose raw parent thickness is finite while its
selected log-amplification is not controlled by the original packet.

The PDE supplier that would rule this out is the already-isolated stopped
log-density carrier/testing theorem.  One lawful form is: construct, before
positive child clipping, a stopped same-material carrier \(Z_P^S\), a selected
log-density representation

\[
\log {F_Q\over F_{\operatorname{par}(Q)}}
=
\ell_Q(\Delta_Q Z_P^S)-\psi_Q+e_Q,
\tag{TFE2748B.151}
\]

and a root square-function/testing bound

\[
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\left[
\sum_{Q\subseteq P'}
\bigl(\|\Delta_Q Z_P^S\|_{\mathfrak H_P}^2+|e_Q|^2\bigr)
\mathcal R(Q)
+Stop(P')
\right]
\le
C_N(u_0)+{R_{\rm legal}(P')\over \mathcal R(P')}.
\tag{TFE2748B.152}
\]

Martingale John--Nirenberg / reverse-Holder, or the equivalent active entropy
chain rule, then gives

\[
\int \Phi(F_P)\,d\mathfrak m_P
\le
C_N(u_0)\mathcal R(P)+Paid(P)+Stop(P)
\tag{TFE2748B.153}
\]

and `(TFE2748B.148)'--`(TFE2748B.149)' give the selected \(L^1\) bound.  In
storage language this supplies `(TFE2748B.120)'; in Bellman language it says the
positive profit measure \(d\Pi_P^+\) has no zero-source cycle.

The point of `(TFE2748B.151)'--`(TFE2748B.152)' is that the log-density carrier
must be built from the same original pressure-viscosity-incompressibility-
velocity packet:

\[
\nu_P^S=D_AJ_P^S+dStop_P+dR_{\rm legal,P},
\qquad
Z_P^S=T_P\nu_P^S,
\tag{TFE2748B.154}
\]

with cancellation, local testing, and testing-defect Carleson bounds for the
stopped Hodge/Riesz/martingale transform before the child selected positive
readout is clipped.  Defining \(F_P\), \(Z_P^S\), or the testing tree from the
future selected tail makes `(TFE2748B.153)' circular.

This section proves the deterministic lower-edge conversion and identifies the
minimal counterexample's only remaining source failure:

\[
\texttt{StoppedSelectorTestingCarleson.A}
\quad\text{or equivalently}\quad
\texttt{OriginalHistoryHilbertBMOProducer.A}
\tag{TFE2748B.155}
\]

for the active log-density carrier of the same parent packet.  It is not a new
Gold wall and not a local symmetrizer.  It is `(TFE2748B.143)' expressed as the
entropy/log-density source theorem: parent active thickness plus active entropy
prevents the zero-source half-tail; the unproved arbitrary-data step is
constructing that entropy carrier and its testing Carleson bound from the
original coupled packet.

## 26. Stopped-current audit: the active Bessel embedding is the same source theorem

The June 27 stopped-current surfaces do not create a second Gold source.  They
put the same parent-active entropy theorem into the correct detector coordinate.
The starting point is the same-material divergence form

\[
\nu_P^S
=
D_AJ_P^S+\nu_{P,stop}^S+\nu_{P,legal}^S,
\tag{TFE2748B.156}
\]

where \(J_P^S\) is the stopped routed participation current built before scalar
positive selection.  Let \(T_P=\nabla_A L_A^{-1}\) denote the stopped
pressure-Hodge/Riesz lift.  For a stopped child \(Q\subseteq P\), localization
gives

\[
D_A(\chi_QJ_P^S)
=
\chi_QD_AJ_P^S+(D_A\chi_Q)\cdot J_P^S.
\tag{TFE2748B.157}
\]

Therefore the stopped transform estimate is a consumer of current control:

\[
\|T_P(1_Q\nu_P^S)\|_{L^2(Q,\mathcal R)}^2
\le
C\int_{\widehat Q}|J_P^S|^2\,d\mathcal R
+C\,Collar(Q)+C\,Stop(Q)+C\,R_{\rm legal}(Q).
\tag{TFE2748B.158}
\]

Thus `StoppedSelectorTestingCarleson.A' follows once the original parent packet
supplies the current Carleson bound

\[
\sup_{Q\subseteq P}
{1\over \mathcal R(Q)}
\left[
\int_{\widehat Q}|J_P^S|^2\,d\mathcal R
+Collar(Q)+Stop(Q)+R_{\rm legal}(Q)
\right]
\le C_N(u_0).
\tag{TFE2748B.159}
\]

The remaining question is not whether the Hilbert transform is bounded.  It is
whether the selected detector family is a Bessel family in the active parent
metric before the selected child readout is clipped.  In the stopped material
Hilbert space

\[
\mathfrak H_P
=
L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G_P=2\nu S_A,
\tag{TFE2748B.160}
\]

the parent-known detector frame has covariant route derivative

\[
\mathcal D_\sigma a_{\sigma,t}
=
\partial_\sigma a_{\sigma,t}
+T_\sigma a_{\sigma,t}
+E_\sigma a_{\sigma,t}
+C_\sigma a_{\sigma,t}.
\tag{TFE2748B.161}
\]

The routed-current generator is the coupled packet tested against that moving
frame:

\[
\mathcal G_{\sigma,t}
=
\langle G_P,\mathcal D_\sigma a_{\sigma,t}\rangle_{\mathfrak H_P}
+Err_{\rm legal}+Err_{\rm stop}.
\tag{TFE2748B.162}
\]

The pressure/incompressibility part has not been discarded here; it is in the
choice and motion of the stopped pressure-Hodge detector
\(a_{\sigma,t}\), including its frame, exchange, covector, collar, and endpoint
terms.  In this coordinate the viscous strain \(G_P\) is the square-paid stress
readout against that coupled detector.

Consequently the exact noncircular supplier is the active-metric stopped-frame
Bessel estimate

\[
\int_{\operatorname{Hist}(P)}
w(\sigma,t)
|\langle F,\mathcal D_\sigma a_{\sigma,t}\rangle_{\mathfrak H_P}|^2
d\sigma dt
\le
C_N\|F\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P)
\tag{TFE2748B.163}
\]

for every \(F\in\mathfrak H_P\), with the active weight \(w\) fixed by the
parent packet before selected clipping.  Applying `(TFE2748B.163)' to \(F=G_P\)
gives

\[
\mathcal E_{\rm route}(P)
:=
\int_{\operatorname{Hist}(P)}
w(\sigma,t)|\mathcal G_{\sigma,t}|^2\,d\sigma dt
\le
C_N\|G_P\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P).
\tag{TFE2748B.164}
\]

The original material energy law then supplies

\[
\|G_P\|_{\mathfrak H_P}^2
=
4\nu^2\int_{\operatorname{Hist}(P)}|S_A|^2
\le C_\nu E_0(u_0)
\tag{TFE2748B.165}
\]

on stopped histories with bounded overlap, so `(TFE2748B.163)' implies finite
original-history routed current energy.  The already-written derivative-BV and
reset/return assembly then yields `(TFE2748B.159)', which yields stopped
testing by `(TFE2748B.158)', which yields the entropy bound
`(TFE2748B.153)' and hence the selected \(L^1\) bound.

This proves the exact conditional route:

\[
\texttt{ScaleCriticalStoppedFrameCarlesonEmbedding.A}
\Longrightarrow
\texttt{StoppedSelectorTestingCarleson.A}
\Longrightarrow
\texttt{OriginalHistoryHilbertBMOProducer.A}
\Longrightarrow
\text{terminal-uniform selected }L^1.
\tag{TFE2748B.166}
\]

It also identifies why the route is still open from arbitrary original data.
Ordinary raw Bessel or raw \(L^2\) energy only controls the same family without
the selected active weight \(w\):

\[
\int
|\langle F,\mathcal D_\sigma a_{\sigma,t}\rangle_{\mathfrak H_P}|^2
d\sigma dt
\lesssim
\|F\|_{\mathfrak H_P}^2.
\tag{TFE2748B.167}
\]

That estimate is a square-energy statement.  It does not control the
scale-critical selected active counting weight, and it still permits the
lower-edge half-tail isolated in Section 25.  The unproved arbitrary-data
producer is therefore `(TFE2748B.163)' itself, equivalently the parent-weighted
detector theorem saying that the selected active weight is supplied by the same
original coupled packet before child clipping.  This is the stopped-current /
Bessel-coordinate form of `GlobalSameParentCriticalNoArbitrage.A', not an
additional downstream obstruction.

## 27. Active Bessel split: first-exit is paid, fixed-core upcrossing is the source

The active embedding in `(TFE2748B.163)' has one branch that is already reduced
to a direct calculation.  On a stopped first-exit edge \(e\), the parent
announces an interval \(I_e\) before the fresh endpoint increment is read.  The
active weight is the harmonic Cauchy weight

\[
H_{e^-}(t)
=
{|I_e|^2\over \int_{I_e}w(\sigma,t)^{-1}\,d\sigma},
\tag{TFE2748B.168}
\]

and the fresh derivative has the parent-announced average representation

\[
D_e^{fresh}(t)
=
|I_e|^{-1}\int_{I_e}G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{TFE2748B.169}
\]

where

\[
G_e
=
\partial_\sigma Z_e+\operatorname{turnstile}_e
+\operatorname{exchange}_e+\operatorname{covector}_e+\operatorname{frame}_e.
\tag{TFE2748B.170}
\]

Weighted Cauchy--Schwarz gives

\[
H_{e^-}(t)\|D_e^{fresh}(t)\|^2
\le
C\int_{I_e}w(\sigma,t)\|G_e(\sigma,t)\|^2\,d\sigma
+CR_e^{legal}(t).
\tag{TFE2748B.171}
\]

The first-exit witness slabs are stopped sparse, so

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{fresh}\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2+|F_\sigma|^2
\right)
+CR_{\rm legal}(P)+CStop(P).
\tag{TFE2748B.172}
\]

This proves the first-exit/reset active-weight branch once the active route
energy is an original-history measure.  Its physical content is exact: a large
read through a parent-announced heat/scale interval forces derivative-current
energy on that same interval.  There is no missing storage in this branch.

The remaining branch is different.  A fixed stopped core may keep the same route
and same parent endpoint record while the active weight rises:

\[
\sum_\ell \|D_\ell\|_{\mathfrak H_P}^2<\infty,
\qquad
\sum_\ell H_\ell\|D_\ell\|_{\mathfrak H_P}^2=\infty.
\tag{TFE2748B.173}
\]

There is no interval average `(TFE2748B.169)' for this branch, so the Cauchy
payment does not apply.  Bessel orthogonality controls only the unweighted square
mass.  The selected \(L^1\) proof needs the active-weight upcrossing itself to be
admitted as parent material before clipping.

The exact source theorem can therefore be stated as a predictable active-weight
compensator.  Let \(A_P^{wt}\) record new active-weight upcrossings of retained
same-core reads in the stopped parent frame.  The needed storage inequality is

\[
dA_P^{wt}
+a_P\|G_P^{new}\|_{\mathfrak H_P}^2\,d\sigma dt
\le
-D_{\sigma,t}M_P
+\Theta_P^{orig}
+dStop_P+dR_{\rm legal,P},
\tag{TFE2748B.174}
\]

with

\[
0\le M_P\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\qquad
\int_{\operatorname{Hist}(P)}\Theta_P^{orig}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE2748B.175}
\]

Integrating `(TFE2748B.174)' gives the missing fixed-core estimate

\[
\int dA_P^{wt}
+\sum_{\text{fixed-core }e\subset P}
\int H_{e^-}\|D_e^{new}\|_{\mathfrak H_P}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{TFE2748B.176}
\]

Together, `(TFE2748B.172)' and `(TFE2748B.176)' imply the active stopped-frame
Bessel/Carleson embedding `(TFE2748B.163)'.

Thus Section 26 reduces the stopped-current theorem to active Bessel, and this
section reduces active Bessel to one remaining producer:

\[
\texttt{StoppedPredictableActiveWeightCompensator.A}
\quad\text{or equivalently}\quad
\texttt{OriginalScaleMemoryStorageCoercivity.A}
\tag{TFE2748B.177}
\]

for fixed-core/root-upcrossing in the same stopped parent frame.  This is the
same theorem as `GlobalSameParentCriticalNoArbitrage.A' in active-weight
coordinates.  A proof must show that a retained same-core active-weight increase
is either actual route/connection/turnstile/exchange/covector motion, negative
return, reset, legal, stop, or a bounded parent storage decrease.  Raw energy,
raw Bessel, and parent predictability alone leave the half-tail
`(TFE2748B.173)' alive.

## 28. Signed atom attachment: the pairing is exact once the parent atoms exist

The signed-partner line in Sections 22--23 has a purely measure-theoretic core.
Let \(dJ_P\) be the pre-clipping pressure-Hodge/material residue on one stopped
parent packet after route, legal, and stop errors are removed.  The desired
parent atomic form is

\[
dJ_P
=
\sum_{\alpha}c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int_{X_P}d\mu_\alpha=0.
\tag{TFE2748B.178}
\]

Here the zero mean is the mathematical form of the pressure constraint: the
pressure-Hodge/material residue redistributes the stopped parent packet and does
not create standalone positive mass.  For each atom,

\[
d\mu_\alpha=d\mu_\alpha^+-d\mu_\alpha^-,
\qquad
\mu_\alpha^+(X_P)=\mu_\alpha^-(X_P).
\tag{TFE2748B.179}
\]

For the signed atom \(\nu_\alpha=c_\alpha d\mu_\alpha\), define its same-parent
positive and opposite lobes by \(\nu_\alpha^+\) and \(\nu_\alpha^-\).  Then

\[
\nu_\alpha^+(X_P)=\nu_\alpha^-(X_P),
\tag{TFE2748B.180}
\]

with the sign of \(c_\alpha\) only swapping which geometric lobe is positive.
Using the elementary Jordan inequality

\[
\left(\sum_\alpha \nu_\alpha\right)_+
\le
\sum_\alpha \nu_\alpha^+,
\tag{TFE2748B.181}
\]

and charging any atom boundary leakage to \(dR_P\), the positive residue obeys

\[
(dJ_P)_+
\le
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=\sum_\alpha \nu_\alpha^-.
\tag{TFE2748B.182}
\]

This is the exact signed attachment fact.  The child cannot count the positive
lobe of a pressure-Hodge/material atom without the same stopped parent packet
also containing the opposite lobe, unless the opposite lobe has left through a
paid collar, route, legal, or stop channel.

Consequently the selected critical spent measure satisfies

\[
dE_P^{crit}
\le
dJ_P^{ret,-}
+\theta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\theta<1,
\tag{TFE2748B.183}
\]

once the residual leakage \((dR_P)_+\) is included in the paid terms and the
already-separated generator leakage is absorbed with strict coefficient
\(\theta\).  If the retained opposite lobe is recorded as depletion of the
parent critical reserve,

\[
dJ_P^{ret,-}
\le
-dM_P^{crit},
\tag{TFE2748B.184}
\]

then `(TFE2748B.183)' becomes the storage line

\[
dE_P^{crit}
\le
-dM_P^{crit}
+\theta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\theta<1.
\tag{TFE2748B.185}
\]

Thus the pairing itself is not the open estimate.  It is an immediate
consequence of a same-parent zero-mean atomic representation of the signed
pressure-Hodge/material residue.  The actual arbitrary-data source theorem is
now sharper:

\[
\boxed{
\texttt{ParentHardyAtomicPressureHodgePartnerRetention.A}
+\texttt{BoundedBelowCriticalReserveDepletion.A}
}
\tag{TFE2748B.186}
\]

meaning:

\[
\begin{aligned}
&\text{construct `(TFE2748B.178)' from the original coupled packet before
clipping,}\\
&\text{prove controlled atom coefficients/supports and paid leakage,}\\
&\text{and prove `(TFE2748B.184)' with \(M_P^{crit}\) bounded below from
original data.}
\end{aligned}
\tag{TFE2748B.187}
\]

This is the same Gold source in signed-measure form.  The repo should no longer
treat signed-partner retention as a mysterious positivity theorem: zero-mean
same-parent atoms give the positive/negative lobe pairing exactly.  What remains
is proving that the full residue has those atoms before clipping and that the
opposite lobe is an original parent reserve depletion rather than a
future-defined selected tail.

## 29. What arbitrary smooth data actually supplies

The construction in `(TFE2748B.187)' has a provable raw part and a stronger
selected-critical part.  The raw part is an original-data theorem.

Fix a stopped parent packet \(P\) and remove the already paid route, legal,
collar, and stop terms.  Let \(dJ_P^0\) be the remaining pre-clipping
pressure-Hodge/material residue in the parent material chart.  Its unremoved
mean is not a pressure source; it is boundary/collar leakage.  Thus

\[
dJ_P^0(X_P)=0,
\qquad
dJ_P=dJ_P^0+dR_P,
\tag{TFE2748B.188}
\]

where \(dR_P\) is paid leakage.  For every fixed time slice, the zero-mass
signed measure \(dJ_P^0\) has the Jordan split

\[
dJ_P^0=(dJ_P^0)^+-(dJ_P^0)^-,
\qquad
(dJ_P^0)^+(X_P)=(dJ_P^0)^-(X_P).
\tag{TFE2748B.189}
\]

Choose any same-parent transport plan \(\pi_P\) coupling \((dJ_P^0)^+\) to
\((dJ_P^0)^-\).  Then

\[
dJ_P^0
=
\int_{X_P\times X_P}
\bigl(\delta_x-\delta_y\bigr)\,d\pi_P(x,y).
\tag{TFE2748B.190}
\]

After the standard smooth packet regularization inside the stopped chart, this
is exactly the signed atomic form

\[
dJ_P^0
=
\sum_\alpha c_\alpha\,d\mu_\alpha,
\qquad
\int_{X_P}d\mu_\alpha=0,
\tag{TFE2748B.191}
\]

with same-parent supports.  The raw coefficient mass satisfies

\[
\sum_\alpha |c_\alpha|
\le
C\,|dJ_P^0|(X_P).
\tag{TFE2748B.192}
\]

For the actual pressure-Hodge residue this raw total variation estimate can be
sharpened to the standard Hardy atom norm.  In Eulerian variables,

\[
-\Delta p
=
\partial_i u_j\,\partial_j u_i
=
\sum_j (\partial_j u)\cdot\nabla u_j ,
\tag{TFE2748B.193}
\]

where \(\partial_j u\) is divergence-free and \(\nabla u_j\) is curl-free.
The div-curl Hardy estimate gives

\[
\|\partial_i u_j\,\partial_j u_i\|_{\mathcal H^1}
\le
C\|\nabla u\|_2^2.
\tag{TFE2748B.194}
\]

The pressure-Hodge transforms are bounded on the corresponding Hardy atom
space, and the smooth material pullback only adds metric/collar commutators that
belong to \(dR_P\).  Hence the pre-clipping raw atoms can be chosen with

\[
\sum_\alpha |c_\alpha(t)|
\le
C_N\|\nabla u(t)\|_2^2
+{d\over dt}\bigl(Paid_P^{collar}+Legal_P+Stop_P\bigr).
\tag{TFE2748B.195}
\]

Integrating and using the Leray energy inequality gives the raw coefficient
control

\[
\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
\le
C_N{\|u_0\|_2^2\over \nu}
+Paid_P(\tau)+Legal_P(\tau)+Stop_P(\tau),
\qquad \tau<T_* .
\tag{TFE2748B.196}
\]

This proves the arbitrary-smooth-data construction of the pre-clipping
same-parent pressure atoms with raw controlled coefficients and paid leakage.
For higher finite jet rungs, the same statement holds with the differentiated
pressure-Hodge source and the corresponding preterminal smooth norms; making
those constants terminal-uniform from \(u_0\) is the Gold storage problem, not
an atomization problem.

The retained opposite lobe is a bounded-below reserve in this raw currency.
Define

\[
M_P^{raw}(\tau)
:=
M_P^{raw}(0)
-
\int_{[0,\tau]\times X_P}dJ_P^{ret,-},
\tag{TFE2748B.197}
\]

with

\[
M_P^{raw}(0)
=
C_N{\|u_0\|_2^2\over\nu}
+Paid_P(T)+Legal_P(T)+Stop_P(T).
\tag{TFE2748B.198}
\]

Then `(TFE2748B.196)' gives

\[
M_P^{raw}(\tau)\ge0,
\qquad
dJ_P^{ret,-}\le -dM_P^{raw}.
\tag{TFE2748B.199}
\]

Thus the requested reserve-depletion statement is proved for the raw
same-parent pressure-Hodge atom measure.

The selected-critical Gold reserve is stronger.  Let \(W_P\) denote the
parent-known active/heat-lag detector weight that a child would otherwise apply
before clipping.  Multiplying an atom by \(W_P\) creates the exact defect

\[
\int_{X_P} W_P\,d\mu_\alpha
=
\int_{X_P}(W_P-W_{\alpha})\,d\mu_\alpha,
\tag{TFE2748B.200}
\]

because \(\int d\mu_\alpha=0\).  Therefore the active-weighted version of
`(TFE2748B.196)' is

\[
\int_0^\tau
\sum_\alpha W_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau\sum_\alpha
\left|\int (W_P-W_\alpha)\,d\mu_\alpha\right|dt
\le
C_N(u_0)+Paid_P+Legal_P+Stop_P .
\tag{TFE2748B.201}
\]

This is not a consequence of raw Hardy atomization.  It is precisely the
active-weight/current storage theorem previously called

\[
\texttt{StoppedPredictableActiveWeightCompensator.A}
\quad\text{or}\quad
\texttt{OriginalScaleMemoryStorageCoercivity.A}.
\tag{TFE2748B.202}
\]

So the atom decomposition has now been constructed from arbitrary smooth data
before clipping, and the retained opposite lobe has a bounded-below raw parent
reserve.  Full Gold closure still requires `(TFE2748B.201)': the same statement
with the selected active detector included without defining the reserve from
the future selected tail.
