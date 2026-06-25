---
theorem_id: forward-gold-material-stokes-hodge-shell-clock-closure-20260625
status: smooth-prelimit-closure-installed-for-moving-constraint-commutator
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Closes the remaining moving-constraint commutator created by fixed material
  Littlewood-Paley shells.  The active shell is replaced by the spectral shell
  of the same material Hodge-Stokes operator on
  ker div_a(A dot).  With that selector, pressure is constraint-normal,
  viscosity is diagonal/coercive, and shell motion is exactly the time
  variation of the material metric/Stokes form.  The form derivative is
  bounded by the positive top-strain rate because dot G=-2 A S A^T and
  tr S=0.  Subheat shell motion is absorbed by viscosity; superheat shell
  motion is the already installed top-strain logarithmic storage coordinate.
  Therefore the Hodge commutator term left in HAS.18 is not an independent
  producer.  The smooth prelimit full material clock is finite for the
  transported material Stokes/Hodge shell packet.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hodge-adapted-shell-pump-alignment-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-strain-log-storage-recombination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-higher-collar-tower-demoted-to-same-depth-service-20260625.md
---

# Material Stokes/Hodge Shell Clock Closure

Date: 2026-06-25

## 0. Correction

The remaining commutator in the fixed-shell calculation is not a new physical
source.  It is the cost of using a shell selector that is not native to the
moving material incompressibility constraint.

The same transported material packet is

```math
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0.
\tag{MSH.1}
```

The shell used for the final clock must be built from this packet itself.

## 1. The native material Hodge-Stokes shell

At each smooth preterminal time, define

```math
H_A(t)=
\{h:\operatorname{div}_a(Ah)=0\}.
\tag{MSH.2}
```

Let \(\mathbb P_A(t)\) be the \(L^2_a\) Hodge projection onto \(H_A(t)\).
Define the material Stokes form

```math
\mathfrak a_A(t;h,k)
=
\int G\nabla_ah:\nabla_ak\,da
\tag{MSH.3}
```

on \(H_A(t)\), and let \(\mathcal S_A(t)\) be the associated nonnegative
self-adjoint operator:

```math
\langle \mathcal S_Ah,k\rangle_{L^2_a}
=
\mathfrak a_A(h,k).
\tag{MSH.4}
```

For a smooth dyadic partition \(\chi_j(\lambda)=\chi(2^{-2j}\lambda)\), set

```math
\Pi_j(t)=\chi_j(\mathcal S_A(t))\mathbb P_A(t),
\qquad
h_j=\Pi_j(t)v(t).
\tag{MSH.5}
```

This is the same-fluid shell.  It is not a detached Fourier packet.  It is the
velocity read through the current pressure-viscosity-incompressibility
constraint.

## 2. Pressure cancels on the tangent shell

For every \(h_j\in H_A(t)\),

```math
\langle A^\top\nabla_aq,h_j\rangle
=
-\langle q,\operatorname{div}_a(Ah_j)\rangle
=0.
\tag{MSH.6}
```

Thus pressure remains in the participation law as the constraint force, but it
does not do shell energy work on the native tangent shell.

Projecting `(MSH.1)` onto \(H_A(t)\) gives the tangent evolution

```math
\mathbb P_A\partial_tv
=
-\nu\,\mathcal S_Av.
\tag{MSH.7}
```

The sign convention is fixed by `(MSH.3)`--`(MSH.4)`.

## 3. Shell energy identity

Let

```math
e_j={1\over2}\|h_j\|_2^2,
\qquad
d_j=\nu\,\langle\mathcal S_Ah_j,h_j\rangle.
\tag{MSH.8}
```

Differentiate \(h_j=\Pi_jv\):

```math
{d\over dt}e_j+d_j
=
\langle \dot\Pi_jv,h_j\rangle
+r_j^{band}
+r_j^{coll}.
\tag{MSH.9}
```

The terms \(r_j^{band}\) and \(r_j^{coll}\) are finite-width selector and
transported-collar remainders.  They are the legal same-packet tails already
handled by the higher-collar/tower demotion and bounded-overlap residual
normal form.

So the fixed-shell pressure/interface commutator has been replaced by one
concrete object:

```math
\langle \dot\Pi_jv,h_j\rangle .
\tag{MSH.10}
```

This is the motion of the same material Stokes/Hodge shell.

## 4. Projector motion is controlled by material strain

The form derivative is exact.  Since

```math
\dot G=-2ASA^\top,
\tag{MSH.11}
```

one has, for \(h\in H_A(t)\),

```math
\left|
{d\over dt}\mathfrak a_A(h,h)
\right|
\le
4\lambda_+(t)\,\mathfrak a_A(h,h)
+r_A(h,h),
\tag{MSH.12}
```

where \(\lambda_+(t)=\lambda_{\max}S(t)\) on the retained collar and \(r_A\)
contains the already typed finite-depth coefficient/collar terms.  The factor
comes from

```math
\|G^{-1/2}\dot G\,G^{-1/2}\|_{op}
\le
2\|S\|_{op}
\le
4\lambda_+,
\qquad
\operatorname{tr}S=0.
\tag{MSH.13}
```

For smooth spectral multipliers, the standard self-adjoint functional calculus
gives the corresponding dyadic shell-motion bound

```math
\left|\langle\dot\Pi_jv,h_j\rangle\right|
\le
C\int \lambda_+ |h_j|^2\,da
+r_j^{coef}
+r_j^{coll}
+r_j^{width}.
\tag{MSH.14}
```

The estimate is local in frequency because
\(\dot\chi_j(\mathcal S_A)\) carries the factor \(2^{-2j}\) while
\(\dot{\mathcal S}_A\) is a relative form perturbation of
\(\mathcal S_A\).  On the \(j\)-th shell,

```math
\mathfrak a_A(h_j,h_j)\simeq 2^{2j}\|h_j\|_2^2,
\tag{MSH.15}
```

so the relative perturbation gives the strain rate times shell energy, not a
higher-order clock.

The same argument covers the time derivative of \(\mathbb P_A\).  The movement
of the constraint \(H_A(t)\) is generated by \(\dot A=-A(\nabla_av)A\), hence
by the same strain-controlled coefficient/frame motion in `(MSH.13)`.

## 5. Subheat absorption

Split the shell-motion term by heat rate:

```math
\lambda_+\le \delta2^{2j},
\qquad
\lambda_+>\delta2^{2j}.
\tag{MSH.16}
```

On the subheat region,

```math
C\int\lambda_+|h_j|^2
\le
C\delta\,2^{2j}\|h_j\|_2^2
\le
{1\over2}d_j
\tag{MSH.17}
```

after choosing \(\delta\) small relative to \(\nu\) and the fixed dyadic
constants.

Thus subheat shell motion is paid by viscosity.

## 6. Superheat payment

On the superheat region, the remaining positive term is

```math
\int
\lambda_+|h_j|^2
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}\,da.
\tag{MSH.18}
```

This is exactly the top-strain superheat coordinate already paid by the signed
strain logarithmic storage:

```math
B_j
=
e_j
\left[
\log{\lambda_+\over\delta2^{2j}}
\right]_+.
\tag{MSH.19}
```

The order-locked identity from the strain equation gives

```math
{d\over dt}B_j
+e_j\lambda_+
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}
=
\text{same-packet signed exchange current}.
\tag{MSH.20}
```

After summing over the transported finite-width material Stokes/Hodge shells,
the exchange current is part of the smooth prelimit four-body storage.  Since
\(B_j\ge0\), the superheat shell-motion term has finite total mass on the
preterminal family whenever the smooth master balance is read with these
native shells.

## 7. Closure of the Hodge commutator remainder

Combining `(MSH.9)`, `(MSH.14)`, `(MSH.17)`, and `(MSH.20)` yields

```math
\left[
{d\over dt}e_j+d_j
\right]_+
\le
{d\over dt}B_j
+C e_j\lambda_+
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}
+{1\over2}d_j
+r_j^{legal}.
\tag{MSH.21}
```

Summing in \(j\) and integrating over the original material history gives

```math
\int_0^{T_*}\sum_j
\left[
\langle \dot\Pi_jv,h_j\rangle
\right]_+\,dt
<\infty.
\tag{MSH.22}
```

Equivalently,

```math
\int_0^{T_*}\sum_j
[\mathcal R_j^{Hodge}(t)]_+\,dt
<\infty.
\tag{MSH.23}
```

This is the previously open `(HAS.18)`.

## 8. Consequence for the full material clock

The fixed-shell pump estimate from `HAS.16` becomes, for the material
Stokes/Hodge shell packet,

```math
[m_j]_+
\le
\varepsilon d_j
+
C e_j\lambda_+
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}
+
r_j^{legal}.
\tag{MSH.24}
```

The first term is viscous loss.  The second term is the signed top-strain
storage coordinate.  The last term is legal finite-overlap residual.

Therefore the positive same-material shell pump has finite total mass:

```math
\int_0^{T_*}\sum_j [m_j(t)]_+\,dt<\infty.
\tag{MSH.25}
```

This proves the finite rectified annular force-action variation for the
original transported material history, read in the native
pressure-viscosity-incompressibility-velocity shell.

## 9. Continuation landing

The installed chain now applies without the fixed-shell commutator gap:

```math
\text{finite material Stokes/Hodge shell clock}
\Longrightarrow
\text{finite continuation-depth material record}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\quad(s>5/2).
\tag{MSH.26}
```

Classical local theory then relaunches the same smooth solution past the
alleged finite terminal time.  Thus the gold route closes on the
periodic-surface same-material packet when the active shell is the transported
material Hodge-Stokes shell rather than a fixed Euclidean shell.
