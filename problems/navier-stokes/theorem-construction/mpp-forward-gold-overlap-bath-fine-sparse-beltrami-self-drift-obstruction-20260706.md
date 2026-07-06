---
theorem_id: forward-gold-overlap-bath-fine-sparse-beltrami-self-drift-obstruction-20260706
status: strict-obstruction-fast-fine-scale-turnover-does-not-force-self-eviction
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - FineSparseHighReResidual.SelfDriftShortcut.FALSE
  - BeltramiPocket.ProjectedNonlinearity.ZERO
  - LocalizationAndMomentMatching.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict obstruction only. The supercritical residual scale split leaves a
  fine/sparse high-Re branch: to stay in the q=4/5 row at
  eta=delta_D/s~beta^(-4/5), coherent support must retreat to
  theta<=C beta^(6/5), and producer-clock persistence requires the high-Re
  condition Re_D theta^2>>1; the refresh dichotomy sharpens that to the
  persistent high-Re branch Re_D>>phi beta^(-12/5) after low and middle
  Reynolds refresh rows are priced. This note checks the tempting kill
  mechanism that such a persistent fine high-gradient residual must destroy
  its own pose by fast internal turnover. That mechanism is false at exact
  local/periodic level. A Beltrami
  field curl b=lambda b obeys (b dot grad)b=grad(|b|^2/2), hence its projected
  nonlinearity is zero. If it is also a Laplacian eigenfield, Navier-Stokes
  evolves it only by viscous decay b(t)=exp(-nu lambda^2 t)b(0). Thus a
  high-Re fine residual can carry large gradient for a producer clock without
  nonlinear self-eviction. The branch is not thereby constructed for the real
  overlap bath: compact finite-energy localization, same-fluid coupling to the
  producer, and pressure-Hessian moment matching remain open. The result only
  kills the fast-turnover self-drift shortcut and forces the fine/sparse
  branch to be decided by localization, moment matching, coupling, Reynolds
  edge, compensator routing, or construction/exclusion. No dense-crowd theorem,
  confinement constant, W1 repair, F4/F5 pass, manuscript completion, or MPP
  closure is claimed.
---

# Overlap bath: Beltrami obstruction to the fine-scale self-drift shortcut

## 1. Kill question

The scale split left a narrow survivor. At
\[
  \eta={\delta_D\over s}\sim\beta^{-4/5},
  \tag{BFS.1}
\]
q-row hiding requires
\[
  \phi\theta^2\lesssim\beta^{12/5}.
  \tag{BFS.2}
\]

In coherent support, this means
\[
  \theta={\ell\over D}\lesssim\beta^{6/5}.
  \tag{BFS.3}
\]

The tempting kill mechanism is:
\[
  \text{fine scale}+\text{large gradient}
  \Rightarrow
  \text{fast internal turnover}
  \Rightarrow
  \text{self-eviction}.
  \tag{BFS.4}
\]

The checked answer is negative. Fast internal scale is not enough, because
Beltrami fields make the projected nonlinear turnover vanish exactly.

## 2. Exact identity

Let \(b\) be divergence-free and Beltrami:
\[
  \nabla\times b=\lambda b.
  \tag{BFS.5}
\]

The vector identity gives
\[
  (b\cdot\nabla)b
  =
  \nabla {|b|^2\over2}
  -
  b\times(\nabla\times b)
  =
  \nabla {|b|^2\over2}.
  \tag{BFS.6}
\]

Therefore
\[
  \mathbb P((b\cdot\nabla)b)=0.
  \tag{BFS.7}
\]

The whole nonlinear self-turnover is pressure. It does not move the Beltrami
shape under the Euler projection.

## 3. Exact Navier-Stokes clock

If \(b\) is a constant-eigenvalue Beltrami mode, then
\[
  -\Delta b=\lambda^2 b.
  \tag{BFS.8}
\]

Thus
\[
  u(t)=e^{-\nu\lambda^2 t}b
  \tag{BFS.9}
\]
solves Navier-Stokes with pressure
\[
  p(t)=-{1\over2}e^{-2\nu\lambda^2 t}|b|^2.
  \tag{BFS.10}
\]

The only decay clock is viscous. On the producer clock \(s^{-1}\), persistence
is exactly
\[
  \nu\lambda^2\ll s.
  \tag{BFS.11}
\]

Writing \(\ell=\lambda^{-1}=\theta D\), this is
\[
  {s\ell^2\over\nu}
  =
  \operatorname{Re}_D\theta^2
  \gg1,
  \tag{BFS.12}
\]
which is the high-Re persistence edge already named by the scale split.

## 4. Explicit pressure-Hessian witness

The obstruction is not vacuous: same-eigenvalue Beltrami superpositions can
have nonconstant \(|b|^2\), hence nonzero pressure Hessian.

On the flat torus, set
\[
  b_1=(\sin z,\cos z,0),
  \qquad
  b_2=(0,\sin x,\cos x),
  \qquad
  b=b_1+b_2.
  \tag{BFS.13}
\]

Then
\[
  \nabla\times b=b,
  \qquad
  -\Delta b=b.
  \tag{BFS.14}
\]

Moreover
\[
  |b|^2=2+2\sin x\cos z,
  \tag{BFS.15}
\]
so the Euler pressure
\[
  p=-{|b|^2\over2}
  =
  -1-\sin x\cos z
  \tag{BFS.16}
\]
has nonzero Hessian. At \((x,z)=(\pi/2,0)\),
\[
  \nabla^2 p
  =
  \operatorname{diag}(1,0,1),
  \tag{BFS.17}
\]
up to the inactive \(y\)-direction convention in this display. Its trace-free
part is nonzero.

Scaling
\[
  b_{\lambda,A}(x)=A\,b(\lambda x)
  \tag{BFS.18}
\]
gives
\[
  |\nabla b_{\lambda,A}|\sim A\lambda,
  \qquad
  |\nabla^2p_{\lambda,A}|\sim A^2\lambda^2.
  \tag{BFS.19}
\]

So a fine-scale field can carry large gradient and a real pressure-Hessian
moment while its projected self-advection remains zero.

## 5. What this kills

This kills the shortcut
\[
  \text{fine/sparse high-Re residual}
  \Rightarrow
  \text{automatic nonlinear self-eviction}.
  \tag{BFS.20}
\]

The fast clock is present, but it can be pure pressure. If the fine/sparse
branch is killed, the proof has to use one of the actual remaining defects:

- finite-energy localization of the Beltrami pocket;
- cutoff/Hodge errors from localization;
- pressure-Hessian moment matching to the producer's required matrix;
- coupling of the pocket to the producer rather than a free periodic cell;
- the Reynolds edge \(\operatorname{Re}_D\theta^2\not\gg1\);
- compensator or Gate-8 same-packet allocation;
- a construction/exclusion theorem for such pockets in the real field.

## 6. What remains

This is not a no-eviction crowd construction. The witness is exact on the
local/periodic Beltrami cell, not yet a compact finite-energy same-fluid
overlap bath.

It says only that the fine/sparse high-Re branch cannot be dismissed by saying
the residual's own fast turnover must rotate or destroy it. Beltrami geometry
is an exact neutralizer of that argument.

## 7. Four-sentence result

A high-gradient fine-scale residual need not self-evict by nonlinear turnover.
For a Beltrami field, \((b\cdot\nabla)b=\nabla(|b|^2/2)\), so the projected
nonlinearity is exactly zero, and Navier-Stokes only damps the mode on the
viscous clock. Same-eigenvalue Beltrami superpositions can still have nonzero
pressure Hessian, so the pressure-service moment is not automatically absent.
The fine/sparse branch therefore survives this shortcut and must be decided by
localization, moment matching, coupling, Reynolds edge, compensator routing, or
an actual construction/exclusion theorem.
