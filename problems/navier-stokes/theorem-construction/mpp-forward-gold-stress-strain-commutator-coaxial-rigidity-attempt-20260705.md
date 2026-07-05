---
theorem_id: forward-gold-stress-strain-commutator-coaxial-rigidity-attempt-20260705
status: strict-reduction-and-local-obstruction-not-proof
created: 2026-07-05
problem: navier-stokes
route: forward-gold signed-height / stress-strain commutator / adiabatic exchange
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-adiabatic-exchange-gauge-invariant-eigenpath-unification-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bathtub-momentum-flux-gate-producer-attempt-20260704.md
  - problems/navier-stokes/theorem-construction/lifted-band-coarse-grained-stress-strain-flux-inequality.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-carleman-timeface-antiatom-direct-test-20260620.md
target_object:
  - StressStrainCommutatorLagToFluxTax.A
  - RegenerationCoaxialDamping.A
  - ActiveCoaxialPressureStrainRigidity.A
  - MarginalAdiabaticityUniqueContinuation.A
completion_truth: >-
  Not a proof. The useful advance is that the Fable adiabaticity ratio can be
  replaced by an actual PDE-bearing field: the resolved stress-strain
  commutator C_l=[tau_l,S_l]. This repairs the "Carleman has no object" defect
  at the level of a strict reduction. The attempt also finds the obstruction:
  the exact commutator equation contains the unclosed subscale stress
  regeneration/current terms. Thus the Landau-Zener phrase becomes a precise
  missing theorem, RegenerationCoaxialDamping.A, not a free mechanism. In the
  small-commutator branch the survivor is forced toward active simultaneous
  coaxiality of subscale stress, resolved strain, and pressure Hessian modulo
  flux-invisible degeneracies. Pure coaxiality is not itself contradictory:
  local affine/restricted-Euler jets give diagonal S, diagonal pressure Hessian,
  diagonal coarse stress, and nonzero stress-strain flux. The remaining target
  is therefore not "coaxiality impossible" but "no finite-energy/no-incoming
  Navier-Stokes ladder can sustain flux-positive active coaxiality across
  shrinking heat windows."
---

# Stress-strain commutator attempt: from adiabatic ratio to active coaxial rigidity

## 1. Replacement object

Let \(u_\ell\) be the resolved velocity, let

\[
S_\ell=\frac{\nabla u_\ell+\nabla u_\ell^T}{2},
\qquad
\tau_\ell=(u\otimes u)_\ell-u_\ell\otimes u_\ell,
\]

and recall the local resolved flux gate

\[
\Pi_\ell=-\tau_\ell:S_\ell .
\tag{CSC.1}
\]

The sharper field is

\[
C_\ell=[\tau_\ell,S_\ell]=\tau_\ell S_\ell-S_\ell\tau_\ell .
\tag{CSC.2}
\]

Since \(\tau_\ell\) and \(S_\ell\) are symmetric, \(C_\ell\) is skew-symmetric.
It is gauge-invariant, smooth through eigenvalue crossings, and weighted by
the spectral gaps of \(S_\ell\). Thus rotations inside a degenerate strain
eigenspace are automatically ignored exactly when the flux cannot see them.

This is the first repair to the adiabatic note: the marginal object is a field,
not a scalar ratio.

## 2. Exact resolved strain input

The filtered Navier-Stokes equation is

\[
D_\ell u_\ell+\nabla p_\ell
=\nu\Delta u_\ell-\nabla\cdot\tau_\ell,
\qquad
D_\ell=\partial_t+u_\ell\cdot\nabla .
\tag{CSC.3}
\]

Taking the symmetric gradient gives

\[
D_\ell S_\ell+S_\ell^2+\Omega_\ell^2+\nabla^2p_\ell
=\nu\Delta S_\ell-\operatorname{sym}\nabla(\nabla\cdot\tau_\ell).
\tag{CSC.4}
\]

This is the filtered version of the installed pressure-Hessian strain-clock
identity.  The pressure Hessian is attached to the same material strain law;
it is not a detachable pressure-only lobe.

## 3. Commutator evolution

Differentiate \(C_\ell=[\tau_\ell,S_\ell]\):

\[
D_\ell C_\ell
=[D_\ell\tau_\ell,S_\ell]+[\tau_\ell,D_\ell S_\ell].
\tag{CSC.5}
\]

Using (CSC.4),

\[
D_\ell C_\ell
=-[\tau_\ell,\nabla^2p_\ell]
+[D_\ell\tau_\ell,S_\ell]
-[\tau_\ell,S_\ell^2+\Omega_\ell^2]
+\nu[\tau_\ell,\Delta S_\ell]
-[\tau_\ell,\operatorname{sym}\nabla(\nabla\cdot\tau_\ell)] .
\tag{CSC.6}
\]

Equation (CSC.6) is the honest replacement for the informal statement that
"frame tracking costs energy."  The pressure Hessian is the visible torque,
but it is not alone.  The exact equation also contains the subscale-stress
current \(D_\ell\tau_\ell\), the vorticity/strain quadratic term, viscosity,
and the filtered stress-force term.

Thus the Landau-Zener mechanism is not yet a theorem.  The missing theorem is:

\[
\texttt{RegenerationCoaxialDamping.A:}
\quad
\text{the exact stress-regeneration terms damp or tax the active }
[\tau_\ell,S_\ell]\text{ channel.}
\tag{CSC.7}
\]

Without (CSC.7), the subscale stress current can be the very mechanism that
keeps the commutator marginal.

## 4. Branch reduction

The commutator route gives a clean trichotomy, conditional on the lag-to-flux
tax theorem:

\[
\texttt{StressStrainCommutatorLagToFluxTax.A.}
\tag{CSC.8}
\]

If \(C_\ell\) is large over one residence window, the stress is not tracking
the strain eigendirections in the flux-active quotient.  The desired theorem
is that this creates a same-carrier loss in the positive flux bill: either
backscatter, sign fluctuation, or a strict loss of flux efficiency.

If \(C_\ell\) is small, then \(\tau_\ell\) and \(S_\ell\) are almost
simultaneously diagonal on the active quotient.  In that branch, (CSC.6)
shows that persistent marginality requires the pressure torque and the
regeneration torque to balance:

\[
[\tau_\ell,\nabla^2p_\ell]
\approx
[D_\ell\tau_\ell,S_\ell]
-[\tau_\ell,S_\ell^2+\Omega_\ell^2]
+\nu[\tau_\ell,\Delta S_\ell]
-[\tau_\ell,\operatorname{sym}\nabla(\nabla\cdot\tau_\ell)] .
\tag{CSC.9}
\]

After the regeneration-damping theorem is supplied, (CSC.9) collapses toward
active simultaneous coaxiality:

\[
[\tau_\ell,S_\ell]\approx0,
\qquad
[\tau_\ell,\nabla^2p_\ell]\approx0,
\tag{CSC.10}
\]

modulo directions in which \(\tau_\ell\) is isotropic and the flux gate cannot
see angular motion.

With a non-isotropic flux-carrying \(\tau_\ell\), (CSC.10) forces the pressure
Hessian and resolved strain to commute on the active quotient:

\[
[S_\ell,\nabla^2p_\ell]\approx0
\quad\text{on the flux-active quotient.}
\tag{CSC.11}
\]

This is the sharp form of the former "marginal adiabaticity" branch.

## 5. Local obstruction to pure coaxial exclusion

Pure coaxiality cannot be the contradiction.  A local affine strain jet already
has it.

Take

\[
u(x)=Sx,
\qquad
S=\operatorname{diag}(-2a,a,a),
\qquad a>0.
\tag{CSC.12}
\]

Then \(S\) is trace-free and constant.  Set

\[
\nabla^2p=-S^2.
\tag{CSC.13}
\]

Since \(\Delta u=0\), this is a local affine Euler/Navier-Stokes jet:

\[
(u\cdot\nabla)u+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{CSC.14}
\]

For an isotropic filter, the resolved stress generated by the affine field is
coaxial:

\[
\tau_\ell \simeq c_\rho \ell^2 S^2,
\qquad
[\tau_\ell,S]=0,
\qquad
[\nabla^2p,S]=0.
\tag{CSC.15}
\]

The flux is nevertheless nonzero:

\[
\Pi_\ell=-\tau_\ell:S
\simeq
-c_\rho\ell^2\,S^2:S
=6c_\rho a^3\ell^2>0 .
\tag{CSC.16}
\]

This object is not a finite-energy global solution and not a completed NS
counterexample.  Its role is narrower: it proves that pointwise simultaneous
diagonalization of stress, strain, and pressure Hessian does not by itself
forbid positive stress-strain flux.

Therefore the rigidity target must include the global/terminal packet
conditions that the affine jet lacks.

## 6. Corrected theorem target

The surviving theorem is not:

\[
\text{coaxiality is impossible.}
\tag{CSC.17}
\]

The correct target is:

\[
\texttt{ActiveCoaxialPressureStrainRigidity.A:}
\tag{CSC.18}
\]

No finite-energy, no-incoming, same-fluid Navier-Stokes ladder can maintain
flux-positive active coaxiality

\[
[\tau_\ell,S_\ell]\to0,
\qquad
[\tau_\ell,\nabla^2p_\ell]\to0,
\qquad
\Pi_\ell\ge c\,\Pi_\ell^{abs}>0
\tag{CSC.19}
\]

across an infinite sequence of shrinking heat windows, except by converging to
a local affine/restricted-Euler profile that is then exported as a terminal
Silver witness or killed by a separate global Carleman/no-incoming theorem.

This is the corrected Carleman landing.  Carleman is not applied to a scalar
adiabaticity ratio.  It is applied only after the commutator reduction produces
a PDE-bearing survivor class: an active coaxial pressure-strain-stress ladder
with the exact transformed Stokes/pressure structure and the needed boundary
or no-incoming data.

## 7. Output of the attempt

Proof: none.

Strict reduction: the adiabatic ratio has been replaced by the field
\(C_\ell=[\tau_\ell,S_\ell]\), and the marginal branch is reduced to the
commutator equation (CSC.6).

Checked obstruction: the equation is not closed.  The subscale stress
regeneration/current terms are exactly where the Landau-Zener mechanism must
be proved, not assumed.

Local countermodel: affine coaxial strain has \(C_\ell=0\), diagonal pressure
Hessian, diagonal stress, and nonzero flux, so pure coaxiality cannot be the
exclusion theorem.

Remaining burdens:

1. \(\texttt{StressStrainCommutatorLagToFluxTax.A}\): large active commutator
   creates same-carrier backscatter or a strict positive-flux efficiency tax.
2. \(\texttt{RegenerationCoaxialDamping.A}\): exact subscale stress
   regeneration damps/taxes the commutator channel rather than freely balancing
   the pressure torque.
3. \(\texttt{ActiveCoaxialPressureStrainRigidity.A}\): the small-commutator
   survivor either collapses to an affine/restricted-Euler terminal profile or
   is impossible under the same-fluid finite-energy/no-incoming packet
   hypotheses.

