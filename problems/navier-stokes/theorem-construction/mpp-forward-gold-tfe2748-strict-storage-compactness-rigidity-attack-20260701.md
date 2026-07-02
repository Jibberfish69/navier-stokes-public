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
