---
theorem_id: forward-gold-wkb-covariance-ballast-field-readout-20260706
status: strict-reduction-terminal-covariance-ballast-to-field-readout-after-admission
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / Field readout consumer
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - TerminalWKBMomentWitnessAdmission.A
  - NonvanishingBallast.FieldFaceReduction
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-no-vanishing-horn-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-field-admission-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/r3-cm-contrapositive-sobolev-hs-energy-20260528.md
completion_truth: >-
  Strict reduction only. The covariance-ballast note proves that an actual
  Reynolds-null anisotropic defect needs positive trace ballast, and the
  ballast-energy ledger identifies that trace as unresolved kinetic energy
  mu_R=(1/2)tr R. This note proves the terminal-frequency consumer: if that
  positive trace energy is admitted as a same-solution WKB witness at carrier
  frequency lambda_j -> infinity with nonvanishing normalized mass, then
  Plancherel/Bernstein gives high Sobolev readout of size
  mu_R lambda_j^(2m). Hence, after same-solution witness admission and the
  differentiated same-law tower through the chosen depth, the installed
  Sobolev/H^s CM theorem routes the branch to Pack/Part/Field failure, with
  Field as the surviving same-carrier landing. The no-vanishing-horn follow-up
  records the complementary branch: if normalized mu_R vanishes, then the
  anisotropic covariance mass vanishes with it. This proves no theorem that the
  positive trace ballast is legally carried through ancestry/cover/tower, no
  WKB profile admission theorem, no WKB construction/exclusion theorem, no
  confinement constant, and no MPP closure.
---

# Covariance ballast at terminal frequency is Field-visible

## 1. Object

The ballast note proved an algebraic constraint. If an actual rung-zero
Reynolds defect lies in the Leray-null pressure branch and
\[
  R={\tau\over3}I+A,\qquad \operatorname{tr}A=0,\qquad R\ge0,
  \tag{CBF.1}
\]
then
\[
  {\tau\over3}\ge-\lambda_{\min}(A),
  \qquad
  \tau\ge\sqrt{3\over2}|A|_F .
  \tag{CBF.2}
\]

The energy-ledger note proved what the scalar trace means:
\[
  \mu_R={1\over2}\operatorname{tr}R .
  \tag{CBF.3}
\]
It is unresolved kinetic energy. The pressure gauge may remove the force
\(\operatorname{div}R=\nabla q\) from the velocity equation, but it does not
erase \(\mu_R\).

This note records the terminal-frequency consumer for that energy.

## 2. Carrier-energy readout

Work on a normalized terminal \(D_j\)-bank. Let the admitted high-frequency
carrier have frequency \(\lambda_j\to\infty\), occupied fraction \(\phi_j\),
and positive trace density \(\tau_j=\operatorname{tr}R_j\). Equivalently, its
unresolved energy density is
\[
  \mu_j={1\over2}\tau_j .
  \tag{CBF.4}
\]

Assume the WKB trace-energy mass is retained:
\[
  M_j:=\phi_jD_j^3\mu_j\ge c_0>0 .
  \tag{CBF.5}
\]

For a packet spectrally localized to an annulus comparable to \(\lambda_j\),
Plancherel/Bernstein gives, for every integer \(m>0\),
\[
  \|\nabla^m u_j^{\rm WKB}\|_2^2
  \gtrsim
  \lambda_j^{2m}\|u_j^{\rm WKB}\|_2^2 .
  \tag{CBF.6}
\]
The trace of the covariance is exactly the packet energy ledger, so
\[
  \|u_j^{\rm WKB}\|_2^2\sim M_j .
  \tag{CBF.7}
\]
Therefore
\[
  \|\nabla^m u_j^{\rm WKB}\|_2^2
  \gtrsim
  c_0\lambda_j^{2m}
  \longrightarrow\infty .
  \tag{CBF.8}
\]

For the installed CM consumer one uses the required Sobolev depth, in
particular \(m>1\). The point is stronger at the WKB readout level: positive
terminal trace energy at unbounded carrier frequency is high-derivative visible
at order \(\lambda^{2m}\).

## 3. Relation to the pressure-Hessian moment readout

The earlier terminal WKB Field-admission reduction consumes pressure-Hessian
moment \(K\):
\[
  |K|\sim a^2\lambda^2,
  \qquad
  \|\nabla^m u_{\rm WKB}\|_2^2
  \sim
  \phi D^3 |K|\lambda^{2m-2}.
  \tag{CBF.9}
\]

The trace-ballast version consumes energy directly:
\[
  \tau\sim a^2,
  \qquad
  \|\nabla^m u_{\rm WKB}\|_2^2
  \sim
  \phi D^3 \tau\,\lambda^{2m}.
  \tag{CBF.10}
\]

Thus the ballast branch does not need to be converted into pressure-Hessian
moment before it is visible. Once it is admitted at terminal WKB frequency, its
own positive trace energy supplies the Sobolev wall.

## 4. CM consumption after admission

The lawful CM implication is conditional on admission:
\[
\begin{aligned}
&\hbox{same-solution terminal WKB witness},\quad
  \lambda_j\to\infty,\quad
  \phi_jD_j^3\mu_j\ge c_0>0 \\
&\qquad\Longrightarrow
  SobWall_{H^s}(\mathcal W)
  \Longrightarrow
  \neg Pack_Q
  \vee
  \neg Part_{N,Q}
  \vee
  \forall\rho>0\,\neg Field_{N,\rho,Q}.
\end{aligned}
  \tag{CBF.11}
\]

So the positive trace ballast has only two legal terminal meanings in this
branch. If it is admitted with the same witness, same ancestry/participation,
finite readout-compatible cover, and same-law tower, it is consumed by the
Sobolev Field route. If one of those certificates is missing, the branch is a
certificate/admission failure before it becomes retained WKB supply.

## 5. Reduced burden

The PSD Leray-null covariance branch is now:

```text
trace ballast has positive terminal subtail
   and the Sobolev/Field consumer applies after admission
or trace ballast vanishes on the retained terminal witness
   and the anisotropic covariance defect vanishes with it
or positive trace ballast is not legally carried through
   ancestry / cover / same-law tower, giving certificate failure
or the stress is not an actual Reynolds covariance and needs
   an explicit signed-stress certificate; if represented by PSD packet pieces
   S=P-N, it carries tr P+tr N >= ||S||_* positive trace variation.
```

This is not a confinement constant. It is a consumer for a branch that already
entered the terminal WKB witness ledger.

## 6. Four-sentence result

Positive covariance ballast is unresolved kinetic energy:
\[
  \mu_R={1\over2}\operatorname{tr}R .
\]
If that energy is carried by an admitted terminal WKB packet at
\(\lambda_j\to\infty\) with nonvanishing normalized mass, then
\[
  \|\nabla^m u_j\|_2^2\gtrsim \mu_R\lambda_j^{2m},
\]
so the high Sobolev readout diverges. The installed CM Sobolev theorem then
routes the same-solution witness to Pack/Part/Field failure, with Field as the
surviving same-carrier landing. Pressure gauge can hide the velocity force, but
not the terminal high-frequency energy readout.

## 7. State

This note proves the Field-readout consumer for admitted terminal covariance
ballast.

It proves no legal carriage theorem for the positive trace ballast through
material ancestry, finite cover, or same-law tower; no WKB profile admission
theorem; no WKB construction/exclusion theorem; no crowd-cell decision; no
confinement constant; and no MPP closure.
