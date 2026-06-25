---
theorem_id: forward-gold-signed-clock-direct-route-exhaustion-20260624
status: direct-proof-edge-not-closed-rectified-annular-flux-clock-remains-open
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Records the current direct attack on the live gold edge after checking the
  authoritative frontier and the existing same-packet support surfaces. The
  center pulse is attached to the later outer-annulus stress/strain history at
  the smooth same-material level. Initial smooth data supplies finite entrance
  records at every fixed continuation depth. The remaining unproved line is the
  scale-critical, same-packet rectified annular flux-derivative clock estimate.
  The available smooth material tower, bounded-cross-storage, affine-strain,
  net-versus-total, and gauge-reduced flux derivative calculations do not
  produce the required sign or summability.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-test-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-reduced-annular-flux-derivative-sign-structure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-frequency-data-to-material-clock-pressure-test-20260624.md
---

# Signed Clock Direct Route Exhaustion

Date: 2026-06-24

## 0. Result

The live object is still the same physical object:

```math
\text{rising terminal center spike}
\longrightarrow
\text{same-fluid outer annular stress/strain return}
\longrightarrow
\text{full pressure-viscosity-incompressibility-velocity material clock}.
\tag{SCE.1}
```

The first arrow is installed at the smooth same-material level by the transported
annular storage identity.  The initial pulse/frequency picture is also
installed: original smooth data may carry infinitely many frequencies, but for
every fixed continuation depth it gives a finite material entrance record.

The direct attack did not close the last arrow.  The exact remaining estimate is
the same-packet rectified annular flux-derivative clock:

```math
\boxed{
\sum_j
\int_{J_j}
\left|
{d\over ds}F_{\phi_j}^{\sharp}(s)
\right|\,ds
<\infty
}
\tag{SCE.2}
```

for every selected terminal heat-scale family with bounded same-material
overlap, where

```math
F_\phi^\sharp(s)
=
\int U_iT^\sharp_{ij}\partial_j\phi\,dy,
\qquad
T^\sharp=-PI+2\nu S(U),
\tag{SCE.3}
```

after subtracting the Galilean velocity and affine pressure gauge.  Equivalently,
one must prove the finite full material service clock

```math
\int \Theta_N(\sigma)\,d\sigma<\infty
\tag{SCE.4}
```

or the signed master balance

```math
d\mathfrak L_{4B,N}
+
c\,d\Omega_N
+
d\mathcal L_{4B,N}
\le
dR_N^0,
\qquad
\int dR_N^0<\infty,
\tag{SCE.5}
```

with

```math
d\Omega_N
\supset
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
\sum_j
\left|
{d\over ds}F_{\phi_j}^{\sharp}
\right|\,ds .
\tag{SCE.6}
```

The current repo does not prove `(SCE.2)`, `(SCE.4)`, or `(SCE.5)`.

## 1. What is already proved

For a transported cutoff \(\phi\), the same-material local energy identity is

```math
{d\over ds}M_\phi(s)
+
2\nu\int\phi |S(V)|^2\,dy
=
-\int V\cdot(-QI+2\nu S(V))\nabla\phi\,dy .
\tag{SCE.7}
```

Thus center storage change is attached to the same outer-annulus stress/strain
history before any terminal limit is taken.  This is the pay-it-back-later
mechanism in the smooth packet.

For net-versus-total traffic, the scalar rectification lemma gives, on
normalized intervals \(J\),

```math
\int_J |F_\phi(s)|\,ds
\le
\left|\int_JF_\phi(s)\,ds\right|
+
\int_J |F_\phi'(s)|\,ds .
\tag{SCE.8}
```

The signed net term is paid by `(SCE.7)`.  The remaining total-traffic term is
exactly the rectified flux-derivative clock.

## 2. Direct material tower calculation

The pulled-back smooth material packet is

```math
\partial_s v + A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0 .
\tag{SCE.9}
```

At fixed continuation depth \(N\), differentiating and testing the same packet
gives the correct BKM-type law

```math
dE_N
+
dD_N^{vis}
+
dD_N^{rad}
\le
C\,\Theta_N E_N\,d\sigma
+
dR_N^0 .
\tag{SCE.10}
```

Therefore

```math
d[\log(1+E_N)]_+
\le
C\,\Theta_N\,d\sigma
+
dR_N^0 .
\tag{SCE.11}
```

This proves that a finite full material clock propagates the entrance record.
It does not prove the clock is finite.

## 3. Bounded cross-storage cannot be the missing sign by itself

For the exact local affine strain normal form

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
A=A^\top,\quad \operatorname{tr}A=0,
\tag{SCE.12}
```

one has

```math
(u\cdot\nabla)u+\nabla p=\nu\Delta u=0 .
\tag{SCE.13}
```

The material metric still grows:

```math
{d\over dt}\log |D_aX(t)e_1|=\lambda
\tag{SCE.14}
```

for \(A=\operatorname{diag}(\lambda,-\lambda/2,-\lambda/2)\).  Any primitive
that cancels this positive clock directly is of the form

```math
X(t)=-c\log |D_aX(t)e_1|,
\tag{SCE.15}
```

which is unbounded below as the strain history grows.  A bounded same-packet
cross-storage cannot turn unlimited material strain history into a finite
left-side clock by algebra alone.

## 4. Gauge-reduced flux derivative has no hidden positive bulk

After subtracting the Galilean velocity and affine pressure gauge,

```math
V=m(s)+U,
\qquad
Q=-m'(s)\cdot y+c(s)+P,
\tag{SCE.16}
```

the reduced equation is

```math
D_sU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U).
\tag{SCE.17}
```

With \(D_s\phi=0\),

```math
{d\over ds}F_\phi^\sharp
=
I_1+I_2+I_3,
\tag{SCE.18}
```

where

```math
I_1
=
\int(\partial_kT^\sharp_{ik})T^\sharp_{ij}\partial_j\phi\,dy,
\tag{SCE.19}
```

```math
I_2
=
\int U_i(D_sT^\sharp_{ij})\partial_j\phi\,dy,
\tag{SCE.20}
```

and

```math
I_3
=
-\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi)\,dy .
\tag{SCE.21}
```

The possible coercive term \(I_1\) gives, after integration by parts,

```math
\begin{aligned}
I_1
= {}&
{1\over2}\int |T^\sharp|^2\Delta\phi\,dy \\
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
\tag{SCE.22}
```

This is a same-packet collar/tower identity.  It is not a nonnegative bulk loss.
The terms \(I_2\) and \(I_3\) also remain same-packet pressure, strain, velocity,
viscosity, incompressibility, and collar service terms.  They do not acquire a
sign merely from the transported stress form.

## 5. Current proof state

The physical attachment is not open.  The center pulse cannot be detached from
the later same-fluid annular stress/strain history at the smooth prelimit level.

The unproved mathematical statement is the finite normalized clock:

```math
\sum_j
\int_{J_j}
\left|
{d\over ds}F_{\phi_j}^{\sharp}(s)
\right|\,ds
<\infty,
\tag{SCE.23}
```

or an equivalent signed master balance `(SCE.5)`.  The support surfaces prove
that every term in the clock belongs to the full same-packet
pressure-viscosity-incompressibility-velocity law.  They do not prove the
clock is finite.

Consequently, the MPP gold route is not closed by the current installed
ingredients.  The exact remaining line is
`SignedSmoothSamePacketCommutatorCoercivity.A`, now in the concrete rectified
annular flux-derivative form `(SCE.23)`.
