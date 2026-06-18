---
ns_viewer:
  theorem_id: cone-payment-closure-package-20260611
  status: forward-positive-ledger-reduction-and-critical-payment-threshold-open-undiscounted-cone-budget
  proof_role: forward_positive_cone_payment_estimate_package
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Organizes Thomas's shrinking-cone program under the original split: static hiding/singulet first, moving flux-maximization second, with density and viscosity as measuring layers, in order to attack the finite undiscounted cone budget, payment throttle, and discount-removal estimates."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-parabolic-funnel-forward-control-analysis-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-density-point-closure-direct-attempt-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-vortex-packet-transfer-rate-and-cost-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-participation-transfer-donor-drain-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-peak-backoff-and-vortex-return-dichotomy-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-singulet-spin-smooth-exterior-compatibility-20260610.md
  downstream_consequence: "The full cone-payment work order is now a typed forward-positive theorem package. It proves the moving-cone ledger identity, the moving-cone tail smallness consequence of a finite undiscounted cone budget, the static hiding reduction, and the critical payment-rate lower bound. It leaves the exact forward-positive children open: ParabolicFunnelScaleCriticalBudget.A, FunnelProfileLyapunov.A, MovingConeToCKNSmallness.A, ScaleCriticalPaymentThrottle.A, and KineticDensityMorreyFromParticipation.A."
---

# MPP ConePaymentClosurePackage.A

Date: 2026-06-11

Status: parent reduction package for the cone-payment work order. This note
proves the ledger reductions, the moving-cone tail smallness consequence, and
the critical payment threshold. It does not claim the undiscounted cone-budget
supplier or the moving-cone-to-CKN bridge has been proved from raw physical
energy.

## 0. Frozen Source Split

The governing split is Thomas's original split:

```text
1. static energy concentration / singulet hiding;
2. peak-time energy transfer into a shrinking ball / flux maximization.
```

Density and viscosity are measuring layers inside those two cases. They do not
replace the split.

The active task in this note is forward-positive only:

```text
prove a finite undiscounted scale-critical cone budget,
or prove a payment throttle,
or remove the physical discount,
or find a profile Lyapunov mechanism.
```

No endpoint-routing conclusion is made in this note.

## 1. Moving Cone Ledger

Let

```text
Omega_rho(t) = B_{rho(t)}(x0),
e = |u|^2 / 2,
rho(t) > 0,
rho(t) down to 0.
```

For a smooth preterminal Navier-Stokes solution,

```text
partial_t u + (u dot grad)u + grad p = nu Delta u,
div u = 0,
```

the local energy equation is

```text
partial_t e + div((e+p)u) = nu Delta e - nu |grad u|^2.
```

Reynolds transport on the moving ball gives

```text
d/dt integral_{Omega_rho(t)} e dx
 + nu integral_{Omega_rho(t)} |grad u|^2 dx
= integral_{partial Omega_rho(t)}
   [ e rho'(t) - (e+p)u dot n + nu partial_n e ] dS.
```

Integrated over `I=(a,b)`, this is

```text
E_rho(b) - E_rho(a) + D_rho(I)
= Wall_rho(I) + Trans_rho(I) + Press_rho(I) + ViscWall_rho(I),
```

where

```text
Wall_rho(I)     = integral_I integral_partial e rho'(t) dS dt,
Trans_rho(I)    = - integral_I integral_partial e u dot n dS dt,
Press_rho(I)    = - integral_I integral_partial p u dot n dS dt,
ViscWall_rho(I) = nu integral_I integral_partial partial_n e dS dt.
```

This proves the exact accounting part of the moving-cone problem:

```text
stored energy in the shrinking ball
can increase only through the moving-wall, transport, pressure, and viscous wall
terms, while interior dissipation is charged on the left.
```

For a shrinking wall, `rho'(t)<0`, the term `e rho'(t)` is a loss of stored
energy from the moving receiver. It is not an incoming payment.

## 2. Balanced Parabolic Frame

The parabolic cone is

```text
rho(t) = lambda sqrt(T-t).
```

With

```text
tau = T-t,
y = (x-x0)/sqrt(tau),
s = -log tau,
v(y,s) = sqrt(tau) u(x,t),
q(y,s) = tau p(x,t),
```

the cone becomes

```text
B_lambda x (S0,infinity).
```

The scale-critical cone currency is

```text
C_lambda(S)
 = integral_S^{S+1} integral_{B_lambda}
     ( |v|^3 + |q|^{3/2} ) dy ds.
```

The physical energy and dissipation are discounted:

```text
integral_{B_{lambda sqrt(tau)}} |u|^2 dx
 = e^{-s/2} integral_{B_lambda} |v|^2 dy,
```

and

```text
nu integral |grad_x u|^2 dx dt
 = nu integral e^{-s/2} |grad_y v|^2 dy ds.
```

Thus finite physical cone energy or dissipation does not imply finite
undiscounted scale-critical cone budget. The discount-removal theorem is a real
positive supplier, not a bookkeeping consequence.

## 3. Conditional Cone Budget Closure

If the full undiscounted cone budget is finite,

```text
integral_{S0}^{infinity} integral_{B_lambda}
  ( |v|^3 + |q|^{3/2} + |grad_y v|^2 ) dy ds
< infinity,
```

then the late cone tails become small:

```text
integral_S^{infinity} integral_{B_lambda}
  ( |v|^3 + |q|^{3/2} ) dy ds
-> 0.
```

Proof: the integrand is nonnegative and integrable on `[S0,infinity)`, so the
tail integrals tend to zero.

This is a moving-cone statement. In physical variables it controls the
self-similar terminal region

```text
K_{lambda,S}
:=
{(x,t): T-e^{-S}<t<T, |x-x0|<lambda sqrt(T-t)}.
```

It does not by itself control a fixed CKN cylinder

```text
Q_r(x0,T):=B_r(x0) x (T-r^2,T).
```

For every fixed `r>0`, the cylinder contains points arbitrarily close to `T`
with `lambda sqrt(T-t)<|x-x0|<r`; those points lie outside the moving cone.
Thus the old "smaller subcone after cutoff shrink" step is not a CKN cylinder
smallness theorem.

The exact CKN-consuming bridge must be one of the following:

```text
MovingConeToCKNSmallness.A:
  moving-cone tail smallness + exterior annulus control
  => limsup_{r downarrow 0} CKN(Q_r(x0,T)) < epsilon_CKN,
```

or a direct moving-cone epsilon-regularity theorem whose hypotheses match
`K_{lambda,S}`. Equivalently, one may assume the full-cylinder smallness

```text
limsup_{r downarrow 0}
  integral_{T-r^2}^T integral_{B_r(x0)}
    ( |u|^3 + |p|^{3/2} ) dx dt / r^2
< epsilon_CKN.
```

CKN epsilon regularity then rules out a singular point at the cone tip.

So the conditional forward theorem is:

```text
finite undiscounted cone budget
=> late moving-cone tails become small
+ MovingConeToCKNSmallness.A or full-cylinder CKN smallness
=> no terminal singularity at (x0,T).
```

The open suppliers are now the cone-budget premise

```text
ParabolicFunnelScaleCriticalBudget.A
```

or a replacement profile monotonicity theorem:

```text
FunnelProfileLyapunov.A.
```

and the cone-to-CKN bridge

```text
MovingConeToCKNSmallness.A.
```

## 4. Static Hiding / Singulet Case

In the static hiding case, inward flux is not used as the explanation. The bad
object tries to be:

```text
finite physical energy in shrinking balls
+ infinite point kinetic density or point spin
+ smooth participating exterior on every positive radius.
```

Let the physical mass density be fixed:

```text
rho0 > 0,
k = (rho0/2)|u|^2.
```

The algebra is:

```text
k(x0,T) < infinity
=> |u(x0,T)|^2 = 2k(x0,T)/rho0 < infinity.
```

But finite integral density alone is not enough:

```text
integral_{B_R(x0)} k dx < infinity
```

does not imply pointwise `k(x0,T)<infinity`. For example, the exact model

```text
k_alpha(x) = |x-x0|^{-alpha}, 0 < alpha < 3,
```

has finite local integral and infinite point value. This is a bookkeeping
counterexample, not a Navier-Stokes solution.

The static hiding case therefore has the dichotomy:

```text
rescaled cone field becomes scale-critical-small on late cone slabs
  => CKN regularity removes the point;

rescaled cone field keeps a persistent or unbounded scale-critical cone mass
  => finite raw energy has not hidden the point; the missing estimate is an
     undiscounted cone budget or point-density Morrey bound.
```

The point-extension branch is already controlled by
`SinguletSpinSmoothExteriorCompatibility.A`:

```text
uniform finite gradient to the point
  => removable / no infinite point-spin readout;

infinite point spin
  => no smooth finite-gradient extension through the point.
```

A bare point is only a diagnostic probe for the forward estimate. The
forward-positive problem must work on positive-radius balls, cylinders, or
cones and then pass to the tip with uniform bounds. Punctured smoothness alone
does not supply the missing uniform estimate.

Thus static hiding is closed as a forward-positive reduction:

```text
either CKN-smallness removes it,
or the point object still lacks the uniform cone budget / point-density Morrey
estimate needed to control the tip.
```

This does not prove the positive `DensityPointClosure.A` premise from finite
energy alone; it proves that finite energy alone is the wrong closure currency.

## 5. Viscosity Scale And Critical Payment Rate

Let the current slice radius be `r>0`. Define the actual oscillation and its
dimensionless amplitude by

```text
Delta_r u(t) = sup_{x,y in B_r(x0)} |u(x,t)-u(y,t)|,
A_osc(r,t) = r Delta_r u(t) / nu.
```

For differentiable `u`, the fixed-slice estimate is exact:

```text
Delta_r u(t) <= 2r sup_{B_r(x0)} |grad u(.,t)|.
```

On the parabolic cone `r=rho(t)=lambda sqrt(T-t)`, this gives the exact
moving-slice bridge

```text
Delta_{rho(t)} u(t)
<= 2 rho(t) sup_{B_{rho(t)}(x0)} |grad u(.,t)|.
```

The critical velocity benchmark is now a definition, not an inferred size
estimate:

```text
U_c(r) := nu / r.
```

The viscous clock is

```text
tau_nu(r) := r^2 / nu.
```

Let `omega_3=|B_1(0)|`. A full-ball benchmark with velocity amplitude
`A U_c(r)` has exactly

```text
E_bench(r;A) := omega_3 r^3 (A U_c(r))^2
              = omega_3 A^2 nu^2 r.
```

This tends to zero as `r down to 0`. Therefore raw energy amount cannot exclude
a critical-amplitude benchmark.

The payment rate over one viscous clock is different:

```text
P_bench(r;A) := E_bench(r;A) / tau_nu(r)
              = omega_3 A^2 nu^3 / r.
```

So the critical packet may be cheap in absolute stored energy but expensive in
time-rate:

```text
critical stored energy benchmark:  omega_3 A^2 nu^2 r -> 0
critical payment power benchmark:  omega_3 A^2 nu^3/r -> infinity
```

This benchmark is not a theorem that every oscillatory packet fills the whole
ball. To turn an oscillation into a lower energy bill, one must state a
positive-measure amplitude hypothesis. For example, if a subset
`G_r(t) subset B_r(x0)` has
measure at least `theta omega_3 r^3` and

```text
|u(x,t)-u_{B_r}(t)| >= c A nu/r
for x in G_r(t),
```

then the exact lower bound is

```text
integral_{B_r(x0)} |u-u_{B_r}|^2 dx
>= theta omega_3 c^2 A^2 nu^2 r.
```

The exact quantitative center of the moving flux-maximization problem is
therefore:

```text
the hard estimate is not "there is enough raw energy";
the hard estimate is whether the same participating field can lawfully supply
the benchmark payment P_bench(r;A), or the corresponding lower bound forced by
the stated positive-measure amplitude hypothesis, into the shrinking receiver before
viscosity acts on the tau_nu(r) clock.
```

## 6. Moving Flux-Maximization Case

For a shrink schedule `rho(t)`, the incoming side is bounded only by the actual
moving-cone ledger:

```text
Pay_in(rho;I)
<= positive parts of transport flux
 + pressure work
 + viscous boundary exchange
- moving-wall loss
- interior dissipation
- donor attenuation / shell losses.
```

There is no finite-speed pressure story in this ledger. Pressure may act
nonlocally through the elliptic pressure equation, but pressure work remains an
accounted boundary term. The proof cannot replace that term with a neighbor-chain
speed law.

There is also no automatic uniform control under arbitrary adaptive shrinkage.
A shrink schedule may describe a measuring frame without proving a scale-uniform
bound on the positive-radius cone before passing to the tip.

The minimum demand to reach the dangerous scale is:

```text
Cost_crit(r;A) := omega_3 A^2 nu^3/r
```

measured as benchmark payment rate over the viscous clock. If the packet has
only volume fraction `theta` and lower amplitude fraction `c`, replace
`omega_3 A^2` by `theta omega_3 c^2 A^2`.

The moving flux theorem therefore has the exact comparison form:

```text
for every shrink schedule rho(t),
Pay_in(rho;I_r) < Cost_crit(r;A)
```

on the relevant shrinking intervals `I_r`, or else the proof must inspect the
configuration that allegedly pays the debt.

The existing fixed-scale theorem
`VortexPacketTransferRateAndCostAudit.A` supplies the rate formula:

```text
Rate_E(r,t)
 <= C r^{-1} integral_{A_r} |u|^3
  + C r^{-1} integral_{A_r} |p-c_r||u|
  + C nu r^{-2} integral_{A_r} |u|^2.
```

This proves finite fixed-scale accounting. It also shows why finite total
energy does not give a scale-uniform maximum rate: the right side contains
negative powers of `r` and the pressure term is nonlocal.

So the flux-maximization case is closed to this sharp fork:

```text
positive route:
  prove a scale-critical pressure/flux/donor/return estimate strong enough to
  beat the explicit benchmark/superlevel payment bill on every shrinking schedule;

open route:
  if that estimate cannot be proved, record the exact failed estimate and stop
  this forward-positive note there.
```

## 7. Derivative Tower Debt

Differentiating the equation gives the exact rung equation

```text
partial_t U_q - nu Delta U_q
= -nabla^q((u dot grad)u) - nabla^{q+1}p,
where U_q := nabla^q u.
```

Thus the tower claim cannot rest on a local Reynolds-scale phrase. It must
carry the exact differentiated nonlinearity, pressure response, and the two
extra viscous derivatives. Since the viscous rung for `U_q` uses `U_{q+2}`,
endpoint depth `N` requires velocity readout through depth

```text
N+2.
```

The pressure side requires the corresponding higher pressure response. Thus a
cone-payment branch that claims to retain a same-fluid derivative tower must
carry the installed `N+2` debt.

## 8. Final Package Theorem

Let an alleged finite terminal concentration at `(x0,T)` be represented by a
shrinking same-fluid receiver `B_{rho(t)}(x0)`.

Exactly one of the following proof roles applies.

### Case A: finite undiscounted cone budget

If

```text
integral_{S0}^{infinity} integral_{B_lambda}
  ( |v|^3 + |q|^{3/2} + |grad_y v|^2 ) dy ds
< infinity,
```

then late slabs become small, CKN applies, and the cone tip is regular.

### Case B: static hiding without such budget

Finite raw energy or finite local kinetic-density integral alone does not give
pointwise closure. The branch must either become CKN-small or present a
nonremovable point/singulet object. The nonremovable branch cannot be both
infinite point spin and smooth finite-gradient exterior, but this note still
needs `KineticDensityMorreyFromParticipation.A` or the full funnel budget to
turn that into pointwise control at the tip.

### Case C: moving flux payment

If the cone claims to build the concentration by incoming payment, then the
same-fluid boundary ledger must pay at least the critical rate

```text
Cost_crit(r;A) = omega_3 A^2 nu^3/r
```

over the viscous clock, with the stated positive-measure amplitude constants when the
packet does not fill the whole ball. Fixed-scale accounting is proved;
scale-uniform exclusion is not supplied by raw energy. A successful
forward-positive proof must supply `ScaleCriticalPaymentThrottle.A`,
`FunnelProfileLyapunov.A`, or an equivalent undiscounted cone-budget estimate.

This package closes the work order as a typed theorem reduction:

```text
static hiding/singulet
  -> CKN-small or open point-density Morrey / cone-budget estimate;

moving flux-maximization
  -> critical payment-rate comparison plus open scale-uniform throttle;

finite cone budget
  -> CKN regularity.
```

The remaining positive-forward supplier is exact:

```text
ParabolicFunnelScaleCriticalBudget.A
or
FunnelProfileLyapunov.A
or
ScaleCriticalPaymentThrottle.A
or
KineticDensityMorreyFromParticipation.A.
```

Those are the exact remaining forward-positive children. This package closes
the organization and reductions, not the final forward-positive theorem.

The silver branch for this case is licensed only after a precise forward
obstruction has survived the exact ledgers above. A raw oscillation estimate, a
benchmark payment rate, or a scale phrase is not itself a Pack/Part/Field
witness.

## 9. What This Note Changes

Before this package, the open cone work could still blur into:

```text
finite physical energy should imply no point blow-up
```

or:

```text
the parabolic funnel automatically removes the discount
```

or:

```text
the critical payment-rate threshold is already the scale-uniform throttle.
```

All three are now separated.

The proved part is:

```text
moving-cone ledger;
discounted physical budget versus undiscounted scale-critical budget;
finite cone budget => late-slab smallness => CKN;
static hiding dichotomy;
critical payment-rate lower bound;
N+2 tower debt.
```

The not-yet-proved positive part is:

```text
same-fluid participation removes the discount or beats the critical payment
rate uniformly across all shrinking schedules.
```

That is the exact next theorem if the proof continues in the forward-positive
program.
