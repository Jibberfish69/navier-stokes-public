# Spectral Carrier-Floor-Leakage Direction Note

## Purpose

This note records the new spectral closure direction opened on the classical
Navier--Stokes lane.

It does **not** replace the current Hardy/Volterra scale-memory repair route.
Its job is to line up five already-live perspectives and show that they are
all reading the same underlying closure problem:

1. classical local equations;
2. ordered derivative tower;
3. parity split;
4. Fourier/harmonic transfer picture;
5. the NC torus carrier-floor-leakage packet.

## Main synthesis

The common classical object is the Fourier-mode equation

```math
\partial_t \hat u(k,t)
+
\nu |k|^2 \hat u(k,t)
=
-\mathbb P_k \sum_{\ell+m=k}
\big(\hat u(\ell,t)\cdot i m\big)\hat u(m,t).
\tag{1}
```

This one identity carries all five lenses.

## How the five lenses line up

### 1. Classical local equations

Inverse Fourier transform of `(1)` gives the original classical system

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu\Delta u,
\qquad
\nabla\cdot u = 0.
\tag{2}
```

So the local PDE and the spectral mode law are the same equation in different
coordinates.

### 2. Ordered derivative tower

Differentiating `(2)` corresponds in frequency to multiplying `(1)` by powers
of `ik` or `|k|`.

So the derivative tower is the weighted-frequency shadow of the same mode
equation:

```math
\widehat{\partial_x^\alpha \partial_t^m u}(k,t)
=
(ik)^\alpha \partial_t^m \hat u(k,t).
\tag{3}
```

Thus the ordered tower is not a separate problem. It is the frequency mode
equation observed through higher weights.

### 3. Parity split

The parity discussion is also a shadow of `(1)`:

- one spatial derivative contributes one factor of `ik`;
- even derivative counts preserve cosine/even type up to sign;
- odd derivative counts flip cosine/sine or even/odd symmetry type.

So parity is a bookkeeping lens for sorting the tower into even/odd channels
and tracking transfer. It is not a separate PDE, and it does not determine the
closure argument.

### 4. Fourier / harmonic transfer picture

In `(1)`, viscosity is diagonal:

```math
-\nu |k|^2 \hat u(k,t).
\tag{4}
```

The nonlinearity is additive frequency convolution:

```math
\sum_{\ell+m=k}
\big(\hat u(\ell,t)\cdot i m\big)\hat u(m,t).
\tag{5}
```

So the spectral closure problem is:

```math
\boxed{
\text{can quadratic mode-transfer refill weighted high frequencies faster than}
}
```

```math
\boxed{
\text{the modewise damping }|k|^2\text{ removes them?}
}
```

### 5. NC torus carrier-floor-leakage packet

The NC torus packet already has the right **shape**:

- carrier block;
- spectral floor on the tail;
- controlled leakage into the tail;
- exact cancellation of the fake nonlinear remainder.

So the usable classical hint from the NC side is not a direct theorem export
here. It is an architectural clue:

```math
\boxed{
\text{split classical NS into carrier + tail + spectral floor + leakage + exact cancellation.}
}
```

That is the classical theorem shape this note promotes.

## Classical carrier-floor-leakage split

Fix a dyadic cutoff `K=2^N` and define

```math
u = u_{<K} + u_{\ge K},
\qquad
u_{<K}:=P_{<K}u,
\quad
u_{\ge K}:=P_{\ge K}u.
\tag{6}
```

The classical tail quantities are

```math
T_0(K,t) := \|P_{\ge K}u(t)\|_{L_x^2}^2,
\qquad
Q_0(K,t) := \||\nabla|P_{\ge K}u(t)\|_{L_x^2}^2.
\tag{7}
```

The tail energy identity is

```math
\frac12 \frac{d}{dt}T_0(K,t) + \nu Q_0(K,t)
=
-\left\langle P_{\ge K}\big((u\cdot\nabla)u\big),P_{\ge K}u\right\rangle.
\tag{8}
```

So:

- `T_0` is the tail state;
- `Q_0` is the spectral floor / viscous damping;
- the right-hand side is the leakage.

## New classical theorem target

The clean classical spectral target is:

```math
\boxed{
\text{Leakage}_0(K,t)
\text{ is absorbable by }
\eta\nu\,Q_0(K,t)
\text{ plus a controlled carrier term.}
}
```

More concretely, one wants

```math
\int_0^T \mathrm{Leakage}_0(K,t)\,dt
\le
C\int_0^T \mathrm{Carrier}_0(K,t)\,T_0(K,t)\,dt
+
\eta\nu\int_0^T Q_0(K,t)\,dt
+
C_* K^{-2\delta}.
\tag{9}
```

If `(9)` holds on the classical surface, then the tail cannot refill faster
than dissipation plus controlled carrier forcing allow.

## Relation to the existing Euclidean route

This spectral direction is not foreign to the current lane.
It is the frequency-language reformulation of the already-live scale barrier:

- `scale-barrier-transport-defect-lemma.md`
- `scale-barrier-tail-lemma.md`
- `all-scale-frequency-transfer-inefficiency-theorem.md`

The difference is emphasis:

- the dyadic notes were written as packet reductions;
- the present direction rewrites the same bridge as a classical
  carrier-floor-leakage closure theorem.

## Honest boundary

At present the strongest base-order theorem surface in this direction is the
`s=0` tail-energy closure.

The higher weighted analogues belong to the gradient/enstrophy-tail side and
are not yet rewritten in this exact spectral language here.

So the current new direction is:

```math
\boxed{
\text{recast the classical scale barrier as a spectral carrier-floor-leakage theorem,}
}
```

```math
\boxed{
\text{then test whether the same architecture can be pushed to the higher weighted surfaces.}
}
```

## Honest weighted upgrade

The first honest weighted upgrade is **not**

```math
\mathcal L_N \cdot T_1.
```

One extra derivative changes the supported carrier surface. The live weighted
carrier is

```math
\widetilde\Lambda_N^\sharp
=
\Lambda_N+\Theta_N^\sharp
=
\Big(1+\sum_{k\le N-4}2^{5k/2}\|\Delta_k u\|_{L^2_x}\Big)
+
2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u\|_{L^2_x}^2.
\tag{10}
```

The exact weighted spectral reduction is now recorded in
[weighted-spectral-carrier-floor-leakage-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-spectral-carrier-floor-leakage-reduction.md):

```math
\mathrm{Leakage}_1
\le
C\,\widetilde\Lambda_N^\sharp\,T_1
+
\eta\nu\,Q_1
+
\mathfrak H_N^{grad,lift}
+
C_*2^{-2\delta N}.
\tag{11}
```

So the weighted route does **not** fail everywhere. It fails at one exact
packet:

```math
\mathfrak H_N^{grad,lift},
\qquad
N+M<k<j-4.
\tag{12}
```

That is the only genuinely open weighted analytic burden on the current
supported surface.

## Sign-sensitive spectral route

The correct upgrade of the lifted packet is also not a better shellwise
absolute-value estimate.

The current notes already point to the right sign-sensitive architecture:

1. a signed continuous-scale commutator density;
2. a descent / telescoping identity for that signed density;
3. only afterwards a pushdown to the positive flux theorem `(L-Flux)`;
4. finally, carrier-floor-leakage closure.

So the real replacement for lossy shellwise positivity is:

```math
\text{signed scale descent}
\Longrightarrow
\text{signed telescoping}
\Longrightarrow
\text{positive flux control}
\Longrightarrow
\text{spectral leakage absorption}.
\tag{13}
```

The exact dyadic-to-continuum translation of the weighted lifted packet is now
recorded in
[lifted-packet-signed-continuous-scale-translation.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-signed-continuous-scale-translation.md):
the shell geometry `N+M<k<j-4` is preserved as support data, but the theorem
object is moved to the signed commutator density `\mathfrak c_\ell`, then to
the upper-boundary packet and the middle-band flux `\Pi_N^{mid}`, and finally
to the far-corona two-scale density `\mathcal A_{\ell,r}` carrying the gap
kernel `\ell/r`.

At the continuum middle-band level this route already exhibits the explicit
far-gap kernel

```math
\frac{\ell}{r},
\tag{14}
```

which is the continuous-scale version of the dyadic gap factor `2^{-(j-k)}`.

So the honest new direction is no longer “push shellwise positivity harder.”
It is:

```math
\boxed{
\text{keep the spectral floor, freeze the weighted carrier on }
\widetilde\Lambda_N^\sharp,
}
```

```math
\boxed{
\text{and attack the lifted packet through signed continuous-scale transport loss.}
}
```
