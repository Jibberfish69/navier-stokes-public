# MPP Forward-Gold Strict No-Waste Post-Active-Height Audit

Date: 2026-06-20

## Status

Post-active-height direct audit complete.  The strict no-waste route remains a
valid architecture, but it is not an independent supplier from the current
Navier--Stokes inputs.

The exact conclusion is:

```math
\boxed{
\text{a strict no-waste theorem must carry unweighted terminal critical-action
size, not merely physical energy, local-energy visibility, pressure correction,
memory, or compact recurrence.}
}
\tag{SNWPA.0}
```

This note consolidates the tested no-waste forms after the active-height/enstrophy
branch separated fixed-radius throttling from the heat-scale terminal pulse.

## 1. The target inequality

On a retained normalized heat-scale packet, the strict no-waste theorem would
provide a functional \(L(s)\) satisfying

```math
\inf_{s\ge s_0}L(s)>-\infty
\tag{SNWPA.1}
```

and

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A_R(s)
-
\mathcal R_{\rm legal}(s),
\qquad
\int_{s_0}^{\infty}\mathcal R_{\rm legal}(s)\,ds<\infty.
\tag{SNWPA.2}
```

Here \(\mathcal A_R\) is an unweighted normalized critical action, such as a
selected cubic/pressure action, selected critical strain action, or native
source-square action.  A surviving recurrent heat-scale pulse gives infinitely
many slabs \(J_k\) with

```math
\int_{J_k}\mathcal A_R(s)\,ds\ge c_0>0.
\tag{SNWPA.3}
```

Then `(SNWPA.1)`--`(SNWPA.2)` would forbid infinite recurrence by finite total
drop.

## 2. Energy-bounded functionals are too small

The heat-scale pulse can be represented at shell \(j\) by

```math
I_j=(T-2^{-2j},T],
\qquad
D_j(t)=H_j{\bf 1}_{I_j}(t),
\qquad
H_j=2^{3j/2}.
\tag{SNWPA.4}
```

Then

```math
\int_{I_j}D_j(t)\,dt=2^{-j/2}\to0,
\tag{SNWPA.5}
```

while

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt=1.
\tag{SNWPA.6}
```

The ordinary shell energy is

```math
E_j(t)\simeq2^{-2j}D_j(t)\simeq2^{-j/2}
\quad\text{on }I_j.
\tag{SNWPA.7}
```

So any pressure-corrected or packet-corrected functional with

```math
|L_j(t)|\le C E_j(t)+Legal_j(t)
\tag{SNWPA.8}
```

has only \(o(1)\) available drop after legal losses are removed. It cannot imply

```math
-L_j'(t)\ge c\,2^{-j}D_j(t)^2-Legal_j(t).
\tag{SNWPA.9}
```

This is the size obstruction from
`mpp-forward-gold-energy-bounded-nowaste-lyapunov-obstruction-20260619.md`.

## 3. Quadratic pressure correction leaves the critical collar flux

In terminal self-similar variables,

```math
s=-\log(T-t),
\qquad
y={x-x_\ast\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\tag{SNWPA.10}
```

the rescaled equation is

```math
\partial_s v
+(v\cdot\nabla)v
+\nabla q
+{1\over2}y\cdot\nabla v
+{1\over2}v
=
\nu\Delta v.
\tag{SNWPA.11}
```

For a localized pressure-corrected quadratic functional

```math
L_A(s)={1\over2}\langle v,A_sv\rangle,
\tag{SNWPA.12}
```

the derivative contains the viscous term, dilation/operator-motion terms, and
the localized convection/projection commutator.  For a scalar cutoff the leading
collar flux is

```math
\mathcal C_\chi(v)
=
{1\over2}\int |v|^2 v\cdot\nabla\chi\,dy.
\tag{SNWPA.13}
```

It has no sign and is controlled only by the critical collar action:

```math
|\mathcal C_A(v)|+|\operatorname{Comm}_A(v)|
\le
C_A
\int_{\operatorname{collar}(A)}
\left(|v|^3+|q|^{3/2}+|S(v)|^{5/2}\right)\,dy.
\tag{SNWPA.14}
```

Thus quadratic pressure correction gives visibility of the needed currency, not
a strict drop controlling it.

## 4. Instantaneous nonlinear correctors lose lower boundedness

The collar flux is cubic and odd:

```math
\mathcal C_\chi(-v)=-\mathcal C_\chi(v).
\tag{SNWPA.15}
```

An instantaneous cubic corrector \(B(v)\) large enough to cancel `(SNWPA.13)`
must have a leading direction with

```math
B(\lambda V)=\lambda^3B(V).
\tag{SNWPA.16}
```

Then one of the signs gives

```math
{1\over2}\lambda^2\langle V,A_sV\rangle
-\lambda^3B(V)
\to
-\infty.
\tag{SNWPA.17}
```

The corrected functional is not bounded below.  Capping the corrector restores a
lower bound but loses uniform cubic cancellation, returning to the same
unweighted critical-action reserve.

## 5. Pressure and heat memory do not create terminal residence

Pressure is spatially nonlocal and temporally instantaneous:

```math
p(t)=R_iR_j(u_i u_j)(t).
\tag{SNWPA.18}
```

For a separated terminal pulse

```math
u_m(t,x)=a_m(t)U_m(x),
\tag{SNWPA.19}
```

the pressure has the same time support:

```math
p_m(t,x)-p_{m,h}(t,x)
=
a_m(t)^2R_iR_j(U_{m,i}U_{m,j})(x).
\tag{SNWPA.20}
```

With

```math
a_m(t)=\tau_m^{-1/3}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\tag{SNWPA.21}
```

the pressure-work/source factor is

```math
a_m(t)^3=\tau_m^{-1}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\qquad
\int a_m(t)^3\,dt=1.
\tag{SNWPA.22}
```

So pressure reorganizes spatial mass on each time slice, but it does not spread
the terminal time marginal.

The projected heat/Duhamel formula also does not force earlier residence for a
source supported in the last \(\tau_m\) of the heat window:

```math
\int_{T_m-\tau_m}^{T_m}
e^{\nu(T_m-s)\Delta}
\mathbb P\nabla\cdot(u\otimes u)(s)\,ds.
\tag{SNWPA.23}
```

As \(\tau_m\downarrow0\), there is no positive heat time available to produce a
terminal strip modulus.

## 6. Compact recurrence still has the physical discount

In terminal variables, local physical energy on a fixed rescaled ball carries
the factor

```math
\int_{B_{r(s)}}{1\over2}|u(t,x)|^2\,dx
=
e^{-s/2}
\int_{B_R}{1\over2}|v(s,y)|^2\,dy.
\tag{SNWPA.24}
```

The physical dissipation bound gives

```math
\int_{s_0}^{\infty}e^{-s/2}D_R(s)\,ds<\infty,
\tag{SNWPA.25}
```

not

```math
\int_{s_0}^{\infty}D_R(s)\,ds<\infty.
\tag{SNWPA.26}
```

Precompactness modulo scale, center, rotation, frame, and selector gauge can
remove profile switching and make an omega-limit set meaningful. It does not
remove the \(e^{-s/2}\) discount.  A LaSalle argument still needs the strict
unweighted drop `(SNWPA.2)`.

## 7. Exact remaining form of strict no-waste

The no-waste route is not false.  Its remaining non-alias form is simply stronger
than the tested shortcuts:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
\Longleftrightarrow
\text{an unweighted terminal critical-action reserve, or a coercive identity
that produces one on the same selected carrier.}
}
\tag{SNWPA.27}
```

Equivalently, the surviving theorem must supply at least one of:

```math
\begin{gathered}
\text{UnweightedActionFinite.A / NormalizedCKNCarleson.A},\\
\text{SourceSquareReserve.A with selected carrier domination},\\
\text{SelectedCriticalStrainCarleson.A plus endpoint carrier UI},\\
\text{ProjectedLocalizedFluxCommutatorCoercivity.A with a real reserve},\\
\text{CompactOrbitProduction.A plus an actual unweighted no-waste drop.}
\end{gathered}
\tag{SNWPA.28}
```

Current inputs provide physical weighted control, local-energy visibility,
pressure/convection exposure, and compactness consumers. They do not provide
`(SNWPA.27)`.

## Verdict

The strict no-waste branch is closed as an independent shortcut at the current
route resolution.  It remains a correct organizing language only after an
unweighted same-carrier critical-action reserve has been produced.

Thus this branch does not solve the forward-gold anti-atom theorem. It sharpens
the frontier by removing the remaining alias forms of no-waste:

```math
\boxed{
\text{no-waste without unweighted critical action}
\quad\text{is visibility, not exclusion.}
}
\tag{SNWPA.29}
```
