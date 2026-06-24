---
theorem_id: forward-gold-gauge-reduced-annular-flux-derivative-sign-structure-test-20260624
status: direct-sign-test-no-hidden-coercive-bulk-from-gauge-reduced-flux-derivative
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Tests the exact gauge-reduced annular flux derivative after the Galilean
  velocity and affine pressure gauge have been removed. The calculation keeps
  the full pressure-viscosity-incompressibility-velocity packet and the
  transported annular cutoff. It shows that the derivative is a same-packet
  service quantity, but it does not expose a hidden nonnegative stress-square
  or strain-square bulk term. The first integration by parts leaves collar
  Hessian and stress-curl contractions; the stress-time term leaves pressure
  and tower commutators. Thus the live producer remains the signed smooth
  same-packet commutator/coercivity estimate for the gauge-reduced rectified
  annular clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-gauge-quotient-correction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
---

# Gauge-Reduced Annular Flux Derivative Sign-Structure Test

Date: 2026-06-24

## 0. Result

The gauge-reduced annular flux derivative is the right same-fluid object, but
its raw derivative does not contain a free coercive sign.

After subtracting the local Galilean velocity and affine pressure gauge, the
remaining variables obey the same transported pressure-viscosity-incompressibility
law.  Differentiating the reduced annular stress-work flux gives exact
same-packet terms.  The first possible place for a hidden positive bulk term
is the product

```math
\int (\nabla\cdot T^\sharp)\cdot T^\sharp\nabla\phi .
\tag{GAFS.1}
```

That term is not a positive square.  Integration by parts leaves collar
Hessian terms and a curl-type stress derivative term with no sign.  Therefore
this calculation does not prove the missing full clock.  It verifies that the
remaining obstruction is genuinely the signed smooth same-packet commutator
coercivity theorem, not an omitted elementary stress-square identity.

## 1. Reduced variables and exact equation

Start in a normalized smooth packet:

```math
\partial_s V+(V\cdot\nabla)V+\nabla Q=\nu\Delta V,
\qquad
\nabla\cdot V=0 .
\tag{GAFS.2}
```

Split off the harmless local gauge:

```math
V=m(s)+U,
\qquad
Q=-m'(s)\cdot y+c(s)+P .
\tag{GAFS.3}
```

With the full material derivative

```math
D_s=\partial_s+V\cdot\nabla
\tag{GAFS.4}
```

the reduced velocity satisfies

```math
D_sU+\nabla P=\nu\Delta U,
\qquad
\nabla\cdot U=0.
\tag{GAFS.5}
```

Equivalently, with

```math
T^\sharp=-PI+2\nu S(U),
\qquad
S(U)={1\over2}(\nabla U+\nabla U^\top),
\tag{GAFS.6}
```

one has the exact reduced stress form

```math
D_sU=\nabla\cdot T^\sharp.
\tag{GAFS.7}
```

Let the annular cutoff be transported by the same fluid:

```math
D_s\phi=0.
\tag{GAFS.8}
```

Then

```math
D_s\nabla\phi=-(\nabla U)^\top\nabla\phi,
\tag{GAFS.9}
```

because the removed velocity mode \(m(s)\) has no spatial gradient.

The gauge-reduced annular stress-work flux is

```math
F_\phi^\sharp(s)
=
\int U_i T^\sharp_{ij}\partial_j\phi\,dy .
\tag{GAFS.10}
```

Since \(V\) is divergence-free, differentiating under the material derivative
gives

```math
\begin{aligned}
{d\over ds}F_\phi^\sharp
= {}&
\int (D_sU_i)T^\sharp_{ij}\partial_j\phi\,dy \\
&+
\int U_i(D_sT^\sharp_{ij})\partial_j\phi\,dy \\
&-
\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi)\,dy .
\end{aligned}
\tag{GAFS.11}
```

Substituting `(GAFS.7)` into the first term gives the candidate coercive
piece:

```math
I_1
=
\int (\partial_kT^\sharp_{ik})T^\sharp_{ij}\partial_j\phi\,dy .
\tag{GAFS.12}
```

## 2. The first term has no definite sign

Integrate `(GAFS.12)` by parts in \(y_k\):

```math
I_1
=
-
\int T^\sharp_{ik}(\partial_kT^\sharp_{ij})\partial_j\phi\,dy
-
\int T^\sharp_{ik}T^\sharp_{ij}\partial_{kj}\phi\,dy .
\tag{GAFS.13}
```

The first integral in `(GAFS.13)` is not the gradient of
\(|T^\sharp|^2/2\).  The contraction is

```math
T^\sharp_{ik}\partial_kT^\sharp_{ij},
\tag{GAFS.14}
```

whereas

```math
{1\over2}\partial_j|T^\sharp|^2
=
T^\sharp_{ik}\partial_jT^\sharp_{ik}.
\tag{GAFS.15}
```

Their difference is the stress-curl contraction

```math
T^\sharp_{ik}
\left(
\partial_kT^\sharp_{ij}
-
\partial_jT^\sharp_{ik}
\right).
\tag{GAFS.16}
```

Thus

```math
\begin{aligned}
I_1
= {}&
{1\over2}\int |T^\sharp|^2\Delta\phi\,dy  \\
&-
\int
T^\sharp_{ik}
\left(
\partial_kT^\sharp_{ij}
-
\partial_jT^\sharp_{ik}
\right)
\partial_j\phi\,dy \\
&-
\int
T^\sharp_{ik}T^\sharp_{ij}\partial_{kj}\phi\,dy .
\end{aligned}
\tag{GAFS.17}
```

Every term in `(GAFS.17)` is a same-annulus collar/tower term.  None is a
nonnegative bulk loss.  The sign depends on the cutoff Hessian and on the
stress-curl contraction.

This is the exact point where the tempting shortcut fails.  The stress form
does not give

```math
I_1\le -c\int |T^\sharp|^2+\text{legal terms}
\tag{GAFS.18}
```

or

```math
I_1\le -c\int |\nabla\cdot T^\sharp|^2+\text{legal terms}.
\tag{GAFS.19}
```

It gives the collar identity `(GAFS.17)`.

## 3. The stress-time term returns to the material tower

The second term in `(GAFS.11)` is

```math
I_2
=
\int U_i(D_sT^\sharp_{ij})\partial_j\phi\,dy .
\tag{GAFS.20}
```

From `(GAFS.6)`,

```math
D_sT^\sharp
=
-(D_sP)I+2\nu D_sS(U).
\tag{GAFS.21}
```

The strain derivative satisfies

```math
D_sS(U)
=
\operatorname{sym}\nabla(D_sU)
-
\operatorname{sym}\big((\nabla U)^2\big).
\tag{GAFS.22}
```

Using `(GAFS.7)`,

```math
D_sS(U)
=
\operatorname{sym}\nabla(\nabla\cdot T^\sharp)
-
\operatorname{sym}\big((\nabla U)^2\big).
\tag{GAFS.23}
```

The pressure service term is tied to the transported pressure equation.  Since

```math
-\Delta P=\partial_iU_j\,\partial_jU_i,
\tag{GAFS.24}
```

one has

```math
-\Delta(D_sP)
=
D_s(\partial_iU_j\,\partial_jU_i)
+
[\Delta,D_s]P.
\tag{GAFS.25}
```

The commutator \([\Delta,D_s]\) contains \(\nabla U\), \(\nabla^2U\), and
pressure derivatives.  Therefore `(GAFS.20)` is a finite material tower
service term: pressure service, viscous stress derivatives, quadratic
velocity-gradient products, and collar factors.  It is still the same full
participation packet.  It is not a signed loss by itself.

## 4. The remaining transport term is also same-packet service

The third term in `(GAFS.11)` is

```math
I_3
=
-
\int
U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi)\,dy .
\tag{GAFS.26}
```

It is cubic in the reduced velocity/stress/gradient packet and supported on
the transported collar.  Its sign is unrestricted.  It belongs to the same
material pressure-viscosity-incompressibility-velocity service density.

## 5. Exact consequence

The gauge-reduced rectified clock has the exact decomposition

```math
\left|{d\over ds}F_\phi^\sharp\right|
\le
|I_1|+|I_2|+|I_3|,
\tag{GAFS.27}
```

with \(I_1,I_2,I_3\) given by `(GAFS.17)`, `(GAFS.20)`, and `(GAFS.26)`.
Each term is read on the same transported material annulus and uses only
reduced velocity, reduced pressure, strain, viscosity, incompressibility, and
the transported cutoff.

So this test proves same-packet admission in the gauge-corrected variables:

```math
\left|{d\over ds}F_\phi^\sharp\right|
\le
\Xi_{N,\psi}^{\sharp}(s).
\tag{GAFS.28}
```

It does not prove

```math
\sum_m\int_{-1}^{0}\Xi_{N,\psi_m}^{\sharp}(s)\,ds<\infty.
\tag{GAFS.29}
```

The missing theorem remains the signed smooth same-packet coercivity line:

```math
d\mathfrak L_{4B,N}
+
c\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\Omega_N^{ann,\sharp}
\right)
+
d\mathcal L_{4B,N}
\le
dR_N^0,
\qquad
\int dR_N^0<\infty.
\tag{GAFS.30}
```

Here \(d\Omega_N^{ann,\sharp}\) is the gauge-reduced rectified annular
stress-work clock generated by `(GAFS.27)`.

## 6. Proof-state effect

This note closes the last elementary-sign shortcut for the annular return
mechanism.  The outer annulus still carries the later stress/strain return,
and the center pulse is still attached to that history.  After gauge reduction,
however, differentiating that history does not reveal a hidden nonnegative
bulk term.  The derivative is exactly the same material service clock.

Therefore the remaining proof cannot be completed by an omitted integration by
parts in the annular stress-work flux.  It must prove the signed
same-packet four-body coercivity estimate `(GAFS.30)` itself, or the MPP
closure remains conditional.
