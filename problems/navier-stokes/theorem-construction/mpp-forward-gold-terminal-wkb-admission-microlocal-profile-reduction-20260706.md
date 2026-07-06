---
theorem_id: forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706
status: strict-reduction-terminal-wkb-admission-to-actual-carrier-or-microlocal-profile-admission
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB frequency escape / same-solution witness admission
target_object:
  - TerminalWKBMomentWitnessAdmission.A
  - ActualWKBCarrierExtraction.A
  - MicrolocalDefectProfileAdmission.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-field-admission-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-high-factor-admission-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-terminal-frequency-escape-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-field-readout-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-cover-landing-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-ancestry-tower-landing-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-order-selected-carrier-atom-to-cm-field-face-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-pulse-same-witness-admission-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-sparse-same-witness-carrier-custody-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mcp-partfieldbeforepacklicensing-a-packpositiveradiuscertification-a-770adef0d8.md
  - problems/navier-stokes/theorem-construction/mcp-partfieldbeforepackstrengthattempt-a-partfieldbeforepackstrength-a-241943042e.md
completion_truth: >-
  Strict reduction only. The nonvanishing terminal WKB horn already has the
  Sobolev readout: if lambda tends to infinity and the normalized retained
  pressure-Hessian moment phi D^3 |K| does not vanish, every H^m readout with
  m>1 diverges. The missing theorem is not another readout estimate and not a
  Chapter-10 constant. It is admission: the WKB moment must be extracted from
  the actual same Navier-Stokes branch as a same-solution terminal witness. The
  current sources split that admission into two possible inputs. Either one
  proves ActualWKBCarrierExtraction.A, producing real material packets/windows
  with finite overlap, selected carrier heredity, actual pressure-Hessian
  moment, and same-law tower; then the installed Sobolev CM theorem gives the
  Field face. Or one proves MicrolocalDefectProfileAdmission.A, showing that a
  nonzero semiclassical/H-measure/WKB defect profile from the actual branch is
  itself a lawful terminal witness ledger, or else a limit-of-class terminal
  artifact/original-participation failure. The profile moment-continuity
  criterion pays the scalar pressure-moment passage when the service readout is
  continuous or uniformly stabilized, and blocks moving-spike selector overclaim.
  The closed-graph witness criterion pays the next compactness row: closed
  same-solution legal labels admit the profile support, while nonclosed legality
  gives a limit-of-class / original-participation / carrier-or-tower failure.
  Certificate compactness names the actual closedness input, and the
  pressure-law certificate now contains the Reynolds-defect fork: the quadratic
  defect must vanish modulo pressure gauge with compatible pressure service,
  lie in the exact Leray-null class R=qI+S with div S=0, or be legally carried
  as a profile certificate. The null class contains trace-free anisotropic
  Hessian gauges R_phi=Hess phi-(Delta phi)I/3, so anisotropy alone does not
  close the pressure row. Actual Reynolds origin adds the covariance-ballast
  screen, whose positive trace is unresolved kinetic energy; once that trace is
  admitted at terminal WKB frequency with nonvanishing mass, it is consumed by
  the same Sobolev/Field readout. The positive trace also has explicit cover,
  ancestry, and tower landings: uncovered trace is Pack-side cover failure,
  untransported trace energy is Part-side material-history failure, and a trace
  tower not tied to the same differentiated law is Part-side tower failure. The
  ancestry coordinate has the transport-defect fork, and the cover coordinate
  has the finite-cover compactness fork.
  Existing microlocal-defect notes show
  that defect visibility alone does not supply selected positive-carrier
  payment or same-witness admission. Therefore a WKB profile without actual
  carrier admission is not retained supply. This note proves no actual-carrier
  extraction theorem, no microlocal-profile admission theorem, no WKB
  construction/exclusion, no native-reserve theorem, and no MPP closure.
---

# Terminal WKB admission: actual carrier or microlocal profile

## 1. What is already paid

The terminal WKB field-admission reduction already proves the readout
calculation. In a normalized \(D\)-bank, a Beltrami WKB packet with carrier
frequency \(\lambda\), occupied fraction \(\phi\), and pressure-Hessian moment
\(K\) has
\[
  \|\nabla^m u_{\rm WKB}\|_2^2
  \sim
  \phi D^3 |K|\lambda^{2m-2},
  \qquad m>1.
\]
Thus
\[
  \lambda\to\infty,
  \qquad
  \phi D^3 |K|\ge c_0>0
  \quad\Longrightarrow\quad
  \|\nabla^m u_{\rm WKB}\|_2\to\infty
  \quad(m>1).
\]

The covariance-ballast trace version is parallel. If the admitted terminal WKB
profile carries positive unresolved covariance energy
\[
  \mu_R={1\over2}\operatorname{tr}R
\]
with
\[
  \lambda\to\infty,
  \qquad
  \phi D^3\mu_R\ge c_0>0,
\]
then
\[
  \|\nabla^m u_{\rm WKB}\|_2^2
  \sim
  \phi D^3\mu_R\lambda^{2m}
  \longrightarrow\infty
  \quad(m>0),
\]
and the installed \(m>1\) Sobolev consumer applies.

Once this object is a synchronized same-fluid terminal witness ledger, the
installed Sobolev/H^s CM theorem applies:
\[
  SobWall_{H^s}(\mathcal W)
  \Longrightarrow
  \neg Pack_Q(\mathcal W)
  \vee
  \neg Part_{N,Q}(\mathcal W)
  \vee
  \forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
\]

So the nonvanishing WKB horn has no remaining Sobolev calculation. Its missing
gate is admission of the WKB object as the actual terminal object of the same
solution.

## 2. Why the existing WKB notes do not give admission

The many-cell WKB notes produce a parameter window and a list of necessary
same-fluid requirements:
\[
  \theta\lesssim\beta^{24/25},
  \qquad
  \beta^{-12/5}\lesssim N\lesssim\beta^{12/5}\theta^{-5},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}.
\]
Those conditions type a possible survivor. They do not extract that survivor
from an arbitrary finite-time Navier-Stokes branch.

The Beltrami phase identity, endpoint-room ledger, weight-variation ledger,
bank-motion ledger, and terminal-frequency fork are also necessary laws for an
actual material WKB population. They do not prove that such a population exists
inside the actual same branch, with selected carrier heredity and a finite
readout-compatible packet cover.

The retained-pulse same-witness recheck supplies admission after a promoted
finite-breakdown terminal pulse is already identified. The sparse same-witness
custody note preserves a same witness and carrier on a tail where those objects
are already tail-hereditary. Neither note creates a WKB carrier from a
support-only ansatz.

## 3. Actual carrier extraction

The first sufficient theorem is:

```text
ActualWKBCarrierExtraction.A
```

Statement shape:

Given an alleged finite-time Navier-Stokes breakdown from the same smooth datum,
suppose the terminal-frequency WKB horn is active. Then there is a terminal
subsequence of actual same-solution packets/windows \(Q_j\), times
\(t_j\uparrow T_\ast\), scales \(D_j\), carrier frequencies
\(\lambda_j\to\infty\), and pressure-Hessian moments \(K_j\) such that:

1. the packets come from the actual velocity-pressure solution, not an external
   WKB ansatz;
2. the packets have material ancestry or a licensed outside-CM
   original-participation record;
3. finite-overlap and readout-compatible localization hold on the chosen
   windows;
4. selected carrier heredity or finite-menu/profile capture prevents the WKB
   label from moving through an unpriced continuum;
5. the differentiated same-law tower exists through the required depth \(N\);
6. the normalized retained moment satisfies
   \[
     \phi_jD_j^3|K_j|\ge c_0>0.
   \]

Then the WKB object is a synchronized same-solution terminal witness ledger
\(\mathcal W\), and the Sobolev readout gives the CM face alternative above.

This is not a new proof of Field failure. It is the exact missing producer
admission theorem whose output the Field consumer already knows how to use.

## 4. Microlocal/profile admission

The second possible theorem is:

```text
MicrolocalDefectProfileAdmission.A
```

Statement shape:

From the actual same-solution WKB sequence, construct a semiclassical,
H-measure, Wigner, or equivalent microlocal defect measure \(\mu\) carrying the
nonzero terminal pressure-Hessian moment. Then prove one of the following:

1. \(\mu\) localizes to a lawful terminal witness ledger with the same datum,
   same branch, actual pressure law, finite/readout-compatible carrier cover,
   and same-law tower; or
2. failure of such localization is itself a limit-of-class terminal artifact or
   original-participation failure, landing outside `Member(Q)` through the
   Part/Field interface.

The existing microlocal-defect direct test is the warning label. Microlocal
defect compactness can see a positive divergence-free high-frequency
oscillation. It does not by itself make the selected positive carrier
endpoint-uniformly integrable, square-summable, polar-saturated, or admitted to
the CM witness tree. Visibility is not admission.

The profile moment-continuity criterion isolates the scalar readout portion of
this burden. The service-modulus follow-up makes its exact input explicit: if
the active pressure-service readouts are uniformly bounded and share one
modulus of continuity on the compact phase-label space, then Arzela-Ascoli gives
a uniformly convergent subtail, and the nonzero pressure-service moment passes
to the profile. If that modulus fails, the apparent retained moment is carried
by a moving service selector; this is material, center, envelope, time, scale,
bank, weight, or rung escape, not admitted retained profile service.

The closed-graph witness criterion then isolates the legal-support portion of
the burden. Let \(\mathcal L\) be the legal labels satisfying same
datum/viscosity, actual Navier-Stokes pressure law, material ancestry or
licensed original participation, finite/readout-compatible carrier cover at
measure level, and same-law tower. Closedness of \(\mathcal L\) admits the
limiting profile support. Nonclosed \(\mathcal L\) gives legal prelimit labels
converging to an illegal limiting label, hence limit-of-class /
original-participation / carrier-or-tower failure.

The certificate-compactness follow-up identifies what closedness means inside
that label. The actual velocity-pressure law coordinate is not closed by weak
WKB compactness alone: if
\[
  u_j\otimes u_j\rightharpoonup u\otimes u+R,
\]
then the limit solves Navier-Stokes-Reynolds with force
\(-\operatorname{div}R\). Ordinary Navier-Stokes law survives only when
\(\mathbb P\operatorname{div}R=0\) with compatible pressure service, or when
\(R\) is carried as part of the legal profile certificate. Otherwise this is
actual-pressure-law / tower loss, not retained WKB supply.

The null branch in the pressure-law row is exact. For compactly supported
smooth symmetric stresses,
\[
  \mathbb P\operatorname{div}R=0
  \quad\Longleftrightarrow\quad
  R=qI+S,\qquad \operatorname{div}S=0 .
\]
It is nontrivial even inside trace-free anisotropic stresses:
\[
  R_\phi=\nabla^2\phi-{1\over3}(\Delta\phi)I
  \quad\Longrightarrow\quad
  \mathbb P\operatorname{div}R_\phi=0 .
\]
So the pressure-law row cannot reject every anisotropic crowd defect by
anisotropy alone. Actual Reynolds origin adds the covariance screen: the
rung-zero defect must be positive semidefinite as a matrix-valued measure.
Thus trace-free anisotropy in the null branch requires positive trace ballast,
pointwise
\[
  {\tau\over3}\ge-\lambda_{\min}(A),
  \qquad
  \tau\ge\sqrt{3\over2}|A|_F
\]
when \(R=(\tau/3)I+A\) and \(\operatorname{tr}A=0\). Such a defect must be
handled as PSD null covariance with ballast, as an explicitly legal signed
certificate, or by one of the other certificate rows.

The ballast-energy ledger identifies the positive trace as unresolved kinetic
energy:
\[
  \mu_R={1\over2}\operatorname{tr}R .
\]
Absorbing \(\operatorname{div}R=\nabla q\) into pressure removes the velocity
force, but it does not erase \(\mu_R\). A nonzero PSD null branch therefore
carries an energy/profile coordinate that must remain in the admitted witness
ledger or route to certificate loss.

The cover coordinate is Pack-side. A WKB profile must lift to a uniformly
bounded finite readout-compatible cover with compact chart parameters and
closed overlap/readout constraints. Radius collapse, unbounded chart count, or
overlap/readout incompatibility is carrier-cover loss before the profile can be
used as a terminal witness.

The positive ballast measure \(\mu_R\) has the same cover burden. If it survives
without a legal finite-cover lift, the branch is Pack-side cover failure rather
than retained pressure-law supply.

It also has the same non-cover certificate burdens. At the material-history
level, the ballast-energy current must satisfy
\[
  A_R:=J_R-u\rho_R=0
\]
in the required graph/current sense, or carry \(A_R\) as a legal
original-participation defect. At the differentiated-tower level, the ballast
readout must remain tied to the same velocity tower: the graph defects
\[
  G_\alpha=U_\alpha-\partial^\alpha U_0
\]
and differentiated flux defects \(R_\alpha\) must vanish or be legally carried.
Failure of either clause is Part-side material-history or same-law tower loss,
not retained pressure-null supply.

So a nonzero WKB defect measure is useful only after this additional theorem
turns it into either an admitted terminal witness or a typed limit-of-class /
participation failure.

## 5. The sharpened terminal WKB fork

The nonvanishing terminal WKB horn is now:
\[
  \lambda_j\to\infty,
  \qquad
  \phi_jD_j^3|K_j|\ge c_0>0
  \quad\hbox{or}\quad
  \phi_jD_j^3\mu_{R,j}\ge c_0>0
  \Longrightarrow
  \begin{cases}
    \text{actual WKB carrier extraction}
      &\Rightarrow \text{Sobolev Field-face route},\\
    \text{microlocal/profile admission}
      &\Rightarrow \text{Field face or limit-of-class / Part failure},\\
    \text{no carrier and no admitted profile}
      &\Rightarrow \text{construction/exclusion or admission failure.}
  \end{cases}
\]

The vanishing/intermittent horn remains exactly as in the high-factor admission
fork: bounded original-packet selected reads enter the Riesz/Bessel/first-exit
channel; scale-native zoom reads enter the native-reserve /
positive-critical-transfer hinge; unadmitted high-frequency sources are not
retained supply.

## 6. State

This note does not close `TerminalWKBMomentWitnessAdmission.A`. It makes that
gate smaller and harder to misroute.

The next proof-bearing object is one of:

```text
ActualWKBCarrierExtraction.A
MicrolocalDefectProfileAdmission.A, now including certificate compactness for
the legal-label graph, the Reynolds-defect pressure-law closure fork, and the
Reynolds-null stress characterization plus covariance-ballast screen, and the
ballast-energy ledger, and the transport-defect
material-ancestry closure fork, and the finite-cover / ballast-cover
compactness fork, the ballast ancestry/tower landing, the same-law tower defect fork, the product-assembly theorem,
and the product-lift gluing theorem reducing simultaneous lift to same-packet
cross-certificate compatibility, and the diagonal-compatibility reduction
reducing that residue to common-packet identity compactness, and the
identity-factorization reduction absorbing common identity into the four row
identity subcoordinates
WKBConstructionOrExclusion.A
```

Without one of those, the nonvanishing WKB Sobolev readout remains a conditional
consumer, not an admitted terminal witness and not MPP closure.
