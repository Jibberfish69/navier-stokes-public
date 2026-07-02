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
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=\sum_\alpha \nu_\alpha^-.
\tag{TFE2748B.182}
\]

This is the exact signed attachment fact on the same-parent atom ledger.  It is
not a pointwise inequality on \(X_P\): for a zero-mean atom
\(\delta_x-\delta_y\), the positive lobe is at \(x\) and the retained opposite
lobe is at \(y\).  The comparison is the paired transport comparison saying the
child cannot count the positive lobe of a pressure-Hodge/material atom without
the same stopped parent packet also containing the opposite lobe, unless the
opposite lobe has left through a paid collar, route, legal, or stop channel.

Consequently, after lifting the selected positive bill to this same atom
ledger, the selected critical spent measure satisfies

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
pressure-Hodge/material residue.  In the raw stopped parent currency, Section 29
constructs the atoms and the bounded-below retained-lobe reserve from arbitrary
smooth data.  The actual arbitrary-data source theorem is the selected-critical
weighted upgrade:

\[
\boxed{
\texttt{SelectedCriticalWeightedAtomReserve.A}
\quad\text{or equivalently}\quad
\texttt{EntropyWeightedCurrentDomination.A}
}
\tag{TFE2748B.186}
\]

meaning:

\[
\begin{aligned}
&\text{insert the parent-known selected-critical detector before child
positive clipping,}\\
&\text{prove the weighted coefficient/defect measure is root-finite from the
original packet,}\\
&\text{and prove the resulting critical reserve has paid positive variation and
strict margin.}
\end{aligned}
\tag{TFE2748B.187}
\]

This is the same Gold source in signed-measure form.  The repo should no longer
treat signed-partner retention as a mysterious positivity theorem: zero-mean
same-parent atoms give the positive/negative lobe pairing exactly.  What remains
is proving that the selected-critical weight placed on those atoms is a
parent-built original-history reserve rather than a future-defined selected
tail.

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
belong to \(dR_P\).  Hence the pre-clipping raw atom part can be chosen with

\[
\sum_\alpha |c_\alpha(t)|
\le
C_N\|\nabla u(t)\|_2^2,
\tag{TFE2748B.195}
\]

while the material-chart leakage is kept outside the atom reserve:

\[
|(dR_P)_+|
\le
dPaid_P^{collar}+dLegal_P+dStop_P .
\tag{TFE2748B.196}
\]

Integrating and using the Leray energy inequality gives the raw coefficient
control

\[
\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
\le
C_N{\|u_0\|_2^2\over \nu},
\qquad \tau<T_* .
\tag{TFE2748B.197}
\]

This gives the actual raw construction from arbitrary smooth data.  More
explicitly, in the stopped material chart write the unremoved pressure-Hodge
residue as

\[
F_P(t,a)\,da
:=
\chi_P(a)\,\mathcal T_P
\bigl(\partial_i u_j\,\partial_j u_i\bigr)(t,a)\,da
-
\langle \chi_P\mathcal T_P
(\partial_i u_j\,\partial_j u_i)\rangle_{X_P}\,da,
\tag{TFE2748B.197a}
\]

where \(\mathcal T_P\) is the pressure-Hodge operator pulled back to the stopped
parent frame and \(\chi_P\) is the parent cutoff.  The subtracted mean is
exactly the same-parent zero-mode; the terms created by \(\nabla\chi_P\),
metric derivatives, collar motion, and stopping are placed in \(dR_P\).  Thus

\[
dJ_P^0(t)=F_P(t,a)\,da,
\qquad
\int_{X_P}F_P(t,a)\,da=0,
\tag{TFE2748B.197b}
\]

and

\[
\|F_P(t)\|_{\mathcal H^1(X_P)}
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t).
\tag{TFE2748B.197c}
\]

By the local Hardy atomic decomposition in the stopped parent chart, for each
smooth time slice there are same-parent atoms \(a_{\alpha,t}\), supported inside
stopped parent subpackets, with

\[
\int a_{\alpha,t}=0,\qquad
\|a_{\alpha,t}\|_1\le1,\qquad
\|a_{\alpha,t}\|_\infty\le |Q_{\alpha,t}|^{-1},
\tag{TFE2748B.197d}
\]

and coefficients \(c_\alpha(t)\) such that

\[
F_P(t,a)\,da
=
\sum_\alpha c_\alpha(t)\,a_{\alpha,t}(a)\,da,
\qquad
\sum_\alpha |c_\alpha(t)|
\le
C\|F_P(t)\|_{\mathcal H^1(X_P)} .
\tag{TFE2748B.197e}
\]

Set \(d\mu_{\alpha,t}=a_{\alpha,t}(a)\,da\).  These are the same-parent
zero-mean atoms in `(TFE2748B.191)'.  Combining `(TFE2748B.197c)' and
`(TFE2748B.197e)' gives the pointwise coefficient/leakage estimate

\[
\sum_\alpha |c_\alpha(t)|
+ |(dR_P)_+|(t)
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t).
\tag{TFE2748B.197f}
\]

Integrating `(TFE2748B.197f)' and using the Leray energy inequality gives
`(TFE2748B.197)'.  Hence arbitrary original smooth data supplies the
pre-clipping same-parent atom decomposition, raw coefficient control, and paid
leakage before any selected child clipping is applied.  For higher finite jet
rungs, the same atomization holds with the differentiated pressure-Hodge source
and the corresponding preterminal smooth norms; making those constants
terminal-uniform from \(u_0\) is the Gold storage problem, not an atomization
problem.

The retained opposite lobe is a bounded-below reserve in this raw currency.
Define

\[
M_P^{raw}(\tau)
:=
M_P^{raw}(0)
-
\int_{[0,\tau]\times X_P}dJ_P^{ret,-},
\tag{TFE2748B.198}
\]

with

\[
M_P^{raw}(0)
=
C_N{\|u_0\|_2^2\over\nu}.
\tag{TFE2748B.199}
\]

Then `(TFE2748B.197)' gives

\[
M_P^{raw}(\tau)\ge0,
\qquad
dJ_P^{ret,-}\le -dM_P^{raw}.
\tag{TFE2748B.200}
\]

Thus the requested reserve-depletion statement is proved for the raw
same-parent pressure-Hodge atom measure.

This reserve is not defined from a future selected tail.  Each decrement is
made at the same time and inside the same stopped parent atom that produced the
positive lobe.  Indeed, for
\(\nu_{\alpha,t}=c_\alpha(t)d\mu_{\alpha,t}\),

\[
\nu_{\alpha,t}
=
\nu_{\alpha,t}^+-\nu_{\alpha,t}^-,
\qquad
\nu_{\alpha,t}^+(X_P)=\nu_{\alpha,t}^-(X_P),
\tag{TFE2748B.200a}
\]

so the retained opposite lobe measure

\[
dJ_P^{ret,-}
:=
\sum_\alpha \nu_{\alpha,t}^-\,dt
\tag{TFE2748B.200b}
\]

has total mass bounded by the same coefficient budget:

\[
dJ_P^{ret,-}([0,\tau]\times X_P)
\le
C\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
\le
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P .
\tag{TFE2748B.200c}
\]

Choosing \(M_P^{raw}(0)\) to dominate the right side in
`(TFE2748B.200c)' makes \(M_P^{raw}\) a preallocated parent reserve, and

\[
-dM_P^{raw}=dJ_P^{ret,-},
\qquad
M_P^{raw}(\tau)\ge0
\quad(\tau<T_*).
\tag{TFE2748B.200d}
\]

That is the bounded-below depletion law in the raw parent currency.

The selected-critical Gold reserve is stronger.  Let \(W_P\) denote the
parent-known active/heat-lag detector weight that a child would otherwise apply
before clipping.  Multiplying an atom by \(W_P\) creates the exact defect

\[
\int_{X_P} W_P\,d\mu_\alpha
=
\int_{X_P}(W_P-W_{\alpha})\,d\mu_\alpha,
\tag{TFE2748B.201}
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
\tag{TFE2748B.202}
\]

This is not a consequence of raw Hardy atomization.  It is precisely the
active-weight/current storage theorem previously called

\[
\texttt{StoppedPredictableActiveWeightCompensator.A}
\quad\text{or}\quad
\texttt{OriginalScaleMemoryStorageCoercivity.A}.
\tag{TFE2748B.203}
\]

So the atom decomposition has now been constructed from arbitrary smooth data
before clipping, and the retained opposite lobe has a bounded-below raw parent
reserve.  Full Gold closure still requires `(TFE2748B.202)': the same statement
with the selected active detector included without defining the reserve from
the future selected tail.

## 30. Weighted atom defect is the \(H^1\)-BMO capacity-variation line

Section 29 proves the raw pressure-Hodge atoms.  The selected-critical question
is what happens when the parent detector \(W_P\) prices the two lobes of the same
zero-mean atom differently.

For one signed atom \(\nu_\alpha=c_\alpha d\mu_\alpha\), choose a scalar
\(W_\alpha\) fixed by the parent atom, for example the parent average of \(W_P\)
on the atom support.  Since \(\int d\mu_\alpha=0\),

\[
\int W_P\,d\nu_\alpha
=
c_\alpha\int (W_P-W_\alpha)\,d\mu_\alpha .
\tag{TFE2748B.204}
\]

Thus the selected-weight defect is not a new pressure source.  It is exactly the
oscillation of the parent detector across a same-parent zero-mean atom.  Summing
over atoms gives

\[
\left|
\int W_P\,dJ_P^0
\right|
\le
\sum_\alpha |c_\alpha|
\left|
\int (W_P-W_\alpha)\,d\mu_\alpha
\right|.
\tag{TFE2748B.205}
\]

If the atoms are normalized in the Hardy space of the stopped parent chart, the
endpoint duality estimate gives

\[
\left|
\int (W_P-W_\alpha)\,d\mu_\alpha
\right|
\le
C\,\|W_P\|_{\mathrm{BMO}(P_\alpha)} .
\tag{TFE2748B.206}
\]

This controls only the lobe-separation defect.  It does not control the
average/level term \(W_\alpha |c_\alpha|\).  That average term is exactly the
parent active capacity price of admitting the atom before clipping.  Therefore
the active-weighted atom estimate follows on every stopped good fibre only when
the parent construction supplies both the level reserve and the small BMO
oscillation:

\[
\left|
\int W_P\,dJ_P^0
\right|
\le
C\,\|W_P\|_{\mathrm{BMO},good}
\sum_\alpha |c_\alpha|.
\tag{TFE2748B.207}
\]

Using the raw coefficient bound `(TFE2748B.197)', the oscillation part is
absorbable with strict margin exactly when the stopped parent construction
supplies

\[
C\,\|W_P\|_{\mathrm{BMO},good}\le \theta,
\qquad C_N\theta<1,
\tag{TFE2748B.208}
\]

and the bad fibres where `(TFE2748B.208)' fails Carleson-pack into
\(d\Theta_P^0+dPaid_P+dStop_P\).  Written without the good/bad stopping
abbreviation, the required parent-detector theorem is therefore a two-clause
estimate, not a pure BMO estimate:

\[
\begin{aligned}
\int_0^\tau\sum_{\alpha\subset P'}W_\alpha |c_\alpha(t)|\,dt
&\le C_N(u_0;P')+Paid(P')+\theta\,\Omega_P^{gen}(P'),\\
\sup_{P'\subseteq P}
{1\over R_P^{root}(P')}
\sum_{Q\subseteq P'}
\bigl(\|\Delta_QW_P\|_{\mathcal H}^2+|e_Q|^2\bigr)R_P^{root}(Q)
&\le
C_N(u_0)+{Paid(P')\over R_P^{root}(P')}.
\end{aligned}
\tag{TFE2748B.209}
\]

This is the same root Carleson/log-amplification line as
`(TFE2748B.55)'--`(TFE2748B.59)', now read as the exact level-plus-dual estimate
needed by the signed atoms.  The first line pays the mean active capacity; the
second line pays the oscillation between opposite lobes.

Under `(TFE2748B.209)', the selected detector can be inserted before clipping:

\[
\int_0^\tau
\sum_\alpha W_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau\sum_\alpha
\left|\int (W_P-W_\alpha)d\mu_\alpha\right|dt
\le
C_N(u_0)+d\Theta_P^0+Paid_P+Stop_P
+\theta\,\Omega_P^{gen},
\tag{TFE2748B.210}
\]

which is `(TFE2748B.202)' in stopped BMO form.  Combining `(TFE2748B.210)' with
the signed partner attachment `(TFE2748B.182)' gives

\[
dE_P^{crit}
\le
-dM_P^{crit}
+\theta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\theta<1,
\tag{TFE2748B.211}
\]

provided \(M_P^{crit}\) is the preallocated parent reserve associated to that
same \(W_P\)-capacity.

This proves the weighted atom step from raw atoms plus a parent-built
Carleson/BMO detector.  It does not prove the detector theorem from arbitrary
smooth data.  The remaining original-data burden is exactly:

\[
\boxed{
\begin{array}{c}
\text{construct \(W_P\) from the original coupled packet before clipping,}\\
\text{prove the root Carleson/BMO estimate `(TFE2748B.209)',}\\
\text{and prove the corresponding critical capacity has paid positive variation.}
\end{array}}
\tag{TFE2748B.212}
\]

The older one-sided flux and moving low-high pressure/strain pump surfaces are
the same burden in physical variables.  The signed local energy identity supplies
the net flux; rectification asks for positive variation of that flux.  The
dyadic weighted-tail identity supplies the lower-to-upper paired carrier; the
missing estimate is its \(2^k\)-weighted positive work.  Both are precisely the
failure or success of `(TFE2748B.209)' for the parent detector \(W_P\).

## 31. Level reserve reduces to a weighted Carleson embedding

Section 30 separates the weighted atom problem into a mean active-capacity level
and a lobe-oscillation defect.  The exact embedding form is as follows.

Let

\[
d\nu_P^{atom}
:=
\sum_\alpha |c_\alpha(t)|\,\delta_{\alpha}\,dt
\tag{TFE2748B.213}
\]

be the positive raw atom-coefficient measure on the stopped parent tree or its
continuous parent-root analogue.  Let \(d\mathfrak m_P\) be the parent pulled
critical measure before child clipping, and let \(W_P\ge0\) be the parent
selected detector.  The level clause in `(TFE2748B.209)' is

\[
\int_{\operatorname{Hist}(P')} W_P\,d\nu_P^{atom}
\le
C_N(u_0;P')+Paid(P')+\theta\,\Omega_P^{gen}(P').
\tag{TFE2748B.214}
\]

This follows from two strictly parent-side facts:

\[
\nu_P^{atom}(E)
\le
K_P\,\mathfrak m_P(E^\ast)+Paid(E^\ast)
\quad\text{for every stopped parent union }E,
\tag{TFE2748B.215}
\]

and

\[
\int_{\operatorname{Hist}(P')} W_P\,d\mathfrak m_P
\le
C_N(u_0;P')+\theta\,\Omega_P^{gen}(P')+Paid(P').
\tag{TFE2748B.216}
\]

Indeed, by layer-cake and the stopped-envelope property of superlevel sets,

\[
\begin{aligned}
\int W_P\,d\nu_P^{atom}
&=
\int_0^\infty
\nu_P^{atom}(\{W_P>\lambda\})\,d\lambda\\
&\le
K_P\int_0^\infty
\mathfrak m_P(\{W_P>\lambda\}^{\ast})\,d\lambda
+Paid\\
&\le
C K_P\int W_P\,d\mathfrak m_P+Paid,
\end{aligned}
\tag{TFE2748B.217}
\]

which gives `(TFE2748B.214)' after `(TFE2748B.216)' and the strict margin are
inserted.

The oscillation clause is the complementary endpoint-duality part.  If
\(W_P=\exp b_P\), the stopped log-carrier estimate

\[
\sup_{P'\subseteq P}
{1\over \mathfrak m_P(P')}
\sum_{Q\subseteq P'}
\|\Delta_Q b_P\|_{\mathcal H}^2\,\mathfrak m_P(Q)
\le C_N(u_0)+{Paid(P')\over\mathfrak m_P(P')}
\tag{TFE2748B.218}
\]

gives the BMO norm of \(b_P\).  After stopping on good fibres where
\(\|b_P\|_{\mathrm{BMO}}\le\varepsilon_N\), John--Nirenberg gives a reverse
Holder bound for \(W_P\):

\[
\left(
{1\over \mathfrak m_P(P')}
\int_{P'}W_P^{1+\varepsilon}\,d\mathfrak m_P
\right)^{1/(1+\varepsilon)}
\le
C
{1\over \mathfrak m_P(P')}
\int_{P'}W_P\,d\mathfrak m_P,
\tag{TFE2748B.219}
\]

while the bad fibres Carleson-pack into \(d\Theta_P^0+dPaid_P+dStop_P\).  The
\(H^1\)-BMO duality in `(TFE2748B.206)' then controls

\[
\int_0^\tau\sum_\alpha
\left|\int (W_P-W_\alpha)\,d\mu_\alpha\right|dt
\le
\theta\,\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.220}
\]

Thus `(TFE2748B.209)' is equivalent, at this level, to the parent-side package

\[
\boxed{
\begin{array}{c}
\text{raw atom coefficients form a local Carleson measure relative to the}\\
\text{same parent critical measure \(d\mathfrak m_P\),}\\
\text{the active detector has parent-built \(L^1\) level reserve,}\\
\text{and its log-carrier has stopped BMO square packing before clipping.}
\end{array}}
\tag{TFE2748B.221}
\]

The raw atomization theorem proves only the global unweighted mass
`(TFE2748B.197)'.  It does not prove `(TFE2748B.215)' or `(TFE2748B.216)'.
Localizing `(TFE2748B.197)' by the local energy identity reintroduces the
one-sided window-flux variation `(TFE2748B.86)'--`(TFE2748B.90)'.  Therefore the
current reduction is strict but not closed: the remaining original-data producer
is the parent-side coefficient-Carleson plus active-level reserve package
`(TFE2748B.221)', equivalently the rectified same-parent positive flux-variation
law in physical variables.

## 32. Active-level reserve is exactly a strict tail recurrence

Section 31 gives the embedding form of the mean active-capacity bill.  Its
minimal bad profile is the same half-tail as `(TFE2748B.108)'.  Write

\[
N_P(\lambda)
:=
\nu_P^{atom}\{W_P>\lambda\},
\qquad
B_P(\lambda)
:=
Paid\{W_P>\lambda\}
+\Theta_P^0\{W_P>\lambda\}
+Stop_P\{W_P>\lambda\}.
\tag{TFE2748B.222}
\]

Then

\[
\int W_P\,d\nu_P^{atom}
=
\int_0^\infty N_P(\lambda)\,d\lambda .
\tag{TFE2748B.223}
\]

The exact strict-tail theorem is

\[
N_P(2\lambda)
\le
\theta\,N_P(\lambda)+B_P(\lambda),
\qquad
\theta<\frac12,
\qquad
\int_0^\infty B_P(\lambda)\,d\lambda
\le C_N(u_0)+Paid(P)+Stop(P).
\tag{TFE2748B.224}
\]

If `(TFE2748B.224)' holds, dyadic integration gives the level reserve.  Let
\(N_k=N_P(2^k)\) and \(B_k=B_P(2^k)\).  Since
\[
\int W_P\,d\nu_P^{atom}
\simeq
\sum_k2^kN_k,
\tag{TFE2748B.225}
\]

and \(N_{k+1}\le\theta N_k+B_k\), multiplying by \(2^{k+1}\) and summing gives

\[
\sum_k2^{k+1}N_{k+1}
\le
2\theta\sum_k2^kN_k
+2\sum_k2^kB_k.
\tag{TFE2748B.226}
\]

Because \(2\theta<1\), the left-hand sum absorbs into the right-hand parent
bill, yielding

\[
\int W_P\,d\nu_P^{atom}
\le
C_N(u_0)+Paid(P)+Stop(P)
\tag{TFE2748B.227}
\]

up to the lower starting level, which is controlled by the raw unweighted atom
mass `(TFE2748B.197)'.

Conversely, failure of the active-level reserve with finite raw mass admits the
normalized half-tail as its minimal bad profile.  After removing paid tails and
passing to a level-subsequence, there are levels \(k_j\) for which

\[
N_{k_j+1}>\theta N_{k_j}+B_{k_j}
\quad\text{for all }\theta<\frac12
\tag{TFE2748B.228}
\]

Extracting the excess increments

\[
\eta_j
:=
N_{k_j+1}-\theta N_{k_j}-B_{k_j}>0
\tag{TFE2748B.229}
\]

and using the assumed failure
\(\int W_P\,d\nu_P^{atom}=\infty\) while
\(\nu_P^{atom}(X_P)<\infty\) gives a subsequence with

\[
\sum_j \eta_j<\infty,
\qquad
\sum_j2^{k_j}\eta_j=\infty,
\tag{TFE2748B.230}
\]

which is exactly `(TFE2748B.108)' in parent-level form.  Thus no amount of raw
same-parent atom ownership, Bessel non-recount, or signed net pressure balance
can prove the active level reserve unless it proves `(TFE2748B.224)' or an
equivalent parent \(L\log L\)/reverse-Holder entropy bound.

So `(TFE2748B.221)' has the following final noncircular target:

\[
\boxed{
\begin{array}{c}
\text{from the original coupled packet before clipping, prove the strict}\\
\text{same-parent active-tail recurrence `(TFE2748B.224)' for the}\\
\text{positive raw atom-coefficient measure weighted by the parent detector.}
\end{array}}
\tag{TFE2748B.231}
\]

The physical meaning is precise.  The pressure-Hodge residue may oscillate, and
the raw positive lobe is paired to an opposite lobe in the same parent.  The
remaining Gold question is whether the original coupled packet has enough
parent-visible active entropy to prevent the same finite raw atom mass from
being distributed over higher and higher active prices \(W_P\).  Viscosity,
pressure, and incompressibility enter only as one coupled packet law here:
proving `(TFE2748B.224)' is exactly proving that their same-parent transaction
deletes high active tails faster than it can re-coordinate them into new
selected positive level bills.

## 33. Continuous half-tail countercheck for the raw atom theorem

The raw atom construction cannot be promoted to selected \(L^1\) storage by
changing notation.  The exact parent-measure countercheck is continuous.

Let the parent active parameter be \(s\in(0,e^{-2})\), let

\[
d\nu^{atom}(s)=ds,
\qquad
W(s)={1\over s},
\tag{TFE2748B.232}
\]

and for each \(s\) choose a smooth same-parent zero-mean atom

\[
d\mu_s=\varphi_s^+\,dx-\varphi_s^-\,dx,
\qquad
\int\varphi_s^+\,dx=\int\varphi_s^-\,dx=1,
\qquad
\operatorname{supp}\varphi_s^\pm\subset X_P .
\tag{TFE2748B.233}
\]

The signed pressure-Hodge shadow

\[
dJ^0=\int_0^{e^{-2}} d\mu_s\,ds
\tag{TFE2748B.234}
\]

has finite raw atom mass:

\[
\int_0^{e^{-2}}d\nu^{atom}(s)=e^{-2}<\infty .
\tag{TFE2748B.235}
\]

Every positive lobe has its same-parent opposite lobe, so the raw partner
depletion statement of Section 29 is satisfied.  But the selected active bill is

\[
\int_0^{e^{-2}}W(s)\,d\nu^{atom}(s)
=
\int_0^{e^{-2}}{ds\over s}
=\infty .
\tag{TFE2748B.236}
\]

Equivalently, the active tail is

\[
N(\lambda)
=
\nu^{atom}\{W>\lambda\}
=
{1\over\lambda},
\qquad
\lambda>e^2,
\tag{TFE2748B.237}
\]

so

\[
N(2\lambda)={1\over2}N(\lambda).
\tag{TFE2748B.238}
\]

This is the exact half-barrier.  A recurrence with \(\theta<1/2\) and integrable
paid tail cannot be derived from finite raw atom mass, same-parent lobe pairing,
or signed \(H^1\)-BMO cancellation alone, because all three are present in
`(TFE2748B.232)'--`(TFE2748B.238)'.

This is not an asserted Navier--Stokes bad solution.  It is a model of the
information supplied by the currently proved raw estimates.  It proves that the
missing theorem must add one genuinely new original-data fact:

\[
\boxed{
\begin{array}{c}
\text{the parent coupled packet must supply either the strict tail recurrence}
\\
\text{`(TFE2748B.224)' or an equivalent parent \(L\log L\)/reverse-Holder
active-entropy bound}
\\
\text{for the selected atom measure before child clipping.}
\end{array}}
\tag{TFE2748B.239}
\]

In physical terms, the finite raw atom theorem says every pressure lobe has its
same-parent opposite lobe and finite unweighted budget.  The critical storage
line needs more: it must prove that the same coupled pressure-viscosity-
incompressibility packet cannot place finite raw pressure material on a
continuum of higher and higher active prices with exactly half-tail scaling.
That is the strict parent-active entropy/variation content of
`OriginalCriticalCapacityVariation.A`.

## 34. Exact parent-density source package for the storage line

The continuous half-tail shows what the raw theorem lacks.  The storage line is
proved once the original coupled packet supplies a parent-continuum density
before clipping, with finite active entropy and paid capacity variation.

Let \(d\mathfrak m_P\) be the parent active measure of the stopped packet, and
let the selected active atom bill be represented before clipping by

\[
dA_P^{crit,+}
 =
W_P\,d\nu_P^{atom}
=
F_P\,d\mathfrak m_P
+dA_P^{sing}
+dA_P^{paid}.
\tag{TFE2748B.240}
\]

Here \(F_P\,d\mathfrak m_P\) is the parent-absolutely-continuous active density,
\(dA_P^{sing}\) is a singular same-parent entry part, and \(dA_P^{paid}\) is
collar, route, legal, stop, reselection, or endpoint material already outside
the retained interior bill.  The exact source package is:

\[
\begin{aligned}
dA_P^{sing} &\le d\rho_{crit,P}^{entry}+dPaid_P+dStop_P,\\
\int_{\operatorname{Hist}(P)} \Phi(F_P)\,d\mathfrak m_P
&\le C_N(u_0)\mathcal R(P)+dPaid_P+dStop_P,
\qquad
\Phi(r)=r\log(e+r),\\
\mathfrak m_P(\operatorname{supp}F_P)
&\le C_N(u_0)\mathcal R(P)+dPaid_P+dStop_P,\\
[d\mathcal C_P^{crit}]_+
&\le d\Theta_P^0+dPaid_P+dStop_P.
\end{aligned}
\tag{TFE2748B.241}
\]

The first line says singular active entry is not allowed to remain as an
invisible interior bill; it is endpoint/entry material or paid leakage.  The
second and third lines are the parent active entropy/thickness theorem.  The
last line is the paid positive variation of the preallocated critical capacity.

These clauses prove the active \(L^1\) bill directly.  For any \(K>1\), Young's
elementary cutoff gives

\[
\int F_P\,d\mathfrak m_P
\le
K\,\mathfrak m_P(\operatorname{supp}F_P)
 +{1\over \log(e+K)}
 \int \Phi(F_P)\,d\mathfrak m_P .
\tag{TFE2748B.242}
\]

Choosing \(K=e^2\) and inserting `(TFE2748B.241)' gives

\[
\int_{\operatorname{Hist}(P)}F_P\,d\mathfrak m_P
\le
C_N(u_0)\mathcal R(P)+dPaid_P+dStop_P .
\tag{TFE2748B.243}
\]

Together with the singular-entry line in `(TFE2748B.241)', this yields

\[
\int_{\operatorname{Hist}(P)} W_P\,d\nu_P^{atom}
\le
C_N(u_0)\mathcal R(P)
+d\rho_{crit,P}^{entry}
+dPaid_P+dStop_P .
\tag{TFE2748B.244}
\]

Thus the selected active-level reserve `(TFE2748B.214)' follows in exact
continuous parent measure.  The strict tail recurrence `(TFE2748B.224)' is a
stronger good-lambda presentation of the same source content, not a consequence
of bare global \(L\log L\) alone.  It follows when the entropy/thickness clause
in `(TFE2748B.241)' is available locally on stopped superlevel parent packets
with the usual reverse-Holder self-improvement.  In that stronger local form,
charging bad stopping fibres to \(dPaid_P+dStop_P\) gives

\[
N_P(2\lambda)
\le
\theta\,N_P(\lambda)+B_P(\lambda),
\qquad
\theta<\frac12,
\qquad
\int_0^\infty B_P(\lambda)\,d\lambda<\infty .
\tag{TFE2748B.245}
\]

Either route now supplies the same integrated reserve: `(TFE2748B.243)' gives it
directly, while `(TFE2748B.245)' gives it through Section 32.  Section 30 then
inserts the weighted atom detector before clipping, and `(TFE2748B.182)' gives
same-parent partner attachment.  With

\[
M_P^{crit}=\mathcal C_P^{crit}-\mathcal E_P^{crit},
\tag{TFE2748B.246}
\]

the paid capacity-variation line in `(TFE2748B.241)' gives

\[
d\mathcal E_P^{crit}
\le
-dM_P^{crit}
+d\Theta_P^0
+\theta\,d\Omega_P^{gen}
+dPaid_P+dStop_P,
\qquad
C_N\theta<1,
\tag{TFE2748B.247}
\]

which is the critical capacity variation/storage line.

So the exact remaining arbitrary-data theorem is no longer an ambiguous
"selected \(L^1\)" demand.  It is the four-clause parent-density source package
`(TFE2748B.241)' for the coupled pressure-viscosity-incompressibility packet:
absolute-continuous active density before clipping, singular entry admission,
finite parent active entropy/thickness, and paid positive variation of the
preallocated critical capacity.

## 35. Renormalized coupled-packet identity for the source package

The parent-density package `(TFE2748B.241)' can be attacked directly from the
coupled packet equation.  In the stopped parent frame write the full retained
packet as \(Y_P\), including velocity/strain, pressure-Hodge compatibility,
transported frame, covectors, selected detector coordinates, and finite jet
rungs needed for the fixed \(N\) readout.  Its before-clipping equation has the
form

\[
D_t^P Y_P+\mathcal L_PY_P
=
\mathcal G_P^{root}
+\mathcal R_P^{paid},
\qquad
\mathcal C_PY_P=0,
\tag{TFE2748B.248}
\]

where \(\mathcal L_P\) contains the heat/Stokes part, volume-preserving material
transport, and the pressure/Hodge constraint operator in one parent equation.
The paid term contains route, collar, legal, stop, reselection, and endpoint
chart errors already removed from the retained interior bill.

Let the before-clipping selected active density be a parent-announced nonlinear
readout

\[
F_P=\Psi_P(Y_P),
\qquad
\Psi_P\ge0,
\tag{TFE2748B.249}
\]

with singular first-entry trace kept separately as
\(d\rho_{crit,P}^{entry}\).  Applying the renormalized chain rule to
`(TFE2748B.248)' gives

\[
D_t^P F_P
-\operatorname{div}_{\mathfrak m}
(A_P\nabla_{\mathfrak m}F_P)
=
-\mathcal D_{\Psi,P}
+\mathcal K_{\Psi,P}
+\mathcal G_{\Psi,P}
+\mathcal R_{\Psi,P}^{paid}.
\tag{TFE2748B.250}
\]

Here the parabolic entropy production is

\[
\mathcal D_{\Psi,P}
=
\nu\,D^2\Psi_P(Y_P)
[\nabla_{\mathfrak m}Y_P,\nabla_{\mathfrak m}Y_P]\ge0
\tag{TFE2748B.251}
\]

on the convex active readout fibres.  The term
\(\mathcal K_{\Psi,P}\) is the exact non-passive commutator:

\[
\mathcal K_{\Psi,P}
=
D\Psi_P(Y_P)\bigl(\mathcal H_PY_P\bigr)
-\mathcal H_P\bigl(\Psi_P(Y_P)\bigr)
+[D_t^P,\Psi_P](Y_P)
+\mathcal K_P^{frame/sel/cov/Hodge}.
\tag{TFE2748B.252}
\]

This is the mathematical location of the physical pressure/incompressibility
feedback.  The heat part is dissipative after renormalization; the Hodge,
moving-frame, covector, selector, and collar pieces can re-coordinate the
selected density and have no sign until the same-parent participation law
controls them.

Multiplying `(TFE2748B.250)' by \(\Phi'(F_P)\), with
\(\Phi(r)=r\log(e+r)\), and integrating in the parent measure gives

\[
D_t^P\int \Phi(F_P)\,d\mathfrak m_P
+\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P
\le
\int \Phi'(F_P)
[\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}]_+
\,d\mathfrak m_P
+dPaid_P+dStop_P .
\tag{TFE2748B.253}
\]

Thus `(TFE2748B.241)' follows from the single accretive same-parent
renormalized commutator estimate

\[
\int \Phi'(F_P)
[\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}]_+
\,d\mathfrak m_P
\le
\theta
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\theta<1,
\tag{TFE2748B.254}
\]

together with singular-entry admission

\[
dA_P^{sing}\le d\rho_{crit,P}^{entry}+dPaid_P+dStop_P
\tag{TFE2748B.255}
\]

and paid positive variation of the preallocated capacity

\[
[d\mathcal C_P^{crit}]_+
\le d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.256}
\]

This is the current deepest exact form of the storage line.  Raw atomization
proves that the pressure-Hodge piece has same-parent signed partners before
clipping; `(TFE2748B.254)' is stronger.  It must prove that, after the active
renormalization, the positive part of the coupled Hodge/frame/selector/root
generator commutator is absorbed by the same parent heat/Fisher dissipation and
paid packet motion.  Proving `(TFE2748B.254)' from arbitrary original smooth data,
with `(TFE2748B.255)'--`(TFE2748B.256)', proves the critical capacity
variation/storage line `(TFE2748B.247)'.

## 36. Entropy-weighted current form of the commutator estimate

The estimate `(TFE2748B.254)' has a sharper same-parent current form.  Suppose
the renormalized non-passive term can be written before clipping as

\[
\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}
=
\operatorname{div}_{\mathfrak m}J_{\Psi,P}
+k_{\Psi,P}^0
+r_{\Psi,P}^{paid},
\tag{TFE2748B.257}
\]

where \(J_{\Psi,P}\) is a stopped same-parent current built from the original
pressure-Hodge, frame, selector, covector, turnstile, exchange, and root-generator
motion; \(k_{\Psi,P}^0\) is the zero-order retained source; and
\(r_{\Psi,P}^{paid}\) is route, collar, legal, stop, reselection, or endpoint
material.  Boundary traces of \(J_{\Psi,P}\) through the stopped parent collar are
included in \(r_{\Psi,P}^{paid}\).

Then integration by parts gives

\[
\begin{aligned}
\int \Phi'(F_P)
(\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P})\,d\mathfrak m_P
&=
-\int \Phi''(F_P)
\langle \nabla_{\mathfrak m}F_P,J_{\Psi,P}\rangle\,d\mathfrak m_P\\
&\quad
+\int \Phi'(F_P)k_{\Psi,P}^0\,d\mathfrak m_P
+dPaid_P+dStop_P .
\end{aligned}
\tag{TFE2748B.258}
\]

With \(A_P^\dagger\) denoting the inverse on the parabolic range of \(A_P\), the
weighted Cauchy inequality yields, for every \(\varepsilon>0\),

\[
\begin{aligned}
\left|
\int \Phi''(F_P)
\langle \nabla_{\mathfrak m}F_P,J_{\Psi,P}\rangle\,d\mathfrak m_P
\right|
&\le
\varepsilon
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P\\
&\quad
+{1\over 4\varepsilon}
\int \Phi''(F_P)
\langle A_P^\dagger J_{\Psi,P},J_{\Psi,P}\rangle
\,d\mathfrak m_P .
\end{aligned}
\tag{TFE2748B.259}
\]

Therefore `(TFE2748B.254)' follows from the entropy-weighted current domination

\[
{1\over 4\varepsilon}
\int \Phi''(F_P)
\langle A_P^\dagger J_{\Psi,P},J_{\Psi,P}\rangle
\,d\mathfrak m_P
+\int \Phi'(F_P)[k_{\Psi,P}^0]_+\,d\mathfrak m_P
\le
\beta
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P
\tag{TFE2748B.260}
\]

with \(\varepsilon+\beta<1\).  Inserting `(TFE2748B.260)' into
`(TFE2748B.258)' gives `(TFE2748B.254)' with
\(\theta=\varepsilon+\beta\).

So the original-data proof has now been pushed to two exact facts:

\[
\boxed{
\begin{array}{c}
\text{construct the renormalized commutator as the same-parent divergence current
`(TFE2748B.257)',}\\
\text{and prove the entropy-weighted current domination `(TFE2748B.260)' with
strict coefficient \(\varepsilon+\beta<1\).}
\end{array}}
\tag{TFE2748B.261}
\]

This is a genuine strengthening of raw pressure atomization.  Raw atomization
says the signed Hodge residue has zero-mean same-parent lobes.  The current form
says the active-renormalized pressure/Hodge/frame/selector feedback has no
standalone positive zero-order source, and its divergence current is paid in
the entropy-weighted metric attached to the same parent density \(F_P\).  Proving
`(TFE2748B.257)'--`(TFE2748B.260)' from arbitrary original smooth data proves
`(TFE2748B.254)', hence the parent-density source package `(TFE2748B.241)' and
the critical capacity variation/storage line.

## 37. Pre-clipping signed atomization and the reserve-depletion upgrade

The signed atom attachment itself is now a theorem-level measure fact, provided
the selected meter has already been pulled back into the stopped parent frame.
Let \(X_P\) be one stopped parent packet, including its time coordinate, and let
\(dJ_P^{S}\) be the selected pre-clipping pressure-Hodge/material residue after
route, collar, legal, stop, and endpoint leakage has been separated.  The
projected-pressure identity gives the parent residue in the form

\[
dJ_P^{S}=d\widetilde J_P^{S}+dR_P^{S},
\qquad
\int_{X_P}d\widetilde J_P^{S}=0,
\qquad
|dR_P^{S}|
\le
dPaid_P+dStop_P+d\Theta_P^0 .
\tag{TFE2748B.262}
\]

For arbitrary original smooth data this is finite on every stopped compact
subinterval.  The zero-mass clause is the local parent-frame form of pressure as
a constraint force: after the parent detector is in the adjoint, the
pressure-Hodge part redistributes the same parent packet and only the listed
collar/route/legal/stop defects can carry net mass.

Write the Jordan decomposition

\[
d\widetilde J_P^{S}
=
dJ_{P,+}^{S}-dJ_{P,-}^{S},
\qquad
dJ_{P,+}^{S}(X_P)=dJ_{P,-}^{S}(X_P)=:M_P^J .
\tag{TFE2748B.263}
\]

Choose any coupling \(\pi_P\) of \(dJ_{P,+}^{S}\) and \(dJ_{P,-}^{S}\).  For
instance, when \(M_P^J>0\),

\[
\pi_P
=
{dJ_{P,+}^{S}\otimes dJ_{P,-}^{S}\over M_P^J};
\tag{TFE2748B.264}
\]

when \(M_P^J=0\) take \(\pi_P=0\).  Then for every bounded parent test function
\(\varphi\),

\[
\int_{X_P}\varphi\,d\widetilde J_P^{S}
=
\int_{X_P\times X_P}
\bigl(\varphi(x)-\varphi(y)\bigr)\,d\pi_P(x,y).
\tag{TFE2748B.265}
\]

Thus

\[
d\widetilde J_P^{S}
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\int\|\,\delta_x-\delta_y\,\|_{TV}\,d\pi_P
=
|d\widetilde J_P^{S}|(X_P).
\tag{TFE2748B.266}
\]

This is the exact same-parent atomic decomposition: every positive lobe is
paired with an opposite signed lobe in the same stopped parent packet, and the
coefficient mass is controlled by the total variation of the pre-clipping
parent residue.

The selected-weight issue is also exact.  If a child weight \(W_P\) is applied
after this atomization, then the zero-mean pairing is distorted by

\[
\int_{X_P}W_P\,d\widetilde J_P^{S}
=
\int_{X_P\times X_P}
\bigl(W_P(x)-W_P(y)\bigr)\,d\pi_P(x,y).
\tag{TFE2748B.267}
\]

So late weighting is not free.  The right before-clipping object is the
parent-announced detector for which the selected meter has already been included
in \(dJ_P^{S}\); the remaining variation in \(W_P\) is exactly selector,
covector, frame, collar, Hodge, or route leakage, and belongs to
\(dR_P^{S}\).  This proves the requested coefficient/leakage split: atom
coefficients are controlled by \(|d\widetilde J_P^{S}|\), and every failure of
the selected positive lobe to match its opposite lobe is a paid detector-motion
term.

On the atom ledger \(X_P\times X_P\), define

\[
dJ_{P,atom}^{ret,-}:=d\pi_P .
\tag{TFE2748B.268}
\]

The positive lobe is the first marginal of this same atom ledger and the
retained opposite lobe is the second marginal:

\[
dJ_{P,+}^{S}=(\mathrm{pr}_1)_\#d\pi_P,
\qquad
dJ_{P,-}^{S}=(\mathrm{pr}_2)_\#d\pi_P .
\tag{TFE2748B.269}
\]

Consequently the selected positive pressure-Hodge/material bill can only enter
as already paired atom mass plus the paid leakage:

\[
(dJ_P^{S})_+
\preceq_{atom}
dJ_{P,atom}^{ret,-}+(dR_P^{S})_+ .
\tag{TFE2748B.270}
\]

The symbol \(\preceq_{atom}\) records that the comparison is made on the
same-parent atom ledger.  Without the atom ledger, the positive and negative
lobes may live at different points of \(X_P\), so the comparison is a paired
transport comparison, not an unpaired pointwise measure inequality.

The selected-critical reserve upgrade is the remaining source estimate.  In the
raw atom ledger, Section 41 charges the retained opposite lobe to
\(M_P^{atom}\) with \(-dM_P^{atom}=dJ_{P,atom}^{ret,-}\).  Gold needs the
stronger parent-announced critical reserve

\[
dJ_{P,atom}^{ret,-}
\le
-dM_P^{crit}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
M_P^{crit}\ge -C_N(u_0),
\tag{TFE2748B.271}
\]

then the critical spent measure satisfies

\[
dE_P^{crit}
\le
-dM_P^{crit}
+\theta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\theta<1.
\tag{TFE2748B.272}
\]

This is the storage line.

The construction above proves the signed atomic decomposition from arbitrary
smooth data before clipping.  Section 41 also proves the unweighted atom-ledger
reserve depletion.  What remains is the terminal-uniform selected-critical
reserve bound in `(TFE2748B.271)': \(M_P^{crit}\) must have root-finite initial
size in the selected-critical currency.  Defining that size by the future tail of
selected reads would be circular; the reserve must be parent-announced from the
original coupled packet before the child readout is clipped.  Equivalently,
`(TFE2748B.271)' is supplied by the entropy-weighted current domination
`(TFE2748B.260)' or by an equivalent parent-active Orlicz/reverse-Holder source
theorem.  Once that selected-critical source estimate is proved,
`(TFE2748B.270)' turns every positive selected lobe into retained parent-reserve
depletion plus paid leakage, and `(TFE2748B.272)' gives `(TFE2748B.247)'.

## 38. Galerkin Liouville audit of the reserve source

There is one exact physical fact available before the selected meter is moved:
the inviscid pressure/self-advection part re-coordinates the full parent state
without creating phase volume.  In a finite Fourier-Galerkin truncation write the
divergence-free velocity coefficients as \(a\in H_M\) and the projected equation
as

\[
\dot a
=
B_M(a)-\nu \Lambda_M a,
\qquad
B_M(a)=\mathbb P_M[-u_M\cdot\nabla u_M].
\tag{TFE2748B.273}
\]

The quadratic Euler vector field satisfies

\[
\operatorname{div}_{a}B_M=0,
\qquad
\langle B_M(a),\Lambda_M^0 a\rangle=0,
\tag{TFE2748B.274}
\]

the first identity being the finite-dimensional Liouville identity and the
second the usual kinetic-energy skew identity.  The pressure is already included
in \(B_M\) through the Leray projection; it is not a separate force outside the
participation law.

Let \(\rho_M(a,t)\) be any smooth parent density transported by the inviscid
part.  Then

\[
\partial_t\rho_M+\operatorname{div}_a(B_M\rho_M)=0
\tag{TFE2748B.275}
\]

gives exact entropy conservation:

\[
{d\over dt}\int \Phi(\rho_M)\,da
=
\int \Phi'(\rho_M)\operatorname{div}_a(B_M\rho_M)\,da
=0 .
\tag{TFE2748B.276}
\]

This proves the clean version of the physical statement: pressure/incompressible
transport may rearrange the parent state, but on the full parent phase-space
density it supplies no positive entropy source.

The Gold selected density is not \(\rho_M\).  It is a parent-announced weighted
readout

\[
F_M=W_M(a,t)\rho_M(a,t),
\tag{TFE2748B.277}
\]

where \(W_M\) encodes the selected critical packet meter, stopped frame,
covectors, Hodge/collar choices, and heat-lag normalization.  Substituting
\(\rho_M=F_M/W_M\) into `(TFE2748B.275)' gives

\[
\partial_tF_M+\operatorname{div}_a(B_MF_M)
=
F_M\,(\partial_t+B_M\cdot\nabla_a)\log W_M .
\tag{TFE2748B.278}
\]

Therefore the inviscid Liouville part contributes to the selected entropy only
through the material derivative of the selected meter:

\[
\begin{aligned}
{d\over dt}\int \Phi(F_M)\,da
&=
\int \Phi'(F_M)F_M
(\partial_t+B_M\cdot\nabla_a)\log W_M\,da .
\end{aligned}
\tag{TFE2748B.279}
\]

This is exactly the selected-meter version of the non-passive commutator
\(\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}\).  The right side vanishes only when
the selected meter is transported as part of the full parent coordinate system,
or when its motion is charged to paid selector/frame/collar/reselection terms.
Thus finite-dimensional Liouville proves the zero-source part of
`(TFE2748B.260)' and also proves why Liouville alone cannot supply the
Gold \(L^1\) reserve: the selected critical weight can still move through the
Liouville flow.

Restoring viscosity adds the parabolic Fisher term and paid heat-lag/collar
defects.  The exact sufficient source estimate is the weighted meter-motion
inequality

\[
\int \Phi'(F_P)F_P
\bigl[(D_t^P+\mathcal B_P)\log W_P\bigr]_+
\,d\mathfrak m_P
\le
\beta
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.280}
\]

with \(\beta<1\), after the already-paid selector, collar, frame, Hodge, and
endpoint defects have been removed.  Here \(\mathcal B_P\) denotes the
volume-preserving pressure/self-advection/Hodge generator in the stopped parent
coordinates.  Equation `(TFE2748B.280)' is the scalar selected-meter face of
the entropy-weighted current domination `(TFE2748B.260)'.

Consequently the reserve theorem `(TFE2748B.271)' is now reduced to this precise
noncircular production statement:

\[
\boxed{
\begin{array}{c}
\text{construct \(W_P\) from the original coupled packet before clipping,}\\
\text{prove its positive logarithmic material derivative satisfies
`(TFE2748B.280)',}\\
\text{and keep every failure of transport of \(W_P\) on paid
selector/frame/collar/Hodge/stop ledgers.}
\end{array}}
\tag{TFE2748B.281}
\]

This does not close Gold.  It removes the false pressure-versus-viscosity split:
pressure/self-advection gives a Liouville re-coordination of the full parent
state, viscosity gives the Fisher descent, and the only remaining source is the
selected-meter motion inside that same coupled transaction.  Proving
`(TFE2748B.280)' from arbitrary original smooth data gives `(TFE2748B.260)',
then `(TFE2748B.271)' and the critical capacity variation/storage line.

## 39. Parent-gauge normal form for the selected meter

The preceding sections prove the signed atom attachment, but they also show why
the retained opposite lobe is not automatically a bounded-below critical
reserve.  The atom ledger pairs signs.  The reserve theorem asks whether the
selected meter that sees those signs is itself carried by a past-built parent
clock before the child clips the positive lobe.

Let

\[
\mathcal L_P:=D_t^P+\mathcal B_P
\]

be the stopped parent material generator from `(TFE2748B.280)'.  On each stopped
selector chamber, decompose the positive parent-announced selected meter as

\[
\log W_P
=
\log W_P^{tr}
+\log W_P^{met}
+\log W_P^{conn}
+\log W_P^{heat}
+\log W_P^{stop}.
\tag{TFE2748B.282}
\]

Here \(W_P^{tr}\) is the part transported with the parent coordinate system,
\(W_P^{met}\) is the material stretch/covector part, \(W_P^{conn}\) is the
Hodge, selector, collar, pressure-frame, turnstile, exchange, and reselection
connection part, \(W_P^{heat}\) is the heat-lag normalization, and
\(W_P^{stop}\) is the BV jump part carried by stop/legal/endpoint charts.  The
transported factor is gauge:

\[
\mathcal L_P\log W_P^{tr}=0 .
\tag{TFE2748B.283}
\]

The metric part is explicit.  Let \(F=\nabla_aX\), \(G=F^\top F\), and
\(S=\operatorname{sym}\nabla u\).  Then

\[
D_tG=2F^\top SF .
\tag{TFE2748B.284}
\]

For a fixed material vector \(\xi\),

\[
D_t\log |F\xi|
=
{\langle F\xi,SF\xi\rangle\over |F\xi|^2}
=
\widehat{F\xi}\cdot S\,\widehat{F\xi}.
\tag{TFE2748B.285}
\]

For a transported Eulerian covector \(k=F^{-\top}k_0\),

\[
D_t\log |k|
=
-\widehat{k}\cdot S\,\widehat{k}.
\tag{TFE2748B.286}
\]

Since \(\det F=1\), incompressibility gives only the total log-volume identity
\(\operatorname{tr}S=0\).  It cancels the signed average over all principal
directions; it does not control the selected positive part
\([\mathcal L_P\log W_P^{met}]_+\).  This is the exact mathematical version of
the physical issue: pressure/incompressibility can re-coordinate the packet
without changing total volume, while a selected child can still follow the
expanding direction unless that one-sided frame motion is charged in the same
parent clock.

Thus the selected-meter source splits as

\[
\mathcal L_P\log W_P
=
\alpha_P^{met}
+\alpha_P^{conn}
+\alpha_P^{heat}
+\dot r_P^{paid},
\tag{TFE2748B.287}
\]

where \(\alpha_P^{met}=\mathcal L_P\log W_P^{met}\),
\(\alpha_P^{conn}=\mathcal L_P\log W_P^{conn}\),
\(\alpha_P^{heat}=\mathcal L_P\log W_P^{heat}\), and \(\dot r_P^{paid}\) is
the density/jump part of \(d\Theta_P^0+dPaid_P+dStop_P\).  No new physical
force has been introduced in `(TFE2748B.287)'; it is a coordinate decomposition
of the same coupled pressure-viscosity-incompressibility transaction.

Consequently `(TFE2748B.280)' is equivalent to the parent-clock estimate

\[
\begin{aligned}
&\int
\Phi'(F_P)F_P
\bigl[
\alpha_P^{met}+\alpha_P^{conn}+\alpha_P^{heat}
\bigr]_+
\,d\mathfrak m_P\\
&\qquad\le
\beta
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad \beta<1 .
\end{aligned}
\tag{TFE2748B.288}
\]

This gives the exact reserve-depletion implication.  Define the pre-clipping
meter-motion measure

\[
d\Gamma_P^{meter}
:=
\Phi'(F_P)F_P
\bigl[
\alpha_P^{met}+\alpha_P^{conn}+\alpha_P^{heat}
\bigr]_+
d\mathfrak m_P .
\tag{TFE2748B.289}
\]

The atom transport comparison `(TFE2748B.267)'--`(TFE2748B.270)' gives

\[
dJ_{P,atom}^{ret,-}
\le
d\Gamma_P^{meter}
+d\Theta_P^0+dPaid_P+dStop_P
\tag{TFE2748B.290}
\]

on the same stopped parent atom ledger.  Therefore, if the meter-motion
measure has the parent storage domination

\[
d\Gamma_P^{meter}
\le
-dM_P^{crit}
+\beta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
M_P^{crit}\ge -C_N(u_0),
\tag{TFE2748B.291}
\]

then `(TFE2748B.271)' follows with \(\theta=\beta\), and hence
`(TFE2748B.272)' follows.  Conversely, any proof of `(TFE2748B.271)' that is
not circular must provide `(TFE2748B.291)' or an equivalent past-built
parent-clock domination, because `(TFE2748B.270)' supplies only the signed lobe
pairing and not the bounded-below primitive.

The existing stopped-frame and QR/Bessel surfaces supply only the fixed-gauge
consumer side.  Parent-subtracted QR prevents repeated counting after a detector
direction is admitted; the stopped exchange/reselection compensator identifies
where moving selectors and connection changes must be charged.  They do not by
themselves prove `(TFE2748B.288)' for arbitrary data.  The exact remaining
original-data producer is therefore:

\[
\boxed{
\text{construct \(W_P\) before clipping and prove `(TFE2748B.291)' for
\(\alpha_P^{met}+\alpha_P^{conn}+\alpha_P^{heat}\).}
}
\tag{TFE2748B.292}
\]

This is the corrected answer to the retained-lobe question.  The same-parent
atomic decomposition and its coefficient/leakage control are proved by
`(TFE2748B.262)'--`(TFE2748B.270)' from arbitrary smooth data, and Section 41
constructs the bounded-below unweighted atom reserve.  The selected-critical
Gold reserve is stronger: the selected-meter log-motion measure
`(TFE2748B.289)' must be dominated by the past-built root-finite storage
`(TFE2748B.291)'.  That weighted storage estimate is the unresolved Gold source
theorem, not a consequence of raw pressure zero-mean, finite energy, or
fixed-frame Bessel orthogonality alone.

## 40. Minimal-bad branch for the meter-motion reserve

The source estimate `(TFE2748B.291)' has a useful negation.  If it fails after
legal, stop, endpoint, and already-paid reselection terms are removed, then for
some sequence of stopped parent packets \(P_n\) one can normalize the positive
meter-motion measure by

\[
\Gamma_{P_n}^{meter}(P_n)=1
\tag{TFE2748B.293}
\]

while every proposed past-built storage drop, strict Fisher absorption, and paid
motion term visible to `(TFE2748B.291)' tends to zero:

\[
\beta\,\Omega_{P_n}^{gen}(P_n)
+\Theta_{P_n}^0(P_n)+Paid(P_n)+Stop(P_n)
+\bigl(M_{P_n}^{crit}(0)-M_{P_n}^{crit}(T_n)\bigr)
\longrightarrow 0 .
\tag{TFE2748B.294}
\]

Here `(TFE2748B.294)' is not a new assumption on the original solution.  It is
the normalized minimal-bad form of failure of the desired storage inequality:
after every term on the right of `(TFE2748B.291)' has been made negligible, a
unit amount of positive selected-meter motion still remains.

The decomposition `(TFE2748B.287)' then gives a branch test.  Any nonzero
surviving connection, selector, collar, Hodge-frame, turnstile, route, or
reselection motion is paid by the \(d\Theta^0+dPaid+dStop\) side and cannot
survive `(TFE2748B.294)'.  Any heat-lag defect visible to the parent density is
absorbed by the Fisher term or by paid heat/collar leakage.  Thus a genuine
minimal bad survivor must satisfy, in the stopped limit,

\[
\alpha_P^{conn}=0,\qquad
\alpha_P^{heat}=0,\qquad
d\Theta_P^0+dPaid_P+dStop_P=0,
\tag{TFE2748B.295}
\]

and the unit meter motion is carried by the metric/Cauchy-Green part:

\[
d\Gamma_P^{meter}
=
\Phi'(F_P)F_P[\alpha_P^{met}]_+\,d\mathfrak m_P .
\tag{TFE2748B.296}
\]

The local coupled Navier-Stokes law does not contradict `(TFE2748B.296)'.  In a
coordinate patch let \(B(t)\) be any smooth symmetric trace-free matrix and set

\[
u(t,x)=B(t)x,\qquad
p(t,x)=-{1\over2}x\cdot\bigl(B'(t)+B(t)^2\bigr)x .
\tag{TFE2748B.297}
\]

Then

\[
\nabla\cdot u=0,\qquad
\nu\Delta u=0,\qquad
\partial_tu+(u\cdot\nabla)u+\nabla p=0,
\tag{TFE2748B.298}
\]

so `(TFE2748B.297)' is an exact local incompressible Navier--Stokes normal form
for every fixed \(\nu>0\).  For the deformation gradient \(F\),

\[
{d\over dt}\log |F(t)\xi|
=
{\langle F(t)\xi,B(t)F(t)\xi\rangle\over |F(t)\xi|^2}.
\tag{TFE2748B.299}
\]

Taking

\[
B(t)=\lambda(t)\operatorname{diag}(1,-1/2,-1/2)
\tag{TFE2748B.300}
\]

gives

\[
{d\over dt}\log |F(t)e_1|=\lambda(t).
\tag{TFE2748B.301}
\]

Thus arbitrary smooth positive metric-meter motion is locally compatible with
the full pressure-viscosity-incompressibility law.  Pressure is not detached in
this model; its Hessian supplies the exact incompressibility constraint force.
Viscosity is also present, but the affine core has zero Laplacian.  Therefore
`(TFE2748B.291)' cannot be proved by a local pressure sign, local viscosity
sign, incompressibility trace identity, finite-tower algebraic symmetrizer, or
endpoint-tail primitive.

What remains is global and same-history.  The affine core cannot live by itself
on the periodic original solution.  It must be matched to the surrounding same
fluid through collars, finite energy, pressure-Hodge return, annular
stress/strain exchange, and the next parent compatibility update.  Consequently
the failure of `(TFE2748B.291)' is reduced to the affine-burst/no-Zeno branch:

\[
\boxed{
\begin{array}{c}
\text{one original smooth material history admits a laminar chain of}\\
\text{pressure-Hessian-balanced affine metric visits with summable raw}\\
\text{heat/viscous/collar cost but divergent selected meter action.}
\end{array}}
\tag{TFE2748B.302}
\]

Equivalently, to prove `(TFE2748B.291)' it is enough to prove the same-history
weighted reserve

\[
\sum_{\gamma\subset \mathcal A(P)}
a_\gamma
\le
C\,\mathcal V_P^{global}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.303}
\]

where \(a_\gamma\) is the selected metric-meter action of each retained affine
visit, and \(\mathcal V_P^{global}\) is a parent-built variation reserve from
Cauchy-Green stretch, pressure-Hodge frame, collar/turnstile motion, annular
stress/strain return, and same-material exchange, constructed before child
positive clipping.  The reserve in `(TFE2748B.303)' must be root-finite from the
original data; defining it as the descendant selected tail is circular.

This is a method pivot, not a closure claim.  Sections 37--39 prove lobe
attachment and identify the exact selected-meter source.  Section 40 proves that
the remaining noncircular source cannot be local; after the installed paid
motion and fixed-gauge consumers are removed, the only honest survivor is the
global same-history affine-burst/no-Zeno weighted reserve `(TFE2748B.303)'.  A
proof of `(TFE2748B.303)' supplies `(TFE2748B.291)', then `(TFE2748B.271)' and
the critical capacity variation/storage line.

## 41. Atomic reserve construction and the exact weighted upgrade

Sections 29 and 37 must be read together.  Section 29 proves the raw
pressure-Hodge atom reserve.  Section 37 proves that the same atom bookkeeping
survives after the selected meter has been pulled into the stopped parent
adjoint.  The Gold issue is not atom existence; it is the weighted size of those
atoms in the selected-critical meter.

Let \(dJ_P^{S}\) be the selected pre-clipping pressure-Hodge/material residue on
the stopped parent packet \(X_P\), after route, collar, legal, stop, endpoint,
and already-paid detector-motion terms have been separated as \(dR_P^{S}\).  The
parent residue is a finite signed Radon measure for every stopped compact
preterminal packet generated by arbitrary original smooth data, and

\[
dJ_P^{S}=d\widetilde J_P^{S}+dR_P^{S},
\qquad
\widetilde J_P^{S}(X_P)=0,
\qquad
|dR_P^{S}|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.304}
\]

The zero-mass part has the Jordan split

\[
d\widetilde J_P^{S}=dJ_{P,+}^{S}-dJ_{P,-}^{S},
\qquad
dJ_{P,+}^{S}(X_P)=dJ_{P,-}^{S}(X_P)=M_P^{J,S}.
\tag{TFE2748B.305}
\]

Choose a same-parent transport coupling \(\pi_P^{S}\) of \(dJ_{P,+}^{S}\) and
\(dJ_{P,-}^{S}\).  Then

\[
d\widetilde J_P^{S}
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P^{S}(x,y),
\qquad
\pi_P^{S}(X_P\times X_P)=M_P^{J,S}
={1\over2}|d\widetilde J_P^{S}|(X_P).
\tag{TFE2748B.306}
\]

This is already the atom construction before clipping.  More explicitly, for
\(\pi_P^{S}\)-a.e. pair \((x,y)\in X_P\times X_P\), set

\[
d\mu_{x,y}:=\delta_x-\delta_y,
\qquad
\int_{X_P}d\mu_{x,y}=0,
\qquad
d\nu_P^{atom}:=d\pi_P^{S}.
\tag{TFE2748B.306a}
\]

Then

\[
d\widetilde J_P^{S}
=
\int d\mu_{x,y}\,d\nu_P^{atom}(x,y),
\qquad
\|d\nu_P^{atom}\|(X_P\times X_P)
=M_P^{J,S}
={1\over2}|d\widetilde J_P^{S}|(X_P).
\tag{TFE2748B.306b}
\]

If one wants countable atom notation, approximate \(d\nu_P^{atom}\) by simple
measures in total variation.  The limiting formula is the same parent Radon
decomposition

\[
dJ_P^{S}
=
\sum_\alpha c_\alpha\,d\mu_\alpha
+dR_P^{S},
\qquad
\int d\mu_\alpha=0,
\qquad
\sum_\alpha |c_\alpha|=M_P^{J,S},
\tag{TFE2748B.306c}
\]

with the sum understood literally for a simple approximation and as the
\(\pi_P^{S}\)-integral in the continuum packet.  The coefficient and leakage
control supplied by arbitrary original smooth data on every stopped preterminal
packet is therefore

\[
\sum_\alpha |c_\alpha|
=M_P^{J,S}
={1\over2}|d\widetilde J_P^{S}|(X_P)<\infty,
\qquad
|dR_P^{S}|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.306d}
\]

The finiteness in `(TFE2748B.306d)' is a pre-clipping parent fact: it uses only
the stopped original smooth packet and the paid separation in `(TFE2748B.304)'.
It is not the selected-critical terminal-uniform root bound; that stronger
weighted bound is isolated below as `(TFE2748B.311)'.

Equivalently, for every bounded parent test \(\varphi\),

\[
\int_{X_P}\varphi\,dJ_P^{S}
=
\int_{X_P\times X_P}(\varphi(x)-\varphi(y))\,d\pi_P^{S}(x,y)
+\int_{X_P}\varphi\,dR_P^{S}.
\tag{TFE2748B.307}
\]

On the atom ledger define the retained opposite-lobe measure by the second
marginal,

\[
dJ_{P,atom}^{ret,-}:=(\mathrm{pr}_2)_\#d\pi_P^{S}.
\tag{TFE2748B.308}
\]

For the stopped parent-time coordinate \(s\), define the atom reserve

\[
M_P^{atom}(\tau)
:=
M_P^{J,S}
-
dJ_{P,atom}^{ret,-}\bigl(X_P\cap\{s< \tau\}\bigr).
\tag{TFE2748B.309}
\]

Then \(M_P^{atom}\) is a same-parent decreasing Stieltjes reserve with

\[
0\le M_P^{atom}(\tau)\le M_P^{J,S},
\qquad
M_P^{atom}(0)=M_P^{J,S},
\qquad
M_P^{atom}(T_P)\ge0,
\tag{TFE2748B.309a}
\]

and, as a Stieltjes measure on the same parent atom ledger,

\[
dJ_{P,atom}^{ret,-}\le -dM_P^{atom}.
\tag{TFE2748B.310}
\]

In the continuum notation this is an equality on the retained atom ledger:

\[
-dM_P^{atom}
=dJ_{P,atom}^{ret,-}
\quad\text{on retained parent atoms,}
\tag{TFE2748B.310a}
\]

with any collar, route, legal, stop, endpoint, or detector-motion leakage already
living in \(dR_P^{S}\).  Thus the retained opposite lobe is a bounded-below
parent reserve depletion with initial size \(M_P^{J,S}\).  This reserve is not a
future selected tail: \(M_P^{atom}\) is built from the pre-clipping signed parent
residue and decreases exactly when the retained opposite lobe is recorded.

Consequently the requested source fact is proved in the unweighted stopped
parent currency:

\[
\boxed{
\begin{array}{c}
\text{arbitrary original smooth data gives the pre-clipping same-parent atom
decomposition}\\
\text{`(TFE2748B.306a)'--`(TFE2748B.306d)', paid leakage `(TFE2748B.304)',}\\
\text{and bounded-below retained opposite-lobe depletion
`(TFE2748B.309)'--`(TFE2748B.310a)'.}
\end{array}}
\tag{TFE2748B.310b}
\]

The Gold upgrade is the root-finite weighted bound for this same atom mass:

\[
M_P^{J,S}
\le
C\,\mathcal V_P^{global}
+(d\Theta_P^0+dPaid_P+dStop_P)(X_P),
\tag{TFE2748B.311}
\]

where \(\mathcal V_P^{global}\) is constructed from the original same-history
packet before child positive clipping.  In the older weighted-atom notation,
`(TFE2748B.311)' is the same source as `(TFE2748B.202)'; in the selected-meter
notation it is `(TFE2748B.291)'; in the minimal-bad branch it is
`(TFE2748B.303)'.

If `(TFE2748B.311)' is proved, set

\[
M_P^{crit}(\tau):=M_P^{atom}(\tau).
\tag{TFE2748B.312}
\]

Then \(M_P^{crit}\ge0\), while `(TFE2748B.311)' gives the required root-finite
initial size

\[
M_P^{crit}(0)
\le
C\,\mathcal V_P^{global}
+(d\Theta_P^0+dPaid_P+dStop_P)(X_P).
\tag{TFE2748B.312a}
\]

Moreover

\[
dJ_{P,atom}^{ret,-}
\le
-dM_P^{crit}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.313}
\]

Combining `(TFE2748B.313)' with the atom transport comparison
`(TFE2748B.270)' gives `(TFE2748B.271)', and then `(TFE2748B.272)'.  Conversely,
any noncircular proof of `(TFE2748B.271)' must supply a parent-built bound at the
level of `(TFE2748B.311)', because `(TFE2748B.306)'--`(TFE2748B.310)' already
exhaust the measure-theoretic pairing and reserve-depletion bookkeeping.  What
is not yet proved from arbitrary original data is exactly the weighted
root-finiteness of \(M_P^{J,S}\), not the atomic decomposition itself.

## 42. The divergence-current representation is not the hard source

Section 36 left two facts in `(TFE2748B.261)': construct the same-parent
divergence current, and prove its entropy-weighted current domination.  The first
fact is actually a stopped Hodge construction for arbitrary original smooth
data.  The second fact is the Gold source theorem.

Let

\[
h_{\Psi,P}:=\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}
\tag{TFE2748B.314}
\]

be the renormalized non-passive scalar source in the stopped parent frame, before
positive clipping.  Since the original solution is smooth on every compact
preterminal interval, \(h_{\Psi,P}\) is a finite smooth density on the stopped
parent packet after the already-routed collar, legal, stop, reselection, and
endpoint terms have been removed.

Let \(\Pi_{\ker}\) be the parent-announced projection onto the finite-dimensional
kernel generated by constants, lower carry, endpoint trace, legal/stop charts,
and stopped route modes.  Set

\[
k_{\Psi,P}^{0}:=\Pi_{\ker}h_{\Psi,P},
\qquad
h_{\Psi,P}^{\perp}:=(I-\Pi_{\ker})h_{\Psi,P}.
\tag{TFE2748B.315}
\]

The kernel term is exactly the retained zero-order source already appearing in
`(TFE2748B.257)'.  It is not hidden in the current.  It remains on the left side
of `(TFE2748B.260)' as
\(\int\Phi'(F_P)[k_{\Psi,P}^{0}]_+\,d\mathfrak m_P\).

On the orthogonal parent quotient solve the stopped Neumann-Hodge problem

\[
-\operatorname{div}_{\mathfrak m}
\bigl(A_P\nabla_{\mathfrak m}\phi_{\Psi,P}\bigr)
=h_{\Psi,P}^{\perp},
\qquad
\Pi_{\ker}\phi_{\Psi,P}=0,
\tag{TFE2748B.316}
\]

with collar flux defects assigned to \(d\Theta_P^0+dPaid_P+dStop_P\).  Define

\[
J_{\Psi,P}:=-A_P\nabla_{\mathfrak m}\phi_{\Psi,P}.
\tag{TFE2748B.317}
\]

Then, as a parent distribution before clipping,

\[
h_{\Psi,P}
=
\operatorname{div}_{\mathfrak m}J_{\Psi,P}
+k_{\Psi,P}^{0}
+r_{\Psi,P}^{paid},
\qquad
|r_{\Psi,P}^{paid}|\le d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.318}
\]

This proves the representation part `(TFE2748B.257)' from arbitrary original
smooth data.  The construction is same-parent because \(A_P\), the stopped
kernel, the collar condition, and \(h_{\Psi,P}\) are all determined by the
original stopped material packet before the child positive readout is clipped.

The construction also shows why representation alone cannot close Gold.  Testing
`(TFE2748B.316)' by \(\phi_{\Psi,P}\) gives only the unweighted elliptic energy

\[
\int\langle A_P\nabla_{\mathfrak m}\phi_{\Psi,P},
\nabla_{\mathfrak m}\phi_{\Psi,P}\rangle\,d\mathfrak m_P
=
\int \phi_{\Psi,P}h_{\Psi,P}^{\perp}\,d\mathfrak m_P .
\tag{TFE2748B.319}
\]

The entropy storage needs the stronger entropy-weighted mobility estimate

\[
\int \Phi''(F_P)
\langle A_P^\dagger J_{\Psi,P},J_{\Psi,P}\rangle
\,d\mathfrak m_P
+\int \Phi'(F_P)[k_{\Psi,P}^{0}]_+\,d\mathfrak m_P
\le
\beta
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.320}
\]

with the strict margin required in `(TFE2748B.260)'.  The weight
\(\Phi''(F_P)\) is tied to the same entropy/Fisher metric as the selected
active density \(F_P\).  It is not supplied by the raw Neumann construction,
which gives only an unweighted stopped elliptic representation.

Consequently the current proof state is:

\[
\boxed{
\begin{array}{c}
\text{same-parent current representation `(TFE2748B.257)': proved by
`(TFE2748B.314)'--`(TFE2748B.318)';}\\
\text{entropy-weighted current domination `(TFE2748B.260)': still the remaining
arbitrary-data source theorem.}
\end{array}}
\tag{TFE2748B.321}
\]

Equivalently, after Sections 41--42, the whole critical capacity
variation/storage line has been reduced to proving the weighted mobility
bound `(TFE2748B.320)' for the original coupled packet.  If `(TFE2748B.320)' is
proved with \(\varepsilon+\beta<1\), Section 36 gives `(TFE2748B.254)', Section
34 gives `(TFE2748B.241)' and `(TFE2748B.247)', and Section 41 turns the
retained opposite lobe into bounded-below parent reserve depletion in the
selected-critical currency.

## 43. Exact one-sided aligned-current form

The square domination `(TFE2748B.320)' is sufficient, but it is stronger than the
entropy identity itself requires.  The positive storage line only sees the
portion of the same-parent current that pushes against the entropy gradient of
the selected density.  Transverse pressure/Hodge re-coordination may carry
current energy without creating positive selected entropy.

Define the entropy-Fisher density

\[
dI_P
:=
\Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P,
\tag{TFE2748B.322}
\]

and the one-sided aligned current-production density

\[
dQ_P^{align}
:=
\Bigl[
-\Phi''(F_P)
\langle\nabla_{\mathfrak m}F_P,J_{\Psi,P}\rangle
+\Phi'(F_P)k_{\Psi,P}^{0}
\Bigr]_+
\,d\mathfrak m_P .
\tag{TFE2748B.323}
\]

The exact remaining source estimate for `(TFE2748B.254)' is

\[
\int dQ_P^{align}
\le
\theta\int dI_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\theta<1.
\tag{TFE2748B.324}
\]

Indeed, inserting `(TFE2748B.323)' into the integration-by-parts identity
`(TFE2748B.258)' gives `(TFE2748B.254)' directly.  Conversely, after the paid
terms have been removed, `(TFE2748B.254)' is precisely `(TFE2748B.324)' written
before the aligned-current notation.  Thus `(TFE2748B.324)' is the necessary
one-sided form of the Gold source line.

The square estimate `(TFE2748B.320)' implies `(TFE2748B.324)' by Cauchy and
\(\varepsilon+\beta<1\), but the implication is one-way:

\[
\text{entropy-weighted square domination `(TFE2748B.320)'}
\Longrightarrow
\text{one-sided aligned-current domination `(TFE2748B.324)'}.
\tag{TFE2748B.325}
\]

The minimal bad branch for the exact theorem is therefore sharper.  Failure of
Gold storage after Sections 41--42 produces stopped packets \(P_n\) with

\[
\int dQ_{P_n}^{align}=1,
\qquad
\int dI_{P_n}
+\Theta_{P_n}^0(P_n)+Paid(P_n)+Stop(P_n)
\longrightarrow0.
\tag{TFE2748B.326}
\]

This means the only remaining positive source is not raw pressure mass, not
absence of a same-parent atom, and not absence of a current representation.  It
is a one-sided anti-gradient alignment of the coupled pressure/Hodge/frame/
selector current with the selected active density, surviving after Fisher
dissipation and all paid packet motion vanish.  Proving that this branch cannot
occur from one original smooth material history is the exact current form of
`OriginalCriticalCapacityVariation.A`.

## 44. Kernel exhaustion and the pure aligned-current survivor

The zero-order kernel in `(TFE2748B.323)' is not a second physical source.  By
`(TFE2748B.315)' the kernel is generated by constants, lower carry, endpoint
trace, legal/stop charts, and stopped route modes.  In the retained quotient
these are exactly the modes already assigned to lower induction, endpoint entry,
legal, stop, route, or \(\Theta_P^0\) material.  Write

\[
k_{\Psi,P}^{0}
=
k_P^{const}
+k_P^{low}
+k_P^{end}
+k_P^{legal}
+k_P^{stop}
+k_P^{route}.
\tag{TFE2748B.327}
\]

The constant pressure-Hodge part has zero retained mass by the same parent
zero-mass clause `(TFE2748B.262)'.  Any active-renormalized constant mode left
after the detector is differentiated is a lower/root carry term, so it belongs
to \(\Theta_P^0\).  The other five kernel components are their named ledgers.
Thus the kernel-positive term satisfies the quotient-exhaustion estimate

\[
\int \Phi'(F_P)[k_{\Psi,P}^{0}]_+\,d\mathfrak m_P
\le
d\Theta_P^0+dPaid_P+dStop_P
\tag{TFE2748B.328}
\]

on the retained interior packet.  This is not an entropy estimate; it is the
definition of the stopped parent quotient after lower carry, endpoint trace,
legal, stop, and route modes have been removed from the retained bill.

Define the pure aligned-current positive measure

\[
dQ_P^{cur}
:=
\Bigl[
-\Phi''(F_P)
\langle\nabla_{\mathfrak m}F_P,J_{\Psi,P}\rangle
\Bigr]_+
\,d\mathfrak m_P .
\tag{TFE2748B.329}
\]

Using \([a+b]_+\le [a]_++[b]_+\), `(TFE2748B.323)' and `(TFE2748B.328)' give

\[
\int dQ_P^{align}
\le
\int dQ_P^{cur}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.330}
\]

Therefore the exact Gold source line `(TFE2748B.324)' is reduced on the retained
quotient to

\[
\int dQ_P^{cur}
\le
\theta\int dI_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\theta<1.
\tag{TFE2748B.331}
\]

The negation is now clean.  If `(TFE2748B.331)' fails after all paid modes are
removed, then there are stopped packets \(P_n\) with

\[
\int dQ_{P_n}^{cur}=1,
\qquad
\int dI_{P_n}
+\Theta_{P_n}^0(P_n)+Paid(P_n)+Stop(P_n)
\longrightarrow0.
\tag{TFE2748B.332}
\]

Let

\[
d\lambda_n:=dQ_{P_n}^{cur},
\qquad
d\sigma_n:=dI_{P_n}+d\Theta_{P_n}^0+dPaid_{P_n}+dStop_{P_n}.
\tag{TFE2748B.333}
\]

For every fixed \(R<\infty\),

\[
\lambda_n\!\left(\left\{ {d\lambda_n\over d\sigma_n}\le R\right\}\right)
\le
R\,\sigma_n(P_n)
\longrightarrow0,
\tag{TFE2748B.334}
\]

with the usual convention that the set is computed on the absolutely continuous
part of \(d\lambda_n\) relative to \(d\sigma_n\).  Hence the normalized bad
branch must concentrate on arbitrarily high current-to-Fisher ratio tubes:

\[
\lim_{R\to\infty}\,
\liminf_{n\to\infty}
\lambda_n\!\left(\left\{ {d\lambda_n\over d\sigma_n}>R\right\}\right)
=1.
\tag{TFE2748B.335}
\]

Thus Sections 42--44 reduce `OriginalCriticalCapacityVariation.A' to one
nonduplicate producer:

\[
\boxed{
\begin{array}{c}
\text{prove from the original coupled packet that the pure aligned-current
measure}\\
\text{\(dQ_P^{cur}\) is strictly absolutely continuous with respect to Fisher
plus paid motion,}\\
\text{with density margin \(\theta<1\) on every stopped retained quotient.}
\end{array}}
\tag{TFE2748B.336}
\]

Everything else in the current proof state is a consumer or a coordinate
projection: atom pairing, retained-lobe reserve depletion, current
representation, zero-order kernel routing, and selected-density entropy
conversion have all been separated from this last aligned-current
Fisher-domination problem.

## 45. Parallel-current coefficient normal form

The last surviving term in `(TFE2748B.336)' has an exact scalar form.  Write the
Fisher density as

\[
i_P
:=
\Phi''(F_P)\,
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle,
\qquad
dI_P=i_P\,d\mathfrak m_P .
\tag{TFE2748B.337}
\]

On the retained set where
\(\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle>0\), define
the parallel coefficient of the same-parent current by

\[
a_P
:=
-
{\langle\nabla_{\mathfrak m}F_P,J_{\Psi,P}\rangle
\over
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle},
\qquad
J_{\Psi,P}^{\perp}
:=
J_{\Psi,P}+a_P A_P\nabla_{\mathfrak m}F_P .
\tag{TFE2748B.338}
\]

On the retained quotient \(A_P\) is the nondegenerate elliptic metric for the
active range.  Thus the denominator-zero set has zero Fisher-gradient in that
retained range, and its absolutely continuous numerator contribution vanishes.
Set \(a_P=0\) there.  Any leftover collar, null-metric, or bad-sequence
concentration over vanishing Fisher density is not part of this fixed-packet
coefficient identity; it is the singular aligned-current defect isolated below.
Then

\[
\langle\nabla_{\mathfrak m}F_P,J_{\Psi,P}^{\perp}\rangle=0,
\tag{TFE2748B.339}
\]

and, for every fixed smooth stopped parent packet before terminal passage,

\[
dQ_P^{cur}
=
(a_P)_+\,dI_P .
\tag{TFE2748B.340}
\]

Thus transverse pressure-Hodge re-coordination does not create the positive
selected bill in `(TFE2748B.329)'; it is invisible to the Fisher-gradient
readout.  The negative parallel direction helps the entropy drain.  The only
surviving positive source is the part of the same-parent current whose
coefficient points against the Fisher descent direction, \(a_P>0\).

The integrated source line `(TFE2748B.331)' is therefore the scalar coefficient
inequality

\[
\int (a_P)_+\,dI_P
\le
\theta\int dI_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\theta<1.
\tag{TFE2748B.341}
\]

A local density-margin version, strong enough to imply `(TFE2748B.341)', is

\[
\int\bigl((a_P)_+-\theta\bigr)_+\,dI_P
\le
d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.342}
\]

This is the coefficient form of the selected-critical upgrade.  It is not a new
atomization theorem: Sections 37 and 41 already construct the pre-clipping
same-parent atom ledger, control its coefficients/leakage, and record the
retained opposite lobe as a bounded-below raw parent reserve depletion.  The
Gold source still asks for the stricter selected-critical fact that the positive
parallel coefficient cannot harvest more than a strict fraction of Fisher
dissipation after all paid motion has been removed.

Inside this scalar normal form, the normalized bad branch becomes a coefficient
concentration branch.  If `(TFE2748B.341)' fails after normalizing as in
`(TFE2748B.332)', then

\[
\int (a_{P_n})_+\,dI_{P_n}=1,
\qquad
\int dI_{P_n}
+\Theta_{P_n}^0(P_n)+Paid(P_n)+Stop(P_n)
\longrightarrow0.
\tag{TFE2748B.343}
\]

For each fixed \(R<\infty\),

\[
\int_{\{(a_{P_n})_+\le R\}}(a_{P_n})_+\,dI_{P_n}
\le
R\int dI_{P_n}
\longrightarrow0,
\tag{TFE2748B.344}
\]

so all normalized positive current mass is forced into the high parallel-ratio
tubes:

\[
\lim_{R\to\infty}\,
\liminf_{n\to\infty}
\int_{\{(a_{P_n})_+>R\}}(a_{P_n})_+\,dI_{P_n}
=1.
\tag{TFE2748B.345}
\]

For each fixed preterminal smooth packet there is no singular defect in
`(TFE2748B.340)'.  A singular aligned-current defect can only appear after
taking a normalized bad-sequence limit, when the measures
\((a_{P_n})_+dI_{P_n}\) keep unit mass while \(dI_{P_n}\) and all paid motion
collapse.  The compactness obstruction is this singular/concentrating limit;
the quantitative theorem that rules it out is the uniform local density-margin
estimate.  A sharp sufficient same-parent producer for that route is:

\[
\boxed{
\begin{array}{c}
\text{from arbitrary original smooth data, exclude high positive
parallel-current}\\
\text{coefficient concentration and singular aligned-current defect in the
stopped retained quotient;}\\
\text{prove `(TFE2748B.342)' with some \(\theta<1\) before child
positive clipping.}
\end{array}}
\tag{TFE2748B.346}
\]

This is the sharp remaining producer in this reduction after the requested atomic
decomposition, coefficient/leakage control, and retained opposite-lobe reserve
depletion have been installed.

## 46. Coefficient surplus as a parent comparison potential

The coefficient theorem has one more exact normal form.  Use the stopped
Neumann-Hodge potential from `(TFE2748B.316)'--`(TFE2748B.317)',

\[
J_{\Psi,P}=-A_P\nabla_{\mathfrak m}\phi_{\Psi,P}.
\tag{TFE2748B.347}
\]

For a proposed strict margin \(0<\theta<1\), define the parent comparison
potential

\[
U_{P,\theta}:=\phi_{\Psi,P}-\theta F_P .
\tag{TFE2748B.348}
\]

On the retained parabolic range,

\[
a_P-\theta
=
{\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}F_P\rangle
\over
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle}.
\tag{TFE2748B.349}
\]

Since \(\theta>0\), \(((a_P)_+-\theta)_+=(a_P-\theta)_+\).  Multiplying
`(TFE2748B.349)' by \(dI_P\) gives the exact surplus identity

\[
\bigl((a_P)_+-\theta\bigr)_+\,dI_P
=
\Phi''(F_P)
\bigl[
\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}F_P\rangle
\bigr]_+
\,d\mathfrak m_P .
\tag{TFE2748B.350}
\]

Thus `(TFE2748B.342)' is not a mysterious positive-service estimate.  It is the
one-sided parent comparison statement

\[
\int
\Phi''(F_P)
\bigl[
\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}F_P\rangle
\bigr]_+
d\mathfrak m_P
\le
d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.351}
\]

Equivalently, by layer cake,

\[
\int\bigl((a_P)_+-\theta\bigr)_+\,dI_P
=
\int_\theta^\infty
dI_P\bigl(\{a_P>s\}\bigr)\,ds .
\tag{TFE2748B.352}
\]

The bad branch in `(TFE2748B.345)' is therefore a failure of one-sided
comparison between the Hodge potential \(\phi_{\Psi,P}\) and the selected active
density \(F_P\): along the same parent packet, \(\phi_{\Psi,P}-\theta F_P\) keeps
having positive slope in the \(F_P\)-direction after all paid motion is removed.

This comparison form also proves a no-go for any attempted closure from current
representation alone.  In a flat stopped quotient with \(A=I\), take any smooth
positive \(F_\varepsilon=1+\varepsilon\sin x\) and set

\[
\phi_\varepsilon=(\theta+c)F_\varepsilon,\qquad
J_\varepsilon=-\nabla\phi_\varepsilon,\qquad c>0 .
\tag{TFE2748B.353}
\]

Then \(h_\varepsilon=\operatorname{div}J_\varepsilon\) is a smooth zero-mean
parent source, the same-parent current representation has no kernel or paid
term in the interior model, and

\[
a_\varepsilon=\theta+c,
\qquad
\int\bigl((a_\varepsilon)_+-\theta\bigr)_+\,dI_\varepsilon
=
c\int dI_\varepsilon>0 .
\tag{TFE2748B.354}
\]

So the strict coefficient line is not a consequence of smoothness, zero mean,
same-parent Hodge representation, or atom pairing.  The original Navier-Stokes
packet must supply a stronger relation: the retained Hodge potential generated
by the coupled pressure/frame/selector/root current may not have positive
\(F_P\)-slope beyond the strict margin except through paid motion.

The next source theorem is therefore the parent comparison theorem

\[
\boxed{
\begin{array}{c}
\text{construct \(U_{P,\theta}=\phi_{\Psi,P}-\theta F_P\) from the original
coupled packet before clipping,}\\
\text{and prove the positive mixed Dirichlet surplus `(TFE2748B.351)' is paid
on every stopped retained quotient.}
\end{array}}
\tag{TFE2748B.355}
\]

A proof of `(TFE2748B.355)' gives `(TFE2748B.342)', hence `(TFE2748B.341)',
then `(TFE2748B.331)', `(TFE2748B.324)', `(TFE2748B.254)', the parent-density
source package `(TFE2748B.241)', and finally the critical capacity
variation/storage line `(TFE2748B.247)'.  The comparison theorem is still an
original-data theorem; the flat model `(TFE2748B.353)'--`(TFE2748B.354)' records
why it cannot be replaced by representation or cancellation bookkeeping.

## 47. Fibre no-upcrossing form of the comparison theorem

The positive mixed Dirichlet surplus in `(TFE2748B.351)' has a direct
same-parent upcrossing meaning.  On the retained set where
\(|\nabla_{\mathfrak m}F_P|_{A_P}>0\), let

\[
b_{P,\theta}
:=
{\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}F_P\rangle
\over
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle}
=a_P-\theta .
\tag{TFE2748B.356}
\]

Let \(\gamma_\omega(s)\) be the stopped parent active-gradient fibres,
parameterized by \(F_P(\gamma_\omega(s))=s\):

\[
{d\gamma_\omega\over ds}
=
{A_P\nabla_{\mathfrak m}F_P
\over
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle}
(\gamma_\omega(s)).
\tag{TFE2748B.357}
\]

Then along each retained fibre,

\[
{d\over ds}U_{P,\theta}(\gamma_\omega(s))
=
b_{P,\theta}(\gamma_\omega(s)).
\tag{TFE2748B.358}
\]

Disintegrating the Fisher measure over these fibres gives

\[
dI_P
=
\Phi''(s)\,J_P^I(\omega,s)\,ds\,d\eta_P(\omega),
\tag{TFE2748B.359}
\]

where \(J_P^I\) is the parent Jacobian/flux density from the retained
coarea-flow decomposition.  Therefore `(TFE2748B.350)' is exactly

\[
\int\bigl((a_P)_+-\theta\bigr)_+\,dI_P
=
\int
\int
\Phi''(s)
\left[
{d\over ds}U_{P,\theta}(\gamma_\omega(s))
\right]_+
J_P^I(\omega,s)\,ds\,d\eta_P(\omega).
\tag{TFE2748B.360}
\]

So the remaining source is not a pointwise pressure sign.  It is a no-upcrossing
claim for the Hodge comparison potential along the same parent active-density
fibres: after route, stop, endpoint, collar, selector, and return pieces are
removed, \(U_{P,\theta}\) may not keep increasing in the \(F_P\)-direction with
positive Fisher weight.

The sharp fibre source theorem is:

\[
\boxed{
\begin{array}{c}
\text{for the original stopped coupled packet, the weighted positive
\(F_P\)-fibre variation}\\
\text{of \(U_{P,\theta}=\phi_{\Psi,P}-\theta F_P\) is charged by
\(d\Theta_P^0+dPaid_P+dStop_P\):}\\
\displaystyle
\int
\int
\Phi''(s)
\left[
{d\over ds}U_{P,\theta}(\gamma_\omega(s))
\right]_+
J_P^I(\omega,s)\,ds\,d\eta_P(\omega)
\le
d\Theta_P^0+dPaid_P+dStop_P .
\end{array}}
\tag{TFE2748B.361}
\]

Equation `(TFE2748B.361)' is equivalent to `(TFE2748B.351)' on the retained
smooth packet by `(TFE2748B.356)'--`(TFE2748B.360)'.  Its failure has the
minimal-bad form

\[
\int
\int
\Phi''(s)
\left[
{d\over ds}U_{P_n,\theta}(\gamma_{\omega,n}(s))
\right]_+
J_{P_n}^I(\omega,s)\,ds\,d\eta_{P_n}(\omega)
=1,
\tag{TFE2748B.362}
\]

while all boundary, return, collar, selector, stop, endpoint, and Fisher-margin
payments vanish.  After the usual stopped compactness extraction, such a branch
would be a genuine same-parent comparison arbitrage: the Hodge potential
\(\phi_{\Psi,P}\) rises faster than \(\theta F_P\) along retained active-density
fibres with no paid entry, no return, no endpoint residue, and no singular
aligned defect.

Thus the original-data source theorem has been reduced to the parent
comparison no-upcrossing principle

\[
\boxed{
\text{ParentComparisonFibreNoUpcrossing.A:
no retained same-parent \(F_P\)-fibre can carry unpaid positive variation of
\(U_{P,\theta}\).}
}
\tag{TFE2748B.363}
\]

A proof of `(TFE2748B.363)' gives `(TFE2748B.361)', hence
`(TFE2748B.351)' and the full implication chain ending at `(TFE2748B.247)'.
The flat quotient model in `(TFE2748B.353)'--`(TFE2748B.354)' shows why this
must be a genuine original-coupled-packet no-upcrossing theorem: the stopped
Hodge representation alone permits positive fibre variation.

## 48. Same-fibre Jordan return balance

Section 47 gives a strong quotient form.  For storage, the exact same-parent
statement is slightly less brittle: positive fibre variation is allowed when the
opposite lobe is retained as parent reserve depletion, or when the unpaired
part is endpoint/weight-motion leakage.  Thus pure no-upcrossing is the
zero-return special case; the storage-compatible object is the same-fibre
Jordan balance before child clipping.

Fix one retained fibre and write

\[
w_P(\omega,s):=\Phi''(s)J_P^I(\omega,s),
\qquad
dU_{\omega}:=d\!\left(U_{P,\theta}(\gamma_\omega(s))\right).
\tag{TFE2748B.364}
\]

For arbitrary original smooth data, on every stopped preterminal parent packet
this is a finite signed Stieltjes measure in the parent fibre coordinate.  Its
Jordan split is

\[
dU_{\omega}=dU_{\omega}^{+}-dU_{\omega}^{-},
\qquad
w_P\,dU_{\omega}
=d\mu_{\omega}^{+}-d\mu_{\omega}^{-},
\tag{TFE2748B.365}
\]

where \(d\mu_{\omega}^{\pm}:=w_P\,dU_{\omega}^{\pm}\).  The weighted signed
mass is not automatically zero, because the fibre weight itself moves.  The
exact integration-by-parts identity is

\[
\int_{I_\omega}w_P\,dU_{\omega}^{+}
=
\int_{I_\omega}w_P\,dU_{\omega}^{-}
+[w_PU_{P,\theta}]_{\partial I_\omega}
-\int_{I_\omega}U_{P,\theta}\,dw_P .
\tag{TFE2748B.366}
\]

Consequently,

\[
\int_{I_\omega}w_P\,dU_{\omega}^{+}
\le
\int_{I_\omega}w_P\,dU_{\omega}^{-}
+[w_PU_{P,\theta}]_{\partial I_\omega,+}
+\int_{I_\omega}|U_{P,\theta}|\,|dw_P| .
\tag{TFE2748B.367}
\]

This is the requested atomic decomposition in the fibre currency.  Let
\(m_\omega^{+}:=d\mu_{\omega}^{+}(I_\omega)\),
\(m_\omega^{-}:=d\mu_{\omega}^{-}(I_\omega)\), and
\(m_\omega^{pair}:=\min(m_\omega^{+},m_\omega^{-})\).  Choose a same-fibre
coupling \(\pi_\omega\) of mass \(m_\omega^{pair}\) between the paired parts of
\(d\mu_\omega^+\) and \(d\mu_\omega^-\).  Then

\[
w_P\,dU_{\omega}
=
\int_{I_\omega\times I_\omega}(\delta_x-\delta_y)\,d\pi_\omega(x,y)
+dR_{\omega}^{fib},
\tag{TFE2748B.368}
\]

with coefficient and leakage control

\[
\pi_\omega(I_\omega\times I_\omega)
\le {1\over2}|w_P\,dU_\omega|(I_\omega),
\qquad
(dR_{\omega}^{fib})_+(I_\omega)
\le
[w_PU_{P,\theta}]_{\partial I_\omega,+}
+\int_{I_\omega}|U_{P,\theta}|\,|dw_P| .
\tag{TFE2748B.369}
\]

Thus a positive selected lobe cannot be an unowned same-fibre atom.  The paired
positive marginal is attached to a retained opposite marginal on the same
parent fibre, while the only unpaired positive residue is endpoint or
Jacobian/weight motion.

Integrating `(TFE2748B.368)' over the fibre base gives

\[
d\Xi_P^{fib,+}
\preceq_{fib}
dJ_{P,fib}^{ret,-}
+dEnd_P^{U}
+dJac_P^{U},
\tag{TFE2748B.370}
\]

where

\[
dJ_{P,fib}^{ret,-}:=\int(\mathrm{pr}_2)_\#d\pi_\omega\,d\eta_P(\omega),
\quad
dEnd_P^U:=\int [w_PU_{P,\theta}]_{\partial I_\omega,+}\,d\eta_P(\omega),
\quad
dJac_P^U:=\int |U_{P,\theta}|\,|dw_P|\,d\eta_P(\omega).
\tag{TFE2748B.371}
\]

The symbol \(\preceq_{fib}\) is the same warning as in `(TFE2748B.270)': the
comparison is made on the same-parent fibre atom ledger, not pointwise after the
positive part has already been clipped.

The retained opposite lobe is a bounded-below parent reserve depletion.  Choose
the stopped parent accounting order \(\mathfrak t_P\) on the fibre ledger and
set

\[
M_P^{fib}(\tau)
:=
\int \pi_\omega(I_\omega\times I_\omega)\,d\eta_P(\omega)
-
dJ_{P,fib}^{ret,-}\bigl(\{\mathfrak t_P<\tau\}\bigr).
\tag{TFE2748B.372}
\]

Then, as a Stieltjes measure on the retained fibre ledger,

\[
0\le M_P^{fib}(\tau)\le M_P^{fib}(0),
\qquad
dJ_{P,fib}^{ret,-}\le -dM_P^{fib}.
\tag{TFE2748B.373}
\]

This proves the same-parent attachment, coefficient control, paid-leakage
separation, and bounded-below retained-lobe reserve depletion for the
same-fibre comparison measure generated by arbitrary smooth original data on
each stopped preterminal packet.

What remains is the root-finite storage estimate for this reserve and the paid
status of the unpaired endpoint/weight-motion terms:

\[
M_P^{fib}(0)
\le C_N(u_0)\mathcal R(P)
+(d\Theta_P^0+dPaid_P+dStop_P)(P),
\tag{TFE2748B.374}
\]

and

\[
dEnd_P^U+dJac_P^U
\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.375}
\]

Under `(TFE2748B.374)'--`(TFE2748B.375)', `(TFE2748B.370)'--`(TFE2748B.373)'
give the storage-compatible fibre source

\[
d\Xi_P^{fib,+}
\le
-dM_P^{fib}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
M_P^{fib}\ge -C_N(u_0)\mathcal R(P)-Paid(P),
\tag{TFE2748B.376}
\]

which is the reserve form needed by the critical capacity variation/storage
line.  The active original-data theorem is therefore

\[
\boxed{
\begin{array}{c}
\text{ParentComparisonFibreReturnStorage.A: construct \(M_P^{fib}\) from the
pre-clipping original packet,}\\
\text{prove the root-finite bound `(TFE2748B.374)' and the endpoint/Jacobian
payment `(TFE2748B.375)',}\\
\text{so that the weighted positive fibre lobe is same-parent reserve
depletion plus paid leakage as in `(TFE2748B.376)'.}
\end{array}}
\tag{TFE2748B.377}
\]

Thus `(TFE2748B.363)' remains a strong sufficient no-upcrossing quotient, but
the storage-equivalent line is `(TFE2748B.377)'.  The atomic decomposition and
bounded-below retained opposite-lobe reserve are not the open mystery; the
remaining arbitrary-data content is the terminal-uniform root-finite size of
that fibre reserve together with payment of the endpoint and moving-weight
leakage.

## 49. Endpoint payment and the log-weight source

Section 48 leaves two different objects under one phrase.  The endpoint part is
stopped-boundary material.  The Jacobian part is not boundary material; it is
motion of the parent active measure itself.  Those two accounts must be kept
separate before the final storage line is claimed.

On each retained fibre, the stopped interval boundary satisfies

\[
\partial I_\omega
\subset
\partial_{\rm lower}P
\cup\partial_{\rm collar}P
\cup\partial_{\rm route}P
\cup\partial_{\rm stop}P
\cup\partial_{\rm end}P .
\tag{TFE2748B.378}
\]

The lower boundary is lower/root carry and the other four pieces are already
the collar, route, stop, and endpoint-admitted ledgers.  Hence the boundary term
in `(TFE2748B.371)' is a consumer:

\[
dEnd_P^U
\le
d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.379}
\]

This proves the endpoint half of `(TFE2748B.375)' from the stopped-fibre
exhaustion plus the installed endpoint admission.  It does not touch the
Jacobian term.

The root size of the fibre reserve has an exact current-square upper edge.  By
`(TFE2748B.356)'--`(TFE2748B.360)' and `(TFE2748B.372)',

\[
M_P^{fib}(0)
\le {1\over2}
\int |w_P\,dU_\omega|\,d\eta_P(\omega)
=
{1\over2}\int |a_P-\theta|\,dI_P .
\tag{TFE2748B.380}
\]

Using Cauchy in the \(A_P\)-metric,

\[
\int |a_P-\theta|\,dI_P
\le
\left(
\int
\Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}U_{P,\theta}\rangle
d\mathfrak m_P
\right)^{1/2}
\left(\int dI_P\right)^{1/2}.
\tag{TFE2748B.381}
\]

Since \(U_{P,\theta}=\phi_{\Psi,P}-\theta F_P\) and
\(J_{\Psi,P}=-A_P\nabla_{\mathfrak m}\phi_{\Psi,P}\),

\[
\int
\Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}U_{P,\theta}\rangle
d\mathfrak m_P
\le
2\int
\Phi''(F_P)
\langle A_P^\dagger J_{\Psi,P},J_{\Psi,P}\rangle
d\mathfrak m_P
+
2\theta^2\int dI_P .
\tag{TFE2748B.382}
\]

Thus `(TFE2748B.374)' is supplied by the same entropy-weighted current-square
packing that appeared in `(TFE2748B.320)', together with the Fisher/root
generator clock.  In particular, atomization does not create a new reserve
source; it converts a current-square or full-exchange storage bound into a
bounded-below fibre reserve.

It remains to identify the moving-weight term.  Define the retained fibre
log-weight

\[
\ell_P(\omega,s):=\log w_P(\omega,s)
=\log\Phi''(s)+\log J_P^I(\omega,s).
\tag{TFE2748B.383}
\]

On the retained absolutely-continuous part,

\[
dJac_P^U
=
\int |U_{P,\theta}|\,w_P\,|d\ell_P|\,d\eta_P(\omega).
\tag{TFE2748B.384}
\]

The first term in \(\ell_P\) is the selected-density curvature weight and the
second is the coarea/Jacobian motion of the retained parent fibres.  Both are
parent-measure motion.  They are paid only after the corresponding
same-parent log-weight current is admitted before clipping.  The exact
sufficient source is the weighted one-dimensional Hardy/BV estimate

\[
\int |U_{P,\theta}|\,w_P\,|d\ell_P|\,d\eta_P
\le
\varepsilon
\int w_P\,dU_\omega^{+}\,d\eta_P
+C_\varepsilon\,d\Omega_P^{logw}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad 0<\varepsilon<1,
\tag{TFE2748B.385}
\]

where \(d\Omega_P^{logw}\) is the parent-announced log-weight/coarea-Jacobian
motion measure of the original coupled packet.  The same-parent requirement is
that

\[
d\Omega_P^{logw}
\le
\vartheta\,d\Omega_P^{gen}
+
d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta<1 .
\tag{TFE2748B.386}
\]

Combining `(TFE2748B.370)', `(TFE2748B.373)', `(TFE2748B.379)',
`(TFE2748B.385)', and `(TFE2748B.386)' gives

\[
(1-\varepsilon)d\Xi_P^{fib,+}
\le
-dM_P^{fib}
+
\vartheta\,d\Omega_P^{gen}
+
d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.387}
\]

After increasing the harmless constants and choosing
\(\varepsilon+\vartheta\) inside the strict margin, `(TFE2748B.387)' is exactly
the fibre form of the critical capacity variation/storage line.

The no-go is also exact.  In a flat retained fibre with no boundary payment, let
\(U\) be constant on an interior plateau and let
\(w_n=1+\delta\sin(ns)\).  Then \(dU=0\), so there is no positive fibre
production and no retained opposite lobe, but

\[
\int |U|\,|dw_n|\sim |U|\,\delta n .
\tag{TFE2748B.388}
\]

Thus \(dJac_P^U\) cannot be paid by atom pairing, zero mean, or no-recount
logic.  It is paid only by a real same-parent log-weight/coarea-current
estimate.  The active source theorem is therefore sharpened to

\[
\boxed{
\begin{array}{c}
\text{FibreLogWeightCurrentStorage.A: prove `(TFE2748B.385)'--`(TFE2748B.386)'
from the}\\
\text{original coupled pressure-viscosity-incompressibility packet before
child clipping,}\\
\text{while `(TFE2748B.380)'--`(TFE2748B.382)' convert the same current-square
clock into \(M_P^{fib}(0)\).}
\end{array}}
\tag{TFE2748B.389}
\]

So Section 49 discharges the endpoint boundary term and reduces the remaining
storage problem to one coupled original-data supplier: entropy-weighted
same-parent current/log-weight storage for the retained fibre measure.  This is
the same physical object as the earlier active-coordinate Jacobian/full-exchange
storage wall, now written in the exact fibre variables of `(TFE2748B.364)'.

## 50. Hardy-adjoint form of the log-weight source

The log-weight estimate in `(TFE2748B.385)' is a strong sufficient version.  The
storage-exact form keeps the negative fibre motion on the same reserve ledger
instead of forcing all log-weight payment through positive variation.

Let

\[
d\nu_{\omega}^{logw}:=w_P(\omega,s)\,|d\ell_P(\omega,s)|
\tag{TFE2748B.390}
\]

be the retained log-weight motion measure on one fibre.  After the endpoint
term `(TFE2748B.379)' has been removed, choose for each fibre point \(s\) a
stopped parent path \(\Gamma_\omega(s)\subset I_\omega\) from a paid boundary
trace to \(s\).  Define the Hardy-adjoint tail coefficient

\[
\mathcal K_\omega(r)
:=
{1\over w_P(\omega,r)}
\nu_\omega^{logw}\bigl(\{s:\ r\in\Gamma_\omega(s)\}\bigr).
\tag{TFE2748B.391}
\]

This coefficient is parent-announced: it is computed from the same stopped
fibre, the same coarea Jacobian, and the same selected density before the child
positive part is clipped.  The one-dimensional path identity gives

\[
|U_{P,\theta}(\gamma_\omega(s))|
\le
|U_{P,\theta}|_{\partial I_\omega}^{paid}
+
\int_{\Gamma_\omega(s)}dU_\omega^+
+
\int_{\Gamma_\omega(s)}dU_\omega^- .
\tag{TFE2748B.392}
\]

Integrating `(TFE2748B.392)' against \(d\nu_\omega^{logw}\) and using Fubini
gives the exact adjoint bound

\[
dJac_P^U
\le
dEnd_P^U
+
\int\mathcal K_\omega\,d\mu_\omega^+\,d\eta_P(\omega)
+
\int\mathcal K_\omega\,d\mu_\omega^-\,d\eta_P(\omega),
\tag{TFE2748B.393}
\]

where \(d\mu_\omega^\pm=w_P\,dU_\omega^\pm\) as in `(TFE2748B.365)'.  This is
the precise version of the physical picture: moving fibre weight can read
either an upcrossing or a return crossing, but both are readings of the same
parent fibre history.

For a fixed strict margin \(0<\varepsilon<1\), split

\[
\mathcal K_\omega
=
\mathcal K_{\omega}^{good}
+
\mathcal K_{\omega}^{bad},
\qquad
0\le\mathcal K_{\omega}^{good}\le\varepsilon,
\qquad
\mathcal K_{\omega}^{bad}:=(\mathcal K_\omega-\varepsilon)_+ .
\tag{TFE2748B.394}
\]

The good positive tail is absorbable, and the good negative tail is return
reserve depletion:

\[
\int\mathcal K_{\omega}^{good}\,d\mu_\omega^+\,d\eta_P
\le
\varepsilon\,d\Xi_P^{fib,+},
\qquad
\int\mathcal K_{\omega}^{good}\,d\mu_\omega^-\,d\eta_P
\le
-\varepsilon\,dM_P^{fib}.
\tag{TFE2748B.395}
\]

The only remaining log-weight bill is the bad Hardy tail

\[
d\Omega_P^{Hlog}
:=
\int\mathcal K_{\omega}^{bad}
\,(d\mu_\omega^++d\mu_\omega^-)\,d\eta_P(\omega).
\tag{TFE2748B.396}
\]

Thus the storage-exact replacement for `(TFE2748B.385)' is

\[
dJac_P^U
\le
dEnd_P^U
+\varepsilon\,d\Xi_P^{fib,+}
-\varepsilon\,dM_P^{fib}
+d\Omega_P^{Hlog}.
\tag{TFE2748B.397}
\]

If the original coupled packet supplies the strict Hardy-tail domination

\[
d\Omega_P^{Hlog}
\le
\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N(\varepsilon+\vartheta)<1,
\tag{TFE2748B.398}
\]

then `(TFE2748B.370)', `(TFE2748B.373)', `(TFE2748B.379)', and
`(TFE2748B.397)' give `(TFE2748B.247)' after the standard storage
renormalization.  The active source theorem is therefore sharpened one step
further:

\[
\boxed{
\begin{array}{c}
\text{HardyAdjointLogWeightTailStorage.A: construct the parent-announced tail
coefficient}\\
\text{\(\mathcal K_\omega\) in `(TFE2748B.391)' and prove the bad-tail
domination `(TFE2748B.398)' from}\\
\text{the original coupled pressure-viscosity-incompressibility packet before
child clipping.}
\end{array}}
\tag{TFE2748B.399}
\]

This removes a hidden overstrength from `(TFE2748B.385)'.  The log-weight
motion does not have to be pressure-only, viscosity-only, or positive-only; it
has to be a same-parent Hardy tail whose good part is absorbed by the existing
fibre variation/return reserve and whose bad part is dominated by the original
generator clock.

## 51. The signed-measure attachment theorem is closed at raw parent level

The attachment step should not remain phrased as a mystery source.  It is an
ordinary signed-measure theorem once the pressure-Hodge/material residue is
pulled back to one stopped parent packet before child clipping.

Let \(X_P\) be a stopped compact preterminal parent packet and let \(dJ_P\) be
the pre-clipping pressure-Hodge/material residue after route, collar, legal,
stop, endpoint, and already-paid detector-motion terms have been separated.  The
parent residue decomposes as

\[
dJ_P=dJ_P^0+dR_P,
\qquad
dJ_P^0(X_P)=0,
\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.400}
\]

The zero-mass clause is the parent-frame form of pressure as a constraint force.
On the periodic branch the global pressure source has zero mean; after stopping
and localizing a packet, every nonzero boundary contribution is collar, route,
legal, stop, endpoint, or detector-motion leakage and is already in \(dR_P\).

The Jordan split gives

\[
dJ_P^0=dJ_{P,+}^0-dJ_{P,-}^0,
\qquad
dJ_{P,+}^0(X_P)=dJ_{P,-}^0(X_P)=:m_P^J .
\tag{TFE2748B.401}
\]

Choose any same-parent transport coupling \(\pi_P\) of \(dJ_{P,+}^0\) and
\(dJ_{P,-}^0\).  Then, as a signed Radon measure on \(X_P\),

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)=m_P^J={1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.402}
\]

The construction is completely pre-clipping.  Since the original solution is
smooth on every preterminal time interval, the pulled-back residue is a finite
signed Radon measure on the stopped parent chart.  If \(m_P^J>0\), one concrete
coupling is

\[
d\pi_P(x,y)
:=
{dJ_{P,+}^0(x)\,dJ_{P,-}^0(y)\over m_P^J},
\qquad
\pi_P(X_P\times X_P)=m_P^J,
\tag{TFE2748B.402a}
\]

and if \(m_P^J=0\) the coupling is the zero measure.  This choice uses only the
parent residue after its paid boundary, route, collar, legal, stop, endpoint,
and detector-motion leakage has been removed.  No selected child positive part
or future tail enters the construction.

Equivalently, after simple-measure approximation of \(\pi_P\),

\[
dJ_P
=
\sum_\alpha c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int_{X_P}d\mu_\alpha=0,
\qquad
\sum_\alpha |c_\alpha|\le {1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.403}
\]

For the actual smooth Navier--Stokes pressure-Hodge residue, the coefficient
mass has the raw original-data bound from Section 29:

\[
\sum_\alpha |c_\alpha(t)|
+ |(dR_P)_+|(t)
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t),
\tag{TFE2748B.404}
\]

and therefore

\[
\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau |(dR_P)_+|(t)
\le
C_N{\|u_0\|_2^2\over \nu}
+Paid_P+Legal_P+Stop_P,
\qquad \tau<T_* .
\tag{TFE2748B.405}
\]

This is coefficient and leakage control before clipping.  It is raw parent
currency: no future selected child tail is used to define the atoms, the
coefficients, or the leakage.

The coefficient bound is the exact total-variation cost of the above transport.
For the product coupling `(TFE2748B.402a)' and its simple approximants,

\[
\sum_\alpha |c_\alpha|
\uparrow
\pi_P(X_P\times X_P)
=
{1\over2}|dJ_P^0|(X_P),
\tag{TFE2748B.405a}
\]

so `(TFE2748B.404)'--`(TFE2748B.405)' control the atom coefficients and all
positive leakage directly from the original smooth parent residue.  The
argument is stable under refinement of the simple approximation because the
Jordan masses and the paid leakage are finite on each stopped preterminal
packet.

For each signed atom \(\nu_\alpha=c_\alpha d\mu_\alpha\), write
\(\nu_\alpha=\nu_\alpha^+-\nu_\alpha^-\).  Because
\(\int d\mu_\alpha=0\),

\[
\nu_\alpha^+(X_P)=\nu_\alpha^-(X_P).
\tag{TFE2748B.406}
\]

Thus the selected positive lobe is attached to an opposite same-parent lobe:

\[
(dJ_P)_+
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=\sum_\alpha \nu_\alpha^- .
\tag{TFE2748B.407}
\]

The comparison in `(TFE2748B.407)' is a same-parent atom-ledger comparison, not
a pointwise measure domination on \(X_P\).  The retained lobe is paired to the
positive lobe by the transport coupling of `(TFE2748B.402)'.

Define the raw parent reserve by

\[
M_P^{raw}(\tau)
:=
M_P^{raw}(0)
-
dJ_P^{ret,-}\bigl([0,\tau]\times X_P\bigr),
\qquad
M_P^{raw}(0)
:=
C_N{\|u_0\|_2^2\over\nu}+Paid_P+Legal_P+Stop_P .
\tag{TFE2748B.408}
\]

Then `(TFE2748B.405)' gives

\[
M_P^{raw}(\tau)\ge0,
\qquad
-dM_P^{raw}=dJ_P^{ret,-}
\quad\text{on retained parent atoms.}
\tag{TFE2748B.409}
\]

This proves the retained opposite lobe is a bounded-below parent reserve
depletion in the raw pre-clipping residue.  The depletion occurs at the same
parent atom and the same parent accounting time as the positive lobe; it is not
a reserve defined by looking ahead to a later selected readout.

Consequently the raw signed-measure theorem is:

\[
\boxed{
\begin{array}{c}
\text{SignedPressureHodgeAtomicAttachment.A: arbitrary original smooth data
constructs}\\
\text{the pre-clipping same-parent zero-mean atom decomposition
`(TFE2748B.400)'--`(TFE2748B.403)',}\\
\text{with coefficient/leakage control `(TFE2748B.404)'--`(TFE2748B.405)' and
bounded-below}\\
\text{retained opposite-lobe reserve depletion `(TFE2748B.408)'--`(TFE2748B.409)'.}
\end{array}}
\tag{TFE2748B.410}
\]

This closes the attachment burden itself.  The remaining Gold \(L^1\) burden is
the weighted parent-current upgrade.  Multiplying a zero-mean atom by a
parent-known selected detector \(W_P\) gives

\[
\int W_P\,d\mu_\alpha
=
\int (W_P-W_{\alpha})\,d\mu_\alpha,
\tag{TFE2748B.411}
\]

so raw lobe attachment proves no selected-critical bound until the detector
motion is paid by the same original packet.  In Section 50 variables, that
weighted detector motion is exactly the bad Hardy-tail term
\(d\Omega_P^{Hlog}\).  Therefore `(TFE2748B.410)' feeds the consumer chain, but
Gold closure still requires the original coupled packet to prove

\[
d\Omega_P^{Hlog}
\le
\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N(\varepsilon+\vartheta)<1 ,
\tag{TFE2748B.412}
\]

which is `(TFE2748B.398)'.  The raw pressure-Hodge atom is attached; the
unclosed statement is the selected-critical weighted/log-weight reserve from
the same parent packet before clipping.

## 52. Square-completed full-exchange form of the bad Hardy tail

Section 50 left `(TFE2748B.412)' as a direct domination of the bad Hardy tail by
the generator clock.  That statement is stronger than the storage argument
needs.  The exact object is a cross-term inside the same parent full-exchange
ledger.

On the retained smooth fibre part, `(TFE2748B.358)'--`(TFE2748B.365)' give

\[
d\mu_\omega^++d\mu_\omega^-
=
w_P(\omega,s)\,|dU_\omega|
=
|a_P-\theta|\,dI_P
\quad\text{on the fibre disintegration.}
\tag{TFE2748B.413}
\]

Therefore the bad log-weight Hardy bill is exactly

\[
d\Omega_P^{Hlog}
=
\int
\mathcal K_\omega^{bad}\,|a_P-\theta|\,dI_P .
\tag{TFE2748B.414}
\]

This is the algebraic form of the physical picture.  The bad Hardy tail is not
a separate pressure source.  It is the product of two same-parent quantities:
the outstanding log-weight/coarea detector backlog \(\mathcal K^{bad}\), and
the actual comparison-current fibre variation \(|a_P-\theta|\,dI_P\).

For any \(\lambda>0\), Young's inequality gives

\[
\mathcal K_\omega^{bad}|a_P-\theta|\,dI_P
\le
{ \lambda\over2}(a_P-\theta)^2\,dI_P
+
{1\over2\lambda}(\mathcal K_\omega^{bad})^2\,dI_P .
\tag{TFE2748B.415}
\]

Define the square-completed log-tail full-exchange component

\[
d\Xi_P^{Hlog,\lambda}
:=
{ \lambda\over2}(a_P-\theta)^2\,dI_P
+
{1\over2\lambda}(\mathcal K_\omega^{bad})^2\,dI_P .
\tag{TFE2748B.416}
\]

Then

\[
d\Omega_P^{Hlog}\le d\Xi_P^{Hlog,\lambda}.
\tag{TFE2748B.417}
\]

Both pieces of \(d\Xi_P^{Hlog,\lambda}\) are parent-announced before clipping.
The first piece is the parallel-current square already represented by
`(TFE2748B.338)'--`(TFE2748B.340)': by Cauchy in the \(A_P\)-metric,

\[
(a_P-\theta)^2\,dI_P
\le
2\,\Phi''(F_P)\langle A_P^\dagger J_{\Psi,P},J_{\Psi,P}\rangle
\,d\mathfrak m_P
+2\theta^2\,dI_P .
\tag{TFE2748B.418}
\]

The second piece is the stopped coarea/log-weight detector square.  It is
computed from \(w_P=\Phi''J_P^I\), the stopped paths \(\Gamma_\omega\), and the
same retained fibre measure before the child positive part is clipped.  Thus it
belongs to the collar/Hodge/frame/selector/coarea motion side of the
full-exchange ledger, not to a future selected tail.

Let the square-completed endpoint-admitted full-exchange ledger be

\[
d\Xi_P^{FE,H}
:=
d\Xi_P^{FE,\ast}
+C_N d\Xi_P^{Hlog,\lambda},
\tag{TFE2748B.419}
\]

where \(d\Xi_P^{FE,\ast}\) is the endpoint-admitted ledger of `(TFE2748A.2)'.
This is still one original parent ledger: the extra term only writes explicitly
the log-tail square already implicit in the selected coarea/frame motion.

The storage-exact source statement replacing the overstrong direct form
`(TFE2748B.412)' is

\[
\begin{aligned}
d\Omega_P^{gen}
&\le
C_Nd\Xi_P^{FE,H}+dR_{\rm legal,P}+dStop_P,\\
d\Xi_P^{FE,H}
&\le
-dM_P^{FE,H}
+d\Theta_P^0
+\vartheta\,d\Omega_P^{gen}
+dR_{\rm legal,P}
+dStop_P,\\
0&\le M_P^{FE,H}\le C_N(u_0)\mathcal R(P)+Paid(P),
\qquad C_N\vartheta<1 .
\end{aligned}
\tag{TFE2748B.420}
\]

If `(TFE2748B.420)' is proved from arbitrary original smooth data, then
`(TFE2748B.417)'--`(TFE2748B.419)' give

\[
d\Omega_P^{Hlog}
\le
-dM_P^{Hlog}
+\vartheta_N\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N(\varepsilon+\vartheta_N)<1,
\tag{TFE2748B.421}
\]

after absorbing harmless constants into \(M_P^{Hlog}\) and the paid ledgers.
Combining `(TFE2748B.421)' with `(TFE2748B.397)' gives the same final storage
line as `(TFE2748B.398)', with a larger bounded-below parent reserve.

Thus the bad Hardy tail is no longer an independent source wall.  The exact
remaining theorem is the square-completed full-exchange no-self-feeding storage
`(TFE2748B.420)' for the original coupled packet before clipping.  In the
older root notation, this is the same theorem as
`FullExchangeCriticalDepletionStorage.A' / `(TFE.2426)', with the log-tail
coarea square made explicit in the ledger.

## 53. Bellman/no-arbitrage form of the square-completed ledger

The raw atom attachment is now separate from the selected-critical source
problem.  The exact remaining object is the square-completed full-exchange
ledger \(d\Xi_P^{FE,H}\), and it has the same lawful Bellman form as
`(TFE.2430)'--`(TFE.2440)'.

Let the root-independent paid ledger for the square-completed packet be

\[
d\mathfrak E_P^{0,H}
:=
d\Theta_P^0
+dR_{\rm legal,P}
+dStop_P
+dA_P^{entry/endpoint}
+dA_P^{lower\ carry/return}
+dR_P^{route/Hlog}.
\tag{TFE2748B.422}
\]

Here \(dR_P^{route/Hlog}\) denotes only the paid route, collar, Hodge, frame,
coarea, and selector-motion leakage already separated before clipping.  The
Hlog square term itself remains in \(d\Xi_P^{FE,H}\); it is not moved into the
paid ledger.

Define the square-completed active profit density

\[
d\mathcal P_P^{H}
:=
d\Xi_P^{FE,H}
-\vartheta\,d\Omega_P^{gen}
-d\mathfrak E_P^{0,H}.
\tag{TFE2748B.423}
\]

For a stopped parent state \(X_P(t)\), define

\[
\mathcal B_P^{H}(t)
:=
\sup_{\mathcal H\in\mathfrak A(P,t)}
\int_{\mathcal H} d\mathcal P_P^{H},
\tag{TFE2748B.424}
\]

where \(\mathfrak A(P,t)\) ranges over same-parent continuations generated by
the original coupled packet before child positive clipping.  The admissible
continuations are the same full-exchange moves as in Section 209, with the
extra square-completed Hlog fibre component `(TFE2748B.416)' carried inside the
state.

If the Bellman value has the original-data bound

\[
0\le \mathcal B_P^{H}(t)
\le
C_N(u_0)\mathcal R(P)+Paid(P),
\tag{TFE2748B.425}
\]

then dynamic programming gives, in the stopped-history distributional sense,

\[
d\Xi_P^{FE,H}
\le
-d\mathcal B_P^{H}
+\vartheta\,d\Omega_P^{gen}
+d\mathfrak E_P^{0,H}.
\tag{TFE2748B.426}
\]

Taking \(M_P^{FE,H}=\mathcal B_P^{H}\) is exactly the second and third lines of
`(TFE2748B.420)', after the paid terms in \(d\mathfrak E_P^{0,H}\) are expanded.
Together with the generator comparison in the first line of `(TFE2748B.420)',
this proves the square-completed storage line.  Conversely, integrating
`(TFE2748B.420)' over any admissible same-parent continuation bounds
\(\mathcal B_P^H\).  Thus

\[
\boxed{
\texttt{SquareCompletedFullExchangeStorage.A}
\Longleftrightarrow
\texttt{BoundedSameParentSquareCompletedBellmanNoArbitrage.A}.}
\tag{TFE2748B.427}
\]

This equivalence is not a future-tail definition.  It is a no-arbitrage theorem
for the original parent packet: the value in `(TFE2748B.424)' is finite only
when the packet itself supplies the full-exchange square action, the strict
generator discount, and the paid leakage before clipping.

Failure of `(TFE2748B.425)' has the normalized same-parent form

\[
\int_{\operatorname{Hist}(P_j)}d\Xi_{P_j}^{FE,H}=1,
\qquad
\int_{\operatorname{Hist}(P_j)}d\mathfrak E_{P_j}^{0,H}\to0,
\qquad
\int_{\operatorname{Hist}(P_j)}
\left(d\Xi_{P_j}^{FE,H}-\vartheta d\Omega_{P_j}^{gen}\right)
\ge \eta_0>0 .
\tag{TFE2748B.428}
\]

The compactness side must retain the Hlog square mass in the stopped parent
frame:

\[
(P_j,d\Xi_{P_j}^{FE,H})
\Longrightarrow
(P_\infty,d\Xi_\infty^{FE,H}),
\qquad
\int d\Xi_\infty^{FE,H}=1,
\qquad
d\mathfrak E_\infty^{0,H}=0.
\tag{TFE2748B.429}
\]

The rigidity side is the corresponding zero-cost square-completed statement:

\[
d\mathfrak E_\infty^{0,H}=0
\Longrightarrow
d\Xi_\infty^{FE,H}
\le
\vartheta\,d\Omega_\infty^{gen}
\quad\text{on the retained face.}
\tag{TFE2748B.430}
\]

Equations `(TFE2748B.428)'--`(TFE2748B.430)' contradict each other and therefore
prove `(TFE2748B.425)', hence `(TFE2748B.420)'.  This records the exact remaining
construction problem after the signed-measure attachment: build the
square-completed Bellman bound from arbitrary original smooth data, or prove
the compactness/rigidity contradiction for the normalized zero-source
same-parent cycle.  The raw atom construction, coefficient control, leakage
control, and retained opposite-lobe reserve depletion are already installed in
`(TFE2748B.400)'--`(TFE2748B.410)' and are consumed here as pre-clipping inputs.

## 54. Source-exact form of the square-completed zero-source cycle

Section 53 should not leave "zero source" as an abstract compactness phrase.
For the square-completed ledger, zero source means that the exact critical-entry
sources and the log-detector square source have all vanished in the same parent
ledger before clipping.

Define the square-completed source measure

\[
d\mathfrak Z_P^{H}
:=
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
+d\rho_{Hlog,P}^{det,\lambda}
+d\Theta_P^0
+dPaid_P
+dStop_P ,
\tag{TFE2748B.431}
\]

where \(d\rho_{crit}^{ac}\) and \(d\rho_{crit}^{entry}\) are the positive-baseline
log source and zero-baseline singular first-entry source of `(TFE.2655)', and

\[
d\rho_{Hlog,P}^{det,\lambda}
:=
{\lambda\over2}
\left(
2\,\Phi''(F_P)
\langle A_P^\dagger J_{\Psi,P},J_{\Psi,P}\rangle\,d\mathfrak m_P
+2\theta^2\,dI_P
\right)
+{1\over2\lambda}(\mathcal K_\omega^{bad})^2\,dI_P .
\tag{TFE2748B.432}
\]

Here the first line is the current-square control in `(TFE2748B.418)' and the
second line is the stopped coarea/log-weight detector square from
`(TFE2748B.416)'.  Thus

\[
d\Xi_P^{Hlog,\lambda}
\le
C_Nd\rho_{Hlog,P}^{det,\lambda}.
\tag{TFE2748B.433}
\]

The critical-entry admission inequalities from `(TFE.2656)' and the log-tail
admission `(TFE2748B.433)' give the deterministic inclusion

\[
d\Xi_P^{crit,ac}
+d\Xi_P^{crit,0}
+d\Xi_P^{Hlog,\lambda}
\le
C_Nd\mathfrak Z_P^{H}.
\tag{TFE2748B.434}
\]

Consequently, on a normalized square-completed Bellman failure, the condition
\(d\mathfrak Z_\infty^H=0\) removes the critical-entry and Hlog square faces:

\[
d\mathfrak Z_\infty^H=0
\Longrightarrow
d\Xi_\infty^{crit,ac}
=d\Xi_\infty^{crit,0}
=d\Xi_\infty^{Hlog,\lambda}=0 .
\tag{TFE2748B.435}
\]

After the component removals already recorded in Sections 232, 238, and 239,
the retained part is only the heat-lag loop on the stopped quotient.  The
retained Poincare estimate then gives

\[
d\Xi_\infty^{FE,H}
\le
\vartheta\,d\Omega_\infty^{gen}
\quad\text{whenever }d\mathfrak Z_\infty^H=0.
\tag{TFE2748B.436}
\]

This proves the square-completed zero-source rigidity `(TFE2748B.430)' in its
source-exact form.  The real arbitrary-data theorem is therefore not a free
rigidity statement.  It is the storage of \(d\mathfrak Z_P^H\):

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
+d\rho_{Hlog,P}^{det,\lambda}
\le
-dM_P^{Z,H}
+\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta<1,
\tag{TFE2748B.437}
\]

with

\[
0\le M_P^{Z,H}
\le C_N(u_0)\mathcal R(P)+Paid(P).
\tag{TFE2748B.438}
\]

Equations `(TFE2748B.437)'--`(TFE2748B.438)' imply the Bellman bound
`(TFE2748B.425)': all positive profit in `(TFE2748B.423)' is either exact
material telescope, admitted critical-entry/log-detector source, strict
heat-lag contraction, or paid leakage.  In this decomposition, a failure of
`(TFE2748B.437)' leaves exactly the three source faces in
`(TFE2748B.434)' as the remaining place where the square-completed selected
bill can enter the parent ledger before clipping.

Thus the active arbitrary-data line has been reduced one level:

\[
\boxed{
\texttt{SquareCompletedCriticalSourceStorage.A `(TFE2748B.437)'--`(TFE2748B.438)'}
\Longrightarrow
\texttt{SquareCompletedFullExchangeStorage.A.}
}
\tag{TFE2748B.439}
\]

This is the same parent-packet picture in exact variables.  The child positive
readout cannot be counted until the parent ledger has already supplied the
positive-baseline log source, the zero-baseline first-entry source, and the
square-completed log-detector source.  Once those are in \(d\mathfrak Z_P^H\),
the zero-source compactness cycle has no remaining physical carrier.

## 55. Entropy identity for the square-completed source storage

The storage line `(TFE2748B.437)' is the source form of the same entropy
calculation already used in `(TFE.2666)'--`(TFE.2671)', with the Hlog detector
square included in the geometric distortion.

Let \(\mathcal E_P^{crit}\) be the before-clipping critical entropy from
`(TFE.2666)' and let \(\mathcal C_P^{crit}\) be the root critical capacity.
The entropy chain rule and singular-entry admission give

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
d\mathcal E_P^{crit}
+dPaid_P .
\tag{TFE2748B.440}
\]

The coupled pressure-viscosity-incompressibility packet gives the entropy
balance

\[
d\mathcal E_P^{crit}
+\nu\,d\mathcal I_P^{crit}
\le
d\mathcal D_P^{geom}
+dPaid_P,
\tag{TFE2748B.441}
\]

where \(d\mathcal I_P^{crit}\) is the Fisher/Dirichlet drain and
\(d\mathcal D_P^{geom}\) is the selected-meter distortion from frame, Hodge,
collar, endpoint, coarea, and selector motion.  The square-completed Hardy tail
adds exactly one more parent-announced distortion face:

\[
d\mathcal D_P^{geom,H}
:=
d\mathcal D_P^{geom}
+d\rho_{Hlog,P}^{det,\lambda}.
\tag{TFE2748B.442}
\]

If the original coupled packet proves the strict augmented distortion bound

\[
d\mathcal D_P^{geom,H}
+[d\mathcal C_P^{crit}]_+
\le
\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta<1,
\tag{TFE2748B.443}
\]

then, with

\[
M_P^{Z,H}:=\mathcal C_P^{crit}-\mathcal E_P^{crit},
\tag{TFE2748B.444}
\]

the identity \(d\mathcal E_P^{crit}=-dM_P^{Z,H}+d\mathcal C_P^{crit}\) and
`(TFE2748B.440)'--`(TFE2748B.443)' give

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
+d\rho_{Hlog,P}^{det,\lambda}
\le
-dM_P^{Z,H}
+\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.445}
\]

which is `(TFE2748B.437)'.  The boundedness condition `(TFE2748B.438)' is the
same parent-fixed or paid-variation capacity requirement from `(TFE.2670b)'.

Thus the current proof has one exact nonconsumer PDE burden:

\[
\boxed{
\texttt{AugmentedSelectedMeterDistortionBound.A `(TFE2748B.443)'}
\Longrightarrow
\texttt{SquareCompletedCriticalSourceStorage.A `(TFE2748B.437)'--`(TFE2748B.438)'.}
}
\tag{TFE2748B.446}
\]

In physical terms, this is the single coupled participation law in its entropy
form.  Pressure/Hodge and self-advection re-coordinate the parent packet without
changing parent volume, viscosity supplies the Fisher drain, and the only
positive source left is the selected meter/log-detector motion.  Gold closure
now requires proving that augmented positive distortion is strictly dominated
by the original generator clock plus paid packet motion from arbitrary smooth
data.

## 56. Parent-child form of the augmented capacity line

The source bound `(TFE2748B.443)' should be read as a parent-capacity
monotonicity statement, not as a detached local sign estimate.  Put the entire
left side of `(TFE2748B.443)' into one pre-clipping augmented action measure:

\[
d\Gamma_P^{aug}
:=
d\mathcal D_P^{geom,H}
+[d\mathcal C_P^{crit}]_+ .
\tag{TFE2748B.447}
\]

For a stopped parent subpacket \(Q\subseteq P\), let
\(\operatorname{ch}(Q)\) be the next retained heat-lag/material children in the
same original history, and define the augmented child action

\[
A^{aug}(Q)
:=
\int_Q d\mathcal D_P^{geom,H}
+[d\mathcal C_P^{crit}]_+(Q).
\tag{TFE2748B.448}
\]

Then `(TFE2748B.443)' is equivalent, after stopped partition refinement, to the
one-step same-parent inheritance inequality

\[
A^{aug}(Q)
+\sum_{Q'\in\operatorname{ch}(Q)}
\mathcal C^{crit}(Q')
\le
\mathcal C^{crit}(Q)
+\vartheta\,\Omega^{gen}(Q)
+\Theta^0(Q)+Paid(Q)+Stop(Q),
\qquad C_N\vartheta<1 .
\tag{TFE2748B.449}
\]

The equivalence is the ordinary dynamic-programming calculation.  Summing
`(TFE2748B.449)' down a stopped parent tree telescopes the capacity terms and
gives

\[
\sum_{Q\subseteq P} A^{aug}(Q)
\le
\mathcal C^{crit}(P)
+\vartheta\,\Omega^{gen}(P)
+\Theta^0(P)+Paid(P)+Stop(P).
\tag{TFE2748B.450}
\]

Conversely, applying `(TFE2748B.450)' to arbitrarily short stopped descendants
recovers `(TFE2748B.443)' in distributional time.  Thus the active
arbitrary-data supplier is exactly the root-finite parent capacity

\[
0\le \mathcal C^{crit}(P)
\le
C_N(u_0)\mathcal R(P)+Paid(P),
\tag{TFE2748B.451}
\]

together with the inheritance law `(TFE2748B.449)' constructed before child
positive clipping from the original coupled packet.

Failure of `(TFE2748B.449)' has a concrete minimal-bad form.  There are stopped
same-history packets \(P_n\) such that

\[
\sum_{Q\subseteq P_n} A^{aug}(Q)=1,
\qquad
\mathcal C^{crit}(P_n)
+\vartheta\Omega^{gen}(P_n)
+\Theta^0(P_n)+Paid(P_n)+Stop(P_n)\to0 .
\tag{TFE2748B.452}
\]

All connection, selector, collar, route, endpoint, stop, and legal pieces vanish
on this normalized face.  The only retained child action is the same-history
affine/log-detector/capacity-opening action

\[
a_\gamma^{aug}
:=
\int_\gamma d\mathcal D_{met,+}
+d\rho_{Hlog}^{det,\lambda}(\gamma)
+[d\mathcal C^{crit}]_+(\gamma),
\tag{TFE2748B.453}
\]

carried by one original material history.  Hence the normalized failure of
`(TFE2748B.443)' is precisely the augmented version of the old same-history
affine-burst/no-Zeno branch:

\[
\sum_{\gamma\subset\mathcal A(P)}
a_\gamma^{aug}
\le
\mathcal C^{crit}(P)
+\vartheta\,\Omega^{gen}(P)
+\Theta^0(P)+Paid(P)+Stop(P),
\tag{TFE2748B.454}
\]

with \(\mathcal C^{crit}(P)\) root-finite from `(TFE2748B.451)' and not defined
as the future descendant selected tail.

The older affine no-Zeno notes prove the structural reduction: after paid
nonlaminar exits, the survivor is either a repeated material core or a shrinking
core escape.  Section 56 makes that reduction consume the square-completed
source line.  The remaining proof is now the noncircular construction of the
same-history capacity in `(TFE2748B.451)'--`(TFE2748B.454)' from the original
coupled data:

\[
\boxed{
\texttt{RootFiniteAugmentedSameHistoryCapacity.A `(TFE2748B.449)'--`(TFE2748B.454)'}
\Longleftrightarrow
\texttt{AugmentedSelectedMeterDistortionBound.A `(TFE2748B.443)'.}
}
\tag{TFE2748B.455}
\]

This is the exact downstream effect of the pressure/viscosity/incompressibility
participation picture.  The parent packet may re-coordinate instantly through
the pressure-Hodge constraint and may reveal delayed heat-lag motion through
viscosity, but every positive selected state opening must lower the same
parent-known capacity, pay generator clock, or leave through the paid packet
motion terms before the child readout is clipped.

## 57. Augmented no-Zeno branch exhaustion

Section 56 leaves no freedom about what a failure looks like.  Start from a
normalized failure of `(TFE2748B.455)' and remove the already paid nonlaminar
exits, route changes, collar exits, selector reselections, legal pieces, stop
pieces, and endpoint leakage.  The retained action is a same-history laminar
family of augmented visits:

\[
\mathcal A^{aug}(P)
=
\mathcal A^{rep}(P)
\cup
\mathcal A^{esc}(P)
\cup
\mathcal A^{paid}(P),
\qquad
a_\gamma^{aug}
\text{ as in `(TFE2748B.453)'.}
\tag{TFE2748B.456}
\]

On the normalized zero-paid face, \(\mathcal A^{paid}\) has zero mass.  The two
remaining branches are exactly the old same-history no-Zeno dichotomy, now in
the square-completed augmented currency.

The repeated-core branch is the case where infinitely many retained visits reuse
one persistent material core.  Its noncircular source theorem is the storage
drop

\[
\sum_{\gamma\subset K} a_\gamma^{aug}
+\mathcal C^{crit}(K_{\rm out})
\le
\mathcal C^{crit}(K_{\rm in})
+\vartheta\,\Omega^{gen}(K)
+\Theta^0(K)+Paid(K)+Stop(K),
\tag{TFE2748B.457}
\]

for every retained same-core tube \(K\), with \(\mathcal C^{crit}\) built from
the original parent record before clipping.  This is the augmented form of
`RepeatedCoreNonreuseStorageBound.A': a repeated unit selected opening must
spend a nonreusable part of the same material record, namely Cauchy-Green
stretch, pressure-Hodge frame, annular return/turnstile, log-detector square, or
critical capacity already present in the parent packet.

The shrinking-core branch is the case where no persistent core is reused
infinitely often.  Its noncircular source theorem is lower admission plus root
packing of the escaping capacities:

\[
a_\gamma^{aug}
\le
C_N\,d\rho_{\rm esc}^{crit}(\gamma)
+dPaid(\gamma)+dStop(\gamma),
\qquad
\sum_{\gamma\subset P}d\rho_{\rm esc}^{crit}(\gamma)
\le
\mathcal C^{crit}(P)
+\vartheta\,\Omega^{gen}(P)
+\Theta^0(P)+Paid(P)+Stop(P).
\tag{TFE2748B.458}
\]

This is the augmented form of `ShrinkingCoreEscapeCapacityLowerBound.A': a
shrinking child cannot carry unit selected pressure-Hodge/log-detector/capacity
action without leaving a comparable root-visible capacity charge in the same
original material history.

The branch implication is now exact.  If `(TFE2748B.457)' and
`(TFE2748B.458)' hold with the same strict \(C_N\vartheta<1\), then summing over
the laminar decomposition `(TFE2748B.456)' gives

\[
\sum_{\gamma\subset\mathcal A(P)}a_\gamma^{aug}
\le
\mathcal C^{crit}(P)
+\vartheta\,\Omega^{gen}(P)
+\Theta^0(P)+Paid(P)+Stop(P),
\tag{TFE2748B.459}
\]

which is `(TFE2748B.454)' and hence `(TFE2748B.455)'.  Conversely, if
`(TFE2748B.455)' fails after paid nonlaminar routing has vanished, the retained
laminar family has either an infinite repeated material core or an infinite
shrinking-core escape; otherwise its selected visits are finite and paid by the
terminal stopping ledger.  Therefore failure of `(TFE2748B.455)' forces failure
of one of the two branch source estimates:

\[
\neg\texttt{RootFiniteAugmentedSameHistoryCapacity.A}
\Longrightarrow
\neg\texttt{AugmentedRepeatedCoreNonreuseStorage.A}
\quad\text{or}\quad
\neg\texttt{AugmentedShrinkingCoreEscapePacking.A}.
\tag{TFE2748B.460}
\]

Thus the current bottom is no longer raw attachment, atom pairing, or the
abstract \(L^1\) count.  It is the two-branch original-data producer

\[
\boxed{
\begin{array}{c}
\texttt{AugmentedRepeatedCoreNonreuseStorage.A `(TFE2748B.457)'}\\
\text{and}\\
\texttt{AugmentedShrinkingCoreEscapePacking.A `(TFE2748B.458)'}
\end{array}
\Longrightarrow
\texttt{RootFiniteAugmentedSameHistoryCapacity.A `(TFE2748B.455)'.}
}
\tag{TFE2748B.461}
\]

This is also the exact physical split.  A positive selected state opening either
returns to the same material core, where it must spend the same core's finite
record, or it escapes into smaller cores, where each escape must carry a
root-visible capacity charge.  There is no third retained source after the
same-parent atom attachment, paid packet motion, legal, stop, endpoint, and
nonlaminar routing terms have been removed.

## 58. Exact PDE inputs for the two no-Zeno branches

The two branch producers in `(TFE2748B.461)' have different proof content.  The
repeated-core side is not a new capacity theory once the correct parent-fixed
score has been lifted before clipping.  On a retained same-core tube \(K\), the
needed stopped polar lift is

\[
dA_{rep}^{aug}
\le
[Y_K]_+\,d\sigma
+dPaid_K+dStop_K,
\qquad
Y_K=\partial_\sigma\Psi_K+S_K^{spill}+E_K .
\tag{TFE2748B.462}
\]

Here \(\Psi_K\) is a parent-fixed stopped score for the same material core, and
the polar direction used in \(Y_K\) is chosen before the child positive part is
clipped.  Selector, covector, collar, Hodge-frame, and reselection changes are
not hidden in \(Y_K\); they remain in the paid terms.

For such a signed lift, the positive part is elementary scalar variation:

\[
\int_K [Y_K]_+\,d\sigma
\le
[\Psi_K]_{t_{in}}^{t_{out},+}
+\int_K [Y_K]_-\,d\sigma
+\int_K |S_K^{spill}|\,d\sigma
+\int_K |E_K|\,d\sigma .
\tag{TFE2748B.463}
\]

Thus repeated-core storage follows from the original-history record and
negative-return charge

\[
[\Psi_K]_{t_{in}}^{t_{out},+}
+\int_K [Y_K]_-\,d\sigma
+\int_K |S_K^{spill}|\,d\sigma
+\int_K |E_K|\,d\sigma
\le
\mathcal C^{crit}(K_{in})-\mathcal C^{crit}(K_{out})
+\vartheta\,\Omega^{gen}(K)
+\Theta^0(K)+Paid(K)+Stop(K).
\tag{TFE2748B.464}
\]

Combining `(TFE2748B.462)'--`(TFE2748B.464)' gives the repeated-core branch
estimate `(TFE2748B.457)'.  Therefore the repeated-core PDE content is exactly

\[
\boxed{
\texttt{StoppedPolarSignedLift.A `(TFE2748B.462)'}
+
\texttt{OriginalHistoryNegativeReturnCharge.A `(TFE2748B.464)'}
\Longrightarrow
\texttt{AugmentedRepeatedCoreNonreuseStorage.A `(TFE2748B.457)'.}}
\tag{TFE2748B.465}
\]

The shrinking-core branch has a different obstruction.  For a retained affine
heat-scale core \(Q_r\) with strain size \(|\Sigma|\simeq r^{-2}\) and
parabolic volume \(|Q_r|\simeq r^5\), the raw square bill is radius-discounted
while the selected action is scale-invariant:

\[
\int_{Q_r}|\Sigma|^2\simeq r,
\qquad
\int_{Q_r}|\Sigma|^{5/2}\simeq 1 .
\tag{TFE2748B.466}
\]

Consequently raw energy, raw dissipation, raw pressure-Hodge capacity,
fixed-collar area, and support-tree counting cannot prove shrinking-core
packing.  A dyadic terminal family can have

\[
\sum_k r_k<\infty,
\qquad
\sum_k A^{aug}(Q_{r_k})=\infty .
\tag{TFE2748B.467}
\]

The needed original-data theorem is a selected exponent-lift, expressed either
as lower admission plus root packing

\[
A^{aug}(Q)
\le C_N\,\rho_{crit}^{esc}(Q)+Paid(Q)+Stop(Q),
\qquad
\sum_{Q\subset P}\rho_{crit}^{esc}(Q)
\le
\mathcal C^{crit}(P)
+\vartheta\,\Omega^{gen}(P)
+\Theta^0(P)+Paid(P)+Stop(P),
\tag{TFE2748B.468}
\]

or equivalently as a parent-known reverse-Holder/square-function gain for the
selected density \(f_{sel}\) against the raw same-history reserve:

\[
f_{sel}\in RH_{1+\varepsilon}(d\mathcal R_{raw})
\quad\text{or}\quad
S_{\rm mart}(f_{sel})\in L^2(d\mathcal R_{raw}),
\tag{TFE2748B.469}
\]

with \(f_{sel}\) constructed from the original coupled packet before child
selection.  This gives

\[
\boxed{
\texttt{OriginalHistorySelectedExponentLift.A `(TFE2748B.468)'--`(TFE2748B.469)'}
\Longrightarrow
\texttt{AugmentedShrinkingCoreEscapePacking.A `(TFE2748B.458)'.}}
\tag{TFE2748B.470}
\]

Equations `(TFE2748B.465)' and `(TFE2748B.470)' are now the exact nonconsumer PDE
inputs below the critical capacity variation/storage line:

\[
\boxed{
\begin{array}{c}
\texttt{StoppedPolarSignedLift.A}\\
+\texttt{OriginalHistoryNegativeReturnCharge.A}\\
+\texttt{OriginalHistorySelectedExponentLift.A}
\end{array}
\Longrightarrow
\texttt{SquareCompletedCriticalSourceStorage.A `(TFE2748B.437)'--`(TFE2748B.438)'.}
}
\tag{TFE2748B.471}
\]

The proof work left is therefore not measure atomization, not local affine
Liouville, and not raw capacity.  It is to construct the parent-fixed signed
score, charge its negative returns in the original coupled packet, and prove the
selected exponent-lift for escaping heat-scale cores before any child positive
readout is clipped.

## 59. Atomic decomposition closure audit

The signed-measure attachment requested in the current audit is already a closed
raw parent theorem in Section 51.  The point of this section is to fix its exact
status so later Gold work does not reopen it as the source wall.

For one stopped preterminal parent packet \(X_P\), after route, collar, legal,
stop, endpoint, and detector-motion leakage have been separated, the
pre-clipping pressure-Hodge/material residue has the parent-measurable form

\[
dJ_P=dJ_P^0+dR_P,
\qquad
dJ_P^0(X_P)=0,
\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.472}
\]

All objects in `(TFE2748B.472)' are constructed from the original stopped
material chart and the coupled pressure-viscosity-incompressibility-velocity
packet before any child positive part is clipped.  Since the original solution
is smooth on every preterminal interval, \(dJ_P^0\) is a finite signed Radon
measure.  Its Jordan decomposition gives

\[
dJ_P^0=dJ_{P,+}^0-dJ_{P,-}^0,
\qquad
dJ_{P,+}^0(X_P)=dJ_{P,-}^0(X_P)=m_P^J .
\tag{TFE2748B.473}
\]

Choose the same-parent coupling

\[
d\pi_P(x,y)
:=
\begin{cases}
{dJ_{P,+}^0(x)dJ_{P,-}^0(y)\over m_P^J},&m_P^J>0,\\[4pt]
0,&m_P^J=0 .
\end{cases}
\tag{TFE2748B.474}
\]

Then

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)=m_P^J={1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.475}
\]

After simple-measure approximation of \(\pi_P\), this is the zero-mean atomic
form

\[
dJ_P=\sum_\alpha c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int_{X_P}d\mu_\alpha=0,
\qquad
\sum_\alpha |c_\alpha|\le {1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.476}
\]

Section 29 supplies the original-data coefficient and leakage bound:

\[
\int_0^\tau \sum_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau |(dR_P)_+|(t)
\le
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P,
\qquad \tau<T_* .
\tag{TFE2748B.477}
\]

For each signed atom \(\nu_\alpha=c_\alpha d\mu_\alpha\), zero mean gives equal
positive and negative mass:

\[
\nu_\alpha^+(X_P)=\nu_\alpha^-(X_P).
\tag{TFE2748B.478}
\]

Therefore the positive selected lobe of the raw parent residue is attached to
an opposite same-parent lobe, with only paid leakage left unpaired:

\[
(dJ_P)_+
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=\sum_\alpha \nu_\alpha^- .
\tag{TFE2748B.479}
\]

Again \(\preceq_{atom}\) is the paired comparison on the same-parent atom
ledger produced by `(TFE2748B.474)'--`(TFE2748B.475)'; it is not a pointwise
comparison of the first and second marginals on \(X_P\).

Define the raw parent reserve

\[
M_P^{raw}(\tau)
:=
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P
-dJ_P^{ret,-}\bigl([0,\tau]\times X_P\bigr).
\tag{TFE2748B.480}
\]

Then `(TFE2748B.477)' implies

\[
M_P^{raw}(\tau)\ge0,
\qquad
-dM_P^{raw}=dJ_P^{ret,-}
\quad\text{on retained parent atoms.}
\tag{TFE2748B.481}
\]

This proves the requested construction: arbitrary original smooth data gives a
pre-clipping same-parent zero-mean atom decomposition, controls its coefficients
and leakage, and records the retained opposite lobe as bounded-below parent
reserve depletion.

The downstream consequence is equally important.  `(TFE2748B.472)'--`(TFE2748B.481)'
close only the raw attachment layer.  Once a selected meter \(W_P\) is inserted,
one must still pay the meter motion across each zero-mean atom:

\[
\int W_P\,d\mu_\alpha
=
\int (W_P-W_\alpha)\,d\mu_\alpha .
\tag{TFE2748B.482}
\]

Thus a later proof step may use raw atom pairing and raw reserve depletion as
installed inputs, but it may not infer selected-critical \(L^1\) storage from
them alone.  The remaining selected-weighted content is the same-parent
log-weight/Hardy-tail/full-exchange storage already isolated in
`(TFE2748B.398)'--`(TFE2748B.420)' and then lowered in Section 58 to the stopped
polar signed lift, negative-return charge, and selected exponent-lift branch
inputs.

So the authority status after this audit is:

\[
\texttt{SignedPressureHodgeAtomicAttachment.A is closed at raw parent level,}
\tag{TFE2748B.483}
\]

and the active Gold \(L^1\) source line begins after that closed attachment,
where the selected meter has to be built and charged by the same original
coupled packet before clipping.

## 60. Polar pushdown of the signed lifted-band identity

Section 58 names `StoppedPolarSignedLift.A' as one of the exact repeated-core
inputs.  The older lifted-band notes show that this input should not be treated
as a black box.  It is the stopped parent-packet pushdown of the signed
continuous-scale commutator identity, with the polar selected scalar chosen
before positive clipping.

Let \(K\) be a retained same-core stopped tube inside one parent packet and let
\(\ell=e^\sigma\) be its heat-scale coordinate.  Pull the continuous-scale
signed lifted density

\[
\mathfrak c_\ell
:=
\ell^{-2}
\left\langle
[Q_\ell,b_\ell^{meso}\!\cdot\nabla]u,\,
Q_\ell u
\right\rangle
\tag{TFE2748B.484}
\]

to the stopped material chart of \(K\).  The continuous-scale product-rule
identity gives, before positive parts are taken,

\[
\mathfrak c_\ell
=
\partial_\sigma \Psi_\ell
+\nabla_x\cdot J_\ell
+\partial_tR_\ell
+S_\ell^{spill}
+E_\ell .
\tag{TFE2748B.485}
\]

The displayed identity is the signed object; the positive majorant
\(\Pi_N^{lift}\) is a later residual control, not the source of the lift.
After pullback to \(K\), choose the polar covector/selector \(\xi_K\) from the
parent stopped record before any child positive readout is clipped and define
the scalar stopped score

\[
Y_K
:=
\xi_K\!\cdot\mathcal P_K(\mathfrak c_\ell)
-Y_K^{pol/frame},
\tag{TFE2748B.486}
\]

where \(\mathcal P_K\) denotes the material pullback and
\(Y_K^{pol/frame}\) contains only the announced change of polar frame, covector,
selector, Hodge chart, and collar frame.  Parent-fixed polar scalarization is
the estimate

\[
dA_{rep}^{aug}
\le
[Y_K]_+\,d\sigma
+dR_K^{pol/frame}
+dPaid_K+dStop_K,
\tag{TFE2748B.487}
\]

with

\[
dR_K^{pol/frame}
\le
d\Theta_K^0+dPaid_K+dStop_K .
\tag{TFE2748B.488}
\]

Thus the selected repeated-core positive bill is read from a signed parent
scalar only after the moving detector has been removed into paid motion.

Pulling `(TFE2748B.485)' through the stopped material chart gives

\[
Y_K
=
\partial_\sigma\Psi_K
+S_K^{spill}
+E_K
+\operatorname{div}_{\partial K}J_K
+\partial_tR_K
+C_K^{coc}
+R_K^{bd/mid/collar}.
\tag{TFE2748B.489}
\]

Here \(C_K^{coc}\) is the transportable mismatch cocycle from changing local
signed representatives, and \(R_K^{bd/mid/collar}\) is exactly the sum of the
upper-boundary packet, middle-band residual, and collar residual isolated in
the lifted-band support notes.  The stopped pushdown is proved once these
terms are same-parent paid:

\[
\int_K |C_K^{coc}|
+\int_K |R_K^{bd/mid/collar}|
+\int_{\partial K}|J_K|
+\int_{\partial_tK}|R_K|
\le
d\Theta_K^0+dPaid_K+dStop_K .
\tag{TFE2748B.490}
\]

Under `(TFE2748B.488)'--`(TFE2748B.490)', `(TFE2748B.487)' and
`(TFE2748B.489)' give

\[
dA_{rep}^{aug}
\le
\left[
\partial_\sigma\Psi_K+S_K^{spill}+E_K
\right]_+d\sigma
+d\Theta_K^0+dPaid_K+dStop_K .
\tag{TFE2748B.491}
\]

After absorbing \(\Theta^0\) into the already named paid zero-order/legal
ledger, `(TFE2748B.491)' is precisely the stopped polar signed lift
`(TFE2748B.462)'.

So the noncircular pushdown theorem is

\[
\boxed{
\begin{array}{c}
\texttt{ContinuousSignedScaleDescent.A}\\
+\texttt{ParentFixedPolarScalarization.A}\\
+\texttt{TransportableMismatchCocycleTriviality.A}\\
+\texttt{StoppedBoundaryMiddleCollarBarrier.A}
\end{array}
\Longrightarrow
\texttt{StoppedPolarSignedLift.A `(TFE2748B.462)'.}
}
\tag{TFE2748B.492}
\]

This section proves the implication and fixes the exact subclaims.  It does not
prove the three analytic pushdown inputs from arbitrary original data.  The
upper-boundary note isolates the first term in
`StoppedBoundaryMiddleCollarBarrier.A' as the estimate

\[
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
{\eta\nu\over8}\int_0^T D_N(t)\,dt
+C_*2^{-2\delta N},
\tag{TFE2748B.493}
\]

and the mesoscopic residual note isolates the second as the corresponding
middle-band flux estimate for \(\Pi_N^{mid}\).  Thus the repeated-core branch
has been pushed one layer lower: it is not a free signed-lift assumption, but
the stopped polar pushdown of the continuous signed commutator identity plus
paid cocycle, boundary, middle-band, collar, and detector-motion terms.

## 61. Boundary-middle-collar barrier split

The term `StoppedBoundaryMiddleCollarBarrier.A' in `(TFE2748B.492)' is itself a
bundle of three different packets.  The checked lifted-band support notes split
it into an upper-boundary same-scale packet, a near-corona moving-spill packet,
and a far-corona two-scale packet with an explicit gap kernel.  This section
records that split in the current \(TFE2748B\) variables.

The upper-boundary packet has the frozen same-scale family form

\[
\mathfrak B_N^{upper}(t)
=
\sum_{a\in\mathcal A_{ub}}c_a\,\Pi_{N,a}^{edge}(t)
+\mathcal E_N^{ub,collar}(t),
\tag{TFE2748B.494}
\]

where the family \(\mathcal A_{ub}\) has bounded size and fixed symbol
seminorms independent of \(N,t,u\).  If the collar residual satisfies

\[
\int_0^T|\mathcal E_N^{ub,collar}(t)|\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+C_\varepsilon 2^{-2\delta N},
\tag{TFE2748B.495}
\]

then the installed coefficient-bearing same-scale carrier estimate gives

\[
\int_0^T|\mathfrak B_N^{upper}(t)|\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+C_\varepsilon
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt
+C_\varepsilon2^{-2\delta N}.
\tag{TFE2748B.496}
\]

Thus the upper-boundary packet is not a new large-gap source.  After the
coefficientwise frozen-family writeup and collar residual bound, it is on the
same weighted-carrier ledger as the same-scale side.

For the middle-band packet, fix a logarithmic corona width \(L\).  The
middle-band flux decomposes as

\[
\Pi_N^{mid}
=
\Pi_N^{mid,near,L}
+\Pi_N^{mid,far,L}.
\tag{TFE2748B.497}
\]

The near-corona term is a moving spill family modulo collar residual, and the
weighted-carrier resolution gives

\[
\int_0^T\Pi_N^{mid,near,L}(t)\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+C_{\varepsilon,L,\nu}
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt
+C_{\varepsilon,L}2^{-2\delta N}.
\tag{TFE2748B.498}
\]

The far-corona term has the exact continuum gap-kernel reduction

\[
\Pi_N^{mid,far,L}(t)
\le
C_L
\int_0^{\ell_N}\int_{r\ge c_1\ell}
{\ell\over r}\,
\mathcal A_{\ell,r}(t)
\,{dr\over r}{d\ell\over\ell},
\tag{TFE2748B.499}
\]

where

\[
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx .
\tag{TFE2748B.500}
\]

The Hardy/Schur summation is already elementary once the two-scale density has
the correct one-sided square structure.  A sufficient input is the factorized
Carleson form

\[
\mathcal A_{\ell,r}(t)\le U(\ell,t)V(r,t),
\qquad r\ge c_1\ell,
\tag{TFE2748B.501}
\]

with

\[
\int_0^T\int_0^{\ell_N}U(\ell,t)^2\,{d\ell\over\ell}dt
\le
C_U\int_0^T D_N(t)\,dt,
\qquad
\int_0^T\int_{\ell\le r/c_1}V(r,t)^2\,{dr\over r}dt
\le
C_V2^{-2\delta N}.
\tag{TFE2748B.502}
\]

Then Schur's test for \(K(\ell,r)=1_{r\ge c_1\ell}\ell/r\) and Cauchy-Schwarz
give

\[
\int_0^T\Pi_N^{mid,far,L}(t)\,dt
\le
{\eta\nu\over16}\int_0^T D_N(t)\,dt
+C_*2^{-2\delta N}.
\tag{TFE2748B.503}
\]

Finally, the weighted collar residual supplier says that the collar residuals
in `(TFE2748B.495)' and `(TFE2748B.498)' are paid whenever the fixed collar is
contained in the selector plateau, or the residual amplitude and residual
strain ledger bounds hold.  In current notation,

\[
\texttt{PlateauContainmentFixedCollar.A}
\quad\text{or}\quad
\texttt{ResidualAmplitudeStrainLedger.A}
\Longrightarrow
\texttt{CollarResidualBarrier.A}.
\tag{TFE2748B.504}
\]

Combining `(TFE2748B.496)', `(TFE2748B.498)', `(TFE2748B.503)', and
`(TFE2748B.504)' gives the exact barrier implication

\[
\boxed{
\begin{array}{c}
\texttt{UpperBoundaryFrozenFamilyWriteup.A}\\
+\texttt{CollarResidualBarrier.A}\\
+\texttt{WeightedMovingSpillCarrier.A}\\
+\texttt{FarCoronaTwoScaleCarleson.A}\\
+\texttt{WeightedCarrierFullExchangePayment.A}
\end{array}
\Longrightarrow
\texttt{StoppedBoundaryMiddleCollarBarrier.A}.}
\tag{TFE2748B.505}
\]

Here `WeightedCarrierFullExchangePayment.A' means the surrounding
square-completed full-exchange storage must pay
\(\int\widetilde\Lambda_N^\sharp E_N\) with strict margin; otherwise
`(TFE2748B.496)' and `(TFE2748B.498)' remain carrier-routed estimates rather
than coefficient-free absorption.  The genuinely new middle-band analytic
input after the installed reductions is the coupled two-scale Carleson theorem
for \(\mathcal A_{\ell,r}\), not the Hardy/Schur summation and not a one-scale
bound on \(\widetilde\Sigma_r\) alone.

## 62. Selected atom ledger and the real coefficient burden

Sections 51 and 59 close the raw atom attachment.  The selected version uses the
same construction only after the selected detector has already been announced by
the parent packet.  Multiplying by a child weight after the positive part has
been clipped would create the old recounting error.

Let \(dJ_P^{S}\) be the parent-announced selected pressure-Hodge/material
residue on the stopped parent packet \(X_P\), before clipping, after route,
collar, legal, stop, endpoint, and detector-motion leakage have been separated.
Its zero-mass part is

\[
dJ_P^{S}=dJ_{P,0}^{S}+dR_P^{S},
\qquad
dJ_{P,0}^{S}(X_P)=0,
\qquad
|dR_P^{S}|
\le
d\Theta_P^0+dPaid_P+dStop_P+dE_P^{meter}.
\tag{TFE2748B.506}
\]

Here \(dE_P^{meter}\) is the cost of making the selected meter parent-known.
When the selected detector is inserted before clipping, \(dE_P^{meter}\) is
exactly the full-exchange / Hodge / collar / frame / covector motion already
routed in Sections 60 and 61.  When the detector is inserted late, the same term
is the atom-ledger mismatch

\[
\int_{X_P\times X_P}
\bigl(W_P(x)-W_P(y)\bigr)\,d\pi_P(x,y),
\tag{TFE2748B.507}
\]

so it is leakage, not a free selected atom coefficient.

Since the original solution is smooth on every stopped preterminal interval,
\(dJ_{P,0}^{S}\) is a finite signed Radon measure.  Its Jordan decomposition and
the product coupling give

\[
dJ_{P,0}^{S}
=dJ_{P,+}^{S}-dJ_{P,-}^{S},
\qquad
dJ_{P,+}^{S}(X_P)=dJ_{P,-}^{S}(X_P)=m_P^{S},
\tag{TFE2748B.508}
\]

and, for \(m_P^S>0\),

\[
d\pi_P^{S}(x,y)
:=
{dJ_{P,+}^{S}(x)dJ_{P,-}^{S}(y)\over m_P^{S}},
\qquad
\pi_P^{S}(X_P\times X_P)
=m_P^{S}
={1\over2}|dJ_{P,0}^{S}|(X_P),
\tag{TFE2748B.509}
\]

with \(d\pi_P^S=0\) when \(m_P^S=0\).  Simple-measure approximation gives the
selected atom ledger

\[
dJ_P^{S}
=
\sum_\alpha c_\alpha^{S}\,d\mu_\alpha^{S}
+dR_P^{S},
\qquad
\int_{X_P}d\mu_\alpha^{S}=0,
\qquad
\sum_\alpha |c_\alpha^{S}|
\le
{1\over2}|dJ_{P,0}^{S}|(X_P).
\tag{TFE2748B.510}
\]

This proves the selected pre-clipping atom decomposition on every stopped
preterminal parent packet.  The coefficient mass is finite because the original
smooth packet is finite there.  The Gold-strength coefficient theorem is the
root-uniform critical estimate

\[
\int_0^\tau
\left[
{1\over2}|dJ_{P,0}^{S}|(X_P,t)
+|(dR_P^{S})_+|(t)
\right]dt
\le
C_N(u_0)
+\theta\nu\int_0^\tau D_N(t)\,dt
+\Theta_P^0+Paid_P+Stop_P,
\qquad \theta<1,
\tag{TFE2748B.511}
\]

not the atomization itself.  `(TFE2748B.511)' is where the selected meter,
full-exchange payment, and far-corona two-scale Carleson input must enter.  A
finite preterminal atom ledger without `(TFE2748B.511)' has not proved terminal
uniform \(L^1\) storage.

The retained opposite lobe is the second marginal of the same selected atom
ledger,

\[
dJ_{P,atom}^{S,ret,-}:=(\operatorname{pr}_2)_\#d\pi_P^{S}.
\tag{TFE2748B.512}
\]

Define the selected atom reserve by

\[
M_P^{S,atom}(\tau)
:=
B_P^{S,atom}
-dJ_{P,atom}^{S,ret,-}\bigl([0,\tau]\times X_P\bigr),
\qquad
B_P^{S,atom}
\ge
dJ_{P,atom}^{S,ret,-}\bigl([0,T_P]\times X_P\bigr).
\tag{TFE2748B.513}
\]

For the stopped preterminal atom theorem, such a budget is supplied by the
finite original smooth total-variation bound on \(dJ_{P,0}^{S}\) plus paid
leakage.  For Gold-strength terminal-uniform storage, the same line must use
the root-uniform selected coefficient budget `(TFE2748B.511)'.  Thus
`(TFE2748B.513)' is not a future-tail definition of the reserve; it is the
reserve-depletion bookkeeping once the relevant parent-announced atom budget has
been supplied.

Then

\[
M_P^{S,atom}(\tau)\ge0,
\qquad
-dM_P^{S,atom}
=dJ_{P,atom}^{S,ret,-}
\quad\text{on the retained selected atom ledger.}
\tag{TFE2748B.514}
\]

Thus the opposite lobe is a genuine bounded-below parent-reserve depletion in
the selected pre-clipping ledger.  The positive selected bill is attached to
that same ledger:

\[
(dJ_P^{S})_+
\preceq_{atom}
dJ_{P,atom}^{S,ret,-}+(dR_P^{S})_+.
\tag{TFE2748B.515}
\]

Combining `(TFE2748B.511)' with `(TFE2748B.514)'--`(TFE2748B.515)' gives the
usable storage line

\[
\int_0^\tau(dJ_P^{S})_+
\le
B_P^{S,atom}-M_P^{S,atom}(\tau)
+\Theta_P^0+Paid_P+Stop_P
\le
C_N(u_0)
+\theta\nu\int_0^\tau D_N(t)\,dt
+\Theta_P^0+Paid_P+Stop_P .
\tag{TFE2748B.516}
\]

So the construction requested here is exact: arbitrary original smooth data
gives the pre-clipping atom ledger, controls finite stopped coefficients and
leakage, and makes the retained opposite lobe a bounded-below parent reserve
depletion.  The remaining Gold work is narrower and sharper: prove the
root-uniform selected coefficient bound `(TFE2748B.511)' from the original
coupled packet.  Section 61 identifies one active analytic input for that bound,
the far-corona two-scale Carleson estimate, plus the full-exchange payment of
the selected meter.

## 63. Far-corona coefficient pushdown for the selected atom bound

The selected coefficient estimate `(TFE2748B.511)' has one remaining analytic
place where scale can still hide: the far-corona middle-band packet.  The kernel
\(\ell/r\) is already harmless once the two-scale density is in the right
Carleson currency.  The issue is whether the accumulated high-scale stress seen
by a lower far-corona strain is paid by the same original full-exchange ledger
before clipping.

Write the far-corona density as

\[
B_r(t)
:=
\int_0^{r/c_1}
\mathcal A_{\ell,r}(t)\,{d\ell\over\ell}
=
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,T_r(x,t)\,dx,
\tag{TFE2748B.517}
\]

where

\[
T_r(x,t)
:=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\,
\tau_\ell^{H^1}[u](x,t)\,{d\ell\over\ell}.
\tag{TFE2748B.518}
\]

Thus the exact direct Carleson object is

\[
\mathfrak C_N^{far}(W)
:=
\int_W\int B_r(t)^2\,{dr\over r}\,dt .
\tag{TFE2748B.519}
\]

No cancellation is available in \(B_r\), because the active stress density is
nonnegative after selection.  The direct \(L^p\)-factorization audit shows that
changing Hölder exponents leaves the same finite-band endpoint survivor.  On
the endpoint collar \(m,j=N+O(1)\), the shell-pair commutator satisfies

\[
\left|
2^{2j}
\left\langle
[\Delta_j,\Delta_m u\cdot\nabla]\Delta_j u,\Delta_j u
\right\rangle
\right|
\le
C\,2^{5m/2}\|\Delta_m u\|_2\,E_j .
\tag{TFE2748B.520}
\]

Young's inequality and the fixed collar relation \(m,j=N+O(1)\) give, for every
\(\varepsilon>0\),

\[
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
|\mathcal C_{m,j}(t)|
\le
\varepsilon\nu D_N(t)
+
C_{\varepsilon,\nu,I,J}\,
\Theta_N^\sharp(t)E_N(t)
\le
\varepsilon\nu D_N(t)
+
C_{\varepsilon,\nu,I,J}\,
\widetilde\Lambda_N^\sharp(t)E_N(t).
\tag{TFE2748B.521}
\]

Consequently `WeightedCarrierFullExchangePayment.A' pays the fixed-collar
endpoint part of the selected coefficient mass:

\[
\int_W d\mathfrak C_N^{fix}
\le
\varepsilon\nu\int_WD_N(t)\,dt
+
C_\varepsilon(u_0)
+Paid(W)+Stop(W).
\tag{TFE2748B.522}
\]

The other endpoint form is the fixed-band endpoint square theorem.  The source
square dominance note gives the pointwise reduction

\[
\mathrm{FBE}_N(W)
\le
C_{I,J,E_0}\,
\mathcal R_{N-C_{I,J}}(W),
\tag{TFE2748B.523}
\]

where

\[
\mathcal R_{N_0}(W)
:=
\int_W
\sum_{k>N_0}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt .
\tag{TFE2748B.524}
\]

So the endpoint \(FBE/EP/AQK\) survivor is not an independent source once the
native source-square / full-exchange reserve is present.  It is a finite-band
projection of that reserve.

The only far-corona statement that still needs proof is the threading from the
exact accumulated-stress Carleson object `(TFE2748B.519)' into the paid
source-square/full-exchange currency:

\[
\boxed{
\mathfrak C_N^{far}(W)
\le
C\,\mathcal R_{N-C}(W)
+
\varepsilon\nu\int_WD_N(t)\,dt
+
C_\varepsilon 2^{-2\delta N}
+Paid(W)+Stop(W).
}
\tag{TFE2748B.525}
\]

Equivalently, one may prove the stronger direct Carleson estimate

\[
\mathfrak C_N^{far}(W)
\le
\varepsilon\nu\int_WD_N(t)\,dt
+
C_\varepsilon(u_0)2^{-2\delta N}
+Paid(W)+Stop(W),
\tag{TFE2748B.526}
\]

from the original coupled packet.  The current support notes prove the kernel
reduction, the fixed-collar coefficient absorption, and the FBE-to-source-square
domination.  They do not yet prove `(TFE2748B.525)' or `(TFE2748B.526)' from
arbitrary original data.

Therefore the selected coefficient theorem `(TFE2748B.511)' is reduced to the
following exact original-data package:

\[
\boxed{
\begin{array}{c}
\texttt{WeightedCarrierFullExchangePayment.A}\\
+\texttt{SourceSquareReservePayment.A}\\
+\texttt{FarCoronaAccumulatedStressThreading.A `(TFE2748B.525)'}
\end{array}
\Longrightarrow
\text{root-uniform selected coefficient estimate `(TFE2748B.511)'.}
}
\tag{TFE2748B.527}
\]

Here `SourceSquareReservePayment.A' is not a new physical wall beside
`FullExchangeCriticalDepletionStorage.A'.  It is the native source-square face
of the same full-exchange critical ledger.  The remaining unproved content is
the same original coupled-packet fact in sharper coordinates: accumulated
far-corona stress cannot create selected positive coefficient mass unless it is
already present as source-square/full-exchange material, viscous drain, legal,
stop, or paid meter motion before clipping.

## 64. Accumulated-stress threading is source-square dominated

The preceding section left `FarCoronaAccumulatedStressThreading.A' as an
unproved input.  The direct far-corona attack actually gives enough to prove
that threading into the source-square currency.  The missing point was to keep
the \(2^{-2j}\) factors in the accumulated high-scale stress instead of
collapsing them into a generic endpoint square.

From the direct \(L_x^\infty\times L_x^1\) attack on `(TFE2748B.519)', with
\(r\sim2^{-k}\) and \(\ell\sim2^{-j}\), \(j\ge k+C_1\), one has

\[
\mathfrak C_N^{far}(W)
\le
C
\int_W
\sum_{k>N-C_0}
2^kD_k(t)
\left(
\sum_{j\ge k+C_1}2^{-2j}D_j(t)
\right)^2dt .
\tag{TFE2748B.528}
\]

Since \(j\ge k+C_1\),

\[
\sum_{j\ge k+C_1}2^{-2j}D_j(t)
\le
C\,2^{-2k}
\sum_{j\ge k+C_1}D_j(t).
\tag{TFE2748B.529}
\]

Substituting `(TFE2748B.529)' into `(TFE2748B.528)' gives

\[
\mathfrak C_N^{far}(W)
\le
C
\int_W
\sum_{k>N-C_0}
2^{-3k}D_k(t)
\left(
\sum_{j\ge k+C_1}D_j(t)
\right)^2dt .
\tag{TFE2748B.530}
\]

The global energy inequality supplies the missing lower-band coefficient bound:

\[
2^{-3k}D_k(t)
=
2^{-k}\|\Delta_k u(t)\|_2^2
\le
2^{-k}\|u(t)\|_2^2
\le
2^{-k}\|u_0\|_2^2 .
\tag{TFE2748B.531}
\]

On the retained high-shell range \(k>N-C\) with \(N\) chosen above the fixed
low-frequency cutoff, \(2^{-k}\le 2^k\).  Thus the corrected coefficient is
strictly no larger than the source-square weight used in \(\mathcal R_{N-C}\).

Therefore

\[
\mathfrak C_N^{far}(W)
\le
C(u_0)
\int_W
\sum_{k>N-C}
2^k
\left(
\sum_{j>k+4}D_j(t)
\right)^2dt
=
C(u_0)\,\mathcal R_{N-C}(W).
\tag{TFE2748B.532}
\]

This proves the threading theorem in the form needed by `(TFE2748B.525)':

\[
\boxed{
\texttt{FarCoronaAccumulatedStressThreading.A is proved by
`(TFE2748B.528)'--`(TFE2748B.532)'.}
}
\tag{TFE2748B.533}
\]

Combining `(TFE2748B.532)' with the source-square payment estimate

\[
\mathcal R_{N-C}(W)
\le
\varepsilon\nu\int_WD_N(t)\,dt
+
C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W)
\tag{TFE2748B.534}
\]

gives exactly `(TFE2748B.525)'.  Thus the far-corona accumulated-stress
threading is no longer an independent Gold obstruction.  The remaining
source input inside `(TFE2748B.527)' is `SourceSquareReservePayment.A', the
native source-square face of `FullExchangeCriticalDepletionStorage.A', together
with the already named weighted-carrier full-exchange payment for the
fixed-collar/meter-motion terms.

The sharpened coefficient implication is therefore

\[
\boxed{
\begin{array}{c}
\texttt{WeightedCarrierFullExchangePayment.A}\\
+\texttt{SourceSquareReservePayment.A}
\end{array}
\Longrightarrow
\text{root-uniform selected coefficient estimate `(TFE2748B.511)'.}
}
\tag{TFE2748B.535}
\]

This is not Gold closure yet, because `(TFE2748B.534)' is still the
full-exchange/native source-square payment theorem from arbitrary original
data.  What has been removed is the separate proposition-level far-corona
threading gap.

## 65. Source-square payment is the active time-thickness theorem

After Sections 62 and 64 there are two closed facts and one remaining source
fact.  The closed facts are:

\[
\begin{array}{c}
\text{pre-clipping same-parent atom attachment, coefficient/leakage control,
and retained opposite-lobe}\\
\text{reserve depletion `(TFE2748B.506)'--`(TFE2748B.516)',}\\[2mm]
\text{far-corona accumulated-stress threading into the native source-square
currency `(TFE2748B.528)'--`(TFE2748B.533)'.}
\end{array}
\tag{TFE2748B.536}
\]

The unproved source face is exactly the payment of

\[
\mathcal R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{j>k+4}D_j(t)\right)^2dt .
\tag{TFE2748B.537}
\]

This is not raw atom mass and not ordinary dissipation.  It is the square of
the high-shell drain tail, weighted at the parent scale.  Let

\[
T_k(t):=\sum_{j>k+4}D_j(t).
\tag{TFE2748B.538}
\]

Then the remaining source-square payment theorem is the active time-thickness
line

\[
\boxed{
\int_W\sum_{k>N}2^kT_k(t)^2dt
\le
-dM_P^{sq}(W)
+\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W),
}
\tag{TFE2748B.539}
\]

with \(M_P^{sq}\) bounded below and parent-announced from the original coupled
packet before child positive clipping.  This is the exact content of
`SourceSquareReservePayment.A' in `(TFE2748B.534)'.

The scalar reason ordinary energy cannot prove `(TFE2748B.539)' is sharp.  Fix
one high shell \(j=k+5\) and a time interval \(I\) of length \(h\).  Put
\[
D_j(t)=A\,1_I(t),
\qquad
Ah=M.
\tag{TFE2748B.540}
\]

The linear drain budget sees only

\[
\int_I D_j(t)\,dt=M,
\tag{TFE2748B.541}
\]

while the source-square readout sees

\[
\int_I2^kT_k(t)^2dt
\ge
2^kA^2h
=
2^k{M^2\over h}.
\tag{TFE2748B.542}
\]

Thus a linear dissipation budget, atom pairing, or same-parent ownership
cannot by itself control the source-square bill.  A short heat-time pulse can
have fixed linear drain and arbitrarily large square-time readout unless the
original coupled packet supplies one additional fact: large active high-shell
drain must occupy enough heat time, or else the excess is recorded as depletion
of a parent source-square/no-waste reserve.

Equivalently, `(TFE2748B.539)' follows from either of the following same-parent
forms:

\[
2^kT_k(t)^2dt
\le
-dM_{P,k}^{sq}
+\varepsilon\nu\,T_k(t)dt
+dR_{P,k}^{sq},
\qquad
\sum_{k>N}\int_WdR_{P,k}^{sq}
\le
C_\varepsilon2^{-2\delta N}+Paid(W)+Stop(W),
\tag{TFE2748B.543}
\]

or a parent-known active-shell amplitude/no-waste estimate

\[
2^kT_k(t)
\le
\varepsilon\nu
+\mathfrak a_k(t),
\qquad
\int_W\sum_{k>N}\mathfrak a_k(t)T_k(t)\,dt
\le
-dM_P^{sq}(W)+C_\varepsilon2^{-2\delta N}+Paid(W)+Stop(W).
\tag{TFE2748B.544}
\]

These are just different coordinates for the branch producers already isolated
in Section 58.  Repeated cores must pay `(TFE2748B.543)' by signed polar
negative return, and shrinking cores must pay it by selected exponent-lift /
root-visible active packing.  Therefore the exact remaining implication is

\[
\boxed{
\begin{array}{c}
\texttt{OriginalHistoryNegativeReturnCharge.A}\\
+\texttt{OriginalHistorySelectedExponentLift.A}
\end{array}
\Longrightarrow
\texttt{SourceSquareReservePayment.A `(TFE2748B.534)'.}
}
\tag{TFE2748B.545}
\]

This section does not claim Gold closure.  It pins the remaining physical
mathematical law: the original coupled packet must forbid a retained
nonendpoint high-shell pulse from being arbitrarily thin in heat time while
still being recounted as fresh source-square action.  In the user's physical
language, the pressure/heat/viscous participation event may arrive and
re-coordinate instantly, but the square readout is not allowed to be harvested
without either heat-time thickness, signed return, selected exponent-lift, or
paid source-square reserve depletion inside the same parent packet.

## 66. Negative return and exponent lift are one amplification-current producer

The two inputs in `(TFE2748B.545)' are not independent physical reservoirs.
The older repeated-core and shrinking-core notes show that both are projections
of one parent-known selected amplification/current record.  The repeated-core
projection reads downward motion of a fixed stopped score; the shrinking-core
projection reads chart-change / first-ratio amplification when the child is
fresh.

The common record is

\[
\mathfrak Z_P^S=(Z_P^S,\Psi_P^S,\Lambda_P^S),
\tag{TFE2748B.546}
\]

constructed from the original stopped pressure-viscosity-incompressibility-
velocity packet before descendant positive clipping.  Here \(Z_P^S\) is the
stopped routed carrier/current coordinate, \(\Psi_P^S\) is the signed scale
potential used by the polar lift, and \(\Lambda_P^S\) is the selected
amplification coordinate.  The root theorem needed below `(TFE2748B.545)' is
therefore:

\[
\boxed{
\begin{array}{c}
\texttt{OriginalHistorySelectedAmplificationCurrentCarleson.A:}\\
\text{construct `(TFE2748B.546)' before clipping, prove source-square lower
admission,}\\
\text{and prove the root Carleson/BV/testing bound `(TFE2748B.547)'.}
\end{array}}
\tag{TFE2748B.546a}
\]

The bound is

\[
\begin{aligned}
\mathcal E_{SAC}(P):={}&
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z_P^S|^2
|T_\sigma|^2
|E_\sigma|^2
|C_\sigma|^2
\right)\\
&+\operatorname{Var}_{crit}^{stop}(\Lambda_P^S;P)\\
&+\sup_{P'\subseteq P}
{1\over\mathcal R(P')}
\sum_{Q\subseteq P'}
\left(\|\Delta_QZ_P^S\|_{\mathfrak H_P}^2+|e_Q^S|^2\right)
\mathcal R(Q)\\
&+\operatorname{TestDef}_S(P)+Stop(P)
\le C_N(u_0)+Paid(P)+R_{\rm legal}(P)+Stop(P).
\end{aligned}
\tag{TFE2748B.547}
\]

The source-square lower admission clause means that the density in
`(TFE2748B.537)' is read by this same record before clipping:

\[
\int_W\sum_{k>N}2^kT_k(t)^2dt
\le
C_N\,\mathcal E_{SAC}(P;W)
+\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W).
\tag{TFE2748B.548}
\]

This is not a definition of \(\mathcal E_{SAC}\) by the future source-square
tail.  It is the lower-admission assertion that a retained high-shell
source-square pulse is either a derivative/current increment of the original
routed packet, a selected amplification jump, a testing defect, or paid
route/legal/stop material.

The repeated-core projection is the fixed stopped score

\[
P_R=\Gamma_RZ_P^S .
\tag{TFE2748B.549}
\]

On a fixed retained core,

\[
\partial_\sigma P_R
=
\Gamma_R\partial_\sigma Z_P^S
+(\partial_\sigma\Gamma_R)Z_P^S,
\tag{TFE2748B.550}
\]

and the second term is exactly turnstile, exchange, covector, connection, or
paid selector motion already included in `(TFE2748B.547)'.  Weighted Cauchy on
maximal stopped return slabs gives the harmonic-square return estimate; scalar
BV then converts positive repeated-core visits into record growth plus negative
return.  Hence `(TFE2748B.547)' supplies
`OriginalHistoryNegativeReturnCharge.A' in the form needed by
`(TFE2748B.543)'.

The shrinking-core projection is the selected log-ratio identity

\[
\log {f_Q\over f_{\operatorname{par}(Q)}}
=
\ell_Q(\Delta_QZ_P^S)-\psi_Q+e_Q^S,
\tag{TFE2748B.551}
\]

with the square function and error Carleson terms bounded by `(TFE2748B.547)'.
The standard martingale John--Nirenberg / Kazamaki step then gives the retained
reverse-Holder / selected exponent-lift:

\[
\int_{P'} f^{1+\varepsilon}\,d\mathcal R
\le
C f_{P'}^{1+\varepsilon}\mathcal R(P'),
\qquad P'\subseteq P,
\tag{TFE2748B.552}
\]

after paid reselection, order-lock, and legal defects are removed.  This is
`OriginalHistorySelectedExponentLift.A' in `(TFE2748B.545)'.

Therefore the source-square payment reduces to one common producer:

\[
\boxed{
\texttt{OriginalHistorySelectedAmplificationCurrentCarleson.A}
\Longrightarrow
\texttt{SourceSquareReservePayment.A `(TFE2748B.534)'.}
}
\tag{TFE2748B.553}
\]

This is a genuine reduction, not a closure.  The open arbitrary-data work is
now concentrated in `(TFE2748B.546a)'--`(TFE2748B.548)': construct the stopped
record from the original coupled packet, prove the lower admission of the
source-square pulse into that record, and prove the root Carleson/BV/testing
bound without defining the record by the future selected tail.

## 67. Tail-energy identity behind the source-square payment

Section 66 still names the remaining producer as an amplification/current
Carleson theorem.  The source-square bill itself has a more concrete original
equation.  It is the high-shell drain tail multiplied by the positive
tail-injection work that created or sustained that tail.

Work on one stopped parent packet, with all route, collar, frame, legal, and
stop terms kept in the paid ledgers.  Let

\[
E_j(t)=\|\Delta_j^P u(t)\|_2^2,
\qquad
D_j(t)=2^{2j}E_j(t),
\qquad
H_j(t)=2^{2j}D_j(t).
\tag{TFE2748B.554}
\]

The dyadic shell energy equation pulled to the parent frame has the
before-clipping coupled form

\[
{1\over2}\,dD_j
+\nu H_j\,dt
=
2^{2j}\mathcal N_{j,P}^{full}\,dt+dR_{j,P}^{route},
\tag{TFE2748B.555}
\]

where \(\mathcal N_{j,P}^{full}\) is the full pressure-Hodge,
self-advection, viscous-frame, incompressibility, and material-coordinate
shell current.  It is one coupled packet current; no child positive part has
been clipped in `(TFE2748B.555)'.

For \(T_k=\sum_{j>k+4}D_j\), put

\[
H_{>k}:=\sum_{j>k+4}H_j,
\qquad
\mathcal N_{>k,P}^{D}
:=
\sum_{j>k+4}2^{2j}\mathcal N_{j,P}^{full}.
\tag{TFE2748B.556}
\]

Summing `(TFE2748B.555)' over \(j>k+4\) gives

\[
{1\over2}\,dT_k+\nu H_{>k}\,dt
\le
(\mathcal N_{>k,P}^{D})_+\,dt+dR_{>k,P}^{route}.
\tag{TFE2748B.557}
\]

Since \(H_{>k}\ge c\,2^{2k}T_k\), multiplying `(TFE2748B.557)' by
\(2^{-k}T_k/\nu\) yields the deterministic tail inequality

\[
2^kT_k^2\,dt
\le
C_\nu\,2^{-k}T_k(\mathcal N_{>k,P}^{D})_+\,dt
-c_\nu\,d(2^{-k}T_k^2)
+dR_{k,P}^{tail}.
\tag{TFE2748B.558}
\]

The route term \(dR_{k,P}^{tail}\) contains only the already separated
route/collar/frame/legal/stop leakage and the harmless terminal tail
\(C_\varepsilon2^{-2\delta N}\) produced by the stopped shell cutoff.

Define the tail storage

\[
M_{P,N}^{tail}(t)
:=
c_\nu\sum_{k>N}2^{-k}T_k(t)^2 .
\tag{TFE2748B.559}
\]

It is parent-announced and bounded below by zero.  For smooth initial data,

\[
M_{P,N}^{tail}(0)
\le
C_{N,s}\|u_0\|_{H^s}^4
\qquad(s>3/4),
\tag{TFE2748B.560}
\]

and in the Gold lane this is part of the allowed \(C_N(u_0)\) initial
storage.

Summing `(TFE2748B.558)' over \(k>N\) gives the exact tail-payment identity

\[
\int_W\sum_{k>N}2^kT_k(t)^2\,dt
\le
-dM_{P,N}^{tail}(W)
+C_\nu\,\mathcal I_{P,N}^{tail}(W)
+C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W),
\tag{TFE2748B.561}
\]

where the only non-paid source is the positive tail-injection work

\[
\mathcal I_{P,N}^{tail}(W)
:=
\int_W\sum_{k>N}
2^{-k}T_k(t)(\mathcal N_{>k,P}^{D})_+(t)\,dt .
\tag{TFE2748B.562}
\]

Therefore `SourceSquareReservePayment.A' follows from the single explicit
parent-current estimate

\[
\boxed{
\mathcal I_{P,N}^{tail}(W)
\le
\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon(u_0)2^{-2\delta N}
+Paid(W)+Stop(W).
}
\tag{TFE2748B.563}
\]

Indeed, `(TFE2748B.561)' plus `(TFE2748B.563)' is exactly
`(TFE2748B.539)' after reducing \(\varepsilon\).  Thus

\[
\boxed{
\texttt{TailInjectionWorkCarleson.A `(TFE2748B.563)'}
\Longrightarrow
\texttt{SourceSquareReservePayment.A `(TFE2748B.539)'.}
}
\tag{TFE2748B.564}
\]

This is the noncircular meaning of the "thin pulse" obstruction.  A retained
high-shell drain tail cannot contribute \(2^kT_k^2dt\) for free: the parent
tail equation records it as either viscous tail-storage decay
\(-dM_{P,N}^{tail}\), paid route/stop material, or positive tail-injection
work \(\mathcal I_{P,N}^{tail}\).  The Gold source theorem is now the payment
of that positive injection work by the original coupled packet before clipping.

The relation to Section 66 is direct.  The record
\(\mathfrak Z_P^S=(Z_P^S,\Psi_P^S,\Lambda_P^S)\) must be a parent-announced
representation of \((\mathcal N_{>k,P}^D)_+\) against the active tail \(T_k\):

\[
\mathcal I_{P,N}^{tail}(W)
\le
C_N\mathcal E_{SAC}(P;W)
+\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W).
\tag{TFE2748B.565}
\]

Together with the root Carleson/BV/testing bound `(TFE2748B.547)', this proves
`(TFE2748B.563)' and hence the source-square payment.  Conversely, any proof of
`(TFE2748B.548)' must supply `(TFE2748B.565)' for the same tail-injection work,
otherwise it has not identified what original parent current created the
source-square pulse.

So the current bottom is sharpened to the following exact source package:

\[
\boxed{
\begin{array}{c}
\texttt{TailInjectionWorkRepresentation.A `(TFE2748B.565)'}\\
+\texttt{OriginalHistorySelectedAmplificationCurrentCarleson.A `(TFE2748B.547)'}
\end{array}
\Longrightarrow
\texttt{SourceSquareReservePayment.A.}
}
\tag{TFE2748B.566}
\]

This section proves the tail-storage identity and the implication to
source-square payment.  It does not prove `(TFE2748B.563)' from arbitrary
original data.  The unproved arbitrary-data content is now exactly the
same-parent payment of the positive full shell-current injection
\(\mathcal I_{P,N}^{tail}\), rather than an unnamed amplification reservoir or a
future selected source-square tail.

## 68. Square-current form of the tail-injection estimate

The tail-injection estimate `(TFE2748B.563)' still carries the active tail
\(T_k\) as a multiplier.  This is useful physically, but it leaves a possible
self-feeding reading: a proof could accidentally use the future source-square
tail to pay the current that created that same tail.  The noncircular
Cauchy split separates these two objects.

Define the parent-announced full shell-current square measure

\[
\mathcal Q_{P,N}^{cur}(W)
:=
\int_W\sum_{k>N}
2^{-3k}
\left((\mathcal N_{>k,P}^{D})_+(t)\right)^2\,dt .
\tag{TFE2748B.567}
\]

This is still one coupled participation current: \(\mathcal N_{>k,P}^{D}\)
contains the pressure-Hodge, self-advection, incompressibility, viscous-frame,
and material-coordinate shell current from `(TFE2748B.555)'--`(TFE2748B.556)'.
The square in `(TFE2748B.567)' is taken only after that full parent current is
formed before child positive clipping.

For any \(\eta>0\), Cauchy's inequality gives

\[
2^{-k}T_k(\mathcal N_{>k,P}^{D})_+
\le
\eta\,2^kT_k^2
+C_\eta\,2^{-3k}\left((\mathcal N_{>k,P}^{D})_+\right)^2 .
\tag{TFE2748B.568}
\]

Therefore

\[
\mathcal I_{P,N}^{tail}(W)
\le
\eta\,\mathcal R_N(W)
+C_\eta\,\mathcal Q_{P,N}^{cur}(W),
\tag{TFE2748B.569}
\]

where \(\mathcal R_N(W)=\int_W\sum_{k>N}2^kT_k^2dt\).  Combining
`(TFE2748B.569)' with the tail-storage identity `(TFE2748B.561)' gives

\[
\mathcal I_{P,N}^{tail}(W)
\le
\eta\left(
-dM_{P,N}^{tail}(W)
+C_\nu\mathcal I_{P,N}^{tail}(W)
+C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W)
\right)
+C_\eta\mathcal Q_{P,N}^{cur}(W).
\tag{TFE2748B.570}
\]

Choose \(\eta\) so that \(C_\nu\eta<1/2\).  Absorbing the
\(\mathcal I_{P,N}^{tail}\) term gives

\[
\mathcal I_{P,N}^{tail}(W)
\le
-d\widetilde M_{P,N}^{tail}(W)
+C_\eta\,\mathcal Q_{P,N}^{cur}(W)
+C_{\varepsilon,\eta}2^{-2\delta N}
+Paid(W)+Stop(W),
\tag{TFE2748B.571}
\]

with \(\widetilde M_{P,N}^{tail}\) bounded below by a harmless multiple of
\(M_{P,N}^{tail}\).  Thus `(TFE2748B.563)' follows from the full-current square
Carleson estimate

\[
\boxed{
\mathcal Q_{P,N}^{cur}(W)
\le
\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon(u_0)2^{-2\delta N}
+Paid(W)+Stop(W).
}
\tag{TFE2748B.572}
\]

Equations `(TFE2748B.567)'--`(TFE2748B.572)' prove the deterministic reduction

\[
\boxed{
\texttt{FullShellCurrentSquareCarleson.A `(TFE2748B.572)'}
\Longrightarrow
\texttt{TailInjectionWorkCarleson.A `(TFE2748B.563)'.}
}
\tag{TFE2748B.573}
\]

This is a genuine sharpening of the source wall.  The active multiplier
\(T_k\) is no longer part of the source theorem; it has been absorbed into the
bounded-below tail storage.  The remaining arbitrary-data theorem is the
square-Carleson control of the full coupled shell-current itself.

The reduction also exposes the forbidden circular proof.  The estimate

\[
\mathcal Q_{P,N}^{cur}(W)
\le
C\,\mathcal R_N(W)+Paid(W)+Stop(W)
\tag{TFE2748B.574}
\]

does not close Gold unless the constant is small enough to be absorbed through
`(TFE2748B.570)'.  A bound of the form `(TFE2748B.574)' with uncontrolled
constant only says that the current can be measured by the same future
source-square tail it is supposed to pay.  The original-data requirement is the
strict parent estimate `(TFE2748B.572)'.

In Section 66 language, TailInjectionWorkRepresentation.A is now the statement
that the selected amplification/current record sees the full shell-current
square before clipping:

\[
\mathcal Q_{P,N}^{cur}(W)
\le
C_N\mathcal E_{SAC}(P;W)
+\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon2^{-2\delta N}
+Paid(W)+Stop(W).
\tag{TFE2748B.575}
\]

Together with `(TFE2748B.547)', `(TFE2748B.575)' proves
`(TFE2748B.572)', then `(TFE2748B.573)' proves TailInjectionWorkCarleson, and
Section 67 proves SourceSquareReservePayment.  Conversely, without
`(TFE2748B.575)' the amplification/current record has not been shown to own the
actual derivative shell-current that generates the positive tail injection.

The current bottom of the Gold \(L^1\) source chain is therefore:

\[
\boxed{
\begin{array}{c}
\texttt{FullShellCurrentSquareCarleson.A `(TFE2748B.572)'}\\
\text{equivalently}\\
\texttt{FullShellCurrentSquareRepresentation.A `(TFE2748B.575)'}
+\texttt{ plus `(TFE2748B.547)'}
\end{array}
\Longrightarrow
\texttt{SourceSquareReservePayment.A.}
}
\tag{TFE2748B.576}
\]

This section proves only the reduction.  The unproved arbitrary-data content is
now the strict same-parent square-Carleson estimate for the full coupled
derivative shell-current \(\mathcal N_{>k,P}^{D}\).  It must be supplied by the
original pressure-viscosity-incompressibility-velocity packet before clipping,
not by a scalarized source-square tail after the child readout has been counted.

## 69. Full-packet custody audit for the derivative shell-current

The older full Hodge-Stokes and four-body surfaces do not close
`(TFE2748B.572)'.  They do something narrower and necessary: they identify the
object whose positive square must be estimated.

For each retained shell and stopped parent packet, the derivative shell-current
in `(TFE2748B.555)' has the full-packet scalar form

\[
\mathcal N_{j,P}^{full}
=
\mathsf{Scal}_{j,P}^{HS}
\bigl(
\chi_P(u\cdot\nabla u),\,
\chi_P\nabla p,\,
\nu\chi_P\Delta u,\,
\chi_P\partial_tu,\,
\chi_P\nabla\cdot u,\,
\mathcal B_{j,P}^{cut},\,
\mathcal S_{j,P}^{sgn}
\bigr)
+\mathcal R_{j,P}^{route}.
\tag{TFE2748B.577}
\]

Here \(\mathsf{Scal}_{j,P}^{HS}\) is the same shell-energy scalar contraction
used in the parent-frame differentiated balance, and
\(\mathcal R_{j,P}^{route}\) consists only of the already separated route,
collar, frame, legal, and stop terms.  Thus, after summing \(j>k+4\),

\[
\mathcal N_{>k,P}^{D}
=
\mathsf{Scal}_{>k,P}^{HS}(\mathcal K_{>k,P}^{HS})
+\mathcal R_{>k,P}^{route},
\tag{TFE2748B.578}
\]

before any child positive part is clipped.  This is the exact sense in which
the Leray-projection oversight is absent from `(TFE2748B.555)'--`(TFE2748B.567)':
the current is not an input-colored triad and not a projected scalar.  It is
the recombined same-parent pressure-viscosity-incompressibility-velocity shell
current.

Define the corresponding full-packet square current

\[
\mathcal Q_{P,N}^{HS}(W)
:=
\int_W\sum_{k>N}2^{-3k}
\left(
\bigl(\mathsf{Scal}_{>k,P}^{HS}(\mathcal K_{>k,P}^{HS})\bigr)_+
\right)^2dt .
\tag{TFE2748B.579}
\]

The custody identity gives the deterministic comparison

\[
\mathcal Q_{P,N}^{cur}(W)
\le
C\,\mathcal Q_{P,N}^{HS}(W)
+Paid(W)+Stop(W).
\tag{TFE2748B.580}
\]

Indeed, `(TFE2748B.578)' and \((a+b)_+^2\le2a_+^2+2b_+^2\) move the paid
route/collar/frame/legal/stop square into the paid ledgers; no future
source-square tail is used.

Consequently the current-specific full-packet supplier is

\[
\boxed{
\mathcal Q_{P,N}^{HS}(W)
\le
\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon(u_0)2^{-2\delta N}
+Paid(W)+Stop(W).
}
\tag{TFE2748B.581}
\]

Equations `(TFE2748B.579)'--`(TFE2748B.581)' imply
`FullShellCurrentSquareCarleson.A' and hence the storage line through Sections
67--68:

\[
\boxed{
\texttt{DerivativeShellFullPacketSquareNoWaste.A `(TFE2748B.581)'}
\Longrightarrow
\texttt{FullShellCurrentSquareCarleson.A `(TFE2748B.572)'}
\Longrightarrow
\texttt{SourceSquareReservePayment.A.}
}
\tag{TFE2748B.582}
\]

This is not a new independent wall.  It is the current-specific reading of the
older no-residue/four-body production target.  The checked older surfaces prove
packet custody, order-locked positive-carrier identification as a criterion,
lossless full-packet rigidity as a consumer, and strong same-carrier
compactness/no-loss as a criterion.  They also explicitly prove the limitation

\[
\text{full signed Hodge-Stokes participation custody}
\ne
\text{one-sided selected positive no-waste payment}.
\tag{TFE2748B.583}
\]

Thus the full-packet audit discharges only the representation half of the
current theorem:

\[
\boxed{
\texttt{FullShellCurrentSquareRepresentation.A}
\text{ is the full Hodge-Stokes packet custody statement `(TFE2748B.578)'--`(TFE2748B.580)'.}
}
\tag{TFE2748B.584}
\]

The remaining arbitrary-data producer is precisely the strict square/no-waste
estimate `(TFE2748B.581)' for that same recombined current.  A proof may use the
Hodge-Stokes packet, four-body routing, compactness/no-loss, and lossless
rigidity only after it supplies a same-parent square budget or bounded-below
no-waste Lyapunov law before clipping; packet preservation alone would repeat
the old category error.

## 70. Tail-aligned correction to the full-square supplier

Section 69 records a valid sufficient route, but `(TFE2748B.581)' is stronger
than the storage line itself asks for.  The tail identity in Section 67 does
not use the whole positive square of the full shell-current.  It uses only the
part of that current that is aligned with the currently retained high-shell
tail.

Define the full-packet tail-aligned current

\[
\mathcal A_{P,N}^{tail,HS}(W)
:=
\int_W\sum_{k>N}
2^{-k}T_k(t)
\left(
\mathsf{Scal}_{>k,P}^{HS}(\mathcal K_{>k,P}^{HS})(t)
\right)_+dt .
\tag{TFE2748B.585}
\]

By `(TFE2748B.578)' and paid route comparison,

\[
\mathcal I_{P,N}^{tail}(W)
\le
\mathcal A_{P,N}^{tail,HS}(W)
+Paid(W)+Stop(W).
\tag{TFE2748B.586}
\]

Thus the exact current-specific source theorem needed by `(TFE2748B.563)' is

\[
\boxed{
\mathcal A_{P,N}^{tail,HS}(W)
\le
\varepsilon\nu\int_WD_N(t)\,dt
+C_\varepsilon(u_0)2^{-2\delta N}
+Paid(W)+Stop(W).
}
\tag{TFE2748B.587}
\]

The square route `(TFE2748B.581)' implies `(TFE2748B.587)' by the Cauchy
argument of Section 68 together with the tail storage identity.  Conversely,
`(TFE2748B.587)' is the sharper one-sided form: transverse or cancelling
full-packet current may contribute to the square in `(TFE2748B.579)' without
opening retained tail capacity.  Counting that transverse square as Gold
source would recreate the earlier mistake of turning packet custody into
one-sided production.

The exact relation is therefore

\[
\boxed{
\texttt{DerivativeShellFullPacketSquareNoWaste.A `(TFE2748B.581)'}
\Longrightarrow
\texttt{DerivativeShellTailAlignedNoWaste.A `(TFE2748B.587)'}
\Longrightarrow
\texttt{TailInjectionWorkCarleson.A `(TFE2748B.563)'}.
}
\tag{TFE2748B.588}
\]

This correction folds the derivative shell-current branch back into the
one-sided aligned-current theorem of Sections 43--46.  In the tail coordinate,
the retained high-shell tail \(T_k\) is the selected active density, and
`(TFE2748B.585)' is the positive part of the same-parent current paired with
that density.  The general aligned-current estimate `(TFE2748B.324)' and its
parent comparison form `(TFE2748B.351)' therefore imply `(TFE2748B.587)' after
the full-packet representation `(TFE2748B.578)' and paid route terms are
inserted.

So the noncircular source map is

\[
\boxed{
\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.351)'}
\Longrightarrow
\texttt{DerivativeShellTailAlignedNoWaste.A `(TFE2748B.587)'}
\Longrightarrow
\texttt{SourceSquareReservePayment.A}
\Longrightarrow
\texttt{OriginalCriticalCapacityVariation.A.}
}
\tag{TFE2748B.589}
\]

This also explains why a direct attack on `(TFE2748B.581)' keeps stalling:
full-square current control asks to pay current components that the storage
line does not read as positive action.  The precise producer remains the
one-sided parent comparison/no-waste law for the aligned same-parent current,
not an all-direction full-current square estimate.

## 71. Tail-coordinate bridge and the normalized remaining failure

Section 70 should not be read as saying that the abstract parent-comparison
theorem automatically becomes the derivative-shell tail estimate.  The bridge is
valid only after the tail branch has been written as an aligned-current quotient
with its own parent-announced Fisher carrier.

For the retained shell-tail branch define the tail aligned-current measure

\[
dQ_{P,N}^{tail}
:=
\sum_{k>N}
2^{-k}T_k(t)
\left(
\mathsf{Scal}_{>k,P}^{HS}(\mathcal K_{>k,P}^{HS})(t)
\right)_+dt .
\tag{TFE2748B.590}
\]

The deterministic custody identity `(TFE2748B.578)' proves that this is the
tail-coordinate face of the pure aligned-current measure `(TFE2748B.329)',
modulo paid route, collar, frame, legal, and stop material:

\[
\mathcal A_{P,N}^{tail,HS}(W)
\le
\int_W dQ_{P,N}^{tail}
+Paid(W)+Stop(W).
\tag{TFE2748B.591}
\]

The corresponding Fisher carrier in this quotient is the active tail thickness

\[
dI_{P,N}^{tail}
:=
\sum_{k>N}2^{-k}T_k(t)\,dt .
\tag{TFE2748B.592}
\]

This carrier is small against the high-shell drain.  Since
\(T_k=\sum_{j>k+4}D_j\),

\[
\sum_{k>N}2^{-k}T_k
=
\sum_{j>N+4}D_j
\sum_{N<k<j-4}2^{-k}
\le
C2^{-N}\sum_{j>N}D_j
\le
C2^{-N}D_N .
\tag{TFE2748B.593}
\]

Here \(D_N\) is the high-shell dissipation tail in the surrounding source-square
sections; fixed lower shells are already part of the paid low/collar ledger.
Thus the aligned-current estimate `(TFE2748B.324)' applied in the tail
coordinate gives

\[
\int_W dQ_{P,N}^{tail}
\le
C\theta\,2^{-N}\int_WD_N(t)\,dt
+d\Theta_P^0(W)+Paid(W)+Stop(W).
\tag{TFE2748B.594}
\]

For \(N\) above the fixed entrance scale, choose the entrance scale so that
\(C\theta2^{-N}\le \varepsilon\nu\).  The finitely many lower retained shells
are absorbed into the \(C_\varepsilon(u_0)2^{-2\delta N}\), lower-carry, and
paid ledgers already present in Sections 63--68.  Combining `(TFE2748B.591)' and
`(TFE2748B.594)' gives exactly `(TFE2748B.587)'.

So the precise implication replacing the informal sentence in Section 70 is

\[
\boxed{
\begin{array}{c}
\texttt{TailCoordinateAlignedCurrentRealization.A `(TFE2748B.590)'--`(TFE2748B.593)'}\\
+\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.351)'}
\end{array}
\Longrightarrow
\texttt{DerivativeShellTailAlignedNoWaste.A `(TFE2748B.587)'.}
}
\tag{TFE2748B.595}
\]

The bridge `(TFE2748B.590)'--`(TFE2748B.593)' is deterministic bookkeeping from
the stopped shell-tail equation and the full-packet custody identity.  It is not
the arbitrary-data source theorem.  The source theorem is still the one-sided
parent comparison estimate `(TFE2748B.351)'.

The normalized failure that remains after this bridge is therefore exact.  If
the critical capacity variation/storage line fails after Sections 63--71, then
there are stopped parent packets \(P_n\) and shell entrances \(N_n\to\infty\)
such that

\[
\int dQ_{P_n,N_n}^{tail}=1,
\tag{TFE2748B.596}
\]

while

\[
2^{-N_n}\int D_{N_n}(t)\,dt
+\Theta_{P_n}^0(P_n)+Paid(P_n)+Stop(P_n)
\longrightarrow 0 .
\tag{TFE2748B.597}
\]

Using the tail-coordinate realization, `(TFE2748B.596)'--`(TFE2748B.597)' is the
same normalized high-ratio branch as `(TFE2748B.332)'--`(TFE2748B.345)': a unit
amount of positive aligned parent current survives while its Fisher carrier,
paid motion, route leakage, and stop material vanish.  Raw atom pairing,
opposite-lobe reserve depletion, Hodge representation, and shell-tail storage
have already been consumed before this point.

Thus the remaining proof attack is not another dyadic summation or another atom
ledger.  It is the zero-source aligned-current rigidity statement: a stopped
limit of original coupled pressure-viscosity-incompressibility-velocity packets
with vanishing tail Fisher carrier and vanishing paid motion cannot retain a
unit positive aligned-current measure.  Proving that rigidity, or equivalently
constructing a bounded-below no-waste Lyapunov law whose drop pays
`(TFE2748B.596)', is exactly `ParentComparisonPositiveSurplus.A' and therefore
`OriginalCriticalCapacityVariation.A'.

## 72. Signed atom attachment is closed before clipping

The latest retained-lobe formulation should be recorded without weakening it.
The attachment itself is a signed-measure theorem on one stopped parent packet,
provided the selected detector has already been pulled back into the parent
adjoint before the positive part is clipped.

Fix such a stopped parent packet \(P\).  Let \(dJ_P\) be the pre-clipping
pressure-Hodge/material residue after route, collar, legal, stop, and endpoint
material have been separated.  The parent Hodge constraint gives

\[
dJ_P=dJ_P^0+dR_P,
\qquad
\int_{X_P}dJ_P^0=0,
\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.598}
\]

For arbitrary original smooth data this is a finite signed Radon measure on
every stopped preterminal packet.  The finiteness is local-in-history smoothness
plus compact stopping; the zero-mass clause is the constraint-force statement
that the retained pressure-Hodge part redistributes the same parent packet and
does not create standalone positive mass.

Take the Jordan decomposition

\[
dJ_P^0=dJ_P^+-dJ_P^-,
\qquad
dJ_P^+(X_P)=dJ_P^-(X_P)=:m_P .
\tag{TFE2748B.599}
\]

Choose a coupling \(\pi_P\) of \(dJ_P^+\) and \(dJ_P^-\), for example

\[
\pi_P={dJ_P^+\otimes dJ_P^-\over m_P}
\quad(m_P>0),
\qquad
\pi_P=0\quad(m_P=0).
\tag{TFE2748B.600}
\]

Then for every bounded parent test \(\varphi\),

\[
\int_{X_P}\varphi\,dJ_P^0
=
\int_{X_P\times X_P}
\bigl(\varphi(x)-\varphi(y)\bigr)\,d\pi_P(x,y),
\tag{TFE2748B.601}
\]

or, equivalently,

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)
=m_P={1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.602}
\]

In countable notation this is the same same-parent atomic decomposition

\[
dJ_P
=
\sum_\alpha c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int d\mu_\alpha=0,
\qquad
\sum_\alpha |c_\alpha|
\le {1\over2}|dJ_P^0|(X_P),
\tag{TFE2748B.603}
\]

with the sum interpreted as a total-variation limit of simple approximants to
\(\pi_P\).  Thus the coefficient control is exactly the total variation of the
pre-clipping retained parent residue, and all leakage outside the atom ledger is
already in \(d\Theta_P^0+dPaid_P+dStop_P\).

The selected positive lobe is the first marginal of this atom ledger, and the
retained opposite lobe is the second marginal:

\[
dJ_P^{ret,+}:=(\mathrm{pr}_1)_\#\pi_P,
\qquad
dJ_P^{ret,-}:=(\mathrm{pr}_2)_\#\pi_P .
\tag{TFE2748B.604}
\]

Since \((\mu+\nu)_+\le \mu_++\nu_+\) for finite signed measures,

\[
(dJ_P)_+
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+
\le
dJ_P^{ret,-}+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.605}
\]

Here \(\preceq_{atom}\) means comparison after lifting the positive lobe to the
same atom ledger; it is not a pointwise comparison between unrelated spatial
locations.  This is the exact formal version of the physical statement that the
positive selected lobe of a zero-mean pressure-Hodge atom arrives with its
opposite signed lobe in the same parent packet.

The retained opposite lobe is a bounded-below parent reserve depletion.  Let
\(s(y)\) be the stopped parent-time coordinate of the retained negative lobe and
define

\[
M_P^{ret}(\tau)
:=
m_P-\pi_P\bigl(\{(x,y):s(y)<\tau\}\bigr).
\tag{TFE2748B.606}
\]

Then

\[
0\le M_P^{ret}(\tau)\le m_P,
\qquad
M_P^{ret}(0)=m_P,
\qquad
M_P^{ret}(T_P)\ge0,
\tag{TFE2748B.607}
\]

and, as a Stieltjes measure on the same parent atom ledger,

\[
dJ_P^{ret,-}\le -dM_P^{ret},
\tag{TFE2748B.608}
\]

with equality on retained atoms once the already-separated leakage is removed.
Combining `(TFE2748B.605)' and `(TFE2748B.608)' gives the requested
pre-clipping storage entry:

\[
(dJ_P)_+
\preceq_{atom}
-dM_P^{ret}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.609}
\]

Thus the signed atom decomposition, coefficient/leakage control, and
bounded-below retained opposite-lobe depletion are fully constructed from
arbitrary original smooth data on every stopped preterminal parent packet before
child clipping.

What this theorem does not supply is the root-uniform selected-critical size of
the reserve.  The quantity \(m_P={1\over2}|dJ_P^0|(X_P)\) is finite on a stopped
smooth packet, but Gold requires a parent-built terminal-uniform bound in the
selected-critical currency:

\[
M_P^{ret}(0)
\le
C\,\mathcal V_P^{global}
+(d\Theta_P^0+dPaid_P+dStop_P)(X_P),
\tag{TFE2748B.610}
\]

or equivalently the strict aligned-current comparison `(TFE2748B.351)'.  Section
72 therefore closes the signed-measure attachment requested here and leaves the
same source wall already isolated in Section 71: zero-source aligned-current
rigidity / parent comparison from the original coupled packet, not another atom
pairing theorem.

## 73. Defect-measure form of the remaining source wall

The remaining wall can now be written without any bookkeeping ambiguity.  Assume
the critical capacity variation/storage line fails after Sections 71 and 72.
Then `(TFE2748B.596)'--`(TFE2748B.597)' give retained stopped packets
\(P_n\), entrances \(N_n\to\infty\), and positive aligned-current measures

\[
d\lambda_n:=dQ_{P_n,N_n}^{tail},
\qquad
d\sigma_n:=
2^{-N_n}D_{N_n}(t)\,dt+d\Theta_{P_n}^0+dPaid_{P_n}+dStop_{P_n},
\tag{TFE2748B.611}
\]

with

\[
\lambda_n(P_n)=1,
\qquad
\sigma_n(P_n)\to0.
\tag{TFE2748B.612}
\]

For every fixed \(R<\infty\), the low-ratio part is negligible:

\[
\lambda_n\!\left(
\left\{ {d\lambda_n\over d\sigma_n}\le R\right\}
\right)
\le R\,\sigma_n(P_n)\to0.
\tag{TFE2748B.613}
\]

Thus the failure is not a missing atom, not an unpaired pressure lobe, and not a
late dyadic recount.  It is a positive same-parent aligned-current measure whose
carrier density is escaping every finite Fisher/paid ratio.

Put the stopped packets into root-fixed parent coordinates and let \(K_m\) be
an exhaustion of the retained quotient by compact parent sets.  There are only
two possible failure modes:

\[
\lim_{m\to\infty}\limsup_{n\to\infty}\lambda_n(P_n\setminus K_m)>0,
\tag{TFE2748B.614}
\]

or else the measures are tight:

\[
\forall\varepsilon>0\ \exists m\quad
\limsup_{n\to\infty}\lambda_n(P_n\setminus K_m)<\varepsilon .
\tag{TFE2748B.615}
\]

The first alternative is not an analytic mystery inside the retained packet.  It
is exactly loss of retained parent thickness: aligned-current mass leaves the
root-fixed stopped quotient.  Such mass must be charged to route, collar,
frame, endpoint, legal, stop, or parent-reselection motion.  Therefore, after
those ledgers have genuinely been removed, a surviving bad branch must satisfy
the tight alternative `(TFE2748B.615)'.

Under `(TFE2748B.615)', Prokhorov/Radon compactness gives a subsequence
\(\lambda_n\rightharpoonup^\ast\lambda_\infty\) on the stopped parent quotient,
with

\[
\lambda_\infty(K)=1
\tag{TFE2748B.616}
\]

on the retained compact quotient.  Since \(\sigma_n(P_n)\to0\), every bounded
nonnegative parent test \(\psi\) satisfies

\[
\int \psi\,d\sigma_n\to0,
\tag{TFE2748B.617}
\]

while the high-ratio identity `(TFE2748B.613)' says that the whole unit mass of
\(\lambda_n\) lies on the singular quotient

\[
{d\lambda_n\over d\sigma_n}\to\infty .
\tag{TFE2748B.618}
\]

Thus a tight failure produces a nonzero zero-source aligned-current defect
measure

\[
d\lambda_\infty\ne0,
\qquad
dI_\infty+d\Theta_\infty^0+dPaid_\infty+dStop_\infty=0,
\tag{TFE2748B.619}
\]

whose mass is nevertheless the limit of the original coupled
pressure-viscosity-incompressibility-velocity shell current before clipping.

Consequently the negation of the storage theorem is now equivalent, inside the
normalized failure class, to producing precisely this defect:

\[
\boxed{
\begin{array}{c}
\texttt{RootFixedRetainedTightness.A `(TFE2748B.615)'}\\
+\texttt{ZeroSourceAlignedCurrentNoGhost.A `(TFE2748B.619)\Rightarrow
\lambda_\infty=0'}
\end{array}
\Longrightarrow
\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.351)'.}
}
\tag{TFE2748B.620}
\]

The implication is by contradiction: failure of `(TFE2748B.351)' gives
`(TFE2748B.611)'--`(TFE2748B.612)'; non-tight mass is paid by retained-quotient
loss, and tight mass gives the zero-source defect `(TFE2748B.619)', contradicting
`ZeroSourceAlignedCurrentNoGhost.A'.  Conversely, every normalized failure of
`(TFE2748B.351)' must enter exactly the non-tight branch `(TFE2748B.614)' or the
tight defect branch `(TFE2748B.619)'.

This is a real lowering of the Gold source wall.  The remaining original-data
work is not the signed atom decomposition and not a current representation.  It
is the coupled no-ghost statement: a unit positive aligned current cannot remain
after the same parent packet has zero Fisher carrier, zero paid motion, zero
route/collar/frame/legal/stop leakage, and no retained-quotient escape.  Any
future proof of the critical capacity variation/storage line must supply
retained-quotient tightness for normalized failures and the no-ghost implication
in `(TFE2748B.620)' from the original smooth data before child clipping.

## 74. Body-III relay insertion for the no-ghost defect

Section 73 leaves the compactness language too naked.  The repo already has the
right bookkeeping for this situation: failure of retained selected-carrier
tightness and failure of interior carrier identification are Body-III
compactness/no-loss relay defects, not invisible source terms.

In the normalized failure branch `(TFE2748B.611)'--`(TFE2748B.612)', regard
\(\lambda_n=dQ_{P_n,N_n}^{tail}\) as the nonnegative selected aligned-current
carrier measure on the normalized same-carrier packet space \(C\).  The
selected-carrier tightness note gives the exact defect

\[
K_{\rm tight}^{tail}
:=
\lim_{m\to\infty}\limsup_{n\to\infty}
\lambda_n(C\setminus C_m),
\tag{TFE2748B.621}
\]

and identifies it as Body-III positive relay mass:

\[
K_{\rm tight}^{tail}\le K_{C,tail}^{+}.
\tag{TFE2748B.622}
\]

This is precisely the non-tight branch `(TFE2748B.614)'.  Therefore retained
quotient escape is paid once the Body-III relay defect is included in the
same parent paid ledger.

On the tight branch, pass to
\(\lambda_n\rightharpoonup^\ast\lambda_\ast\).  Let
\(\lambda[U,\Pi]\) be the canonical aligned-current carrier computed from the
limiting velocity-pressure-viscosity-incompressibility packet with the same
stopped carrier, cutoff, shell entrance, and selector.  The canonical selected
carrier identification criterion gives

\[
\lambda_\ast(C)
\le
\lambda[U,\Pi](C)+K_{C,tail}^{int,+},
\tag{TFE2748B.623}
\]

where

\[
K_{C,tail}^{int,+}
:=(\lambda_\ast-\lambda[U,\Pi])^+(C)
\le K_C^+ .
\tag{TFE2748B.624}
\]

The sufficient density-identification input is the local \(L^1\) convergence of
the full coupled participation density:

\[
\sum_{P\in\mathcal S}
\|h_{n,P}^{tail}-h_P^{tail}[U,\Pi]\|_{L^1(K\times P)}
\to0 .
\tag{TFE2748B.625}
\]

Here \(h^{tail}\) is not a pressure-only or viscosity-only density.  It is the
same recombined pressure-viscosity-incompressibility-velocity shell-current
density from `(TFE2748B.577)'--`(TFE2748B.578)', after the selected
tail-aligned detector is pulled back into the parent packet before clipping.

Thus the normalized source measure in Section 73 should be read with the
Body-III relay defect included:

\[
d\sigma_n^{III}
:=
d\sigma_n+dK_{C,n}^{+},
\tag{TFE2748B.626}
\]

where \(d\sigma_n\) is `(TFE2748B.611)'.  If

\[
\sigma_n^{III}(P_n)\to0,
\tag{TFE2748B.627}
\]

then `(TFE2748B.622)' forces \(K_{\rm tight}^{tail}=0\), and `(TFE2748B.624)'
forces \(K_{C,tail}^{int,+}=0\).  The defect measure from Section 73 is then
canonical:

\[
\lambda_\infty=\lambda[U,\Pi].
\tag{TFE2748B.628}
\]

Consequently the only no-ghost theorem still needed is the canonical
lossless aligned-current rigidity:

\[
\boxed{
\begin{array}{c}
dI[U,\Pi]+d\Theta^0[U,\Pi]+dPaid[U,\Pi]+dStop[U,\Pi]=0,\\
dK_C^+[U,\Pi]=0
\end{array}
\Longrightarrow
\lambda[U,\Pi]=0 .
}
\tag{TFE2748B.629}
\]

Combining the Body-III relay insertion with Section 73 gives the sharper source
implication

\[
\boxed{
\begin{array}{c}
\texttt{BodyIIIRelayPaymentForTailAlignedCarrier.A `(TFE2748B.621)'--`(TFE2748B.628)'}\\
+\texttt{CanonicalLosslessAlignedCurrentRigidity.A `(TFE2748B.629)'}
\end{array}
\Longrightarrow
\texttt{ZeroSourceAlignedCurrentNoGhost.A}
\Longrightarrow
\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.351)'.}
}
\tag{TFE2748B.630}
\]

The first line is not a new bookkeeping invention; it is the Section-73
specialization of the installed Body-III selected-carrier tightness and
canonical-identification criteria.  It becomes an original-data theorem only
after the full coupled tail-aligned participation density is shown to satisfy
the Body-III no-loss relay hypotheses before clipping, or after every failure
of those hypotheses is charged as \(K_C^+\).  What remains as genuine
original-data content is now narrower: prove that relay production for this
tail-aligned carrier and prove the canonical zero-loss aligned-current rigidity
`(TFE2748B.629)'.

## 75. Canonical lossless aligned-current rigidity is discharged

Section 74 separates two different objects.  The raw weak limit
\(\lambda_\ast\) may contain a singular selected-carrier defect.  The canonical
carrier \(\lambda[U,\Pi]\) is different: it is the carrier computed from the
limiting coupled pressure-viscosity-incompressibility-velocity packet itself,
using the same retained tail detector before positive clipping.  Once the
Body-III relay has identified the weak limit with that canonical carrier, the
zero-loss rigidity is a density-level statement.

On the retained compact quotient define the canonical Fisher carrier by

\[
i[U,\Pi]
:=
\Phi''(F[U,\Pi])\,
\langle A[U,\Pi]\nabla_{\mathfrak m}F[U,\Pi],
\nabla_{\mathfrak m}F[U,\Pi]\rangle,
\qquad
dI[U,\Pi]=i[U,\Pi]\,d\mathfrak m .
\tag{TFE2748B.631}
\]

The canonical tail-aligned positive carrier is absolutely continuous with
respect to the same parent measure:

\[
d\lambda[U,\Pi]
=h^{tail}[U,\Pi]\,d\mathfrak m,
\qquad
h^{tail}[U,\Pi]
:=
\Bigl[
-\Phi''(F[U,\Pi])\,
\langle\nabla_{\mathfrak m}F[U,\Pi],
J_{\Psi}^{tail}[U,\Pi]\rangle
\Bigr]_+ .
\tag{TFE2748B.632}
\]

Here \(J_{\Psi}^{tail}[U,\Pi]\) is the same recombined Hodge-Stokes shell
current from `(TFE2748B.577)'--`(TFE2748B.578)', after the selected tail detector
has been pulled back into the parent packet.  The formula is not pressure-only:
all pressure, viscosity, incompressibility, self-advection, cutoff, Hodge, and
frame terms are present before the route/collar/paid/stop pieces are separated.

On the retained active quotient the metric is elliptic and the meter is inside
the nondegenerate convex range:

\[
\langle A[U,\Pi]\zeta,\zeta\rangle\ge c_K|\zeta|^2,
\qquad
\Phi''(F[U,\Pi])\ge c_\Phi>0 ,
\tag{TFE2748B.633}
\]

after the null-metric, collar, endpoint, legal, and stop pieces have been moved
to \(d\Theta^0+dPaid+dStop+dK_C^+\).  Therefore the lossless hypothesis in
`(TFE2748B.629)' gives, as nonnegative measures,

\[
dI[U,\Pi]=d\Theta^0[U,\Pi]=dPaid[U,\Pi]=dStop[U,\Pi]=0,
\qquad
dK_C^+[U,\Pi]=0.
\tag{TFE2748B.634}
\]

From `(TFE2748B.631)'--`(TFE2748B.633)' this forces

\[
\nabla_{\mathfrak m}F[U,\Pi]=0
\qquad
d\mathfrak m\text{-a.e. on the retained active quotient.}
\tag{TFE2748B.635}
\]

Substituting `(TFE2748B.635)' into the canonical density `(TFE2748B.632)' gives

\[
h^{tail}[U,\Pi]=0
\qquad d\mathfrak m\text{-a.e.},
\qquad
\lambda[U,\Pi]=0 .
\tag{TFE2748B.636}
\]

There is no remaining singular numerator in this canonical statement.  A
singular positive aligned-current remnant would mean that the weak selected
carrier was not represented by the canonical density `(TFE2748B.632)'.  By
Section 74 that mismatch is exactly the Body-III interior relay defect:

\[
(\lambda_\ast-\lambda[U,\Pi])^+(C)
=K_{C,tail}^{int,+}
\le K_C^+ .
\tag{TFE2748B.637}
\]

Thus \(dK_C^+=0\) removes the noncanonical singular remnant, and
`(TFE2748B.631)'--`(TFE2748B.636)' remove the canonical absolutely continuous
carrier.  This proves the canonical zero-loss aligned-current rigidity:

\[
\boxed{
\texttt{CanonicalLosslessAlignedCurrentRigidity.A `(TFE2748B.629)' is proved.}
}
\tag{TFE2748B.638}
\]

Consequently the no-ghost reduction becomes

\[
\boxed{
\texttt{BodyIIIRelayPaymentForTailAlignedCarrier.A `(TFE2748B.621)'--`(TFE2748B.628)'}
\Longrightarrow
\texttt{ZeroSourceAlignedCurrentNoGhost.A}
\Longrightarrow
\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.351)'.}
}
\tag{TFE2748B.639}
\]

After Section 75, the remaining original-data content is exactly the Body-III
relay production for the full coupled tail-aligned carrier before clipping:
prove the local \(L^1\) density identification `(TFE2748B.625)' on the retained
same-carrier packet, or charge every failure of carrier/cutoff/selector/rung,
pressure trace, product convergence, retained thickness, and frame custody as
\(K_C^+\).  The signed atom decomposition, coefficient/leakage control,
retained opposite-lobe depletion, and canonical zero-loss no-ghost rigidity are
now installed support results, not the active source wall.

## 76. Body-III relay production is finite-window no-loss plus high-tail residue

The phrase "Body-III relay production" still hides one category split.  The
installed Body-III criteria close fixed retained carriers and fixed finite rung
sets.  The live carrier in Section 74 is not fixed finite: it is the tail
aligned-current carrier with entrance \(N_n\to\infty\).  Therefore the next
source theorem must separate finite tail windows from the unbounded high-tail
passage.

For \(M<\infty\), define the finite tail-window carrier

\[
dQ_{P,N}^{tail,\le M}
:=
\sum_{N<k\le N+M}
2^{-k}T_k(t)
\left(
\mathsf{Scal}_{>k,P}^{HS}(\mathcal K_{>k,P}^{HS})(t)
\right)_+dt ,
\tag{TFE2748B.640}
\]

and the discarded high-window residue

\[
dQ_{P,N}^{tail,>M}
:=
dQ_{P,N}^{tail}-dQ_{P,N}^{tail,\le M}.
\tag{TFE2748B.641}
\]

On a retained compact same-carrier quotient, with the cutoff, selector, packet
labels, and the finite shifted rung set \(\{N+1,\ldots,N+M\}\) fixed, the
installed full Hodge-Stokes no-loss reductions give the density identification
for `(TFE2748B.640)'.  More explicitly, transport product loss is evacuated by
strong \(L^3\) compactness, the local pressure trace passes by the
Calderon-Zygmund pressure decomposition after transport convergence, the
viscous defect is either visible viscous payment or strong \(L^2\) gradient
convergence, and finite/compact selector graphs stabilize.  Thus for every
fixed \(M\),

\[
\sum_{P\in\mathcal S}
\|h_{n,P}^{tail,\le M}-h_P^{tail,\le M}[U,\Pi]\|_{L^1(K\times P)}
\longrightarrow0
\tag{TFE2748B.642}
\]

unless one of the already isolated residuals occurs:

\[
\mathcal R_{\rm sel}^{M}
+\mathcal R_{\rm sat}^{M}
+\mathcal R_{\rm jump}^{M}
+\mathcal R_{\rm legal}^{M}
+\mathcal R_{\rm geom}^{M}.
\tag{TFE2748B.643}
\]

Here \(\mathcal R_{\rm sel}^{M}\) is unbounded positive-part selector
complexity or carrier/collar drift; \(\mathcal R_{\rm sat}^{M}\) is the
terminal Zeno donor chain inherited from a missing signed partner;
\(\mathcal R_{\rm jump}^{M}\) is positive endpoint storage jump;
\(\mathcal R_{\rm legal}^{M}\) is non-summable or non-terminal-AC legal/collar
residue; and \(\mathcal R_{\rm geom}^{M}\) is domain/gauge/material-record or
tower-rung escape in the Body-IV sense.  These are not pressure-only,
viscosity-only, or scalar compactness defects.  They are failures of the same
full coupled packet to retain the finite shifted tail window before clipping.

Equivalently, the finite-window Body-III mismatch obeys

\[
K_{C,tail}^{int,+,\le M}
\le
C_M\Big(
\mathcal R_{\rm sel}^{M}
+\mathcal R_{\rm sat}^{M}
+\mathcal R_{\rm jump}^{M}
+\mathcal R_{\rm legal}^{M}
+\mathcal R_{\rm geom}^{M}
\Big),
\tag{TFE2748B.644}
\]

with visible viscous loss, route, collar, legal, and stop terms already inserted
in \(d\sigma_n\).  In the lossless finite-window branch the right side is zero,
so `(TFE2748B.625)' holds for \(h^{tail,\le M}\).

The unbounded tail passage is the remaining place where the critical capacity
variation can still hide.  Define the terminal high-tail residue of the
normalized failure sequence by

\[
K_{\rm hi-tail}^{+}
:=
\lim_{M\to\infty}\limsup_{n\to\infty}
Q_{P_n,N_n}^{tail,>M}(C).
\tag{TFE2748B.645}
\]

Then the full tail relay defect splits as

\[
K_{C,tail}^{int,+}
\le
\lim_{M\to\infty}K_{C,tail}^{int,+,\le M}
+K_{\rm hi-tail}^{+}.
\tag{TFE2748B.646}
\]

Combining `(TFE2748B.644)'--`(TFE2748B.646)' gives the exact lowered form of
the Body-III relay production:

\[
\boxed{
K_{C,tail}^{int,+}
\le
C\Big(
\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}
\Big)
+K_{\rm hi-tail}^{+}.
}
\tag{TFE2748B.647}
\]

Thus Body III has no remaining generic compactness or pressure-viscosity
producer on stabilized finite windows.  The remaining original-data source
content is the uniform tail-window theorem

\[
\boxed{
K_{\rm hi-tail}^{+}
+\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}
\le
d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt
}
\tag{TFE2748B.648}
\]

in the normalized retained parent packet, with the right side understood as the
same source measure from `(TFE2748B.611)'.  This is the noncircular form of the
remaining Gold \(L^1\) producer after Sections 72--75.  It says exactly what
must still be proved from arbitrary original smooth data: no selected
tail-aligned mass may survive by moving out through unbounded high-tail
windows, unbounded selector complexity, terminal Zeno signed-partner loss,
endpoint storage jump, nonsummable legal/collar trace, or material-record
escape without becoming visible in the same parent source measure before
clipping.

Consequently the source chain now reads

\[
\boxed{
\texttt{UniformTailRelayProduction.A `(TFE2748B.648)'}
\Longrightarrow
\texttt{BodyIIIRelayPaymentForTailAlignedCarrier.A}
\Longrightarrow
\texttt{ZeroSourceAlignedCurrentNoGhost.A}
\Longrightarrow
\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.351)'.}
}
\tag{TFE2748B.649}
\]

Section 76 therefore proves the finite-window Body-III no-loss part and
identifies the only remaining source theorem.  It does not prove
`(TFE2748B.648)'.  Proving `(TFE2748B.648)' is now the exact active form of the
critical capacity variation/storage line from arbitrary original smooth data.

## 77. High-tail residue is material-record/tower-rung escape

The signed-measure attachment requested above is already constructed in the
raw parent currency: Sections 29, 41, 59, and 72 give the pre-clipping
same-parent atom decomposition, coefficient/leakage control, and retained
opposite-lobe reserve depletion.  Section 76 leaves only the uniform tail
passage.  The term \(K_{\rm hi-tail}^+\) is therefore not another atomic
decomposition problem; it is the possibility that the selected tail mass keeps
leaving every finite shifted-rung record.

Let the shifted tail coordinate be

\[
\kappa:=k-N .
\tag{TFE2748B.650}
\]

For the normalized failure sequence, define the tower-rung escape measure

\[
\mathcal R_{\rm rung}^{tail}
:=
\lim_{M\to\infty}\limsup_{n\to\infty}
Q_{P_n,N_n}^{tail}\bigl(\{\kappa>M\}\cap C\bigr).
\tag{TFE2748B.651}
\]

By `(TFE2748B.641)' and `(TFE2748B.645)',

\[
K_{\rm hi-tail}^+
=
\mathcal R_{\rm rung}^{tail}.
\tag{TFE2748B.652}
\]

Now suppose the same normalized branch retains the stopped parent frame,
selector/collar labels, and material coefficient tower uniformly on the
retained packet.  Then the selected-carrier tightness criterion applies:
tightness is paid by controlled domain/gauge spill, finite label custody,
summable tower-rung tail, and same-carrier uniform integrability; failure of
tightness is recorded as a Body-III relay defect.  In particular a retained
branch with finite/summable tower-rung tail has

\[
\lim_{M\to\infty}\limsup_{n\to\infty}
Q_{P_n,N_n}^{tail}\bigl(\{\kappa>M\}\cap C\bigr)=0 .
\tag{TFE2748B.653}
\]

Therefore a positive \(K_{\rm hi-tail}^+\) forces loss of the same material
record at unbounded shifted rung.  In the Body-IV language this is exactly the
geometry/tower defect tail

\[
dK_{\rm ell}^+
+dK_{\rm coef}^+
+dK_{\rm comm}^+
+dK_{\rm transport}^+
+dK_G^+,
\tag{TFE2748B.654}
\]

or equivalently failure of the uniform heat-scale material
strain-metric/coefficient/tower record.  Define the enlarged geometric tail
residue

\[
\mathcal R_{\rm geom}^{tail}
:=
\mathcal R_{\rm geom}
+\mathcal R_{\rm rung}^{tail}.
\tag{TFE2748B.655}
\]

Then `(TFE2748B.647)' sharpens to

\[
\boxed{
K_{C,tail}^{int,+}
\le
C\Big(
\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}
\Big).
}
\tag{TFE2748B.656}
\]

This proves that the high-tail term is not an independent source outside the
same coupled packet.  It is the unbounded-rung/material-record escape component
of the full relay defect.

The active original-data theorem is consequently the tail material-record
payment line

\[
\boxed{
\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}
\le
d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt .
}
\tag{TFE2748B.657}
\]

Equivalently,

\[
\boxed{
\texttt{UniformTailRelayProduction.A}
\equiv
\texttt{TailMaterialRecordPayment.A `(TFE2748B.657)'}
}
\tag{TFE2748B.658}
\]

for the purposes of the Gold \(L^1\) source chain.  Proving
`(TFE2748B.657)' from arbitrary original smooth data would supply
`(TFE2748B.648)', hence Body-III relay payment, zero-source aligned-current
no-ghost, and the parent-comparison surplus.  The present section proves only
the classification: any surviving high-tail positive mass is a same-parent
material-record/tower-rung escape, not a new pressure-only, viscosity-only, or
post-clipping atomization burden.

## 78. Signed atoms are constructed; Gold asks for their selected root size

The requested atomic decomposition is a closed pre-clipping parent theorem.  It
should not be reopened as the Gold source wall.  Fix one stopped preterminal
parent packet \(X_P\), and let \(dJ_P\) be the selected pressure-Hodge/material
residue after the selected detector has already been pulled back to the parent
adjoint and after route, collar, legal, stop, endpoint, and paid detector-motion
terms have been separated.  Then arbitrary original smooth data gives a finite
signed Radon measure

\[
dJ_P=dJ_P^0+dR_P,\qquad
dJ_P^0(X_P)=0,\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.659}
\]

The zero-mass retained part has Jordan decomposition

\[
dJ_P^0=dJ_P^+-dJ_P^-,
\qquad
dJ_P^+(X_P)=dJ_P^-(X_P)=:m_P .
\tag{TFE2748B.660}
\]

Choose a coupling \(\pi_P\) of \(dJ_P^+\) and \(dJ_P^-\).  For example, if
\(m_P>0\) take

\[
\pi_P={dJ_P^+\otimes dJ_P^-\over m_P},
\qquad
\pi_P=0\quad(m_P=0).
\tag{TFE2748B.661}
\]

Then for every bounded parent test \(\varphi\),

\[
\int_{X_P}\varphi\,dJ_P^0
=
\int_{X_P\times X_P}
\bigl(\varphi(x)-\varphi(y)\bigr)\,d\pi_P(x,y),
\tag{TFE2748B.662}
\]

or, as a same-parent atomic measure,

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)
=m_P={1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.663}
\]

Equivalently, in countable simple-measure approximation,

\[
dJ_P
=
\sum_\alpha c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int_{X_P}d\mu_\alpha=0,
\qquad
\sum_\alpha |c_\alpha|
\le {1\over2}|dJ_P^0|(X_P),
\tag{TFE2748B.664}
\]

with the continuum meaning supplied by `(TFE2748B.663)'.  Thus coefficient mass
is controlled by the total variation of the pre-clipping retained residue, and
all unpaired leakage is already in \(d\Theta_P^0+dPaid_P+dStop_P\).

The retained opposite lobe is also a bounded-below parent reserve depletion.
Let \(s(y)\) be the stopped parent-time coordinate of the negative endpoint of
an atom and define

\[
M_P^{atom}(\tau)
:=
m_P-\pi_P\bigl(\{(x,y):s(y)<\tau\}\bigr).
\tag{TFE2748B.665}
\]

Then

\[
0\le M_P^{atom}(\tau)\le m_P,
\qquad
-dM_P^{atom}
=
(\mathrm{pr}_2)_\#d\pi_P
=:dJ_P^{ret,-}
\tag{TFE2748B.666}
\]

as Stieltjes measures on the retained atom ledger.  Therefore

\[
(dJ_P)_+
\preceq_{atom}
-dM_P^{atom}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.667}
\]

Equations `(TFE2748B.659)'--`(TFE2748B.667)' are the promised construction from
arbitrary original smooth data before clipping: zero-mean same-parent atoms,
coefficient control, paid leakage, and bounded-below retained opposite-lobe
depletion.

The remaining Gold theorem is strictly stronger and has a different logical
type.  It asks for the selected-critical root size of the already constructed
atom ledger, uniformly up to the terminal edge.  With the selected-critical
weight announced in the parent frame before clipping, write

\[
\mathfrak M_P^{crit}
:=
\int_{X_P\times X_P} W_P^{crit}(x,y)\,d\pi_P(x,y),
\tag{TFE2748B.668}
\]

where \(W_P^{crit}\) is the critical detector/meter weight already pulled back
to the stopped parent atom ledger.  The needed root-size/payment estimate is

\[
\mathfrak M_P^{crit}
+\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}
\le
d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt
\tag{TFE2748B.669}
\]

in the retained quotient, after the terms already represented by the atom
ledger are identified with \(\mathfrak M_P^{crit}\).  In the storage notation
this is the selected-critical upgrade

\[
dJ_P^{ret,-}
\le
-dM_P^{crit}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
M_P^{crit}\ge -C_N(u_0),
\tag{TFE2748B.670}
\]

with \(M_P^{crit}\) built from the original same parent packet rather than from
the future selected tail.  Thus the active source wall after Section 78 is not
atomic decomposition, coefficient control, or lobe pairing.  It is the
root-uniform selected-critical size/payment of that already paired reserve,
equivalently the strict aligned-current/no-free-upward-transfer estimate
identified in Sections 65--77.

## 79. The selected root-size wall is atom-weight uniform integrability

Section 78 leaves one object, and it is exact.  Let

\[
d\Pi_P:=d\pi_P
\tag{TFE2748B.671}
\]

be the positive measure on the same-parent atom ledger, and let
\(W_P^{crit}\ge0\) be the selected-critical meter already pulled back to that
ledger before child clipping.  The selected root size is

\[
\mathfrak M_P^{crit}
=
\int W_P^{crit}\,d\Pi_P .
\tag{TFE2748B.672}
\]

The exact continuum counting formula is the layer-cake identity

\[
\mathfrak M_P^{crit}
=
\int_0^\infty
\Pi_P\bigl(\{W_P^{crit}>\lambda\}\bigr)\,d\lambda .
\tag{TFE2748B.673}
\]

This is the parent-scale integral.  Dyadic shells may approximate
`(TFE2748B.673)', but they are not the physical object and cannot be counted as
new child units.  The ontology is one atom ledger with a continuum of selected
prices.

For \(L>0\), split

\[
\mathfrak M_P^{crit}
=
\int_{\{W_P^{crit}\le L\}}W_P^{crit}\,d\Pi_P
+
\int_{\{W_P^{crit}>L\}}W_P^{crit}\,d\Pi_P .
\tag{TFE2748B.674}
\]

The first part is finite-price raw atom material:

\[
\int_{\{W_P^{crit}\le L\}}W_P^{crit}\,d\Pi_P
\le
L\,\Pi_P(X_P\times X_P)
=
L\,m_P .
\tag{TFE2748B.675}
\]

Thus the finite-price part uses only the raw atom reserve of Section 78.  The
Gold issue is the high-price tail.  A parent-announced de la
Vallee-Poussin/Orlicz reserve for the selected meter is any superlinear
increasing function \(\Psi\), with \(\Psi(r)/r\to\infty\), such that locally on
stopped parent subpackets

\[
\int \Psi(W_P^{crit})\,d\Pi_P
\le
C_N(u_0)\mathcal R(P)
+\theta\,\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\theta<1 .
\tag{TFE2748B.676}
\]

If \(\Psi(r)/r\) is nondecreasing for large \(r\), then for \(r>L\)

\[
r\le {L\over \Psi(L)}\Psi(r),
\tag{TFE2748B.677}
\]

and hence

\[
\int_{\{W_P^{crit}>L\}}W_P^{crit}\,d\Pi_P
\le
{L\over\Psi(L)}
\int \Psi(W_P^{crit})\,d\Pi_P .
\tag{TFE2748B.678}
\]

Equations `(TFE2748B.674)'--`(TFE2748B.678)' are the exact selected-root-size
mechanism: raw atom reserve pays every bounded-price readout, while a
superlinear parent Orlicz reserve kills the high-price tail.  In the local
stopped form, `(TFE2748B.676)' is equivalent to the finite active entropy /
selected log-amplification source package already isolated in Sections 34,
39, 41, and 66.

Therefore the selected-critical upgrade `(TFE2748B.669)' follows from the
atom-ledger uniform-integrability theorem

\[
\boxed{
\texttt{AtomLedgerSelectedCriticalUniformIntegrability.A `(TFE2748B.676)'.}
}
\tag{TFE2748B.679}
\]

Conversely, after the finite-price raw atom reserve and all paid leakage are
removed, failure of `(TFE2748B.669)' has only one normalized form.  There are
stopped parent packets \(P_n\) such that

\[
\int W_{P_n}^{crit}\,d\Pi_{P_n}=1,
\tag{TFE2748B.680}
\]

while the right side of `(TFE2748B.669)' tends to zero.  For every fixed
\(L<\infty\), the bounded-price part is then paid or vanishes:

\[
\int_{\{W_{P_n}^{crit}\le L\}}W_{P_n}^{crit}\,d\Pi_{P_n}
\longrightarrow0 .
\tag{TFE2748B.681}
\]

Hence the whole selected mass escapes to infinite critical price:

\[
\lim_{L\to\infty}\liminf_{n\to\infty}
\int_{\{W_{P_n}^{crit}>L\}}W_{P_n}^{crit}\,d\Pi_{P_n}
=1 .
\tag{TFE2748B.682}
\]

Equivalently, the family \(W_{P_n}^{crit}\,d\Pi_{P_n}\) is not uniformly
integrable with respect to the already constructed parent atom ledger.  By the
de la Vallee-Poussin criterion, `(TFE2748B.682)' is exactly the failure of every
superlinear parent Orlicz estimate of the form `(TFE2748B.676)'.

This is the sharpened physical meaning of the remaining wall.  The bad branch
is not an unpaired pressure atom, not a new child event, and not a dyadic
counting artifact.  It is one same-parent signed atom ledger whose selected
critical price \(W_P^{crit}\) can become arbitrarily large on smaller and
smaller retained pieces without a parent-announced entropy/log-amplification
reserve charging that price before clipping.

Thus the active arbitrary-data source theorem has now been localized to the
production of `(TFE2748B.676)' from the original coupled
pressure-viscosity-incompressibility-velocity packet.  In the language of
Sections 35--36 this is entropy-weighted current domination; in Sections
39--40 it is positive logarithmic selected-meter motion dominated by past-built
critical storage and Fisher dissipation; in Sections 65--66 it is the
selected-amplification/current Carleson producer.  These are equivalent faces
of the same parent Orlicz uniform-integrability law on the atom ledger, not
separate reservoirs.

## 80. The Orlicz producer is local atom domination plus log-meter BMO

Section 79 identifies the exact selected atom-ledger estimate.  The next
question is what original-data theorem can produce `(TFE2748B.676)' without
defining \(W_P^{crit}\) by the future selected tail.

Let \(d\mathfrak m_P\) be the parent active measure of the stopped packet, with
the critical meter already included before clipping.  The atom-ledger Orlicz
bound follows from two parent-side clauses.

First, the same-parent atom ledger must be locally dominated by the parent
active measure:

\[
\Pi_P(E)
\le
C_N\,\mathfrak m_P(E^\ast)
+d\Theta_P^0(E^\ast)+dPaid_P(E^\ast)+dStop_P(E^\ast)
\tag{TFE2748B.683}
\]

for every stopped parent atom union \(E\).  Here \(E^\ast\) is the fixed
finite-overlap parent envelope of the atom support, not a child-renormalized
descendant tree.  This is the continuous version of the level-reserve clause
`(TFE2748B.215)'.

Second, the log meter

\[
b_P:=\log W_P^{crit}
\tag{TFE2748B.684}
\]

must have stopped parent BMO/log-amplification control:

\[
\sup_{P'\subseteq P}
{1\over \mathfrak m_P(P')}
\sum_{Q\subseteq P'}
\bigl(\|\Delta_Q b_P\|_{\mathfrak H_P}^2+|e_Q|^2\bigr)
\mathfrak m_P(Q)
\le
C_N(u_0)
+{d\Theta_P^0+dPaid_P+dStop_P\over \mathfrak m_P(P')}.
\tag{TFE2748B.685}
\]

Equivalently, using the stopped carrier notation of `(TFE2748B.54)' and
`(TFE2748B.551)', the log meter must be represented before clipping as

\[
b_Q-b_{\operatorname{par}(Q)}
=
\ell_Q(\Delta_QZ_P^S)-\psi_Q+e_Q,
\tag{TFE2748B.686}
\]

with the square function and errors controlled by `(TFE2748B.685)'.

The deterministic implication is standard but important.  From
`(TFE2748B.685)' the stopped John--Nirenberg/Kazamaki estimate gives, after bad
fibres are charged to \(d\Theta_P^0+dPaid_P+dStop_P\), an exponent
\(\varepsilon_N>0\) such that

\[
\int_{P'} (W_P^{crit})^{1+\varepsilon_N}\,d\mathfrak m_P
\le
C_N
\left({1\over \mathfrak m_P(P')}
\int_{P'}W_P^{crit}\,d\mathfrak m_P\right)^{1+\varepsilon_N}
\mathfrak m_P(P')
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.687}
\]

Together with the parent level reserve

\[
\int_{P'}W_P^{crit}\,d\mathfrak m_P
\le
C_N(u_0)\mathcal R(P')
+\theta\,\Omega_P^{gen}(P')
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\theta<1,
\tag{TFE2748B.688}
\]

this gives a superlinear parent Orlicz bound on \(W_P^{crit}\) with respect to
\(d\mathfrak m_P\).  For instance, with
\(\Psi(r)=r^{1+\varepsilon_N}\) on the stopped good fibres,

\[
\int\Psi(W_P^{crit})\,d\mathfrak m_P
\le
C_N(u_0)\mathcal R(P)
+\theta\,\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.689}
\]

Using the domination `(TFE2748B.683)' and finite overlap of \(E^\ast\), layer
cake transfers `(TFE2748B.689)' from the parent measure to the atom ledger:

\[
\int\Psi(W_P^{crit})\,d\Pi_P
\le
C_N(u_0)\mathcal R(P)
+\theta\,\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.690}
\]

This is `(TFE2748B.676)'.  Therefore

\[
\boxed{
\begin{array}{c}
\text{local atom-ledger domination `(TFE2748B.683)'}\\
+\text{parent log-meter BMO/log-amplification `(TFE2748B.685)'--`(TFE2748B.686)'}\\
+\text{parent level reserve `(TFE2748B.688)'}
\end{array}
\Longrightarrow
\texttt{AtomLedgerSelectedCriticalUniformIntegrability.A `(TFE2748B.676)'.}
}
\tag{TFE2748B.691}
\]

The converse failure test is equally sharp.  If `(TFE2748B.676)' fails after
Section 79 normalizes the selected atom mass, then at least one of the three
parent-side clauses above fails on a retained stopped subpacket:

\[
\neg(TFE2748B.676)
\Longrightarrow
\neg(TFE2748B.683)
\quad\text{or}\quad
\neg(TFE2748B.685)
\quad\text{or}\quad
\neg(TFE2748B.688),
\tag{TFE2748B.692}
\]

after paid legal, stop, endpoint, collar, route, selector, and reselection
fibres are removed.  Thus the remaining bad branch has a precise form: a
unit selected critical price on already paired atoms can survive only by
escaping parent active-measure domination, by forcing unbounded stopped
log-amplification/BMO of the parent meter, or by defeating the parent level
reserve.

This reconciles Section 79 with the older BMO and selected-record surfaces.
The Hodge/BMO transform, John--Nirenberg, reverse Holder, and layer-cake steps
are deterministic consumers after `(TFE2748B.683)', `(TFE2748B.685)', and
`(TFE2748B.688)' are supplied.  The live PDE producer is therefore the
construction of \(Z_P^S\), \(b_P=\log W_P^{crit}\), and the level reserve from
the original coupled pressure-viscosity-incompressibility-velocity packet
before positive clipping.

## 81. Local atom-ledger domination is closed by parent-envelope choice

The first clause in Section 80 is not an independent analytic wall once the atom
ledger has been constructed before clipping.  Define the parent atom-envelope
measure by

\[
d\mathfrak a_P
:=
(\mathrm{pr}_1)_\#d\Pi_P
+
(\mathrm{pr}_2)_\#d\Pi_P
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.693}
\]

This measure is built from the same pre-clipping parent atom coupling
\(\Pi_P=\pi_P\) of Section 78 and the paid ledgers.  It is not a descendant
selected tail.  For every stopped parent atom union \(E\),

\[
\Pi_P(E)
\le
\mathfrak a_P(E^\ast),
\tag{TFE2748B.694}
\]

where \(E^\ast\) is the union of the two parent projections of \(E\), enlarged
by the fixed stopping collar.  Thus `(TFE2748B.683)' is closed after replacing
\(d\mathfrak m_P\) by the atom-envelope part of the parent active measure:

\[
d\mathfrak m_P
:=
d\mathfrak a_P+d\mathfrak m_P^{gen},
\tag{TFE2748B.695}
\]

with \(d\mathfrak m_P^{gen}\) reserved for generator/Fisher/full-exchange
material already present in the parent packet.

This closure is only a measure-custody closure.  It does not prove the
selected-critical \(L^1\) line, because the level reserve becomes

\[
\int W_P^{crit}\,d\mathfrak a_P
\simeq
\int W_P^{crit}\,d\Pi_P
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.696}
\]

which is exactly the selected atom-ledger bill unless it is paid by a separate
parent storage or strict generator margin.  Therefore the noncircular source
after Section 81 is no longer local domination of the atom ledger.  The
remaining source clauses are

\[
\boxed{
\begin{array}{c}
\text{construct \(b_P=\log W_P^{crit}\) from the original coupled packet and
prove stopped BMO/log-amplification,}\\
\text{prove the parent level reserve for
\(\int W_P^{crit}\,d\mathfrak a_P\) with strict \(C_N\theta<1\).}
\end{array}}
\tag{TFE2748B.697}
\]

Equivalently, the active Gold source has collapsed from the three clauses in
`(TFE2748B.691)' to the two true original-data clauses

\[
\boxed{
\texttt{ParentLogMeterBMO.A}
+
\texttt{ParentAtomLevelReserve.A}
\Longrightarrow
\texttt{AtomLedgerSelectedCriticalUniformIntegrability.A.}
}
\tag{TFE2748B.698}
\]

Here `ParentAtomLevelReserve.A' is the full positive critical transfer /
bounded-below same-material storage statement in the atom-ledger coordinate.
It must be proved from the original pressure-viscosity-incompressibility-
velocity packet; defining it as the future integral of
\(W_P^{crit}\,d\Pi_P\) is the circular descendant-tail storage rejected above.

## 82. Consolidated proof of the pre-clipping signed atom construction

The requested signed atom construction is not a remaining Gold source.  It is
the raw parent-level theorem already proved in Sections 29, 37, 41, 51, 72, and
78.  This section records the construction in the current edge notation so that
the live wall cannot drift back to atom attachment.

Fix a stopped compact preterminal parent packet \(P\) and work in its material
chart.  Pull the pressure-Hodge/material residue into the parent chart before
taking a positive part.  If a selected detector has already been pulled into the
parent adjoint, this same argument gives the signed pre-clipping attachment; the
uniform selected-critical size of that detector is not included in the raw
coefficient estimate below.  Separate route, collar, metric, Hodge-commutator,
detector-motion, legal, stop, and endpoint leakage into \(dR_P\).  The retained
raw pre-clipping residue has the form

\[
dJ_P=dJ_P^0+dR_P,
\qquad
\int_{X_P}dJ_P^0=0,
\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.699}
\]

The zero-mass clause is the parent-frame version of pressure as a constraint
force: after the already paid boundary and frame terms are removed, the
pressure-Hodge part redistributes the same parent packet and carries no
standalone positive mass.

For the actual smooth Navier--Stokes pressure source, in the stopped chart one
may write the retained density as

\[
F_P(t,a)\,da
:=
\chi_P(a)\mathcal T_P
\bigl(\partial_i u_j\,\partial_j u_i\bigr)(t,a)\,da
-
\bigl\langle
\chi_P\mathcal T_P
\bigl(\partial_i u_j\,\partial_j u_i\bigr)
\bigr\rangle_{X_P}\,da ,
\tag{TFE2748B.700}
\]

with all terms produced by \(\nabla\chi_P\), metric motion, stopping, collar
motion, and selected-adjoint motion placed in \(dR_P\).  The div-curl Hardy
estimate gives

\[
\|F_P(t)\|_{\mathcal H^1(X_P)}
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t).
\tag{TFE2748B.701}
\]

Hence the local Hardy atomic decomposition in the stopped parent chart gives
same-parent atoms \(a_{\alpha,t}\) and coefficients \(c_\alpha(t)\) such that

\[
F_P(t,a)\,da
=
\sum_\alpha c_\alpha(t)a_{\alpha,t}(a)\,da,
\qquad
\int_{X_P}a_{\alpha,t}(a)\,da=0,
\tag{TFE2748B.702}
\]

and

\[
\sum_\alpha |c_\alpha(t)|
+ |(dR_P)_+|(t)
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t).
\tag{TFE2748B.703}
\]

Integrating in time and using the Leray energy inequality gives the raw
coefficient/leakage control

\[
\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau |(dR_P)_+|(t)
\le
C_N{\|u_0\|_2^2\over \nu}
+Paid_P+Legal_P+Stop_P,
\qquad \tau<T_* .
\tag{TFE2748B.704}
\]

Equivalently, after simple-measure approximation of the atom ledger, the
pre-clipping residue is

\[
dJ_P
=
\sum_\alpha c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int_{X_P}d\mu_\alpha=0,
\tag{TFE2748B.705}
\]

with coefficients and leakage controlled by `(TFE2748B.703)'--`(TFE2748B.704)'.
The continuum transport-plan version is obtained by taking the Jordan split of
\(dJ_P^0\),

\[
dJ_P^0=dJ_P^+-dJ_P^-,
\qquad
dJ_P^+(X_P)=dJ_P^-(X_P)=m_P,
\tag{TFE2748B.706}
\]

and choosing a same-parent coupling \(\pi_P\) of \(dJ_P^+\) to \(dJ_P^-\):

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)=m_P={1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.707}
\]

Both `(TFE2748B.705)' and `(TFE2748B.707)' are pre-clipping parent
decompositions.  No child positive part, selected future tail, or descendant
renormalized unit is used to choose the atoms.

For each signed atom

\[
\nu_\alpha:=c_\alpha\,d\mu_\alpha
=\nu_\alpha^+-\nu_\alpha^-,
\tag{TFE2748B.708}
\]

the zero mean gives equal lobe mass in the same stopped parent packet:

\[
\nu_\alpha^+(X_P)=\nu_\alpha^-(X_P).
\tag{TFE2748B.709}
\]

Thus the positive lobe is attached to its opposite retained lobe on the atom
ledger:

\[
(dJ_P)_+
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=\sum_\alpha \nu_\alpha^- .
\tag{TFE2748B.710}
\]

The comparison \(\preceq_{atom}\) is a paired same-parent comparison, not a
pointwise domination between two unrelated spatial locations.

Now define the raw retained-lobe reserve by

\[
M_P^{raw}(\tau)
:=
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P
-dJ_P^{ret,-}\bigl([0,\tau]\times X_P\bigr).
\tag{TFE2748B.711}
\]

By `(TFE2748B.704)',

\[
M_P^{raw}(\tau)\ge0,
\qquad
-dM_P^{raw}=dJ_P^{ret,-}
\quad\text{on retained parent atoms.}
\tag{TFE2748B.712}
\]

Therefore arbitrary original smooth data supplies, before clipping, the
same-parent signed atomic decomposition, coefficient/leakage control, and a
bounded-below parent reserve whose depletion is exactly the retained opposite
lobe:

\[
\boxed{
\texttt{SignedPressureHodgeAtomicAttachment.A}
\text{ is closed at the raw parent level by `(TFE2748B.699)'--`(TFE2748B.712)'.}
}
\tag{TFE2748B.713}
\]

This closes the exact burden requested here.  The remaining Gold source is the
selected-critical upgrade, because the root-size required for
\(\int W_P^{crit}\,d\Pi_P\) is stronger than the raw reserve
`(TFE2748B.711)'.  That upgrade is precisely
`ParentLogMeterBMO.A + ParentAtomLevelReserve.A' from `(TFE2748B.697)'--`(TFE2748B.698)',
or equivalently the parent Orlicz uniform-integrability line
`(TFE2748B.676)'.

## 83. The log-meter BMO and level reserve are one coupled storage

Section 81 left two named clauses.  They should not be read as two physical
suppliers.  The level term is the mean price of the selected critical meter on
the same atom ledger, and the BMO term is the oscillation price of that same
meter between paired lobes.  Both must be paid by one parent full-exchange
reserve before clipping.

For every stopped subpacket \(P'\subseteq P\), define the coupled
mean-plus-oscillation bill

\[
\mathcal S_P^{crit}(P')
:=
\int_{P'} W_P^{crit}\,d\mathfrak m_P
+
\gamma_N
\sum_{Q\subseteq P'}
\bigl(\|\Delta_Q b_P\|_{\mathfrak H_P}^2+|e_Q|^2\bigr)
\mathfrak m_P(Q),
\qquad
b_P:=\log W_P^{crit},
\tag{TFE2748B.714}
\]

where \(d\mathfrak m_P=d\mathfrak a_P+d\mathfrak m_P^{gen}\) is the
parent active measure of `(TFE2748B.695)'.  The coefficient \(\gamma_N>0\) is
fixed small enough that the BMO square bill is measured in the same generator
currency as the level bill.

The nonduplicate source theorem is the local same-parent storage inequality

\[
\boxed{
\mathcal S_P^{crit}(P')
\le
-\Delta_{P'}M_P^{FE,crit}
+C_N(u_0)\mathcal R(P')
+\vartheta\,\Omega_P^{gen}(P')
+d\Theta_P^0(P')
+dPaid_P(P')
+dStop_P(P'),
\qquad
C_N\vartheta<1,
}
\tag{TFE2748B.715}
\]

with one bounded-below parent reserve

\[
M_P^{FE,crit}\ge -C_N(u_0)\mathcal R(P)-Paid(P)-Stop(P).
\tag{TFE2748B.716}
\]

The same stopped full-exchange parent measure also carries the root thickness
needed by the BMO average:

\[
\mathcal R(P')
\le
C_N\mathfrak m_P(P')+dPaid_P(P')+dStop_P(P').
\tag{TFE2748B.716a}
\]

Equations `(TFE2748B.715)'--`(TFE2748B.716a)' are the atom-ledger projection of
the full-exchange critical-depletion storage theorem \(TFE2426\).  The first
summand in `(TFE2748B.714)' is the parent level reserve; the second summand is
the stopped log-meter square-variation/BMO reserve.  They are two readouts of
the same pressure-viscosity-incompressibility-velocity participation packet,
not separate accounts.

The implication back to Section 80 is immediate after the bounded storage drop
in `(TFE2748B.716)' is absorbed into the local \(C_N(u_0)\mathcal R(P')\) and
paid terms.  Dropping the nonnegative BMO summand in `(TFE2748B.714)' gives

\[
\int_{P'} W_P^{crit}\,d\mathfrak m_P
\le
C_N(u_0)\mathcal R(P')
+\vartheta\,\Omega_P^{gen}(P')
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.717}
\]

which is `(TFE2748B.688)' with \(\theta=\vartheta\).  Dropping the nonnegative
level summand gives the stopped square-function estimate

\[
\sum_{Q\subseteq P'}
\bigl(\|\Delta_Q b_P\|_{\mathfrak H_P}^2+|e_Q|^2\bigr)
\mathfrak m_P(Q)
\le
C_N(u_0)\mathfrak m_P(P')
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.718}
\]

after `(TFE2748B.716a)' and the same bounded-storage absorption are inserted.
Dividing by \(\mathfrak m_P(P')\) gives `(TFE2748B.685)'.  Thus the thickness
needed for the BMO average is not a separate hidden assumption; it is part of
the same full-exchange active measure construction.  Therefore

\[
\boxed{
\texttt{FullExchangeCriticalDepletionStorage.A in the local form `(TFE2748B.715)'}
\Longrightarrow
\texttt{ParentLogMeterBMO.A}+\texttt{ParentAtomLevelReserve.A}.
}
\tag{TFE2748B.719}
\]

Combining `(TFE2748B.719)' with Sections 80--81 gives

\[
\boxed{
\texttt{FullExchangeCriticalDepletionStorage.A `(TFE2748B.715)'}
\Longrightarrow
\texttt{AtomLedgerSelectedCriticalUniformIntegrability.A `(TFE2748B.676)'}.
}
\tag{TFE2748B.720}
\]

This is the exact downstream consumption chain from the single coupled storage
line to terminal-uniform selected \(L^1\).  What remains unproved from
arbitrary original smooth data is not a separate Hilbert/BMO theorem.  It is
the construction of the one before-clipping full-exchange critical reserve
\(M_P^{FE,crit}\) and proof of `(TFE2748B.715)' with strict
\(C_N\vartheta<1\).  Equivalently, the parent packet must prove that the mean
selected price and the oscillation of that price both spend the same original
full-exchange reserve, rather than one being generated as a later child
readout.

## 84. Retained heat-lag loop contraction discharges the parabolic part

The strict storage line `(TFE2748B.715)' has one part that can be proved once
the retained quotient has real heat-time thickness.  It is the retained
heat-lag loop: material that has already left the zero-lag trace/source edge and
is being read after a positive Stokes time.

Split the coupled selected-critical bill of `(TFE2748B.714)' in the stopped
parent packet as

\[
d\mathcal S_P^{crit}
=
d\mathcal S_P^{early}
+d\mathcal S_P^{ret}
+d\mathcal S_P^{paid},
\tag{TFE2748B.721}
\]

where \(d\mathcal S_P^{early}\) contains sub-heat-lag trace/source material,
zero-baseline first entry, positive-baseline log entry, and endpoint/collar
material still at the pressure-compatible edge; \(d\mathcal S_P^{ret}\) is the
same parent generator read after positive heat-lag; and
\(d\mathcal S_P^{paid}\le d\Theta_P^0+dPaid_P+dStop_P\).

On a retained fibre \(Q\), the before-clipping readout has the schematic
parent form

\[
G_Q^{ret}
=
\Pi_Q e^{\nu\tau_Q\Delta_P}\Gamma_QG_P^{root}
+G_Q^{paid},
\tag{TFE2748B.722}
\]

where \(G_P^{root}\) is the original parent generator, \(\Gamma_Q\) is the
stopped parent localization/transport into the retained fibre, \(\Pi_Q\) is the
selected detector/readout, and all frame, collar, Hodge-commutator,
reselection, legal, and stop defects are in \(G_Q^{paid}\).  The detector is
bounded on the retained quotient:

\[
\|\Pi_Q h\|^2\le C_{\Pi,N}^2\|h\|^2,
\tag{TFE2748B.723}
\]

after the endpoint and low-high zero-lag detector branches have been removed
into \(d\mathcal S_P^{early}\).  The retained quotient has heat thickness

\[
\nu\tau_Q|\xi_Q|^2\ge L_N
\tag{TFE2748B.724}
\]

on the active frequency of the fibre.  Equivalently, the retained Stokes
component has the parabolic Poincare contraction

\[
\|e^{\nu\tau_Q\Delta_P}\Gamma_Q h\|^2
\le
e^{-2c_P L_N}\|\Gamma_Q h\|^2 .
\tag{TFE2748B.725}
\]

Combining `(TFE2748B.722)'--`(TFE2748B.725)' with stopped finite overlap gives

\[
d\mathcal S_P^{ret}(P')
\le
C_N C_{\Pi,N}^2 e^{-2c_PL_N}\,d\Omega_P^{gen}(P')
+d\Theta_P^0(P')+dPaid_P(P')+dStop_P(P').
\tag{TFE2748B.726}
\]

Choose \(L_N\) so that

\[
C_N C_{\Pi,N}^2 e^{-2c_PL_N}\le {\vartheta\over2},
\qquad
C_N\vartheta<1 .
\tag{TFE2748B.727}
\]

Then the retained heat-lag loop obeys the strict margin

\[
d\mathcal S_P^{ret}
\le
{\vartheta\over2}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.728}
\]

Thus retained parabolic feedback cannot be the Gold source once the quotient is
honestly retained.  It is a contracted readout of the same parent generator.
The only uncontracted part is the early/source face:

\[
d\mathcal S_P^{early}
\le
C_N(d\rho_{crit,P}^{ac}+d\rho_{crit,P}^{entry})
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.729}
\]

If the early critical source itself has the same-parent storage

\[
d\rho_{crit,P}^{ac}+d\rho_{crit,P}^{entry}
\le
-dM_P^{src}
+{\vartheta\over2}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.730}
\]

with \(M_P^{src}\) bounded below from \(u_0\), then adding
`(TFE2748B.728)' and `(TFE2748B.730)' gives `(TFE2748B.715)' with

\[
M_P^{FE,crit}:=M_P^{src}+M_P^{ret},
\qquad
dM_P^{ret}:=0
\tag{TFE2748B.731}
\]

after paid defects are collected.  Therefore

\[
\boxed{
\begin{array}{c}
\text{honest retained heat thickness `(TFE2748B.724)' plus bounded retained
detector `(TFE2748B.723)'}\\
\text{proves the retained-loop part of FullExchangeCriticalDepletionStorage.A;}\\
\text{the remaining nonconsumer source is early critical source storage
`(TFE2748B.730)'.}
\end{array}}
\tag{TFE2748B.732}
\]

This is the pressure/heat-lag handoff in exact storage form.  Pressure-compatible
zero-lag material is admitted as \(d\rho_{crit}^{ac}+d\rho_{crit}^{entry}\)
before clipping; once material is retained for a positive heat time, viscosity
contracts it by `(TFE2748B.725)'.  The open arbitrary-data work has therefore
moved to proving that every sub-heat-lag selected trace is admitted into the
early critical source ledger, and proving that the retained quotient really has
the heat thickness `(TFE2748B.724)' after route, collar, legal, stop, and
endpoint material are removed.

## 85. Early source split after the raw atom theorem

Section 82 proves the requested signed atom construction from arbitrary smooth
original data before clipping.  Section 84 then shows that retained positive
heat-lag readouts are contracted once they have real heat thickness.  The early
source face in `(TFE2748B.730)' is therefore not another atomization problem.
It is the point where the parent packet must supply the selected-critical size
of the already paired atom ledger.

Split the early source into the absolutely continuous positive-baseline log
part and the zero-baseline first-entry part:

\[
d\rho_{crit,P}^{src}
:=
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}.
\tag{TFE2748B.733}
\]

On the positive-baseline branch the selected meter is already a parent density.
Let \(f_P>0\) be its density relative to the stopped parent active reserve
\(dR_P^{root}\), and set

\[
\Phi(r):=r\log r-r+1,\qquad
\mathcal H_P^{ac}(t):=\int_{X_P}\Phi(f_P(t))\,dR_P^{root}.
\tag{TFE2748B.734}
\]

When the before-clipping parent-announced density obeys the coupled
transport-diffusion identity `(TFE2748B.78)' on this branch, the transport part
has zero \(R_P^{root}\)-divergence and the heat/Stokes part gives

\[
d\mathcal H_P^{ac}
+
\int_{X_P}
{\langle A_t\nabla_R f_P,\nabla_R f_P\rangle\over f_P}
\,dR_P^{root}dt
\le
d\sigma_P^{geom}+d\sigma_P^{paid}.
\tag{TFE2748B.735}
\]

Here \(d\sigma_P^{geom}\) contains exactly the positive variation of the
parent-fixed critical meter caused by the moving Hodge frame, transported
covectors, collar, selector, route, and endpoint geometry.  It is not a new
force account; it is the cost of writing the same coupled transaction in the
stopped parent coordinates.

The positive-baseline source is the log-amplification spent by this same
branch.  In parent notation it satisfies

\[
d\rho_{crit,P}^{ac}
\le
c_N
\int_{X_P}
{\langle A_t\nabla_R f_P,\nabla_R f_P\rangle\over f_P}
\,dR_P^{root}dt
+d\sigma_P^{geom}+d\sigma_P^{paid},
\tag{TFE2748B.736}
\]

because \(\Phi\) is the exact superlinear parent-scale counter for the selected
price: bounded-price material is paid by the raw atom reserve of Section 82,
and the high-price tail is controlled by the layer-cake/de la
Vallee-Poussin estimate `(TFE2748B.673)'--`(TFE2748B.678)'.  Combining
`(TFE2748B.735)' and `(TFE2748B.736)' gives the ac storage line

\[
d\rho_{crit,P}^{ac}
\le
-dM_P^{ac}
+d\sigma_P^{geom}+d\sigma_P^{paid},
\qquad
M_P^{ac}:=c_N\mathcal H_P^{ac}\ge0.
\tag{TFE2748B.737}
\]

Thus the positive-baseline branch is an entropy-depletion branch once the
selected density is genuinely parent-announced before clipping.  The remaining
geometric part is a consumer of the already isolated active generator:

\[
d\sigma_P^{geom}
\le
{\vartheta\over4}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\vartheta<1.
\tag{TFE2748B.738}
\]

With `(TFE2748B.738)' inserted, `(TFE2748B.737)' becomes

\[
d\rho_{crit,P}^{ac}
\le
-dM_P^{ac}
+{\vartheta\over4}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.739}
\]

The zero-baseline first-entry part is different.  It has no positive parent
density before the entry event, so it cannot be produced by the log branch
`(TFE2748B.735)' without circularly defining the reserve from the future child
tail.  The needed first-entry reserve is

\[
d\rho_{crit,P}^{entry}
\le
-dM_P^{entry}
+{\vartheta\over4}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
M_P^{entry}\ge-C_N(u_0)\mathcal R(P)-Paid(P)-Stop(P).
\tag{TFE2748B.740}
\]

This is the singular endpoint/first-birth part of the source theorem: the
initial critical atom has to be admitted into the original parent reserve before
the child can read it as selected action.  It is not supplied by raw
zero-mean atom pairing alone, because raw pairing controls unweighted lobe mass
while `(TFE2748B.740)' asks for terminal-uniform selected-critical root size.

Consequently the early source storage `(TFE2748B.730)' follows from the three
nonduplicate inputs

\[
\begin{array}{c}
\text{parent-announced ac density and entropy identity `(TFE2748B.735)',}\\
\text{paid geometric/capacity positive variation `(TFE2748B.738)',}\\
\text{zero-baseline first-entry reserve `(TFE2748B.740)'.}
\end{array}
\tag{TFE2748B.741}
\]

Indeed, adding `(TFE2748B.739)' and `(TFE2748B.740)' gives

\[
d\rho_{crit,P}^{ac}+d\rho_{crit,P}^{entry}
\le
-d(M_P^{ac}+M_P^{entry})
+{\vartheta\over2}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.742}
\]

which is exactly `(TFE2748B.730)' with

\[
M_P^{src}:=M_P^{ac}+M_P^{entry}.
\tag{TFE2748B.743}
\]

Combining `(TFE2748B.742)' with the retained-loop contraction
`(TFE2748B.728)' gives the full-exchange storage line `(TFE2748B.715)'.
Therefore the current theorem state is precise: the signed same-parent atomic
decomposition, coefficient/leakage control, and raw retained opposite-lobe
reserve are already constructed from arbitrary smooth original data before
clipping; the remaining source work is proving the parent-announced selected
ac density/geometric-variation clauses and the zero-baseline first-entry
reserve without defining either one from a future selected child tail.

## 86. Parent density exists; the source is its accretive current domination

The first clause left by Section 85 can be sharpened.  For a smooth preterminal
solution, the positive-baseline selected density is not missing as an object.
It is obtained by pulling the selected detector back to the stopped parent
frame before the positive part is taken.

Let \(Y_P\) be the stopped coupled packet of `(TFE2748B.248)' and let
\(\Psi_P\) be the parent-pulled selected active readout on the
positive-baseline branch.  Define

\[
F_P:=\Psi_P(Y_P),\qquad
dA_{P}^{ac,+}:=F_P\,d\mathfrak m_P,
\tag{TFE2748B.744}
\]

with the zero-baseline singular branch kept out of \(F_P\) and recorded in
\(d\rho_{crit,P}^{entry}\).  Since \(Y_P\), the stopped frame, and the detector
are smooth on every compact preterminal packet, `(TFE2748B.744)' is a genuine
parent-announced density before child clipping.

Applying the chain rule to the one coupled parent equation gives the exact
renormalized density identity

\[
D_t^P F_P
-\operatorname{div}_{\mathfrak m}(A_P\nabla_{\mathfrak m}F_P)
=
-\mathcal D_{\Psi,P}
+\mathcal K_{\Psi,P}
+\mathcal G_{\Psi,P}
+\mathcal R_{\Psi,P}^{paid},
\tag{TFE2748B.745}
\]

where

\[
\mathcal D_{\Psi,P}
=
\nu D^2\Psi_P(Y_P)[\nabla_{\mathfrak m}Y_P,\nabla_{\mathfrak m}Y_P]\ge0
\tag{TFE2748B.746}
\]

on the convex positive-baseline readout fibres.  The non-passive term
\(\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}\) is exactly the Hodge/pressure,
moving-frame, covector, selector, collar, and root-generator feedback of the
same coupled packet.  No pressure-only or viscosity-only source has been split
off.

For \(\Phi(r)=r\log(e+r)\), multiplying `(TFE2748B.745)' by \(\Phi'(F_P)\)
and integrating in the parent measure gives

\[
d\mathcal H_P^{ac}
+d\mathcal I_P^{ac}
\le
\int \Phi'(F_P)
[\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}]_+
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.747}
\]

where

\[
\mathcal H_P^{ac}:=\int\Phi(F_P)\,d\mathfrak m_P,\qquad
d\mathcal I_P^{ac}:=
\int \Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_Pdt .
\tag{TFE2748B.748}
\]

This proves the parent-announced density and the entropy chain rule from
arbitrary smooth preterminal data.  The Gold source is the strict accretive
domination of the positive non-passive current:

\[
\int \Phi'(F_P)
[\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}]_+
\,d\mathfrak m_P
\le
\beta\,d\mathcal I_P^{ac}
+{\vartheta\over4}d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\beta<1 .
\tag{TFE2748B.749}
\]

Indeed, inserting `(TFE2748B.749)' into `(TFE2748B.747)' and absorbing
\(\beta d\mathcal I_P^{ac}\) gives

\[
d\mathcal H_P^{ac}
+(1-\beta)d\mathcal I_P^{ac}
\le
{\vartheta\over4}d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.750}
\]

Together with the deterministic entropy lower edge for high-ratio
positive-baseline reads,

\[
d\rho_{crit,P}^{ac}
\le
c_N d\mathcal I_P^{ac}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.751}
\]

this proves `(TFE2748B.739)' after reducing the margin.  Thus the
positive-baseline ac branch is closed once `(TFE2748B.749)' is proved; the
existence of \(F_P\) and the chain rule are not the remaining obstruction.

The same current controls the positive variation of the parent critical window.
For a parent score \(a_P=a(F_P)\) and critical windows
\(\mathfrak S_{P,\lambda}^{crit}=\{a_P>\lambda\}\), the BV/coarea identity gives

\[
\int_0^\infty
w(\lambda)\,[d\,\mathfrak C_P^{root}(\mathfrak S_{P,\lambda}^{crit})]_+
\,d\lambda
\le
C_N
\int \Phi'(F_P)
[\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}]_+
\,d\mathfrak m_P
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.752}
\]

So paid geometric/capacity positive variation `(TFE2748B.738)' is not an
independent physical supplier.  It is the BV readout of the same
renormalized non-passive current in `(TFE2748B.749)'.

For the zero-baseline branch, TFE2748A supplies only ledger admission:

\[
d\rho_{crit,P}^{entry}
\le
C_Nd\Omega_P^{EP,tr}
+d\Theta_P^0+dPaid_P+dStop_P
\le
C_Nd\Xi_P^{FE,\ast}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.753}
\]

To turn this into the first-entry reserve `(TFE2748B.740)', the endpoint-admitted
full-exchange ledger must satisfy the same strict depletion line

\[
d\Xi_P^{FE,\ast}
\le
-dM_P^{FE,\ast}
+{\vartheta\over4}d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
M_P^{FE,\ast}\ge-C_N(u_0)\mathcal R(P)-Paid(P)-Stop(P).
\tag{TFE2748B.754}
\]

Then `(TFE2748B.753)' implies `(TFE2748B.740)' with
\(M_P^{entry}=C_NM_P^{FE,\ast}\) after constants are absorbed into the strict
margin.  This is exactly why endpoint admission is not closure: it places the
zero-baseline first entry on the correct side of the ledger, while
`(TFE2748B.754)' is the original-data storage theorem still needed to make that
ledger finite.

Consequently the current bottom of the proof has a nonduplicate form:

\[
\boxed{
\begin{array}{c}
\text{prove the accretive same-parent current domination `(TFE2748B.749)',}\\
\text{and prove the endpoint-admitted full-exchange depletion `(TFE2748B.754)'.}
\end{array}}
\tag{TFE2748B.755}
\]

Those two estimates imply the Section 85 clauses `(TFE2748B.739)' and
`(TFE2748B.740)', hence the early-source storage `(TFE2748B.730)', the
full-exchange storage `(TFE2748B.715)', and the terminal-uniform selected
\(L^1\) consumer chain.  The work done here is to prove the parent-announced
positive-baseline density/entropy identity from smooth original data and to
deduplicate capacity variation back into the same renormalized current; it does
not prove the strict domination `(TFE2748B.749)' or the full-exchange depletion
`(TFE2748B.754)'.

## 87. The Section 86 bottom is the tail material-record payment line

Section 86 leaves two displayed estimates, but they are not two unrelated
physical sources.  The accretive current estimate `(TFE2748B.749)' is the
positive-baseline face of the one-sided aligned-current theorem from Sections
42--46, and the endpoint-admitted full-exchange depletion `(TFE2748B.754)' is
the same theorem after the zero-baseline endpoint trace has been entered into
the full-exchange ledger.

First consume the current side.  Section 42 proves the same-parent divergence
current representation

\[
\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}
=
\operatorname{div}_{\mathfrak m}J_{\Psi,P}
+k_{\Psi,P}^0+r_{\Psi,P}^{paid}
\tag{TFE2748B.756}
\]

from arbitrary smooth preterminal data.  Section 44 exhausts the zero-order
kernel into lower carry, endpoint, legal, stop, route, and \(\Theta^0\) material,
so `(TFE2748B.749)' is implied by the pure aligned-current estimate

\[
\int dQ_P^{cur}
\le
\theta\int dI_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\theta<1.
\tag{TFE2748B.757}
\]

Sections 45--46 rewrite `(TFE2748B.757)' exactly as the parent-comparison
positive-surplus theorem

\[
\int
\Phi''(F_P)
\bigl[
\langle A_P\nabla_{\mathfrak m}U_{P,\theta},
\nabla_{\mathfrak m}F_P\rangle
\bigr]_+
d\mathfrak m_P
\le
d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.758}
\]

Thus

\[
\texttt{ParentComparisonPositiveSurplus.A `(TFE2748B.758)'}
\Longrightarrow
\texttt{AccretiveCurrentDomination `(TFE2748B.749)'.}
\tag{TFE2748B.759}
\]

The later normalized-failure chain lowers this comparison theorem further.
Sections 73--75 reduce failure of `(TFE2748B.758)' to a tail-aligned
Body-III relay defect and prove the canonical zero-loss aligned-current
rigidity after the relay defect vanishes.  Sections 76--77 then identify the
only remaining relay production as the tail material-record payment line

\[
\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}
\le
d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt .
\tag{TFE2748B.760}
\]

Consequently

\[
\texttt{TailMaterialRecordPayment.A `(TFE2748B.760)'}
\Longrightarrow
\texttt{ParentComparisonPositiveSurplus.A}
\Longrightarrow
\texttt{`(TFE2748B.749)'.}
\tag{TFE2748B.761}
\]

Now consume the endpoint/full-exchange side.  TFE2748A proves only the admission

\[
d\rho_{crit,P}^{entry}
\le
C_Nd\Xi_P^{FE,\ast}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.762}
\]

not the finiteness of \(d\Xi_P^{FE,\ast}\).  To get `(TFE2748B.754)', the
endpoint-admitted ledger must be lower-admitted into the same retained
tail-material record:

\[
d\Xi_P^{FE,\ast}
\le
C_N\bigl(dQ_P^{cur}
+\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}\bigr)
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.763}
\]

This is not a definition of \(d\Xi_P^{FE,\ast}\) by the future selected tail.
It is the before-clipping lower-admission assertion that every positive piece of
the endpoint-admitted full-exchange ledger is either the aligned current already
measured by \(dQ_P^{cur}\), a finite-window relay defect, a high-rung
material-record escape, or paid route/legal/stop material.

Combining `(TFE2748B.757)', `(TFE2748B.760)', and `(TFE2748B.763)' gives

\[
d\Xi_P^{FE,\ast}
\le
C_N\theta\,dI_P
+d\Theta_P^0+dPaid_P+dStop_P+2^{-N}D_N\,dt .
\tag{TFE2748B.764}
\]

The Fisher carrier \(dI_P\) is the dissipative part of the same full-exchange
ledger.  With the storage variable

\[
M_P^{FE,\ast}
:=
\mathcal C_P^{FE,\ast}-\mathcal E_P^{FE,\ast},
\qquad
d\mathcal E_P^{FE,\ast}:=dI_P+d\Xi_P^{FE,\ast},
\tag{TFE2748B.765}
\]

and with the capacity positive variation already deduplicated into the same
current by `(TFE2748B.752)', `(TFE2748B.764)' is exactly the depletion form

\[
d\Xi_P^{FE,\ast}
\le
-dM_P^{FE,\ast}
+{\vartheta\over4}d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.766}
\]

after the fixed entrance tail \(2^{-N}D_Ndt\) is absorbed into the legal
entrance/paid lower-carry ledger and constants are chosen with
\(C_N\vartheta<1\).  This is `(TFE2748B.754)'.

Therefore the current nonduplicate source theorem after Sections 86--87 is

\[
\boxed{
\begin{array}{c}
\texttt{EndpointFullExchangeTailLowerAdmission.A `(TFE2748B.763)'}\\
+\texttt{TailMaterialRecordPayment.A `(TFE2748B.760)'}
\end{array}
\Longrightarrow
\texttt{`(TFE2748B.749)' + `(TFE2748B.754)'}.
}
\tag{TFE2748B.767}
\]

The first line is a lower-admission/custody bridge.  The second line is the real
remaining original-data payment theorem.  The previous wording "prove
`(TFE2748B.749)' and `(TFE2748B.754)'" is therefore sharpened to this: prove
the endpoint-admitted full-exchange ledger is read by the same aligned-current /
tail material-record carrier before clipping, and prove that carrier's
tail-material-record payment from the original coupled packet.

## 88. Correct scope of the endpoint lower-admission bridge

The lower-admission line `(TFE2748B.763)' needs one repair.  It cannot apply to
the entire full-exchange square in `(TFE2748A.2)' if that square includes
current components transverse to the selected active gradient.  Those transverse
components belong to the same coupled parent packet, but they are not positive
selected critical entry.

The flat quotient test shows the point.  Let \(A=I\), \(F\equiv1\), and choose a
smooth nonzero divergence-free stopped current \(J\) with no route, legal, or
stop term.  Then

\[
dI=\Phi''(F)|\nabla F|^2\,d\mathfrak m=0,
\qquad
dQ^{cur}
=\bigl[-\Phi''(F)\nabla F\cdot J\bigr]_+\,d\mathfrak m=0,
\tag{TFE2748B.768}
\]

while the full square \(|J|^2d\mathfrak m\) is positive.  Therefore any bridge
of the form

\[
|J|^2d\mathfrak m
\le
C\,dQ^{cur}+d\Theta^0+dPaid+dStop
\tag{TFE2748B.769}
\]

is false as a statement about the whole full-exchange ledger.  Same-parent
custody and atom pairing do not change this: the obstruction is not ownership,
but direction.  Only the aligned selected part of the parent current is read as
positive critical entry.

Thus the endpoint-admitted ledger must be split before `(TFE2748B.763)' is
used:

\[
d\Xi_P^{FE,\ast}
=
d\Xi_P^{FE,\ast,sel}
+d\Xi_P^{FE,\ast,\perp}
+d\Xi_P^{FE,\ast,paid}.
\tag{TFE2748B.770}
\]

Here \(d\Xi_P^{FE,\ast,sel}\) is the endpoint-admitted, selected-positive
subledger: positive-baseline critical entry, zero-baseline endpoint seed, and
the aligned part of the full-exchange current that is actually tested by the
selected critical meter before clipping.  The paid part is route, collar,
legal, stop, selector, endpoint-chart, and reselection material already assigned
to \(d\Theta^0+dPaid+dStop\).  The transverse part
\(d\Xi_P^{FE,\ast,\perp}\) is full-exchange energy that is orthogonal to the
selected positive readout in the retained quotient.

The corrected lower-admission theorem is therefore

\[
d\Xi_P^{FE,\ast,sel}
\le
C_N\bigl(dQ_P^{cur}
+\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}\bigr)
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.771}
\]

This version is directionally correct.  It says: before a zero-baseline endpoint
or positive-baseline critical entry is counted as selected action, it must appear
as aligned current, finite-window relay defect, high-rung material-record
escape, or paid route/legal/stop material.  It does not try to make transverse
full-exchange square into selected positive action.

The transverse subledger is consumed on the generator/Fisher side:

\[
d\Xi_P^{FE,\ast,\perp}
\le
\vartheta_\perp\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta_\perp<1,
\tag{TFE2748B.772}
\]

after the retained heat-lag quotient, reversible Hodge/transport neutrality,
and paid frame/collar/selector motion from TFE2748A are inserted.  This is the
same consumer role as `(TFE2748B.7)' and `(TFE2748B.728)': transverse
full-exchange motion may be real parent-packet motion, but it is not the
selected \(L^1\) source.  If `(TFE2748B.772)' fails, the failure is not an
endpoint lower-admission failure; it is a retained full-exchange/generator
storage failure in the original TFE2748A.5 sense.

With `(TFE2748B.770)'--`(TFE2748B.772)', the zero-baseline endpoint branch is
handled without circularity:

\[
d\rho_{crit,P}^{entry}
\le
C_Nd\Xi_P^{FE,\ast,sel}
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.773}
\]

and `(TFE2748B.771)' plus the tail material-record payment line gives

\[
d\rho_{crit,P}^{entry}
\le
C_N dQ_P^{cur}
+C_N(d\Theta_P^0+dPaid_P+dStop_P+2^{-N}D_Ndt).
\tag{TFE2748B.774}
\]

The aligned-current estimate then pays \(dQ_P^{cur}\) with the strict Fisher /
generator margin, while `(TFE2748B.772)' keeps the transverse full-exchange
square on the generator side.  Therefore the corrected nonduplicate implication
is

\[
\boxed{
\begin{array}{c}
\texttt{SelectedEndpointLowerAdmission.A `(TFE2748B.771)'}\\
+\texttt{TransverseFullExchangeConsumer.A `(TFE2748B.772)'}\\
+\texttt{TailMaterialRecordPayment.A `(TFE2748B.760)'}
\end{array}
\Longrightarrow
\texttt{`(TFE2748B.749)' + `(TFE2748B.754)'}.
}
\tag{TFE2748B.775}
\]

This repairs Section 87's wording.  The endpoint bridge is not a demand that
the whole full-exchange ledger be selected aligned current.  The selected
endpoint subledger is lower-admitted to the aligned-current/material-record
carrier; the transverse full-exchange square is retained as generator/Fisher
material with a strict consumer margin.  Section 89 proves that retained
transverse consumer margin; Gold remains open at the selected lower admission
and tail material-record payment from the original coupled packet before
clipping.

## 89. Transverse full-exchange is a retained-loop consumer

The transverse clause in `(TFE2748B.772)' is not an independent Gold source once
the word transverse is kept in the retained-quotient sense used in
`(TFE2748B.770)'.  A transverse component with no heat thickness is not a
retained transverse component; it is zero-lag source/endpoint material, route,
collar, selector, legal, stop, or paid frame motion.  The flat quotient test
`(TFE2748B.768)'--`(TFE2748B.769)' is exactly the warning against putting such
zero-lag material into the retained transverse consumer.

Write the transverse endpoint-admitted ledger as

\[
d\Xi_P^{FE,\ast,\perp}
=d\Xi_P^{FE,\ast,\perp,ret}
+d\Xi_P^{FE,\ast,\perp,paid},
\qquad
d\Xi_P^{FE,\ast,\perp,paid}
\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.776}
\]

On each retained fibre \(Q\), the transverse readout is the orthogonal part of
the same parent detector from Section 84:

\[
Z_Q^{\perp,ret}
=
\Pi_Q^\perp e^{\nu\tau_Q\Delta_P}\Gamma_QG_P^{root}
+G_Q^{paid},
\qquad
\Pi_Q^\perp:=(I-\Pi_Q^{align})\Pi_Q .
\tag{TFE2748B.777}
\]

Since \(\Pi_Q^{align}\) is an orthogonal projection in the retained quotient,
`(TFE2748B.723)' gives

\[
\|\Pi_Q^\perp h\|^2\le \|\Pi_Qh\|^2
\le C_{\Pi,N}^2\|h\|^2 .
\tag{TFE2748B.778}
\]

The retained quotient also has the heat thickness `(TFE2748B.724)'.  Therefore
the parabolic contraction `(TFE2748B.725)' and the same finite-overlap summation
used in `(TFE2748B.726)' give

\[
d\Xi_P^{FE,\ast,\perp,ret}
\le
C_NC_{\Pi,N}^2e^{-2c_PL_N}d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.779}
\]

Choose the retained threshold \(L_N\) as in `(TFE2748B.727)' and set
\(\vartheta_\perp:=C_NC_{\Pi,N}^2e^{-2c_PL_N}\).  Then
\(C_N\vartheta_\perp<1\), and `(TFE2748B.776)'--`(TFE2748B.779)' prove

\[
\boxed{
d\Xi_P^{FE,\ast,\perp}
\le
\vartheta_\perp d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta_\perp<1 .
}
\tag{TFE2748B.780}
\]

Thus

\[
\boxed{
\texttt{TransverseFullExchangeConsumer.A `(TFE2748B.772)' is proved as a
retained-loop consumer by Section 84.}
}
\tag{TFE2748B.781}
\]

The proof does not use selected positive clipping.  It uses only the parent
Duhamel-Hodge representation, retained heat thickness, detector boundedness, and
the fact that transverse means orthogonal inside the retained quotient.  Any
piece failing one of those hypotheses has already left the transverse-retained
subledger and must be charged as early source, route/collar/frame, legal, stop,
selector/reselection, endpoint trace, or tail material-record residue.

Consequently the corrected source implication after Sections 87--89 is

\[
\boxed{
\begin{array}{c}
\texttt{SelectedEndpointLowerAdmission.A `(TFE2748B.771)'}\\
+\texttt{TailMaterialRecordPayment.A `(TFE2748B.760)'}
\end{array}
\Longrightarrow
\texttt{`(TFE2748B.749)' + `(TFE2748B.754)'}.
}
\tag{TFE2748B.782}
\]

The remaining nonconsumer work is therefore narrower: prove the selected
endpoint subledger is lower-admitted to aligned-current/material-record carrier
before clipping, and prove the tail material-record payment line from the
original coupled packet.  The transverse full-exchange square is no longer a
separate Gold source.

## 90. The raw signed atom construction is closed, not the selected reserve

The latest atom-decomposition request lands exactly at the raw parent level.
It does not reopen the Gold source.  It also does not by itself prove the
selected-critical storage theorem, because the selected meter \(W_P^{crit}\)
is an additional parent-announced weight that must be supplied before clipping.

Fix a stopped compact preterminal parent packet \(P\) and pull the coupled
pressure-Hodge/material residue into the parent material chart before any child
positive part is taken.  Here "pressure-Hodge/material residue" is a coordinate
readout of the one pressure-viscosity-incompressibility-velocity participation
packet, after the route, collar, metric, Hodge-commutator, detector-motion,
legal, stop, and endpoint leakage have been separated.  The retained raw
pre-clipping measure is

\[
dJ_P=dJ_P^0+dR_P,\qquad
\int_{X_P}dJ_P^0=0,\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.783}
\]

For arbitrary original smooth preterminal data, Section 82 gives the local
Hardy construction of \(dJ_P^0\).  In the stopped chart the smooth density
representative satisfies

\[
\|F_P(t)\|_{\mathcal H^1(X_P)}
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t),
\tag{TFE2748B.784}
\]

so the local Hardy atomic decomposition gives zero-mean same-parent atoms
\(d\mu_\alpha\) and coefficients \(c_\alpha\) with

\[
dJ_P
=
\sum_\alpha c_\alpha\,d\mu_\alpha+dR_P,
\qquad
\int_{X_P}d\mu_\alpha=0,
\tag{TFE2748B.785}
\]

and, after integration in time and the Leray energy inequality,

\[
\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau |(dR_P)_+|(t)
\le
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P,
\qquad \tau<T_* .
\tag{TFE2748B.786}
\]

Equivalently, taking the Jordan split \(dJ_P^0=dJ_P^+-dJ_P^-\) and any
same-parent coupling \(\pi_P\) between \(dJ_P^+\) and \(dJ_P^-\),

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)
=
{1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.787}
\]

Thus every raw positive lobe has an opposite signed lobe in the same stopped
parent packet:

\[
(dJ_P)_+
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=(\mathrm{pr}_2)_\#\pi_P .
\tag{TFE2748B.788}
\]

The retained opposite lobe is a bounded-below parent reserve depletion by the
explicit raw reserve

\[
M_P^{atom}(\tau)
:=
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P
-dJ_P^{ret,-}\bigl([0,\tau]\times X_P\bigr).
\tag{TFE2748B.789}
\]

By `(TFE2748B.786)',

\[
M_P^{atom}(\tau)\ge0,
\qquad
-dM_P^{atom}=dJ_P^{ret,-}
\quad\text{on retained parent atoms.}
\tag{TFE2748B.790}
\]

Therefore the construction asked for here is already an original-data theorem:

\[
\boxed{
\texttt{SignedPressureHodgeAtomicAttachment.A is proved at the raw parent level
by `(TFE2748B.783)'--`(TFE2748B.790)'.}
}
\tag{TFE2748B.791}
\]

The remaining Gold \(L^1\) source is the selected-weighted upgrade.  Multiplying
the atom ledger by \(W_P^{crit}\) changes the problem from raw signed
attachment to parent-announced selected storage: \(W_P^{crit}\), its
log-amplification, the selected endpoint subledger, and the tail
material-record payment must all be supplied by the same original coupled
packet before clipping.  Thus Section 90 discharges the raw atomic
decomposition, coefficient/leakage control, and bounded-below opposite-lobe
reserve; it leaves `(TFE2748B.771)' and `(TFE2748B.760)' as the nonduplicate
selected-critical source lines from Sections 88--89.

## 91. The weighted atom identity is the critical-capacity variation line

The selected-weighted upgrade has an exact atom-pair identity.  This is the
place where raw pressure/Hodge atom pairing becomes critical capacity
variation.  Work on the same pre-clipping atom coupling \(\pi_P\) from Section
90.  Write \(x\) for the positive lobe, \(y\) for its retained opposite lobe,
and let

\[
b_P:=\log W_P^{crit}.
\tag{TFE2748B.792}
\]

The selected positive bill on the atom ledger is

\[
d\mathcal A_P^{crit,+}
:=
W_P^{crit}(x)\,d\pi_P(x,y).
\tag{TFE2748B.793}
\]

Since \(W_P^{crit}\) is pulled back to the parent atom ledger before clipping,
there is no new child event in `(TFE2748B.793)'.  It is one same-parent pair
read with a selected meter.  On each atom pair,

\[
W_P^{crit}(x)
=
W_P^{crit}(y)
+W_P^{crit}(y)\bigl(e^{b_P(x)-b_P(y)}-1\bigr),
\tag{TFE2748B.794}
\]

hence, as positive measures,

\[
d\mathcal A_P^{crit,+}
\le
d\mathcal E_P^{crit,-}
+d\mathcal O_P^{crit,b},
\tag{TFE2748B.795}
\]

where

\[
d\mathcal E_P^{crit,-}
:=
W_P^{crit}(y)\,d\pi_P(x,y),
\qquad
d\mathcal O_P^{crit,b}
:=
W_P^{crit}(y)
\bigl(e^{[b_P(x)-b_P(y)]_+}-1\bigr)d\pi_P(x,y).
\tag{TFE2748B.796}
\]

The first term is the selected-weighted retained opposite lobe.  If the parent
packet supplies a pre-clipping critical reserve

\[
\mathcal C_P^{crit}
\ge
\int_{X_P\times X_P}W_P^{crit}(y)\,d\pi_P(x,y),
\tag{TFE2748B.797}
\]

and

\[
M_P^{crit}(\tau)
:=
\mathcal C_P^{crit}
-
\int_{\{s(y)<\tau\}}W_P^{crit}(y)\,d\pi_P(x,y),
\tag{TFE2748B.798}
\]

then

\[
M_P^{crit}(\tau)\ge0,
\qquad
-dM_P^{crit}=d\mathcal E_P^{crit,-}
\quad\text{on selected retained atom pairs.}
\tag{TFE2748B.799}
\]

Thus the selected positive bill is paid by same-parent depletion plus exactly
one extra term:

\[
d\mathcal A_P^{crit,+}
\le
-dM_P^{crit}
+d\mathcal O_P^{crit,b}.
\tag{TFE2748B.800}
\]

The oscillation term \(d\mathcal O_P^{crit,b}\) is the critical-capacity
variation.  It is zero when the selected meter is constant on paired lobes.
It is large exactly when the same raw atom is read at a higher selected price on
the positive lobe than on its retained opposite lobe.  In parent-chart language,
this is the positive logarithmic material variation of the selected meter along
the coupled packet, not a new pressure source and not a dyadic recount.

Consequently the local storage theorem `(TFE2748B.715)' is equivalent, at the
atom-pair level, to proving the two selected-weighted parent statements

\[
\begin{array}{ll}
\text{level reserve:}&
\displaystyle
\mathcal C_P^{crit}
\le
C_N(u_0)\mathcal R(P)
+dPaid_P+dStop_P,\\[2mm]
\text{log-variation storage:}&
\displaystyle
d\mathcal O_P^{crit,b}
+\gamma_N\,dSF_P(b_P)
\le
\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta<1,
\end{array}
\tag{TFE2748B.801}
\]

where

\[
dSF_P(b_P)
:=
\sum_{Q\subseteq P'}
\bigl(\|\Delta_Q b_P\|_{\mathfrak H_P}^2+|e_Q|^2\bigr)
\mathfrak m_P(Q)
\tag{TFE2748B.802}
\]

is the stopped log-meter square variation from `(TFE2748B.714)'.  The first
line of `(TFE2748B.801)' is `ParentAtomLevelReserve.A' in weighted-lobe form.
The second line is `ParentLogMeterBMO.A' plus the positive critical-capacity
variation estimate in the same currency.  Adding `(TFE2748B.800)' and
`(TFE2748B.801)' gives the mean-plus-oscillation storage line
`(TFE2748B.715)'.

Conversely, raw atom pairing cannot imply `(TFE2748B.801)'.  On a model atom
ledger with atom masses \(m_n=n^{-2}\), set \(W(x_n)=n\) and \(W(y_n)=1\).
Then the raw atom mass \(\sum_n m_n\) and the unweighted retained-lobe reserve
are finite, but

\[
\sum_n W(x_n)m_n=\sum_n {1\over n}=\infty .
\tag{TFE2748B.803}
\]

The divergence is exactly the oscillation term
\(\sum_n W(y_n)(e^{b(x_n)-b(y_n)}-1)m_n\).  This model is not a new fluid
counterexample; it is the algebraic witness that zero-mean atom pairing and
finite raw energy do not by themselves control selected \(L^1\).  The original
coupled packet must additionally prove `(TFE2748B.801)' before child clipping.

Therefore the current source target has been sharpened without changing its
substance:

\[
\boxed{
\texttt{CriticalCapacityVariationStorage.A}
\equiv
\texttt{weighted retained-lobe reserve `(TFE2748B.797)'--`(TFE2748B.799)'}
+
\texttt{log-variation storage `(TFE2748B.801)'.}
}
\tag{TFE2748B.804}
\]

This is the exact mathematical form of the physical statement: the positive
selected readout is the same parent pulse read at a higher price, and the proof
has to show that the price increase is itself a same-parent full-exchange
motion with a strict viscous/generator margin.

## 92. The log-variation bill consumes the amplification-current record

Section 91 leaves the right object: the selected positive atom is paid by the
weighted retained lobe plus the positive log-meter oscillation
\(d\mathcal O_P^{crit,b}\).  This section records the deterministic bridge
from that log oscillation to the already isolated original-history
amplification-current record.  It is not a new physical supplier.

Let \(\mathfrak Z_P^S=(Z_P^S,\Psi_P^S,\Lambda_P^S)\) be the stopped
amplification/current record of `(TFE2748B.546)'.  On every retained selected
chamber, the log-meter increment is represented before clipping by the same
parent martingale/Hodge record:

\[
b_Q-b_{\operatorname{par}(Q)}
=
\ell_Q(\Delta_QZ_P^S)-\psi_Q+e_Q^S .
\tag{TFE2748B.805}
\]

The square-function part in `(TFE2748B.801)' is therefore a consumer of the
amplification-current energy:

\[
dSF_P(b_P;P')
\le
C_N\,d\mathcal E_{SAC}(P')
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.806}
\]

where \(d\mathcal E_{SAC}\) is the root Carleson/BV/testing density from
`(TFE2748B.547)'.  This is exactly the square-function statement behind
`(TFE2748B.551)'--`(TFE2748B.552)'.

Now take an atom pair \((x,y)\) in the same stopped parent packet and let
\(\mathcal P(x,y)\) be the finite stopped tree path joining the retained
negative lobe to the selected positive lobe after route, collar, legal, stop,
and reselection defects have been removed.  Along that path,

\[
b_P(x)-b_P(y)
=
\sum_{Q\in\mathcal P(x,y)}
\bigl(b_Q-b_{\operatorname{par}(Q)}\bigr)
+r_{xy}^{paid}.
\tag{TFE2748B.807}
\]

The stopped John--Nirenberg/Kazamaki estimate for this parent martingale gives,
for every fixed \(0<\eta<1\), after bad stopping fibres are charged to the paid
ledgers,

\[
\int W_P^{crit}(y)
\bigl(e^{[b_P(x)-b_P(y)]_+}-1\bigr)
\,d\pi_P(x,y)
\le
\eta
\int W_P^{crit}(x)\,d\pi_P(x,y)
+C_{\eta,N}\,dSF_P(b_P)
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.808}
\]

This is the exact absorption of the exponential log-meter oscillation.  It is
where the selected \(L^1\) issue differs from raw atom pairing: the first term
on the right is the selected bill itself and must be absorbed back through
`(TFE2748B.800)', while the second term is square variation of the same
parent-announced log record.

Combining `(TFE2748B.800)' with `(TFE2748B.808)' and taking
\(\eta<1/4\) gives

\[
d\mathcal A_P^{crit,+}
\le
-d\widetilde M_P^{crit}
+C_N dSF_P(b_P)
+d\Theta_P^0+dPaid_P+dStop_P,
\tag{TFE2748B.809}
\]

with \(\widetilde M_P^{crit}\) bounded below whenever the weighted retained-lobe
reserve in `(TFE2748B.797)'--`(TFE2748B.799)' is root-finite.  Inserting
`(TFE2748B.806)' then yields

\[
d\mathcal A_P^{crit,+}
+\gamma_N dSF_P(b_P)
\le
-d\widehat M_P^{crit}
+C_N d\mathcal E_{SAC}(P')
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.810}
\]

Thus `(TFE2748B.801)' follows from the single same-parent storage estimate

\[
d\mathcal E_{SAC}(P')
\le
-dM_P^{SAC}(P')
+\vartheta\,d\Omega_P^{gen}(P')
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad C_N\vartheta<1,
\tag{TFE2748B.811}
\]

together with the root-finite level reserve supplied by the same
\(\mathcal E_{SAC}\) record:

\[
\mathcal C_P^{crit}
\le
C_N(u_0)\mathcal R(P)+dPaid_P+dStop_P .
\tag{TFE2748B.812}
\]

Equations `(TFE2748B.805)'--`(TFE2748B.812)' prove the deterministic
consumption chain

\[
\boxed{
\texttt{OriginalHistorySelectedAmplificationCurrentCarlesonStorage.A}
\texttt{ `(TFE2748B.811)'--`(TFE2748B.812)'}
\Longrightarrow
\texttt{CriticalCapacityVariationStorage.A `(TFE2748B.801)'.}
}
\tag{TFE2748B.813}
\]

The unresolved arbitrary-data content has therefore moved one layer lower, not
sideways: construct \(\mathfrak Z_P^S\) from the original coupled packet, prove
the lower admission of selected source-square/log-meter motion into that record,
and prove the root Carleson/BV/testing storage `(TFE2748B.811)' without defining
\(\mathfrak Z_P^S\) from the future selected tail.  The weighted atom identity
and the martingale exponential absorption are now consumers; the remaining
producer is the original-history amplification-current Carleson/storage theorem.
The finite Carleson package `(TFE2748B.547)' is support for this statement; the
strict storage and root-reserve clauses `(TFE2748B.811)'--`(TFE2748B.812)' are
the still-unproved original-data supply.

## 93. The selected endpoint lower-admission branch is a partition theorem

Section 92 names the strict storage needed for the amplification-current record.
Sections 86--89 already identify the nonduplicate source faces underneath it:
selected endpoint lower admission and the tail material-record payment line.
The first of these is a custody theorem, not a new analytic source.

Work in the stopped parent chart before child positive clipping.  The selected
endpoint subledger in `(TFE2748B.770)' is the part of the endpoint-admitted
full-exchange ledger tested by the selected critical meter:

\[
d\Xi_P^{FE,\ast,sel}
=
d\Xi_P^{align}
+d\Xi_P^{relay}
+d\Xi_P^{paid}.
\tag{TFE2748B.814}
\]

Here \(d\Xi_P^{align}\) is the Radon--Nikodym projection of the full coupled
Hodge-Stokes current onto the selected active-gradient direction; \(d\Xi_P^{relay}\)
is the part where that projection is not yet represented on a stabilized
retained carrier; and \(d\Xi_P^{paid}\) is route, collar, endpoint-chart,
selector, legal, stop, and reselection material.  This split is made before the
positive part is clipped, using the parent detector and the same stopped
material coordinates as `(TFE2748B.756)'--`(TFE2748B.758)'.

By the definition of the aligned projection and the kernel exhaustion of
Section 44,

\[
d\Xi_P^{align}
\le
C_N\,dQ_P^{cur}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.815}
\]

The remaining selected endpoint mass is exactly the finite-window relay
defect, saturation/return defect, endpoint jump defect, legal/collar defect, or
material-record/tower-rung escape isolated in Sections 74--77:

\[
d\Xi_P^{relay}
\le
C_N\bigl(
\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}
\bigr)
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.816}
\]

Equations `(TFE2748B.814)'--`(TFE2748B.816)' prove the corrected selected
endpoint lower-admission line:

\[
\boxed{
d\Xi_P^{FE,\ast,sel}
\le
C_N\bigl(dQ_P^{cur}
+\mathcal R_{\rm sel}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}
+\mathcal R_{\rm geom}^{tail}\bigr)
+d\Theta_P^0+dPaid_P+dStop_P .
}
\tag{TFE2748B.817}
\]

Thus `SelectedEndpointLowerAdmission.A `(TFE2748B.771)' is proved from the
parent split itself.  It does not spend the source; it only says every selected
endpoint entry is already the aligned current, a named relay/material-record
residue, or paid material in the original parent packet.

With `(TFE2748B.817)', the corrected implication `(TFE2748B.782)' reduces to
one remaining original-data payment line:

\[
\boxed{
\texttt{TailMaterialRecordPayment.A `(TFE2748B.760)'}
\Longrightarrow
\texttt{`(TFE2748B.749)' + `(TFE2748B.754)'.}
}
\tag{TFE2748B.818}
\]

The rest of the storage chain is already deterministic.  Sections 86--87 give

\[
\texttt{`(TFE2748B.749)' + `(TFE2748B.754)'}
\Longrightarrow
\texttt{early source storage `(TFE2748B.730)'},
\tag{TFE2748B.819}
\]

Section 84 gives

\[
\texttt{retained-loop contraction `(TFE2748B.728)'}
+\texttt{early source storage `(TFE2748B.730)'}
\Longrightarrow
\texttt{full-exchange storage `(TFE2748B.715)'},
\tag{TFE2748B.820}
\]

and Sections 83 and 91--92 give

\[
\texttt{full-exchange storage `(TFE2748B.715)'}
\Longrightarrow
\texttt{OriginalHistorySelectedAmplificationCurrentCarlesonStorage.A
`(TFE2748B.811)'--`(TFE2748B.812)'}
\Longrightarrow
\texttt{CriticalCapacityVariationStorage.A `(TFE2748B.801)'.}
\tag{TFE2748B.821}
\]

Therefore the active source theorem has been lowered again without changing
the coupled packet:

\[
\boxed{
\texttt{TailMaterialRecordPayment.A `(TFE2748B.760)'}
\Longrightarrow
\texttt{CriticalCapacityVariationStorage.A.}
}
\tag{TFE2748B.822}
\]

What remains unproved from arbitrary original smooth data is exactly
`TailMaterialRecordPayment.A': the selector, saturation/return, endpoint jump,
legal/collar, and material-record/tower-rung residues in `(TFE2748B.760)' must
be paid by \(d\Theta^0+dPaid+dStop+2^{-N}D_Ndt\) before the selected child
readout is counted.  The selected endpoint lower-admission branch is no longer
a separate source wall.

## 94. The visible legal and moving-selector faces are not tail sources

The tail material-record line in `(TFE2748B.760)' still lists five residue
classes.  Two of them contain parts that are already outside the retained
source: legal/collar leakage and ordinary motion of the selector, collar,
order-lock, or reselection chart.  Those pieces are not permitted to remain in
the tail source after the stopped quotient has been formed.

Split the selector and legal residues as

\[
\mathcal R_{\rm sel}
=
\mathcal R_{\rm sel}^{mov}
+\mathcal R_{\rm sel}^{shape},
\qquad
\mathcal R_{\rm legal}
=
\mathcal R_{\rm legal}^{paid}
+\mathcal R_{\rm legal}^{sing}.
\tag{TFE2748B.823}
\]

Here \(\mathcal R_{\rm sel}^{mov}\) is finite selector/collar/order-lock/
reselection motion in the stopped parent frame, and
\(\mathcal R_{\rm legal}^{paid}\) is the legal/collar trace already separated
when the retained quotient was defined.  By the paid-selector line
`(TFE2748B.65)' and the quotient exhaustion in Sections 39--44,

\[
\mathcal R_{\rm sel}^{mov}
+\mathcal R_{\rm legal}^{paid}
\le
C_N(d\Theta^0+dPaid+dStop).
\tag{TFE2748B.824}
\]

Thus these pieces cannot be the remaining Gold source.  Any selector residue
that survives `(TFE2748B.824)' is not ordinary selector motion; it is loss of a
stable selected carrier graph in the same sense as the Body-III carrier defect.
Any legal residue that survives is not an already legal collar term; it is a
non-terminal-AC singular trace that has failed to enter the paid/legal ledger.

Consequently `TailMaterialRecordPayment.A' is equivalent to the reduced
payment line

\[
\boxed{
\mathcal R_{\rm sel}^{shape}
+\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}^{sing}
+\mathcal R_{\rm geom}^{tail}
\le
C_N(d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt).
}
\tag{TFE2748B.825}
\]

The reduction is lossless: adding `(TFE2748B.824)' to `(TFE2748B.825)' gives
`(TFE2748B.760)', and `(TFE2748B.760)' trivially gives `(TFE2748B.825)' after
discarding the nonnegative paid selector/legal subfaces.  Therefore the active
tail-payment source is not "all selector/legal material."  It is the four
genuine retained-failure faces:

\[
\boxed{
\text{unstable selected-carrier shape}
\ +\ \text{terminal signed-partner saturation}
\ +\ \text{endpoint jump}
\ +\ \text{singular legal trace or material-record/tower-rung escape}.
}
\tag{TFE2748B.826}
\]

All four are same-parent failures of the retained material record before child
clipping.  Proving `(TFE2748B.825)' from arbitrary original smooth data is now
the exact remaining form of `TailMaterialRecordPayment.A' and hence, by
`(TFE2748B.822)', of `CriticalCapacityVariationStorage.A'.

## 95. Selected-carrier shape is not an independent fifth source

The term \(\mathcal R_{\rm sel}^{shape}\) in `(TFE2748B.825)' needs one more
audit.  After `(TFE2748B.824)' removes ordinary finite selector, collar,
order-lock, and reselection motion, a surviving selector-shape defect can only
mean that the represented selected positive carrier is not tight as a
same-parent material record.  It is not a new physical account.

Let \(\mu_n^{sel}\) be the represented nonnegative selected carrier on the
extended same-carrier space

\[
C=\Omega\times\mathfrak L\times\mathfrak R,
\tag{TFE2748B.827}
\]

where \(\Omega\) is normalized spacetime, \(\mathfrak L\) is the selector,
cutoff, and packet-label coordinate, and \(\mathfrak R\) is the tower-rung and
projection-label coordinate.  The selected-carrier tightness decomposition gives

\[
\mathcal R_{\rm sel}^{shape}
\le
C_N\bigl(
K_{\rm dom}+K_{\rm lab}+K_{\rm rung}+K_{\rm ui}
\bigr)
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.828}
\]

Here \(K_{\rm dom}\) is domain, gauge, collar, or center escape;
\(K_{\rm lab}\) is selector/cutoff/packet-label escape; \(K_{\rm rung}\) is
tower-rung/projection-label escape; and \(K_{\rm ui}\) is failure of
same-carrier uniform integrability on small moving terminal/collar sets.
This is just Prokhorov tightness in the actual selected-carrier coordinates.

The first three terms are already in the material-record tail currency.  Domain
or gauge escape is either paid exterior/collar motion or Body-IV
material-record loss; label escape is either the paid selector/reselection
motion removed in `(TFE2748B.824)' or loss of finite label custody; and rung
escape is exactly `(TFE2748B.651)'--`(TFE2748B.655)'.  Therefore

\[
K_{\rm dom}+K_{\rm lab}+K_{\rm rung}
\le
C_N\mathcal R_{\rm geom}^{tail}
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.829}
\]

It remains to locate \(K_{\rm ui}\).  A same-carrier UI failure on a shrinking
terminal or collar set is a terminal trace atom of the full Hodge-Stokes packet.
The signed terminal trace balance routes such an atom as

\[
K_{\rm ui}
\le
C_N\bigl(
\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}^{sing}
\bigr)
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.830}
\]

Indeed, visible terminal loss is paid, a retained negative terminal
countertrace is the signed-saturation branch, a positive storage atom is the
endpoint jump branch, and collar/legal concentration is the singular legal
branch.  No selected-shape atom remains after these four destinations are
removed.

Combining `(TFE2748B.828)'--`(TFE2748B.830)' gives

\[
\boxed{
\mathcal R_{\rm sel}^{shape}
\le
C_N\bigl(
\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}^{sing}
+\mathcal R_{\rm geom}^{tail}
\bigr)
+d\Theta^0+dPaid+dStop .
}
\tag{TFE2748B.831}
\]

Thus \(\mathcal R_{\rm sel}^{shape}\) is not an independent fifth source in
the tail-material payment theorem.  The reduced source line equivalent to
`(TFE2748B.825)' is

\[
\boxed{
\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm legal}^{sing}
+\mathcal R_{\rm geom}^{tail}
\le
C_N(d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt).
}
\tag{TFE2748B.832}
\]

The reduction is exact in both directions up to the fixed constant \(C_N\):
`(TFE2748B.825)' trivially implies `(TFE2748B.832)' by dropping the nonnegative
selector-shape term, while `(TFE2748B.832)' and `(TFE2748B.831)' imply
`(TFE2748B.825)'.  Consequently the remaining arbitrary-data source is no
longer "selector instability."  It is the terminal same-parent material-record
anti-atom:

\[
\boxed{
\text{signed-partner saturation}
\ +\ \text{endpoint storage jump}
\ +\ \text{singular legal/collar trace}
\ +\ \text{geometry, tower-rung, or material-record escape}.
}
\tag{TFE2748B.833}
\]

This is still not the critical capacity storage theorem.  It is the next
strict reduction of the theorem: proving `(TFE2748B.832)' from arbitrary
original smooth data proves `TailMaterialRecordPayment.A', hence
`CriticalCapacityVariationStorage.A' by `(TFE2748B.822)'.

## 96. Singular legal/collar trace is terminal trace routing, not a source

The phrase \(\mathcal R_{\rm legal}^{sing}\) in `(TFE2748B.832)' also needs to
be typed.  Legal material that is summable or uniformly terminal-absolutely
continuous has already been removed into \(\mathcal R_{\rm legal}^{paid}\) in
`(TFE2748B.823)'--`(TFE2748B.824)'.  The only remaining piece is a collar or
legal trace that fails terminal AC while it is still being treated as retained
same-parent material.

Let \(d\lambda_P^{leg}\) be this retained legal/collar trace on the stopped
terminal packet.  Split it by the terminal-AC fork:

\[
d\lambda_P^{leg}
=d\lambda_P^{leg,ac}
+d\lambda_P^{leg,atom}
+d\lambda_P^{leg,drift},
\tag{TFE2748B.834}
\]

where \(d\lambda_P^{leg,ac}\) is summable or terminal-AC, \(d\lambda_P^{leg,atom}\)
is the positive terminal trace atom produced by failure of terminal AC, and
\(d\lambda_P^{leg,drift}\) is collar/gauge/packet drift of the support of the
legal trace.  The first term is paid:

\[
d\lambda_P^{leg,ac}\le C_N(dPaid+dStop+d\Theta^0).
\tag{TFE2748B.835}
\]

The third term is not a legal account at all; it is material-record geometry or
collar escape:

\[
d\lambda_P^{leg,drift}
\le
C_N\mathcal R_{\rm geom}^{tail}
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.836}
\]

For the atom term, the positive trace compactness lemma says that failure of
terminal AC produces a terminal Radon atom and no hidden fourth measure-theoretic
case.  The full Hodge-Stokes terminal trace balance then routes that atom by
signed terminal balance:

\[
d\lambda_P^{leg,atom}
\le
C_N(\mathcal R_{\rm sat}+\mathcal R_{\rm jump})
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.837}
\]

Here the retained negative countertrace is the signed-partner saturation
branch, visible loss is paid, and positive terminal storage is the endpoint
jump branch.  This is the same routing as the harmonic pressure-memory collar
trace: a collar trace is legal/collar paid when it has terminal AC or is
summable; when it concentrates, it is a terminal trace atom; when its support
drifts, it is selector/collar/material-record escape.

Combining `(TFE2748B.834)'--`(TFE2748B.837)' gives

\[
\boxed{
\mathcal R_{\rm legal}^{sing}
\le
C_N(\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm geom}^{tail})
+d\Theta^0+dPaid+dStop .
}
\tag{TFE2748B.838}
\]

Therefore singular legal/collar trace is not an independent source in the
tail-material payment theorem.  The active source line is equivalent to

\[
\boxed{
\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm geom}^{tail}
\le
C_N(d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt).
}
\tag{TFE2748B.839}
\]

The implication `(TFE2748B.832)' \(\Rightarrow\) `(TFE2748B.839)' is immediate
by dropping \(\mathcal R_{\rm legal}^{sing}\), and `(TFE2748B.839)' together
with `(TFE2748B.838)' gives `(TFE2748B.832)' after enlarging \(C_N\).  Thus the
remaining same-parent terminal material-record anti-atom has three faces:

\[
\boxed{
\text{signed-partner saturation}
\ +\ \text{endpoint storage jump}
\ +\ \text{geometry, tower-rung, or material-record escape}.
}
\tag{TFE2748B.840}
\]

Proving `(TFE2748B.839)' from arbitrary original smooth data is now the reduced
form of `TailMaterialRecordPayment.A', and by `(TFE2748B.822)' it is sufficient
for `CriticalCapacityVariationStorage.A'.  This reduction uses only
before-clipping legal/collar routing and terminal trace compactness; it does
not define any reserve from a future selected tail.

## 97. The three remaining faces are one terminal anti-atom reserve problem

The three terms in `(TFE2748B.839)' should not be read as three unrelated
physical sources.  After the raw signed atom construction, selected endpoint
admission, selector-shape routing, and legal/collar terminal routing have been
removed, a retained positive terminal remainder has only one way to stay
unpaid: it must survive as a same-parent terminal anti-atom of the coupled
packet before clipping.

Let \(d\mathfrak t_{P,n}^+\) be the positive terminal trace/readout measure of
the retained full Hodge-Stokes/tower packet on a normalized stopped parent
sequence, after \(d\Theta^0+dPaid+dStop\), visible legal/collar material, and
ordinary selector motion have been subtracted.  After weak-star extraction,
\(d\mathfrak t_{P,n}^+\rightharpoonup d\mathfrak t_{P,*}^+\).  For each
retained terminal test set \(E\subset X_P\), define the terminal anti-atom
measure by

\[
\mathfrak A_P^{term}(E)
:=
d\mathfrak t_{P,*}^+(\{0\}\times E)
=
\lim_{\theta\downarrow0}
d\mathfrak t_{P,*}^+((-\theta,0]\times E),
\tag{TFE2748B.841}
\]

with the convention that all limits are taken on the retained same-parent
carrier after the fixed finite-window relay has been exhausted.  By the
positive trace compactness criterion, \(d\mathfrak A_P^{term}=0\) is exactly
uniform positive terminal absolute continuity of the retained terminal trace
against all retained terminal test sets; if this uniform AC fails, a positive
terminal Radon atom is produced.

The full-packet terminal trace balance routes such an atom through the same
three retained faces left in `(TFE2748B.839)'.  Positive storage growth is the
endpoint jump face.  Retained negative countertrace is signed-partner
saturation.  Failure of heat-scale return, tower-rung custody, or material
coefficient return is geometry/tower/material-record escape.  Hence

\[
d\mathfrak A_P^{term}
\le
C_N\bigl(
\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm geom}^{tail}
\bigr)
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.842}
\]

Conversely, none of the three faces can occur without terminal anti-atom mass
or paid material.  The endpoint positive-jump criterion gives
\(\mathcal R_{\rm jump}\le C_Nd\mathfrak A_P^{term}+d\Theta^0+dPaid+dStop\).
The signed-saturation branch is the retained terminal negative countertrace of
the same positive atom after finite signed partners and non-Zeno donor trees
have been paid.  The Body-IV return recurrence and heat-scale return criterion
put geometry/tower/material-record escape precisely at failure of terminal
return AC or unbounded shifted-rung custody.  Therefore

\[
\mathcal R_{\rm sat}
+\mathcal R_{\rm jump}
+\mathcal R_{\rm geom}^{tail}
\le
C_Nd\mathfrak A_P^{term}
+d\Theta^0+dPaid+dStop .
\tag{TFE2748B.843}
\]

Combining `(TFE2748B.842)'--`(TFE2748B.843)', `(TFE2748B.839)' is equivalent,
up to the fixed constant \(C_N\), to the single same-parent anti-atom reserve
line

\[
\boxed{
d\mathfrak A_P^{term}
\le
C_N(d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt).
}
\tag{TFE2748B.844}
\]

Equivalently, in the terminal-strip form,

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_{n\to\infty}
d\mathfrak t_{P,n}^+((-\theta,0]\times E)
\le
C_N(d\Theta^0+dPaid+dStop+2^{-N}D_N\,dt)(E)
\quad\text{for every retained terminal }E\subset X_P .
}
\tag{TFE2748B.845}
\]

The source-square/no-waste supplement identifies one sufficient producer for
`(TFE2748B.844)': same-carrier source-square domination plus an unweighted
terminal square budget, or equivalently a bounded-below strict no-waste
Lyapunov drop for the selected critical action.  In the present notation that
supplier is

\[
\boxed{
\int_{\sigma_0}^{\infty}
\mathcal A_{\rm sel}^{term}(\sigma)\,d\sigma
\le
C_N(u_0)+dPaid+dStop,
}
\tag{TFE2748B.846}
\]

where \(\mathcal A_{\rm sel}^{term}\) is the same selected terminal action
density whose terminal concentration gives `(TFE2748B.841)'.  The finite
energy/local-energy package gives only the radius-discounted version of this
budget, so `(TFE2748B.846)' is not obtained by raw \(L^1_t\) mass or by the
raw signed atom pairing in Section 90.

Thus the active Gold source has been lowered to one statement:

\[
\boxed{
\texttt{SameParentTerminalAntiAtomReserve.A `(TFE2748B.844)'--`(TFE2748B.846)'}
\Longleftrightarrow
\texttt{TailMaterialRecordPayment.A `(TFE2748B.839)'.}
}
\tag{TFE2748B.847}
\]

This is still a producer theorem, not a consumer reduction.  The repo now says
plainly that saturation, endpoint jump, and geometry/tower escape are the three
readouts of the same terminal anti-atom; proving the critical capacity
variation/storage line from arbitrary original smooth data requires the
unweighted same-parent terminal reserve `(TFE2748B.846)'.

## 98. The pre-clipping signed atom attachment is constructed from original data

The latest signed-measure request is a raw parent theorem, not the remaining
Gold \(L^1\) supplier.  Work before any positive selected clipping, in the
stopped material chart of one compact parent packet \(P\).  After route,
collar, metric, Hodge-commutator, detector-motion, legal, stop, and endpoint
leakage have been separated, the retained coupled pressure-Hodge/material
residue is

\[
dJ_P=dJ_P^0+dR_P,\qquad
dJ_P^0(X_P)=0,\qquad
|dR_P|\le d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.848}
\]

The zero-mass clause is the exact parent-frame content of pressure as a
constraint force: the retained pressure-Hodge coordinate of the coupled
pressure-viscosity-incompressibility-velocity transaction redistributes the
same parent packet after the already paid boundary/frame/leakage terms have
been removed.

For arbitrary original smooth preterminal data, the stopped-chart density
representative \(F_P(t)\) satisfies the Hardy bound from Section 82,

\[
\|F_P(t)\|_{\mathcal H^1(X_P)}
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t).
\tag{TFE2748B.849}
\]

Thus the local Hardy atom theorem gives zero-mean atoms \(a_{\alpha,t}\) in the
same parent chart and coefficients \(c_\alpha(t)\) such that

\[
dJ_P^0(t)=\sum_\alpha c_\alpha(t)a_{\alpha,t}\,d\mathfrak m_P,
\qquad
\int_{X_P}a_{\alpha,t}\,d\mathfrak m_P=0,
\tag{TFE2748B.850}
\]

with coefficient and leakage control

\[
\sum_\alpha |c_\alpha(t)|+|(dR_P)_+|(t)
\le
C_N\|\nabla u(t)\|_2^2
+dPaid_P^{collar}(t)+dLegal_P(t)+dStop_P(t).
\tag{TFE2748B.851}
\]

Integrating in time and using the Leray energy inequality gives, for every
\(\tau<T_*\),

\[
\int_0^\tau\sum_\alpha |c_\alpha(t)|\,dt
+\int_0^\tau |(dR_P)_+|(t)
\le
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P .
\tag{TFE2748B.852}
\]

Equivalently, using the Jordan split of the zero-mass measure, choose a
same-parent transport coupling \(\pi_P\) between its positive and negative
lobes:

\[
dJ_P^0=dJ_P^+-dJ_P^-,
\qquad
dJ_P^+(X_P)=dJ_P^-(X_P),
\tag{TFE2748B.853}
\]

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)
=
{1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.854}
\]

This is the atomic attachment in its most literal form.  Every positive raw
lobe has an opposite signed lobe in the same stopped parent packet:

\[
(dJ_P)_+
\preceq_{atom}
dJ_P^{ret,-}+(dR_P)_+,
\qquad
dJ_P^{ret,-}:=(\mathrm{pr}_2)_\#\pi_P .
\tag{TFE2748B.855}
\]

The retained opposite lobe is bounded-below parent-reserve depletion.  Let

\[
B_P^{atom}:=
C_N{\|u_0\|_2^2\over\nu}
+Paid_P+Legal_P+Stop_P
\]

be the raw coefficient/leakage budget in `(TFE2748B.852)' and define

\[
M_P^{atom}(\tau)
:=
B_P^{atom}
-dJ_P^{ret,-}\bigl([0,\tau]\times X_P\bigr).
\tag{TFE2748B.856}
\]

Then `(TFE2748B.852)' gives

\[
M_P^{atom}(\tau)\ge0,
\qquad
-dM_P^{atom}=dJ_P^{ret,-}
\quad\text{on retained parent atoms.}
\tag{TFE2748B.857}
\]

Therefore arbitrary original smooth data constructs the same-parent
pre-clipping signed atomic decomposition, controls coefficients and leakage,
and records the retained opposite lobe as a bounded-below parent reserve drop:

\[
\boxed{
\texttt{SignedPressureHodgeAtomicAttachment.A is proved at the raw parent level
by `(TFE2748B.848)'--`(TFE2748B.857)'.}
}
\tag{TFE2748B.858}
\]

This removes the raw attachment from the Gold source burden.  The remaining
Gold \(L^1\) theorem starts only after the selected critical weight is pulled
onto this same atom coupling.  In that weighted ledger the exact leftover is

\[
W_P^{crit}(x)\,d\pi_P(x,y)
\le
W_P^{crit}(y)\,d\pi_P(x,y)
+
W_P^{crit}(y)\bigl(e^{[b_P(x)-b_P(y)]_+}-1\bigr)d\pi_P(x,y),
\tag{TFE2748B.859}
\]

with \(b_P=\log W_P^{crit}\).  The first term is the weighted retained-lobe
reserve; the second is selected log-meter variation.  Proving root-finiteness
and strict storage for these weighted terms is exactly the selected-critical
producer still isolated in Sections 91--97, equivalently the strict
half-barrier / positive critical transfer / bounded-below same-material storage
line from the original coupled packet.

## 99. The weighted atom upgrade is the one-sided aligned-current inequality

Section 98 closes the signed attachment at the raw parent level.  The remaining
selected-weighted problem is not another atom theorem.  It is the same
one-sided aligned-current estimate from Sections 35--44, now read through the
current atom ledger.

Let \(F_P\) be the parent-announced selected active density carried by the
weighted atom ledger after finite-price raw material is removed, and let
\(\Phi(r)=r\log(e+r)\).  The entropy-Fisher drain is

\[
dI_P
:=
\Phi''(F_P)
\langle A_P\nabla_{\mathfrak m}F_P,\nabla_{\mathfrak m}F_P\rangle
\,d\mathfrak m_P .
\tag{TFE2748B.860}
\]

The renormalized coupled packet equation from `(TFE2748B.250)' writes the
non-passive selected-meter motion before clipping as

\[
\mathcal K_{\Psi,P}+\mathcal G_{\Psi,P}
=
\operatorname{div}_{\mathfrak m}J_{\Psi,P}
+k_{\Psi,P}^0
+r_{\Psi,P}^{paid},
\tag{TFE2748B.861}
\]

where \(J_{\Psi,P}\) is the same-parent current generated by pressure-Hodge,
transported frame/covectors, selector/collar motion, turnstile/exchange, and
the root generator.  The only part of this current that can create the selected
\(L^1\) bill is its positive anti-gradient alignment with the entropy density:

\[
dQ_P^{align}
:=
\Bigl[
-\Phi''(F_P)
\langle\nabla_{\mathfrak m}F_P,J_{\Psi,P}\rangle
+\Phi'(F_P)k_{\Psi,P}^{0}
\Bigr]_+
\,d\mathfrak m_P .
\tag{TFE2748B.862}
\]

The exact source estimate is therefore

\[
\int_{P'} dQ_P^{align}
+[d\mathcal C_P^{crit}]_+(P')
\le
\vartheta\int_{P'} dI_P
+d\Theta_P^0(P')
+dPaid_P(P')
+dStop_P(P'),
\qquad C_N\vartheta<1,
\tag{TFE2748B.863}
\]

with the critical capacity \(\mathcal C_P^{crit}\) built before clipping and
with positive variation paid in the same parent packet.

This line is sufficient for the weighted atom storage.  Indeed, the entropy
chain rule and singular-entry admission give

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
d\mathcal E_P^{crit}
+dPaid_P,
\tag{TFE2748B.864}
\]

and

\[
d\mathcal E_P^{crit}
=
-dM_P^{crit}
+d\mathcal C_P^{crit},
\qquad
M_P^{crit}:=\mathcal C_P^{crit}-\mathcal E_P^{crit}.
\tag{TFE2748B.865}
\]

The integration-by-parts identity `(TFE2748B.258)' says that the positive
variation of the selected meter is exactly bounded by \(dQ_P^{align}\) plus paid
collar/route/stop material.  Combining `(TFE2748B.863)'--`(TFE2748B.865)' gives

\[
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}
\le
-dM_P^{crit}
+\vartheta\,dI_P
+d\Theta_P^0
+dPaid_P
+dStop_P,
\qquad C_N\vartheta<1 .
\tag{TFE2748B.866}
\]

Since \(dI_P\) is a component of the original generator/Fisher clock
\(d\Omega_P^{gen}\), `(TFE2748B.866)' is the early-source storage
`(TFE2748B.730)'.  Sections 84, 91, and 92 then give the current-edge
consumption chain

\[
\boxed{
\texttt{one-sided aligned-current domination `(TFE2748B.863)'}
\Longrightarrow
\texttt{FullExchangeCriticalDepletionStorage.A `(TFE2748B.715)'}
\Longrightarrow
\texttt{CriticalCapacityVariationStorage.A `(TFE2748B.801)'.}
}
\tag{TFE2748B.867}
\]

Conversely, after the raw atom construction, selected endpoint admission,
retained heat-lag contraction, legal/stop routing, and terminal anti-atom
routing are removed, failure of `CriticalCapacityVariationStorage.A' forces a
normalized aligned-current survivor:

\[
\int_{P_n}dQ_{P_n}^{align}=1,
\qquad
\int_{P_n}dI_{P_n}
+\Theta_{P_n}^0(P_n)
+Paid(P_n)
+Stop(P_n)
+[d\mathcal C_{P_n}^{crit}]_+(P_n)
\longrightarrow0.
\tag{TFE2748B.868}
\]

Thus the exact remaining arbitrary-data source theorem is

\[
\boxed{
\texttt{OneSidedAlignedCurrentDomination.A `(TFE2748B.863)'}
}
\tag{TFE2748B.869}
\]

in the stopped parent frame, for the original coupled
pressure-viscosity-incompressibility-velocity packet before child positive
clipping.  This is the selected-weighted form of the participation law.  It
says that the parent packet may re-coordinate the selected meter, but the
positive anti-gradient part of that re-coordination must be absorbed by the same
parent Fisher/generator drain, paid capacity variation, or legal/stop material
with strict margin.  Raw atom pairing, BMO/Kazamaki, entropy layer-cake,
terminal anti-atom routing, and no-recount are all consumers below this line;
they do not replace `(TFE2748B.863)'.

## 100. Entropy-flux splitting removes the reversible aligned-current recount

The one-sided aligned-current line in Section 99 still contains one reversible
piece that should not be treated as a source.  The pressure/Hodge/self-advection
part of the coupled packet is volume preserving in the stopped parent measure.
It may rearrange the selected density, but its pure transport contribution is an
exact entropy flux.  The only part that can create a real selected source after
this flux is paired is the positive material motion of the selected meter.

Let \(B_P\) denote the retained volume-preserving pressure/Hodge/self-advection
generator in the stopped parent chart, after collar, route, legal, stop,
endpoint, selector-motion, and reselection terms have been separated.  Thus

\[
\operatorname{div}_{\mathfrak m}B_P=0
\tag{TFE2748B.870}
\]

on the retained interior.  On this reversible face the selected active density
has the form

\[
F_P=W_P\rho_P,
\qquad
D_t^P\rho_P+\operatorname{div}_{\mathfrak m}(B_P\rho_P)=0,
\tag{TFE2748B.871}
\]

so, as in `(TFE2748B.278)',

\[
D_t^P F_P+\operatorname{div}_{\mathfrak m}(B_PF_P)
=
F_P\,\mathcal L_P\log W_P,
\qquad
\mathcal L_P:=D_t^P+B_P\cdot\nabla_{\mathfrak m}.
\tag{TFE2748B.872}
\]

Set

\[
H_\Phi(r):=r\Phi'(r)-\Phi(r),
\qquad
H_\Phi'(r)=r\Phi''(r).
\tag{TFE2748B.873}
\]

The reversible current contribution in `(TFE2748B.862)' is then an exact
divergence:

\[
-\Phi''(F_P)
\langle\nabla_{\mathfrak m}F_P,F_PB_P\rangle
=
-B_P\cdot\nabla_{\mathfrak m}H_\Phi(F_P)
=
-\operatorname{div}_{\mathfrak m}(H_\Phi(F_P)B_P).
\tag{TFE2748B.874}
\]

Therefore the signed reversible aligned-current measure

\[
dJ_P^{rev}
:=
-\operatorname{div}_{\mathfrak m}(H_\Phi(F_P)B_P)\,d\mathfrak m_P
\tag{TFE2748B.875}
\]

has zero retained parent mass after paid boundary flux is removed:

\[
dJ_P^{rev}(P')=0
\qquad
\text{mod }d\Theta_P^0(P')+dPaid_P(P')+dStop_P(P').
\tag{TFE2748B.876}
\]

Taking the Jordan split and same-parent coupling exactly as in Sections 82 and
98 gives a reversible entropy-flux reserve \(M_P^{rev}\) with

\[
(dJ_P^{rev})_+
\preceq_{atom}
-dM_P^{rev}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.877}
\]

This is the precise no-recount statement for the reversible transport part:
positive pieces of the entropy flux are paired with opposite signed pieces in
the same parent packet before child clipping.  They can lower a parent reserve;
they are not fresh selected source.

After this split, the non-passive selected source is the meter-motion density

\[
dQ_P^{meter}
:=
\Phi'(F_P)F_P
\bigl[\mathcal L_P\log W_P\bigr]_+
\,d\mathfrak m_P
\tag{TFE2748B.878}
\]

plus the already named connection, heat-lag, endpoint, collar, legal, stop, and
route ledgers.  More explicitly, using `(TFE2748B.282)'--`(TFE2748B.287)',

\[
dQ_P^{align}
\le
-dM_P^{rev}
+dQ_P^{meter}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.879}
\]

Consequently the storage line in Section 99 follows from the selected-meter
same-history capacity estimate

\[
dQ_P^{meter}
+[d\mathcal C_P^{crit}]_+
\le
-dM_P^{hist}
+\vartheta\,dI_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\vartheta<1,
\tag{TFE2748B.880}
\]

with \(M_P^{hist}\) bounded below from the original data.  Taking

\[
M_P^{src}:=M_P^{rev}+M_P^{hist}
\tag{TFE2748B.881}
\]

and combining `(TFE2748B.879)'--`(TFE2748B.880)' gives the early-source storage
form `(TFE2748B.866)' directly.

The local affine normal form `(TFE2748B.297)'--`(TFE2748B.302)' shows that
`(TFE2748B.880)' cannot be proved by a local sign identity.  The metric part of
\(\mathcal L_P\log W_P\) can be positive in a pressure-balanced incompressible
affine visit while the local viscous Laplacian vanishes.  Therefore the
nonlocal same-history capacity law is the real producer.  In the notation of
Sections 56--58, `(TFE2748B.880)' is supplied by the two branch estimates

\[
\texttt{AugmentedRepeatedCoreNonreuseStorage.A `(TFE2748B.457)'}
\quad\text{and}\quad
\texttt{AugmentedShrinkingCoreEscapePacking.A `(TFE2748B.458)'.}
\tag{TFE2748B.882}
\]

Equivalently, the current-edge source chain is now

\[
\boxed{
\begin{array}{c}
\texttt{entropy-flux pairing `(TFE2748B.874)'--`(TFE2748B.879)'}\\
+\texttt{same-history selected-meter capacity `(TFE2748B.880)'}\\
\Longrightarrow
\texttt{OneSidedAlignedCurrentDomination.A / early-source storage.}
\end{array}}
\tag{TFE2748B.883}
\]

This section proves the reversible part of the aligned-current theorem from the
original coupled packet.  It also identifies the remaining non-reversible source
without reopening raw atom attachment: prove the same-history selected-meter
capacity `(TFE2748B.880)', equivalently the repeated-core and shrinking-core
capacity estimates `(TFE2748B.457)'--`(TFE2748B.458)', from arbitrary original
smooth data before clipping.

## 101. Same-history capacity is the full-exchange depletion face

The repeated-core and shrinking-core wording in `(TFE2748B.882)' is only a
branch coordinate for the non-reversible selected-meter source.  It must not be
read as two new stores of material.  After the continuous parent-measure
correction, both branches are consumed by one before-clipping object: the
selected meter changes only through the original root generator of the same
stopped parent packet.

Let \(G_P^{root}\) be the stopped original root generator for the coupled
pressure-Hodge, viscous/Stokes, self-advection, incompressibility-frame,
covector, selector, collar, reset, endpoint, and legal/stop variables after
parent subtraction.  Its generator clock is

\[
d\Omega_P^{gen}
:=
dI_P
+d\Omega_P^{frame/collar}
+d\Omega_P^{reset}
+d\Omega_P^{crit}
+d\Omega_P^{end},
\tag{TFE2748B.884}
\]

where \(dI_P\) is the entropy-Fisher drain in `(TFE2748B.860)'.  The continuous
transition derivative is not an independent source.  It is the stopped
transition-coordinate projection

\[
G_P^{tr}=\Pi_P^{tr}G_P^{root}
\tag{TFE2748B.885}
\]

with the selected first-ratio weight already pulled back to the parent measure.
The parent-known channel bounds give

\[
\|\Pi_P^{tr}F\|_{\mathfrak H_P}^2
\le
C_N\|F\|_{\mathfrak H_P}^2
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
w_P^{tr}\le C_N H_P^*+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.886}
\]

Thus the transition derivative measure satisfies

\[
d\Lambda_P^{tr}
\le
C_N\,d\Lambda_P^{orig}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
d\Lambda_P^{orig}:=H_P^*\|G_P^{root}\|_{\mathfrak H_P}^2\,d\sigma dt .
\tag{TFE2748B.887}
\]

The repeated-core record/return and the shrinking-core reset estimate are both
finite-overlap consumers of this same derivative measure.  In the continuous
parent transition notation,

\[
\int_{P'} R_P^{tr,+}\,d\Theta_P^{tr}
\le
C_N\int_{P'}d\Lambda_P^{tr}
+d\Theta_P^0(P')+dPaid_P(P')+dStop_P(P').
\tag{TFE2748B.888}
\]

Here the repeated-core half is the parent-fixed stopped potential identity
\(A_{sel}(e)\le C[P(Q')-P(Q)]_++legal\), with negative return equal to finite
variation of the same stopped potential.  The shrinking-core half is the reset
average identity \(D_e=|I_e|^{-1}\int_I G_e+legal\), where the harmonic
selected weight is inside the parent integral and is cancelled by Cauchy plus
bounded stopped overlap.  Neither half counts child-normalized units after the
rescaling.

The selected-meter source in `(TFE2748B.880)' is dominated by this continuous
transition readout plus the finite chart/collar/legal/stop pieces:

\[
dQ_P^{meter}
+[d\mathcal C_P^{crit}]_+
\le
C_N R_P^{tr,+}\,d\Theta_P^{tr}
+d\Theta_P^0+dPaid_P+dStop_P.
\tag{TFE2748B.889}
\]

Combining `(TFE2748B.887)'--`(TFE2748B.889)' gives the deterministic
same-history reduction

\[
dQ_P^{meter}
+[d\mathcal C_P^{crit}]_+
\le
C_N\,d\Lambda_P^{orig}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.890}
\]

This is still only a comparison.  The actual producer is the strict original
ledger/full-exchange depletion inequality.  Introduce the parent-known
full-exchange critical ledger

\[
d\Xi_P^{FE}
:=
d\Xi_P^{Hodge}
+d\Xi_P^{frame/collar}
+d\Xi_P^{reset}
+d\Xi_P^{crit}
+d\Xi_P^{end},
\tag{TFE2748B.891}
\]

all constructed before child positive clipping from the same root current,
turnstile/exchange, collar/Hodge/frame motion, reselection/reset, and first
critical/endpoint births.  The before-clipping active-density comparison is

\[
dQ_P^{meter}
+[d\mathcal C_P^{crit}]_+
\le
C_N\,d\Xi_P^{FE}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.892}
\]

The strict full-exchange depletion storage theorem is

\[
d\Xi_P^{FE}
\le
-dM_P^{FE}
+\theta_{FE}\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\theta_{FE}<1,
\tag{TFE2748B.893}
\]

with \(M_P^{FE}\) bounded below by a constant depending only on the original
smooth data and the fixed truncation level \(N\).  Adding `(TFE2748B.892)' and
`(TFE2748B.893)' yields

\[
dQ_P^{meter}
+[d\mathcal C_P^{crit}]_+
\le
-dM_P^{hist}
+\vartheta\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\vartheta:=C_N\theta_{FE}<1.
\tag{TFE2748B.894}
\]

Since \(dI_P\) is the entropy-Fisher face of \(d\Omega_P^{gen}\), `(TFE2748B.894)'
is exactly the full-packet version of the local selected-meter estimate
`(TFE2748B.880)'.  Feeding it into `(TFE2748B.879)' gives the aligned-current
storage `(TFE2748B.866)' with the same strict absorption margin after the
standard full-exchange clock absorption.

Thus the raw atomic construction, coefficient/leakage control, and retained
opposite-lobe depletion are no longer open.  The remaining mathematical source
has been lowered to the single original-data theorem

\[
\boxed{
\texttt{FullExchangeCriticalDepletionStorage.A / BeforeClippingActiveDensityComparison.A}
}
\tag{TFE2748B.895}
\]

namely `(TFE2748B.892)'--`(TFE2748B.893)'.  Equivalently, this is
`SelectedGeneratorStorageCoercivity.A' / `PositiveCriticalTransferBound.A' with
the no-self-feeding margin exposed.  It must be proved from the original
coupled pressure-viscosity-incompressibility-velocity packet; otherwise
Sections 98--101 are a closed reduction chain, not Gold closure.

## 102. The full-strength local source package

The theorem named in `(TFE2748B.895)' has to be local on each stopped parent
subpacket.  A global bound on the total generator mass would not prevent a
selected child readout from hiding all of its positive mass in a thin terminal
or high-ratio face.  The source package must provide the selected meter, its
entropy, and the terminal thickness from the same original parent clock before
child clipping.

For every retained stopped parent subpacket \(P'\subseteq P\), set the
root-independent original error ledger

\[
dE_P^0:=d\Theta_P^0+dPaid_P+dStop_P+dEntry_P+dReturn_P .
\tag{TFE2748B.896}
\]

The first clause is the local no-self-feeding full-exchange storage:

\[
d\Omega_P^{gen}
\le
C_N\,d\Xi_P^{FE}+dE_P^0,
\qquad
d\Xi_P^{FE}
\le
-dM_P^{FE}
+\theta_{FE}d\Omega_P^{gen}
+dE_P^0,
\qquad
C_N\theta_{FE}<1 .
\tag{TFE2748B.897}
\]

Absorbing the second inequality into the first gives the stopped generator
Carleson bound

\[
\int_{P'}d\Omega_P^{gen}
\le
C_N\bigl(M_P^{FE}(P'_{in})-M_P^{FE}(P'_{out})\bigr)
+C_N\int_{P'}dE_P^0 .
\tag{TFE2748B.898}
\]

The second clause is the before-clipping selected log-carrier representation.
On each bounded-overlap stopped active fibre \(E\subset P'\), the selected
ratio has the form

\[
R_E={e^{b_E}\over \langle e^{b_E}\rangle_E},
\qquad
b_E=\int_E K_E\,dG_P^{root}-\psi_E+e_E ,
\tag{TFE2748B.899}
\]

where \(K_E\) is the parent-known Hodge/heat/selector testing kernel, \(\psi_E\)
is the same-parent normalizing potential, and \(e_E\) is paid by \(dE_P^0\).
The required stopped exponential-BMO/Kazamaki margin is

\[
\int_E
\exp\!\bigl((1+\varepsilon_N)|b_E-\langle b_E\rangle_E|\bigr)\,d\Lambda_E
\le
C_N\Lambda_E(E)+C_N\int_E dE_P^0 .
\tag{TFE2748B.900}
\]

From `(TFE2748B.899)'--`(TFE2748B.900)' one obtains the reverse-Holder bound

\[
\int_E R_E^{1+\varepsilon_N}\,d\Lambda_E
\le
C_N\Lambda_E(E)+C_N\int_E dE_P^0 .
\tag{TFE2748B.901}
\]

Since \(\Phi(r)=r\log(e+r)\le C_{\varepsilon_N}(1+r^{1+\varepsilon_N})\), this
gives the parent active entropy estimate

\[
\int_E\Phi(R_E)\,d\Lambda_E
\le
C_N\Lambda_E(E)+C_N\int_E dE_P^0 .
\tag{TFE2748B.902}
\]

The third clause is parent active thickness and terminal no-residue in the same
measure:

\[
\Lambda_E(E)+dA_P^{sel/chart}(E)+dA_P^{end}(E)
\le
C_N\int_E d\Omega_P^{gen}+C_N\int_E dE_P^0 .
\tag{TFE2748B.903}
\]

Together with `(TFE2748B.898)', this gives terminal-uniform finite parent
thickness.  In particular, for every terminal collar \(E_\delta\downarrow
E_{T_*}\),

\[
\lim_{\delta\downarrow0}\sup_{\tau<T_*}
\bigl[
\Lambda_{P,\tau}(E_\delta)
+A_{P,\tau}^{sel/chart}(E_\delta)
+A_{P,\tau}^{end}(E_\delta)
\bigr]
=0
\tag{TFE2748B.904}
\]

outside the already routed entry, legal, stop, and paid endpoint ledger.

Now sum `(TFE2748B.902)' over the stopped finite-overlap fibre cover and use
`(TFE2748B.903)'--`(TFE2748B.904)'.  The before-clipping active-density
comparison becomes

\[
\int_{P'}R_P^+\,d\Lambda_P
\le
C_N\int_{P'}d\Omega_P^{gen}
+C_N\int_{P'}dE_P^0 .
\tag{TFE2748B.905}
\]

Combining `(TFE2748B.905)' with `(TFE2748B.897)' gives
`(TFE2748B.892)'--`(TFE2748B.893)', hence `(TFE2748B.894)' and the selected
capacity variation storage line.  Therefore the deterministic consumer chain
below `(TFE2748B.895)' is closed by the local package

\[
\boxed{
\texttt{local full-exchange storage `(TFE2748B.897)'}
+\texttt{ log-carrier exponential BMO `(TFE2748B.899)'--`(TFE2748B.900)'}
+\texttt{ active thickness/no-residue `(TFE2748B.903)'--`(TFE2748B.904)'.}
}
\tag{TFE2748B.906}
\]

The minimal-bad form is correspondingly sharp.  If `(TFE2748B.906)' fails after
route, return, legal, stop, entry, and paid endpoint material are removed, then
there is a normalized stopped sequence with

\[
\int_{P_n}d\Omega_{P_n}^{gen}=1,
\qquad
\int_{P_n}dE_{P_n}^0\to0,
\qquad
\int_{P_n}\bigl(d\Xi_{P_n}^{FE}-\theta_{FE}d\Omega_{P_n}^{gen}\bigr)
\ge\eta_0>0 .
\tag{TFE2748B.907}
\]

The bounded-channel generator face is already a parent-subtracted zero-cost
rigidity consumer; derivative-announced reset faces are paid by the
first-exit average/Cauchy-overlap mechanism; and time-thick terminal faces are
removed by `(TFE2748B.904)'.  The only survivor of `(TFE2748B.907)' is a
scale-native first-birth or terminal endpoint carrier whose selected critical
size has not yet been dominated by a parent-known critical capacity before
clipping:

\[
dA_{P,crit}^{birth,+}
+dA_P^{end,naked}
\le
C_N\,dCap_P^{crit,root}
+dE_P^0,
\qquad
\int_{P'}dCap_P^{crit,root}
\le
-dB_P^{crit}
+\theta_c d\Omega_P^{gen}
+dE_P^0,
\tag{TFE2748B.908}
\]

with \(C_N\theta_c<1\) and \(B_P^{crit}\) bounded below from the original data.
Thus the current nonduplicate bottom is not raw atom pairing, reverse Holder,
dyadic counting, or repeated-core/reset routing.  It is the parent-known
critical capacity lower admission plus root packing/time-thick endpoint
domination in `(TFE2748B.908)'.  Proving `(TFE2748B.908)' from arbitrary original
smooth coupled data gives the local source package `(TFE2748B.906)', hence
`(TFE2748B.895)', `(TFE2748B.880)', and the critical capacity
variation/storage line.

## 103. Critical capacity is log-amplification entropy plus first entry

The capacity in `(TFE2748B.908)' is not an abstract new reserve.  On the
positive-baseline face it is the selected log-amplification entropy of the same
parent fibre.  On the zero-baseline face it is singular first-entry material
that must be admitted into the root capacity before clipping.

Let \(dR_P^{root}\) be the root-known parent reserve measure on the stopped
scale-native endpoint/cocycle space.  For a retained child \(Q\preceq P\), pull
the selected child density and its immediate parent baseline back to that same
measure:

\[
dA_Q^{sel,+}=f_Q\,dR_P^{root},
\qquad
dA_{\pi Q}^{sel,+}=f_{\pi Q}\,dR_P^{root}.
\tag{TFE2748B.909}
\]

On the positive-baseline fibre

\[
E_Q^{ac}:=\{f_{\pi Q}>0\},
\qquad
r_Q:={f_Q\over f_{\pi Q}},
\tag{TFE2748B.910}
\]

the before-clipping log ratio is represented by the original coupled selected
carrier:

\[
\log r_Q
=
\ell_Q(\Delta_QZ_P^S)-\psi_Q+e_Q,
\tag{TFE2748B.911}
\]

where \(Z_P^S\) is the same parent pressure-Hodge/strain/frame/exchange carrier,
\(\psi_Q\) is the connection/normalizing correction, and \(e_Q\) is legal,
stop, or paid.  Define the absolutely continuous critical capacity atom by

\[
\rho_{crit,P}^{ac}(E_Q)
:=
\int_{E_Q^{ac}}
f_Q\,\log(r_Q)_+\,dR_P^{root}.
\tag{TFE2748B.912}
\]

The selected-size lower edge is deterministic on the high-ratio face.  Since
\(r\le(2/\log2)r\log r\) for \(r\ge2\),

\[
\int_{E_Q^{ac}\cap\{r_Q\ge2\}}f_Q\,dR_P^{root}
\le
C\,\rho_{crit,P}^{ac}(E_Q).
\tag{TFE2748B.913}
\]

The low-ratio face \(r_Q<2\) is not a scale-native high-ratio birth.  It is
inherited/repeated-core material or reset/reselection material and is routed by
Sections 56--58 and 101.  Therefore the positive-baseline part of
`(TFE2748B.908)' is supplied once the root packing estimate

\[
\sum_{Q\subset P'}\rho_{crit,P}^{ac}(E_Q)
\le
C_N(u_0)\mathcal R(P')
+Paid(P')+Stop(P')
\tag{TFE2748B.914}
\]

is proved.

That packing is a deterministic consequence of the stopped root Carleson bound
for the log carrier.  If the retained bounded-overlap family satisfies

\[
\sum_{Q\subset P'}
\left|\ell_Q(\Delta_QZ_P^S)-\psi_Q\right|^2
dR_P^{root}(E_Q)
\le
C_N(u_0)\mathcal R(P')
+Paid(P')+Stop(P'),
\tag{TFE2748B.915}
\]

then the stopped John--Nirenberg/good-\(\lambda\) argument gives
`(TFE2748B.914)'.  Hence

\[
\boxed{
\texttt{log-ratio representation `(TFE2748B.911)'}
+
\texttt{root Carleson packing `(TFE2748B.915)'}
\Longrightarrow
\texttt{positive-baseline critical capacity in `(TFE2748B.908)'.}
}
\tag{TFE2748B.916}
\]

The zero-baseline face cannot be put into `(TFE2748B.912)'.  On

\[
E_Q^0:=\{f_{\pi Q}=0,\ f_Q>0\},
\tag{TFE2748B.917}
\]

the child is singular relative to the immediate selected parent baseline.  Its
detector is a first-entry scale-native endpoint detector.  With
\(\lambda_Q\) the physical zoom/heat-scale ratio, its parent norm has the
scale-native size

\[
\|K_Q^{parent}\|_{\mathfrak H_P}^2
\simeq
\lambda_Q^{-1}.
\tag{TFE2748B.918}
\]

Define the entry capacity atom by

\[
\rho_{crit,P}^{entry}(E_Q)
:=
dR_P^{root}(E_Q^0)\,
\|K_Q^{parent}\|_{\mathfrak H_P}^2
\simeq
\lambda_Q^{-1}dR_P^{root}(E_Q^0).
\tag{TFE2748B.919}
\]

First-entry admission and root packing are the singular part of
`(TFE2748B.908)':

\[
dA_{P,crit}^{entry,+}(Q)
\le
C_N\,\rho_{crit,P}^{entry}(E_Q)
+dE_P^0(Q),
\qquad
\sum_{Q\subset P'}\rho_{crit,P}^{entry}(E_Q)
\le
-dB_P^{entry}(P')
+\theta_e d\Omega_P^{gen}(P')
+dE_P^0(P'),
\tag{TFE2748B.920}
\]

with \(C_N\theta_e<1\) and \(B_P^{entry}\) bounded below from the original data.
The corrected critical capacity is therefore

\[
dCap_P^{crit,root}
:=
d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}.
\tag{TFE2748B.921}
\]

Combining `(TFE2748B.913)'--`(TFE2748B.921)' gives the exact reduction

\[
\boxed{
\begin{array}{c}
\texttt{positive-baseline log-ratio carrier and root Carleson `(TFE2748B.911)'--`(TFE2748B.915)'}\\
+\texttt{zero-baseline first-entry admission and packing `(TFE2748B.920)'}
\end{array}
\Longrightarrow
\texttt{critical parent-capacity lower/upper edge `(TFE2748B.908)'.}
}
\tag{TFE2748B.922}
\]

Thus the remaining arbitrary-data source has been narrowed again.  It is no
longer a general \(L^1\) estimate and no longer an abstract capacity theorem:
construct the before-clipping log-ratio carrier \(Z_P^S\) and its root Carleson
packing, and prove the singular first-entry endpoint atoms pack into the same
root critical capacity, all from the original coupled packet.

## 104. The log-ratio carrier is a root-generator projection

The positive-baseline carrier in `(TFE2748B.911)' has no separate existence
problem once the selected densities are pulled to one stopped parent fibre.  Its
algebra is the Radon--Nikodym chain rule.  The analytic content is the bounded
projection of the edge log-derivative detectors against the original root
generator; the only detector not covered by that projection is the
scale-native zero-baseline first-entry detector already isolated in
`(TFE2748B.917)'--`(TFE2748B.920)'.

Along a stopped ancestry

\[
P=Q_0\succ Q_1\succ\cdots\succ Q_m=Q,
\tag{TFE2748B.923}
\]

on the positive-baseline set \(f_{Q_j}>0\), the selected density ratios satisfy

\[
{f_Q\over f_P}
=
\prod_{j=1}^m {f_{Q_j}\over f_{Q_{j-1}}},
\qquad
\log {f_Q\over f_P}
=
\sum_{j=1}^m\log r_{Q_j}.
\tag{TFE2748B.924}
\]

Each edge ratio is the Jacobian of the same before-clipping selected detector
as it moves in stopped scale-memory.  Thus, in the parent scale coordinate
\(\sigma\),

\[
\partial_\sigma\log f_{Q_j}
=
\langle K_{Q_j},G_P^{root}\rangle
-\partial_\sigma\psi_{Q_j}
+\varepsilon_{Q_j}^{paid}.
\tag{TFE2748B.925}
\]

Integrating `(TFE2748B.925)' over the stopped edge interval \(I_{Q_j}\) gives

\[
\log r_{Q_j}
=
\ell_{Q_j}(\Delta_{Q_j}Z_P^S)
-\psi_{Q_j}
+e_{Q_j},
\tag{TFE2748B.926}
\]

and summing along `(TFE2748B.924)' gives the representation
`(TFE2748B.911)'.  Therefore the representation part is an exact
Radon--Nikodym/chain-rule consequence once the selected detector is parent
announced before clipping.

The root Carleson estimate `(TFE2748B.915)' follows from the bounded critical
log-derivative projection

\[
\sum_{e\subset P'}
dR_P^{root}(E_e)
\left|
\int_{I_e}\langle K_e,F\rangle\,d\sigma
\right|^2
\le
C_N\int_{P'} H_P^*\|F\|_{\mathfrak H_P}^2\,d\sigma
+dE_P^0(P')
\tag{TFE2748B.927}
\]

applied to \(F=G_P^{root}\), together with the stopped full-exchange/root
generator storage already exposed in `(TFE2748B.897)'--`(TFE2748B.898)'.

For bounded parent-announced detectors this projection is a Cauchy/overlap
consumer.  Write

\[
K_e=\mathbf 1_{I_e}C_e^*k_e,
\tag{TFE2748B.928}
\]

with edge-normalized boundedness and stopped overlap

\[
dR_P^{root}(E_e)
\int_{I_e}
{\|C_e^*k_e\|_{\mathfrak H_P}^2\over \alpha_e H_P^*}\,d\sigma
\le
C_N,
\qquad
\sum_e\alpha_e\mathbf 1_{I_e}\le C_N .
\tag{TFE2748B.929}
\]

Cauchy's inequality gives

\[
dR_P^{root}(E_e)
\left|
\int_{I_e}\langle C_e^*k_e,F\rangle\,d\sigma
\right|^2
\le
C_N\int_{I_e}\alpha_e H_P^*\|F\|_{\mathfrak H_P}^2\,d\sigma,
\tag{TFE2748B.930}
\]

and summing `(TFE2748B.930)' gives `(TFE2748B.927)'.  Hence the bounded-detector
part of the log-ratio Carleson estimate is already a consumer of the original
root geometry/full-exchange clock.

The nonconsumer detector is the scale-native zero-baseline one:

\[
\|K_e^{parent}\|_{\mathfrak H_P}^2\simeq\lambda_e^{-1},
\tag{TFE2748B.931}
\]

where \(\lambda_e\) is the physical zoom/heat-scale ratio.  This detector is not
bounded in `(TFE2748B.929)' and cannot be placed in the positive-baseline
log-ratio branch.  It must enter through the singular first-entry capacity
`(TFE2748B.919)' and packing law `(TFE2748B.920)'.

Consequently the current source chain is

\[
\boxed{
\begin{array}{c}
\texttt{bounded log-detector projection `(TFE2748B.927)'--`(TFE2748B.930)'}\\
+\texttt{stopped full-exchange/root-generator storage `(TFE2748B.897)'--`(TFE2748B.898)'}\\
+\texttt{singular first-entry admission/packing `(TFE2748B.919)'--`(TFE2748B.920)'}
\end{array}
\Longrightarrow
\texttt{critical capacity `(TFE2748B.908)'.}
}
\tag{TFE2748B.932}
\]

This removes one more wrapper.  Positive-baseline log amplification is a
bounded projection of the original root generator.  The only genuinely
scale-native source left is the zero-baseline first-entry endpoint detector and
its packing into the parent critical capacity, plus the strict no-self-feeding
full-exchange storage for the same root generator.

## 105. Current-edge use of the same-parent atomic attachment

The atom attachment itself is not a new source at the current edge.  It is the
raw parent theorem already proved in Sections 59 and 90, now written in the
notation of the log-ratio/first-entry split above so it cannot be reopened as a
selected-critical \(L^1\) supplier.

Fix a stopped preterminal parent packet \(X_P\) and a preterminal interval
\([0,\tau]\).  Let \(dJ_P\) be the pre-clipping pressure-Hodge/material residue
after full-output route, collar, legal, stop, endpoint, and detector-motion
leakage have been separated.  The pressure-Hodge part is a constraint current
on the closed stopped parent packet, so its unpaired total is exactly leakage:

\[
dJ_P=dJ_P^0+dR_P,
\qquad
dJ_P^0(X_P)=0,
\qquad
|dR_P|
\le
d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.933}
\]

For arbitrary original smooth data, all terms in `(TFE2748B.933)' are finite
Radon measures on every preterminal stopped packet.  The Jordan decomposition
of the zero-total part gives

\[
dJ_P^0=dJ_{P,+}^0-dJ_{P,-}^0,
\qquad
dJ_{P,+}^0(X_P)=dJ_{P,-}^0(X_P)=m_P^J .
\tag{TFE2748B.934}
\]

Choose the same-parent transport coupling

\[
d\pi_P(x,y)
:=
\begin{cases}
{dJ_{P,+}^0(x)dJ_{P,-}^0(y)\over m_P^J},&m_P^J>0,\\[4pt]
0,&m_P^J=0 .
\end{cases}
\tag{TFE2748B.935}
\]

Then, for every parent-measurable test \(\varphi\),

\[
\int_{X_P}\varphi\,dJ_P^0
=
\iint_{X_P\times X_P}
\bigl(\varphi(x)-\varphi(y)\bigr)\,d\pi_P(x,y),
\qquad
\pi_P(X_P\times X_P)
=
{1\over2}|dJ_P^0|(X_P).
\tag{TFE2748B.936}
\]

Equivalently,

\[
dJ_P^0
=
\int_{X_P\times X_P}(\delta_x-\delta_y)\,d\pi_P(x,y),
\tag{TFE2748B.937}
\]

which is the exact same-parent zero-mean atom decomposition.  Countable simple
atom ledgers are only approximations of this exact parent transport measure;
the object being used here is the transport integral `(TFE2748B.936)'--`(TFE2748B.937)'.

The coefficient mass and leakage are controlled by the raw original-packet
budget already installed in Sections 59 and 90:

\[
\int_0^\tau \pi_P(t)(X_P\times X_P)\,dt
+\int_0^\tau |(dR_P)_+|(t)
\le
B_P^{atom}(\tau),
\tag{TFE2748B.938}
\]

where

\[
B_P^{atom}(\tau)
:=
C_N{\|u_0\|_2^2\over\nu}
+Paid_P([0,\tau])
+Legal_P([0,\tau])
+Stop_P([0,\tau]).
\tag{TFE2748B.939}
\]

Now let \(0\le \omega_P\le1\) be any parent-announced pre-clipping selector on
the positive lobe.  The retained opposite lobe selected by the same parent
atom, not by a later child clip, is

\[
dJ_{P,\omega}^{ret,-}
:=
(\mathrm{pr}_2)_\#\bigl(\omega_P(x)\,d\pi_P(x,y)\bigr).
\tag{TFE2748B.940}
\]

By construction,

\[
\int_{X_P}\omega_P\,dJ_{P,+}^0
=
dJ_{P,\omega}^{ret,-}(X_P),
\qquad
\omega_P(dJ_P^0)_+
\preceq_{atom}
dJ_{P,\omega}^{ret,-},
\qquad
\omega_P(dJ_P)_+
\preceq_{atom}
dJ_{P,\omega}^{ret,-}+\omega_P(dR_P)_+
\quad\text{after the chosen parent selector is fixed.}
\tag{TFE2748B.941}
\]

Thus the retained opposite lobe is a bounded-below parent reserve depletion:

\[
M_{P,\omega}^{atom}(\tau')
:=
B_P^{atom}(\tau)
-dJ_{P,\omega}^{ret,-}\bigl([0,\tau']\times X_P\bigr),
\qquad
0\le\tau'\le\tau,
\tag{TFE2748B.942}
\]

and `(TFE2748B.938)' gives

\[
M_{P,\omega}^{atom}(\tau')\ge0,
\qquad
-dM_{P,\omega}^{atom}
=
dJ_{P,\omega}^{ret,-}
\quad\text{on retained same-parent atoms.}
\tag{TFE2748B.943}
\]

This proves the requested raw construction from arbitrary original smooth data:
before clipping, the pressure-Hodge/material residue decomposes into
same-parent zero-mean atoms, the coefficient mass and leakage are bounded by
the original raw packet budget, and every retained positive lobe has an
opposite lobe recorded as bounded-below parent reserve depletion.

The selected-critical \(L^1\) issue begins after `(TFE2748B.943)', when the
critical meter \(W_P^{crit}=e^{b_P}\) is allowed to vary across each atom:

\[
W_P^{crit}(x)\,d\pi_P(x,y)
\le
W_P^{crit}(y)\,d\pi_P(x,y)
+
W_P^{crit}(y)
\bigl(e^{[b_P(x)-b_P(y)]_+}-1\bigr)d\pi_P(x,y).
\tag{TFE2748B.944}
\]

The first term in `(TFE2748B.944)' is the weighted retained-lobe reserve.  The
second term is exactly the selected log-meter variation handled by the
log-ratio/root-generator and first-entry capacity split in Sections 103--104.
So the current edge uses SignedPressureHodgeAtomicAttachment.A as a closed raw
input and keeps the selected-critical root-capacity theorem as the only
Gold-strength upgrade being supplied by `(TFE2748B.909)'--`(TFE2748B.932)'.

## 106. Zero-baseline first entry is endpoint trace admission

The zero-baseline detector in `(TFE2748B.931)' is not allowed to stay as a naked
\(\lambda_Q^{-1/2}\) child functional.  In the original packet it is an endpoint
trace: the pressure-compatible signal is present first, and the first readable
velocity/strain square appears only with heat-lag thickness.  Therefore the
zero-baseline branch must be admitted into the endpoint/full-exchange parent
ledger before strict storage is invoked.

On a retained zero-baseline endpoint fibre \(\gamma\), set

\[
m_\gamma(t):=K_\gamma(t)\overline Z_\gamma^{fresh,+}(t),
\qquad
B_\gamma(t):=\|m_\gamma(t)\|_{\mathfrak H_\gamma}^2 .
\tag{TFE2748B.945}
\]

Let \(H_\gamma^\ast\) be the Hardy adjoint heat-lag weight and define the
endpoint trace-capacity measure

\[
dC_{P}^{EP,0}
:=
dC_{P,left}^{EP,0}
+H_\gamma^\ast [D_t^PB_\gamma]_+\,dt\,d\eta_P^{EP}(\gamma)
+dPaid_P+dStop_P .
\tag{TFE2748B.946}
\]

The first-entry identity gives the singular endpoint seed admission

\[
dA_{P,crit}^{entry,+}
\le
C_N\,dC_P^{EP,0}.
\tag{TFE2748B.947}
\]

The parent derivative of the endpoint seed is represented before clipping by
the same root generator:

\[
D_t^Pm_\gamma
=
\Pi_\gamma^{EP}G_P^{root}
+E_\gamma^{route},
\tag{TFE2748B.948}
\]

with \(E_\gamma^{route}\) paid by \(d\Theta_P^0+dPaid_P+dStop_P\).  Cauchy's
inequality with the Hardy adjoint weight gives, on every stopped subpacket
\(P'\),

\[
\int_{P'}dC_P^{EP,0}
\le
C_N\int_{P'}d\Omega_P^{EP,tr}
+C_N\int_{P'}d\Theta_P^0
+dPaid_P(P')+dStop_P(P').
\tag{TFE2748B.949}
\]

The heat-lag normalization is the scale cancellation missing from the naked
detector picture:

\[
H_{P,EP}^{\ast}\simeq\lambda_Q,
\qquad
\|K_Q^{parent}\|_{\mathfrak H_P}^2\simeq\lambda_Q^{-1},
\qquad
H_{P,EP}^{\ast}\|K_Q^{parent}\|_{\mathfrak H_P}^2\simeq1 .
\tag{TFE2748B.950}
\]

After selector, collar, Jacobian, and stopped-overlap factors are placed in the
parent endpoint measure, `(TFE2748B.950)' yields the endpoint parent-clock
inclusion

\[
d\Omega_P^{EP,tr}
\le
C_N\,d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.951}
\]

Equivalently, define the endpoint admission subledger

\[
d\Xi_P^{EP,adm}
:=
d\Xi_P^{FE}
+d\Omega_P^{EP,tr},
\tag{TFE2748B.952}
\]

Then the zero-baseline branch has the noncircular admission

\[
d\rho_{crit,P}^{entry}
\le
C_N\,d\Xi_P^{EP,adm}
+d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.953}
\]

This is not an integrability claim and it does not use the finite storage
conclusion.  It is an ownership/admission claim: the first readable
zero-baseline square belongs to the same original endpoint/full-exchange parent
ledger before child clipping.  After admission, the storage ledger may carry the
entry as spent material:

\[
d\Xi_P^{FE,\ast}
:=
d\Xi_P^{EP,adm}
+d\rho_{crit,P}^{ac}
+d\rho_{crit,P}^{entry}.
\tag{TFE2748B.954}
\]

The current edge is therefore

\[
\boxed{
\begin{array}{c}
\texttt{positive-baseline log branch: bounded root-generator projection
`(TFE2748B.923)'--`(TFE2748B.932)';}\\
\texttt{zero-baseline branch: endpoint trace admission
`(TFE2748B.945)'--`(TFE2748B.953)';}\\
\texttt{remaining producer: strict no-self-feeding storage for
\(d\Xi_P^{FE,\ast}\).}
\end{array}}
\tag{TFE2748B.955}
\]

Thus the scale-native zero-baseline detector is no longer a separate source
wall in the current notation.  Its apparent inverse-scale size is cancelled by
heat-lag thickness and entered into \(d\Xi_P^{FE,\ast}\).  The source theorem
left to prove is the endpoint-admitted strict storage line

\[
d\Xi_P^{FE,\ast}
\le
-dM_P^{FE,\ast}
+\theta_\ast d\Omega_P^{gen}
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
C_N\theta_\ast<1,
\tag{TFE2748B.956}
\]

with \(M_P^{FE,\ast}\) bounded below from the original smooth data.

## 107. The selected log-meter source is a parent parabolic form-bound problem

After Sections 105--106, the remaining positive source is no longer an atom
attachment or a naked zero-baseline endpoint trace.  It is the positive
log-meter reaction left after the reversible pressure/Hodge/self-advection flux
has been paired inside the same stopped parent packet.

Let

\[
dE_P^0:=d\Theta_P^0+dPaid_P+dStop_P .
\tag{TFE2748B.957}
\]

Use the entropy density \(\Phi(r)=r\log(e+r)\) from `(TFE2748B.860)' and set

\[
U_P:=\int_0^{F_P}\sqrt{\Phi''(s)}\,ds,
\qquad
dI_P=|\nabla_AU_P|^2\,d\mathfrak m_P .
\tag{TFE2748B.958}
\]

Let

\[
g_P^+:=\bigl[\mathcal L_P\log W_P^{crit}\bigr]_+
\tag{TFE2748B.959}
\]

be the parent-announced positive log-speed of the selected critical meter after
the reversible flux split `(TFE2748B.874)'--`(TFE2748B.879)'.  Define the exact
active potential measure \(d\mathfrak v_{P}^{crit}\) by

\[
d\mathfrak v_{P}^{crit}
:=
{\Phi'(F_P)F_P\over U_P^2}\,g_P^+\,d\mathfrak m_P
+{[d\mathcal C_P^{crit}]_+\over U_P^2},
\tag{TFE2748B.960}
\]

with the quotient interpreted as \(0\) on \(\{U_P=0\}\).  This definition is not
an estimate.  It is the exact parent potential whose trace on \(U_P\) is the
selected positive meter bill:

\[
U_P^2\,d\mathfrak v_P^{crit}
=
dQ_P^{meter}+[d\mathcal C_P^{crit}]_+ .
\tag{TFE2748B.961}
\]

Therefore `(TFE2748B.880)' is supplied by the following stopped parent
storage-form bound.  There must be a bounded-below parent reserve
\(M_P^{cap}\) and a residual positive parent potential
\(d\mathfrak v_{P}^{res}\) such that

\[
U_P^2\,d\mathfrak v_P^{crit}
\le
-dM_P^{cap}
+U_P^2\,d\mathfrak v_P^{res}
+dE_P^0,
\tag{TFE2748B.962}
\]

and

\[
\int_{P'} \zeta^2\,d\mathfrak v_P^{res}
\le
\vartheta\int_{P'}|\nabla_A\zeta|^2\,d\mathfrak m_P
+dE_P^0(P';\zeta),
\qquad C_N\vartheta<1,
\tag{TFE2748B.963}
\]

for every parent-announced test \(\zeta\), with \(dE_P^0(P';\zeta)\) supported
only on route, collar, legal, stop, endpoint, and paid selector-motion material.
Indeed, applying `(TFE2748B.963)' to \(\zeta=U_P\) and using
`(TFE2748B.958)'--`(TFE2748B.961)' gives

\[
dQ_P^{meter}+[d\mathcal C_P^{crit}]_+
\le
-dM_P^{cap}
+\vartheta\,dI_P+dE_P^0 .
\tag{TFE2748B.964}
\]

Combining `(TFE2748B.964)' with the reversible flux reserve
`(TFE2748B.879)' and the entropy storage identity
`(TFE2748B.864)'--`(TFE2748B.865)' gives

\[
d\rho_{crit,P}^{ac}+d\rho_{crit,P}^{entry}
\le
-dM_P^{crit}
-dM_P^{cap}
+\vartheta\,dI_P+dE_P^0,
\qquad C_N\vartheta<1.
\tag{TFE2748B.965}
\]

Since \(dI_P\le d\Omega_P^{gen}\) in the full root clock, `(TFE2748B.965)' is
the critical-entry part of the endpoint-admitted strict storage line
`(TFE2748B.956)'.

Equivalently, by the stopped Maz'ya trace criterion on the compact parent chart,
`(TFE2748B.963)' is the same as the parabolic capacitary domination of the
residual potential

\[
\mathfrak v_P^{res}(K)
\le
\vartheta\,\operatorname{Cap}_{A,P}(K)
+E_P^0(K),
\qquad C_N\vartheta<1,
\tag{TFE2748B.966}
\]

for every stopped parent compact \(K\), where

\[
\operatorname{Cap}_{A,P}(K)
:=
\inf_{\zeta\ge 1_K}
\int|\nabla_A\zeta|^2\,d\mathfrak m_P .
\tag{TFE2748B.967}
\]

Thus the selected \(L^1\) wall has an exact non-dyadic capacity form:
positive critical meter motion is harmless precisely when the original parent
packet first records the retained part as bounded-below reserve depletion and
the remaining active potential has strictly subunit parabolic capacity relative
to the same viscous/Stokes gradient that produces heat-lag readability.

The arbitrary-data theorem still to prove is therefore not another raw atom
pairing theorem and not a square-energy statement.  It is

\[
\boxed{
\texttt{ParentActivePotentialCapacityDomination.A: construct \(M_P^{cap}\) in
`(TFE2748B.962)' and prove the residual capacity bound `(TFE2748B.966)' from
the original coupled packet before clipping.}
}
\tag{TFE2748B.968}
\]

Once `(TFE2748B.968)' is proved, Sections 99--107 give
`(TFE2748B.956)' and hence the critical capacity variation/storage line.  Until
that storage-form capacitary domination is proved from arbitrary original smooth
data, this section is a sharp equivalent proof target rather than Gold closure.

## 108. Residual capacity failure is a subunit active-potential mode

Section 107 turns the remaining selected \(L^1\) question into a parabolic
capacity statement.  The failure of that statement has an exact variational
form.  This is useful because it removes the last ambiguity between
"large selected readout" and "real source": after \(M_P^{cap}\), route, legal,
stop, endpoint, and collar material are removed, the only possible survivor is a
parent active potential whose positive reaction beats its own viscous/Stokes
capacity.

Fix \(0<\vartheta\) with \(C_N\vartheta<1\) and define the stopped Rayleigh
number of the residual potential by

\[
\lambda_P^{res}
:=
\inf_{\zeta\in C_c^\infty(P'),\ \int\zeta^2\,d\mathfrak v_P^{res}>0}
{\displaystyle
\vartheta\int_{P'}|\nabla_A\zeta|^2\,d\mathfrak m_P
+dE_P^0(P';\zeta)
\over\displaystyle
\int_{P'}\zeta^2\,d\mathfrak v_P^{res}} .
\tag{TFE2748B.969}
\]

Then the residual capacity bound `(TFE2748B.963)' is equivalent to

\[
\lambda_P^{res}\ge1
\qquad\text{on every stopped parent subpacket }P'.
\tag{TFE2748B.970}
\]

Indeed, `(TFE2748B.963)' is exactly the assertion that the numerator in
`(TFE2748B.969)' dominates the denominator for every parent test.  Conversely,
if `(TFE2748B.963)' fails, there are stopped parent tests \(\zeta_j\ge0\) with

\[
\int\zeta_j^2\,d\mathfrak v_P^{res}=1,
\qquad
\vartheta\int|\nabla_A\zeta_j|^2\,d\mathfrak m_P
+dE_P^0(P';\zeta_j)
\le1-\eta
\tag{TFE2748B.971}
\]

for some \(\eta>0\).  The normalized failure is therefore a negative direction
for the parent Schrödinger form

\[
\mathcal Q_P^{res}[\zeta]
:=
\vartheta\int|\nabla_A\zeta|^2\,d\mathfrak m_P
+dE_P^0(P';\zeta)
-\int\zeta^2\,d\mathfrak v_P^{res}.
\tag{TFE2748B.972}
\]

On a compact stopped parent chart, after quotienting paid zero-capacity
sets into \(dE_P^0\), the direct method gives either a nonzero weak minimizer
\(h_P\ge0\) or a tightness failure.  The tightness failure is not a new source:
it is exactly collar, endpoint, reset, legal, stop, or paid reselection escape
and is already in \(dE_P^0\).  Thus any genuine uncharged failure has a parent
mode \(h_P\) satisfying

\[
\int h_P^2\,d\mathfrak v_P^{res}=1,
\qquad
\vartheta\int|\nabla_Ah_P|^2\,d\mathfrak m_P
+dE_P^0(P';h_P)
=\lambda_P^{res}<1,
\tag{TFE2748B.973}
\]

and, in weak form,

\[
\vartheta\int\langle\nabla_Ah_P,\nabla_A\phi\rangle\,d\mathfrak m_P
+dE_P^0(h_P,\phi)
=
\lambda_P^{res}\int h_P\phi\,d\mathfrak v_P^{res}
\tag{TFE2748B.974}
\]

for every parent-announced test \(\phi\).

The mode \(h_P\) is itself the parent capacity test; it should not be promoted
to a product test \(h_PU_P\) without paying the product-rule terms.  The exact
meaning of `(TFE2748B.973)' is the positive Rayleigh defect

\[
\int h_P^2\,d\mathfrak v_P^{res}
-\vartheta\int|\nabla_Ah_P|^2\,d\mathfrak m_P
-dE_P^0(P';h_P)
=1-\lambda_P^{res}>0 .
\tag{TFE2748B.975}
\]

The entropy variable \(U_P\) enters later through the already fixed trace
identity `(TFE2748B.961)' and the test \(\zeta=U_P\) in `(TFE2748B.963)'.  Any
localized product comparison uses
\(\nabla_A(h_PU_P)=h_P\nabla_AU_P+U_P\nabla_Ah_P\) and routes the cross face
through \(dI_P\), \(dE_P^0\), or a paid commutator ledger before it is counted.

Consequently `ParentActivePotentialCapacityDomination.A' can be attacked by the
following equivalent no-mode statement:

\[
\boxed{
\begin{array}{c}
\texttt{NoSubunitParentActivePotentialMode.A: after all bounded-below reserve}\\
\texttt{drops and paid exits are removed, no parent-announced mode \(h_P\) can}\\
\texttt{satisfy `(TFE2748B.973)'--`(TFE2748B.974)' for the residual active}\\
\texttt{potential of the original coupled packet.}
\end{array}}
\tag{TFE2748B.976}
\]

This is now the exact compactness/rigidity face of the same theorem.  Proving
`(TFE2748B.976)' from the original coupled pressure-viscosity-incompressibility
packet supplies `(TFE2748B.966)', hence `(TFE2748B.965)', hence the
critical-capacity variation/storage line.  The proof is still open at this
no-subunit-mode theorem; the point of this section is that any counterexample is
now a concrete stopped parent eigenmode, not an uncatalogued child recount.

## 109. The capacity reserve is the exact capacitary excess

Sections 107--108 identify the right reserve without changing the physical
object.  The parent packet carries one before-clipping active potential
\(d\mathfrak v_P^{crit}\).  The part of that potential already dominated by
parabolic capacity may stay as residual readout; the part that violates
capacity must be spent immediately as a parent reserve drop.

On a compact stopped chart set

\[
\mathcal C_{P,\vartheta}(K)
:=
\vartheta\,\operatorname{Cap}_{A,P}(K)+E_P^0(K),
\qquad C_N\vartheta<1.
\tag{TFE2748B.977}
\]

Let \(\mathfrak S_{P,\vartheta}\) be the class of finite positive Radon
submeasures \(\sigma\le\mathfrak v_P^{crit}\) satisfying

\[
\sigma(K)\le \mathcal C_{P,\vartheta}(K)
\qquad\text{for every stopped compact }K\subset P'.
\tag{TFE2748B.978}
\]

The class is nonempty, tight, and weak-* closed by outer regularity of the
stopped capacity and the paid measure \(E_P^0\).  Since \(U_P\) is smooth and
bounded on every stopped preterminal chart, there is an admissible residual
submeasure that maximizes the same weighted mass which the reserve must save:

\[
\int U_P^2\,d\sigma
=
\sup_{\widetilde\sigma\in\mathfrak S_{P,\vartheta}}
\int U_P^2\,d\widetilde\sigma .
\tag{TFE2748B.979}
\]

Choose such a weighted-maximal residual and define the excess by

\[
d\mathfrak v_P^{res}\in\mathfrak S_{P,\vartheta},
\qquad
d\mathfrak v_P^{exc}:=d\mathfrak v_P^{crit}-d\mathfrak v_P^{res}\ge0 .
\tag{TFE2748B.980}
\]

By construction the residual part obeys the required capacity domination,

\[
\mathfrak v_P^{res}(K)
\le
\vartheta\,\operatorname{Cap}_{A,P}(K)+E_P^0(K),
\qquad C_N\vartheta<1 .
\tag{TFE2748B.981}
\]

For \(0\le s\le\tau\), define the capacity reserve on the same stopped parent
history by

\[
M_{P,\tau}^{cap}(s)
:=
B_{P,\tau}^{cap}
-
\int_{[0,s]\times X_P} U_P^2\,d\mathfrak v_P^{exc},
\qquad
B_{P,\tau}^{cap}
:=
\int_{[0,\tau]\times X_P} U_P^2\,d\mathfrak v_P^{exc}.
\tag{TFE2748B.982}
\]

Whenever \(B_{P,\tau}^{cap}<\infty\), this is a bounded-below parent reserve and

\[
-dM_{P,\tau}^{cap}
=
U_P^2\,d\mathfrak v_P^{exc}.
\tag{TFE2748B.983}
\]

Combining `(TFE2748B.980)'--`(TFE2748B.983)' gives the storage-form split
exactly:

\[
U_P^2\,d\mathfrak v_P^{crit}
=
-dM_{P,\tau}^{cap}
+U_P^2\,d\mathfrak v_P^{res}
\le
-dM_{P,\tau}^{cap}
+U_P^2\,d\mathfrak v_P^{res}
+dE_P^0 .
\tag{TFE2748B.984}
\]

Thus `(TFE2748B.962)' and `(TFE2748B.966)' are no longer separate bookkeeping
questions.  They are exactly the capacitary decomposition of the same parent
active potential before clipping.  The remaining original-data source theorem
is the finite-excess estimate

\[
\sup_{\tau<T_*}
\int_{[0,\tau]\times X_P}U_P^2\,d\mathfrak v_P^{exc}
\le
C_N(u_0)+Paid_P+Legal_P+Stop_P .
\tag{TFE2748B.985}
\]

Equivalently, after the exact same-parent atom reserve from Section 105 and the
endpoint heat-lag admission from Section 106 are installed, Gold \(L^1\) is
open precisely at proving that the super-capacitary excess
\(d\mathfrak v_P^{exc}\) of the original coupled pressure-Hodge /
viscous-Stokes / self-advection packet has finite parent reserve mass before
child clipping.  This construction gives the reserve and the residual
domination; `(TFE2748B.985)' is the remaining arbitrary-data estimate.

## 110. Weighted excess is dual to an incremental capacity defect

The correction in Section 109 matters: the residual is chosen by the same
\(U_P^2\)-weighted currency in which the reserve is spent.  That makes the
finite-excess problem a precise obstacle-duality problem.

Let

\[
\mathcal Q_{P,\vartheta}[\zeta]
:=
\vartheta\int|\nabla_A\zeta|^2\,d\mathfrak m_P
+dE_P^0(P';\zeta).
\tag{TFE2748B.986}
\]

Take any positive parent submeasure
\[
0\le d\eta\le d\mathfrak v_P^{exc},
\qquad
\int U_P^2\,d\eta>0 .
\tag{TFE2748B.987}
\]

Then \(d\eta\) cannot be added to the residual.  Indeed, if
\(d\mathfrak v_P^{res}+d\eta\) still satisfied the capacity domination
`(TFE2748B.978)', it would be an admissible competitor with strictly larger
\(U_P^2\)-weighted mass, contradicting `(TFE2748B.979)'.  By the Maz'ya form
criterion, non-admissibility is exactly the existence of a parent-announced
test \(\zeta_\eta\ge0\) such that

\[
\int \zeta_\eta^2\,d(\mathfrak v_P^{res}+\eta)
>
\mathcal Q_{P,\vartheta}[\zeta_\eta].
\tag{TFE2748B.988}
\]

Thus every nonzero weighted excess piece carries an incremental Rayleigh defect
before child clipping.  Define its defect size by

\[
\mathfrak D_P(\eta)
:=
\sup_{\zeta\ge0}
\left(
\int \zeta^2\,d(\mathfrak v_P^{res}+\eta)
-\mathcal Q_{P,\vartheta}[\zeta]
\right)_+ .
\tag{TFE2748B.989}
\]

`(TFE2748B.988)' says \(\mathfrak D_P(\eta)>0\) for every positive weighted
excess piece.  The finite-excess estimate `(TFE2748B.985)' follows from the
following strictly smaller original-data pricing theorem:

\[
\boxed{
\begin{array}{c}
\texttt{WeightedObstacleDefectPricing.A: for every stopped parent partition}\\
\texttt{\(\{d\eta_\alpha\}\) of \(d\mathfrak v_P^{exc}\), the incremental}\\
\texttt{Rayleigh defects price the weighted excess by}\\[1mm]
\displaystyle
\sum_\alpha \int U_P^2\,d\eta_\alpha
\le
C_N(u_0)+Paid_P+Legal_P+Stop_P
+C_N\sum_\alpha \mathfrak D_P(\eta_\alpha),\\[1mm]
\texttt{and the defect sum is absorbed by the same original root-generator}\\
\texttt{clock with a strict \(C_N\vartheta<1\) margin.}
\end{array}}
\tag{TFE2748B.990}
\]

This theorem is the obstacle-dual version of the physical statement: a piece of
positive active potential that cannot be left as capacity-dominated residual
must reveal itself as a same-parent mode whose excess over viscous/Stokes
capacity is visible to the original coupled packet.  Older adjoint-reserve
surfaces use the same dualization idea, but they are conditional on a residual
tail/source-control input; they cannot be imported here as a proof of
`(TFE2748B.985)'.

Consequently the current noncircular chain is

\[
\texttt{WeightedObstacleDefectPricing.A}
\Longrightarrow
\text{finite excess `(TFE2748B.985)'}
\Longrightarrow
\text{storage split `(TFE2748B.984)'}
\Longrightarrow
\text{critical capacity variation/storage}.
\tag{TFE2748B.991}
\]

The remaining proof work is now localized: prove the defect-pricing/absorption
statement `(TFE2748B.990)' directly from the original coupled
pressure-Hodge/viscous-Stokes/self-advection root generator before positive
clipping.  Without that pricing, Section 109 constructs the right reserve but
does not bound its total spend.

## 111. The obstacle defect has only one unpriced detector face

The defect in `(TFE2748B.989)' is not a new kind of source.  A defect test
\(\zeta\) is a parent-announced detector applied to the same before-clipping
coupled packet.  Pulling that detector through the stopped Duhamel-Hodge parent
propagator splits the positive defect into the same three faces already isolated
above:

\[
\mathfrak D_P(\eta;\zeta)
\le
\mathfrak D_P^{bd}(\eta;\zeta)
+\mathfrak D_P^{EP}(\eta;\zeta)
+\mathfrak D_P^{tail}(\eta;\zeta)
+dE_P^0(P';\zeta).
\tag{TFE2748B.992}
\]

The bounded-detector face is priced by the root-generator projection from
Section 104:

\[
\sum_\alpha\mathfrak D_P^{bd}(\eta_\alpha;\zeta_\alpha)
\le
C_N\int_{P'}H_P^\ast\|G_P^{root}\|_{\mathfrak H_P}^2\,d\sigma
dE_P^0(P').
\tag{TFE2748B.993}
\]

The zero-baseline endpoint face is priced by the heat-lag trace admission from
Section 106:

\[
\sum_\alpha\mathfrak D_P^{EP}(\eta_\alpha;\zeta_\alpha)
\le
C_N\,d\Omega_P^{EP,tr}(P')
dE_P^0(P')
\le
C_N\,d\Omega_P^{gen}(P')+dE_P^0(P').
\tag{TFE2748B.994}
\]

Therefore `WeightedObstacleDefectPricing.A' has exactly one unpriced branch:

\[
\boxed{
\texttt{ObstacleDefectTailPricing.A: }
\sum_\alpha\mathfrak D_P^{tail}(\eta_\alpha;\zeta_\alpha)
\le
\vartheta_{tail}\,d\Omega_P^{gen}(P')
dE_P^0(P'),
\qquad C_N\vartheta_{tail}<1 .
}
\tag{TFE2748B.995}
\]

If `(TFE2748B.995)' is proved, `(TFE2748B.993)'--`(TFE2748B.994)' and the
already admitted root/endpoint clocks supply `(TFE2748B.990)', hence the
finite-excess bound `(TFE2748B.985)' and the storage split `(TFE2748B.984)'.
This is the current smallest source face: the obstacle-dual residual tail must
be priced by the original coupled packet with a strict margin before child
positive clipping.
