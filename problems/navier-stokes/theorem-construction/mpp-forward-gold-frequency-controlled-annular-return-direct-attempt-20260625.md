---
theorem_id: forward-gold-frequency-controlled-annular-return-direct-attempt-20260625
status: direct-dyadic-implementation-reduces-to-same-material-nonlinear-stress-transfer-clock
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Implements the frequency-controlled annular return plan on the same
  transported material history. The initial-frequency contribution is summable
  from smooth data, and the linear viscous heat contribution has the expected
  high-frequency damping. The remaining term is continued high-frequency
  nonlinear stress transfer inside the same transported annular history.
  Bony/Littlewood-Paley localization keeps it on the full
  pressure-viscosity-incompressibility-velocity packet, but does not bound it
  from energy alone. The direct dyadic calculation therefore reduces finite
  annular force-action variation to the same-material nonlinear transfer
  clock already represented by the cascade/active-square wall.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-annular-force-action-variation-proof-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-frequency-data-to-material-clock-pressure-test-20260624.md
  - problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md
  - problems/navier-stokes/theorem-construction/dyadic-high-frequency-gain-theorem.md
  - problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md
  - problems/navier-stokes/theorem-construction/mcp-circularity-audit-for-repaired-cascade-chain-pst-a-a650ea638e.md
---

# Frequency-Controlled Annular Return Direct Attempt

Date: 2026-06-25

## 0. Target

The object is the original smooth solution and its transported material
annular history around a candidate terminal concentration.  The annular
stress-work flux is

```math
F_\phi^\sharp(t)
=
\int U_iT^\sharp_{ij}\partial_j\phi\,dx,
\qquad
T^\sharp=-PI+2\nu S(U),
\tag{FCA.1}
```

with \(\phi\) transported by the same velocity field.  The desired estimate is

```math
\int_0^{T_*}|(F_\phi^\sharp)'(t)|\,dt<\infty .
\tag{FCA.2}
```

The previous direct calculation gives

```math
|(F_\phi^\sharp)'(t)|
\le
\int_{\operatorname{collar}\phi}
\left(
|\nabla\cdot T^\sharp|\,|T^\sharp|
+
|U|\,|D_tT^\sharp|
+
|U|\,|T^\sharp|\,|\nabla u|
\right)|\nabla\phi|\,dx .
\tag{FCA.3}
```

Define the full gauge-reduced annular derivative density

```math
\mathcal B^\sharp_\phi
:=
\left(
|\nabla\cdot T^\sharp|\,|T^\sharp|
+
|U|\,|D_tT^\sharp|
+
|U|\,|T^\sharp|\,|\nabla u|
\right)|\nabla\phi| .
\tag{FCA.3a}
```

The route statement is control of \(\mathcal B^\sharp_\phi\).  A projected
Duhamel source such as \(\mathbb P\nabla\cdot(u\otimes u)\) is only one
coordinate reading of that density; it is not allowed to replace the full
pressure-viscosity-incompressibility-velocity packet.

The plan is to prove `(FCA.2)` by frequency control rather than treating
\(F_\phi^\sharp\) as an arbitrary time signal.

## 1. Dyadic decomposition of the annular signal

Let \(\Delta_j\) be a Littlewood--Paley decomposition on the same chart used to
read the transported annular packet.  In material coordinates this is a fixed
\(a\)-decomposition; in Eulerian coordinates the same formula carries the
transport/cutoff commutators as packet terms.  Write

```math
(F_\phi^\sharp)'(t)=\sum_j (F_{\phi,j}^\sharp)'(t),
\tag{FCA.4}
```

where each shell is obtained by applying \(\Delta_j\) to the full integrand in
`(FCA.3)`.  The decomposition is not a new object.  It is a frequency reading
of the same pressure-viscosity-incompressibility-velocity transaction.

For a fixed continuation depth, the force-action integrand is controlled by a
finite sum of dyadic stress/source packets of the form

```math
\mathcal B_j(t)
=
\Delta_j\mathcal B(u,p,\phi)(t),
\tag{FCA.5}
```

where \(\mathcal B\) is made of the three terms in `(FCA.3)`.  Thus

```math
|(F_{\phi,j}^\sharp)'(t)|
\lesssim
\|\mathcal B_j(t)\|_{L^1(\operatorname{collar}\phi)}
\tag{FCA.6}
```

up to the fixed packet/collar constants.

## 2. Initial spectrum is not the problem

For the linear heat part of one dyadic shell,

```math
\Delta_j u^{lin}(t)=e^{\nu t\Delta}\Delta_j u_0,
\tag{FCA.7}
```

and therefore

```math
\|\nabla^m\Delta_j u^{lin}(t)\|_2
\lesssim
2^{mj}e^{-c\nu 2^{2j}t}\|\Delta_j u_0\|_2 .
\tag{FCA.8}
```

Integrating in time gives

```math
\int_0^{T_*}
\|\nabla^m\Delta_j u^{lin}(t)\|_2\,dt
\lesssim
\nu^{-1}2^{(m-2)j}\|\Delta_j u_0\|_2 .
\tag{FCA.9}
```

Since \(u_0\) is smooth, for every fixed \(M\),

```math
\sum_j 2^{Mj}\|\Delta_j u_0\|_2<\infty .
\tag{FCA.10}
```

So every finite-depth initial-frequency contribution to `(FCA.2)` is
summable.  The initial pulse may have infinitely many frequencies, but not
infinite finite-depth amplitude.

## 3. Linear viscosity damps high frequencies

The nonlinear Duhamel formula is

```math
\Delta_j u(t)
=
e^{\nu t\Delta}\Delta_j u_0
-
\int_0^t
e^{\nu(t-s)\Delta}
\Delta_j\mathbb P\nabla\cdot(u\otimes u)(s)\,ds .
\tag{FCA.11}
```

Here \(\mathbb P\nabla\cdot(u\otimes u)\) is only the Eulerian shorthand for
the coupled pressure-incompressibility response.  In the transported material
packet this is read as the velocity equation together with the pressure
complement, coefficient equations, and divergence constraint; the pressure
channel is not discarded.

The heat kernel gives

```math
\int_s^{T_*}
2^{mj}e^{-c\nu 2^{2j}(t-s)}\,dt
\lesssim
\nu^{-1}2^{(m-2)j}.
\tag{FCA.12}
```

Thus the linear part gives the expected high-frequency damping.  Any
nondecaying high-frequency annular reversal must enter through the nonlinear
source term

```math
\Delta_j\mathbb P\nabla\cdot(u\otimes u).
\tag{FCA.13}
```

This is the precise mathematical version of the physical statement: faster
annular reversals are not free; they must be created by original spectrum or by
legal nonlinear transfer.

## 4. The continued nonlinear stress-transfer term

Applying `(FCA.12)` to the Duhamel term gives a coordinate estimate for one
piece of the nonlinear stress transfer:

```math
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathbb P\nabla\cdot(u\otimes u)(s)
\right\|_2
\,ds
<\infty ,
\tag{FCA.14}
```

where \(\gamma\) is the finite derivative weight required by the stress-time
terms in `(FCA.3)`.  The exact value of \(\gamma\) depends only on the chosen
finite continuation depth and on the collar/gauge norm used to read the
annular packet.

The full route target is the corresponding estimate for the actual annular
density:

```math
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathcal B^\sharp_\phi(t)
\right\|_{L^1_x}
\,dt
<\infty .
\tag{FCA.14a}
```

Estimate `(FCA.14)` is useful only after its pressure, viscous, transported
collar, coefficient, and incompressibility commutators have been restored into
`(FCA.14a)`.

Bony decomposition gives the shellwise split

```math
\Delta_j(u\otimes u)
=
\Delta_j(T_u u)+\Delta_j(T_u^{op}u)
+
\Delta_jR(u,u).
\tag{FCA.15}
```

Here \(T_u^{op}u\) denotes the opposite paraproduct, with the high and low
frequency roles of the two tensor factors exchanged.

The low-high part contains

```math
\Delta_j\big(S_{j-C}u\,\Delta_j u\big),
\tag{FCA.16}
```

and after the divergence this is bounded by a coefficient of the form

```math
\|\nabla S_{j-C}u\|_\infty\|\Delta_j u\|_2 .
\tag{FCA.17}
```

The high-high part contains the finite-collar resonant packet

```math
\sum_{\ell\ge j-C}
\Delta_j\big(\Delta_\ell u\,\widetilde\Delta_\ell u\big),
\tag{FCA.18}
```

which contributes a weighted square transfer term of the schematic form

```math
\sum_j 2^{\gamma j}
\sum_{\ell\ge j-C}
2^j
\|\Delta_\ell u\|_2
\|\widetilde\Delta_\ell u\|_\infty .
\tag{FCA.19}
```

Equivalently, after Bernstein and finite-collar summation, one obtains the
same active high-frequency square/cascade quantity already isolated in the
LPAS/CTS and dyadic high-frequency notes.

## 5. Why this does not close from current inputs

Energy gives

```math
u\in L^\infty_tL^2_x,
\qquad
\nabla u\in L^2_{t,x}.
\tag{FCA.20}
```

It does not imply `(FCA.14)`.  The low-high term `(FCA.17)` requires a
coefficient clock comparable to

```math
\int_0^{T_*}\|\nabla u(t)\|_\infty\,dt,
\tag{FCA.21}
```

or a same-packet substitute for that clock.  The high-high term `(FCA.19)`
requires the scale-critical nonlinear transfer/active-square estimate.

Both are legitimate readings of the same physical law.  Initial smoothness gives
the entrance tail `(FCA.10)`, and viscosity damps the linear tail `(FCA.12)`.
The exact remaining term is the nonlinear annular stress-transfer performed by
the same pressure-viscosity-incompressibility-velocity relation; it is not a
separate reservoir and not a free time curve.

Thus the frequency route proves the following exact reduction:

```math
\boxed{
\text{finite annular force-action variation}
\Leftarrow
\text{finite same-material nonlinear high-frequency stress-transfer clock.}
}
\tag{FCA.22}
```

The direct dyadic calculation has not yet proved that stress-transfer clock
from the currently installed inputs.

## 6. Result of implementing the plan

The plan's physical correction is valid: \(F_\phi^\sharp\) is not an arbitrary
oscillator.  Its high-frequency reversals must come from the initial spectrum
or from nonlinear transfer under the full Navier--Stokes packet.

The initial-spectrum and linear-viscosity parts are controlled.  The remaining
same-packet nonlinear stress-transfer estimate has the projected coordinate

```math
\boxed{
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathbb P\nabla\cdot(u\otimes u)
\right\|_2
\,dt
<\infty .
}
\tag{FCA.23}
```

and the actual material-coordinate form

```math
\boxed{
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathcal B^\sharp_\phi(t)
\right\|_{L^1_x}
\,dt
<\infty .
}
\tag{FCA.24}
```

Here `(FCA.24)` includes pressure, viscosity, incompressibility, velocity,
transported-collar, coefficient, and projector commutator terms on the same
material history.

This is not a detached obstruction.  It is exactly the full coupled
pressure-viscosity-incompressibility-velocity transfer needed to make the
annular stress/strain return have finite variation.

## 7. Relation to the repaired cascade scheduler

The repaired cascade chain is real support, but it is not the estimate
`(FCA.24)`.

The installed periodic shell/tail theorem `PST.A` gives, after a threshold
has been scheduled,

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)\,dt\le \rho,
\tag{FCA.25}
```

where

```math
E_N(t)=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t)=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2 .
\tag{FCA.26}
```

The circularity audit for that chain is clean: endpoint exclusion is downstream
of `PST.A`, and the proof uses fixed-threshold coefficients, dyadic support,
Bernstein, commutator estimates, Young-margin splits, and Gronwall.  So the
chain should not be thrown away.

But `(FCA.24)` asks for a different object:

```math
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathcal B^\sharp_\phi(t)
\right\|_{L^1_x}
\,dt
<\infty .
\tag{FCA.27}
```

This is an all-active-shell, moving material-annulus estimate for the derivative
of the gauge-reduced annular stress-work flux.  It contains the stress-time
piece \(D_tT^\sharp\), the collar/transport terms, and the pressure
complement inside the same physical packet.

Therefore the current implication is only

```math
\texttt{PST.A}
\quad\Longrightarrow\quad
\text{scheduled fixed-threshold high-tail suppression,}
\tag{FCA.28}
```

not

```math
\texttt{PST.A}
\quad\Longrightarrow\quad
\text{finite rectified annular force-action variation.}
\tag{FCA.29}
```

To use the repaired cascade chain for the material-history route, one must add
the missing bridge

```math
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathcal B^\sharp_\phi(t)
\right\|_{L^1_x}
\le
C\Bigl(
\text{scheduled cascade density}
+\text{strict same-packet loss}
+\text{summable legal density}
\Bigr)
\tag{FCA.30}
```

on the same transported annulus, with constants independent of the terminal
scale sampling.  This bridge is stronger than the current `PST.A` statement
because it must control the moving annular stress-transfer density itself, not
only keep a high-frequency tail small after a scheduled threshold has been
chosen.

The active-square notes also do not supply `(FCA.30)` as installed.  Raw LPAS
is false, and the residual/source-balanced version is a pass-or-exit theorem
for the reduced cone/tower active-square problem.  It becomes forward-gold
input here only after the residual density is identified with the full
gauge-reduced annular derivative density \(\mathcal B^\sharp_\phi\) on the
same material history.

So the current noncircular state is:

```math
\boxed{
\text{finite rectified annular force-action variation}
\Leftarrow
\text{full annular-density bridge }(FCA.30)
+\text{scheduled cascade / strict-loss control.}
}
\tag{FCA.31}
```

The proof is still open exactly at `(FCA.30)`.

## 8. Direct bridge test for `(FCA.30)`

A direct paraproduct test shows where the bridge breaks.

The first part of \(\mathcal B^\sharp_\phi\) is

```math
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|.
\tag{FCA.32}
```

After localization, a typical high shell is controlled by \(L^2\times L^2\)
or low-high paraproduct bounds of the form

```math
\|\Delta_j(\nabla T^\sharp\,T^\sharp)\|_{L^1}
\lesssim
\sum_{|k-j|\le C}
\|\Delta_k\nabla T^\sharp\|_{L^2}
\|S_{k-C}T^\sharp\|_{L^2}
+\text{high-high terms}.
\tag{FCA.33}
```

Since \(T^\sharp=-PI+2\nu S(U)\), this term asks for pressure service plus
roughly \(H^2\)-level velocity control on the active shell.  This is the part
closest to the repaired cascade tail: it can plausibly be tied to scheduled
\(D_N\)-type control once the pressure/collar terms are restored.

The second part is different:

```math
|U|\,|D_tT^\sharp|\,|\nabla\phi|.
\tag{FCA.34}
```

The exact stress evolution is

```math
D_tT^\sharp=-(D_tP)I+2\nu D_tS(U),
\tag{FCA.35}
```

and

```math
D_tS(U)
=
\operatorname{sym}\nabla(\nabla\cdot T^\sharp)
-
\operatorname{sym}\big((\nabla V)(\nabla U)\big).
\tag{FCA.36}
```

Thus a direct absolute-value estimate for `(FCA.34)` requires a term of the
shape

```math
\int_0^{T_*}
\sum_j
2^{\gamma j}
\|\Delta_jD_tT^\sharp(t)\|_{L^1(\operatorname{collar}\phi)}
\,dt
<\infty ,
\tag{FCA.37}
```

or an exact cancellation that removes this stress-time derivative before
absolute values are taken.

The installed `PST.A`/`Sched.A+` cascade control does not provide `(FCA.37)`.
It controls a scheduled \(H^1\) tail and integrated \(H^2\) tail for the
velocity after the scheduler compatibility condition is paid.  It does not
control the material time derivative of the reduced stress, which contains
pressure-time service and one additional material stress derivative through
`(FCA.36)`.

Therefore `(FCA.30)` has only two noncircular routes from the checked inputs:

```math
\text{derive a signed same-packet cancellation for }I_2
\tag{FCA.38}
```

before absolute values, or

```math
\text{prove the full stress-time clock }(FCA.37)
\tag{FCA.39}
```

as part of the same pressure-viscosity-incompressibility-velocity packet.

This is the exact place where the physical picture still demands work.  The
annular return is attached to the original material history; the open
mathematical line is controlling the rectified variation of that attached
stress history without assuming the continuation-strength material clock.

## 9. Stress-time is generated by the same spatial material tower

The stress-time term should not be treated as a free time signal.  It is
generated by the same pressure-viscosity-incompressibility-velocity law.

Work in the gauge-reduced packet

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0,
\tag{FCA.40}
```

where \(D_t=\partial_t+V\cdot\nabla\) and \(\nabla V=\nabla U\).  The
commutator with spatial differentiation is

```math
D_t\partial_i f
=
\partial_iD_tf-(\partial_iU_k)\partial_k f.
\tag{FCA.41}
```

Therefore

```math
D_tS_{ij}(U)
=
{1\over2}\left(
\partial_i\partial_kT^\sharp_{jk}
+
\partial_j\partial_kT^\sharp_{ik}
\right)
-
{1\over2}\left(
\partial_iU_k\,\partial_kU_j
+
\partial_jU_k\,\partial_kU_i
\right).
\tag{FCA.42}
```

In the stress-time flux piece

```math
I_2
=
\int U_i(D_tT^\sharp_{ij})\partial_j\phi\,dx,
\tag{FCA.43}
```

the viscous part can be integrated by parts using `(FCA.42)`:

```math
\begin{aligned}
2\nu\int U_i(D_tS_{ij})\partial_j\phi
= {}&
-\nu\int(\nabla\cdot T^\sharp)_jU_i\partial_{ij}\phi \\
&-\nu\int(\nabla\cdot T^\sharp)_i(\partial_jU_i)\partial_j\phi \\
&-\nu\int(\nabla\cdot T^\sharp)_iU_i\Delta\phi \\
&-\nu\int U_i
\left(
\partial_iU_k\,\partial_kU_j
+
\partial_jU_k\,\partial_kU_i
\right)
\partial_j\phi .
\end{aligned}
\tag{FCA.44}
```

Thus the viscous stress-time contribution is not an independent terminal-time
oscillation.  It is a same-collar spatial stress/velocity-gradient tower term:

```math
|2\nu U\cdot D_tS(U)\nabla\phi|
\leadsto
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|
+
|U|\,|\nabla U|^2|\nabla\phi|.
\tag{FCA.45}
```

The pressure-time part is also not free.  The reduced pressure solves

```math
-\Delta P
=
\partial_iU_j\,\partial_jU_i.
\tag{FCA.46}
```

Applying \(D_t\) and using `(FCA.41)` gives

```math
\begin{aligned}
-\Delta D_tP
= {}&
\left(\partial_i\partial_kT^\sharp_{jk}
-\partial_iU_k\,\partial_kU_j\right)\partial_jU_i\\
&+\partial_iU_j
\left(\partial_j\partial_kT^\sharp_{ik}
-\partial_jU_k\,\partial_kU_i\right)\\
&-2\partial_iU_k\,\partial_{ik}P
-(\Delta U_k)\partial_kP .
\end{aligned}
\tag{FCA.47}
```

So \(D_tP\) is an elliptic pressure-service response to the same spatial
stress/velocity tower:

```math
D_tP
=
(-\Delta)^{-1}
\mathcal E_P(U,T^\sharp,P),
\tag{FCA.48}
```

with \(\mathcal E_P\) equal to the right side of `(FCA.47)`.

Consequently the full stress-time term admits the same-packet spatial reduction

```math
|U|\,|D_tT^\sharp|\,|\nabla\phi|
\lesssim
|U|\,|\nabla\mathcal R\mathcal R\mathcal E_P|\,|\nabla\phi|
+
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|
+
|U|\,|\nabla U|^2|\nabla\phi|,
\tag{FCA.49}
```

where the first term is the pressure-time elliptic service term.  This is the
correct physical reading: stress-time variation is generated by the same
annular stress, pressure, strain, velocity, and collar geometry, not by an
arbitrary external time curve.

The bridge `(FCA.30)` is therefore equivalently the spatial tower estimate

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\left\|
\Delta_j\mathcal S_\phi^\sharp(t)
\right\|_{L^1_x}\,dt
<\infty,
\tag{FCA.50}
```

where

```math
\begin{aligned}
\mathcal S_\phi^\sharp
:={}&
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|
+
|U|\,|\nabla\mathcal R\mathcal R\mathcal E_P|\,|\nabla\phi|\\
&+
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|\\
&+
|U|\,|\nabla U|^2|\nabla\phi|
+
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|.
\end{aligned}
\tag{FCA.51}
```

This is real progress over `(FCA.37)`: the live object is now a spatial
pressure-stress-velocity annular tower density on the original material
history.  It is still not closed by installed cascade control, because the
pressure-time elliptic service and cubic gradient terms in `(FCA.51)` require
the same global full-clock estimate rather than the existing scheduled
\(H^1/H^2\) tail suppression alone.
