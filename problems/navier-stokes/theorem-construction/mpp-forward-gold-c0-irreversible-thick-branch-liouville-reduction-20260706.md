---
theorem_id: forward-gold-c0-irreversible-thick-branch-liouville-reduction-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / irreversible material-time marginal profile
status: proved-positive-radius-thick-branch-reduces-heat-scale-branch-to-surplus-zero-rigidity
target_object:
  - FullTowerSignedTotalExchangeRetention.A
  - MaterialTimeLiouvilleExclusion.A
  - MaterialTimeCertificateFlowInvariance.A
  - TemporalRecordThicknessChargeBillCurrency.A
  - SameParentRecordPositiveSelectionStorage.A
ontology_lock:
  fluid_field_object: Navier-Stokes same-fluid velocity-pressure field
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-irreversibility-rebuild-reversible-frame-withdrawal-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-throttle-fixed-radius-vs-heat-scale-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-convective-source-vs-fixed-cylinder-dissipation-throttle-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-time-energy-decay-throttle-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-logtime-action-reserve-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-E4-temporal-pinch-charge-bill-currency-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-material-time-liouville-bath-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
derived_reductions:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-heat-scale-route-b-surplus-zero-rigidity-reduction-20260706.md
completion_truth: >-
  This proves only the positive-radius / fixed-cylinder / thick-material-time
  branch of the irreversible c_0 obstruction. On that branch, a retained
  same-fluid packet cannot carry a positive terminal material-record atom while
  the same-packet payment channels vanish: finite participation rate and the
  fixed-cylinder Cauchy-Schwarz dissipation throttle force either zero record
  mass or divergent viscous cost. The result does not prove c_0, because the
  shrinking heat-scale branch remains. In that branch physical energy and
  viscous dissipation are radius/log-time discounted, while the record requires
  unweighted material-time action. The remaining exact theorem is surplus-zero
  material-time rigidity / SameParentRecordPositiveSelectionStorage.A: a
  certified same-solution heat-scale marginal profile with positive record
  service and vanishing normalized surplus bill must be impossible, or else
  typed out through Pack/Part/selector/legal failure. The local absolute-zero
  Liouville reading is superseded by the heat-scale route-b surplus-zero
  reduction. No MPP closure is claimed.
---

# Irreversible thick branch and material-time marginal reduction

## 1. Correct object

The Navier-Stokes fluid-field-object here is the same evolving
velocity-pressure field for one incompressible viscous fluid. It is not
reversible, not adiabatic, and not compressible.

The active bad sequence is therefore not a reversible equality cycle. It is a
same-material sequence of retained record windows \(I_j\) such that

\[
\int_{I_j} dR_N^+ \ge c >0,
\qquad
\int_{I_j} dB_N \to 0,
\tag{ITL.1}
\]

where \(dR_N^+\) is positive material-record growth and \(dB_N\) is the native
same-packet bill: four-body activity, field activity, viscous activity, legal
residuals, and stop/exit material.

The desired \(c_0\) theorem says that `(ITL.1)' cannot occur in the retained
same-fluid class.

## 2. The thick branch is already paid

There are two non-heat-scale ways an infinite record climb can try to
concentrate.

First, the record windows may keep a positive material-time thickness at a fixed
physical scale. In a finite terminal time interval, disjoint record windows with
a uniform lower time length are finite in number. This branch cannot carry the
infinitely many unit records required by a blowup climb.

Second, the record may try to become a terminal time-face atom while staying at
a fixed positive physical radius. The fixed-radius participation theorem already
excludes this on the retained no-incoming/no-legal branch:

\[
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}+Exit_m+o_m(1).
\tag{ITL.2}
\]

On the unpaid retained branch, \(J_{in,m}=o_m(1)\) and \(Exit_m=0\), so a
positive terminal atom would give

\[
c_0 \le M_{CM}(N,r,Q)\varepsilon
\tag{ITL.3}
\]

for every \(\varepsilon>0\), impossible as \(\varepsilon\downarrow0\).

The exact fixed-cylinder convective normal form gives the same conclusion in
the native viscous currency. If a fixed-cylinder carrier has time amplitude
\(b_m(t)\) on an interval of length \(\tau_m\), fixed positive carrier mass
means

\[
\int_{I_m} b_m(t)\,dt \ge c_0 .
\tag{ITL.4}
\]

But its viscous bill contains \(\int_{I_m} b_m(t)^2\,dt\), and
Cauchy-Schwarz gives

\[
\int_{I_m} b_m(t)^2\,dt
\ge {c_0^2\over \tau_m}.
\tag{ITL.5}
\]

Thus a fixed-cylinder terminal atom with \(\tau_m\downarrow0\) forces divergent
viscous cost. With a uniform finite viscous bill, the selected positive carrier
mass tends to zero.

So the positive-radius/thick branch is closed:

\[
\boxed{
\text{retained positive physical radius or fixed-cylinder thickness}
+\text{ vanishing same-packet bill}
\Longrightarrow
\int dR_N^+ = 0 .
}
\tag{ITL.6}
\]

This is a real irreversible result. It uses the finite rate and finite
dissipation of the same Navier-Stokes fluid-field-object.

## 3. Why this does not close c_0

The surviving branch is the heat-scale branch:

\[
r_j\downarrow0,
\qquad
|I_j|\sim {r_j^2\over\nu}.
\tag{ITL.7}
\]

At that scale the physical energy and physical viscous cost of one critical
packet are radius-discounted:

\[
E_c(r)\sim \nu^2 r,
\qquad
\nu\int_{Q_r}|\nabla u|^2\,dxdt \sim \nu^2 r.
\tag{ITL.8}
\]

Thus a dyadic stack can have finite physical cost:

\[
\sum_j \nu^2 r_j <\infty .
\tag{ITL.9}
\]

In logarithmic heat time \(s=-\log(T-t)\), the physical dissipation ledger
controls only the discounted action

\[
\int e^{-s/2}\int|\nabla_y v|^2\,dy\,ds,
\tag{ITL.10}
\]

while the record anti-atom needs unweighted action, or an equivalent
same-parent normalized record bill:

\[
\int \int|\nabla_y v|^2\,dy\,ds
\quad\text{or}\quad
\sum_j 1.
\tag{ITL.11}
\]

This is why finite dissipation alone is not a proof of \(c_0\). It closes the
fixed-radius/thick branch and leaves the moving heat-scale branch.

## 4. Heat-scale branch: exact remaining row

For a thin signed-height record upcrossing, the installed record-work input is

\[
\lambda_j
\le
\sum_e
\left[\int_{I_e\cap I_j}\omega_e\right]_+
+Legal(I_j)+Stop(I_j).
\tag{ITL.12}
\]

The unresolved step is to make this native work menu pay in the same-packet bill
currency before the record is read:

\[
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap I_j}\omega_e\right]_+
\le
C\int_{\cup_j I_j}
\left(dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}\right)
+Legal+Stop .
\tag{ITL.13}
\]

This is the heat-scale form of
`SameParentRecordPositiveSelectionStorage.A` and
`TemporalRecordThicknessChargeBillCurrency.A`.

Equivalently, the material-time Liouville form is a surplus-zero rigidity
statement, not a local absolute-zero dissipation statement. The naive
absolute-zero version would be:

\[
\boxed{
\begin{array}{c}
\text{same-solution certificates retained,}\\
dE_{N,h}^{Field}=dA_{4B,N}=dVisc_{N,h}=0,\\
Legal=Stop=0
\end{array}
\Longrightarrow
dR_N^+=0 .
}
\tag{ITL.14}
\]

But the surviving heat-scale branch is sharper than `(ITL.14)'. Its bills
vanish only as normalized surplus; production and dissipation can match at
ratio one on the self-similar scale. The corrected route-b theorem is recorded
in
`mpp-forward-gold-c0-heat-scale-route-b-surplus-zero-rigidity-reduction-20260706.md`:
prove a global same-history first-ratio storage or self-similar
difference-operator coercivity for the certified surplus-zero profile.

## 5. Relation to the full-tower retention attempt

The old full-tower direct attempt used a schematic \(M-M=0\) example. Under the
corrected ontology, that example should be read only as arithmetic of signed
current versus total positive variation:

\[
\text{signed adjacent exchange can cancel in the sum,}
\qquad
\text{positive material-record variation need not cancel.}
\tag{ITL.15}
\]

It is not a temporal reversible cycle of the Navier-Stokes fluid-field-object.

With the corrected reading, `FullTowerSignedTotalExchangeRetention.A` is the
statement that every positive tower-record channel is retained as same-packet
signed partner, strict loss, \(Q\)-activity, or legal residual. The branch
proved above says this retention cannot fail through positive-radius or
fixed-cylinder terminal concentration.

Therefore any remaining counterexample to full-tower retention must be a
shrinking heat-scale material-time marginal profile satisfying `(ITL.12)' while
evading `(ITL.13)'.

## 6. Strict fork for the active c_0 goal

The active \(c_0\) objective now has this stricter fork:

\[
\boxed{
\begin{array}{ll}
\text{positive-radius / thick branch}
  &\Rightarrow \text{closed by finite participation and viscous throttle},\\[1mm]
\text{shrinking heat-scale retained branch}
  &\Rightarrow \text{prove }(ITL.13)\text{ or surplus-zero route-b rigidity},\\[1mm]
\text{certificate or custody failure}
  &\Rightarrow \text{typed Pack/Part/selector/legal route-out}.
\end{array}
}
\tag{ITL.16}
\]

Thus the remaining proof is not a search for temporal reversibility or an
adiabatic equality cycle. It is a material-time surplus-zero rigidity theorem
for one incompressible viscous pressure-constrained same-fluid field.

## 7. State

This note proves the positive-radius/thick-material-time branch and records the
strict reduction of the surviving heat-scale branch. It does not prove
`FullTowerSignedTotalExchangeRetention.A`, `MaterialTimeLiouvilleExclusion.A`,
`SameParentRecordPositiveSelectionStorage.A`, or \(c_0>0\).
