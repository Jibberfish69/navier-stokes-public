---
theorem_id: forward-gold-c0-uniform-depth-hhalf-l3-critical-row-proof-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / uniform cascade depth / Hhalf-L3 critical row
status: proved-critical-projection-equivalence-not-epsilon-closure
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained Navier-Stokes history
  cascade_role: spatial critical projection of the retained record, not the full positive bill currency
target_object:
  - UniformCascadeTerminationDepth
  - L2ToL3RecordEquiIntegrability
  - HhalfCriticalTailTightness.A
  - SpatialCriticalConcentrationAtomExclusion.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - SelectedLinearRouteMeasureCarleson.A
  - WLF.60
  - ODP.91
  - epsilon_star_positive
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-uniform-cascade-depth-l2-l3-epsilon-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hs-lp-heat-flow-continuum-ontology-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hs-lp-continuum-one-signal-two-readouts-consolidation-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-terminal-tail-ui-bill-currency-strict-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-hardy-carleson-route-measure-not-native-linear-charge-no-go-20260707.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  This note proves the analytic projection that the active goal had been asking
  to stabilize: in three dimensions the uniform spatial cascade-termination row
  is the same as uniform L^3-critical equi-integrability of the retained
  L^2-controlled core, equivalently tightness of the H^{1/2} critical tail in
  Littlewood-Paley/Bernstein coordinates. The proof is only for the spatial
  signed/positive core projection: failure of L^3 equi-integrability creates
  arbitrarily small dyadic cylinders with retained critical mass, hence
  arbitrarily deep cascade; failure of uniform cascade termination creates the
  same small-volume L^3 concentration. The H^s-L^p continuum identifies this as
  the p=3, s=1/2 row. This does not prove epsilon_* > 0. The epsilon extraction
  requires the positive one-way selected service to be paid in retained
  B=dE_Field+dA_4B+dVisc bill currency. The half-tail has finite square critical
  tail but divergent weighted linear service, so the remaining theorem is still
  ParentOwnedPositiveRecordBillCurrency.A / SelectedLinearRouteMeasureCarleson.A
  / WLF.60 / ODP.91 on the order-locked full-packet selected carrier.
---

# Uniform depth is the H^{1/2}--L^3 critical row, not the epsilon bill

## 1. The same spatial core

Fix one retained same-fluid packet and one retained spatial record core after
legal/stop exits and paid defects are removed. This note only reads the spatial
critical projection of that core. It does not yet assert that the future-positive
selected edge is owned before readout or paid in retained bill currency.

Let \(f\) denote the spatial critical record density/readout of that retained
core on a fixed parent chart, and let \(P_j f\) be a Littlewood-Paley band at
frequency \(2^j\).

In three dimensions Bernstein gives
\[
\|P_j f\|_{L^p}
\le C_p\,2^{3j(1/2-1/p)}\|P_j f\|_{L^2}.
\tag{UHL.1}
\]

Thus the Sobolev matching line is
\[
s=3\left({1\over2}-{1\over p}\right).
\tag{UHL.2}
\]

At \(p=3\),
\[
s={1\over2},
\qquad
\dot H^{1/2}\hookrightarrow L^3.
\tag{UHL.3}
\]

Equivalently, for high frequencies,
\[
\|P_{\ge J}f\|_{L^3}
\le
C
\left(\sum_{j\ge J-O(1)}2^j\|P_j f\|_{L^2}^2\right)^{1/2}.
\tag{UHL.4}
\]

This is the exact \(L^2\to L^3\) critical row: the \(L^2\) band energy pays
\(L^3\) size only after the \(2^{j/2}\) critical derivative weight is supplied.

## 2. Uniform depth equals L^3 equi-integrability

Let `UCTD_sp` mean that no retained spatial critical core carries a fixed
positive amount of record through dyadic cylinders of arbitrarily small radius
while the \(L^2\)-controlled critical tail in `(UHL.4)' stays bounded.

Let `L2L3_sp` mean that the retained critical core is uniformly
\(L^3\)-equi-integrable:
\[
\forall\varepsilon>0\ \exists\delta>0:
|E|<\delta
\Longrightarrow
\sup_{\text{retained cores}}\int_E |f|^3\,dx<\varepsilon,
\tag{UHL.5}
\]
with \(f\) read on the same retained parent chart.

Then
\[
\texttt{UCTD\_sp}
\Longleftrightarrow
\texttt{L2L3\_sp}.
\tag{UHL.6}
\]

Proof. If `(UHL.5)' fails, there are retained cores \(f_n\) and sets
\(E_n\) with \(|E_n|\to0\) but
\[
\int_{E_n}|f_n|^3\,dx\ge m_0>0.
\tag{UHL.7}
\]
Cover \(E_n\) by dyadic cylinders at its density scale and discard all cylinders
whose retained record is below a fixed fraction of their volume-normalized
critical mass. The dyadic covering has bounded overlap, so at least one retained
subcollection carries a fixed fraction of \(m_0\) at radii \(r_n\to0\). Reading
those nested density cylinders as the cascade cylinders gives arbitrarily deep
retained spatial cascade. Thus `UCTD_sp` fails.

Conversely, if `UCTD_sp` fails, there are retained dyadic cylinders
\(Q_n\) with radius \(r_n\to0\) and
\[
\int_{Q_n}|f_n|^3\,dx\ge m_0>0.
\tag{UHL.8}
\]
Since \(|Q_n|\to0\), `(UHL.5)' fails with \(E=Q_n\). Hence `L2L3_sp` fails.

This proves that uniform spatial cascade termination and \(L^3\)-critical
equi-integrability are the same projection-level statement.

## 3. The H^{1/2} tail is the Littlewood-Paley form

In the Littlewood-Paley coordinate, `(UHL.5)' is supplied by uniform tightness of
the critical high-frequency tail
\[
\lim_{J\to\infty}
\sup_{\text{retained cores}}
\sum_{j\ge J}2^j\|P_j f\|_{L^2}^2
=0.
\tag{UHL.9}
\]

Indeed `(UHL.4)' gives
\[
\lim_{J\to\infty}
\sup_{\text{retained cores}}
\|P_{\ge J}f\|_{L^3}
=0,
\tag{UHL.10}
\]
and the low-frequency part is uniformly integrable on fixed parent charts by
finite dimensionality / smooth compactness of the retained low bands. Therefore
`(UHL.9)' implies `(UHL.5)'.

In the retained positive-core setting, failure of `(UHL.5)' produces the
dyadic-cylinder concentration in `(UHL.7)'--`(UHL.8)', hence a non-tight critical
tail after passing to the corresponding density scale. Thus, for this retained
spatial core,
\[
\texttt{UCTD\_sp}
\Longleftrightarrow
\texttt{L2L3\_sp}
\Longleftrightarrow
\texttt{HhalfCriticalTailTightness.A}.
\tag{UHL.11}
\]

This completes the first half of the requested row.

## 4. Why epsilon is a stricter row

The \(L^3\) row is square/critical-tail control. The \(c_0\) row is positive
one-way bill currency:
\[
B(W)\ge\varepsilon R(W),
\qquad
\varepsilon_*=\inf_{R(W)=1}B(W)>0.
\tag{UHL.12}
\]

The selected service is linear after the critical weight is restored. The
half-tail profile
\[
\nu_j={2^{-j}\over j+1},
\qquad
\omega_j=2^j
\tag{UHL.13}
\]
has finite square critical tail,
\[
\sum_j \omega_j\nu_j^2
=
\sum_j {2^{-j}\over(j+1)^2}
<\infty,
\tag{UHL.14}
\]
but divergent selected linear service,
\[
\sum_j \omega_j\nu_j
=
\sum_j {1\over j+1}
=\infty.
\tag{UHL.15}
\]

Therefore `(UHL.11)' is not enough for `(UHL.12)'. It excludes spatial critical
concentration of the \(L^3\) core, but it does not pay the positive selected
first-ratio service on the same parent edge.

The remaining epsilon theorem is still
\[
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\quad\text{or equivalently}\quad
\texttt{SelectedLinearRouteMeasureCarleson.A / WLF.60 / ODP.91}
\tag{UHL.16}
\]
on the order-locked full-packet selected carrier.

## 5. State

The uniform-depth \(=\ L^2\to L^3\) claim is proved at the spatial critical
projection. The requested epsilon extraction remains open because the proof must
upgrade from square critical-tail tightness to same-edge weighted linear bill
currency.
