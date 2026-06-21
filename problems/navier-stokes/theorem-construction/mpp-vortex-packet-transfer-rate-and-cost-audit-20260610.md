---
ns_viewer:
  theorem_id: vortex-packet-transfer-rate-and-cost-audit-20260610
  status: proved-fixed-scale-rate-formula-and-scale-critical-obstruction
  proof_role: active_completion_quantitative_participation_debt_audit
  logical_landing_node: vortex_packet_transfer_rate_and_cost_audit
  edge_effect: "Recovers Thomas's original quantitative questions from the unflattened source passage: maximum lawful packet transfer rate, travel/attenuation, energy-loss clock, singularity cost, and the 6a/6b peak split."
  upstream_origin:
    - /Users/thomasbirnie/.codex/attachments/d777f495-e1be-4660-9297-ef166e4da17b/pasted-text.txt
    - problems/navier-stokes/theorem-construction/mpp-participation-transfer-donor-drain-audit-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-peak-backoff-and-vortex-return-dichotomy-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-minimum-singularity-cost-functional-lowhigh-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-lowhigh-infinite-cost-endpoint-source-pack-face-landing-20260610.md
  downstream_consequence: "The exact packet energy transfer-rate formula is installed. A fixed positive scale has a finite same-time rate in terms of flux, pressure work, viscous boundary exchange, and local norms. No scale-uniform maximum follows from finite total energy; the shrinking-packet positive exclusion remains a scale-critical supplier problem or else a CM Part/Field landing."
---

# MPP VortexPacketTransferRateAndCostAudit.A

Date: 2026-06-10

Status: quantitative audit and theorem attempt. This proves the fixed-scale
packet transfer-rate formula and the scale-critical obstruction to a raw
finite-energy maximum-rate proof. It does not prove a global positive
Navier-Stokes regularity theorem.

## Source Commands From Thomas

The governing source is the passage beginning:

```text
*** READ THE NEXT PART CAREFULLY, PRESERVE THE INTENT, THE IDEA, THE NUANCE.
DO NOT FLATTEN ANYTHING WRITTEN ***
```

The quantitative commands inside that passage include:

```text
participation and field laws dictate that there's an upper limit to how much
total energy a fluid can contribute to any packet
```

```text
the viscosity, pressure, incompressibility laws dictate the rate at which that
energy is transferred (the participation law THROTTLES how quickly energy
transfers through the fluid)
```

```text
what's the distance that energy is travelling, what is the maximal rate it can
travel at, and what is the rate of energy being lost by the total field as that
energy is travelling?
```

```text
First compute how much load is actually needed to make a point-like packet
singular.
```

```text
Can the debt be paid?
```

```text
If paid, what configuration results?
```

The earlier six-mechanism integration preserved the CM landing. It did not
finish this quantitative audit. This note records the missing calculation.

## Setup

Let `u,p` solve unforced incompressible Navier-Stokes on `R^3`:

```text
partial_t u + u dot nabla u + nabla p = nu Delta u,
div u = 0.
```

Fix a packet centered at `x0` and scale `r>0`. Let:

```text
phi_r(x) = phi((x-x0)/r),
0 <= phi <= 1,
phi = 1 on B_r,
supp phi subset B_{2r},
|nabla phi_r| <= C/r,
|Delta phi_r| <= C/r^2.
```

Define the packet energy and packet dissipation:

```text
E_r(t) = (1/2) integral phi_r |u|^2 dx,
D_r(t) = nu integral phi_r |nabla u|^2 dx.
```

## 0. Distance Travelled And Loss While Travelling

Thomas's distance question has two different mathematical answers.

For material transport and viscous exchange, distance is geometric. Energy
entering a packet from outside must cross packet collars and annular shells.
Each shell has its own local balance:

```text
E_j(b) - E_j(a) + D_j(I) = F_j(I) + V_j(I).
```

So the loss while travelling is measured by:

```text
donor energy loss,
interior donor dissipation,
viscous leakage,
cutoff errors,
and pressure work across the same shell boundaries.
```

For pressure, there is no finite-speed travel distance. Pressure is determined
elliptically by:

```text
-Delta p = partial_i partial_j(u_i u_j).
```

The right replacement for "distance travelled" in the pressure channel is not
a path speed. It is pressure-tail attenuation through the singular integral
kernel plus whatever cancellation or tail theorem is available. In this note,
all such nonlocal contribution is kept inside the pressure-work term. That is
why a finite-speed neighbor-chain theorem would be false, while a shell
accounting theorem is true.

## 1. Maximum Lawful Energy Transfer Rate At Fixed Scale

The exact local energy identity gives:

```text
dE_r/dt + D_r
  = T_r + P_r + V_r,
```

where

```text
T_r = integral (|u|^2/2) u dot nabla phi_r dx,
P_r = integral p u dot nabla phi_r dx,
V_r = (nu/2) integral |u|^2 Delta phi_r dx.
```

Since `div u=0`, a constant may be subtracted from pressure in `P_r`. For any
local pressure center `c_r(t)`:

```text
P_r = integral (p-c_r) u dot nabla phi_r dx.
```

Consequently the exact same-time maximum lawful packet energy rate is:

```text
Rate_E(r,t)
 := |T_r(t)| + |P_r(t)| + |V_r(t)|
```

and it obeys:

```text
Rate_E(r,t)
 <= C r^{-1} integral_{A_r} |u|^3 dx
  + C r^{-1} integral_{A_r} |p-c_r| |u| dx
  + C nu r^{-2} integral_{A_r} |u|^2 dx,
```

where `A_r = B_{2r}(x0) \ B_r(x0)` with fixed cutoff-collar constants.

This is the answer to the fixed-scale version of:

```text
what is the maximal rate it can travel at?
```

At a fixed positive `r`, a smooth solution has a finite rate. The packet cannot
gain energy privately; it can gain energy only through transport flux, pressure
work, or viscous boundary exchange, while interior viscosity is charged in
`D_r`.

## 2. What The Rate Formula Does Not Give

The rate above is not a number determined only by total kinetic energy.

A local interpolation estimate gives

```text
integral_{B_{2r}} |u|^3
 <= C E_{2r}^{3/4}
      (D_{2r}/nu + r^{-2} E_{2r})^{3/4}.
```

The near pressure term has the same critical size after the pressure Poisson
law and Calderon-Zygmund estimates. The far pressure term is nonlocal and must
be carried as pressure-work or controlled by a separate pressure-tail theorem.

After the Young-margin split, the transport/near-pressure part has the form:

```text
Rate_E(r,t)
 <= epsilon D_{2r}(t)
  + C_{epsilon,nu} r^{-4} E_{2r}(t)^3
  + C nu r^{-2} E_{2r}(t)
  + pressure_tail_work(r,t).
```

This is useful at fixed scale. It is not scale-uniform as `r down to 0`.

## 3. Scaling Test: Finite Total Energy Does Not Give A Scale-Uniform Rate

Take a smooth packet with characteristic velocity size `U_r` on a ball of
radius `r`. Its local energy has size:

```text
E_{r,\mathrm{model}}:= U_r^2 r^3.
```

The transport/near-pressure flux size is:

```text
Flux_{r,\mathrm{model}}:= U_r^3 r^2.
```

The viscous boundary exchange size is:

```text
Visc_{r,\mathrm{model}}:= \nu U_r^2 r.
```

Writing `U_r:=E_r^{1/2} r^{-3/2}` gives:

```text
Flux_{r,\mathrm{model}}:= E_r^{3/2} r^{-5/2},
Visc_{r,\mathrm{model}}:= \nu E_r r^{-2}.
```

So a bound on raw energy alone cannot give a uniform maximum rate as
`r down to 0`. Even with fixed total energy available in the whole fluid, the
scale factors allow the possible boundary rate for a shrinking packet to grow.

This is the first important correction to the naive raw-energy version of the
intuition:

```text
finite total energy
```

is not by itself the correct currency for excluding finite-time concentration.
The correct currency must be scale-critical pressure/flux/viscosity/source
accounting, not only total kinetic energy.

## 4. How Much Load Is Needed To Make A Point-Like Packet Singular?

There are several non-equivalent meanings of "singular." The cost depends on
the readout.

### Velocity-gradient readout

The profile-free quantity is the oscillation on the actual ball:

```text
Delta_r u(t):=sup_{x,y in B_r(x0)} |u(x,t)-u(y,t)|.
```

For differentiable `u`, the exact one-way bridge to the gradient is:

```text
Delta_r u(t) <= 2r sup_{B_r(x0)} |grad u(.,t)|.
```

Thus `Delta_r u/r` is an oscillation rate, not an equality for the pointwise
gradient.  A kinetic-energy lower bound also needs a distribution hypothesis,
not only two separated point values.  For example, if a set
`G_r(t) subset B_r(x0)` satisfies

```text
|G_r(t)| >= theta |B_r|,
|u(x,t)-u_{B_r}(t)| >= c U_r  for x in G_r(t),
```

then the exact lower bound is:

```text
integral_{B_r(x0)} |u-u_{B_r}|^2 dx
  >= theta |B_1| c^2 U_r^2 r^3.
```

Under the benchmark `U_r=A_r r`, this reads

```text
integral_{B_r(x0)} |u-u_{B_r}|^2 dx
  >= theta |B_1| c^2 A_r^2 r^5.
```

So an infinite gradient requires large raw energy in a shrinking ball only after
an additional lower-oscillation or positive-measure amplitude theorem.  Under
the Navier-Stokes critical benchmark `U_r:=r^{-1}`, the corresponding
oscillation rate is `A_r:=r^{-2}`, and the displayed positive-measure lower
bound is proportional to `r`.

```text
positive-measure critical packet cost >= theta |B_1| c^2 r.
```

The gradient scale can blow up while this raw energy lower bound tends to zero.
This is a benchmark under the stated amplitude-distribution hypothesis, not a
profile assumption about an arbitrary packet.

### Enstrophy / vorticity readout

If the vorticity scale is `Omega_r`, the local enstrophy cost is:

```text
Enstrophy_{r,\mathrm{model}}:= \Omega_r^2 r^3.
```

Again, absolute enstrophy can concentrate in scale-dependent ways. A useful
exclusion needs a scale-critical or time-integrated statement, not only a raw
total-energy statement.

### CKN-type critical packet cost

The classical local regularity currency is scale-critical. A singular point
cannot have arbitrarily small normalized critical packet mass on all small
parabolic cylinders. For a singular point the critical quantity is:

```text
r^{-2} integral_{Q_r} (|u|^3 + |p|^{3/2}) dx dt
```

cannot be below the epsilon-regularity threshold at every small `r`.

Equivalently, if the normalized quantity is bounded below by the CKN threshold
`\epsilon_0`, then the unnormalized cost on `Q_r` obeys the exact lower bound

```text
epsilon_0 r^2
```

on every sufficiently small scale where singularity is still claimed:

```text
integral_{Q_r} (|u|^3 + |p|^{3/2}) dx dt >= epsilon_0 r^2.
```

That absolute cost tends to zero as `r down to 0`. This is why the question
cannot be settled by saying the total field has only finite energy. The
singular packet is expensive in normalized scale-critical units, not
necessarily expensive in raw absolute energy at one tiny scale.

## 5. Can The Debt Be Paid?

For a fixed positive packet scale `r`, the debt is paid only through:

```text
transport flux,
pressure work,
viscous boundary exchange,
lawful source/current terms,
minus interior dissipation,
with donor shells charged by the same identity.
```

For a shrinking packet sequence `r_n down to 0`, the current repo does not prove
a universal positive theorem saying:

```text
lawful incoming payment < singularity cost
```

for every possible Navier-Stokes terminal packet.

The reason is now explicit. The estimated maximum rate contains negative
powers of `r`, and the pressure term is nonlocal. Finite total energy and the
basic local energy inequality do not prevent a scale-critical concentration
cascade by themselves.

So the correct result is:

```text
fixed-scale payment is exactly accounted and finite;
scale-shrinking payment is not ruled out by raw energy alone;
failure of lawful payment is a Part/Field CM branch;
a positive exclusion needs a sharper scale-critical pressure/flux/donor/return
supplier.
```

## 6. What Configuration Results If The Debt Is Paid?

If the debt is paid at a retained positive scale, then the paid object must
come with retained participation data:

```text
same carrier,
pressure coupling,
viscous participation,
time trace,
field readout.
```

The paid branch has only two lawful readings:

```text
1. it remains below a continuation threshold in the required readout,
   giving the pass branch;

2. it retains a positive-scale carrier while some readout becomes unbounded,
   giving a Field face unless Part fails earlier.
```

If the claimed payment has no positive-radius retained carrier, it is not a
paid vortex packet. It is an endpoint residue and lands Field-certification.

If the claimed payment keeps a carrier name while losing pressure/viscosity
coupling, neighbor participation, or time trace, it lands in Part.

This is the quantitative form of:

```text
If paid, what configuration results?
```

## 7. The 6a / 6b Split

### 6a. Peak at the terminal scale

For a positive-radius packet load `A_r(t)`, the return-clock note already proves:

```text
integral R_r >= A_peak - A_end.
```

This note adds the rate side: any attempt to make the return interval vanish
must make the return/payment rate grow through the same local flux,
pressure-work, viscous, or source-current channels. At fixed `r`, those
channels are finite for a smooth solution. Along `r_n down to 0`, the raw
energy estimate permits the rate bound to blow up.

So 6a is proved only in this form:

```text
terminal peak cannot disappear for free;
it must pay a return-rate budget or lose Part/Field services.
```

The stronger positive claim:

```text
the Navier-Stokes equations always impose a scale-uniform return-rate cap that
beats every terminal concentration
```

is not proved here.

### 6b. Peak before the terminal time

If the peak occurs at a fixed positive time gap before `T*` and on a fixed
positive scale, smoothness gives finite packet norms and finite transfer rate.
Then the peak is an ordinary finite event.

If a sequence of preterminal peaks has:

```text
t_n up to T*,
r_n down to 0,
A_{r_n}(t_n) up to infinity,
```

then it is no longer settled by raw energy. It is exactly the scale-critical
problem:

```text
can the pressure/transport/viscous/source ledger pay the required normalized
critical cost on shrinking packets?
```

The current CM route answers:

```text
lawful payment is pass;
unpaid, detached, zero-radius, or retained-unbounded branches land in Pack,
Part, or Field.
```

It does not answer:

```text
no lawful payment sequence exists by a standalone positive estimate.
```

## Result

Thomas's quantitative questions force a real correction to the repo state.

The true theorem-grade result is:

```text
There is an exact maximum lawful packet transfer-rate formula at fixed scale.
That formula proves no private donation and no free vortex payment.
It also proves that raw finite energy alone cannot supply a scale-uniform
maximum transfer rate as the packet radius shrinks.
```

The live obstruction is not:

```text
we forgot to write down the easy maximum rate.
```

The live obstruction is:

```text
the easy maximum rate depends on scale-critical flux, pressure, and viscous
boundary terms that can grow as r down to 0.
```

So the positive-forward theorem remains open in the exact sharpened form:

```text
Find a scale-critical pressure/flux/donor/return bound that beats the required
singularity cost on shrinking packets.
```

The CM contrapositive route remains:

```text
If that lawful payment fails, the object is not a valid in-class smooth
continuation packet; it lands through Part or Field.
```
