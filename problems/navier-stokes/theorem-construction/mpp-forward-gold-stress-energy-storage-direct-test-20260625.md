---
theorem_id: forward-gold-stress-energy-storage-direct-test-20260625
status: exact-stress-energy-test-installed; same-packet-storage-but-not-full-clock-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the natural stress-energy storage on the same transported annular
  material history. The storage is fully coupled to the pressure-viscosity-
  incompressibility-velocity participation law, because it is built from the
  same Cauchy stress tensor \(T^\sharp=-PI+2\nu S(U)\). Its derivative is the
  signed material growth of pressure energy plus strain energy. It does not
  control the rectified annular flux derivative term
  \(U_i(D_tT^\sharp_{ij})\partial_j\phi\), because that term pairs
  \(D_tT^\sharp\) with \(U\otimes\nabla\phi\), not with \(T^\sharp\). Cauchy
  control would require a higher \(D_tT^\sharp\)-square clock, and the
  corresponding cross-storage is exactly the annular stress-work flux already
  under variation. Thus stress energy preserves participation but only records
  the same pressure/strain material clock; it is not the missing one-way
  producer.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-controlled-annular-return-direct-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-same-packet-pressure-cubic-cancellation-recheck-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-way-full-clock-lyapunov-direct-test-20260625.md
---

# Stress-Energy Storage Direct Test

Date: 2026-06-25

## 0. Object

The object is the original smooth solution and the same transported material
annulus.  The cutoff is transported:

```math
D_t\chi=0,
\qquad
D_t=\partial_t+U\cdot\nabla,
\qquad
\nabla\cdot U=0.
\tag{SES.1}
```

The stress tensor is the same full participation tensor used in the annular
force-action calculation:

```math
T^\sharp=-PI+2\nu S(U),
\qquad
S(U)=\frac{\nabla U+\nabla U^\top}{2},
\qquad
\operatorname{tr}S(U)=0.
\tag{SES.2}
```

The annular flux derivative already isolated in the live edge contains

```math
I_2
=
\int U_i(D_tT^\sharp_{ij})\partial_j\phi\,dx .
\tag{SES.3}
```

The question is whether the natural stress energy of \(T^\sharp\) pays this
term as a bounded-below one-way storage.

## 1. Stress energy identity

Define

```math
Z_\chi(t)
=
\frac12\int \chi |T^\sharp|^2\,dx .
\tag{SES.4}
```

Since \(D_t\chi=0\) and \(\nabla\cdot U=0\),

```math
\frac{d}{dt}Z_\chi(t)
=
\int \chi\,T^\sharp:D_tT^\sharp\,dx .
\tag{SES.5}
```

Now

```math
D_tT^\sharp
=
-(D_tP)I+2\nu D_tS(U).
\tag{SES.6}
```

Using \(\operatorname{tr}S=0\) and
\(\operatorname{tr}(D_tS)=D_t(\operatorname{tr}S)=0\),

```math
\begin{aligned}
T^\sharp:D_tT^\sharp
&=
(-PI+2\nu S):\bigl(-(D_tP)I+2\nu D_tS\bigr)\\
&=
3P\,D_tP
+4\nu^2 S:D_tS .
\end{aligned}
\tag{SES.7}
```

Equivalently,

```math
|T^\sharp|^2=3P^2+4\nu^2|S|^2,
\tag{SES.8}
```

and `(SES.5)` is just the transported derivative of the local pressure-plus-
strain stress record:

```math
\frac{d}{dt}Z_\chi(t)
=
\frac{d}{dt}
\int\chi
\left(
\frac32P^2+2\nu^2|S|^2
\right)dx .
\tag{SES.9}
```

Thus stress energy is a real same-packet storage, but its derivative is not a
new loss. It is the signed growth of the pressure/strain material record.

## 2. Mismatch with the annular flux derivative

The active flux derivative term is `(SES.3)`.  Stress energy pairs
\(D_tT^\sharp\) with \(T^\sharp\), while `(SES.3)` pairs \(D_tT^\sharp\) with
the annular vector \(U\otimes\nabla\phi\):

```math
T^\sharp:D_tT^\sharp
\qquad\text{versus}\qquad
(U\otimes\nabla\phi):D_tT^\sharp .
\tag{SES.10}
```

There is no algebraic identity turning the second pairing into the first on the
same transported annulus.  A Cauchy estimate would give only

```math
\left|
\int U_i(D_tT^\sharp_{ij})\partial_j\phi\,dx
\right|
\le
\left(\int \chi |D_tT^\sharp|^2\,dx\right)^{1/2}
\left(\int \chi^{-1}|U|^2|\nabla\phi|^2\,dx\right)^{1/2}.
\tag{SES.11}
```

This asks for a higher material-time stress clock

```math
\int\chi |D_tT^\sharp|^2\,dx,
\tag{SES.12}
```

which is not produced by `(SES.5)`. The derivative `(SES.5)` is signed and
linear in \(D_tT^\sharp\), not a square.

## 3. Cross-storage collapse

The storage naturally paired with `(SES.3)` is not stress energy. It is the
annular stress-work flux itself:

```math
F_\phi^\sharp(t)
=
\int U_iT^\sharp_{ij}\partial_j\phi\,dx .
\tag{SES.13}
```

Differentiating `(SES.13)` gives exactly the already-known decomposition:

```math
\frac{d}{dt}F_\phi^\sharp
=
\int (\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi
+
\int U_i(D_tT^\sharp_{ij})\partial_j\phi
-
\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi).
\tag{SES.14}
```

So the cross-storage does not pay the variation. It is the flux whose
rectified variation is being tested.

## 4. Result

The stress-energy storage gives this exact conclusion:

```math
\boxed{
\text{stress energy preserves the full participation packet.}
}
\tag{SES.15}
```

It also gives this exact nonclosure:

```math
\boxed{
\text{stress energy records pressure/strain growth; it does not produce}
\text{ finite rectified annular force-action variation.}
}
\tag{SES.16}
```

The live producer remains the same one already named by the current edge:

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1_x}\,dt
<\infty ,
\tag{SES.17}
```

or an equivalent bounded-below same-material coercive law for the full
pressure-viscosity-incompressibility-velocity material clock.
