---
ns_viewer:
  theorem_id: forward-positive-cone-tower-active-square-exhaustion-20260611
  status: forward-positive-cone-tower-drain-program-exhausted-to-lpas-cts
  proof_role: forward_positive_cone_payment_derivative_tower_exhaustion
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Develops Thomas's shrinking-cone, derivative-tower, donor-drain, fast-collapse, and Gabriel-wall/volume ideas into one forward-positive accounting theorem. The cone and tower correctly show that base energy can hide while retained shape creates a higher-rung bill. They do not prove that global first-moment drain beats local active-square accumulation. A heat-scale pulse sequence has finite first-moment drain and divergent lower-prefix active-square cost, so the non-alias forward-positive target is residual/source-balanced LPAS/CTS/FCTS rather than raw active-square control."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-whole-cone-wall-volume-shrink-rate-forward-positive-work-order-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-derivative-tower-cone-closure-race-attempt-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-direct-lpas-cts-hardy-volterra-test-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-active-shell-square-payment-source-no-pulse-collapse-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-spill-collar-to-far-corona-forward-positive-collapse-20260611.md
  downstream_consequence: "The forward-positive cone/drain/tower route should no longer branch into raw global-drain, cone-surface, static-volume, amplitude-normalization, source-time, signed-decorrelation, or derivative-tower labels unless the branch proves the residual refill ledger in mpp-residual-refill-ledger-and-spine-consolidation-20260611.md: the residual/source-balanced lower-prefix active-square theorem, the corrected cumulative-tail stress theorem, the far-corona stress theorem, or an equivalent residual active-square Carleson estimate."
---

# MPP Forward-Positive Cone/Tower Active-Square Exhaustion

Date: 2026-06-11

Status: forward-positive mathematical exhaustion of the shrinking-cone,
derivative-tower, wall/volume, donor-drain, and fast-collapse work order.

This note does not use an endpoint fallback.  It answers the forward-positive
question: do Thomas's cone, tower, drain, and payment ideas already prove the
needed scale-critical control?

## 0. Preserved Problem

The live object is a shrinking receiver inside the same unforced
incompressible Navier-Stokes fluid.

The receiver is not private.  It can gain load only through its moving
boundary, pressure/transport/viscous exchange, and same-fluid source ancestry.
The donor field is also dissipating while it donates.  The cone is a whole
moving spacetime object, not a list of unrelated fixed balls.

The question is whether that whole object proves:

```math
\text{field drain and participation payment}
>
\text{local critical accumulation into the shrinking receiver}.
```

The answer from the checked forward-positive route is:

```math
\text{not from first-moment energy, cone geometry, or the bare derivative
tower alone.}
```

The exact missing theorem is the residual source-balanced active-square /
cumulative-tail control defined in
`mpp-residual-refill-ledger-and-spine-consolidation-20260611.md`.  Raw
active-square control is too
strong because harmless heat-decaying high modes can have a large `D_j^2`
bill without being a nonlinear source-refill obstruction.

## 1. Whole-Cone Wall Accounting Is Correct But Discounted

For a moving ball

```math
\Omega_{\rho}(t)=B_{\rho(t)}(x_0),
\qquad
e={1\over2}|u|^2,
```

the local energy identity and Reynolds transport give:

```math
{d\over dt}\int_{\Omega_{\rho}(t)} e\,dx
+
\nu\int_{\Omega_{\rho}(t)}|\nabla u|^2\,dx
=
\int_{\partial\Omega_{\rho}(t)}
\left[
e\rho'(t)
-(e+p)u\cdot n
+\nu\partial_n e
\right]dS.
```

For a shrinking receiver, `rho'(t)<0`, the moving-wall term is a loss from
the receiver:

```math
\int_{\partial\Omega_{\rho}(t)} e\rho'(t)\,dS\le0.
```

Thus inward payment comes only from the positive transport, pressure, and
viscous wall exchange after the receiver has paid moving-wall loss and
interior dissipation.

At the critical scale

```math
U_c(t):={\nu\over \rho(t)},
```

use the full-ball benchmark power

```math
\text{critical wall power}
:=
\omega_3{\nu^3\over \rho(t)}.
```

Here `omega_3=|B_1(0)|`. If the active profile occupies only a fraction
`theta` of the ball and carries only a fraction `c` of the benchmark amplitude,
the benchmark constant becomes `theta omega_3 c^2`. That volume/profile lower
bound is an extra hypothesis; cone geometry alone does not supply it.

For a power cone

```math
\rho(t)=\lambda (T-t)^\beta,
\qquad \beta>0,
```

the critical physical wall payment behaves like

```math
\int^{T}\omega_3{\nu^3\over \rho(t)}\,dt
=
{\omega_3\nu^3\over\lambda}
\int_0^{\tau_0}\tau^{-\beta}\,d\tau.
```

This is finite for `0<beta<1`.  The parabolic cone has `beta=1/2`, so finite
physical wall payment is compatible with a persistent scale-critical cone
profile.

That is the Gabriel-wall lesson in the Navier-Stokes currency:

```math
\text{finite physical wall ledger}
\not\Rightarrow
\text{finite undiscounted scale-critical cone budget}.
```

The whole cone is the right object, but its physical accounting is discounted.

## 2. The Derivative Tower Finds The Shape Bill

Represent the cone through the derivative tower by

```math
E_q(r,t)
:=
\int_{B_{r(t)}(x_0)}
|\nabla^q u(x,t)|^2\,dx.
```

Define the normalized tower load exactly by

```math
G_q(r,t)
:=
{r^{2q-1}\over\nu^2}
\int_{B_r(x_0)}|\nabla^q u(x,t)|^2\,dx.
```

Then the identity is

```math
E_q(r,t)=\nu^2 r^{1-2q}G_q(r,t).
```

A retained critical tower profile means that `G_q(r,t)` stays bounded below
and above by positive constants along the selected shrinking branch. Under
that stated hypothesis, the base rung can hide:

```math
E_0(r,t)=\nu^2 rG_0(r,t)\to0.
```

The shape rungs cannot hide in the same way:

```math
E_q(r,t)\to\infty
\qquad(q\ge1).
```

Without a lower bound for `G_q`, this conclusion is not licensed.

So Thomas's derivative-tower correction is mathematically right.  The base
energy picture misses the retained shape.  A genuine localized critical packet
must pay at the derivative level.

Use heat time

```math
d\sigma={\nu\,dt\over r(t)^2}
```

and normalized tower load

```math
S_q(r,t)
:=
{r^{2q-1}\over\nu^2}
\int_{B_r}|\nabla^q u|^2\,dx.
```

A retained critical profile has `S_q(r,t)` bounded below and above by positive
constants. The desired tower conclusion is a finite heat-time bill:

```math
\int S_q(r(t),t)\,d\sigma(t)<\infty
```

or late-slab decay `S_q(r(t),t)->0`.

The tower supplies the right currency.  It does not supply the missing upper
budget by itself.

## 2a. The Tower Does Not Change The Equation

The derivative tower is not a new dynamics.  It is the original
Navier-Stokes equation differentiated at every rung.

Let

```math
U_q:=\nabla^q u.
```

Then

```math
\partial_t U_q
-\nu\Delta U_q
=
-\nabla^q((u\cdot\nabla)u)
-\nabla^{q+1}p.
```

On the moving receiver `Omega(t)=B_{r(t)}(x_0)`, Reynolds transport gives the
exact smooth identity

```math
{1\over2}{d\over dt}\int_{B_{r(t)}}|U_q|^2\,dx
+
\nu\int_{B_{r(t)}}|\nabla U_q|^2\,dx
=
\int_{\partial B_{r(t)}}\left({1\over2}|U_q|^2r'(t)
 +\nu U_q\cdot\partial_n U_q\right)dS
+\int_{B_{r(t)}}U_q\cdot
\left[-\nabla^q((u\cdot\nabla)u)-\nabla^{q+1}p\right]dx.
```

The tower claim must be read through this identity. It does not acquire a new
PDE, and it cannot be justified by a ratio phrase alone. What the tower adds is
depth debt: controlling an endpoint rung `N` forces access to the two
additional viscous slots and the pressure slot:

```math
\nu\Delta U_N\quad\text{uses}\quad U_{N+2},
\qquad
\nabla^{N+1}p\quad\text{is also required}.
```

So representing the cone as the derivative tower sharpens the problem:

```math
\text{critical base energy can be finite,}
\qquad
\text{critical retained shape demands higher-rung control.}
```

It does not by itself produce the missing finite high-rung budget.

## 3. The Global Drain Law Is A First-Moment Bill

The energy law supplies

```math
\nu\int_0^T\int_{\mathbb R^3}|\nabla u|^2\,dxdt
\le E_0.
```

In dyadic shell notation, write

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_2^2.
```

The drain ledger controls a first moment:

```math
\int_0^T D_j(t)\,dt.
```

The far-corona active-square theorem asks for the square moment

```math
\int_0^T
P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt,
```

where

```math
P_j^\downarrow(t)=\sum_{k\le j-C_1}E_k(t)
```

is the lower-prefix field seen by the active shell.

These are different bills.

## 4. Fast Collapse Is The Dangerous Case

Let an active shell live on a window `I_j`.  Define its first-moment payment by

```math
M_j:=\int_{I_j}D_j(t)\,dt.
```

Cauchy-Schwarz gives the exact lower bound:

```math
\int_{I_j}D_j(t)^2\,dt
\ge
{M_j^2\over |I_j|}.
```

The active-square bill satisfies

```math
\int_{I_j}P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
\ge
\left(\inf_{I_j}P_j^\downarrow\right)
2^{-j}{M_j^2\over |I_j|}.
```

On a heat-scale window, state the convention with constants:

```math
c_h2^{-2j}\le |I_j|\le C_h2^{-2j}.
```

Using the upper bound on `|I_j|`, the exact consequence is

```math
\int_{I_j}P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
\ge
C_h^{-1}
\left(\inf_{I_j}P_j^\downarrow\right)
2^jM_j^2.
```

This is the exact mathematical version of the fast-collapse pressure:

```math
\text{the drain ledger sees } M_j,
\qquad
\text{the active-square ledger sees at least }
C_h^{-1}(\inf_{I_j}P_j^\downarrow)2^jM_j^2.
```

Shorter active residence makes the square bill larger for the same delivered
amount.  Longer feeding spreads the square bill, but gives the field more time
to dissipate.  The tradeoff is real and cannot be settled by the first-moment
energy identity.

## 5. First-Moment Drain Does Not Dominate Active-Square Accumulation

The failure can be made explicit.

Choose disjoint terminal heat-scale windows `I_j` and set

```math
M_j=2^{-j/2}.
```

Then the first-moment drain is finite:

```math
\sum_{j\ge N}M_j
=
\sum_{j\ge N}2^{-j/2}
<\infty.
```

But if the lower-prefix weight stays bounded below on the active windows,

```math
\inf_{I_j}P_j^\downarrow\ge P_0>0,
```

the heat-scale active-square bill satisfies

```math
\sum_{j\ge N}
P_0\,2^jM_j^2
=
\sum_{j\ge N}
P_0\,2^j2^{-j}
=
\infty.
```

Thus a finite first-moment drain ledger can coexist with an infinite
lower-prefix active-square ledger.

This is not a Navier-Stokes counterexample.  It is the exact countermodel to
the proposed implication:

```math
\text{finite global drain}
\Longrightarrow
\text{active-square cone payment control}.
```

That implication is false as an accounting theorem.

## 6. What The Forward-Positive Route Has Actually Reduced To

The spill, signed, source-time, amplitude, and tower branches all return to the
same non-alias target once harmless heat-decay and through-flow pieces are
removed.

The raw dyadic form is:

```math
\boxed{
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt
+C_*2^{-2\delta N}.
}
\tag{LPAS}
```

The raw version cannot be the final theorem.  It must be read as the template
for a residual theorem in which `2^{-j}D_j(t)^2` is replaced by the
source-balanced positive refill density left after subtracting linear heat
decay and harmless transport.

The continuum forms are:

```math
\boxed{\text{ResidualDirectCTSOrFCTS.A}}
```

or the equivalent residual far-corona active-square / Carleson theorem for the
coupled two-scale density.

Any successful theorem named amplitude normalization, source-time cost, signed
decorrelation, donor depletion, terminal time thickness, or derivative-tower
throttle must prove this residual source-balanced active-square control or a
theorem that directly implies it.

## 7. Result

Thomas's cone/tower/drain picture has real mathematical content:

```text
base energy can hide;
retained shape moves into the derivative tower;
the moving cone supplies the correct wall and volume ledgers;
fast collapse is dangerous because square payment grows as active time shrinks;
global drain is only a first-moment bill.
```

The forward-positive program is exhausted to one exact theorem:

```math
\boxed{
\text{ResidualSourceBalancedLPAS.A / ResidualDirectCTSOrFCTS.A}
}
```

The current inputs do not prove that theorem.  The remaining work is not
another cone-geometry, raw-drain, or bare-tower calculation.  It is a genuine
residual active-square control theorem for the far-corona coupled transfer
density.

## 8. Ratified Gold / Obstruction / Silver Flow

For this specific cone/tower case, the exact problem-solving flow is:

```text
gold standard:
  prove ResidualSourceBalancedLPAS.A / ResidualDirectCTSOrFCTS.A, or a stronger
  residual source-depletion theorem that gives the finite undiscounted cone
  budget and hence the late-slab CKN pass;

impassable obstruction from current exact ledgers:
  first-moment drain, cone wall/volume accounting, and the bare derivative
  tower do not imply that residual active-square theorem. The exact
  heat-scale Cauchy-Schwarz lower bound shows why fast collapse can defeat a
  first-moment bill, and the exact shear counterexample removes raw LPAS as a
  valid universal target;

silver CM-exit test:
  only a surviving residual source-balanced terminal pulse, after harmless heat
  decay, through-flow, legal losses, and paid dissipation are removed, may be
  sent to the Pack-first CM witness grammar.
```

So this note closes the cone/tower/drain case through the requested sequence:
gold target first, exact obstruction second, CM-exit test only for the surviving
residual object.
