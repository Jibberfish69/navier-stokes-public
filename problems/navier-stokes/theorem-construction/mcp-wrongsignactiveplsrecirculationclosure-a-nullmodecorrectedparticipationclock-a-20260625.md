# WrongSignActivePLSRecirculationClosure.A

Status: wrong-sign recirculation branch closed after null-mode removal; one-way
material-record growth remains outside the recirculation theorem.

## Target

Close the remaining branch from
`OrientedTaxAtSourceRecirculationSplit.A`:

```math
\int_0^{T^*}d\Omega_N^{recirc,-}<\infty
```

or absorb the wrong-sign active block into already counted same-material PLS
costs, without hiding it in `legal`.

The point is not to make one local signed storage pay
`|\mathcal A_{\kappa,N}|`.  The signed storage pays one orientation.  The
opposite orientation is a backscatter/return event in the same
participation-law--strain transaction.

## Null-mode reduction

Each oriented block is read after the local null projection

```math
u_\phi^\#=u-\Pi_\phi u.
```

The null part contains Galilean, rigid, tangential, or passive annular motion.
It is not part of active collar feed.  After projection, any nonzero wrong-sign
event has a genuine same-material PLS carrier:

```math
v,\ q,\ A,\ G,\ \mathbb P_A,\ T=-pI+2\nu S,\ S,\ \phi .
```

Thus applying the recirculation analysis to `-\mathcal A_{\kappa,N}` is legal:
the wrong-sign side is the positive side of the reversed oriented block, on the
same transported material packet.

## Case split

Let

```math
d\Omega_N^{recirc,-}
=
\sum_\kappa(\mathcal A_{\kappa,N})_-\,dt
```

with the convention that this measure contains only oscillatory
backscatter/return mass.  The one-way material-record-growth component is
recorded separately as

```math
d\Omega_N^{grow}
\lesssim
d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{press/collar/stress,superheat}.
```

This convention is forced by the existing material-record theorem: if the
record is genuinely increasing, the event is not recirculation.

### 1. Bounded-record wrong-sign cycles

On any interval where

```math
\sup_I\mathcal P_N^{mat}\le K,
```

the bounded-record action-cycle theorem gives a pointwise bound for every
null-corrected active PLS density:

```math
\sum_\kappa | \mathcal A_{\kappa,N}^{\#}(t) |
\le
C_N(K).
```

Therefore

```math
\int_I d\Omega_N^{recirc,-}
\le
C_N(K)|I|.
```

On a finite terminal time interval, bounded-record wrong-sign recirculation is
finite.  Infinitely many unit backscatter cycles cannot accumulate without
leaving the bounded-record branch.

### 2. Subheat accelerated wrong-sign cycles

On active shell \(j\), the reversed oriented block obeys the same moving-pump
dichotomy as the paid orientation:

```math
[( -\mathcal A_{\kappa,N})]_+
\le
C\Theta_j^{mat}e_j+r_j .
```

On the subheat set

```math
\Theta_j^{mat}\le\delta2^{2j},
```

the material Bernstein/viscous residence estimate gives

```math
[( -\mathcal A_{\kappa,N})]_+^{subheat}dt
\le
C\,dD_{j,N}^{vis}+dR_{j,N}^{legal}.
```

So subheat wrong-sign backscatter is absorbed by high-shell viscosity and
typed legal commutators.

### 3. Superheat wrong-sign cycles

On the superheat set

```math
\Theta_j^{mat}>\delta2^{2j},
```

the event is no longer a hidden oscillation.  It is high-rate material
participation of the same annulus.

The coefficient/frame part is not independent:

```math
\Theta_j^{coef}\lesssim \lambda_+(S),
```

so it is absorbed by the signed top-strain log storage.

The selected top-strain part is paid by the same storage:

```math
B_j=e_j\left[\log{\lambda_+\over\delta2^{2j}}\right]_+,
```

whose differentiated full signed identity leaves the positive top-strain
residence as a loss.

Top-frequency regeneration is also not free.  A high shell can re-enter only
through the same PLS interface; that event lands in viscosity, top-strain /
coefficient / collar superheat service, or one-way material-record growth.

Thus the only superheat mass not already absorbed by viscosity or strain-log /
coefficient-frame storage is the pressure/RHS, transported-collar, and annular
stress-work superheat component that genuinely raises the material record.
That component is not recirculation.  It belongs to `d\Omega_N^{grow}` and is
the live available-entropy construction problem.

## Closure statement

After null-mode removal and after separating one-way material-record growth,
wrong-sign active PLS recirculation satisfies

```math
\boxed{
\int_0^{T^*}d\Omega_N^{recirc,-}<\infty .
}
```

More explicitly,

```math
d\Omega_N^{recirc,-}
\le
C\,dD_N^{vis}
+C\,d\Omega_N^{top\ strain\ log}
+C\,d\Omega_N^{coef\to strain}
+dR_N^{legal}
```

on the recirculatory branch, and the bounded-record part contributes only a
finite \(C_N(K)T^*\) amount on every bounded-record interval.

Consequently the oriented tax-at-source inequality becomes

```math
d\mathscr A_N
+c_Nd\Omega_N^{paid,+}
\le
dR_N^{legal}
+C_Nd\Omega_N^{grow}
+dR_N^{recirc,finite},
```

with

```math
\int_0^{T^*}dR_N^{recirc,finite}<\infty.
```

So the wrong-sign recirculation theorem is closed.  The remaining nonlocal
construction is the same one already named by the live edge: build the
available PLS entropy that pays `d\Omega_N^{grow}`, equivalently the one-way
pressure/RHS, transported-collar, and annular stress-work material-record
growth not reducible to bounded-record recirculation.
