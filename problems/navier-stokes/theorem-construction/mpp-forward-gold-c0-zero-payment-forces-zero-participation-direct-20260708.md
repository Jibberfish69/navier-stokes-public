---
theorem_id: forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity
status: direct-c0-spine; strict-reduction-to-zero-payment-forces-zero-participation-in-lawful-strict-towers
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-compact-zero-loss-coercivity-extraction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
completion_truth: >-
  This note resets the c0 target to the direct coercivity theorem:
  zero payment forces zero participation. The packet proof is already present
  in VPL Section 17 under A1--A5, and the direct-method extraction is already
  present in CZC under compactness/lower-semicontinuity/persistence. The
  2026-07-08 log-chain Hodge payment reduction proves the interior
  incompressibility payment after lawful same-affine log-channel extraction:
  zero payment forces the chain to be the smooth affine endpoint kernel
  a'=2a. The critical-service audit records that A5 is conditional on genuine
  strong L3/service persistence from the same payment, not on L2 compactness.
  The cubic radial strain moment note replaces quadratic collar slope payment
  with the signed Vieillefosse moment turn-off and identifies the remaining
  non-tautological bill-admission theorem:
  CubicRadialMomentOddPayment.A. What is not yet proved as a global
  Navier-Stokes theorem is that the legitimate material-time oriented
  pressure/current bill dominates that signed cubic turn-off, and that every
  normalized zero-payment positive-service sequence compactifies without
  service loss to a zero-payment strict atom/tower limit whose endpoint kernel
  is stopped, parent-owned/global-affine/nonlocalizable, or nonparticipating.
  Side survivor branches have zero threat weight unless they produce that
  same-fluid zero-payment positive-service object.
---

# Zero Payment Forces Zero Participation

The direct \(c_0\) problem is this coercivity statement:

```math
c_0
=
\inf_{u\in\mathcal A}
\frac{\mathcal P(u)}{\mathcal S(u)},
\qquad
\mathcal S(u)>0,
```

where \(\mathcal A\) is the lawful same-fluid packet/tower class,
\(\mathcal S\) is actual Vieillefosse participation service, and
\(\mathcal P\) is the same-field bill: transverse pressure, viscous/non-affine
deformation, cancellation/current transport, collar/complement work, and
participation ownership.

The theorem to prove is:

```math
\mathcal S(u)\le C\,\mathcal P(u)
\qquad
(u\in\mathcal A).
\tag{ZPF.1}
```

Equivalently:

```math
\mathcal P(u)=0
\quad\Longrightarrow\quad
\mathcal S(u)=0
```

inside the lawful compact strict atom/tower class, except for stopped/pass
material or parent-owned global-affine endpoint material.

## 1. Contradiction skeleton

Assume `(ZPF.1)' fails. Then there are lawful same-fluid packets/towers
\(u_n\) with

```math
\mathcal S(u_n)=1,
\qquad
\mathcal P(u_n)\to0.
\tag{ZPF.2}
```

The physical content of \(\mathcal P(u_n)\to0\) is precise: no transverse
pressure work, no non-affine turning, no viscous/current participation, no
collar/complement localization cost, and no hidden participation ownership
loss. Thus every paid way of localizing, turning off, rotating, hiding,
cancelling, transporting, or attaching the Vieillefosse participant vanishes.

The only possible zero-bill tangent is affine in the participation quotient:

```math
u_\infty(x)=Ax+\Omega x+\beta
\tag{ZPF.3}
```

with \(A\) in the Vieillefosse affine strain class, modulo rigid motion.

If \(A\ne0\), `(ZPF.3)' has two lawful readings:

1. it persists globally as an affine strain field, which is not a finite-energy
localized Navier--Stokes packet and is parent-owned endpoint material rather
than a separate participant;
2. it is localized, turned off, attached, or changed inside the surrounding
fluid, which creates non-affine anisotropic structure and is counted by
\(\mathcal P\).

Therefore a lawful zero-payment tangent cannot retain

```math
\mathcal S(u_\infty)=1.
\tag{ZPF.4}
```

This contradicts `(ZPF.2)' once service passes to the zero-payment limit.

## 2. Checked repo support

VPL Section 17 already proves the packet form of the argument under A1--A5.
It states that normalized strict atoms satisfy

```math
\|\Pi_4 f[u]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u,b)
\ge
c\,\mathsf S(u).
\tag{ZPF.5}
```

The proof is exactly the zero-payment contradiction:

```math
\mathsf S(u_n)=1,
\qquad
\|\Pi_4 f[u_n]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u_n,b)\to0,
```

so Korn--Hodge compactness gives convergence modulo an affine jet. The service
normalization prevents the affine amplitude from vanishing, while the
parent-owned collar equality case forces the affine amplitude to vanish. That
contradiction proves the strict atom packet inequality.

VPL Section 18 then records the tower consumption:

```math
\mathsf P(\mathcal T)
\ge
c_{\rm acc}c\,\mathsf S(\mathcal T),
\qquad
c_0\ge c_{\rm acc}c>0,
\tag{ZPF.6}
```

provided every lawful tower decomposes into strict atoms with A1--A5, no service
loss, and no double-counted payment.

CZC gives the abstract direct-method extraction: on a compact normalized class,
lower semicontinuity of payment, persistence of service, and zero-loss rigidity

```math
P(X)=0\Longrightarrow R(X)=0
\tag{ZPF.7}
```

imply a positive modulus. That is the same theorem in compactness language.

The log-chain Hodge payment reduction now proves the interior part of the only
remaining long-chain wall under lawful channel extraction. If a same-affine log
chain is represented by

```math
u_A(r,\omega)=a(\rho)\frac{A\omega}{r},
\qquad \rho=\log r,
\tag{ZPF.7a}
```

then incompressibility gives

```math
\nabla\cdot u_A
=
(\partial_\rho a-2a)
\frac{\omega\cdot A\omega}{r^2}.
\tag{ZPF.7b}
```

The factor \(\omega\cdot A\omega\) is a nonzero \(l=2\) spherical harmonic for
positive Vieillefosse service. Spherical Hodge on the fixed annular geometry,
combined with A4, gives

```math
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\le
C\left(\mathsf P_{\rm chain}(I)+\operatorname{Err}_{\rm atom}(I)\right).
\tag{ZPF.7c}
```

Together with the scalar endpoint lemma,

```math
\mathsf S_A(I)
\le
C\left(
\mathsf P_{\rm chain}(I)
+
|a(\rho_+)|^2|A|^2
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{ZPF.7d}
```

Thus a zero-payment extracted log chain satisfies

```math
\partial_\rho a-2a=0,
\qquad
u_A=C\,Ax.
\tag{ZPF.7e}
```

The interior long-chain escape is therefore reduced to endpoint ownership of
the smooth affine kernel. It is no longer a free interior Hodge defect.

The cubic radial strain moment gives the signed turn-off coordinate that the
quadratic collar slope missed. Define

```math
w(\rho,\theta)=e^{-\rho}u(e^\rho\theta)\cdot\theta,
\qquad
M(\rho)=\int_{S^2}w(\rho,\theta)^3\,d\theta.
\tag{ZPF.7f}
```

For a tracefree affine strain core \(u=Sx\),

```math
M_{\rm aff}
=
\int_{S^2}(\theta\cdot S\theta)^3\,d\theta
=
\frac{32\pi}{105}\operatorname{tr}(S^3).
\tag{ZPF.7g}
```

Thus Vieillefosse service is read by the sign of the cubic moment:

```math
\mathsf S_V(Q)\simeq-\operatorname{tr}(S^3)\simeq -M_{\rm aff}.
\tag{ZPF.7h}
```

If the finite-energy/localized turn-off has \(M(\rho_j)\to0\) outward, then

```math
\mathsf S_V(Q)
\lesssim
\int_0^\infty[M'(\rho)]_+\,d\rho.
\tag{ZPF.7i}
```

For a slow scalar cutoff \(w=a(\rho)(\theta\cdot S\theta)\), the right side is
independent of collar length because

```math
M'(\rho)=3a(\rho)^2a'(\rho)M_{\rm aff},
\qquad
\int [M']_+\,d\rho\ge -M_{\rm aff}.
\tag{ZPF.7j}
```

So the \(1/L\) receding-collar leak is an artifact of charging
\(|a'|^2\). The direct bill-admission theorem is:

```math
\texttt{CubicRadialMomentOddPayment.A:}\qquad
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\int_{\Lambda Q}[M'(\rho)]_+\,d\rho.
\tag{ZPF.7k}
```

If this theorem is proved in the legitimate same-field pressure/current
currency, then

```math
\mathsf P_{\rm odd}(\Lambda Q)\ge c\,\mathsf S_V(Q)
\tag{ZPF.7l}
```

with \(c\) independent of collar radius and tower depth.

## 3. The remaining theorem, stated directly

The remaining theorem should not be split into speculative survivor branches.
It is:

```math
\texttt{ZeroPaymentForcesZeroParticipationInLawfulStrictTowers.A}.
\tag{ZPF.8}
```

Statement. Let \(u_n\) be a lawful same-fluid strict atom/tower sequence with
normalized Vieillefosse service \(\mathcal S(u_n)=1\) and same-field bill
\(\mathcal P(u_n)\to0\). Then, after passing to the lawful strict atom/tower
compactification, the limit is one of:

```math
\begin{array}{ll}
\text{stopped/pass-owned,} & \text{so it is not an active bad participant;}\\
\text{parent-owned global-affine endpoint material,} & \text{so it is not a
localized finite-energy packet;}\\
\text{nonparticipating,} & \mathcal S=0.
\end{array}
\tag{ZPF.9}
```

In particular no lawful zero-payment limit has positive participation service.

This theorem contains the atomization, compactness, no-service-loss, collar
ownership, affine endpoint, and current/cancellation accounting. A proposed
failure case has threat weight only if it constructs this same-fluid object:

```math
\mathcal S=1,
\qquad
\mathcal P=0,
\qquad
\text{lawful strict atom/tower compact limit.}
\tag{ZPF.10}
```

Otherwise it is a write-up gap, support calculation, model shadow, or filtered
non-Navier--Stokes scenario.

## 4. Consequence

Once `(ZPF.8)' is proved,

```math
\mathcal S\le C\mathcal P
```

on the lawful same-fluid packet/tower class, and therefore

```math
c_0
=
\inf_{\mathcal S>0}\frac{\mathcal P}{\mathcal S}
\ge
C^{-1}
>0.
\tag{ZPF.11}
```

That is the direct c0 closure. No separate Rayleigh, transverse-Hodge,
same-affine-chain, or signed-current branch is allowed to become the live target
unless it is being used to prove or refute `(ZPF.8)'.
