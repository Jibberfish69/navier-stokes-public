---
theorem_id: forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706
status: strict-reduction-overlap-bath-local-dynamic-jet-floor-killed-global-material-matrix-remains
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - OverlapBath.LocalDynamicJetFloor.NO
  - LocalAffineStrainHistory.ARBITRARY-AT-JET-LEVEL
  - ExactMatrix.GlobalMaterialMatching.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-jet-static-energy-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-affine-material-jet-insufficiency-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-time-dependent-collar-scaling-obstruction-20260706.md
completion_truth: >-
  Strict reduction and checked obstruction, not a crowd theorem and not a
  confinement-constant decision. The installed local affine material-jet note
  applies to the overlap bath dynamically, not only statically: for every
  smooth symmetric trace-free strain history A(t), u(t,x)=A(t)(x-x0) is an
  exact local incompressible Navier-Stokes packet after choosing
  p(t,x)=-1/2 (x-x0).(dot A(t)+A(t)^2)(x-x0). Thus the local equations allow
  arbitrary time-dependent overlap strain in the symmetric strain channel,
  including local tracking and eigenframe motion. The local pressure Hessian
  absorbs the acceleration; no local material-jet identity forces a paid
  tracking floor tied to production. This does not construct a finite-energy
  global Navier-Stokes bath and does not decide the exact matrix. It relocates
  the overlap-bath decision to global same-fluid matching over time: exact
  unforced evolution, nonlocal Hodge/pressure coupling, same-packet allocation,
  or a summability-valid dynamic construction. Follow-up collar scaling audit
  kills generic cutoff/Hodge retuning as the missing floor.
---

# Overlap bath: local affine dynamic obstruction

## 1. Kill question

The static affine-jet note killed a fixed local energy floor for the overlap
bath. The next possible local attack is dynamic: perhaps a bath can prescribe a
cheap strain jet at one time, but must pay a forced tracking tax while changing
that jet along the producing flow.

The kill condition for this pass is a local material-jet identity that forces a
positive lower bound on dynamic tracking, rotation, or retuning for a prescribed
overlap strain supply.

The checked result is negative.

## 2. Exact local dynamic strain history

Let \(A(t)\) be any smooth symmetric trace-free matrix on a time interval and
fix a local center \(x_0\). Set
\[
  u_h(t,x)=A(t)(x-x_0).
  \tag{OBD.1}
\]

Then
\[
  \nabla u_h=A(t),\qquad \nabla\cdot u_h=0,\qquad \Delta u_h=0.
  \tag{OBD.2}
\]

The material acceleration is
\[
  \partial_tu_h+(u_h\cdot\nabla)u_h
  =
  \bigl(\dot A(t)+A(t)^2\bigr)(x-x_0).
  \tag{OBD.3}
\]

Because \(A(t)\) is symmetric, \(\dot A(t)+A(t)^2\) is symmetric. Choose
\[
  p_h(t,x)
  =
  -\frac12 (x-x_0)\cdot
  \bigl(\dot A(t)+A(t)^2\bigr)(x-x_0).
  \tag{OBD.4}
\]

Then
\[
  \nabla p_h
  =
  -\bigl(\dot A(t)+A(t)^2\bigr)(x-x_0),
  \tag{OBD.5}
\]
and hence
\[
  \partial_tu_h+(u_h\cdot\nabla)u_h+\nabla p_h-\nu\Delta u_h=0,
  \qquad \nabla\cdot u_h=0.
  \tag{OBD.6}
\]

The pressure Poisson equation is consistent:
\[
  -\Delta p_h
  =
  \operatorname{tr}A(t)^2
  =
  \partial_i u_{h,j}\,\partial_j u_{h,i},
  \tag{OBD.7}
\]
since \(\operatorname{tr}\dot A(t)=0\).

So the local Navier-Stokes equations admit any smooth symmetric trace-free
strain history \(A(t)\). The time derivative of the jet is paid locally by the
pressure Hessian, not by a forced material-energy tax.

## 3. Application to the overlap bath

The overlap-bath demand supplies a coherent strain of size
\[
  G(t)=s(t)\beta(t)^{4/5}
  \tag{OBD.8}
\]
on the producer ball.

At the affine-jet level, choose
\[
  A(t)=G(t)\,S(t),
  \qquad \operatorname{tr}S(t)=0,
  \qquad |S(t)|=1,
  \tag{OBD.9}
\]
with \(S(t)\) any smooth symmetric trace-free shape/eigenframe history. Equation
(OBD.6) remains exact. Thus the local equations do not forbid the bath from
tracking the demanded coherent strain, changing its magnitude, or rotating its
strain frame.

Large \(\dot A(t)\) appears in the local pressure Hessian in (OBD.4). That is
not a local contradiction and not a local energy floor. A proof that the
pressure Hessian cannot be supplied must use the global same-fluid pressure and
matching problem.

## 4. What this kills

This kills a local dynamic proof target: no argument using only the affine
material gradient equation, trace-free strain, local pressure Hessian, or
pointwise incompressibility can force the overlap bath to pay a non-shallowing
tracking floor.

The static obstruction already says a trace-free overlap jet can be realized by
finite-energy divergence-free compact packets at a fixed time. This note adds
that the time-dependent local jet itself is also allowed by the local
Navier-Stokes equations.

## 5. What remains

The remaining overlap-bath decision is global and material.

A successful floor theorem must show that an actual same-fluid finite-energy
field cannot keep realizing those local strain histories without paid global
cost. The possible sources are:

- exact unforced evolution of the localized packet;
- nonlocal pressure and Hodge coupling across the surrounding fluid with sign
  or phase structure beyond norm scaling;
- same-packet allocation of the bath's pressure or tracking work into record
  ladder currency;
- admissibility failure for the strength/spacing schedule in the exact matrix.

The opposite outcome is also sharp: a construction that globally realizes a
summability-valid dynamic bath while preserving production would be an exit-II
candidate.

## 6. Four-sentence result

The overlap bath cannot be killed by local dynamic affine equations. For every
smooth symmetric trace-free \(A(t)\), the field
\[
  u(t,x)=A(t)(x-x_0)
\]
is an exact local incompressible Navier-Stokes packet once the pressure Hessian
is chosen. Therefore local strain tracking, magnitude change, and eigenframe
motion are not automatically taxed at the material-jet level. Any remaining
floor must come from exact unforced global evolution, nonlocal pressure/Hodge
structure, same-packet allocation, or else fail by an actual dynamic bath
construction.
