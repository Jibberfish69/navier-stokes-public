---
theorem_id: forward-gold-overlap-bath-orthogonal-service-quarantine-20260706
status: strict-routing-orthogonal-pressure-service-not-active-wkb-supplier
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - OrthogonalPressureService.NO-ACTIVE-SCALAR-SUPPLIER
  - WKBBath.ActiveServiceBranch.Quarantine
  - AngleEigenframeRoute.AsSeparateConsumer
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rsf4-angle-pincer-coherence-backscatter-dichotomy-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-adiabatic-exchange-gauge-invariant-eigenpath-unification-20260704.md
completion_truth: >-
  Strict routing only. The active WKB pressure-service row is the scalar
  contraction S:K. Decomposing any trace-free pressure Hessian K into its
  S-parallel part and S-orthogonal part, only the parallel coefficient
  (S:K)/|S|^2 contributes to the active scalar service. The Beltrami
  material-phase identity says S:K=sum_i w_i D_t log lambda_i, so an
  orthogonal-only bath with S:K=0 has zero weighted carrier-scale drift in the
  active scalar channel. Therefore orthogonal-only pressure service cannot be
  a supplier for the retained active WKB service row, cannot repair the q=4/5
  pressure-service deficit, and cannot back a fixed retained tax density. Its
  possible role is frame/eigenpath rotation, hence the already separate
  angle-pincer / adiabatic-exchange route, or a new construction/exclusion
  theorem. This proves no angle theorem, no RSF.4, no WKB exclusion, and no
  MPP closure.
---

# Orthogonal pressure service quarantine

## 1. Object

The WKB survivor list still contains "orthogonal-only service". This note
separates that phrase from the active pressure-service row.

The active row is the scalar contraction
\[
  S:K,
  \tag{OSQ.1}
\]
where \(S\) is the producing strain and \(K\) is the trace-free pressure
Hessian moment supplied by the bath.

## 2. Orthogonal decomposition

Decompose \(K\) relative to \(S\):
\[
  K
  =
  {S:K\over |S|^2}S
  +
  K_\perp,
  \qquad
  S:K_\perp=0.
  \tag{OSQ.2}
\]

Only the coefficient
\[
  {S:K\over |S|^2}
  \tag{OSQ.3}
\]
contributes to the active scalar row. The \(K_\perp\) component can change the
pressure Hessian matrix, and it may rotate the strain eigenframe, but it has no
active scalar contraction against the current producing strain.

## 3. Beltrami reading

For a positive Beltrami WKB mixture the filed material-phase identity is
\[
  S:K=\sum_iw_iD_t\log\lambda_i.
  \tag{OSQ.4}
\]

Thus an orthogonal-only bath satisfies
\[
  S:K=0
  \tag{OSQ.5}
\]
and therefore
\[
  \sum_iw_iD_t\log\lambda_i=0.
  \tag{OSQ.6}
\]

It supplies zero net weighted carrier-scale drift in the active scalar channel.
It is not a hidden version of the same service. It is outside that service row.

## 4. Consequence for the WKB branch

The retained active WKB branch asks for sign-coherent scalar service:
\[
  \left|\int S:K\,dt\right|>0.
  \tag{OSQ.7}
\]

A purely orthogonal bath gives
\[
  \int S:K\,dt=0
  \tag{OSQ.8}
\]
on that branch. Therefore it cannot:

1. repair the \(q=4/5\) pressure-service deficit;
2. back a fixed retained tax density;
3. replace carrier endpoint room, weight variation, or bank log-variation;
4. serve as the active scalar supplier in the overlap-bath WKB construction.

So "orthogonal-only service" is not an active-service escape. It is a route
change.

## 5. Where it routes

An orthogonal pressure Hessian can still matter through rotation of the strain
frame or the normalized strain path. That is the angle/eigenpath route:

- angle pincer: coherence gives depletion, incoherence gives backscatter;
- adiabatic exchange: fast frame rotation gives relag/backscatter, slow frame
  gives coherence/depletion, marginal tracking is the unique-continuation
  target.

This note does not prove either route. It only says that orthogonal-only
pressure service cannot be counted as active \(S:K\) service in the WKB
overlap-bath branch.

## 6. What remains

After fixed carriers, variable weights, bank motion, and orthogonal-only
service are separated, the WKB active-service survivor is:

1. high-Re logarithmic carrier room;
2. Gate-8/custody pricing for weight refresh/reassembly;
3. Gate-8/\(T^{*+}\) custody pricing for bank log-variation;
4. a true dynamic WKB construction or exclusion theorem.

Orthogonal-only service exits this list and routes to the separate angle /
adiabatic-exchange program.

## 7. Four-sentence result

The active WKB service is the scalar \(S:K\). If \(K\) is orthogonal to \(S\),
then \(S:K=0\), and the Beltrami identity gives
\[
  \sum_iw_iD_t\log\lambda_i=0.
\]
So orthogonal-only pressure service cannot supply the active retained
pressure-service row. It may rotate the strain frame, but that is the
angle/eigenpath route, not a WKB bath supplier.
