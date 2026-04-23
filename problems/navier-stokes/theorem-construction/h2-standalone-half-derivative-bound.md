# H2: Standalone Half-Derivative Bound

## Status

Frontier critical-energy target for the classical three-dimensional
Navier-Stokes equation. This note isolates the exact `\dot H^{1/2}` control
needed to make the conditional critical-space closure theorem non-circular.

It does not prove the bound. It records the coercive statement that must be
supplied by a same-surface mechanism other than endpoint `BMO`/log control.

## Critical Energy

For a smooth classical vorticity field `\omega`,

```math
E_{1/2}(t) := \|\omega(t)\|_{\dot H^{1/2}_x}^2
= \int_{\mathbb R^3} |\xi|\,|\widehat{\omega}(\xi,t)|^2\,d\xi.
```

## Exact Fractional Energy Identity

Applying `\Lambda^{1/2}` to the vorticity equation and testing against
` \Lambda^{1/2}\omega` gives

```math
\frac12\frac{d}{dt}E_{1/2}(t)
+ \nu \|\omega(t)\|_{\dot H^{3/2}_x}^2
= \mathcal N_{1/2}(t),
```

where

```math
\mathcal N_{1/2}(t)
:=
\big\langle \Lambda^{1/2}(\omega\cdot\nabla u),
\Lambda^{1/2}\omega\big\rangle.
```

The transport part cancels by divergence-free structure after the standard
commutator rewrite. The remaining term is the stretching channel.

## Coercive Target

To close the `\dot H^{1/2}` level without circular use of endpoint
`BMO`/log control, it is enough to prove a structural estimate of the form

```math
\mathcal N_{1/2}(t)
\le
(1-\delta)\nu \|\omega(t)\|_{\dot H^{3/2}_x}^2
+ C_\delta \|\omega(t)\|_{\dot H^{1/2}_x}^2
```

for some `\delta>0`, uniformly on the classical existence interval.

Equivalent admissible inputs are:

- a dyadic coherence defect at every shell;
- an alignment-defect inequality suppressing stretching;
- a shellwise half-derivative gain that converts the high-frequency cascade
  into a summable defect;
- a transport-mixing mechanism that yields the same coercive inequality after
  time integration.

Any one of those inputs would make `E_{1/2}` obey a Grönwall inequality and
therefore give

```math
\sup_{t\in[0,T]} \|\omega(t)\|_{\dot H^{1/2}_x}^2
\le
C(T)\,\|\omega_0\|_{\dot H^{1/2}_x}^2.
```

## Conditional Dyadic Coherence Defect

Let

```math
A_j(t) := \sum_{k\le j} 2^{\frac52 k}\|\Delta_k\omega(t)\|_{L^2_x}.
```

Assume the quantified strain suppression condition

```math
A_{j-1}(t)\le (1-\delta)\nu 2^{2j}
```

for some `\delta\in(0,1)` and every dyadic index `j` and time `t`.

Then the principal dyadic interaction obeys the shellwise coercive bound

```math
\big|\big\langle \Delta_j(\omega\cdot\nabla u),\Delta_j\omega\big\rangle\big|
\le
(1-\delta)\nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
 +
C_\delta 2^{-2j}\|\omega(t)\|_{\dot H^{1/2}_x}^2.
```

This follows from the exact dyadic decomposition in
[exact-dyadic-interaction-decomposition.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-dyadic-interaction-decomposition.md):

- the local block is controlled by `|\nabla S_{j-1}u|_{L^\infty}` and is
  bounded by the quantified strain hypothesis;
- the remainder carries the unconditional `2^{-2j}` gain.

The stronger pointwise deficit

```math
\big|\big\langle \Delta_j(\omega\cdot\nabla u),\Delta_j\omega\big\rangle\big|
\le
(1-\tfrac{\delta}{2})\nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
```

is not unconditional; it requires an additional barrier argument at the level
of the cumulative low-frequency strain.

## Monotone Barrier Reduction

With `A_j` as above, the live reduction target is to show that `A_j` obeys a
forward-invariant barrier inequality of the form

```math
\frac{d}{dt}A_j
+ c\nu 2^{2j}A_j
\le
C A_j^2
+ C2^{-2j}\|\omega(t)\|_{\dot H^{1/2}_x}^2.
```

If this barrier inequality is proved, then the threshold

```math
A_j(t)\lesssim \nu 2^{2j}
```

becomes forward invariant, which is exactly the quantified strain suppression
condition needed above.

### Barrier evaluation caveat

The pointwise test at `A_j=\nu 2^{2j}` is only a local shell check. It does not
by itself yield a uniform-in-`j` half-derivative bound, because the coefficient
balance is scale-dependent and the low/intermediate shells are still governed by
the same cumulative strain functional.

The correct normalized object is

```math
B_j(t):=\frac{A_j(t)}{\nu 2^{2j}},
```

and the live barrier question is whether `\sup_j B_j(t)` stays below a fixed
threshold for all time. That is the form in which the anti-cascade mechanism
would actually close the H2 target.

### Finite-shell reduction failure

The proposed elimination of `\|\omega\|_{\dot H^{1/2}_x}` through the estimate

```math
\sum_{k\le j} 2^{k}\|\Delta_k\omega\|_2^2
\lesssim
A_j\cdot 2^{-3j/2}\|\omega\|_2
```

does not hold in the direction needed to close the barrier. The Cauchy-Schwarz
splitting only gives

```math
\sum_{k\le j} 2^{k}\|\Delta_k\omega\|_2^2
\le
\Big(\sum_{k\le j} 2^{5k/2}\|\Delta_k\omega\|_2\Big)
\Big(\sum_{k\le j} 2^{-3k}\|\Delta_k\omega\|_2^2\Big)^{1/2},
```

and the second factor is not controlled by `2^{-3j/2}\|\omega\|_2` for the
low-frequency range `k\le j`. The inequality goes the other way at the small
shells. So the reduction to a fixed finite set of low shells does not remove
the critical norm; it only relocates the unresolved burden into the low-mode
sector.

This reduction is the current live open step. It is the precise place where
the dyadic shell calculus must supply a genuine anti-cascade mechanism.

### Finite-shell closure failure

The low-shell reduction does not become automatic after truncation to finitely
many modes. For a fixed cutoff `j_0`, the weighted low-shell quantity

```math
A_{j_0}(t)=\sum_{k\le j_0}2^{\frac52 k}\|\Delta_k\omega(t)\|_{L^2_x}
```

obeys only the reduced inequality

```math
\frac{d}{dt}A_{j_0}
+ c\nu 2^{2j_0}A_{j_0}
\le
\big|\nabla u(t)\big|_{L^\infty_x}A_{j_0}
```

up to the same lower-order tail already recorded above. The allowed energy and
enstrophy inputs control `\|\omega\|_{L^2_x}` and `\|\nabla\omega\|_{L^2_x}`
in time, but they do not supply a uniform pointwise bound on
`|\nabla u|_{L^\infty_x}` at the viscous scale `\nu 2^{2j_0}`.

So finite dimensionality by itself does not close the barrier. The exact
remaining object is a dynamic suppression of low-frequency strain relative to
the viscous scale, i.e.

```math
\big|\nabla u_{<j_0}(t)\big|_{L^\infty_x}
\le
c\,\nu\,2^{2j_0},
```

which is the same shellwise anti-cascade condition restricted to the low-mode
sector.

## Final Unresolved Object

Fix `j_0`. The finite-shell barrier is equivalent, at the dyadic level, to the
low-frequency strain suppression condition

```math
\big|\nabla u_{<j_0}(t)\big|_{L^\infty_x}
\le
c\,\nu\,2^{2j_0}
```

for all `t`, where

```math
u_{<j_0}:=\sum_{k\le j_0-1}\Delta_k u.
```

On the low-frequency band, Bernstein gives the exact dyadic control

```math
\big|\nabla u_{<j_0}(t)\big|_{L^\infty_x}
\lesssim
\sum_{k\le j_0-1} 2^{\frac52 k}\|\Delta_k\omega(t)\|_{L^2_x}
=A_{j_0-1}(t).
```

So the remaining endpoint object is equivalently

```math
A_{j_0-1}(t)\le C\,\nu\,2^{2j_0}.
```

This is the precise unresolved object. It is only a dyadic low-mode statement;
no global `L^\infty` preservation under Biot–Savart is claimed.

## Available Scale-Localized Low-Mode Control

The valid Bernstein-level estimate is

```math
\|\omega_{\le j}(t)\|_{L^\infty_x}
\lesssim
2^{\frac32 j}\|\omega(t)\|_{L^2_x},
```

and, more sharply,

```math
\|\omega_{\le j}(t)\|_{L^\infty_x}
\lesssim
2^{\frac32 j}
\Big(\sum_{k\le j}2^{-3(j-k)}\|\Delta_k\omega(t)\|_{L^2_x}^2\Big)^{1/2}.
```

This is the correct scale-localized low-mode control available from the
classical surface. It is weaker than the proposed `2^j` compression, but it is
the right form for shellwise analysis. In the barrier inequality it yields a
low-frequency strain coefficient of size `2^{3j/2}\|\omega(t)\|_{L^2_x}`, which
is only automatically dominated by viscous damping at sufficiently high shells.
It does not by itself close the low-shell barrier.

## Boundary

This note is the standalone H2 target used by
`regularity-upgrade-schemas.md` in Theorem E.

It is not discharged here. The missing mathematical object is the coercive
estimate itself, proved directly from the equation rather than recovered from
endpoint continuation criteria.

The strongest current internal route to this bound is not the raw classical
dyadic path. It is the export theorem recorded in
[carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md),
which would translate the carrier coherence defect directly into the classical
low-frequency strain bound that this note isolates.

## Interfaces

- [exact-dyadic-interaction-decomposition.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-dyadic-interaction-decomposition.md)
- [dyadic-shell-gain-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
- [regularity-upgrade-schemas.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/regularity-upgrade-schemas.md)
