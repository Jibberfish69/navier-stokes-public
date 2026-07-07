---
theorem_id: forward-gold-c0-critical-height-growth-not-self-similar-profile-correction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / critical-height record-growth object correction
status: route-correction-not-proof-self-similar-profile-quarantined-from-c0-counterobject
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
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - FullTowerSignedTotalExchangeRetention.A
  - MaterialTimeLiouvilleExclusion.A
  - ZeroLossTowerRelayRigidity.A
  - CriticalHeightGrowingMarginalRecordLadder.A
  - SelfSimilarProfileQuarantine.A
  - HsDriftConfinementProfileQuarantine.A
  - HeadPressureProfileLiouvilleQuarantine.A
source_refs:
  - /Users/thomasbirnie/.codex/attachments/334c8347-95df-4df0-a07e-cc602db48024/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-irreversibility-rebuild-reversible-frame-withdrawal-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-heat-scale-route-b-surplus-zero-rigidity-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
completion_truth: >-
  Correction and strict retyping only. The c_0 counterobject is not an exact
  self-similar or discretely self-similar critical profile. Exact Navier-Stokes
  scaling preserves the critical height H=1/2||u||_{\dot H^{1/2}}^2, and a DSS
  orbit is periodic in the same critical-height currency. Such a profile may be
  a formal ratio-one scale-covariant bill model, but it does not produce the
  unbounded critical-height record climb required by c_0. The H^s
  drift-confinement calculation and the head-pressure/Liouville profile line are
  saved as profile-side mathematics: they explain why the critical H-currency is
  exactly marginal and why exact self-similar profiles are not the retained
  c_0 counterobject. The true c_0 bad object is a same-fluid material history
  with H(t) growing through infinitely many retained record doublings while
  every same-packet payment channel remains exactly marginal. Therefore the
  profile work quarantines a wrong counterobject; it does not close c_0.
  Route-b rigidity must be
  stated on certified material-time marginal recurrence with critical-height
  growth, not as standalone self-similar/DSS profile exclusion. No
  FullTower retention, material-time Liouville theorem, strict c_0, or MPP
  closure is proved here.
---

# Critical-height growth is not a self-similar profile

## 1. Physical correction

The active \(c_0\) object is one irreversible same-fluid Navier-Stokes history
whose critical height

\[
H(t)=\frac12\|u(t)\|_{\dot H^{1/2}}^2
\tag{CHG.1}
\]

keeps climbing through retained material records. A record is positive motion of
this critical height in the object's own currency. A \(c_0=0\) counterobject
would therefore have

\[
H(t_j)\to\infty
\tag{CHG.2}
\]

through infinitely many same-packet record doublings while the allowed
same-packet payment bill tends to zero or stays exactly ratio-one marginal.

Exact self-similar scaling is a different object. Under the Navier-Stokes
scaling

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\tag{CHG.3}
\]

the critical height is invariant:

\[
\|u_\lambda\|_{\dot H^{1/2}}^2
=
\|u\|_{\dot H^{1/2}}^2.
\tag{CHG.4}
\]

So an exact self-similar orbit has no unbounded critical-height climb. A DSS
orbit is periodic in log-time in the same critical-height currency. It can be a
formal scale-covariant equality model for bill ratios, but it is not the
material record-ladder counterobject unless an additional bridge produces
unbounded critical-height records from that certified material history.

## 2. What the \(H^s\) lift really proved

For a Leray profile, the self-similar drift contains

\[
-\frac12(1+y\cdot\nabla)U .
\tag{CHG.5}
\]

Differentiating the scaling law

\[
\|u_\lambda\|_{\dot H^s}^2
=
\lambda^{2s-1}\|u\|_{\dot H^s}^2
\tag{CHG.6}
\]

gives

\[
\langle(1+y\cdot\nabla)U,U\rangle_{\dot H^s}
=
\left(s-\frac12\right)\|U\|_{\dot H^s}^2.
\tag{CHG.7}
\]

At \(s=1/2\), the drift does no work in the critical currency. For \(s>1/2\),
the drift has a confining sign in the stronger currency. This is the correct
reason the self-similar profile problem looks tied at the critical height and
improves after lifting to \(H^s\).

The lift also explains the far-field issue: a \(|y|^{-1}\) profile has
\(\widehat U(\xi)\sim|\xi|^{-2}\) at low frequency, so

\[
\int_{|\xi|\le1}|\xi|^{2s}|\widehat U(\xi)|^2\,d\xi
\sim
\int_0^1 r^{2s-2}\,dr
\tag{CHG.8}
\]

is finite exactly when \(s>1/2\).

That is real mathematics, but it is profile mathematics. It says the exact
self-similar branch is better attacked in a supercritical \(H^s\) currency. It
does not give a lower bound for positive \(H\)-record growth in the critical
currency.

The profile-side exclusion saved from the attachment is:

\[
\|U\|_{\dot H^{s+1}}^2
+\frac12\left(s-\frac12\right)\|U\|_{\dot H^s}^2
\lesssim
|\langle (U\cdot\nabla)U+\nabla P,U\rangle_{\dot H^s}|
\tag{CHG.9}
\]

with the transport core cancelling by incompressibility and the pressure term
handled by the usual Leray-profile pressure geometry. For small
\(\dot H^s\) data this already gives profile triviality after the standard
commutator estimate. At arbitrary amplitude the all-profile conclusion belongs
to the classical exact-self-similar Liouville / head-pressure line: the total
head pressure

\[
\Pi=P+\frac12|U|^2
\tag{CHG.10}
\]

cannot sustain an interior over-pressure core in the steady self-similar
profile equation with decaying far field. This saves the physical content of
the \(H^s\) lift: the lift exposes the confining drift that the critical
currency hides, and the head-pressure geometry removes the large-amplitude
exact-profile remainder.

This is now filed only as
`HsDriftConfinementProfileQuarantine.A` plus
`HeadPressureProfileLiouvilleQuarantine.A`. These are profile-side quarantine
rows. They do not identify a critical-height-growing material record ladder
with a Leray profile.

## 3. Why profile exclusion does not close \(c_0\)

A self-similar profile has \(H\) constant. The \(c_0\) counterobject has \(H\)
growing. Therefore the implication

\[
\text{exclude self-similar/DSS profiles}
\Longrightarrow
\text{exclude the }c_0\text{ record ladder}
\tag{CHG.11}
\]

is not available without a bridge theorem.

The missing bridge would have to prove that any ratio-one marginal
critical-height-growing material record ladder compactifies to a self-similar
or DSS profile in a way that preserves the positive \(H\)-record service. The
current source state has the opposite warning: a Zeno or heat-scale material
chain supplies shrinking scales and finite terminal time accumulation, but it
does not automatically supply a fixed invariance equation or fixed scale ratio.

Thus self-similar/DSS exclusion is quarantined as a route-licensing test:

\[
\text{DSS can test scale-covariant ratio-one bookkeeping,}
\tag{CHG.12}
\]

but it is not the \(c_0\) bad object.

## 4. Correct route-b rigidity target

`ZeroLossTowerRelayRigidity.A` should be read as a theorem on certified
material-time marginal recurrence for the same Navier-Stokes history:

\[
\begin{gathered}
\text{positive normalized critical-height record service persists,}\\
\text{the same-packet bill is surplus-zero / ratio-one marginal,}\\
\text{the certified path remains a same-fluid Navier-Stokes material history.}
\end{gathered}
\tag{CHG.13}
\]

The theorem must exclude that invariant set or route it out through a typed
Pack/Part/Field or legal/stop failure. It is not enough to prove that a
standalone self-similar/DSS profile is zero or inadmissible.

Equivalently, the live bad sequence is

\[
N_L\sim {2^{-L}\over L},
\qquad
\sum_L2^LN_L=\infty,
\tag{CHG.14}
\]

read as infinitely many critical-height record doublings with no strict
same-packet payment margin. The needed theorem is a quantitative
critical-height growth-rate exclusion:

\[
\text{ratio-one marginal payment cannot sustain }H(t)\to\infty
\text{ along one same-fluid NS history.}
\tag{CHG.15}
\]

## 5. Consequence

The route correction is:

\[
\boxed{
\texttt{SelfSimilarProfileQuarantine.A}
}
\tag{CHG.16}
\]

Exact self-similar and DSS profile work remains useful only as a falsifiability
anchor, scale-covariant equality model, or local route test. The c0 proof must
return to one of the live same-history objects:

\[
\texttt{FullTowerSignedTotalExchangeRetention.A}
\tag{CHG.17}
\]

or

\[
\begin{gathered}
\texttt{CertifiedMaterialTimeShiftHullCompactness.A}
+\texttt{ZeroSurplusCertificateClosedGraph.A}\\
+\texttt{ThetaRecordPayerMeasureAdmission.A}
+\texttt{ZeroLossTowerRelayRigidity.A}
\end{gathered}
\tag{CHG.18}
\]

with `ZeroLossTowerRelayRigidity.A` now typed as critical-height-growing
material-time zero-loss rigidity, not as standalone self-similar/DSS profile
exclusion.
