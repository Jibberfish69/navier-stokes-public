---
theorem_id: forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / cubic turn-off moment
status: proved-cubic-moment-turnoff-identity; remaining-bill-admission-lemma
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
completion_truth: >-
  This note installs the cubic radial strain moment as the direct c0 turn-off
  coordinate. It proves the exact spherical identity
  int_{S^2} (theta.S theta)^3 = (32 pi/105) tr(S^3) for tracefree S, and the
  total-turnoff identity showing that a finite-energy/localized turn-off of a
  nonzero Vieillefosse affine imprint has scale-uniform signed cubic moment
  variation. This kills the artificial 1/L leak produced by quadratic
  slope-squared turn-off charges. It does not yet prove c0: the remaining
  theorem is the non-tautological same-field bill admission
  CubicRadialMomentOddPayment.A, namely that the material-time oriented
  transverse pressure/current bill dominates the positive turn-off rise
  [M']_+.
---

# Cubic Radial Strain Moment Turn-Off

Use the cubic radial strain moment, not the quadratic boundary moment, for the
direct \(c_0\) turn-off bridge. The quadratic moment says only that an affine
core leaves an imprint. The cubic moment keeps the Vieillefosse sign.

## 1. Radial strain readout

On a normalized atom centered at the active packet, set

```math
r=e^\rho,
\qquad
w(\rho,\theta)
=
e^{-\rho}u(e^\rho\theta)\cdot\theta
=
r^{-1}u(r\theta)\cdot\theta .
\tag{CRM.1}
```

Define the signed cubic radial moment

```math
M(\rho)
=
\int_{S^2}w(\rho,\theta)^3\,d\theta .
\tag{CRM.2}
```

If the packet has affine strain core \(u(x)=Sx\), with \(S=S^T\) and
\(\operatorname{tr}S=0\), then

```math
w(\rho,\theta)=\theta\cdot S\theta
\tag{CRM.3}
```

and \(M\) is independent of \(\rho\).

## 2. Cubic moment equals Vieillefosse sign

The sixth spherical moment identity is

```math
\int_{S^2}
\theta_i\theta_j\theta_k\theta_l\theta_m\theta_n\,d\theta
=
\frac{4\pi}{105}
\sum_{\text{15 pairings}}
\delta_{\alpha_1\alpha_2}
\delta_{\alpha_3\alpha_4}
\delta_{\alpha_5\alpha_6}.
\tag{CRM.4}
```

Contracting (CRM.4) with \(S_{ij}S_{kl}S_{mn}\) gives

```math
\int_{S^2}(\theta\cdot S\theta)^3\,d\theta
=
\frac{4\pi}{105}
\left[
(\operatorname{tr}S)^3
+6\operatorname{tr}S\,\operatorname{tr}(S^2)
+8\operatorname{tr}(S^3)
\right].
\tag{CRM.5}
```

For tracefree \(S\),

```math
M_{\rm aff}
=
\int_{S^2}(\theta\cdot S\theta)^3\,d\theta
=
\frac{32\pi}{105}\operatorname{tr}(S^3).
\tag{CRM.6}
```

On the Vieillefosse sheet,

```math
\mathsf S_V(Q)
\simeq
-\operatorname{tr}(S^3),
\tag{CRM.7}
```

so the inner affine core satisfies

```math
-M(0)\gtrsim \mathsf S_V(Q)
\tag{CRM.8}
```

after the fixed normalization of the atom.

## 3. Total turn-off is independent of collar length

A lawful finite-energy/localized turn-off of the affine imprint has an outer
radius sequence or parent collar where the cubic radial moment disappears:

```math
M(\rho_j)\to0 .
\tag{CRM.9}
```

For every such \(\rho_j\),

```math
-M(0)
=
\int_0^{\rho_j}M'(\rho)\,d\rho
-M(\rho_j).
\tag{CRM.10}
```

Taking \(j\to\infty\),

```math
\mathsf S_V(Q)
\lesssim
\int_0^\infty[M'(\rho)]_+\,d\rho .
\tag{CRM.11}
```

This is the scale-uniform part. The collar can recede, but the total signed
cubic turn-off cannot shrink.

For the scalar cutoff model

```math
w(\rho,\theta)=a(\rho)(\theta\cdot S\theta),
\qquad
a(0)=1,\quad a(\rho_+)=0,
\tag{CRM.12}
```

one has

```math
M(\rho)=a(\rho)^3M_{\rm aff},
\qquad
M'(\rho)=3a(\rho)^2a'(\rho)M_{\rm aff}.
\tag{CRM.13}
```

Since \(M_{\rm aff}<0\) for positive Vieillefosse service,

```math
\int_0^{\rho_+}[M'(\rho)]_+\,d\rho
\ge
-M_{\rm aff}
=
M_{\rm aff}
\int_{a=1}^{a=0}3a^2\,da
=
-M_{\rm aff}.
\tag{CRM.14}
```

Spreading the cutoff over a longer log interval lowers \(|a'|\), but it lasts
longer. The integral stays fixed. The \(1/L\) escape is an artifact of charging
\(|a'|^2\) rather than the oriented cubic transfer.

## 4. What \(M'\) measures

Differentiating the radial readout gives

```math
\partial_\rho w
=
\theta_i\theta_j\partial_j u_i(r\theta)
-w.
\tag{CRM.15}
```

For an affine field \(u=Sx\), this is zero. Therefore

```math
M'(\rho)
=
3\int_{S^2}w(\rho,\theta)^2\,\partial_\rho w(\rho,\theta)\,d\theta
\tag{CRM.16}
```

measures the non-affine radial turn-off/current of the same field.

To make the ownership explicit, write

```math
U(\rho,\theta)=e^{-\rho}u(e^\rho\theta)=w(\rho,\theta)\theta+v(\rho,\theta),
\qquad v\cdot\theta=0 .
\tag{CRM.17}
```

The spherical divergence formula gives, for the same incompressible velocity
field,

```math
\partial_\rho w+3w+\operatorname{div}_{S^2}v=0 .
\tag{CRM.18}
```

Therefore

```math
M'(\rho)
=
3\int_{S^2}w^2\partial_\rho w\,d\theta
=
-9\int_{S^2}w^3\,d\theta
+6\int_{S^2}w\,v\cdot\nabla_{S^2}w\,d\theta .
\tag{CRM.19}
```

For the affine incompressible core \(U_A=S\theta\), one has
\(\partial_\rho w_A=0\) and
\(\operatorname{div}_{S^2}v_A=-3w_A\), so \(M'=0\). Thus a nonzero
\([M']_+\) is not a scalar cutoff artifact. It is the same-field angular
current needed to turn off the affine Vieillefosse imprint.

There is a sharper current normal form. Since \(\nabla\cdot u=0\) on the
same field, the spherical mean of \(w\) vanishes on each retained sphere. Let
\(v_\circ[w]\) be the canonical tangential Hodge carrier on \(S^2\) satisfying

```math
\operatorname{div}_{S^2}v_\circ[w]=-3w,
\qquad
\int_{S^2}v_\circ[w]\cdot\xi\,d\theta=0
\quad\text{for every tangential Killing field }\xi .
\tag{CRM.19a}
```

Write the actual tangential current as

```math
v=v_\circ[w]+j .
\tag{CRM.19b}
```

Then incompressibility reduces to

```math
\partial_\rho w+\operatorname{div}_{S^2}j=0,
\tag{CRM.19c}
```

and therefore

```math
M'(\rho)
=
-3\int_{S^2}w^2\operatorname{div}_{S^2}j\,d\theta
=
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta .
\tag{CRM.19d}
```

The affine core has \(j=0\). The turn-off measure \([M']_+\) is therefore
exactly the positive oriented work of the residual same-field tangential
current after the stationary incompressible carrier has been removed. A
quadratic magnitude bill on \(j\) can still leak across a long collar; the
needed \(c_0\) bill is the admitted positive linear current flux

```math
\mathsf J_M^+
:=
\int_{\Lambda Q}
\left[
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta
\right]_+
d\rho
=
\int_{\Lambda Q}[M'(\rho)]_+\,d\rho .
\tag{CRM.19e}
```

This also explains why the payer cannot be a T-even quadratic magnitude alone.
On a collar of log-length \(L\), an oriented residual current of size \(L^{-1}\)
can carry a fixed total flux

```math
\int_{\Lambda Q}
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta\,d\rho
\simeq 1,
\tag{CRM.19f}
```

while its square cost satisfies

```math
\int_{\Lambda Q}|j|^2\,d\rho\simeq L^{-1}.
\tag{CRM.19g}
```

So a square-current collar estimate reproduces the log leak. The missing
admission theorem must put the positive linear flux \(\mathsf J_M^+\) into the
legitimate material-time oriented bill.

In an incompressible flow, this angular/current change is tied to the slaved
pressure source

```math
-\Delta p=\partial_i u_j\partial_j u_i .
\tag{CRM.20}
```

The affine/isotropic aligned modes have \(M'=0\). A nonzero positive rise of
the cubic moment, equivalently a drop of \(-M\), is therefore the signed
handoff of the Vieillefosse imprint to the surrounding same fluid.

## 5. The remaining bill-admission lemma

The theorem still needed is:

```math
\texttt{CubicRadialMomentOddPayment.A}
\tag{CRM.21}
```

Statement. For every lawful finite-energy strict atom/collar turn-off of a
nonzero Vieillefosse affine core,

```math
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\int_{\Lambda Q}[M'(\rho)]_+\,d\rho,
\qquad c>0,
\tag{CRM.22}
```

where \(\mathsf P_{\rm odd}\) is the legitimate material-time oriented
transverse pressure/current bill generated by the same velocity field and its
slaved pressure.

Equivalently, in density form,

```math
\mathsf P_{\rm odd}(\rho)
\gtrsim
[M'(\rho)]_+ .
\tag{CRM.23}
```

This is not a definition of a new bill. It must be proved as an admission
theorem: the positive turn-off rise of the cubic radial strain moment,
equivalently the positive drop of \(-M\), must be the same pressure/current/
collar participation payment already allowed in the \(c_0\) currency.

## 6. Consequence for \(c_0\)

If (CRM.22) holds, then (CRM.11) gives

```math
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\,\mathsf S_V(Q),
\tag{CRM.24}
```

with \(c\) independent of collar radius and tower depth.

Thus a lawful finite-energy turn-off of a nonzero Vieillefosse affine core has
a scale-uniform, time-oriented transverse pressure/current cost. That is the
direct \(c_0\) bridge:

```math
\mathcal P=0
\quad\Longrightarrow\quad
\mathcal S_V=0
\tag{CRM.22}
```

unless the material is stopped/pass-owned, parent-owned as a smooth affine
endpoint, or routed to a declared collar/exit/nonparticipating class.
