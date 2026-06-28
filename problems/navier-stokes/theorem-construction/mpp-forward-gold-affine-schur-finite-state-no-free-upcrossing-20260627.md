---
theorem_id: forward-gold-affine-schur-finite-state-no-free-upcrossing-20260627
status: synthesis-corrected-to-affine-schur-identity-accretivity-gap-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected unit novelty / affine quotient root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - SelectedUnitNoveltyAdmission.A
  - FreshNativeRootUpperBound.A
  - OriginalScaleMemoryGeneratorEnergyBound.A
  - AffineGramSchurParticipationStorage.A
  - StoppedPrimitivePLSRecordReturnDescent.A
  - StoppedFreeMaterialGraphDriverCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-unit-novelty-admission-scale-normalization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-gram-schur-participation-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-to-affine-quotient-transition-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-tent-affine-quotient-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-der-aqk-moving-lowhigh-record-return-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-better-idea-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-selected-scale-lower-edge-audit-20260627.md
effect: >-
  Synthesizes the current fresh-root wall into a finite-state no-free-upcrossing
  theorem. The lower-triangular scale-memory split leaves only a two-affine-moment
  quotient. The active selected weight is inverse Gram geometry for that two-moment
  block. The original packet gives the affine Schur identity, but the finite
  no-free-upcrossing inequality still requires selected positive production to
  be accretive against the Schur gradient. Infinite selected first-birth units
  with finite raw stress can still hide in orthogonal new affine directions
  unless the Schur record, negative return, and inverse-Gram route variation are
  bounded from original data. Partial, not Gold closed.
---

# Affine Schur finite-state no-free-upcrossing

The selected-scale root problem is no longer an anonymous infinite-dimensional
source-tail problem.  After the parent-subtracted novelty split and the
lower-triangular scale-memory decomposition, the persistent fresh survivor is a
two-moment affine quotient.

That turns the hard half-tail into a finite-state upcrossing problem for the same
material current.

## 1. The two affine moments

On a stopped parent \(P\), let \(J=[s_0,s_1-\kappa]\) be the parent-known
log-scale interval supporting a fresh selected birth.  For the parent-subtracted
fresh source \(\widetilde Z^{new}\), define

\[
m_J(t,x)
=
\begin{pmatrix}
m_0\\m_1
\end{pmatrix}
=
\int_J
\begin{pmatrix}
1\\s
\end{pmatrix}
\widetilde Z^{new}(s,t,x)\,ds .
\tag{1}
\]

Let the stopped inverse-weight Gram matrix be

\[
\mathsf G_J(t)
=
\int_J w_J(s,t)^{-1}
\begin{pmatrix}
1\\s
\end{pmatrix}
\begin{pmatrix}
1&s
\end{pmatrix}
\,ds .
\tag{2}
\]

Every persistent affine quotient readout is a one-dimensional shadow

\[
c_\theta(t,x)=\alpha_\theta^\ast m_J(t,x),
\tag{3}
\]

and finite stopped aperture gives

\[
H_w(t)\|c_\theta(t)\|_{L_x^2}^2
\le
C_\kappa
\int
\langle m_J,\mathsf G_J^{-1}m_J\rangle\,dx .
\tag{4}
\]

So the selected-scale weight is not an external scalar.  It is inverse-Gram
geometry on the two affine moments of the original stopped material packet.

## 2. Schur storage

Define the affine Schur storage

\[
\mathfrak S_J(t)
:=
\int
\langle m_J(t,x),\mathsf G_J(t)^{-1}m_J(t,x)\rangle\,dx .
\tag{5}
\]

Differentiating before scalar selected readout gives the exact identity

\[
D_t\mathfrak S_J
=
2\int\langle \mathsf G_J^{-1}m_J,D_tm_J\rangle\,dx
-
\int\langle \mathsf G_J^{-1}m_J,(D_t\mathsf G_J)\mathsf G_J^{-1}m_J\rangle\,dx .
\tag{6}
\]

Split the affine moment motion into positive production, negative return, and
paid error:

\[
D_tm_J=p_J-r_J+e_J .
\tag{7}
\]

Split the Gram motion into original route geometry:

\[
D_t\mathsf G_J
=
\mathsf K_J^{turn}
+\mathsf K_J^{ex}
+\mathsf K_J^{cov}
+\mathsf K_J^{conn}
+\mathsf K_J^{reset}
+\mathsf K_J^{stop/legal}.
\tag{8}
\]

The finite-state upcrossing inequality would follow from `(6)` only under the
accretive lower bound

\[
H_w\|c_{\theta,J}^{+}\|_{L_x^2}^2
\lesssim
\langle \mathsf G_J^{-1}m_J,p_J\rangle_+
+dR_{legal,J}+dStop_J .
\tag{9}
\]

Under `(9)`, the structural inequality is

\[
dA_J^{+}
\le
C\,d\mathfrak S_J^{+}
+C\,dA_J^{-}
+C\,\mathfrak S_J\,d\mathcal K_J
+dR_{legal,J}+dStop_J ,
\tag{10}
\]

where

\[
dA_J^{+}:=H_w\|c_{\theta,J}^{+}\|_{L_x^2}^2\,dt,
\qquad
dA_J^{-}:=H_w\|c_{\theta,J}^{-}\|_{L_x^2}^2\,dt,
\tag{11}
\]

and

\[
d\mathcal K_J
:=
\|\mathsf G_J^{-1/2}d\mathsf G_J\mathsf G_J^{-1/2}\|_{\rm op,+}.
\tag{12}
\]

The useful algebraic fact is therefore conditional: selected positive affine
quotient growth is Schur-record growth, negative return of the same affine
potential, or inverse-Gram motion of the stopped route geometry only after the
accretive lower bound `(9)` is proved. The original packet gives the signed
pairing in `(6)`; it does not by itself force `(9)`.

## 3. The no-free-upcrossing theorem

The theorem needed for the root upper bound is:

`AffineSchurFiniteStateNoFreeUpcrossing.A.`  For every retained stopped parent
\(P\), after spent-source reuse, exact inherited reuse, paid reset/stop/legal
loss, silent-source zero-cost escape, and derivative-exact scale output are
removed,

\[
\sum_{J\subset P}
\int dA_J^{+}
\le
C_N(u_0)\mathcal R(P)
+R_{legal}(P)+Stop(P).
\tag{13}
\]

By `(9)`--`(10)`, it is enough to prove the root storage side

\[
\sum_{J\subset P}\sup_t\mathfrak S_J(t)
+
\sum_{J\subset P}\int dA_J^{-}
+
\sum_{J\subset P}\int \mathfrak S_J\,d\mathcal K_J
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{14}
\]

This is more specific than `FreshNativeRootUpperBound.A`.  It identifies exactly
what original-history quantities must be finite:

1. bounded affine Schur records;
2. finite negative return of the same affine potential;
3. finite inverse-Gram route-geometry variation.

## 4. Why this attacks the half-tail

The raw half-tail has

\[
\sum_\ell \|F_\ell\|_{\mathcal H_{raw}}^2<\infty,
\qquad
\sum_\ell W_\ell\|F_\ell\|_{\mathcal H_{raw}}^2=\infty .
\tag{15}
\]

In the old formulation \(W_\ell\) was an external selected weight, so raw Bessel
could not see the divergence.

In the affine Schur formulation \(W_\ell\) is a shadow of
\(\mathsf G_{J_\ell}^{-1}\).  Therefore an infinite selected half-tail with finite
raw stress must force one of the following in the original material history:

\[
\sup_t\mathfrak S_{J_\ell}\to\infty,
\qquad
\sum_\ell\int dA_{J_\ell}^{-}=\infty,
\qquad
\sum_\ell\int\mathfrak S_{J_\ell}\,d\mathcal K_{J_\ell}=\infty .
\tag{16}
\]

This is the sharper physical statement: the same material packet cannot keep
creating unit selected affine quotient births unless the affine moment record
grows, the packet returns negatively to reset that record, or the stopped route
metric moves, provided the selected positive production has the accretive
coupling `(9)` to the current Schur record.

## 5. Relation to the existing branches

This synthesis does not replace the installed support.  It puts the support in
one place.

The parent-normalized leverage ledger handles existing channels.

The local selected-scale lower edge says a fresh admitted birth has a local
selected-size atom.

The lower-triangular scale-memory split reduces the root upper bound to the
affine quotient.

The fixed-score first-exit and reset-overlap notes pay \(\mathcal K_J\) when
geometry changes by a parent-announced reset.

The primitive record/return notes are the scalar readout of \(dA_J^{-}\) on a
fixed affine chart.

The stopped free-material graph-driver note is the same theorem in physical
interface language: after normal pressure/collar defect and recirculation are
removed, the unpaid free graph driver is the positive affine moment production
\(dA_J^{+}\).

## 6. Result

This note proves a reduction:

```text
AffineSchurFiniteStateNoFreeUpcrossing.A
  => PositiveFreshAffineQuotientKill.A
  => OriginalScaleMemoryGeneratorEnergyBound.A
  => FreshNativeRootUpperBound.A
  => SelectedUnitNoveltyAdmission.A
  => finite selected critical action
  => finite full same-material clock.
```

It does not prove `(9)` or `(14)` from Navier-Stokes. The proof-bearing target is
the accretive lower bound plus the root bound for the affine Schur storage,
negative return, and inverse-Gram geometry variation of the same stopped
participation current.

Partial, not Gold closed.
