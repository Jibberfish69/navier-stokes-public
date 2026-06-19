# MPP Forward-Gold CKN Heat-Scale Summability Direct Test

Date: 2026-06-19

## Status

Direct test of whether CKN critical concentration supplies the missing
forward-gold coercive cap for the final heat-scale source-balanced packet.

It does not.  CKN is the right visibility readout: a retained heat-scale packet
has normalized \(L^3\)/pressure mass bounded below by a fixed positive constant.
But that exact lower bound only implies unnormalized cubic-pressure mass of
size \(r^2\).  A dyadic terminal Zeno stack can have infinitely many normalized
packets while keeping finite physical cubic-pressure mass.

The missing theorem is not ordinary CKN visibility.  It is an unweighted
selected-packet Carleson reserve for the normalized CKN charges.

## 1. CKN currency on one heat-scale packet

Work first with viscosity normalized to \(\nu=1\).  For a heat-scale packet

```math
Q_r
=
B_r(x_0)\times(t_0-r^2,t_0],
\tag{CKH.1}
```

the CKN-scale quantity is

```math
\mathcal C(Q_r)
:=
{1\over r^2}
\int_{Q_r}
\left(
|u|^3+|p|^{3/2}
\right)\,dxdt.
\tag{CKH.2}
```

A retained CKN-visible packet means the normalized charge is bounded below:

```math
c_0
\le
\mathcal C(Q_r)
\le
C_0,
\qquad
0<c_0\le C_0<\infty.
\tag{CKH.3}
```

This is not a profile assumption on \(u\) or \(p\).  It permits arbitrary
spatial distribution inside \(Q_r\).  By the definition `(CKH.2)`, it is exactly
equivalent to

```math
c_0 r^2
\le
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
\le
C_0 r^2.
\tag{CKH.4}
```

Thus the physical mass seen by CKN on one packet is \(r^2\)-weighted.  The
visibility statement is

```math
\mathcal C(Q_r)\ge c_0,
\tag{CKH.5}
```

which is exactly why CKN sees the critical heat-scale packet.

With viscosity restored, the corresponding normalized packet hypothesis is the
dimensionless bound

```math
c_0
\le
{\nu^{-2}\over r^2}
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
\le
C_0.
\tag{CKH.6}
```

Equivalently,

```math
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
\le
C_\nu\nu^2r^2,
\tag{CKH.7}
```

with the matching lower bound when the packet is retained as CKN-visible.

## 2. Dyadic Zeno stack is still physically summable

Take a dyadic terminal stack

```math
r_j=2^{-j},
\qquad
Q_j=B_{r_j}(x_j)\times(T-r_j^2,T-r_{j+1}^2]
\tag{CKH.8}
```

with each packet critical:

```math
\mathcal C(Q_j)\ge c_0>0.
\tag{CKH.9}
```

The unnormalized cubic mass over the stack can still be finite:

```math
\sum_j
\int_{Q_j}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
\le
C_0\sum_j r_j^2
<\infty.
\tag{CKH.10}
```

Thus ordinary \(L^3_{t,x}\)/\(L^{3/2}_{t,x}\) physical integrability does not
forbid infinitely many normalized critical heat-scale packets.

This is the same half-power gap in a different currency.  Energy gives
\(u\in L^{10/3}_{t,x}\), so it also gives local \(L^3\) control on finite
measure sets.  That control is weighted by packet volume and heat time.  It
does not sum the normalized CKN charges.

## 3. What CKN epsilon regularity actually gives

The CKN epsilon criterion says that sufficiently small normalized critical
mass implies regularity on a smaller cylinder:

```math
\mathcal C(Q_r)<\varepsilon_{CKN}
\Longrightarrow
\text{regularity in }Q_{r/2}.
\tag{CKH.11}
```

The contrapositive is only a visibility statement:

```math
\text{singular behavior at }(x_0,T)
\Longrightarrow
\limsup_{r\downarrow0}\mathcal C(Q_r)
\ge
\varepsilon_{CKN}.
\tag{CKH.12}
```

That is true and useful.  It does not exclude a single terminal singular point,
because CKN partial regularity permits singular sets of zero parabolic
one-dimensional measure.  A one-point terminal Zeno stack has exactly that
size as a set.

So CKN lower bounds detect the endpoint; they do not provide the forward-gold
anti-atom.

## 4. The missing upgrade is unweighted normalized-charge summability

What would kill the terminal heat-scale stack is not the physical cubic bound

```math
\sum_{P\in\mathcal F}
\int_{Q(P)}
\left(|u|^3+|p|^{3/2}\right)
\le C.
\tag{CKH.13}
```

That only gives

```math
\sum_{P\in\mathcal F}
r_P^2\,\mathcal C(Q(P))
\le C.
\tag{CKH.14}
```

The needed reserve is the unweighted normalized-charge bound

```math
\sum_{P\in\mathcal F}
\mathcal C(Q(P))
\le C,
\tag{CKH.15}
```

or a terminal-tail version

```math
\lim_{N\to\infty}
\sum_{\substack{P\in\mathcal F_N\\ r_P\le 2^{-N}}}
\mathcal C(Q(P))
=0.
\tag{CKH.16}
```

Since each retained heat-scale packet has \(\mathcal C(Q(P))\gtrsim c_0\),
`(CKH.15)` or `(CKH.16)` would forbid an infinite terminal chain.

But `(CKH.15)` is not a consequence of CKN, energy, local energy, pressure
ellipticity, or bounded overlap.  It is exactly the missing scale-critical
Carleson/source-square theorem in CKN clothing.

## 5. Relation to source-square

The native source-square form asks for a quadratic or Carleson payment on the
selected positive source carrier:

```math
\sum_{P\in\mathcal F}
{(\mu_{src}^+(P))^2\over \operatorname{cap}(P)}
\le C.
\tag{CKH.17}
```

On a source-balanced heat-scale packet, this is equivalent in size to charging
one unit of normalized CKN/critical-strain mass per packet.  So the CKN reserve
and the source-square reserve are not separate miracles.  They are the same
missing summability demand expressed in two languages:

```math
\boxed{
\text{source-square/Carleson}
\quad\Longleftrightarrow_{\rm route}\quad
\text{unweighted normalized CKN charge summability}.
}
\tag{CKH.18}
```

## Verdict

CKN helps in the exact way it should: it says a surviving heat-scale packet is
not invisible.  It must carry normalized critical mass.

What CKN does not give is the coercive summability needed by the forward-gold
route:

```math
\boxed{
\text{CKN visibility}
\ne
\text{terminal heat-scale anti-atom}.
}
\tag{CKH.19}
```

The forward-gold branch still needs one of the real suppliers:

```math
\boxed{
\text{unweighted normalized CKN Carleson reserve}
}
\tag{CKH.20}
```

or equivalently selected critical \(L^{5/2}\) strain, native source-square,
terminal source residence, no-waste local-energy flux tightness, or compact
critical-element production.

Failure of `(CKH.20)` leaves a visible retained critical packet, which is useful
for CM Pack/Part/Field readout, but it is not a forward-positive smoothness
proof.
