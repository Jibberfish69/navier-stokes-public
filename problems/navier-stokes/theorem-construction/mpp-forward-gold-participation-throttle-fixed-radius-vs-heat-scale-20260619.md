# MPP Forward-Gold Participation Throttle: Fixed Radius Versus Heat Scale

Date: 2026-06-19

## Status

Direct proof test of the participation-rate objection:

```text
If the terminal source packet has a legal positive radius and participation
throttles transfer rate, why is a last-instant source atom still a problem?
```

The answer is a two-case theorem.

At fixed positive physical radius, the objection is correct: a retained
same-fluid packet with finite participation rate cannot carry a free terminal
time-face atom.

The remaining forward-gold obstruction is the heat-scale case:

```math
r_m\downarrow0,
\qquad
\alpha_t{r_m^2\over\nu}\le \tau_m\le A_t{r_m^2\over\nu},
\qquad
t_m\uparrow T_*.
\tag{PT.1}
```

The constants `alpha_t,A_t` are fixed positive constants.  The heat-scale
statement is a two-sided time-window hypothesis, not a claim that the velocity
profile is linear or self-similar.

There the lawful instantaneous rate is not scale-uniform.  The local balance
contains powers of `r_m^{-1}` and `r_m^{-2}`.  A critical packet can have
vanishing absolute energy while requiring growing instantaneous payment power.
Finite total energy and fixed-scale participation do not rule that out.

## 1. Fixed-radius packet accounting

Let `\phi_r` be a packet cutoff supported in `B_{2r}(x_0)` and equal to one on
`B_r(x_0)`.  Define

```math
E_r(t)=\int \phi_r {|u|^2\over2}\,dx,
\qquad
D_r(I)=\nu\int_I\int\phi_r|\nabla u|^2\,dx\,dt.
\tag{PT.2}
```

The local energy identity gives, on `I=(a,b)`,

```math
E_r(b)-E_r(a)+D_r(I)
=F_r(I)+V_r(I),
\tag{PT.3}
```

where

```math
F_r(I)=\int_I\int
\left({|u|^2\over2}+p\right)u\cdot\nabla\phi_r\,dx\,dt,
\tag{PT.4}
```

and

```math
V_r(I)={\nu\over2}\int_I\int |u|^2\Delta\phi_r\,dx\,dt.
\tag{PT.5}
```

For a fixed physical radius `r_0>0` and a smooth preterminal solution, the
same-time rate

```math
Rate_E(r_0,t)
:=
|F_{r_0}'(t)|+|V_{r_0}'(t)|
\tag{PT.6}
```

is finite on compact preterminal intervals.  In the retained CM participation-field record setting,
the stronger terminal strip form is already isolated by
`NoPersistentUnpaidPositiveRadiusAncestry.A`:

```math
\mu_m^{src}(Q_R\times[-\varepsilon,0])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}(\partial Q_R\times[-\varepsilon,0])
+Exit_m([-\varepsilon,0])
+o_m(1).
\tag{PT.7}
```

On the unpaid no-incoming retained branch,

```math
J_{in,m}=o_m(1),
\qquad
Exit_m=0.
\tag{PT.8}
```

Thus any positive terminal atom `c_0>0` would imply

```math
c_0
\le
M_{CM}(N,r,Q)\varepsilon
\tag{PT.9}
```

for every `\varepsilon>0`, which is impossible as
`\varepsilon\downarrow0`.

So the fixed-radius theorem is:

```math
\boxed{
\text{positive physical radius}
+\text{retained finite participation}
+\text{no incoming/legal payment}
\Longrightarrow
\text{no terminal source atom.}
}
\tag{PT.10}
```

This is already the installed positive-radius ancestry result.

## 2. Why the heat-scale case is different

At a shrinking radius `r`, the fixed-scale rate formula has the form

```math
Rate_E(r,t)
\le
C r^{-1}\int_{A_r}|u|^3\,dx
+C r^{-1}\int_{A_r}|p-c_r|\,|u|\,dx
+C\nu r^{-2}\int_{A_r}|u|^2\,dx.
\tag{PT.11}
```

The coefficients grow as the radius shrinks.

Use the critical velocity scale

```math
U_c(r)={\nu\over r}.
\tag{PT.12}
```

A packet with size `U_c(r)` on a ball of radius `r` has stored kinetic energy

```math
c_E\nu^2r
\le
E_c(r)
\le
C_E\nu^2r
\tag{PT.13}
```

which tends to zero as `r\downarrow0`.  Its natural heat time is

```math
\alpha_t{r^2\over\nu}
\le
\tau_\nu(r)
\le
A_t{r^2\over\nu}.
\tag{PT.14}
```

The power needed to sustain or create the critical packet on that clock is

```math
c_P{\nu^3\over r}
\le
P_c(r):={E_c(r)\over\tau_\nu(r)}
\le
C_P{\nu^3\over r},
\tag{PT.15}
```

which diverges as `r\downarrow0`.

This is the key calculus:

```math
E_c(r)\to0,
\qquad
P_c(r)\to\infty.
\tag{PT.16}
```

Finite total energy controls the amount available.  It does not by itself give
a uniform bound on instantaneous scale-critical payment power.

## 3. The trilinear term is the native throttle meter

For a localized high-frequency packet `w_j` with `r_j=2^{-j}`, the shell energy
balance has the form

```math
{d\over dt}E_j(t)
+c\nu r_j^{-2}E_j(t)
\le
\Phi_j^+(t)+Legal_j(t),
\tag{PT.17}
```

where the positive native source is

```math
\Phi_j^+(t)
:=
\int
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+dx.
\tag{PT.18}
```

Writing `w_j=|w_j|e_j`,

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{PT.19}
```

So the coefficient

```math
\lambda_j^+(t)
:=
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
\tag{PT.20}
```

is the actual feed rate seen by the high packet.

Viscosity drains on the clock

```math
\nu r_j^{-2}.
\tag{PT.21}
```

The dangerous source-balanced case is exactly

```math
\alpha_\lambda{\nu\over r_j^2}
\le
\lambda_j^+(t)
\le
A_\lambda{\nu\over r_j^2}
\quad\text{on}\quad
\alpha_t{r_j^2\over\nu}\le |I_j|\le A_t{r_j^2\over\nu}.
\tag{PT.22}
```

Then

```math
\alpha_\lambda\alpha_t
\le
\int_{I_j}\lambda_j^+(t)\,dt
\le
A_\lambda A_t.
\tag{PT.23}
```

The time window shrinks, but the allowed critical rate grows by the reciprocal
amount.  This is why the terminal layer can remain order-size in normalized
packet variables.

## 4. What would actually close the gold route

The fixed-radius speed-limit principle would become a gold theorem at shrinking
scale only if one proves a uniform scale-critical version such as

```math
\boxed{
\int_{I_j}
\left[
\lambda_j^+(t)-c\nu r_j^{-2}
\right]_+
dt
\to0
\quad (j\to\infty),
}
\tag{PT.24}
```

or the source-square / Carleson form

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
dxdt
\le
o_N(1)+Loss_{legal}.
}
\tag{PT.25}
```

or the first-creation square-reserve charge

```math
\boxed{
\left[
\mathcal R_N(W)
-(1-\delta)\mathcal R_N(Past(W))
-Loss_{legal}(W)
\right]_+
\le
Charge_N(W)+o_N(1).
}
\tag{PT.26}
```

The current inputs do not prove any of these.  The installed result is the
fixed-radius / retained-CM statement `(PT.10)`, plus the exact local accounting
identity `(PT.3)`.

## 5. Ontological conclusion

The imagined object is not a free private packet.  It must be one of three
things:

1. **Fixed positive physical radius.**  Then participation gives finite
   terminal strip rate, and a free terminal atom is impossible.

2. **Shrinking heat-scale packet.**  Then the legal radius is positive only at
   each finite stage or after rescaling.  The physical radius tends to zero, and
   the lawful critical rate grows like the inverse heat clock.  This is the
   unresolved forward-gold case.

3. **Detached or unpaid endpoint residue.**  Then it is not a retained
   same-fluid positive-radius packet.  In the CM route it lands through
   Part/Field rather than serving as an in-class hidden continuation.

Thus the participation objection is correct and useful.  It does not leave the
gold route with a mysterious legal fixed window.  It forces the live problem to
be stated as the scale-critical heat-window throttle:

```math
\boxed{
\text{Can Navier--Stokes produce }
\alpha_\lambda{\nu\over r_j^2}\le\lambda_j^+\le A_\lambda{\nu\over r_j^2}
\text{ on } \alpha_t{r_j^2\over\nu}\le |I_j|\le A_t{r_j^2\over\nu}
\text{ for infinitely many }j
\text{ without paying a Carleson/source-square/CM-face cost?}
}
\tag{PT.27}
```

That is exactly what the trilinear carrier is measuring.
