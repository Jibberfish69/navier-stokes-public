---
theorem_id: forward-gold-material-stokes-hodge-shell-clock-closure-20260625
status: native-shell-reduction-installed-pressure-stress-cubic-collar-clock-open
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Corrects the remaining moving-constraint commutator created by fixed material
  Littlewood-Paley shells.  The active shell is replaced by the spectral shell
  of the same material Hodge-Stokes operator on
  ker div_a(A dot).  With that selector, pressure is constraint-normal,
  viscosity is diagonal/coercive, and shell motion is exactly the time
  variation of the material metric/Stokes form.  The form derivative is
  bounded by the positive top-strain rate because dot G=-2 A S A^T and
  tr S=0.  Subheat selector motion is absorbed by viscosity, and the
  superheat selector-motion coordinate is represented by the signed
  top-strain logarithmic storage.  The attempted final closure then overread
  that coordinate as the whole moving annular pump.  The log-weighted identity
  pays only the top-strain/Hodge-selector part.  The remaining exact gap is the
  non-top-strain-aligned pressure-stress and cubic-collar service on the same
  transported annulus.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hodge-adapted-shell-pump-alignment-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-strain-log-storage-recombination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-higher-collar-tower-demoted-to-same-depth-service-20260625.md
---

# Material Stokes/Hodge Shell Clock Reduction

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

## 6. Superheat reduction and the remaining exchange term

On the superheat region, the remaining positive term is

```math
\int
\lambda_+|h_j|^2
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}\,da.
\tag{MSH.18}
```

This is the top-strain superheat coordinate seen by the signed strain
logarithmic storage:

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
(m_j-d_j)L_j
+e_j{W_\lambda\over\lambda}.
\tag{MSH.20}
```

Here

```math
L_j=
\left[
\log{\lambda_+\over\delta2^{2j}}
\right]_+,
\qquad
W_\lambda
=
|\Omega e|^2
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S\,e.
\tag{MSH.20a}
```

The term

```math
(m_j-d_j)L_j
\tag{MSH.20b}
```

contains the same shell exchange whose positive part is being controlled.
Thus `(MSH.20)` is not by itself a payment of the superheat shell-motion term.
It reduces the fixed-shell commutator problem to a log-weighted same-shell
exchange problem inside the same pressure-viscosity-incompressibility-velocity
packet.

## 7. Correct proof-state result

Combining `(MSH.9)`, `(MSH.14)`, and `(MSH.17)` yields

```math
\left[
\langle \dot\Pi_jv,h_j\rangle
\right]_+
\le
\varepsilon d_j
+C e_j\lambda_+
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}
+r_j^{legal}.
\tag{MSH.21}
```

The exact signed top-strain companion is

```math
\boxed{
\int_0^{T_*}\sum_j
\left[
(m_j-d_j)L_j
+e_j{W_\lambda\over\lambda}
\right]_+\,dt<\infty.
}
\tag{MSH.22}
```

This is not the whole moving annular pump.  It is the coordinate produced when
the native Hodge selector motion is read through the selected top-strain
storage.  The signed recombination note identifies `(MSH.22)` with
\(d(e_jL_j)/dt+e_j\lambda_+\) on the active set, so it belongs to the same
bounded-below storage mechanism as the top-strain superheat coordinate.

With that coordinate installed, the top-strain/Hodge-selector coordinate is
paid by the already counted top-strain storage plus legal residual.  The
stronger statement

```math
\int_0^{T_*}\sum_j
[\mathcal R_j^{Hodge}(t)]_+\,dt
<\infty.
\tag{MSH.23}
```

is not installed by this note.  The later material Hodge projection commutator
calculation identifies \(\mathcal R_j^{Hodge}\) with the same pressure/RHS and
annular stress-interface service after the coefficient-frame and base-collar
pieces are paid.  Thus `(MSH.23)` is exactly the remaining one-interface clock,
not a consequence of the selector-motion calculation alone.

## 8. Consequence for the full material clock

The invalid step was to promote the Hodge selector-motion estimate into a
whole-pump estimate of the form

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

That estimate is not installed for the full active pump.  It is valid only for
the Hodge selector-motion / top-strain-aligned coordinate.  The remaining part
of \(m_j\) is the same transported annular pressure-stress, pressure-transport,
viscous-stress, and cubic-collar service isolated in the pressure/cubic
cancellation and full-density bridge notes.

The live closure is therefore

```math
\int_0^{T_*}
\left(
\mathcal Q_{\phi}^{press/stress,+}
+
\mathcal C_{\phi}^{cubic,+}
+
\mathcal R_{\phi}^{collar/stress,+}
\right)dt<\infty,
\tag{MSH.25}
```

or an equivalent bounded-below same-material storage that pays this positive
service before rectification.

## 9. Continuation landing

After `(MSH.25)` is proved, the installed chain applies without the fixed-shell
commutator gap:

```math
\text{finite pressure-stress/cubic-collar positive clock}
\Longrightarrow
\text{finite continuation-depth material record}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\quad(s>5/2).
\tag{MSH.26}
```

Classical local theory then relaunches the same smooth solution past the
alleged finite terminal time.  This note supplies the native shell reduction
needed for that route; the pressure-stress/cubic-collar positive clock remains
live.
