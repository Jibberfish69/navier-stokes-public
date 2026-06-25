---
theorem_id: forward-gold-material-record-doubling-time-modulus-direct-test-20260625
status: exact-doubling-time-modulus-test-installed; local-material-ode-does-not-prove-no-zeno
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the direct physical no-Zeno idea for the original smooth transported
  material spike-wave history: whether the material equations themselves give a
  uniform lower bound on the time between continuation-depth material-record
  doublings. They do not. The material growth law gives only a
  record-dependent lower bound on doubling time. For a high record value Y_m,
  the best local ODE envelope gives a gap of order Y_m^{-a_N}, and those gaps
  can be summable along dyadic record growth. Thus no-Zeno cannot be obtained
  from local smoothness propagation or raw physical time separation alone; it
  must come from a signed/global same-material pressure-viscosity-
  incompressibility-velocity coercivity or no-waste storage law controlling
  total positive material-record variation.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-doubling-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
---

# Material Record Doubling-Time Modulus Direct Test

Date: 2026-06-25

## 0. Object

The object is still one original smooth material Navier--Stokes history:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\tag{DTM.1}
```

pulled back to the material variables

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{DTM.2}
```

with

```math
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top .
\tag{DTM.3}
```

Heat-scale windows and annular layers are samples of this same material
history.  This note tests whether the material equations force a uniform
non-Zeno time gap between record doublings of that history.

Set

```math
Y_N(t):=1+\mathcal P_N^{mat}(t).
\tag{DTM.4}
```

The previous doubling reduction says that unbounded continuation-depth record
near a candidate terminal time produces stopping times

```math
t_0<t_1<t_2<\cdots<T_*,
\qquad
Y_N(t_{m+1})=2Y_N(t_m),
\tag{DTM.5}
```

and each interval carries

```math
\int_{t_m}^{t_{m+1}}d[\log Y_N(t)]_+\ge\log 2.
\tag{DTM.6}
```

## 1. What the material equations actually give

The material record growth law has the form

```math
d[\log Y_N(t)]_+
\le
C_N\Theta_N(t)\,dt+dR_N^0,
\tag{DTM.7}
```

where \(\Theta_N\) is the same pressure-viscosity-incompressibility-velocity
service rate of the material packet.

On an interval where \(Y_N(t)\) is finite, the differentiated material
equations, Moser product estimates, pressure elliptic readout, and transported
collar estimates give a high-side local envelope of the form

```math
\Theta_N(t)
\le
C_NY_N(t)^{a_N}
+B_N(t),
\qquad
a_N>0,
\tag{DTM.8}
```

where \(B_N\) contains lower-order or legal terms already controlled on the
interval under the retained smooth preterminal solution.  Combining
`(DTM.7)` and `(DTM.8)` gives the local continuation-type envelope

```math
{d\over dt}Y_N(t)
\le
C_NY_N(t)^{1+a_N}
+C_NB_N(t)Y_N(t)
+dR_N^0\,Y_N(t).
\tag{DTM.9}
```

This is the usual local smoothness propagation shape.  Its constants depend on
the current material record height.

## 2. The resulting doubling-time lower bound is record-dependent

Ignore the lower-order \(B_N\) and legal terms for the strongest possible local
time-gap test.  If

```math
{dY\over dt}\le C\,Y^{1+a},
\qquad
a>0,
\tag{DTM.10}
```

then the time needed to grow from \(Y_m\) to \(2Y_m\) is bounded below only by

```math
\Delta t_m
\ge
\int_{Y_m}^{2Y_m}{dY\over C\,Y^{1+a}}
=
{1-2^{-a}\over aC}\,Y_m^{-a}.
\tag{DTM.11}
```

For dyadic record growth,

```math
Y_m=2^mY_0,
\tag{DTM.12}
```

this gives

```math
\sum_m \Delta t_m
\gtrsim
\sum_m (2^mY_0)^{-a}
<
\infty .
\tag{DTM.13}
```

So the material equations do not give a uniform positive lower bound on
doubling time.  They give only a lower bound that shrinks as the same material
record grows.

## 3. Physical meaning

A higher and thinner same-material spike has a larger continuation-depth
record.  The local material equations then permit the next unit of
log-record growth to occur on a shorter physical interval, because the local
growth envelope scales with the record already present.

This does not detach the pulse from its annular history.  The annular
stress/strain return remains attached by the transported material identity.
The point is narrower: attachment plus local smoothness propagation does not
make the return time non-summable.

## 4. Consequence

The same-history no-Zeno step cannot be proved by the local ODE envelope
alone:

```math
\text{finite preterminal material record at each }t<T_*
\quad\not\Longrightarrow\quad
\sum_m(t_{m+1}-t_m)=\infty
\tag{DTM.14}
```

through `(DTM.9)`.

The remaining gold statement must control the total positive log-record
variation directly:

```math
\boxed{
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat}(t))]_+<\infty .
}
\tag{DTM.15}
```

Equivalently, it must prove a signed/global same-material storage or
no-waste inequality of the form

```math
d\mathfrak L_N
+c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_N
\le
dR_N,
\qquad
\mathfrak L_N\ge -C,
\qquad
\int_0^{T_*}dR_N<\infty .
\tag{DTM.16}
```

That is the exact next mathematical burden.  It is not a detached endpoint
scenario, and it is not a viscosity-only or pressure-only reserve.  It is the
same original material spike-wave history requiring a global signed control of
positive material-record growth.

## 5. Result

The direct doubling-time modulus route is exhausted:

```math
\boxed{
\text{local material smoothness propagation gives only summable
record-dependent doubling gaps.}
}
\tag{DTM.17}
```

Thus the live gold edge remains:

```math
\boxed{
\text{prove finite positive material-record variation from the full
pressure-viscosity-incompressibility-velocity history.}
}
\tag{DTM.18}
```
