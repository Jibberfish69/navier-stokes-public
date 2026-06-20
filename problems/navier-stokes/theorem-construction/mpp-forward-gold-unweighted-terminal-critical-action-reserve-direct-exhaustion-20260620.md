# MPP Forward Gold UnweightedTerminalCriticalActionReserve.A Direct Exhaustion

Date: 2026-06-20

## Status

Direct theorem-loop attempt on
`UnweightedTerminalCriticalActionReserve.A`.  The theorem is not proved from
the current Navier--Stokes inputs.  The exact obstruction is the heat-scale
radius discount: the available energy, dissipation, material stress, and local
energy ledgers control radius-weighted terminal action, while the forward-gold
anti-atom needs unweighted action on the actual selected positive carrier.

This note does not rename the remaining work.  It records the direct attempt
and the exact failure model.

## 1. The target

Let the selected terminal heat-scale packets be

```math
Q_m
=
B_{r_m}(x_m)\times(t_m-r_m^2,t_m],
\qquad
r_m\downarrow0.
\tag{UTR.1}
```

Normalize by

```math
x=x_m+r_my,\qquad
t=t_m+r_m^2s,\qquad
u(t,x)=r_m^{-1}v_m(s,y),
\qquad
p(t,x)=r_m^{-2}q_m(s,y).
\tag{UTR.2}
```

The unweighted terminal action on a fixed normalized ball \(B_R\) is

```math
A_m
:=
\int_{-1}^{0}\int_{B_R}
\left(
|v_m|^3+|q_m|^{3/2}+|S(v_m)|^{5/2}
\right)\,dy\,ds.
\tag{UTR.3}
```

The desired forward-gold reserve is a terminal tail bound

```math
\lim_{N\to\infty}
\sum_{\substack{m:\ r_m\le2^{-N}}}A_m
=0,
\tag{UTR.4}
```

after legal exits, finite donor trees, retained signed partners, and already
visible CM-facing readouts have been removed.

The selected-carrier endpoint version is the following.  Define the native
positive carrier marginal

```math
a_m(s)
:=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},
w_{j_m}
\right\rangle
\right]_+
(t_m+r_m^2s,x)\,dx.
\tag{UTR.5}
```

Endpoint uniform integrability would say

```math
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{UTR.6}
```

The two currencies are related but not interchangeable.  A source-square or
unweighted critical-action reserve can imply endpoint UI by Cauchy--Schwarz on
terminal strips.  Endpoint UI alone only removes a terminal atom; it does not
pay every retained thin square-reserve pulse.  A forward-gold proof has to state
which currency it actually produces.

## 2. Physical ledgers give only weighted action

For the cubic-pressure part,

```math
\int_{Q_m}\left(|u|^3+|p|^{3/2}\right)\,dx\,dt
=
r_m^2
\int_{-1}^{0}\int_{B_R}
\left(|v_m|^3+|q_m|^{3/2}\right)\,dy\,ds.
\tag{UTR.7}
```

For dissipation,

```math
\int_{Q_m}|\nabla_xu|^2\,dx\,dt
=
r_m
\int_{-1}^{0}\int_{B_R}|\nabla_yv_m|^2\,dy\,ds.
\tag{UTR.8}
```

Material stress work has the same one-radius discount:

```math
W_m^{phys}=r_mW_m^{ren}.
\tag{UTR.9}
```

Thus the available physical ledgers have the form

```math
\sum_m r_m^2C_m<\infty,
\qquad
\sum_m r_mD_m<\infty,
\qquad
\sum_m r_m[W_m^{ren}]_+<\infty,
\tag{UTR.10}
```

while the reserve asks for

```math
\sum_m A_m<\infty
\qquad\text{or terminal tail depletion of }\sum_mA_m.
\tag{UTR.11}
```

The implication `(UTR.10) -> (UTR.11)` is false at the level of exact scaling.
With

```math
r_m=2^{-m},
\qquad
A_m=1,
\tag{UTR.12}
```

one has

```math
\sum_m r_m<\infty,
\qquad
\sum_m r_m^2<\infty,
\qquad
\sum_mA_m=\infty.
\tag{UTR.13}
```

So the physical ledgers allow one normalized terminal packet at each heat
scale.

## 3. Endpoint carrier countermodel

The selected-carrier time-face obstruction is

```math
a_m(s)
=
\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{UTR.14}
```

It satisfies

```math
\int_{-1}^{0}a_m(s)\,ds=1,
\tag{UTR.15}
```

and

```math
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\int_{-\theta}^{0}a_m(s)\,ds
=1.
\tag{UTR.16}
```

Thus finite selected \(L^1_s\) mass does not imply endpoint UI.

The same model can be written as a source measure.  If
\(\rho\in C_c^\infty(B_1)\), \(\rho\ge0\), and
\(\int_{B_1}\rho\,dy=1\), then

```math
d\mu_m^{src,+}
=
\rho(y)\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)\,dy\,ds
\rightharpoonup
\rho(y)\,dy\otimes\delta_{s=0}.
\tag{UTR.17}
```

Every compact negative-time strip can be source-free, while the terminal face
keeps one unit of selected source mass.

## 4. Supplier attempts all hit the same wall

### 4.1 Source-square

A same-carrier square estimate would prove `(UTR.6)`.  For example, if

```math
\sup_m\int_{-1}^{0}a_m(s)^2\,ds<\infty,
\tag{UTR.18}
```

then Cauchy--Schwarz gives

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
\theta^{1/2}
\left(\int_{-1}^{0}a_m(s)^2\,ds\right)^{1/2}.
\tag{UTR.19}
```

Current inputs do not prove `(UTR.18)` for the selected carrier `(UTR.5)`.
The endpoint model `(UTR.14)` has

```math
\int_{-1}^{0}a_m(s)^2\,ds=\tau_m^{-1}\to\infty.
\tag{UTR.20}
```

So source-square is a paid consumer, not a produced reserve.

### 4.2 Critical strain

The strain exponent \(5/2\) is exactly heat-scale invariant:

```math
\int_{Q_m}|S_x(u)|^{5/2}\,dx\,dt
=
\int_{-1}^{0}\int_{B_R}|S_y(v_m)|^{5/2}\,dy\,ds.
\tag{UTR.21}
```

Thus selected \(L^{5/2}\) strain would supply the right unweighted currency.
The installed energy estimate supplies \(L^2_{t,x}\) strain with the radius
weight `(UTR.8)`, not `(UTR.21)`.

The checked saturation model keeps the temporal critical factors bounded while
retaining the endpoint carrier.  For fixed positive constants \(\sigma,\psi\),
set on \((-\tau_m,0]\)

```math
\Sigma_m=\tau_m^{-2/5}\sigma,
\qquad
W_m=\tau_m^{-3/10}\psi,
\tag{UTR.22}
```

and set them to zero outside \((-\tau_m,0]\).  Then the critical temporal
norms are exactly

```math
\int_{-1}^0|\Sigma_m(s)|^{5/2}\,ds
=
|\sigma|^{5/2},
\qquad
\int_{-1}^0|W_m(s)|^{10/3}\,ds
=
|\psi|^{10/3}.
\tag{UTR.23}
```

But the selected product carrier is

```math
|\Sigma_m(s)|\,|W_m(s)|^2
=
|\sigma|\,|\psi|^2\,\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\tag{UTR.23a}
```

so, after normalizing \(|\sigma|\,|\psi|^2=1\),

```math
\int_{-\theta}^0|\Sigma_m(s)|\,|W_m(s)|^2\,ds
=1
\quad
\text{for every fixed }\theta>0\text{ and all }m\text{ with }\tau_m<\theta.
\tag{UTR.23b}
```

The endpoint atom is therefore not removed by critical Holder bookkeeping
alone.

### 4.3 Normalized CKN

The normalized CKN charge

```math
\mathcal C(Q_m)
=
r_m^{-2}
\int_{Q_m}\left(|u|^3+|p|^{3/2}\right)\,dx\,dt
\tag{UTR.24}
```

is the correct visibility quantity, but physical integrability gives only

```math
\sum_m r_m^2\mathcal C(Q_m)<\infty.
\tag{UTR.25}
```

It does not give the unweighted terminal Carleson estimate

```math
\sum_m\mathcal C(Q_m)<\infty.
\tag{UTR.26}
```

### 4.4 Strict no-waste

The desired Lyapunov form is

```math
-{d\over ds}L(s)
\ge
cA(s)-R_{legal}(s),
\qquad
\inf_sL(s)>-\infty,
\qquad
\int R_{legal}(s)\,ds<\infty.
\tag{UTR.27}
```

Quadratic pressure-corrected functionals expose the critical pressure/convection
interface but do not make it sign-definite.  Cubic local correctors lose lower
boundedness unless capped, and capped correctors lose uniform cancellation.
So strict no-waste is another exact form of the same missing reserve, not a
current proof of it.

### 4.5 Donor-chain saturation

Finite donor trees are paid by retained signed partners, legal exits, local
donor balance, and entrance-leaf decay.  The infinite terminal Zeno donor chain
keeps the same radius discount:

```math
\sum_m r_m[W_m^{ren}]_+<\infty
\quad\text{while}\quad
\sum_m[W_m^{ren}]_+=\infty
\tag{UTR.28}
```

is compatible with \(r_m=2^{-m}\) and \([W_m^{ren}]_+=1\).  Thus the no-free
terminal Zeno donor-chain theorem is another same-carrier unweighted reserve.

### 4.6 Rigid Zeno / Landau

The Landau/Sverak consumer is paid only after exact profile production.  The
direct rigid-Zeno exhaustion shows compactness may produce

```math
\mu_*^{src,+}
=
\rho(y)\,dy\otimes\delta_{s=0}
\tag{UTR.29}
```

instead of a source-free stationary \((-1)\)-homogeneous profile.  So rigid
Zeno/Landau is downstream of endpoint evacuation, unweighted action, gauge
uniqueness, stationarity, homogeneity, annular defect evacuation, and sphere
smoothness.  It is not an independent supplier for `(UTR.4)` or `(UTR.6)`.

## 5. Direct conclusion

The current Navier--Stokes inputs prove:

```math
\text{weighted physical terminal control}
+
\text{visibility of the selected heat-scale carrier}.
\tag{UTR.30}
```

They do not prove:

```math
\text{unweighted terminal critical-action reserve on the actual selected
positive carrier}.
\tag{UTR.31}
```

The exact failed implication is

```math
\boxed{
\sum_m r_mA_m<\infty
\ \not\Longrightarrow\
\sum_m A_m<\infty
\quad(r_m\downarrow0).
}
\tag{UTR.32}
```

The endpoint version is

```math
\boxed{
\sup_m\int_{-1}^{0}a_m(s)\,ds<\infty
\ \not\Longrightarrow\
\lim_{\theta\downarrow0}\limsup_m\int_{-\theta}^{0}a_m(s)\,ds=0.
}
\tag{UTR.33}
```

## Verdict

`UnweightedTerminalCriticalActionReserve.A` is not proved from current inputs.
Every checked supplier either consumes this reserve, restates it in another
currency, or fails on the endpoint heat-scale model `(UTR.14)`.

The forward-gold branch therefore has no remaining independent supplier at the
current resolution.  The next noncircular act is the other fork: route the
retained heat-scale pulse through the CM Pack/Part/Field witness-face program,
without presenting that route as a forward-positive anti-atom theorem.
