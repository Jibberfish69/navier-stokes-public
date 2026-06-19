# R3 Tail Hs Duhamel Source Reduction

Date: 2026-06-07

Status: theorem reduction installed; not whole-space closure.

## Target

The whole-space export branch is blocked by the exterior high-order tail face

```text
TailFace_R3^Hs:
  limsup_{R -> infinity} sup_{t < T_*}
  || eta_R u(t) ||_{H^s(R^3)} > 0,
  s > 5/2.
```

Earlier notes correctly reject the false implication

```text
exterior L2 tightness => exterior Hs tightness.
```

This note reduces the remaining obstruction by Duhamel splitting. The point is
to separate the part already forced small by the exact rapid-decay and
off-diagonal kernel-tail estimates from the part that still needs a genuine
exterior nonlinear-source theorem.

## Setup

Let \(u\) be a smooth finite-energy Navier-Stokes solution on
\([0,T_*)\times R^3\), with smooth rapidly decaying divergence-free initial
data. Fix \(s>5/2\). For a large radius \(R\), let \(\eta_R\) be an exterior
cutoff supported outside \(R\) and equal to one outside \(2R\).

Use the Leray-Duhamel formula

```text
u(t) = e^{nu t Delta} u_0
       - integral_0^t e^{nu(t-tau)Delta} P div(u tensor u)(tau) dtau.
```

Split the nonlinear source by a smooth cutoff:

```text
u tensor u = chi_{<R/4}(u tensor u) + chi_{>=R/4}(u tensor u).
```

The exterior \(H^s\) tail has three contributions:

1. the heat evolution of the initial tail;
2. the far-field effect of compact-core nonlinear source;
3. the genuinely exterior nonlinear source.

## Lemma 1: Initial Tail Vanishes

For rapidly decaying smooth data,

```text
lim_{R -> infinity} sup_{0 <= t <= T}
|| eta_R e^{nu t Delta} u_0 ||_{H^s(R^3)} = 0
```

for every finite \(T<T_*\).

### Proof

Since \(u_0\) is smooth and rapidly decaying, \(u_0\in H^m_\ell\) for every
finite derivative order \(m\) and polynomial weight \(\ell\). The exact input
used here is that the heat flow preserves Schwartz tails uniformly on finite
time intervals:

```text
for every L>0,
|| eta_R e^{nu t Delta} u_0 ||_{H^s}
  <= C_{s,L,T,u_0} R^{-L},
0 <= t <= T < T_*.
```

The right side tends to zero as \(R\to\infty\).

## Lemma 2: Compact-Core Source Has Vanishing Far Tail

Let \(K_{s,\nu}(\theta,z)\) be the kernel of
\(\Lambda^s e^{\nu\theta\Delta}P\nabla\cdot\).  The compact-core part of the
Duhamel source is controlled by the following off-diagonal tail bound:

```text
for every L>0,
integral_0^T sup_{|y| <= R/4}
  || eta_R(.) K_{s,nu}(theta, . - y) ||_{L^2_x} dtheta
<= C_{s,nu,T,L} R^{-L}.
```

Since \(\|u(\tau)\otimes u(\tau)\|_{L^1}\le \|u(\tau)\|_{L^2}^2\le E_0\), this
implies

```text
lim_{R -> infinity} sup_{0 <= t <= T}
|| eta_R integral_0^t e^{nu(t-tau)Delta} P div(chi_{<R/4} u tensor u)(tau) dtau ||_{H^s}
= 0.
```

### Proof

On the support of \(\eta_R(x)\chi_{<R/4}(y)\), the separation satisfies
\(|x-y|\ge R/2\). The displayed kernel-tail inequality gives the operator bound,
and Minkowski gives

```text
sup_{0 <= t <= T}
|| eta_R integral_0^t e^{nu(t-tau)Delta} P div(chi_{<R/4} u tensor u)(tau) dtau ||_{H^s}
<= C_{s,nu,T,L} R^{-L} sup_{0 <= tau <= T} ||u(tau)||_{L^2}^2.
```

This tends to zero for every finite \(T<T_*\). No scale-profile or compact-core
\(H^s\) profile assumption is spent.

## Remaining Theorem: Exterior Nonlinear Source Ledger

The only surviving source for `TailFace_R3^Hs` is the exterior nonlinear-source
term:

```text
ExtSource_s(R,T)
 :=
 sup_{0 <= t < T_*}
 || eta_R integral_0^t e^{nu(t-tau)Delta} P div(chi_{>=R/4} u tensor u)(tau) dtau ||_{H^s}.
```

Therefore the exact remaining theorem can be stated as

```text
R3.ExteriorNonlinearSourceHsLedger.A:
  lim_{R -> infinity} ExtSource_s(R,T_*) = 0.
```

If this theorem is proved, then `Tail.Hs_R3` follows, and the whole-space
export branch can use the existing conditional continuation bridge.

## Why This Is Smaller Than The Old Blocker

The old blocker asked for the whole exterior \(H^s\) tail directly. That mixed
three mechanisms. Two of them are now accounted for:

```text
rapidly decaying initial ancestry -> no exterior Hs tail,
compact-core source at finite distance -> no exterior Hs tail.
```

The live mathematical work is now the exterior nonlinear source ledger. In
plain terms: the only way a whole-space high-order tail obstruction survives is
for the nonlinearity already living far out in space to keep generating
high-order exterior mass up to the terminal time.

## Noncircularity Boundary

This reduction does not spend a global \(H^s\) bound, a BKM integral, or
continuation-grade \(\int_0^{T_*} ||\nabla u||_{L^\infty}\,dt\). Those would
close the whole problem before the tail theorem.

The next noncircular proof target is an exterior nonlinear-source estimate from
original data, exterior energy tightness, pressure-tail control, and whatever
localized compact-core readout the CM route has already earned. If that estimate
requires global \(H^s\) or BKM control, it fails as a proof of the whole-space
export branch and must be replaced by a sharper exterior source mechanism.

## Effect On The Completion Map

The `R^3` branch no longer says only

```text
OriginalSmoothData_R3 => Tail.Hs_R3.
```

It says

```text
OriginalSmoothData_R3
=> initial tail killed
 + compact-core far-kernel tail killed
 + exterior nonlinear-source ledger needed.
```

The exact open mathematical object is

```text
R3.ExteriorNonlinearSourceHsLedger.A.
```
