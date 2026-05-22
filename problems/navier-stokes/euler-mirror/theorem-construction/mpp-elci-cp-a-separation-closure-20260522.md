# MPP ELCI.CP.A Separation Closure

## Status

Theorem-facing closure note for `ELCI.CP.A-Separation`.

Role: close the split created by the Euler / Navier-Stokes viscosity scenario
map:

1. prove the ledger on a finite transported cover under explicit Euler
   regularity/control assumptions;
2. prove that base `Member_E` does not force the ledger.

This file does not prove global Euler smoothness. It closes the local receiver
question honestly: the ledger is a regularity-side hypothesis/consequence, not
a consequence of bare equation membership.

## Source Surfaces

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-elci-a-direct-transport-pressure-attempt-20260519.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-a-direct-transport-pressure-attempt-20260519.md)
3. [euler-ns-viscosity-scenario-separation-map-20260521.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-viscosity-scenario-separation-map-20260521.md)
4. [mpp-euler-class-membership-flux-volume-definition.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md)

## Ledger

The receiver ledger is

```math
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}(t)
=
1+
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)
+
\Omega^{E,osc}_{N,m,\rho,\psi}(t)
+
\Pi^{E,ctr}_{N,m,\rho,\psi}(t).
\tag{ECP.0}
```

Here:

1. `A_E_ctr` is the finite transported-center point-value ledger;
2. `Omega_E_osc` is the local oscillation ledger on the same finite cover;
3. `Pi_E_ctr` is the centered pressure-return coefficient after affine
   pressure normal-form subtraction.

The May 19 direct attempt already proves:

```math
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}\in L^1(I)
\Longrightarrow
ELCI.A.
\tag{ECP.1}
```

So the work in this note is to decide when `(ECP.0)` is actually `L^1`.

## Theorem 1: Regularity-Conditional Ledger Closure

### Statement

Let `I=[t_0,t_1]` be finite. Assume the same finite transported cover

```math
\mathcal C_{\rho,\psi}^{\delta}(t)
\subset
\bigcup_{j=1}^J B(c_j(t),r_\delta),
\qquad c_j(t)=\Phi(a^j,t),
\tag{ECP.2}
```

and the enlarged balls `B_j^*(t)=B(c_j(t),2R_\delta)`.

Assume there are nonnegative functions

```math
A_*(t),\quad O_*(t),\quad P_*(t)\in L^1(I)
\tag{ECP.3}
```

such that for a.e. `t in I`:

```math
\sum_{j=1}^J\sum_{q=0}^m |U_q(c_j(t),t)|
\le A_*(t),
\tag{ECP.4}
```

```math
\sum_{j=1}^J\sum_{q=0}^m
\|U_q(\cdot,t)-U_q(c_j(t),t)\|_{L^\infty(B_j^*(t))}
\le O_*(t),
\tag{ECP.5}
```

and the centered pressure return satisfies

```math
\Pi^{E,ctr}_{N,m,\rho,\psi}(t)
\le P_*(t).
\tag{ECP.6}
```

Then

```math
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}\in L^1(I).
\tag{ECP.7}
```

Consequently, if the other `ELCI.A` hypotheses from the direct attempt hold,
then the lower-carrier packet closes:

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)<\infty,
\qquad
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{ECP.8}
```

### Proof

By the definitions of the center and oscillation ledgers in the Euler
lower-carrier program,

```math
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)
\le 1+A_*(t),
\qquad
\Omega^{E,osc}_{N,m,\rho,\psi}(t)
\le O_*(t).
\tag{ECP.9}
```

The pressure assumption gives `(ECP.6)`. Hence

```math
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}(t)
\le
2+A_*(t)+O_*(t)+P_*(t).
\tag{ECP.10}
```

The right-hand side belongs to `L^1(I)` by `(ECP.3)` and the finiteness of `I`,
so `(ECP.7)` follows. The direct transport-pressure attempt then applies
Gronwall to the already-proved packet inequality, giving `(ECP.8)`. `square`

### Classical Envelope Corollary

One concrete way to satisfy `(ECP.3)`--`(ECP.6)` is an Euler regularity envelope:
on the same cover, suppose the finite family `U_0,\dots,U_m` has integrable
center and local modulus control, and the pressure has an integrable centered
normal-form return:

```math
\sum_{q=0}^m
\Big(
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{2R_\delta}(t))}
+
[U_q(\cdot,t)]_{C^\beta(\mathcal C_{\rho,\psi}^{2R_\delta}(t))}
\Big)
+
\Pi^{E,ctr}_{N,m,\rho,\psi}(t)
\le M(t)
\tag{ECP.11}
```

for some `\beta in (0,1]` and `M in L^1(I)`. Then `(ECP.3)`--`(ECP.6)` hold
with constants depending only on the fixed cover geometry.

Thus every classical Euler branch with a finite transported cover and integrable
local coefficient/pressure envelope closes the `ELCI.CP.A` ledger. That is the
positive side of the split.

## Theorem 2: Base `Member_E` Does Not Force The Ledger

### Statement

There are base Euler members satisfying flux-volume balance and
momentum-pressure fidelity for which the `ELCI.CP.A` ledger is not finite, hence
not `L^1`, on any collar crossing the singular sheet.

### Witness

Work locally in three dimensions and fix `0<alpha<1/2`. Let

```math
u(x,y,z,t)=(|y|^{-\alpha},0,0)
\quad\text{for }0<|y|<1,
\qquad
p(x,y,z,t)=0,
\tag{ECP.12}
```

with any smooth cutoff depending only on `y,z` away from `|y|<1` if a bounded
spatial window is desired. The value on `y=0` is irrelevant to the
distributional equation.

Because `2alpha<1`,

```math
u\in L^2_{loc},
\qquad
u\otimes u\in L^1_{loc}.
\tag{ECP.13}
```

Moreover

```math
\nabla\cdot u=\partial_x |y|^{-\alpha}=0,
\tag{ECP.14}
```

and

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p
=
0+\partial_x(|y|^{-2\alpha},0,0)+0
=0
\tag{ECP.15}
```

distributionally. Thus `(u,p)` is a base Euler member in the sense
`Member_E=EVol wedge EMom`.

### Ledger Failure

Let the collar contain points on both sides of `y=0` and cross the sheet
`{y=0}`. Even before asking for a transported flow map, any attempted finite
positive-radius cover of that collar has at least one ball `B_j^*(t)`
intersecting `y=0`. On that ball,

```math
\|u(\cdot,t)-u(c_j(t),t)\|_{L^\infty(B_j^*(t))}
=\infty
\tag{ECP.16}
```

whenever the center value is finite. If the center lies on `y=0`, the center
value itself is not finite. Since the ledger includes the `q=0` oscillation and
center readout, either

```math
\Omega^{E,osc}_{N,m,\rho,\psi}(t)=\infty
\quad\text{or}\quad
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)=\infty.
\tag{ECP.17}
```

The pressure coefficient is harmless here: `p=0`, so the centered pressure
return can be taken as zero. The failure is exactly the missing regularity of the
transported-center and oscillation side.

Therefore

```math
Member_E
\not\Longrightarrow
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}\in L^1(I).
\tag{ECP.18}
```

This proves the negative side of `ELCI.CP.A-Separation`.

## Closure Readback

`ELCI.CP.A-Separation` is now closed in the following precise sense:

1. under explicit same-cover Euler regularity/control assumptions,
   `A_E_ctr + Omega_E_osc + Pi_E_ctr` is `L^1`, and `ELCI.A` closes by the May 19
   packet inequality;
2. from base `Member_E` alone, the ledger is false: stationary unbounded shear is
   an Euler member while the oscillation/center ledger fails on collars crossing
   its singular sheet.

So the branch cannot use base Euler membership as a smoothness engine. Any
future Euler regularity surface must either cite a condition of the form
`(ECP.3)`--`(ECP.6)` or prove a stronger Euler-native theorem that implies it.
