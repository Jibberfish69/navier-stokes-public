---
theorem_id: forward-gold-wkb-selector-force-moving-frame-variation-floor-20260706
status: exact-branch-floor-moving-affine-coordinate-pays-frame-variation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.MovingFrameVariationFloor
  - SelectedAffineMoment.AdaptiveFrameCustody
  - HminusOneForceToFrameMotion.Currency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-acceleration-impulse-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-nonlinear-stress-localization-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
completion_truth: >-
  Exact branch identity and variation floor only. For a moving localized
  affine test Psi(t), the acceleration carrier identity is
  M_A(T)=d/dt <v,Psi>-<v,partial_t Psi>. Therefore any sign-coherent selected
  affine service not stored in endpoint impulse must be carried by the moving
  frame term. Quantitatively,
  int_I ||v||_2 ||partial_t Psi||_2 dt >=
  |int_I M_A(T) dt - [<v,Psi>]_a^b|. For a standard localized affine family
  Psi_{A,X,D}, ||partial_t Psi||_2 is bounded by
  C(D^(5/2)|dot A|+|A|D^(3/2)(|dot X|+|dot D|)), so under an energy bound this
  gives the corresponding lower bound on frame variation. This proves no
  full custody theorem, no nonlinear-carrier conversion, no legal
  defect-carriage theorem, no WKB construction/exclusion, no confinement
  constant, and no MPP closure.
---

# Selector-force moving-frame variation floor

## 1. Question

The fixed-coordinate acceleration identity says
\[
  M_A(T)=-\langle F_{\rm sel},\Psi_A\rangle,
  \qquad
  \partial_t v+F_{\rm sel}=0
  \quad\Longrightarrow\quad
  M_A(T)={d\over dt}\langle v,\Psi_A\rangle .
  \tag{SMF.1}
\]

That prices acceleration-only carriage as endpoint impulse.

The remaining adaptive branch lets the affine coordinate move:
\[
  \Psi_A\quad\leadsto\quad\Psi(t).
  \tag{SMF.2}
\]

This note prices exactly that motion term.

## 2. Moving affine identity

At each time let \(\Psi(t)\) be a divergence-free localized affine test equal
to \(A(t)(x-X(t))\) on the selected ball \(B_{D(t)}(X(t))\). The selector
duality gives
\[
  M_A(T)(t)=-\langle F_{\rm sel}(t),\Psi(t)\rangle .
  \tag{SMF.3}
\]

On the acceleration-carrier branch,
\[
  \partial_t v+F_{\rm sel}=0.
  \tag{SMF.4}
\]

Thus
\[
  M_A(T)(t)
  =
  \langle\partial_t v,\Psi(t)\rangle .
  \tag{SMF.5}
\]

Since \(\Psi\) now depends on time,
\[
  \langle\partial_t v,\Psi\rangle
  =
  {d\over dt}\langle v,\Psi\rangle
  -
  \langle v,\partial_t\Psi\rangle .
  \tag{SMF.6}
\]

Therefore
\[
  M_A(T)
  =
  {d\over dt}\langle v,\Psi\rangle
  -
  \langle v,\partial_t\Psi\rangle .
  \tag{SMF.7}
\]

The first term is endpoint impulse. The second term is frame motion.

## 3. Coherent service forces frame variation

Integrating (SMF.7) on \(I=[a,b]\),
\[
  \int_I M_A(T)(t)\,dt
  =
  [\langle v,\Psi\rangle]_{a}^{b}
  -
  \int_I\langle v,\partial_t\Psi\rangle\,dt .
  \tag{SMF.8}
\]

Consequently,
\[
  \int_I\|v(t)\|_2\,\|\partial_t\Psi(t)\|_2\,dt
  \ge
  \left|
    \int_I M_A(T)(t)\,dt
    -
    [\langle v,\Psi\rangle]_{a}^{b}
  \right|.
  \tag{SMF.9}
\]

This is the exact moving-frame floor. If sign-coherent selected service is not
stored as endpoint impulse, it must appear as selector/frame motion.

The endpoint impulse has the standard bound
\[
  |\langle v(t),\Psi(t)\rangle|
  \le
  \|v(t)\|_2\,\|\Psi(t)\|_2 .
  \tag{SMF.10}
\]

So endpoint-bounded service cannot be recycled forever by rotating the affine
coordinate without spending the frame term in (SMF.9).

## 4. Standard affine-family scale

For a standard localized affine family
\[
  \Psi(t,x)=\Psi_{A(t),X(t),D(t)}(x),
  \tag{SMF.11}
\]
with fixed cutoff shape and its Bogovskii divergence correction, the scaled
test norms obey
\[
  \|\Psi(t)\|_2\le C|A(t)|D(t)^{5/2}
  \tag{SMF.12}
\]
and
\[
  \|\partial_t\Psi(t)\|_2
  \le
  C\left(
    D(t)^{5/2}|\dot A(t)|
    +
    |A(t)|D(t)^{3/2}
    \bigl(|\dot X(t)|+|\dot D(t)|\bigr)
  \right).
  \tag{SMF.13}
\]

The three terms have the expected meanings:
\[
\begin{array}{ll}
D^{5/2}|\dot A|
  &\text{affine strain/eigenframe variation},\\[1mm]
|A|D^{3/2}|\dot X|
  &\text{center motion},\\[1mm]
|A|D^{3/2}|\dot D|
  &\text{scale/collar motion}.
\end{array}
\tag{SMF.14}
\]

If \(\|v(t)\|_2\le E^{1/2}\) on \(I\), then (SMF.9) and (SMF.13) give
\[
\begin{aligned}
\int_I&
\left(
  D^{5/2}|\dot A|
  +
  |A|D^{3/2}(|\dot X|+|\dot D|)
\right)dt\\
&\ge
{c\over E^{1/2}}
\left|
  \int_I M_A(T)(t)\,dt
  -
  [\langle v,\Psi\rangle]_{a}^{b}
\right|.
\end{aligned}
\tag{SMF.15}
\]

This is a frame-variation floor, not a dissipation floor.

For pure eigenframe rotation with fixed \(|A|\), \(X\), and \(D\),
\[
  |\dot A|\sim |A|\,|\Omega|,
  \tag{SMF.16}
\]
so the frame term is exactly angular custody:
\[
  \int_I |A|D^{5/2}|\Omega|\,dt
  \gtrsim
  {1\over E^{1/2}}
  \left|
    \int_I M_A(T)\,dt
    -
    [\langle v,\Psi\rangle]_a^b
  \right|.
  \tag{SMF.17}
\]

## 5. What this does not close

This note prices adaptive affine re-posing only after the selector force has
been assigned to the acceleration leg. It does not price nonlinear transport,
which is the kinetic-stress / collar / Reynolds-defect split from the nonlinear
follow-up.

It also does not prove that the frame variation is order-one compared with
production along every dense crowd trajectory. That comparison is still a
custody/composition theorem.

What is closed here is narrower and exact: the moving coordinate is not a free
selector. Its motion appears in the equation as
\[
  -\langle v,\partial_t\Psi\rangle .
  \tag{SMF.18}
\]

## 6. Four-sentence result

For a moving localized affine test,
\[
  M_A(T)
  =
  {d\over dt}\langle v,\Psi\rangle
  -
  \langle v,\partial_t\Psi\rangle .
\]
The endpoint term is finite impulse room; the second term is exactly the
selector/frame motion. Therefore coherent selected affine service that is not
stored at the endpoints forces
\[
  \int_I\|v\|_2\|\partial_t\Psi\|_2\,dt
\]
at least as large as the leftover service. For the standard affine family this
is the variation floor (SMF.15), with strain-frame, center, and scale/collar
motion all visible.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
