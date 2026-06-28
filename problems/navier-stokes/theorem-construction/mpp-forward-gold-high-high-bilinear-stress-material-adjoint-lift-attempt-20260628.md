---
theorem_id: forward-gold-high-high-bilinear-stress-material-adjoint-lift-attempt-20260628
status: failed-unconditional-discharge; narrows-to-predictable-bilinear-stress-admission-or-counterexample
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - PositiveCriticalTransferDyadicFluxReduction.A
  - SameCarrierCommutatorDetectorAdmissionBridge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-low-high-high-material-adjoint-lift-split-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-commutator-detector-admission-bridge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-adjoint-bessel-packing-under-parent-subtracted-novelty-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-dimensional-schur-motion-payment-20260628.md
completion_truth: high-high lift not discharged; exact circularity isolated
---

# High-high bilinear stress material adjoint lift attempt

## 1. Target

For same-scale high-high interactions, with \(k\sim \ell\sim m\), define

\[
T_{HH,k\ell m}^+
=
\left[-\left\langle
\Lambda^{1/2}P_m\mathbb P(u_k\cdot\nabla u_\ell),
\Lambda^{1/2}u_m
\right\rangle\right]_+.
\]

The desired admission is a parent-built material adjoint detector
\(\psi_{HH,k\ell m}^P\in \mathcal C_P\) such that

\[
T_{HH,k\ell m}^+
\le
C\left(
|\langle J_P,P_F\psi_{HH,k\ell m}^P\rangle|^2
+\|(I-P_F)\psi_{HH,k\ell m}^P\|_{\mathcal C_P}^2
+\|\psi_{HH,k\ell m}^{motion}\|_K^2
\right)
+\varepsilon\nu D_{k\ell m}+legal+stop.
\]

This is the last branch after low-high is motion-paid and high-low is reduced to parent-low coefficient admission.

## 2. Stress-current representation

The nonlinear term is a stress divergence:

\[
u_k\cdot\nabla u_\ell
=\nabla\cdot(u_k\otimes u_\ell)
\]

up to the divergence-free convention on \(u_k\). Therefore, for a test field \(\psi\),

\[
\langle P_m\mathbb P(u_k\cdot\nabla u_\ell),\psi\rangle
=-\int (u_k\otimes u_\ell):\nabla \mathbb P P_m\psi\,dx .
\]

Thus the high-high triad is already a nonlinear stress-current readout. The issue is not whether it can be written as a current. The issue is whether the detector is parent-known before the selected child output is read.

The natural energy witness is

\[
\psi_{nat}=\Lambda P_m u_m.
\]

This gives the exact triad. But \(u_m\) is the same selected child output whose positive growth is being charged. Treating \(\psi_{nat}\) as parent-known imports the child readout into the detector and is circular.

## 3. Attempted parent lift by dual normalization

One can dualize the positive scalar \(T_{HH,k\ell m}^+\) and choose a normalized output witness \(g_m\) with \(\|g_m\|_2=1\):

\[
T_{HH,k\ell m}^+
\le
\|\Lambda^{1/2}P_m\mathbb P(u_k\cdot\nabla u_\ell)\|_2
\,\|\Lambda^{1/2}u_m\|_2.
\]

This produces a detector independent of the exact sign of \(u_m\), but it still depends on the selected output face unless the witness \(g_m\) is chosen from a parent net or a parent-predictable finite frame before child readout.

Therefore the parent lift would follow from a predictable detector net theorem:

For every retained high-high positive output witness, there exists a parent-predictable detector \(\psi_i^P\) in a finite/Bessel frame such that

\[
T_{HH,k\ell m}^+
\lesssim
|\langle J_P,\psi_i^P\rangle|^2
+\varepsilon\nu D_{k\ell m}+legal+stop.
\]

The net theorem must have scale-critical entropy, otherwise it simply moves the selected-action circularity into a covering number.

## 4. Parent Schur/Bessel split if predictable lift is granted

Assume such a parent-predictable detector \(\psi_i^P\) exists. Then the already proved Hilbert geometry gives

\[
\psi_i^P=P_F\psi_i^P+(I-P_F)\psi_i^P+\psi_i^{motion}.
\]

The inherited part is Schur-visible:

\[
|\langle J_P,P_F\psi_i^P\rangle|^2
\le T^{Schur}_{HH,k\ell m}.
\]

The fresh part Bessel-packs by parent-subtracted novelty:

\[
\sum_i\|(I-P_F)\psi_i^P\|_{\mathcal C_P}^2
\le C\|J_P\|^2+C E_{route}.
\]

The motion part is paid by the finite-dimensional Schur motion lemma:

\[
\sum_i\|\psi_i^{motion}\|_K^2
\lesssim
\int S(t)\|K(t)\|^2dt+E_{route}.
\]

Thus the high-high branch would close after predictable material adjoint admission. The abstract accounting is ready; the material lift is the missing theorem.

## 5. Exact failure of the unconditional proof

The unconditional proof fails because a same-scale bilinear output direction may be selected only after seeing the child-scale product. A raw Fourier triad supplies

\[
(u_k,u_\ell,u_m)\mapsto
\langle \Lambda^{1/2}P_m\mathbb P(u_k\cdot\nabla u_\ell),\Lambda^{1/2}u_m\rangle,
\]

but it does not supply a parent-predictable detector in \(\mathcal C_P\) with bounded entropy and parent-subtracted novelty. Without that predictability, the selector can chase the most positive high-high output direction, and the Bessel bound does not apply.

This is exactly the selected-action circularity in high-high form.

## 6. Narrowed theorem or counterexample target

The next theorem is:

\[
\boxed{\text{Predictable high-high bilinear stress detector admission.}}
\]

Statement. For each retained positive high-high triad on a stopped parent packet, the positive output witness is either:

1. already represented by a parent-predictable stress detector and hence Schur-visible;
2. parent-orthogonal novelty in a Bessel frame with scale-critical entropy;
3. created by selector/frame/collar/material motion and hence paid by route motion;
4. absorbed by \(\varepsilon\nu D_{k\ell m}\) after commutator redistribution.

A counterexample must be a same-scale high-high product whose positive output witness is selected after child readout, has no parent-predictable representative with bounded entropy, is not parent-orthogonal Bessel novelty, and is not route motion. That is the exact remaining enemy.

## 7. Outcome

High-high is not closed. The work unit narrows the Gold obstruction from generic positive critical transfer to a concrete predictability/admission theorem for same-scale bilinear stress detectors. The next file should either prove the predictable detector net theorem or construct the minimal finite-dimensional counterexample showing why parent predictability fails.