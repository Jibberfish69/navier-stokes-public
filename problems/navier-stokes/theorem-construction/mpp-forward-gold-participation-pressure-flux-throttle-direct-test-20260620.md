---
ns_viewer:
  theorem_id: forward-gold-participation-pressure-flux-throttle-direct-test-20260620
  status: direct-pressure-flux-throttle-test-complete-not-proved
  proof_role: forward_gold_supplier_direct_test
  logical_landing_node: participation_pressure_flux_throttle
  edge_effect: "Tests whether the localized Navier-Stokes energy flux ledger can upgrade finite physical participation into the unweighted selected terminal heat-scale reserve. The test shows that local energy accounting remains radius-discounted on shrinking heat-scale packets."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-participation-transfer-donor-drain-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-pass-exit-target-closure-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-transport-action-participation-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-terminal-critical-action-reserve-direct-exhaustion-20260620.md
  downstream_consequence: "ParticipationTransferThrottle.A remains an exact accounting and CM pass-or-face support theorem, not a produced forward-gold no-jump supplier. A forward-positive throttle must add a new unweighted same-carrier coercive estimate."
---

# MPP Forward Gold Participation Pressure-Flux Throttle Direct Test

Date: 2026-06-20

## Status

Direct pressure/flux throttle test complete.  The participation accounting
identity is correct and important, but it does not by itself produce the
unweighted terminal residence needed by the forward-gold no-jump route.

The conclusion is:

\[
\text{local energy participation accounting}
\not\Rightarrow
\text{super-}L^1\text{ terminal residence}.
\]

Equivalently, the local energy ledger sees the heat-scale terminal pulse, but
finite physical flux cost does not forbid it.

## 1. Exact accounting identity being tested

For a smooth unforced incompressible Navier-Stokes solution,

\[
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\]

the local kinetic-energy balance is

\[
\partial_t { |u|^2\over2}
+\nu|\nabla u|^2
+\nabla\cdot
\left[
\left({ |u|^2\over2}+p\right)u
-\nu\nabla { |u|^2\over2}
\right]
=0
\]

in the smooth equality case.  With a packet cutoff \(\phi\), this gives

\[
E_\phi(b)-E_\phi(a)+D_\phi(a,b)=F_\phi(a,b)+V_\phi(a,b),
\]

where

\[
E_\phi(t)=\int \phi { |u(t)|^2\over2}\,dx,
\]

\[
D_\phi(a,b)=\nu\int_a^b\int \phi|\nabla u|^2\,dx\,dt,
\]

\[
F_\phi(a,b)=
\int_a^b\int
\left({ |u|^2\over2}+p\right)u\cdot\nabla\phi\,dx\,dt,
\]

and

\[
V_\phi(a,b)=
{\nu\over2}\int_a^b\int |u|^2\Delta\phi\,dx\,dt.
\]

This is the precise participation ledger.  A packet does not receive private
load.  Any increase is carried by transport flux, pressure work, viscous
boundary exchange, or an explicitly named source term.

The forward-gold question is sharper:

\[
\text{does this ledger force an unweighted terminal time-thickness reserve?}
\]

That means it would have to turn finite physical flux/control into a bound on
the normalized selected terminal source or flux marginal stronger than \(L^1\)
in terminal time.

## 2. Heat-scale normal form

Let \(r>0\) be the packet radius and let the terminal time window have heat
length \(r^2\tau\), where \(0<\tau\le1\).  Put

\[
y={x-x_0\over r},
\qquad
s={t-T\over r^2}.
\]

Test the local ledger against the heat-scale packet

\[
u_{r,\tau}(t,x)
=
a\,r^{-1}V(y)\chi(s/\tau),
\]

with a fixed smooth profile \(V\), a fixed terminal cutoff \(\chi\), and a
cutoff \(\phi_r(x)=\phi((x-x_0)/r)\).  The associated pressure scale from the
time-slice elliptic relation is

\[
p_{r,\tau}(t,x)
=
a^2 r^{-2}P(y)\chi(s/\tau)^2.
\]

This is not asserted to be an exact Navier-Stokes solution.  It is a scaling
normal form for what can and cannot be derived from the local energy ledger,
pressure ellipticity, finite physical flux, and heat-scale participation
accounting alone.

Assume the fixed profile has a nonzero normalized cubic/pressure flux through
the chosen cutoff:

\[
C_F(V,P,\phi,\chi)
=
\int
\left({ |V|^2\over2}+P\right)V\cdot\nabla\phi\,dy
\cdot
\int \chi(\sigma)^3\,d\sigma
\ne0.
\]

The physical pressure/convection flux obeys the scale law

\[
F_{\phi_r}
\simeq
a^3 r\tau .
\]

Indeed,

\[
\left({ |u|^2\over2}+p\right)u
\sim
a^3 r^{-3},
\qquad
\nabla\phi_r\sim r^{-1},
\qquad
dx\sim r^3dy,
\qquad
dt\sim r^2ds,
\]

so the integrated flux over a normalized time window of length \(\tau\) is
\(a^3r\tau\).

Choose

\[
a=\tau^{-1/3}.
\]

Then

\[
F_{\phi_r}\simeq r,
\]

while the normalized terminal flux mass is order one:

\[
r^{-1}F_{\phi_r}\simeq 1.
\]

In normalized time, the corresponding marginal has the terminal pulse shape

\[
g_\tau(s)\simeq {1\over\tau}\mathbf 1_{(-\tau,0]}(s).
\]

It has fixed \(L^1\) mass,

\[
\int g_\tau(s)\,ds\simeq1,
\]

but its \(L^p\) cost blows up for every \(p>1\):

\[
\int |g_\tau(s)|^p\,ds
\simeq
\tau^{1-p}
\longrightarrow\infty
\qquad(\tau\downarrow0).
\]

So the exact model enemy survives the local energy flux ledger:

\[
\text{physical flux cost}\simeq r,
\qquad
\text{normalized terminal pulse mass}\simeq1.
\]

## 3. Viscous boundary exchange is smaller in the same model

The viscous cutoff term scales as

\[
V_{\phi_r}
\simeq
a^2 r\tau.
\]

With \(a=\tau^{-1/3}\),

\[
V_{\phi_r}
\simeq
r\tau^{1/3}.
\]

Thus the normalized viscous boundary exchange is

\[
r^{-1}V_{\phi_r}\simeq\tau^{1/3}\to0.
\]

The same scaling applies to the viscous flux part

\[
-\nu\nabla {|u|^2\over2}
\]

through the cutoff collar.  It does not create the missing unweighted
residence.  The dominant terminal input in this normal form is the cubic
transport/pressure flux.

## 4. Energy remains physically small along a Zeno chain

The physical kinetic energy of the heat-scale packet is

\[
E_{\phi_r}(t)
\simeq
a^2r.
\]

Taking, for example,

\[
\tau=r,
\]

gives

\[
E_{\phi_r}(t)\simeq r^{1/3}\to0,
\]

\[
F_{\phi_r}\simeq r,
\]

\[
V_{\phi_r}\simeq r^{4/3},
\]

and

\[
r^{-1}F_{\phi_r}\simeq1.
\]

Along \(r_j=2^{-j}\),

\[
\sum_j F_{\phi_{r_j}}<\infty,
\qquad
\sum_j V_{\phi_{r_j}}<\infty,
\qquad
\sum_j r_j^{-1}F_{\phi_{r_j}}=\infty.
\]

This is the exact mismatch.  The physical participation ledger is finite,
while the normalized terminal heat-scale ledger has one order-one pulse per
scale.

## 5. Consequence for the forward-gold route

The participation law is still correct in its native form: the packet cannot
receive load outside the shared local energy balance.  The failure is only the
stronger forward-gold inference:

\[
\text{finite local energy flux budget}
\Rightarrow
\text{unweighted selected terminal residence}.
\]

That inference is false from the installed accounting inputs and heat-scale
scaling alone.  The heat-scale pulse keeps the normalized terminal mass while
paying only radius-discounted physical flux.

Therefore the open positive supplier is not plain
`ParticipationTransferThrottle.A`.  It must be a genuinely coercive same-carrier
theorem, such as one of:

\[
\text{ProjectedLocalizedFluxCommutatorCoercivity.A},
\]

\[
\text{StrictRescaledNoWasteLyapunov.A},
\]

\[
\text{SourceSquareReserve.A plus SelectedSourceSquareCarrierDomination.A},
\]

\[
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A},
\]

\[
\text{SelectedPositivePolarSaturation.A plus NoFreeTerminalZenoDonorChain.A},
\]

or directly

\[
\text{UnweightedTerminalCriticalActionReserve.A}.
\]

## Verdict

`ParticipationPressureFluxThrottle.A` is not proved by the local energy
accounting identity, pressure ellipticity, finite physical energy, finite
physical flux, or heat-scale participation accounting.

It reduces to the existing non-aliased forward-gold wall:

\[
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
\text{ on the actual selected positive carrier.}
}
\]

The CM role remains available through
`ParticipationDebtPassExitTargetClosure.A`: failures of the throttle are
classifiable as Part/Field witness evidence after same-witness
admission.  That is a fallback readout, not a forward-positive smoothness proof.
