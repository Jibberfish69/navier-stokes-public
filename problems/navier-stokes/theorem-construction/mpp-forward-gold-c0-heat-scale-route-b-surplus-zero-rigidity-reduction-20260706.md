---
theorem_id: forward-gold-c0-heat-scale-route-b-surplus-zero-rigidity-reduction-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / heat-scale material-time Liouville route-b
status: strict-reduction-local-liouville-exhausted-surplus-zero-global-rigidity-open
target_object:
  - MaterialTimeLiouvilleExclusion.A
  - MaterialTimeCertificateFlowInvariance.A
  - ZeroLossTowerRelayRigidity.A
  - GlobalSameHistoryAffineBurstNoZeno.A
  - GlobalWeightedLaminarAncestryVariationReserve.A
  - FullTowerSignedTotalExchangeRetention.A
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-irreversible-thick-branch-liouville-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-same-history-affine-burst-nozeno-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-laminar-ancestry-multiplicity-tax-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-ancestry-variation-reserve-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-ratio-tail-surviving-global-storage-frontier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
completion_truth: >-
  This is a strict retyping and reduction of the remaining heat-scale branch,
  not c_0 closure. After the positive-radius/thick branch is paid, the live
  route-b object is not local zero-dissipation Liouville. Local affine
  incompressible profiles carry order-one material-time strain service with
  zero affine viscous heat, and localized heat-scale matching makes the raw
  cost radius-discounted. The remaining theorem is a global same-history
  surplus-zero rigidity: exclude a certified shrinking heat-scale marginal
  profile whose normalized bills vanish only at ratio one while positive record
  service persists. Equivalently, prove a bounded-below original-history
  first-ratio storage, a global laminar ancestry-variation reserve, or the
  self-similar difference-operator spectral gap/coercivity named by
  ZeroLossTowerRelayRigidity.A. Current support axioms still admit the
  one-child laminar half-tail model. No FullTowerSignedTotalExchangeRetention,
  material-time Liouville, strict c_0, or MPP closure is claimed.
---

# Heat-scale route-b is surplus-zero rigidity, not local Liouville

## 1. What remains after the thick branch

The corrected Navier-Stokes object is one incompressible viscous
pressure-constrained same-fluid field. The positive-radius / thick-material-time
record atom is already paid by finite participation and fixed-cylinder viscous
throttle.

The only remaining retained branch has heat-scale geometry:

\[
r_j\downarrow0,
\qquad
|I_j|\sim {r_j^2\over\nu},
\qquad
\int_{I_j} dR_N^+ \ge c>0,
\qquad
\int_{I_j} dB_N \to0
\tag{HSR.1}
\]

in the physical bill. In log-time or ratio-band coordinates, this is the
first-ratio half-tail:

\[
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty .
\tag{HSR.2}
\]

The model tail

\[
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{HSR.3}
\]

has finite raw mass and infinite record clock.

## 2. Local material-time Liouville is exhausted

The local affine material-time test is a real Navier-Stokes obstruction to any
purely local Liouville proof. Let

\[
u(x,t)=B(t)x,
\qquad
\operatorname{tr}B(t)=0,
\qquad
B(t)=B(t)^T .
\tag{HSR.4}
\]

Then

\[
\partial_tu+(u\cdot\nabla)u=(\dot B+B^2)x,
\qquad
\Delta u=0,
\tag{HSR.5}
\]

and the pressure

\[
p(x,t)=-{1\over2}x\cdot(\dot B+B^2)x
\tag{HSR.6}
\]

makes the local incompressible Navier-Stokes equation hold. For \(B\ne0\), this
profile has genuine strain/material-time service while the affine viscous heat
is zero.

After divergence-free localization and heat-scale matching, one packet has

\[
\text{raw physical heat/viscous/collar cost}\simeq O(r),
\qquad
\text{normalized material action}\simeq O(1).
\tag{HSR.7}
\]

Thus a dyadic terminal chain can pay summable raw cost and still carry one
normalized material-time record at each scale.

Therefore route-b cannot mean:

\[
\text{local zero viscous heat}\Longrightarrow\text{zero strain service}.
\tag{HSR.8}
\]

That statement is false for the relevant local profile class.

## 3. The zero-payer set is surplus-zero

The remaining marginal profile has vanishing surplus bill, not absolute-zero
dissipation. In the self-similar heat-scale variables, production and
dissipation are homogeneous in the same scaling. A ratio-one profile can have

\[
\text{dissipation}=\text{production}
\tag{HSR.9}
\]

at the normalized level while the surplus

\[
\text{dissipation}-\text{production}
\tag{HSR.10}
\]

vanishes. This is the radiodrome `surplus-zero` distinction.

So `ZeroLossTowerRelayRigidity.A` is not the claim that the profile has no
viscous activity. Its analytic content is the strict spectral gap/coercivity

\[
\nu\int|\nabla\delta|^2
\ge
(1+2\varepsilon)\,\mathrm{Prod}(\delta),
\qquad
\varepsilon>0,
\tag{HSR.11}
\]

for the self-similar difference operator on the certified same-solution
material-time profile class. The strict \(c_0\) is \(2\varepsilon\).

The ratio-one marginal pursuit is the case \(\varepsilon=0\). It is
arithmetically possible. The theorem must prove a genuine transported
incompressible viscous field cannot sustain it along one original history.

## 4. Same-history packing form

The global same-history version is the first-ratio storage theorem. Let
\(d\Omega_N^{first}\) be the selected same-material first-ratio action, so that

\[
\int d\Omega_N^{first}
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell .
\tag{HSR.12}
\]

The noncircular closure form is:

\[
d\mathscr S_N
+c_N\,d\Omega_N^{first}
\le
dR_N^{legal}+dStop_N,
\tag{HSR.13}
\]

with

\[
\mathscr S_N(t)\ge -C_N(u_0),
\qquad
\mathscr S_N(0)\le C_N(u_0),
\qquad
\int(dR_N^{legal}+dStop_N)<\infty .
\tag{HSR.14}
\]

Integrating `(HSR.13)' gives

\[
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
\tag{HSR.15}
\]

which kills the half-tail.

The laminar ancestry formulation is the same theorem in geometric coordinates:
after paid nonlaminar exits, repeated high-ratio visits on one material ancestry
line must spend a finite original-history reserve of Cauchy-Green positive
variation, Hodge-frame rotation, collar-normal separation, or annular turnstile
variation:

\[
\sum_{\gamma}a_\gamma
\le
C_N(u_0)+Legal+Stop .
\tag{HSR.16}
\]

Here \(a_\gamma\simeq2^{\ell_\gamma}\mu_{j_\gamma}
(E_{j_\gamma,\ell_\gamma}\cap I_\gamma)\), and
\(\sum_\gamma a_\gamma\simeq\sum_\ell2^\ell\nu_\ell\).

## 5. Why current support still does not prove it

The installed support axioms still admit the one-child laminar half-tail model.
Set

\[
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
a_\ell=2^\ell\nu_\ell={1\over \ell+1}.
\tag{HSR.17}
\]

Then

\[
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell a_\ell=\infty .
\tag{HSR.18}
\]

The model satisfies laminarity, complete-frame orientation payment, raw
energy/viscous finiteness, and conditional single-line payment. It fails only
at the new noncircular theorem: a finite original-history reserve for the
weighted first-ratio action.

Thus support rows, local affine exclusion, fixed-radius throttling, pressure
Poisson attachment, and descendant Bellman inheritance are not enough. The
missing theorem must add exactly one of:

\[
\begin{array}{ll}
\text{route a:} & \texttt{FullTowerSignedTotalExchangeRetention.A},\\[1mm]
\text{route b1:} & \texttt{MaterialTimeCertificateFlowInvariance.A}
  +\texttt{ZeroLossTowerRelayRigidity.A},\\[1mm]
\text{route b2:} & \texttt{GlobalWeightedLaminarAncestryVariationReserve.A},\\[1mm]
\text{storage form:} & \text{bounded-below }\mathscr S_N
  \text{ satisfying }(HSR.13).
\end{array}
\tag{HSR.19}
\]

## 6. Result for the active \(c_0\) objective

The active gap is now typed exactly:

\[
\boxed{
\text{arithmetical ratio-one pursuit}
=
\text{the one-child laminar heat-scale half-tail }(HSR.17).
}
\tag{HSR.20}
\]

and

\[
\boxed{
\text{physical impossibility}
=
\text{strict same-history first-ratio storage or DSS/surplus-zero coercivity.}
}
\tag{HSR.21}
\]

This is the material-time route-b version of \(c_0\). It is not closed here.
The next proof burden is to construct `(HSR.13)' from the original
Navier-Stokes material history, or prove the spectral gap `(HSR.11)' on the
certified invariant heat-scale profile class.
