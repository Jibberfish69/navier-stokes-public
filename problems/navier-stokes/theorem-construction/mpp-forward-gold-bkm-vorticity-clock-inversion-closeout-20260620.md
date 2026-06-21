# MPP Forward-Gold BKM / Vorticity Clock Inversion Closeout

Date: 2026-06-20

## Status

Direct BKM/vorticity-clock inversion test complete.

The Beale--Kato--Majda type continuation criteria have the right clock for the
terminal heat-scale pulse: one critical heat-scale packet contributes order one
to the vorticity/strain time integral.  That makes BKM a valid continuation
consumer and CM-facing readout.  It does not make BKM a forward-gold supplier
from the installed energy/local-energy inputs.

The exact obstruction is the same radius discount:

```math
\text{physical energy/dissipation sees }a_j^2r_j,
\qquad
\text{BKM sees }a_j.
\tag{BVC.1}
```

Finite physical energy can coexist with an infinite terminal BKM clock.

## 1. Heat-scale packet calculation

Let \(V\in C_c^\infty((-1,0)\times B_1;\mathbb R^3)\) be divergence-free and
set

```math
u_j(t,x)
=
a_j r_j^{-1}
V\!\left({t-t_j\over r_j^2},{x-x_j\over r_j}\right),
\qquad
Q_j=(t_j-r_j^2,t_j]\times B_{r_j}(x_j).
\tag{BVC.2}
```

Then

```math
\omega_j=\nabla\times u_j
=
a_jr_j^{-2}
\left(\nabla_y\times V\right)
\!\left({t-t_j\over r_j^2},{x-x_j\over r_j}\right),
\tag{BVC.3}
```

so, for a profile with nonzero vorticity,

```math
\int_{t_j-r_j^2}^{t_j}
\|\omega_j(t)\|_{L^\infty(B_{r_j})}\,dt
\simeq
a_j.
\tag{BVC.4}
```

The same scaling holds for \(\|\nabla u_j(t)\|_{L^\infty}\) and for the
endpoint strain-clock version.

The physical energy and gradient-dissipation costs are instead

```math
\|u_j(t)\|_{L^2(B_{r_j})}^2\simeq a_j^2r_j,
\qquad
\int_{Q_j}|\nabla u_j|^2\,dxdt\simeq a_j^2r_j.
\tag{BVC.5}
```

Thus the BKM clock is unweighted in the heat-scale normalization, while the
energy ledger is radius-weighted.

## 2. Finite energy does not give finite BKM clock

Take a dyadic terminal stack \(r_j=2^{-j}\) and \(a_j=1\).  Then

```math
\sum_j a_j^2r_j
=
\sum_j2^{-j}
<\infty,
\tag{BVC.6}
```

but

```math
\sum_j
\int_{t_j-r_j^2}^{t_j}
\|\omega_j(t)\|_{L^\infty(B_{r_j})}\,dt
\simeq
\sum_j1
=\infty.
\tag{BVC.7}
```

This is exactly compatible with BKM: a genuine finite-time breakdown must lose
the BKM continuation clock.  The problem is that the energy/local-energy
ledger does not prove the clock is finite.

The same failure is stronger with growing amplitude.  For example
\(a_j=r_j^{-1/4}\) gives

```math
\sum_j a_j^2r_j
=
\sum_jr_j^{1/2}
<\infty,
\qquad
\sum_j a_j
=\infty.
\tag{BVC.8}
```

Critical \(L^3\), CKN, \(L^5\), and selected \(L^{5/2}\) strain currencies
also grow in this branch.  BKM reads the failure; it does not pay it.

## 3. What BKM actually gives

The valid consumer statement is:

```math
\boxed{
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty
\Longrightarrow
\text{same smooth solution continues past }T_*.
}
\tag{BVC.9}
```

or in the endpoint Besov-vorticity form already recorded in the HFG surfaces,

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty
\Longrightarrow
\text{continuation}.
\tag{BVC.10}
```

The heat-scale pulse branch needs the reverse production statement:

```math
\text{finite energy/local energy}
\Longrightarrow
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty
\quad\text{or}\quad
\int_{t_0}^{T_*}\|\omega(t)\|_{B^0_{\infty,1}}\,dt<\infty.
\tag{BVC.11}
```

The calculation above shows why `(BVC.11)` is not available from current
inputs.  It would remove the same heat-scale radius discount that appears in
`UnweightedTerminalCriticalActionReserve.A`.

## 4. Relation to active height and CM readout

The first-created source-square branch already proves that an unpaid reserve
with vanishing first moment forces unbounded active height.  BKM is the
classical continuation language for that same fact: if the retained high-field
clock were finite, continuation would follow.

Thus BKM has the same role as the active-height firewall:

```math
\boxed{
\text{unbounded vorticity/strain clock}
\Longrightarrow
\text{continuation-clock failure / CM Field readout after Part plus Field-window evidence}.
}
\tag{BVC.12}
```

It is not the forward-gold source-square theorem:

```math
\boxed{
\text{finite physical energy}
\not\Longrightarrow
\text{finite terminal BKM clock}.
}
\tag{BVC.13}
```

The R3 BKM/strain CM note remains the right readout surface after same-ledger
Part/Field admission and the exact Field-to-BKM bridge.  This closeout records
the forward-gold role: BKM is not an independent anti-atom supplier.

## Verdict

The BKM/vorticity clock is exhausted as a forward-gold shortcut.

It can be used only in one of two ways:

```math
\boxed{
\text{prove finite BKM/Besov-vorticity clock}
\Longrightarrow
\text{known continuation contradiction},
}
\tag{BVC.14}
```

or

```math
\boxed{
\text{BKM clock diverges on retained Part plus Field-window evidence branch}
\Longrightarrow
\text{CM Field-facing critical-height readout}.
}
\tag{BVC.15}
```

It does not produce the missing unweighted terminal critical-action reserve.
That reserve remains the same-carrier source-square / normalized CKN /
selected critical-strain / strict no-waste object already isolated in the June
20 reduced frontier.
