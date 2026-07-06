---
theorem_id: forward-gold-overlap-bath-local-supercritical-motion-obstruction-20260706
status: strict-reduction-local-exact-matrix-does-not-force-supercritical-motion
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.SupercriticalMotion.LOCAL-NO
  - AffineSameShapeHistory.SubcriticalKMotion
  - GlobalExactFieldForcing.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
completion_truth: >-
  Strict reduction and local obstruction, not a global bath construction, not a
  dense-crowd theorem, and not a confinement-constant decision. The
  supercritical fast-motion branch asks whether the exact matrix forces
  omega/s >= beta^(-4/5), because only that speed makes the q=4/5
  pressure-service row order one. At local affine-jet level this is false.
  Choose a fixed symmetric trace-free shape S and set
  A(t)=G(1+st)S with G=s beta^(4/5) on one producer clock. Then
  dot A=sG S, so the required trace-free pressure Hessian has leading size
  |K_tf|~sG=s^2 beta^(4/5), the q=4/5 pressure row. Its time derivative comes
  only from the quadratic correction (A^2)_tf and has size
  |dot K_tf|~sG^2, hence omega/s=|dot K_tf|/(s|K_tf|) is O(beta^(4/5)), far
  below beta^(-4/5). The exact shear-cell bank supplies this K_tf(t) at the
  same |K|D^5 cost. Therefore no local affine/pressure-Hessian matrix theorem
  can force supercritical motion. Any surviving fast-motion payer must be a
  genuinely global same-fluid effect: nonlocal pressure/Hodge matching,
  boundary/locality side terms, Reynolds-edge failure, or construction
  exclusion.
---

# Overlap bath: local supercritical-motion obstruction

## 1. Kill question

The fast-motion note priced the tracking branch:
\[
  {W_{\rm track}\over E_{\rm prod}}
  \lesssim
  {\omega\over s}\beta^{4/5}.
  \tag{LSM.1}
\]

Thus a tracking floor needs
\[
  {\omega\over s}\gtrsim\beta^{-4/5}.
  \tag{LSM.2}
\]

The kill question here is whether the exact local pressure matrix can force
that supercritical rate.

The checked local answer is no.

## 2. Same-shape affine history

Fix a symmetric trace-free matrix \(S\) with \(|S|=1\), and set
\[
  G:=s\beta^{4/5}.
  \tag{LSM.3}
\]

On one producer clock \(0\le t\le s^{-1}\), choose the local affine strain
history
\[
  A(t)=G(1+st)S.
  \tag{LSM.4}
\]

The local affine note shows that this is an exact local incompressible
Navier-Stokes jet once the pressure Hessian is chosen:
\[
  u(t,x)=A(t)(x-x_0).
  \tag{LSM.5}
\]

Since
\[
  \dot A(t)=sG S,
  \tag{LSM.6}
\]
the trace-free pressure Hessian required by the affine equation is
\[
  K_{\rm tf}(t)
  =
  -\dot A(t)-(A(t)^2)_{\rm tf}
  =
  -sG S-G^2(1+st)^2(S^2)_{\rm tf}.
  \tag{LSM.7}
\]

## 3. Size and motion of the required Hessian

For \(\beta\ll1\),
\[
  |K_{\rm tf}(t)|
  \sim sG
  =
  s^2\beta^{4/5}.
  \tag{LSM.8}
\]

This is exactly the \(q=4/5\) pressure-service row.

The time derivative is only the derivative of the quadratic correction:
\[
  \dot K_{\rm tf}(t)
  =
  -2sG^2(1+st)(S^2)_{\rm tf},
  \tag{LSM.9}
\]
so
\[
  |\dot K_{\rm tf}(t)|
  \lesssim
  sG^2.
  \tag{LSM.10}
\]

Hence the normalized Hessian motion satisfies
\[
  {\omega\over s}
  =
  {|\dot K_{\rm tf}|\over s|K_{\rm tf}|}
  \lesssim
  {sG^2\over s(sG)}
  =
  {G\over s}
  =
  \beta^{4/5}.
  \tag{LSM.11}
\]

This is not supercritical. It is smaller than the producer clock for
\(\beta\ll1\), and it is far below the threshold
\[
  \beta^{-4/5}.
  \tag{LSM.12}
\]

## 4. Exact shear-cell realization

The exact shear-cell display supplies any trace-free Hessian \(K_{\rm tf}(t)\)
at cost
\[
  E_{\rm ph}(t)\lesssim |K_{\rm tf}(t)|D^5.
  \tag{LSM.13}
\]

Substituting (LSM.8),
\[
  E_{\rm ph}
  \lesssim
  s^2\beta^{4/5}D^5
  =
  \beta^{4/5}E_{\rm prod}(D).
  \tag{LSM.14}
\]

The tracking work from the slow change (LSM.11) is even smaller:
\[
  W_{\rm track}
  \lesssim
  {\omega\over s}\beta^{4/5}E_{\rm prod}
  \lesssim
  \beta^{8/5}E_{\rm prod}.
  \tag{LSM.15}
\]

So this local exact-matrix schedule carries a \(q=4/5\) pressure-service row
without supercritical pressure-Hessian motion.

## 5. What this kills

This kills the local theorem
\[
  \text{exact pressure matrix}
  \Rightarrow
  {\omega\over s}\gtrsim\beta^{-4/5}.
  \tag{LSM.16}
\]

The affine equation can demand a pressure Hessian of size
\[
  s^2\beta^{4/5}
  \tag{LSM.17}
\]
while the demanded Hessian moves only at normalized rate
\[
  O(\beta^{4/5}).
  \tag{LSM.18}
\]

Thus supercritical motion cannot be forced by local affine dynamics,
trace-free pressure algebra, or shear-cell representation.

## 6. What remains

This is not a global dynamic bath construction. It does not prove that a real
finite-energy Navier-Stokes field can keep the same bath through the whole
record ladder.

The remaining fast-motion branch is now global:

- nonlocal pressure/Hodge matching may force faster motion than the local jet;
- boundary/locality side terms may force a supercritical tracking relation;
- Reynolds-edge failure may suppress the producer or create a record-ladder
  payment;
- otherwise a summability-valid dynamic pressure bath below the threshold
  remains the construction/exclusion branch.

## 7. Four-sentence result

Local exact pressure algebra does not force supercritical fast motion. With
\[
  A(t)=s\beta^{4/5}(1+st)S,
\]
the required trace-free pressure Hessian has size
\[
  |K_{\rm tf}|\sim s^2\beta^{4/5},
\]
but its normalized motion is only
\[
  \omega/s\lesssim\beta^{4/5}.
\]
The exact shear-cell bank supplies that Hessian at the same \(q=4/5\) cost, so
the supercritical-motion payer must be global or absent: nonlocal Hodge
matching, boundary/locality, Reynolds-edge failure, or construction/exclusion.
