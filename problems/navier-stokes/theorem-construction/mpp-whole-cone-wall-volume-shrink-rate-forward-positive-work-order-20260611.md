---
ns_viewer:
  theorem_id: whole-cone-wall-volume-shrink-rate-forward-positive-work-order-20260611
  status: forward-positive-work-order-executed-energy-only-transfer-versus-drain-closed-to-structural-obstruction
  proof_role: forward_positive_whole_cone_surface_volume_shrink_rate_analysis
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Executes Thomas's mature cone-payment work order inside the forward-positive proof mode: the shrinking receiver is treated as one moving spacetime cone, its wall and interior volume ledgers are separated, shrink laws are optimized at the level available from Navier-Stokes energy accounting, and the proposed transfer-versus-global-drain dominance is proved not to follow from energy/local-energy identities alone."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-parabolic-funnel-forward-control-analysis-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-cone-payment-closure-package-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-forward-positive-cone-estimate-direct-audit-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-scale-critical-payment-throttle-energy-only-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-participation-transfer-donor-drain-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-peak-backoff-and-vortex-return-dichotomy-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-singulet-spin-smooth-exterior-compatibility-20260610.md
  downstream_consequence: "The forward-positive cone program is narrowed to one exact missing structural theorem: an unweighted scale-critical cone-wall / profile coercivity estimate. Finite physical wall flux, finite cone volume, finite total energy, and global dissipation do not by themselves prove that the whole field drains faster than a shrinking packet can accumulate critical load."
---

# MPP WholeConeWallVolumeShrinkRateForwardPositiveWorkOrder.A

Date: 2026-06-11

Status: forward-positive work-order execution. This note stays in the
forward-positive estimate program. It names the surviving structural estimate
without routing it through any endpoint fallback.

## 0. Work Order Preserved

The object is an alleged finite-time concentration packet inside the same
unforced incompressible Navier-Stokes fluid. The packet is constrained, damped,
and coupled through incompressibility by viscosity and pressure, under one
participation law.

The work order has these parts.

1. The packet cannot be a private object.
2. A vortex-like packet cannot self-tighten forever without paying the opposing
   response it creates.
3. A vortex-like packet has a peak and a return/dissipation debt.
4. Inward payment must cross a boundary through transport flux, pressure work,
   viscous wall exchange, and the moving-wall account.
5. Donors are not static reservoirs; they also dissipate while donating.
6. The terminal peak/rest collision and the preterminal peak-cost problem must
   be kept separate.
7. The shrinking cone is one moving spacetime object, not a sequence of
   disconnected fixed-radius tests.
8. The Gabriel's horn analogy is a wall-versus-volume question: the cone wall
   records possible energy exchange, while the cone interior records storage
   capacity.
9. The shrink law `rho(t)` is a real optimization variable.
10. Density and viscosity are measuring layers, not replacements for the cone
    wall/volume/payment problem.

The forward-positive target is to decide whether these parts prove a regularity
estimate before any endpoint fallback is used.

## 1. Moving Cone Wall Ledger

Let

```text
Omega_rho(t) = B_{rho(t)}(x0),
e = |u|^2 / 2,
rho(t) > 0,
rho(t) down to 0 as t up to T.
```

For a smooth preterminal solution

```text
partial_t u + (u dot grad)u + grad p = nu Delta u,
div u = 0,
```

the local energy equation is

```text
partial_t e + div((e+p)u) = nu Delta e - nu |grad u|^2.
```

Reynolds transport on the moving receiver gives

```text
d/dt int_{Omega_rho(t)} e dx
 + nu int_{Omega_rho(t)} |grad u|^2 dx
= int_{partial Omega_rho(t)}
   [ e rho'(t) - (e+p) u dot n + nu partial_n e ] dS.
```

Integrated on `I=(a,b)`,

```text
E_rho(b) - E_rho(a) + D_rho(I)
= W_move(rho;I) + W_trans(rho;I) + W_press(rho;I) + W_visc(rho;I),
```

where

```text
W_move = int_I int_{partial Omega_rho(t)} e rho'(t) dS dt,
W_trans = - int_I int_{partial Omega_rho(t)} e u dot n dS dt,
W_press = - int_I int_{partial Omega_rho(t)} p u dot n dS dt,
W_visc = nu int_I int_{partial Omega_rho(t)} partial_n e dS dt.
```

For a shrinking receiver, `rho'(t)<0`, the moving-wall term removes stored
energy from the receiver. It is a wall loss, not an inward payment.

Thus the lawful inward payment is bounded by the positive parts of
`W_trans`, `W_press`, and `W_visc`, after subtracting interior dissipation and
the moving-wall loss. This is the whole-cone wall ledger.

## 2. Cone Volume Ledger

The interior spacetime capacity of the shrinking receiver is

```text
Vol(F_rho(I)) = int_I |B_{rho(t)}| dt
              = c_3 int_I rho(t)^3 dt.
```

This is the volume side of the Gabriel's horn analogy. It says how much
spacetime room the receiver has to store or hide load as it collapses.

The wall side and volume side are different ledgers:

```text
wall ledger:
  how much load can lawfully enter through the moving boundary;

volume ledger:
  how much spacetime interior remains available for storage/concentration.
```

A point singularity has to beat both. It needs enough wall payment, and it
needs a concentration profile inside a vanishing interior.

## 3. Geometry Versus Weighted Wall Currency

The Gabriel's horn analogy is not literal geometry copied into Navier-Stokes.
For a finite terminal cone with

```text
rho(t) = lambda tau^beta,
tau = T-t,
beta > 0,
```

the raw interior volume is finite:

```text
int_0^{tau0} rho(t)^3 dt
= C int_0^{tau0} tau^(3 beta) d tau
< infinity.
```

The raw spacetime wall area is also finite near the tip. Its Euclidean surface
measure has size

```text
int_0^{tau0} rho(t)^2 sqrt(1 + |rho'(t)|^2) d tau.
```

For `rho(t)=lambda tau^beta`,
`|rho'(t)|=lambda beta tau^(beta-1)`, and `sqrt(1+a^2)<=1+a` gives the exact
upper bound

```text
int_0^{tau0} rho(t)^2 sqrt(1 + |rho'(t)|^2) d tau
<=
lambda^2 int_0^{tau0} tau^(2 beta) d tau
+ lambda^3 beta int_0^{tau0} tau^(3 beta - 1) d tau
< infinity
```

for every `beta>0`.

So the cone does not solve the problem by having infinite raw surface area. The
real "surface area" analogue is the weighted wall currency:

```text
energy density, pressure, velocity, viscosity, and moving-wall speed
integrated over the collapsing wall.
```

In one view the tip threatens blow-up because the weights can diverge. In the
whole-wall view every bit of that threat must appear as weighted transport,
pressure work, viscous exchange, or moving-wall loss on the same collapsing
surface.

## 4. Power-Law Shrink Test

To see what the wall ledger actually gives, test a monotone power shrink law
near `T`. Let

```text
tau = T-t,
rho(t) = lambda tau^beta,
beta > 0.
```

At the critical Navier-Stokes velocity benchmark

```text
U_c(t) = nu / rho(t),
```

define the benchmark energy density by

```text
e_c(t) = (1/2)U_c(t)^2 = (1/2)nu^2 rho(t)^(-2).
```

This is a benchmark, not a profile statement about the solution.  The actual
moving-slice quantity is the oscillation

```text
Delta_{rho(t)} u(t)
  := sup_{x,y in B_{rho(t)}(x0)} |u(x,t)-u(y,t)|.
```

For a differentiable preterminal slice the exact bridge is

```text
Delta_{rho(t)} u(t)
  <= 2 rho(t) sup_{B_{rho(t)}(x0)} |grad u(.,t)|.
```

Thus the dimensionless branch amplitude is

```text
A_osc(t) := rho(t) Delta_{rho(t)} u(t) / nu,
```

and any use of `U_c(t)` on an actual branch must be read through an explicit
oscillation or wall-integrand hypothesis, not through a single-amplitude
velocity law.

The moving-wall benchmark is

```text
M_c(t)
:= e_c(t)|rho'(t)| |partial B_{rho(t)}|
= 2 pi nu^2 |rho'(t)|
= 2 pi nu^2 lambda beta tau^(beta-1).
```

This is integrable near `tau=0` for every `beta>0`.

The transport and pressure-work benchmark at critical amplitude is

```text
T_c(t)
:= e_c(t)U_c(t)|partial B_{rho(t)}|
= 2 pi nu^3 rho(t)^(-1)
= 2 pi nu^3 lambda^(-1) tau^(-beta).
```

The viscous wall benchmark is:

```text
V_c(t)
:= nu {e_c(t)\over rho(t)} |partial B_{rho(t)}|
= 2 pi nu^3 rho(t)^(-1)
= 2 pi nu^3 lambda^(-1) tau^(-beta).
```

Consequently the critical physical wall payment is finite for

```text
0 < beta < 1,
```

logarithmically divergent for `beta=1`, and power divergent for `beta>1`.

The parabolic cone has `beta=1/2`. If the actual branch satisfies the explicit
cone-scale oscillation condition

```text
0 < c <= A_osc(t) <= C < infinity
```

along the moving radius `rho(t)=lambda sqrt(T-t)`, then the exact wall benchmark
above is still finite. This condition is the branch hypothesis being tested; it
does not assert a linear velocity profile or a pointwise velocity law of size
`nu/rho(t)`.

This is the precise Gabriel's horn correction:

```text
finite physical cone-wall ledger
does not imply
finite unweighted scale-critical cone budget.
```

The wall is controlled in the physical currency, while the singularity question
lives in the normalized scale-critical currency.

## 5. Supercritical Amplitude Test

The old shortcut treated a packet amplitude

```text
U(t) = A(t) nu / rho(t).
```

as though it were the actual velocity profile on the moving ball.  The exact
version is to test the moving-ball oscillation amplitude:

```text
A_osc(t) = A(t).
```

For the parabolic cone `rho(t)=lambda tau^(1/2)`, take the benchmark schedule

```text
A(t) = tau^(-alpha), alpha > 0.
```

The transport and pressure wall scale becomes

```text
A(t)^3 nu^3 tau^(-1/2)
= nu^3 tau^(-3 alpha - 1/2).
```

This remains integrable near `tau=0` when

```text
alpha < 1/6.
```

The viscous wall and moving-wall quadratic pieces remain integrable under the
weaker condition `alpha < 1/4`.

Thus even some supercritical oscillation-amplitude growth is not excluded by
finite physical wall accounting alone, provided the actual wall integrands are
only charged at this benchmark rate. This is not a claim that such a profile
solves Navier-Stokes. It proves the exact no-go statement needed here:

```text
physical whole-wall finiteness is too weak to rule out a dangerous normalized
cone-scale functional.
```

A successful theorem must add Navier-Stokes structure that controls the
unweighted cone-scale functional, not merely the physical wall integral.

## 6. Minimum Singularity Cost In The Correct Currency

The Caffarelli-Kohn-Nirenberg scale-critical test gives the right currency.
For a singular point `(x0,T)`, late parabolic cylinders cannot all be below the
epsilon-regularity threshold. In cone variables, the bad branch must keep
producing non-small slabs of

```text
C_lambda(S)
= int_S^{S+1} int_{B_lambda}
   ( |v|^3 + |q|^(3/2) ) dy ds.
```

So the minimum singularity cost is not a fixed amount of physical energy. It is
a repeated scale-critical cost:

```text
C_lambda(S_j) >= epsilon_CKN
```

on arbitrarily late slabs or on a tail that does not become small.

The physical version of the same slabs is discounted by powers of `tau`. The
series of physical costs can be finite while the unweighted scale-critical
cost remains persistent.

Thus the correct cost functional is

```text
Cost_sing_cone
  = persistent or non-small unweighted scale-critical cone mass,
```

not raw kinetic energy in the shrinking ball.

## 7. Shrink-Law Optimization

The shrink law changes two quantities at once.

For a receiver that must acquire packet energy `E_target` during a time window
of length `h`, the average net inward payment must obey

```text
average Pay_in >= E_target / h
```

before interior dissipation is added.

So a very fast collapse minimizes exposure time to global dissipation, but it
raises the required average payment. A slow feeding window lowers the average
payment demand, but it exposes the receiver and donors to more viscous drain
and more wall accounting.

This gives the honest optimization problem:

```text
sup_rho [
  lawful inward wall payment through Sigma_rho
  minus moving-wall loss
  minus interior dissipation
  minus donor attenuation
]
```

compared against

```text
minimum repeated scale-critical singularity cost.
```

From the energy identity alone, the supremum is not determined. The identity
shows where payment must appear; it does not cap the pressure/transport wall
terms below the scale-critical demand on every shrink schedule.

The fastest-collapse case is therefore not closed by slogan. It is the
short-time edge of the same optimization: least global drain exposure and
largest average payment demand.

The longer-feeding case is the opposite edge: more time to feed and more time
for donors and the whole field to drain.

Any winning proof must show that every point in this tradeoff loses to
participation.

## 8. Transfer Versus Global Drain

The proposed strong claim is:

```text
averaged over the relevant interval, the field loses usable energy through
participation faster than any one point-like packet can accumulate it from
neighbors.
```

This does not follow from the global energy inequality.

The global identity gives

```text
d/dt E_total(t) = - nu int_{R^3} |grad u|^2 dx.
```

The local moving receiver gives

```text
d/dt E_rho(t) + D_rho(t)
= wall transport + pressure work + viscous wall exchange + moving-wall term.
```

There is no general inequality of the form

```text
d/dt E_rho(t) <= - d/dt E_total(t).
```

Local energy can increase while total energy decreases. The increase is paid
by redistribution through the wall, while the total decrease records only
viscous dissipation. These are different accounts.

The calculation above is an exact separation between the discounted physical
ledger and the unweighted cone-scale ledger. A branch satisfying a positive
lower bound for the unweighted cone functional can have finite physical energy
and finite physical dissipation near the tip because the physical ledger is
discounted.

So the transfer-versus-drain principle is not false as an intended theorem,
but it is not a consequence of the basic energy law. It must be proved as a
new scale-critical structural estimate.

## 9. Anti-Self-Tightening And Peak Return Inside The Cone

The cone ledger also preserves the vortex/peak logic.

At any positive radius, a packet peak has a time trace only if the packet
remains a same-fluid positive-radius object. Once a load readout `A_r(t)` has a
peak and later returns to a lower value, absolute continuity gives

```text
int_{t_peak}^{t_end} |dA_r/dt| dt >= A_peak - A_end.
```

Inside the cone, this return budget is another wall/profile cost. A peak near
the tip cannot be treated as "appearing at the end" without paying either
inward wall payment before the peak or return/dissipation after the peak.

The forward-positive use is:

```text
prove enough cone-wall/profile coercivity to force the peak to back off and
become CKN-small before the tip.
```

The current identities do not supply that coercivity by themselves.

## 10. Density And Viscosity Layers

With fixed mass density

```text
k = (rho0/2)|u|^2,
```

finite pointwise `k(x0,T)` gives finite pointwise velocity. This is a closure
readout after the cone estimate; it is not the cone estimate.

At scale `r`, viscosity acts on the clock

```text
tau_nu(r) = r^2 / nu,
```

and the critical velocity benchmark is

```text
U_c(r) = nu / r.
```

This benchmark does not assert a linear velocity profile on the moving ball.
Actual cone use has to come from the cone energy identity, boundary flux terms,
or a separate oscillation/carrier hypothesis.

The stored critical energy benchmark is

```text
E_c(r;A) = omega_3 A^2 nu^2 r,
```

which tends to zero at fixed `A`, while the critical payment power over the
viscous clock is

```text
P_c(r;A) = E_c(r;A) / tau_nu(r) = omega_3 A^2 nu^3 / r,
```

which diverges.

So viscosity helps frame the clock comparison, but finite stored energy and
finite physical wall flux still do not close the unweighted scale-critical
profile problem.

## 11. What Is Proved Here

This note proves or records as proved from the cited notes:

```text
1. exact moving-cone energy identity;
2. separation of cone wall ledger and cone volume ledger;
3. power-law shrink accounting for physical wall terms;
4. finite physical wall accounting for parabolic type-I profiles;
5. finite physical wall accounting even for mild supercritical amplitudes
   alpha < 1/6 in the model scaling;
6. CKN singularity cost belongs to unweighted scale-critical cone mass, not raw
   physical energy;
7. shrink-law optimization is a real tradeoff between payment time and drain
   exposure;
8. global energy drain does not dominate local packet accumulation by the
   basic energy identities;
9. density and viscosity remain measuring layers inside the cone program.
```

## 12. What This Closes

The following weaker routes are closed as insufficient:

```text
finite total energy closes the tip;
finite physical cone volume closes the tip;
finite physical whole-wall flux closes the tip;
global energy drain automatically outruns local accumulation;
fastest collapse or longest feeding wins without a shrink-law estimate;
density algebra closes the point without Morrey/cone control;
viscosity scale alone supplies the missing profile smallness.
```

These are now rejected forward-positive routes, not open vague intuitions.

## 13. Exact Remaining Forward-Positive Theorem

The one remaining positive theorem is now sharp:

```text
WholeConeScaleCriticalParticipationThrottle.A
```

It must prove, for every admissible shrink law `rho(t)` near a candidate
terminal point, one of the following equivalent forms:

```text
finite unweighted scale-critical cone budget;
late-slab CKN smallness;
profile Lyapunov/coercivity forcing normalized decay;
or a wall-payment throttle that bounds inward transport + pressure + viscous
exchange below the repeated scale-critical singularity cost after donor drain.
```

In formula form, the desired estimate is:

```text
sup_rho Pay_in^crit(rho; terminal tail)
  < Cost_sing_cone
```

where both sides are measured in unweighted scale-critical cone currency, not
discounted physical energy.

This is the completed forward-positive work-order result. The mature idea does
not close the Navier-Stokes regularity theorem from the existing energy
identities; it closes the false shortcuts and isolates the exact structural
estimate that would have to be proved next.
