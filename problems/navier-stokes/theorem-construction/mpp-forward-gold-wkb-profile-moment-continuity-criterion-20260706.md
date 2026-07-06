---
theorem_id: forward-gold-wkb-profile-moment-continuity-criterion-20260706
status: exact-profile-moment-passage-criterion-continuous-service-paid-moving-spike-not
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB profile admission
target_object:
  - WKBProfilePressureMomentPassage.A
  - DiffuseWKBProfileAdmission.A
  - MicrolocalDefectProfileAdmission.A
  - MovingServiceFunctionalEscape
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
completion_truth: >-
  Exact criterion and countermodel. For a tight WKB phase-label cloud
  mu_j -> mu on a compact label space X, if the active pressure-service readout
  is represented by one bounded continuous nonnegative functional F on X and
  int F dmu_j >= c0, then int F dmu >= c0. The same is true for moving
  functionals F_j that converge uniformly to F. Thus weak-* profile passage
  preserves the retained pressure-service moment once the service functional is
  stabilized in the compact label topology. Without that stabilization the
  conclusion is false: moving spike functionals can keep int F_j dmu_j=1 while
  mu_j -> delta_0 and the limiting functional is identically zero. Therefore a
  WKB profile proof cannot cite compactness alone; it must prove continuous /
  uniformly stabilized pressure-service readout, or else the failure is
  material/time/weight/rung/selector escape. The closed-graph witness follow-up
  then isolates the remaining legality clause: a closed legal-label set admits
  the limiting profile support, while nonclosed legality gives a limit-of-class
  / original-participation / carrier-or-tower failure. This pays only the
  moment-passage subclause, not closedness of the actual Navier-Stokes WKB
  legality predicates, no WKB construction or exclusion, no confinement
  constant, and no MPP closure.
---

# WKB profile moment continuity criterion

## 1. Object

The unbounded-count WKB cloud split produces a tight phase-label profile or a
nontight selected-carrier escape. The next cheap hope is:
\[
  \text{tight profile}
  \Longrightarrow
  \text{retained pressure-service moment in the limit}.
  \tag{PMC.1}
\]

This is true only after the pressure-service readout is a continuous stabilized
functional on the compact label space. It is false for a moving selector or a
discontinuous spike.

This note pays the exact moment-passage clause. It does not admit the profile
as a same-solution terminal witness.

## 2. Fixed continuous service functional

Let \(X\) be the compact WKB phase-label space after angular quadrature,
tightness, and the selected carrier coordinates have been fixed. Let
\[
  \mu_j\stackrel{*}{\rightharpoonup}\mu
  \qquad\text{in }\mathcal M_+(X).
  \tag{PMC.2}
\]

Let \(F:X\to[0,\infty)\) be the normalized active pressure-service readout.
Here \(F(\ell)\) is the scalar retained service contributed by label \(\ell\)
after the local Beltrami/angular pressure moment has been reduced to the
finite moment algebra.

Assume
\[
  F\in C(X),
  \qquad
  \int_X F\,d\mu_j\ge c_0>0
  \quad\text{on a terminal tail}.
  \tag{PMC.3}
\]

Weak-* convergence gives
\[
  \int_X F\,d\mu
  =
  \lim_{j\to\infty}\int_XF\,d\mu_j
  \ge c_0.
  \tag{PMC.4}
\]

So the retained pressure-service moment survives in the profile:
\[
  \boxed{
  \mu_j\stackrel{*}{\rightharpoonup}\mu,\quad
  F\in C(X),\quad
  \int F\,d\mu_j\ge c_0
  \Longrightarrow
  \int F\,d\mu\ge c_0.
  }
  \tag{PMC.5}
\]

This is the exact compactness payment. A tight WKB profile is not merely visible;
it carries the same scalar moment if the scalar moment is a continuous label
readout.

## 3. Uniformly stabilized moving service

The same conclusion holds if the service readout moves but stabilizes
uniformly. Let \(F_j,F\in C(X)\), \(F_j\ge0\), and
\[
  \|F_j-F\|_{L^\infty(X)}\to0,
  \qquad
  \int_XF_j\,d\mu_j\ge c_0.
  \tag{PMC.6}
\]

If the masses \(\mu_j(X)\) are uniformly bounded, then
\[
  \left|\int_X(F_j-F)\,d\mu_j\right|
  \le
  \|F_j-F\|_{L^\infty}\,\mu_j(X)
  \to0.
  \tag{PMC.7}
\]
Hence
\[
  \int_XF\,d\mu
  =
  \lim_{j\to\infty}\int_XF\,d\mu_j
  =
  \lim_{j\to\infty}\int_XF_j\,d\mu_j
  \ge c_0.
  \tag{PMC.8}
\]

Thus uniformly stabilized bank/weight/service labels are harmless for moment
passage.

## 4. Moving spike countermodel

Without continuity/stabilization, the conclusion is false.

Let
\[
  X=[0,1],
  \qquad
  \mu_j=\delta_{1/j}.
  \tag{PMC.9}
\]
Then
\[
  \mu_j\stackrel{*}{\rightharpoonup}\delta_0.
  \tag{PMC.10}
\]

Choose continuous spike functions \(F_j\ge0\) with
\[
  F_j(1/j)=1,
  \qquad
  \operatorname{supp}F_j\subset(1/(2j),\,2/j),
  \qquad
  F_j(0)=0.
  \tag{PMC.11}
\]
Then
\[
  \int_XF_j\,d\mu_j=1
  \quad\text{for every }j,
  \tag{PMC.12}
\]
but the pointwise limiting service away from the moving spike is zero, and the
weak-* limit measure sees
\[
  \int_X0\,d\delta_0=0.
  \tag{PMC.13}
\]

The retained moment was carried by the moving service selector, not by a
continuous terminal profile readout. This is exactly label/weight/rung escape.
It cannot be counted as admitted retained pressure service.

The same countermodel can be made with diffuse packet clouds by replacing
\(\delta_{1/j}\) with a small normalized packet cloud inside
\((1/(2j),2/j)\). The issue is the moving service functional, not the number of
atoms.

## 5. Consequence for profile admission

Follow-up, 2026-07-06:
`mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md`
identifies the exact compactness input behind "uniformly stabilized": a uniform
modulus of continuity for the active service readouts on the compact WKB
phase-label space. With that modulus, Arzela-Ascoli supplies the uniformly
convergent subtail used in Section 3. Failure of that modulus is the moving
service-selector branch in material, center, envelope, time, scale, bank,
weight, or rung coordinates.

The profile admission burden splits:
\[
\begin{array}{ll}
\text{continuous or uniformly stabilized service readout}
  &\Rightarrow
  \text{profile carries the retained pressure-service moment},\\[2mm]
\text{moving/discontinuous service readout}
  &\Rightarrow
  \text{material/time/weight/rung/selector escape}.
\end{array}
\tag{PMC.14}
\]

After the first branch is paid, the remaining question is not the scalar
moment. It is same-solution witness legality:

1. same original datum and fixed viscosity;
2. actual Navier-Stokes pressure law behind the profile;
3. material ancestry or licensed original participation;
4. finite/readout-compatible carrier cover at the measure level;
5. differentiated same-law tower through the chosen depth.

Those clauses are exactly the still-open
\[
  \text{MicrolocalDefectProfileAdmission.A}
  \tag{PMC.15}
\]
or its diffuse/atomic subbranches.

The closed-graph witness criterion pays the compactness form of this remaining
legality question. Once the legal-label set is closed in the WKB phase-label
topology, profile support stays legal under weak-* passage. When the legal set
is not closed, legal prelimit labels can converge to an illegal limiting label,
which is a limit-of-class / original-participation / carrier-or-tower failure,
not admitted retained profile supply.

The certificate-compactness follow-up names the closedness input: the label
topology must retain compact certificates for the actual law, material
ancestry/original participation, finite/readout-compatible cover, and same-law
tower. Losing one of those certificate coordinates is the typed face failure,
not retained WKB supply.

## 6. Four-sentence result

Weak-* profile compactness preserves the retained WKB pressure-service moment
when the service readout is one bounded continuous functional on the compact
phase-label space. It also preserves the moment for moving functionals that
converge uniformly. Without that stabilization the statement is false: a moving
spike selector can keep unit service on every prelimit while the limiting
profile sees zero service. Thus profile admission now separates into a paid
moment-passage clause and a certificate-compactness same-solution legality
clause: certified closed legal labels admit the profile, while nonclosed
legality produces a typed limit-of-class defect.

## 7. State

This note proves the profile moment-passage criterion and the moving-spike
countermodel. The follow-up closed-graph criterion proves the exact legal-label
compactness condition for profile support, and leaves the actual closedness of
the Navier-Stokes WKB legality predicates open.

It proves no `MicrolocalDefectProfileAdmission.A`, no
`DiffuseWKBProfileAdmission.A`, no `AtomicWKBNeighborhoodCarrierAdmission.A`,
no actual WKB carrier extraction theorem, no WKB construction/exclusion, no
confinement constant, and no MPP closure.
