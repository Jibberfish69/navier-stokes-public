---
theorem_id: forward-gold-superheat-strain-riccati-log-storage-reduction-20260625
status: direct-reduction-installed-pure-strain-self-stretch-paid-leftovers-remain-coupled
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the coupled no-free-acceleration line with the exact material strain
  Riccati identity. For a positive top-strain superheat component
  \(\lambda_j>\delta2^{2j}\), the bounded-below storage
  \(B_j=e_j\log(\lambda_j/(\delta2^{2j}))_+\) has a derivative containing
  \(-e_j\lambda_j\), so the pure strain self-stretch part of superheat
  residence is paid by a real same-material storage. The calculation does not
  close the MPP because the remaining terms are not residuals: they are the
  same pressure-Hessian, vorticity/rotation, viscous strain-tower, and
  shell-interface terms of the full pressure-viscosity-incompressibility-
  velocity packet, with the shell interface multiplied by the logarithmic
  superheat ratio. Thus this reduction proves that pure strain Riccati
  self-amplification is not the hard producer; the live producer is the coupled
  pressure-vorticity-viscous-shell defect in the logarithmic strain storage
  identity, or an equivalent full no-free-acceleration law.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-scalar-storage-exhaustion-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-intrinsic-time-shell-ode-test-20260625.md
---

# Superheat Strain Riccati Log Storage Reduction

Date: 2026-06-25

## 0. Object

The object is one original transported material history.  On an active shell,

```math
{d\over dt}e_j+d_j=m_j,
\tag{SRL.1}
```

and the superheat residence contains the strain part

```math
\Theta_j^{strain}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}} .
\tag{SRL.2}
```

This note tests the piece where the low material rate is a positive top-strain
eigenvalue.  Let

```math
\lambda(t)=\lambda_{\max}(S(t,X(a,t)))
\tag{SRL.3}
```

along a material trajectory and a selected annular direction.  On the selected
strain-superheat region assume

```math
\lambda>\delta2^{2j}.
\tag{SRL.4}
```

The nonsimple-eigenvalue case is read using the upper Dini derivative or by a
standard smooth spectral regularization; the formula below is first written at
simple eigenvalue points, where it is exact.

## 1. Strain Riccati identity

The exact material strain equation is

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{SRL.5}
```

For a unit eigenvector \(e\) of \(S\) with eigenvalue \(\lambda\),

```math
D_t\lambda
=
-\lambda^2
+|\Omega e|^2
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S\,e .
\tag{SRL.6}
```

This is the coupled pressure-viscosity-incompressibility-velocity law in
strain coordinates.

## 2. Logarithmic superheat storage

Define the positive logarithmic superheat ratio

```math
L_j(t)=
\left[
\log {\lambda(t)\over\delta2^{2j}}
\right]_+ .
\tag{SRL.7}
```

and the same-shell storage

```math
B_j(t)=e_j(t)L_j(t).
\tag{SRL.8}
```

This storage is bounded below:

```math
B_j(t)\ge0.
\tag{SRL.9}
```

On the active region \(L_j>0\), differentiating gives

```math
{d\over dt}B_j
=
\left({d\over dt}e_j\right)L_j
+e_j{D_t\lambda\over\lambda}.
\tag{SRL.10}
```

Substitute `(SRL.1)` and `(SRL.6)`:

```math
\begin{aligned}
{d\over dt}B_j
+e_j\lambda
= {}&
(m_j-d_j)L_j \\
&+
e_j{|\Omega e|^2-e\cdot\nabla^2p\,e+\nu e\cdot\Delta S\,e\over\lambda}.
\end{aligned}
\tag{SRL.11}
```

Thus the pure strain self-stretch residence \(e_j\lambda\) is paid by a
bounded-below same-material storage, up to the displayed coupled companions.

Equivalently, on any interval \(I\),

```math
\begin{aligned}
\int_I e_j\lambda\,\mathbf 1_{\{\lambda>\delta2^{2j}\}}\,dt
\le {}&
B_j(a)-B_j(b) \\
&+
\int_I (m_j-d_j)L_j\,dt \\
&+
\int_I e_j
{|\Omega e|^2+|e\cdot\nabla^2p\,e|+\nu|e\cdot\Delta S\,e|\over\lambda}
\,dt .
\end{aligned}
\tag{SRL.12}
```

The pressure term has not been separated.  It is the pressure-Hessian partner
in the same strain equation.

## 3. What this pays

The calculation proves a real positive result:

```math
\boxed{
\text{pure top-strain Riccati self-stretch is not a free superheat source.}
}
\tag{SRL.13}
```

The quadratic term \(-\lambda^2\) in `(SRL.6)` gives the negative derivative
needed to pay \(e_j\lambda\) after dividing by \(\lambda\).  The storage
\(B_j=e_jL_j\) is not the unbounded-below cumulative material-rate primitive
excluded in the scalar storage note; it is nonnegative.

## 4. What remains coupled

The terms on the right side of `(SRL.11)` are not legal residuals.

The shell-interface term is

```math
(m_j-d_j)L_j.
\tag{SRL.14}
```

Its positive part is a logarithmically weighted version of the same pressure/
incompressibility/coefficient/collar interface that drives the shell.  It must
be kept inside the full material packet.

The strain companions are

```math
e_j{|\Omega e|^2\over\lambda},
\qquad
e_j{|e\cdot\nabla^2p\,e|\over\lambda},
\qquad
\nu e_j{|e\cdot\Delta S\,e|\over\lambda}.
\tag{SRL.15}
```

They are the rotation/vorticity service, pressure-Hessian service, and viscous
strain-tower service in the same material strain law.

Since \(\lambda>\delta2^{2j}\), the denominator gives heat-scale demotion:

```math
{1\over\lambda}
\le
{1\over\delta2^{2j}}.
\tag{SRL.16}
```

So `(SRL.15)` is lower order than the raw acceleration density, but it is not
automatically integrable from energy.  It is still part of the full coupled
clock unless a separate same-packet estimate pays it.

## 5. Consequence

This reduction sharpens the live producer.  The hard superheat residence is no
longer the pure Riccati self-stretch of top strain.  That piece has a
bounded-below storage.

The remaining MPP-facing producer is the coupled logarithmic strain-storage
defect:

```math
\boxed{
\int_0^{T_*}
\sum_j
\left[
(m_j-d_j)L_j
+
e_j{|\Omega e|^2+|e\cdot\nabla^2p\,e|+\nu|e\cdot\Delta S\,e|\over\lambda}
\right]_+
\,dt
<\infty
}
\tag{SRL.17}
```

read on the same transported annular history.  A proof of `(SRL.17)` would be
the desired no-free-acceleration law for the strain-superheat component.

