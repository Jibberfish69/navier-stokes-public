---
theorem_id: forward-gold-pressure-strain-annular-action-producer-test-20260625
status: pressure-strain-is-native-carrier-not-self-coercive-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the pressure-strain annular return directly on the original smooth
  material history. The Cauchy stress identity proves that the center storage
  pulse is attached to the same-fluid outer annulus, and the affine-strain
  normal form proves that pressure-balanced strain is a real full-participation
  transaction. But the signed storage identity controls only net stress-work,
  while the terminal clock needs positive rectified stress-work/material action.
  Pressure-strain is therefore the native carrier of the pay-it-back-later
  mechanism, not an independent producer of the finite full clock. The remaining
  theorem is exactly finite positive pressure-viscosity-incompressibility-
  velocity annular action on the original material history.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-total-variation-clock-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-reduced-annular-flux-derivative-sign-structure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mcp-global-full-clock-stress-time-spatial-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-density-termwise-control-audit-20260625.md
---

# Pressure-Strain Annular Action Producer Test

Date: 2026-06-25

## 0. Result

The physical object is one original smooth material spike-wave history.  The
annuli are same-fluid transported layers under the spike, and the later return
is stress/strain carried by those layers.

The pressure-strain annular action is the correct carrier of that return.  It is
not a separate supplier that automatically makes the clock finite.

The exact line is:

```math
\text{center storage pulse}
\le
\text{same-material annular stress/strain action}.
\tag{PSA.1}
```

That attachment is proved by the transported local energy identity.

The unproved line is:

```math
\int_0^{T_*}
\text{positive same-material annular stress/strain action}
<\infty .
\tag{PSA.2}
```

That is the global full material clock.

## 1. Exact stress identity

Let \(\phi(t,x)\) be a transported material annular cutoff:

```math
(\partial_t+u\cdot\nabla)\phi=0.
\tag{PSA.3}
```

Let

```math
S={1\over2}(\nabla u+\nabla u^\top),
\qquad
T=-pI+2\nu S,
\qquad
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx .
\tag{PSA.4}
```

Then the smooth same-material identity is:

```math
{d\over dt}M_\phi(t)
+
2\nu\int \phi |S|^2\,dx
=
-\int u\cdot T\nabla\phi\,dx .
\tag{PSA.5}
```

Define

```math
D_\phi(t)=2\nu\int \phi |S|^2\,dx,
\qquad
F_\phi(t)=\int u\cdot T\nabla\phi\,dx .
\tag{PSA.6}
```

Then

```math
{d\over dt}M_\phi(t)+D_\phi(t)=-F_\phi(t).
\tag{PSA.7}
```

This identity is the pay-it-back-later mechanism in exact form.  If center
storage drops, the same transported annulus records the pressure-strain
transaction:

```math
\left[-{d\over dt}M_\phi(t)\right]_+
\le
D_\phi(t)+|F_\phi(t)|.
\tag{PSA.8}
```

So the center event is not detached from the annular history.

## 2. Why pressure balance is not the same as finite positive action

The signed identity gives:

```math
\int_a^b F_\phi(t)\,dt
=
M_\phi(a)-M_\phi(b)
-
\int_a^bD_\phi(t)\,dt .
\tag{PSA.9}
```

This is net stress-work.  The terminal clock needs rectified action:

```math
\int_a^b\left(D_\phi(t)+|F_\phi(t)|\right)\,dt .
\tag{PSA.10}
```

Net pressure-strain exchange can cancel while positive pressure-strain action
is large.  The physical annulus can push, pull, and return energy through the
same material layer with small endpoint storage change.  Smoothness of the
history and attachment to the annulus do not by themselves control the total
rectified amount.

Thus pressure balance prevents the fake "free center-only pulse" picture, but
it does not yet prove finite total positive annular action.

## 3. Affine-strain normal form confirms the point

For a constant symmetric traceless matrix \(A\), set:

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x .
\tag{PSA.11}
```

Then

```math
\nabla\cdot u=0,
\qquad
\Delta u=0,
\qquad
(u\cdot\nabla)u+\nabla p=0.
\tag{PSA.12}
```

So this is an exact local incompressible Navier-Stokes normal form at fixed
viscosity.

The material deformation is

```math
X(a,t)=e^{tA}a,
\tag{PSA.13}
```

and a stretching direction has

```math
{d\over dt}\log |D_aX(t)\xi|>0 .
\tag{PSA.14}
```

This is a real positive material strain clock.  It is pressure-balanced in the
bulk and has no interior viscous Laplacian, but it is not participation-free.
On a finite material annular packet, its payment is exactly the boundary
stress-work in `(PSA.5)`.

For this normal form,

```math
T=-pI+2\nu A
=
{1\over2}(x\cdot A^2x)I+2\nu A,
\tag{PSA.15}
```

so the annular flux is

```math
F_\phi(t)
=
\int
Ax\cdot
\left(
{1\over2}(x\cdot A^2x)I+2\nu A
\right)\nabla\phi\,dx .
\tag{PSA.16}
```

There is no universal sign in `(PSA.16)`.  Its sign depends on the material
collar and on the orientation of the strain.  This rules out a proof that says
"pressure-strain exists, so it is automatically a monotone drain."  It is a
full-participation transaction, not a one-signed scalar.

## 4. Gauge-reduced derivative confirms the remaining object

After removing the Galilean velocity and affine pressure gauge, write

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0.
\tag{PSA.17}
```

For the transported annular flux

```math
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx,
\tag{PSA.18}
```

the exact derivative has the form:

```math
{d\over dt}F_\phi^\sharp
=
I_1+I_2+I_3,
\tag{PSA.19}
```

where:

```math
I_1=\int(\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi,
\tag{PSA.20}
```

```math
I_2=\int U_i(D_tT^\sharp_{ij})\partial_j\phi,
\tag{PSA.21}
```

and

```math
I_3=
-\int
U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi).
\tag{PSA.22}
```

The first term is not a hidden nonnegative stress square after integration by
parts; it leaves collar Hessian and stress-curl contractions.  The second term
is not a free time oscillation; it reduces to the same spatial pressure-stress-
velocity tower, including pressure-time elliptic service and cubic gradient
terms.  The third term is the same collar transport action.

Therefore:

```math
\left|{d\over dt}F_\phi^\sharp\right|
\le
\mathcal S_\phi^\sharp,
\tag{PSA.23}
```

where \(\mathcal S_\phi^\sharp\) is the full same-material annular
pressure-stress-velocity density.

This proves admission into the correct physical packet.  It does not prove:

```math
\int_0^{T_*}\mathcal S_\phi^\sharp(t)\,dt<\infty .
\tag{PSA.24}
```

That estimate is the global full clock in annular-density form.

## 5. Exact proof-state consequence

The direct pressure-strain attack proves:

```math
\text{terminal center pulse}
\Rightarrow
\text{same-fluid annular pressure-strain action}.
\tag{PSA.25}
```

It also proves:

```math
\text{pressure-strain action}
=
\text{full pressure-viscosity-incompressibility-velocity material transaction}.
\tag{PSA.26}
```

It does not prove:

```math
\text{that positive transaction has finite total variation before }T_*.
\tag{PSA.27}
```

So the exact remaining theorem is:

```math
\int_0^{T_*}
d\Omega_N^{full}(t)
<\infty ,
\tag{PSA.28}
```

with \(d\Omega_N^{full}\) defined on the original transported material
spike-wave history and containing the positive pressure-strain annular action,
material metric clock, pressure-time service, viscous/tower service, and collar
transport action of the same pressure-viscosity-incompressibility-velocity
packet.

This is not a new obstruction.  It is the MPP clock written in the physical
variables supplied by the pay-it-back-later picture.

## 6. What would close the gold route

The gold route closes from any noncircular proof of the finite full clock:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty .
\tag{PSA.29}
```

The installed continuation bridge then gives:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
\text{classical relaunch past }T_*.
\tag{PSA.30}
```

The direct pressure-strain calculation does not supply `(PSA.29)` by itself.
It fixes the target exactly: prove finite positive same-material annular action,
not attachment, not signed net exchange, not vorticity-only exchange, and not a
detached frequency refill model.
