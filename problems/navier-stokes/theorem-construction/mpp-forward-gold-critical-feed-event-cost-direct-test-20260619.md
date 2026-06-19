# MPP Forward-Gold Critical Feed Event Cost Direct Test

Date: 2026-06-19

## Status

Direct test of the scale-critical participation-throttle question left by
`mpp-forward-gold-participation-throttle-fixed-radius-vs-heat-scale-20260619.md`.

The fixed positive-radius case is already closed by the terminal strip rate
bound.  This note checks the only surviving case:

```math
r_j\downarrow0,
\qquad
\alpha_t {r_j^2\over\nu}\le |I_j|\le A_t {r_j^2\over\nu},
\qquad
\alpha_\lambda{\nu\over r_j^2}
\le
\lambda_j^+
\le
A_\lambda{\nu\over r_j^2}
\quad\text{on }I_j.
\tag{CFC.1}
```

Here and below `alpha_t,A_t,alpha_lambda,A_lambda` are fixed positive constants
independent of `j`.  Thus the calculation is a two-sided heat-scale
comparability statement, not a pointwise profile assumption.

The question is whether the participation/rate law itself forces a
nonsummable bill over a Zeno sequence.

## 1. Critical feed event

The native high-packet balance has the form

```math
{d\over dt}E_j(t)
+c\nu r_j^{-2}E_j(t)
\le
\Phi_j^+(t)+Legal_j(t),
\tag{CFC.2}
```

with

```math
\Phi_j^+(t)
:=
\int
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+dx.
\tag{CFC.3}
```

Writing `w_j=|w_j|e_j`, the source coefficient seen by the packet is

```math
\lambda_j^+(x,t)
:=
\left[
e_j(x,t)\cdot S_{<j}^{loc}(x,t)e_j(x,t)
\right]_+.
\tag{CFC.4}
```

A source-balanced critical feed event is exactly the case where this coefficient
matches the viscous clock:

```math
\alpha_\lambda{\nu\over r_j^2}
\le
\lambda_j^+
\le
A_\lambda{\nu\over r_j^2}
\quad\text{for}\quad
 \alpha_t {r_j^2\over\nu}\le |I_j|\le A_t {r_j^2\over\nu}.
\tag{CFC.5}
```

Then the accumulated normalized feed is bounded above and below by fixed
positive constants:

```math
\alpha_\lambda\alpha_t
\le
\int_{I_j}\lambda_j^+(t)\,dt
\le
A_\lambda A_t .
\tag{CFC.6}
```

So the shrinking time interval does not by itself kill the feed.  The feed-rate
ceiling rises by the reciprocal heat clock.

## 2. The \(L^2\) strain bill is summable

Assume the feed occupies a parabolic packet

```math
Q_j=B_{r_j}(x_j)\times I_j,
\qquad
\alpha_Q {r_j^5\over\nu}
\le
|Q_j|
\le
A_Q {r_j^5\over\nu}.
\tag{CFC.7}
```

On this packet, the strain size needed for `(CFC.5)` is

```math
\alpha_S{\nu\over r_j^2}
\le
|S|
\le
A_S{\nu\over r_j^2}
\quad\text{on the selected active subset.}
\tag{CFC.8}
```

The spacetime \(L^2\) strain bill is then

```math
c_2\nu r_j
\le
\int_{Q_j}|S|^2\,dxdt
\le
C_2\nu r_j.
\tag{CFC.9}
```

This tends to zero.  Along a dyadic Zeno sequence \(r_j=2^{-j}\),

```math
\sum_j \nu r_j<\infty.
\tag{CFC.10}
```

Thus the energy-class dissipation currency is too weak to rule out infinitely
many critical feed events.  Multiplying by the viscosity in the global energy
law only changes the fixed factor:

```math
\nu\int_{Q_j}|S|^2\,dxdt
\le
C_2\nu^2 r_j.
\tag{CFC.11}
```

The bill still tends to zero and remains summable on a geometric cascade.

## 3. The critical exponent is \(5/2\)

For a general spacetime strain exponent \(p\), the same critical feed event has
two-sided cost

```math
c_p\nu^{p-1}r_j^{5-2p}
\le
\int_{Q_j}|S|^p\,dxdt
\le
C_p\nu^{p-1}r_j^{5-2p}.
\tag{CFC.12}
```

Therefore:

```math
p<5/2
\quad\Longrightarrow\quad
\int_{Q_j}|S|^p\to0,
\tag{CFC.13}
```

```math
p=5/2
\quad\Longrightarrow\quad
c_{5/2}\nu^{3/2}
\le
\int_{Q_j}|S|^{5/2}\,dxdt
\le
C_{5/2}\nu^{3/2},
\tag{CFC.14}
```

and

```math
p>5/2
\quad\Longrightarrow\quad
\int_{Q_j}|S|^p\to\infty.
\tag{CFC.15}
```

The exponent \(5/2\) is not arbitrary.  It is the parabolic scaling-critical
exponent for strain in three spatial dimensions.

This gives the exact answer to the rate-limit objection:

```math
\boxed{
\text{\(L^2_{t,x}\) strain participation is subcritical and summable; }
L^{5/2}_{t,x}\text{ strain control would make critical feed events cost
order one each.}
}
\tag{CFC.16}
```

## 4. Velocity version

The equivalent velocity critical currency is \(L^5_{t,x}\).  On the same packet,
the critical velocity scale is

```math
\alpha_u{\nu\over r_j}
\le |u|\le
A_u{\nu\over r_j}
\quad\text{on the selected active subset.}
\tag{CFC.17}
```

Then

```math
c_u\nu^4
\le
\int_{Q_j}|u|^5\,dxdt
\le
C_u\nu^4.
\tag{CFC.18}
```

So a genuine global or selected-packet \(L^5_{t,x}\) bound would also make
infinitely many disjoint critical feed events impossible unless they overlap in
a way charged by the same critical norm.

But such a bound is a Serrin/Prodi-type continuation-strength input.  It is not
supplied by the energy inequality.

## 5. Relation to the trilinear carrier

The trilinear source over \(Q_j\) is

```math
\mathcal T_j^+
=
\int_{Q_j}
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\,dxdt
=
\int_{Q_j}
|w_j|^2\lambda_j^+
\,dxdt.
\tag{CFC.19}
```

If \(w_j\) is a critical velocity packet, its physical kinetic energy is

```math
c_E\nu^2 r_j
\le
E_j
\le
C_E\nu^2 r_j.
\tag{CFC.20}
```

Then the physical source/dissipation amount over one heat window is bounded by
the same scale-small factor:

```math
\mathcal T_j^+
\le
A_\lambda A_t C_E\,\nu^2 r_j.
\tag{CFC.21}
```

This is why physical energy accounting alone misses the endpoint danger.  The
raw energy in a critical packet goes to zero.  The normalized scale-critical
profile, CKN quantity, \(L^5\) velocity bill, and \(L^{5/2}\) strain bill do not.

## 6. Consequence for the gold route

The participation law gives a real throttle at fixed physical radius.  At
shrinking heat scale, it only proves that a critical feed event must spend
critical strain or velocity currency.  The energy law controls
\(L^2_{t,x}\) strain, which is one half-power too weak.

Thus the noncircular forward-gold suppliers are exactly:

```math
\boxed{
\text{selected-packet }L^{5/2}_{t,x}\text{ strain control}
}
\tag{CFC.22}
```

or

```math
\boxed{
\text{selected-packet }L^5_{t,x}\text{ velocity / CKN cubic control}
}
\tag{CFC.23}
```

or the already isolated native source-square / Carleson reserve:

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
\tag{CFC.24}
```

## Verdict

The rate-limit intuition is correct but incomplete.

It proves:

```math
\text{fixed positive radius}
\Longrightarrow
\text{no unpaid terminal atom}.
\tag{CFC.25}
```

It does not prove:

```math
\text{shrinking heat-scale packet}
\Longrightarrow
\text{no terminal normalized critical feed}.
\tag{CFC.26}
```

The exact reason is the scaling calculation `(CFC.12)`.  Energy-level
participation has cost \(r_j\), which can be summable.  Critical strain or
critical velocity control has cost order one per event, which would be the
right coercive currency.

So the next genuine gold estimate is not another fixed-window speed limit.  It
is a theorem converting selected heat-scale feeding into
\(L^{5/2}_{t,x}\) strain, \(L^5_{t,x}\) velocity/CKN, or native
source-square/Carleson cost on the same packet family.
