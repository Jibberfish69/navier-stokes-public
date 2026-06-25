---
theorem_id: forward-gold-signed-strain-log-storage-recombination-20260625
status: exact-correction-installed-signed-top-strain-superheat-coordinate-paid
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Corrects the previous strain-Riccati log-storage reduction by preserving
  the signed full participation tuple.  The vorticity/rotation term,
  directional pressure Hessian, viscous strain-tower term, and shell-energy
  interface must not be separated into independent positive residues after the
  log storage identity is formed.  Kept as the signed same-packet combination,
  they recombine exactly as the derivative of
  \(B_j=e_j[\log(\lambda/(\delta2^{2j}))]_+\).  Thus the top-strain
  superheat coordinate is paid by a nonnegative same-material storage plus the
  Riccati residence term.  The remaining full-clock producer is not this
  signed top-strain acceleration coordinate; it is the part of the material
  pressure/coefficient/collar/annular stress-work clock not represented by the
  selected top-strain logarithmic storage.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-strain-riccati-log-storage-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
---

# Signed Strain Log-Storage Recombination

Date: 2026-06-25

## 0. Correction

The previous strain-log note proved the right identity but then described the
right side too loosely.  In the full pressure-viscosity-incompressibility-
velocity packet, the pressure Hessian, vorticity/rotation, viscous strain
diffusion, and shell-energy interface are not separate sources after the
selected top-strain log storage has been introduced.

They are the signed derivative of the same storage.

## 1. Exact signed companion

Let

```math
D_t=\partial_t+u\cdot\nabla ,
\qquad
S={\nabla u+\nabla u^\top\over2},
\qquad
\Omega={\nabla u-\nabla u^\top\over2}.
\tag{SLR.1}
```

The exact strain equation is

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{SLR.2}
```

For a simple top eigenpair \(S e=\lambda e\),

```math
D_t\lambda
=
-\lambda^2
+|\Omega e|^2
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S\,e .
\tag{SLR.3}
```

Define the signed full companion

```math
W_\lambda
:=
|\Omega e|^2
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S\,e .
\tag{SLR.4}
```

Then `(SLR.3)` is exactly

```math
W_\lambda=D_t\lambda+\lambda^2.
\tag{SLR.5}
```

So on the superheat region \(\lambda>\delta2^{2j}\),

```math
{W_\lambda\over\lambda}
=
D_t\log\lambda+\lambda .
\tag{SLR.6}
```

This is the point at which the full participation law matters.  The three
displayed channels in `(SLR.4)` may be inspected separately as diagnostics, but
the proof route must keep their signed sum.

## 2. Shell storage recombination

Let the selected shell energy obey

```math
{d\over dt}e_j=m_j-d_j,
\tag{SLR.7}
```

and set

```math
L_j=
\left[\log{\lambda\over\delta2^{2j}}\right]_+,
\qquad
B_j=e_jL_j .
\tag{SLR.8}
```

At smooth preterminal times, the chain rule gives

```math
{d\over dt}L_j
=
\mathbf 1_{\{\lambda>\delta2^{2j}\}}D_t\log\lambda
\quad\text{a.e.}
\tag{SLR.9}
```

Therefore, on the active set,

```math
\begin{aligned}
(m_j-d_j)L_j+e_j{W_\lambda\over\lambda}
&=
(m_j-d_j)L_j+e_jD_tL_j+e_j\lambda\\
&=
{d\over dt}(e_jL_j)+e_j\lambda .
\end{aligned}
\tag{SLR.10}
```

Equivalently,

```math
\boxed{
{d\over dt}B_j+e_j\lambda
=
(m_j-d_j)L_j+e_j{W_\lambda\over\lambda}.
}
\tag{SLR.11}
```

This is not a new estimate.  It is the exact order-locked identity.  The
combined pressure-vorticity-viscous-shell input is the derivative of
\(B_j\), plus the positive Riccati residence.

## 3. What is paid

The storage is nonnegative:

```math
B_j=e_jL_j\ge0.
\tag{SLR.12}
```

So for any preterminal interval \(I=[a,b]\),

```math
\int_I e_j\lambda\,\mathbf 1_{\{\lambda>\delta2^{2j}\}}\,dt
\le
B_j(a)
+
\int_I
\left(
(m_j-d_j)L_j+e_j{W_\lambda\over\lambda}
\right)dt .
\tag{SLR.13}
```

When the full four-body packet places the signed right side in the same
oriented exchange current, summing over the selected shells moves \(dB_j\) into
the global storage and leaves \(e_j\lambda\) as a paid positive loss.

Thus the signed top-strain superheat coordinate is not an independent remaining
producer.

## 4. What was wrong with the separated-residue reading

The separated expression

```math
e_j{|\Omega e|^2+|e\cdot\nabla^2p\,e|+\nu|e\cdot\Delta S\,e|\over\lambda}
\tag{SLR.14}
```

destroys the cancellation in `(SLR.4)`.  It is a diagnostic upper envelope, not
the order-locked participation object.

The gold route cannot require `(SLR.14)` as a primary clock.  That would ask
the proof to pay for cancellations after it has deliberately thrown them away.

The correct full-packet object is the signed combination:

```math
(m_j-d_j)L_j+e_j{W_\lambda\over\lambda}.
\tag{SLR.15}
```

This is exactly \(dB_j/dt+e_j\lambda\).

## 5. Remaining producer after this correction

This correction closes the selected top-strain acceleration coordinate.  It
does not close the full MPP clock, because the full material rate also contains
coordinates not represented by this single top-strain logarithmic storage:

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar}.
\tag{SLR.16}
```

The part of \(\Theta_j^{strain}\) carried by the selected top eigenvalue is
paid by \(B_j\).  The remaining producer is the same-material
pressure-operator, coefficient-frame, transported-collar, and annular
stress-work clock that is not equal to this top-strain log derivative.

So the live theorem is sharpened to:

```math
\int_0^{T_*}
\left(
d\Omega_{N}^{press/op}
+
d\Omega_{N}^{coef}
+
d\Omega_{N}^{collar}
+
d\Omega_{N}^{annular\ stress}
\right)
<\infty
\tag{SLR.17}
```

with the top-strain signed acceleration coordinate removed from the list of
unpaid producers.
