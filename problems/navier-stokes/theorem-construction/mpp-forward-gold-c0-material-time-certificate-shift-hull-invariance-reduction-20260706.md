---
theorem_id: forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / material-time certificate flow invariance
status: proved-abstract-shift-hull-invariance-reduces-flow-row-to-compact-certified-path
target_object:
  - MaterialTimeCertificateFlowInvariance.A
  - CertifiedMaterialTimeShiftHullCompactness.A
  - ZeroSurplusCertificateClosedGraph.A
  - CertifiedSurplusZeroThetaProfileRigidity.A
  - ZeroLossTowerRelayRigidity.A
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-height-growth-not-self-similar-profile-correction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-theta-clock-retention-liouville-bridge-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-material-time-liouville-bath-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-transport-defect-current-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-same-law-tower-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
completion_truth: >-
  Abstract proof plus strict reduction only. This note proves that
  material-time flow invariance is automatic once the retained marginal branch
  has been represented as a compact certified path hull closed under interior
  material-time shifts. The proof is a shift-hull lemma: a limit of shifted
  actual certificates remains inside the hull after any fixed material-time
  shift, because the shifted approximants are still shifted actual
  certificates. The theorem does not build that compact certified path for
  Navier-Stokes. The current source files show exactly what the path
  compactness and closed graph must carry: actual pressure law/Reynolds defect,
  material ancestry/transport defect, finite cover, differentiated same-law
  tower, service modulus, zero-surplus payer closure, and terminal-window
  interior shift room. Thus MaterialTimeCertificateFlowInvariance.A is now
  reduced to CertifiedMaterialTimeShiftHullCompactness.A plus
  ZeroSurplusCertificateClosedGraph.A. ZeroLossTowerRelayRigidity.A is retyped
  by the critical-height-growth correction as zero-loss rigidity for certified
  material-time recurrence with positive critical-height record service; a
  self-similar/DSS spectral calculation is only a scale-equality model unless it
  preserves H-record growth. No FullTower retention, Liouville exclusion, c_0,
  or MPP closure is claimed.
---

# Material-time certificate flow invariance reduces to a compact shift hull

## 1. Object

The surviving bad object is one same-fluid Navier-Stokes material history,
rescaled on shrinking heat-scale windows, with positive normalized
\(\Theta_N\) service and zero same-packet surplus payers. The route-b theorem
needs the certified marginal profile to be invariant under material-time
evolution before zero-loss rigidity can empty it.

This note separates the abstract invariance mechanism from the hard
Navier-Stokes compactness input.

## 2. Abstract shift-hull lemma

Let \(X\) be a compact metric space of certificate states. A state records the
observable WKB/tower label together with the legality data needed for the same
solution: datum, fixed viscosity, pressure law, material ancestry, finite cover,
tower coordinates, service readout, and payer data.

Let \(Z_j:I_j\to X\) be certified material-time paths extracted from actual
retained Navier-Stokes windows. For a shift \(a\), write
\[
  (\tau_a Z_j)(s)=Z_j(s+a)
\]
where the right side is defined.

Assume the selected windows have enough interior room for the shifts being
tested, and assume the shifted family
\[
  \mathcal H
  =
  \overline{\{\tau_a Z_j:\ a+[ -S,S]\subset I_j
  \text{ for some }S,\ j\}}
\]
is compact in \(C_{\rm loc}(\mathbb R;X)\) or in the corresponding weak
certificate-path topology where fixed shifts are continuous.

Then \(\mathcal H\) is invariant under material-time shifts. Indeed, take
\[
  Z=\lim_n \tau_{a_n}Z_{j_n}\in\mathcal H .
\]
For any fixed \(h\), the shifted approximants satisfy
\[
  \tau_h(\tau_{a_n}Z_{j_n})=\tau_{a_n+h}Z_{j_n},
\]
and these are still shifted actual certificate paths whenever the windows have
the corresponding interior room. By continuity of \(\tau_h\),
\[
  \tau_h Z
  =
  \lim_n \tau_{a_n+h}Z_{j_n}
  \in \mathcal H .
\]
So the material-time flow invariance is automatic after compact certified
shift-hull construction.

The boundary case is not a loophole. If \(a_n+h\) leaves the certified interior
window, the branch has lost terminal window/custody room and must pay a stop,
legal, selector, Pack, Part, or Field defect before it can be used as a
retained invariant profile.

## 3. Closed zero-surplus certificate graph

Let \(\mathcal G\subset X\) be the certified zero-surplus state graph. A point
of \(\mathcal G\) contains:

1. the same datum and fixed viscosity;
2. the actual pressure law, with Reynolds defect \(R\) vanished, pressure-gauge
   compatible, or legally carried;
3. material ancestry, with transport defect \(A=J-u\rho\) vanished or legally
   carried;
4. finite/readout-compatible cover data;
5. differentiated same-law tower data, with derivative graph defects
   \(G_\alpha\) and flux defects \(R_\alpha\) vanished or legally carried;
6. stable service readout, or else a selector/custody escape bill;
7. zero same-packet surplus payer state.

If \(\mathcal G\) is closed in \(X\) and every prelimit path \(Z_j\) lies in
\(\mathcal G\), then every limit path in the shift hull lies in \(\mathcal G\)
pointwise. This is the same closed-support argument as the profile admission
criterion, applied to paths rather than one-time labels.

Therefore:
\[
\boxed{
\texttt{CertifiedMaterialTimeShiftHullCompactness.A}
+
\texttt{ZeroSurplusCertificateClosedGraph.A}
\Longrightarrow
\texttt{MaterialTimeCertificateFlowInvariance.A}.
}
\tag{MTH.1}
\]

This is an actual proof of the abstract flow-invariance mechanism.

## 4. What Navier-Stokes still has to supply

The compact hull and closed graph are not free. The checked source files give
the exact rows.

The pressure-law row must close the Reynolds defect:
\[
  u_j\otimes u_j\rightharpoonup u\otimes u+R,
  \qquad
  \mathbb P\,\operatorname{div}R=0
\]
with pressure-service compatibility, or else \(R\) must be a legal carried
certificate. Positive covariance ballast cannot be erased as gauge; its trace
energy has to land in the cover, ancestry, and tower certificates.

The material-ancestry row must close
\[
  A=J-u\rho .
\]
If \(A=w\rho\), then \(|A|=|w|\rho\), so nonzero carried transport defect has
nonzero current variation. If \(A\) has a singular part, that part needs
additional legal ancestry mass/current or it is Part-side original-history
failure.

The cover row must keep a compact finite/readout-compatible cover. Radius
collapse, escaping chart data, unbounded chart count, and overlap/readout loss
are Pack-side cover failures.

The tower row must close
\[
  G_\alpha=U_\alpha-\partial^\alpha U_0
\]
and the differentiated nonlinear flux defects
\[
  R_\alpha
  =
  M_\alpha
  -
  \sum_{\beta\le\alpha}{\alpha\choose\beta}
  U_\beta\otimes U_{\alpha-\beta}.
\]
Otherwise the profile has lost the differentiated same-law tower, or the defect
must be carried as a legal tower certificate.

The service row needs a uniform material/label modulus. Failure of the modulus
is moving selector, center, envelope, time, scale, bank, weight, rung, or
profile-admission escape, not silent retained service.

Finally, the zero-surplus payer row must be closed in the same topology. This
is the row that distinguishes a certified marginal path from an observable
profile that has projected away the bill.

## 5. Consequence for route-b

The route-b package becomes:
\[
\begin{aligned}
&\texttt{CertifiedMaterialTimeShiftHullCompactness.A}\\
&+\texttt{ZeroSurplusCertificateClosedGraph.A}\\
&+\texttt{ZeroLossTowerRelayRigidity.A}\\
&\Longrightarrow
\texttt{CertifiedSurplusZeroThetaProfileRigidity.A}.
\end{aligned}
\tag{MTH.2}
\]

The first two lines give the invariant certified marginal class. The third
line is the zero-loss rigidity on that class:
\[
  \nu\int|\nabla\delta|^2
  \ge
  (1+2\varepsilon)\,\mathrm{Prod}(\delta),
  \qquad \varepsilon>0.
\]

After the critical-height-growth correction, this is not a standalone
self-similar/DSS profile exclusion. The certified class must still carry
positive \(H=\frac12\|u\|_{\dot H^{1/2}}^2\) record service in material time;
exact self-similar scaling has \(H\) constant and a DSS orbit has \(H\)
periodic.

Thus this note moves the active goal by proving that flow invariance itself is
not mysterious once the compact certified path exists. The hard Navier-Stokes
work is now explicitly the compact certified shift-hull/closed-zero-surplus
construction plus the surplus-zero spectral gap. It is not closed here.
