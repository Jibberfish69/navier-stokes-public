---
theorem_id: forward-gold-high-high-parent-current-admission-identity-attempt-20260628
status: exact-one-point-identity-proved-for-full-output-stress; individual-input-colored-high-high-triad-one-point-identity-false
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - AffineSchurAccretivityGap.A
  - SameCarrierCommutatorDetectorAdmissionBridge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-wave-packet-high-high-residence-obstruction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-bilinear-stress-parent-adjoint-lift-pressure-test-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-paid-parent-current-span-perpendicular-category-repair-20260628.md
completion_truth: the requested identity is valid for full output-local stress; for individual high-high input-color triads the obstruction is not a commutator but the fact that input-color selection is a two-point bilinear current, not a one-point parent stress-current test
---

# High-high parent-current admission identity attempt

## 1. Target

For

\[
B_{k\ell m}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell),
\qquad k\sim\ell\sim m,
\]

the desired identity was

\[
\langle B_{k\ell m},\phi\rangle
=
J_P(\Psi_{k\ell m,\phi}^P)
+Err_{\rm motion}
+Err_{\rm visc}
+Err_{\rm legal/stop},
\]

with \(\Psi_{k\ell m,\phi}^P\) a one-point parent-built material stress-current
test.

That identity is false at the individual input-color triad level. The exact
identity holds only before input-color separation, for the full output-local
stress.

## 2. Exact identity for the full output-local stress

Let

\[
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u)
\]

and set

\[
\Phi_\phi=\mathbb P P_m\Lambda^{-1/2}\phi,
\qquad
A_\phi=\nabla\Phi_\phi .
\]

Then, by integration by parts and self-adjointness of
\(\mathbb P,P_m,\Lambda^{-1/2}\),

\[
\langle B_m^{full},\phi\rangle
=
-\int (u\otimes u):A_\phi\,dx .
\]

If \(X_P(a,t)\) is the stopped parent material carrier and
\(\det\nabla_aX_P=1\), pull back

\[
A_\phi^P(a,t)=A_\phi(X_P(a,t),t).
\]

Then

\[
\langle B_m^{full},\phi\rangle
=
-\int (U\otimes U):A_\phi^P\,da,
\qquad U(a,t)=u(X_P(a,t),t).
\]

This is a legal one-point parent stress-current read. With the sign convention
absorbed into the current, it is exactly

\[
\langle B_m^{full},\phi\rangle
=
J_P(\Psi_\phi^P)
+Err_{\rm collar}
+Err_{\rm Hodge}
+Err_{\rm frame}
+Err_{\rm adjoint}.
\]

The errors route as follows.

\[
Err_{\rm collar},Err_{\rm stop},Err_{\rm boundary}
\longrightarrow legal/stop.
\]

\[
Err_{\rm Hodge}
=
[\mathcal T_P,\mathbb P P_m\Lambda^{-1/2}]\phi
\longrightarrow
\text{legal Hodge error or stop if the parent Hodge test is not admissible}.
\]

\[
Err_{\rm frame}
=
D_t^P(A_\phi^P)
\longrightarrow
K\text{-motion / first-exit route payment}.
\]

\[
Err_{\rm adjoint}
=
u\cdot(-\partial_t-\nu\Delta)\Psi_\phi
+p\nabla\cdot\Psi_\phi
\longrightarrow
\theta\nu D+legal/stop
\]

provided the parent-declared adjoint test is chosen in the installed detector
class. Thus the full output-local stress has the requested same-carrier
admission identity.

## 3. Why the individual high-high triad identity is false

For a fixed input-colored triad,

\[
\langle B_{k\ell m},\phi\rangle
=
-\int (u_k\otimes u_\ell):A_\phi\,dx .
\]

In Fourier variables this has bilinear symbol

\[
b_{k\ell m,\phi}(\xi,\eta)
=
\varphi_k(\xi)\varphi_\ell(\eta)\varphi_m(\xi+\eta)
M(\xi+\eta)\widehat\phi(-\xi-\eta),
\]

where \(M\) denotes the Leray/derivative/\(\Lambda^{-1/2}\) matrix factor.

A one-point local stress-current test against \(u\otimes u\) has symbol depending
only on the output frequency:

\[
a_\phi(\xi+\eta).
\]

Therefore an identity

\[
\int (u_k\otimes u_\ell):A_\phi
=
\int (u\otimes u):A_{k\ell m,\phi}
\]

for all \(u\) would require

\[
a_{k\ell m,\phi}(\xi+\eta)
=
\varphi_k(\xi)\varphi_\ell(\eta)\varphi_m(\xi+\eta)
M(\xi+\eta)\widehat\phi(-\xi-\eta)
\]

for every \((\xi,\eta)\). This is impossible: for a fixed output
\(\zeta=\xi+\eta\), the right side still depends on the input split
\((\xi,\eta)\). The obstruction is present before any material pullback or
commutator estimate.

Thus an individual high-high input-color triad is not a one-point parent stress
current. It is a two-point bilinear current:

\[
\langle B_{k\ell m},\phi\rangle
=
J_P^{(2)}(K_{k\ell m,\phi}^P)
+Err_{\rm motion}
+Err_{\rm visc}
+Err_{\rm legal/stop},
\]

where

\[
K_{k\ell m,\phi}(y,z)
=
\int K_k(x-y)\otimes K_\ell(x-z):A_\phi(x)\,dx .
\]

This is exact, but \(J_P^{(2)}\) is not the installed one-point parent current
\(J_P\). It would require a new product-carrier/two-point capacity theorem.

## 4. Consequence for the Gold route

The perpendicular loophole is gone. The remaining high-high obstruction is
different:

an individual input-colored high-high triad cannot be admitted into the
one-point paid parent current by commutator routing alone.

There are only two coherent next objects.

First, abandon individual input-color triad admission and select the full
output-local stress

\[
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\]

where the one-point parent-current identity is exact. Then the proof must handle
positive transfer after summing the input interactions, preserving the
cancellations in the full Navier--Stokes nonlinearity.

Second, keep individual high-high input colors, but enlarge the parent current
to a two-point material stress current and prove a product-carrier Bessel/Schur
packing theorem. That is a new theorem, not an already installed commutator
error.

So the requested identity is proved for the full output-local stress and
disproved for individual input-colored high-high dyadic triads as one-point
parent-current reads. The exact remaining mathematical choice is full-output
selection versus a new two-point parent-current theory.
