---
theorem_id: forward-gold-finite-dimensional-schur-motion-payment-20260628
status: finite-dimensional-sublemma-proved-under-first-exit-motion-hypotheses
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gram-schur-first-three-pressure-tests-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-finite-state-no-free-upcrossing-20260627.md
completion_truth: finite-dimensional motion payment only; Navier-Stokes triad admission remains open
---

# Finite-dimensional Schur motion payment

This proves the first pressure test in isolation. The conclusion is exactly
limited to inverse-Gram births caused by moving affine detector geometry.
Stationary-metric production is paid by Schur current, negative return, or
Bessel novelty, not by this lemma.

## 1. Setup

Let \(H\) be a finite-dimensional Hilbert space. Let

\[
G(t)>0,\qquad m(t)\in H,\qquad t\in I,
\]

with \(G\) \(C^1\) and \(m\) absolutely continuous. Define

\[
S(t)=\langle m(t),G(t)^{-1}m(t)\rangle ,
\qquad
K(t)=G(t)^{-1/2}\dot G(t)G(t)^{-1/2}.
\]

For a fixed detector \(a\in H\), put

\[
N_a(t)=\langle a,G(t)^{-1}a\rangle ,
\qquad
q_a(t)=\langle a,G(t)^{-1}m(t)\rangle .
\]

Here \(N_a\) is the inverse-Gram detector size and \(q_a\) is the current
response seen by that detector.

## 2. Pointwise motion payment

The normalized detector current is controlled by Schur storage:

\[
{|q_a(t)|^2\over N_a(t)}
\le
S(t).
\]

This is Cauchy-Schwarz in the \(G(t)^{-1}\) inner product.

The inverse-Gram logarithmic motion is controlled by \(K\). Indeed,

\[
{d\over dt}\log N_a(t)
=
-
{\langle G(t)^{-1/2}a,K(t)G(t)^{-1/2}a\rangle
\over
\langle G(t)^{-1/2}a,G(t)^{-1/2}a\rangle},
\]

so

\[
\left|{d\over dt}\log N_a(t)\right|
\le
\|K(t)\|_{\rm op}.
\]

Multiplying the two inequalities gives the core estimate:

\[
{|q_a(t)|^2\over N_a(t)}
\left|{d\over dt}\log N_a(t)\right|^2
\le
S(t)\|K(t)\|_{\rm op}^2 .
\]

Thus the continuous motion charge of any fixed detector is paid pointwise by
Schur storage times positive metric variation.

## 3. First-exit motion births

Let \(\mathcal E\) be a selected family of motion births. The time measure below
is the normalized parent first-exit measure; equivalently, all slab Cauchy
constants are absorbed into \(C_{\rm exit}\). Each birth \(e\) has:

1. a parent-known detector \(a_e\);
2. a parent-announced first-exit slab \(I_e\subset I\);
3. inverse-Gram log displacement

\[
\delta_e
=
\operatorname{Var}_{I_e}\log N_{a_e};
\]

4. bounded overlap of first-exit slabs:

\[
\sum_{e\in\mathcal E}{\bf 1}_{I_e}(t)\le B;
\]

5. discrete motion birth weight dominated by the continuous serviced-current
motion charge, up to return/legal error:

\[
\omega_e^{motion}
\le
C_{\rm exit}
\int_{I_e}
{|q_{a_e}(t)|^2\over N_{a_e}(t)}
\left|{d\over dt}\log N_{a_e}(t)\right|^2dt
+R_e+L_e .
\]

Then

\[
\sum_{e\in\mathcal E}\omega_e^{motion}
\le
C_{\rm exit}B
\int_I S(t)\|K(t)\|_{\rm op}^2dt
+\sum_{e\in\mathcal E}(R_e+L_e).
\]

Proof. Sum the preceding pointwise estimate over \(e\), integrate on \(I_e\),
and use bounded overlap.

If the selected bookkeeping also assigns one opening Schur-visible birth charge
\(\omega_e^{open}\) before metric motion starts, and those opening directions
are parent-known with bounded multiplicity, then

\[
\sum_e\omega_e^{open}\le C_{\rm open}\sup_{t\in I}S(t).
\]

Thus the full finite-dimensional motion-payment form is

\[
\sum_e(\omega_e^{open}+\omega_e^{motion})
\le
C_{\rm open}\sup_I S
+C_{\rm exit}B\int_I S(t)\|K(t)\|_{\rm op}^2dt
+R_{\rm return}+L_{\rm legal}.
\]

## 4. Endpoint/upcrossing form

The usual first-exit upcrossing form follows when the selector uses fixed
logarithmic thresholds. On a slab where

\[
\delta_e
=
\left|\log N_{a_e}(t_e)-\log N_{a_e}(s_e)\right|
\]

is the first threshold crossing, Cauchy on the parent-announced slab gives

\[
\delta_e^2
\lesssim
\int_{I_e}
\left|{d\over dt}\log N_{a_e}(t)\right|^2dt .
\]

Therefore any endpoint motion birth weight of the form

\[
\omega_e^{motion}
\lesssim
M_e\delta_e^2+R_e+L_e,
\qquad
M_e\lesssim
{ |q_{a_e}(t)|^2\over N_{a_e}(t)}
\quad\hbox{for the serviced current level on }I_e,
\]

is paid by the same estimate:

\[
\sum_e\omega_e^{motion}
\lesssim
\int_I S(t)\|K(t)\|_{\rm op}^2dt
+R_{\rm return}+L_{\rm legal}.
\]

If the serviced Schur level \(M_e\) is only comparable after moving within the
slab, the comparison error is exactly return/reset/legal. This is the finite
dimensional place where those terms enter.

## 5. Reversible cycles

The estimate depends on path variation, not endpoint deformation. A reversible
cycle with \(G(T)=G(0)\) can have zero endpoint Gram change, but for any detector
whose inverse-Gram size changes along the way,

\[
\operatorname{Var}_{[0,T]}\log N_a
\le
\int_0^T\|K(t)\|_{\rm op}dt,
\]

and the square first-exit charge is bounded by

\[
\sum_e\omega_e
\lesssim
\int_0^T S(t)\|K(t)\|_{\rm op}^2dt
+R_{\rm return}+L_{\rm legal}.
\]

Thus stretch/reverse-stretch cancellation cannot make moving affine geometry
free. The cycle pays through positive inverse-Gram path variation.

## 6. Sharp boundary

This lemma does not pay arbitrary selected production. It pays only selected
births whose source is inverse-Gram motion of a parent-known detector while a
parent current response is being serviced.

The boundary cases are exact:

1. If \(K=0\), the motion charge is zero. Repeated positive production must be
paid by Schur current growth, negative return/reset, or Bessel novelty.
2. If \(m=0\), moving \(G\) can change detector geometry but services no current;
the normalized current weight \(|q_a|^2/N_a\) is zero.
3. If the selector repeatedly samples the same motion without first-exit slabs
or bounded overlap, the sum can be made arbitrarily large. That failure belongs
to the parent-adjoint packing/reselection lemma, not to this finite-dimensional
Schur motion calculation.

## 7. Consequence for the Gold edge

The first pressure test is passed in the precise finite-dimensional sense:
moving affine geometry is paid by

\[
\int S(t)\|K(t)\|_{\rm op}^2dt
\]

plus return/legal errors required to compare endpoint upcrossing weights to the
serviced current during the slab.

The remaining Navier-Stokes burden is the admission bridge: each dangerous
positive dyadic transfer must be shown to enter either this motion form, Schur
current storage, or parent-subtracted Bessel novelty.
