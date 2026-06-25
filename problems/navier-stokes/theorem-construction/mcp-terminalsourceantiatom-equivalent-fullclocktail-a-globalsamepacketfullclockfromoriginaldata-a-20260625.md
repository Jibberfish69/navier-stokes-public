# TerminalSourceAntiAtomEquivalentFullClockTail.A

Status: exact consumer equivalence installed.  The rigid strain-aligned
terminal source anti-atom is not a separate producer after the annular
attachment identity.  It is exactly the terminal-tail absolute-continuity
consumer of the full same-material PLS clock.

## 0. Governing object

The object is one original smooth Navier-Stokes history with one transported
material center cutoff and one transported annular collar.  In physical
variables,

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\tag{TAF.1}
```

and the Cauchy stress is

```math
T=-pI+2\nu S,
\qquad
S={\nabla u+\nabla u^T\over2}.
\tag{TAF.2}
```

Let \(\phi_C\) be a transported material center cutoff:

```math
(\partial_t+u\cdot\nabla)\phi_C=0,
\qquad
\operatorname{supp}\nabla\phi_C\subset A(t),
\tag{TAF.3}
```

where \(A(t)\) is the same transported annular material layer.

Define the center storage

```math
M_C(t)=\int {1\over2}|u(x,t)|^2\phi_C(x,t)\,dx.
\tag{TAF.4}
```

Then the exact transported local energy identity gives

```math
{d\over dt}M_C(t)
+2\nu\int\phi_C|S|^2\,dx
=
-\int u\cdot T\nabla\phi_C\,dx.
\tag{TAF.5}
```

Thus the positive center endpoint defect is dominated before taking any
terminal limit by the same-fluid annular stress transaction:

```math
d\mu_C(t)
\le
\rho_A(t)\,dt,
\qquad
\rho_A(t):=
\left|\int u\cdot T\nabla\phi_C\,dx\right|.
\tag{TAF.6}
```

This is the pay-it-back-later attachment in exact form.

## 1. Full-clock domination is the anti-atom theorem

Let \(d\Omega_N^{PLS,full}\) be the full same-material participation-law-strain
clock on the transported annulus.  It contains the annular stress work,
pressure-time service, cubic collar service, transported collar motion,
material coefficient motion, Hodge/Stokes projection motion, and viscous/tower
loss as one coupled packet.

The exact consumer hypothesis needed for the terminal source anti-atom is:

```math
\rho_A(t)\,dt
\le
C_N\,d\Omega_N^{PLS,full}(t)+dR_N^{legal}(t),
\qquad
\int_0^{T^*}dR_N^{legal}<\infty.
\tag{TAF.7}
```

If

```math
\int_0^{T^*}d\Omega_N^{PLS,full}<\infty,
\tag{TAF.8}
```

then both measures on the right side of `(TAF.7)` are finite Radon measures
whose absolutely continuous terminal tails vanish along the original time
axis.  Hence for terminal strips,

```math
\lim_{\theta\downarrow0}
\left(
\int_{T^*-\theta}^{T^*}d\Omega_N^{PLS,full}
+
\int_{T^*-\theta}^{T^*}dR_N^{legal}
\right)
=0.
\tag{TAF.9}
```

Combining `(TAF.6)`--`(TAF.9)` gives

```math
\lim_{\theta\downarrow0}
\mu_C((T^*-\theta,T^*])
=0.
\tag{TAF.10}
```

Therefore

```math
\mu_C(\{T^*\})=0.
\tag{TAF.11}
```

This is the terminal source anti-atom conclusion.

## 2. Contrapositive

Conversely, suppose a rigid strain-aligned terminal source atom survives:

```math
\mu_C(\{T^*\})>0.
\tag{TAF.12}
```

Then `(TAF.6)` and `(TAF.7)` force

```math
\limsup_{\theta\downarrow0}
\left(
\int_{T^*-\theta}^{T^*}d\Omega_N^{PLS,full}
+
\int_{T^*-\theta}^{T^*}dR_N^{legal}
\right)
>0.
\tag{TAF.13}
```

Legal residuals are summable and terminal-tail absolutely continuous by the
residual normal form, so the remaining failure is exactly

```math
\limsup_{\theta\downarrow0}
\int_{T^*-\theta}^{T^*}d\Omega_N^{PLS,full}
>0.
\tag{TAF.14}
```

Thus the terminal source atom is not an independent obstruction after
same-material annular attachment.  It is the visible terminal-tail failure of
the full PLS clock.

## 3. Heat-scale reading

On heat-scale samples, the same statement says:

```math
\mu_{C,m}((-1,0])
\le
C_N\int_{-1}^{0}d\Omega_{N,m}^{PLS,full}
+R_{N,m}^{legal}((-1,0]).
\tag{TAF.15}
```

A normalized rigid terminal layer such as

```math
g_m(s)=m\,\mathbf 1_{(-1/m,0]}(s)
\tag{TAF.16}
```

is compatible with the currently installed \(L^1_s\) source information.  It
is not compatible with a uniformly absolutely continuous terminal tail for
\(d\Omega_N^{PLS,full}\).  The missing Gold producer is therefore not a new
scalar source theorem; it is the finite full same-material PLS clock.

## Verdict

The strict Gold anti-atom theorem is equivalent, after center-to-annulus
attachment, to terminal absolute continuity of the full same-material PLS
clock tail:

```math
\int_0^{T^*}d\Omega_N^{PLS,full}<\infty
\Longrightarrow
\text{TerminalSourceAntiAtom}_{B_{ASAC}\text{-strain}}.A.
\tag{TAF.17}
```

The current repo has proved the attachment and the consumer implication.  It
has not proved the producer `(TAF.8)`.  Therefore strict Gold closure is exactly
the bounded-below full-clock coercivity / available-participation entropy
theorem for the nonlinear same-material pressure-stress transfer clock.
