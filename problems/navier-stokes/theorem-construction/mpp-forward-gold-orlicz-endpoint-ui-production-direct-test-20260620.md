# MPP Forward-Gold Orlicz Endpoint UI Production Direct Test

Date: 2026-06-20

## Status

Direct Orlicz/de la Vallee-Poussin test complete.  The Orlicz condition is an
exact consumer for the selected-carrier endpoint no-jump theorem.  It is not
produced by the current Navier--Stokes inputs.

The point is narrow: Orlicz control proves the needed endpoint uniform
integrability, but the installed local energy, pressure, participation,
critical-factor, compactness, and entropy inputs do not produce that Orlicz
control on the actual selected positive carrier.

## 1. Selected carrier

For a terminal heat-scale packet \(P_m\) with radius \(r_m\downarrow0\), terminal
time \(T\), and normalized time

```math
s={t-T\over r_m^2}\in[-1,0],
\tag{OEUI.1}
```

the selected native positive source marginal is

```math
a_m(s)
:=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\right\rangle
\right]_+
(T+r_m^2s,x)\,dx .
\tag{OEUI.2}
```

The endpoint no-jump theorem is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
\tag{OEUI.3}
```

The current visibility package gives only

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds\le C.
\tag{OEUI.4}
```

## 2. Orlicz control proves the endpoint modulus

Let \(\Phi:[0,\infty)\to[0,\infty)\) be increasing, convex, and superlinear:

```math
\lim_{z\to\infty}{\Phi(z)\over z}=\infty .
\tag{OEUI.5}
```

Assume the same selected carrier satisfies the de la Vallee-Poussin bound

```math
\sup_m\int_{-1}^{0}\Phi(a_m(s))\,ds\le C_\Phi .
\tag{OEUI.6}
```

Then \(\{a_m\}\) is uniformly integrable at the terminal endpoint.  Indeed, fix
\(\epsilon>0\).  Choose \(K\) so large that

```math
z\ge K
\quad\Longrightarrow\quad
z\le \epsilon\,\Phi(z).
\tag{OEUI.7}
```

For any measurable \(E\subset[-1,0]\),

```math
\int_E a_m(s)\,ds
\le
K|E|
+
\epsilon\int_E\Phi(a_m(s))\,ds
\le
K|E|+\epsilon C_\Phi .
\tag{OEUI.8}
```

Taking \(E=(-\theta,0]\), then choosing \(\theta\) so that \(K\theta\) is small,
gives `(OEUI.3)`.

Thus the exact consumer theorem is proved:

```math
\boxed{
\text{same-carrier Orlicz bound}
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
}
\tag{OEUI.9}
```

## 3. The endpoint layer violates every Orlicz production claim

The sharp terminal layer is

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{OEUI.10}
```

It has fixed normalized \(L_s^1\) mass:

```math
\int_{-1}^{0}a_m(s)\,ds=1.
\tag{OEUI.11}
```

But for every superlinear \(\Phi\),

```math
\int_{-1}^{0}\Phi(a_m(s))\,ds
=
\tau_m\,\Phi(\tau_m^{-1})
=
{\Phi(z_m)\over z_m},
\qquad z_m=\tau_m^{-1}\to\infty,
\tag{OEUI.12}
```

which diverges along the terminal sequence by `(OEUI.5)`.

So Orlicz control would kill the terminal atom, but exactly because it is a
super-\(L^1\) endpoint payment.  It is not contained in finite \(L_s^1\) source
visibility.

## 4. Why current Navier--Stokes inputs do not produce `(OEUI.6)`

### Local energy

The local energy inequality gives a finite terminal defect measure.  A finite
measure can have an endpoint atom, and `(OEUI.10)` is precisely that atom at the
time-marginal level.  Local energy therefore gives `(OEUI.4)`, not `(OEUI.6)`.

### Pressure

Pressure is recovered from a spatial elliptic equation at each time:

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{OEUI.13}
```

Spatial Calderon--Zygmund control does not give a terminal time modulus for the
one-sided selected carrier.  If the velocity amplitude is compressed into
\((-\tau_m,0]\), the pressure amplitude is compressed into the same interval.

### Critical Holder currencies

The critical strain/velocity factorization has the schematic form

```math
a_m(s)
\le
\int_{B_1}|\Sigma_m(s,y)|\,|W_m(s,y)|^2\,dy .
\tag{OEUI.14}
```

Uniform critical bounds on

```math
\Sigma_m\in L_s^{5/2}L_y^{5/2},
\qquad
W_m\in L_s^{10/3}L_y^{10/3}
\tag{OEUI.15}
```

give finite \(L_s^1\) control of the product, and no Orlicz gain.  The aligned
terminal model

```math
\Sigma_m=\tau_m^{-2/5}\sigma(y)S_0{\bf 1}_{(-\tau_m,0]},
\qquad
W_m=\tau_m^{-3/10}\psi(y)e_1{\bf 1}_{(-\tau_m,0]}
\tag{OEUI.16}
```

with \(S_0=\operatorname{diag}(2,-1,-1)\) keeps the critical factor norms fixed
and still produces `(OEUI.10)`.  Therefore critical Holder saturation blocks
Orlicz production unless an additional same-carrier nonconcentration theorem is
proved.

### Temporal compactness

Natural Aubin--Lions or negative-Sobolev time-derivative costs act on the
velocity field, not on the selected positive marginal after localization,
projection, lifting, packet selection, and positive-part extraction.  The
existing heat-scale pulse models make those physical/time-regularity costs
vanish while the normalized source marginal remains `(OEUI.10)`.

### Participation

For packets with \(r_m\ge r_0>0\), the physical and normalized ledgers are
comparable.  That is the fixed-radius throttle.

The live terminal branch has \(r_m\downarrow0\).  On a heat-scale Zeno cascade,
the physical bill is discounted:

```math
\sum_m r_m A_m^{ren}<\infty
\quad\text{or}\quad
\sum_m r_m^2 C_m^{ren}<\infty
\tag{OEUI.17}
```

while the required endpoint theorem is unweighted:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
\tag{OEUI.18}
```

Participation therefore gives same-fluid visibility and fixed-radius control,
but not Orlicz endpoint uniform integrability on the shrinking heat-scale
sequence.

### Minimality and compactness

Weak compactness of the source marginals gives a limit measure.  The family
`(OEUI.10)` converges weak-* to \(\delta_{s=0}\), so compactness is compatible
with the terminal atom.  Minimality can choose a least remaining atom, but it
does not convert a finite measure into a uniformly integrable family.

### Entropy

A branch-entropy or parent-cloud entropy charge would have to force either a
finite branching alphabet, a fixed parent mass share, or a definite entropy drop
on each terminal refill.  Current same-fluid ancestry and bounded overlap do not
provide that.  Entropy language therefore does not produce `(OEUI.6)` unless it
first proves a real superlinear cost on the same selected source marginal.

## 5. Proof effect

The Orlicz route is now role-separated:

```math
\boxed{
\text{Orlicz/de la Vallee-Poussin control is a sufficient consumer.}
}
\tag{OEUI.19}
```

and

```math
\boxed{
\text{current NS balances do not produce that control on }a_m.
}
\tag{OEUI.20}
```

Thus Orlicz is not an independent forward-gold supplier from the installed
inputs.  It is equivalent, at this endpoint, to proving a genuine same-carrier
super-\(L^1\), source-square/Carleson, strict no-waste Lyapunov, selected
critical-carrier nonconcentration, or rigid-Zeno no-source theorem.

## Verdict

The Orlicz endpoint branch is exhausted as a production shortcut.

New forward-gold progress must prove an actual same-carrier source-time payment.
Without that payment, the terminal layer `(OEUI.10)` remains visible but not
excluded by forward gold, and the failure of `(OEUI.3)` must be handled by the
CM Pack/Part/Field readout rather than renamed as an Orlicz theorem.
