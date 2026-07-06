---
theorem_id: forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705
status: k5-alone-high-re-uniform-cap-fails-reduced-to-two-payer
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / K5 edge high-Re obstruction
target_object:
  - K5HighReynoldsUniformCap.NO
  - K5HighReynoldsPayerReduction.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lambda-edge-hamiltonian-retype-marginal-viscous-closure-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-theorem2-two-payer-impedance-attack-20260705.md
completion_truth: >-
  Exact obstruction and strict reduction. K5 alone cannot supply a uniform
  high-Reynolds edge cap. The pure viscous edge normal form gives integrated
  production comparable to C_edge*Re*A0 on the neutral branch, and the pure Crow
  edge mode has no intrinsic positive seed floor. For any fixed admissible A0 in
  the normal-form window, the K5-only supremum over local Reynolds grows like Re.
  Therefore the high-Re edge branch is not a K5 kill-integral problem anymore:
  it is exactly the high-Re payer problem from the two-payer note. No full
  confinement constant, crowd result, custody theorem, or MPP closure is claimed.
---

# K5 high-Re edge: uniform cap obstruction

## 1. Kill condition

The K5 edge cell would be killed internally only if the neutral-edge residence
integral were bounded by an absolute constant on the whole local-Reynolds
family:

\[
\sup_{\operatorname{Re}\ge 1}
\int_0^{T_{\rm edge}} \mathcal P_{\rm edge}(t)\,dt
<\infty .
\tag{K5H.1}
\]

This note checks that condition for K5 alone.

## 2. The checked K5 normal form

The viscous Reynolds split gives, on the pure near-edge Crow branch,

\[
\dot A
=-s\,c_v\kappa^2\operatorname{Re}^{-1}A+O(sA^2),
\qquad
\mathcal P_{\rm edge}=s\Pi A+O(sA^2).
\tag{K5H.2}
\]

Integrating the leading damped edge branch gives

\[
\int_0^\infty \mathcal P_{\rm edge}(t)\,dt
=
C_{\rm edge}\,\operatorname{Re}\,A_0
+O(\operatorname{Re}A_0^2),
\tag{K5H.3}
\]

where \(A_0=|a_0|^2\) is the edge-mode displacement amplitude and
\(C_{\rm edge}=\Pi/(c_v\kappa^2)\) in the notation of the split note.

That expression is enough on the unit/marginal family. It is not a uniform
high-Reynolds cap.

## 3. Supremum failure

The pure edge mode has no intrinsic seed floor and no intrinsic Reynolds ceiling.
Choose a fixed admissible amplitude

\[
0<A_{\rm fix}<A_\ast
\tag{K5H.4}
\]

small enough that the \(O(A_{\rm fix}^2)\) correction is lower order than the
leading \(A_{\rm fix}\) term throughout the edge normal-form window. The
K5-only residence price then scales as

\[
\mathcal I_{\rm K5}(\operatorname{Re},A_{\rm fix})
=C_{\rm edge}\,\operatorname{Re}\,A_{\rm fix}
+O(\operatorname{Re}A_{\rm fix}^2),
\tag{K5H.5}
\]

and the K5 mechanism supplies no compensating high-Reynolds decay. Thus the
K5-only supremum is not uniformly bounded:

\[
\sup_{\operatorname{Re}\ge 1}
\mathcal I_{\rm K5}(\operatorname{Re},A_{\rm fix})
=\infty
\qquad\text{within the K5-only model.}
\tag{K5H.6}
\]

This is not a counterexample to the confinement constant. It is a counterexample
to the claim that the K5 kill integral closes the high-Re edge branch by itself.

## 4. Strict reduction

The edge cell is now split exactly:

\[
\text{marginal/unit Re edge}
\quad\text{pays by viscosity,}
\tag{K5H.7}
\]

while

\[
\text{high-Re edge}
\quad\text{must pay by return-race, custody, or sideband/crowd interaction.}
\tag{K5H.8}
\]

The second line is the same object as the high-Re payer in the two-payer note:
inviscid transfer is not spent; it returns unless the next handoff extracts it
before the return clock. The missing constant is therefore no longer a hidden
K5 coefficient. It is the uniform lower bound on the high-Re payer.

## 5. Consequence for the work order

The doubling comparison cannot be promoted to the full pair-cell certification
until the high-Re edge payer is proved or the certification is explicitly
restricted to the marginal/unit-Re branch. The next load-bearing high-Re object
is the return-race/custody/sideband floor, not another K5-only edge estimate.

## 6. Four-sentence result

K5 closes the neutral edge only on the marginal/unit-Re family. In the high-Re
family, the K5-only residence cap grows like \(\operatorname{Re}A_0\). Because
the edge mode has no intrinsic seed floor or Reynolds ceiling, K5 alone has no
uniform high-Re cap. The high-Re edge cell is therefore strictly reduced to the
two-payer return-race/custody/sideband problem.
