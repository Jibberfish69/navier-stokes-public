---
theorem_id: forward-gold-k5-edge-log-viscous-reynolds-split-20260705
status: marginal-edge-log-closed-by-viscosity-high-reynolds-weighted-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / K5 edge log branch
target_object:
  - K5MarginalEdgeViscousCap.A
  - K5HighReynoldsEdgeWeightedCap.A
  - K5UniformPureEdgeCap.NO
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lambda-edge-hamiltonian-retype-marginal-viscous-closure-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gate-a-three-residues-payment-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-theorem2-two-payer-impedance-attack-20260705.md
completion_truth: >-
  This note decides the viscous/lifetime option left by the K5 log-seed
  obstruction. There is no intrinsic seed floor for a pure near-edge Crow mode:
  the displacement amplitude can be scaled arbitrarily small in the filament
  family. Linear viscosity supplies the external lifetime instead. If A=|a|^2
  and production is s*Pi*A, the edge-mode viscous damping gives
  dA/dt <= -s*c_v*kappa^2*Re^{-1}*A on the neutral branch, so integrated
  production is bounded by (Pi/(c_v*kappa^2))*Re*A0. Thus on the unit/marginal
  Reynolds family the K5 edge log is closed with an O(1) cap and no seed
  logarithm. Uniformly over high Reynolds it is not closed: the cap grows like
  Re. Therefore K5 yields a Reynolds-weighted edge tax, matching the existing
  two-payer split: marginal/low-Re pays viscosity, high-Re must pay through a
  forced sideband/leakage/crowd trigger, route-out/exclusion, or a genuinely new
  unweighted mechanism. No full confinement constant or MPP closure is claimed.
---

# K5 edge log: viscous Reynolds split

## 1. What remains after the log obstruction

The pure neutral normal form cannot give a seed-independent cap by nonlinear
self-exit alone. With \(A=|a|^2\),

\[
\dot A=s\mu A^m,\qquad m>1,
\tag{K5V.1}
\]

and production

\[
\mathcal P=s\Pi A+O(sA^2),
\qquad \Pi>0,
\tag{K5V.2}
\]

give a logarithmic or worse dependence on the seed \(A_0\). The remaining
possible rescue inside the real Navier-Stokes field is an external clock:
viscosity, finite lifetime, custody, forced contamination, route-out, or a new
unweighted high-Re mechanism.

This note decides the viscosity part.

## 2. No intrinsic seed floor

A pure Crow edge perturbation of a tube pair has a linear amplitude parameter.
For every \(A_0>0\) within the filament regime, the perturbed configuration is
obtained by scaling the displacement mode. No incompressibility, pressure, or
filament geometry condition imposes a positive lower bound on \(A_0\).

So K5 cannot use a seed floor unless a later record/custody theorem supplies
one. The filament cell itself has none.

## 3. Viscous damping gives the external lifetime

Let \(k=\kappa/d\), and let the strain clock be

\[
s=\frac{\Gamma}{2\pi d^2}.
\tag{K5V.3}
\]

For a smooth vortex tube mode, viscosity damps the axial perturbation at rate
comparable to \(\nu k^2\). In the \(A=|a|^2\) variable, write the damping lower
bound as

\[
\dot A
\le
-\,s\,c_v\,\frac{\kappa^2}{\operatorname{Re}}\,A
+\text{higher-order neutral terms},
\tag{K5V.4}
\]

where \(\operatorname{Re}\) is the local circulation Reynolds number and \(c_v>0\)
is the profile/core damping constant. On the small-amplitude neutral branch,
the linear damping term dominates the nonlinear self-exit terms as
\(A\downarrow0\). Therefore the neutral-phase production satisfies

\[
\int_0^\infty \mathcal P(t)\,dt
\le
\frac{\Pi}{c_v\kappa^2}\,\operatorname{Re}\,A_0
+O(\operatorname{Re}A_0^2).
\tag{K5V.5}
\]

The seed logarithm is gone. Viscosity replaces the nonlinear clock
\(1/(sA_0)\) by the external clock \(\operatorname{Re}/s\).

## 4. Marginal branch

On the unit/marginal Reynolds family,

\[
\operatorname{Re}\simeq1,\qquad \kappa\simeq1,
\tag{K5V.6}
\]

so

\[
\int_0^\infty \mathcal P(t)\,dt
\le
C_{\rm edge}A_0
\le
C_{\rm edge}A_\ast,
\tag{K5V.7}
\]

where \(A_\ast\) is the edge normal-form validity/exit threshold. This is an
order-one seed-independent cap on the marginal K5 edge channel.

Thus the K5 pure-edge log obstruction is closed on the marginal family by the
same penny-tax named in the lambda-edge note: linear viscosity on the strain
clock.

## 5. High-Reynolds branch

Uniformly over large local Reynolds, the same estimate is only

\[
\int_0^\infty \mathcal P(t)\,dt
\le
C_{\rm edge}\operatorname{Re}A_0.
\tag{K5V.8}
\]

This is not a uniform confinement constant. For fixed admissible \(A_0\), the cap
grows with \(\operatorname{Re}\). Therefore K5 does not close uniformly by
viscosity alone.

This is exactly the two-payer split already present in the campaign:

\[
\text{low/marginal Re pays viscosity;}
\qquad
\text{high Re must pay forced contamination, route-out, or a new unweighted tax.}
\tag{K5V.9}
\]

## 6. Four-sentence result

The neutral edge has no intrinsic seed floor. Pure nonlinear self-exit is too
slow and leaves a logarithmic seed dependence. Linear viscosity removes the log,
but the resulting cap is proportional to local Reynolds. So K5 is closed on the
unit/marginal family and remains open, in Reynolds-weighted form, on the
super-marginal branch.
