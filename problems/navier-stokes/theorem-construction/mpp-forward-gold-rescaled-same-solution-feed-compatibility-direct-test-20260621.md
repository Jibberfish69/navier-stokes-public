---
ns_viewer:
  theorem_id: forward-gold-rescaled-same-solution-feed-compatibility-direct-test-20260621
  status: direct-test-complete-cross-scale-compatibility-is-exact-but-not-yet-rigid
  proof_role: forward_gold_stage1_direct_test
  logical_landing_node: rescaled_same_solution_feed_compatibility
  edge_effect: "Tests Stage 1 of the rescaled annular feed split using the exact same-solution relation between nested microscopes. The important gain is that the rescaled packets are not independent: if r_{j+1}=lambda_j r_j, then v_{j+1}(s,y)=lambda_j v_j(lambda_j^2 s, lambda_j y). This exact identity is the right mathematical expression of same-solution participation across shrinking heat-scale shells. It does not by itself prove that the infinite feed is impossible; it becomes rigid only after no-drift/unique-tangent, a strict decreasing quantity, or profile production. Without one of those, profile switching or noncompact recurrence remains possible."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-annular-feed-two-stage-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-shared-participation-heat-scale-direct-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigid-zeno-profile-production-exhaustion-20260620.md
  downstream_consequence: "Stage 1 should be attacked through exact cross-scale same-solution compatibility, not through independent per-packet local energy identities. The remaining missing input is a theorem that turns the compatibility identity plus persistent normalized badness into unique tangent / discrete self-similarity / forbidden profile, or into a strict decrease across scales."
---

# MPP Forward-Gold Rescaled Same-Solution Feed Compatibility Direct Test

Date: 2026-06-21

## Status

This note tests the direct Stage 1 claim from the two-stage split:

\[
\text{a normalized bad interior pulse cannot keep being fed through shrinking
heat-scale shells by the same pressure-viscosity-incompressibility law forever.}
\tag{RFC.1}
\]

The new point is that "same law" is not enough. The packets also come from the
same original solution. That gives an exact relation between consecutive
microscopes.

## 1. Exact nested rescaling identity

Fix one alleged terminal point \((T,x_\ast)\). For radii \(r_j\downarrow0\), set

\[
v_j(s,y)
=
r_j u(T+r_j^2s,\ x_\ast+r_jy),
\qquad
q_j(s,y)
=
r_j^2p(T+r_j^2s,\ x_\ast+r_jy).
\tag{RFC.2}
\]

Each pair \((v_j,q_j)\) satisfies the same rescaled Navier-Stokes equation:

\[
\partial_s v_j+(v_j\cdot\nabla)v_j+\nabla q_j
=\nu\Delta v_j,
\qquad
\nabla\cdot v_j=0.
\tag{RFC.3}
\]

Let

\[
\lambda_j=\frac{r_{j+1}}{r_j}.
\tag{RFC.4}
\]

Because both \(v_j\) and \(v_{j+1}\) come from the same original solution
\((u,p)\), they obey the exact compatibility identity

\[
v_{j+1}(s,y)
=
\lambda_j\,v_j(\lambda_j^2s,\lambda_j y),
\tag{RFC.5}
\]

and similarly

\[
q_{j+1}(s,y)
=
\lambda_j^2\,q_j(\lambda_j^2s,\lambda_j y).
\tag{RFC.6}
\]

This is the precise mathematical version of nested microscopes looking at the
same physical event. The rescaled packets are not free independent solutions.

## 2. Why this is stronger than the local balance alone

The local balance on one fixed rescaled cylinder says that an interior packet
can persist only through the annular terms in that same balance. But one
cylinder by itself does not know that it is part of a nested sequence.

The identity `(RFC.5)` carries that missing information. It says the next
microscope is exactly the previous microscope restricted closer to the terminal
point and then renormalized.

So the direct Stage 1 theorem should not be tested as:

\[
\text{does one rescaled Navier-Stokes cylinder forbid nonzero annular feed?}
\tag{RFC.7}
\]

The answer to `(RFC.7)` is no.

The correct direct test is:

\[
\text{can the exact recurrence relation `(RFC.5)` support nonzero badness at
every scale?}
\tag{RFC.8}
\]

## 3. What persistent normalized badness means here

For a fixed cutoff \(\rho\), define

\[
M_j(s)=\int \frac12 |v_j(s,y)|^2\rho(y)\,dy.
\tag{RFC.9}
\]

A clean version of persistent normalized badness is:

\[
\inf_j \sup_{s\in[-1,0]} M_j(s)>0,
\tag{RFC.10}
\]

together with nontrivial critical activity on the same fixed cylinder, for
example

\[
\inf_j
\int_{-1}^{0}\int_{B_1}
\left(|v_j|^3+|q_j|^{3/2}+\nu|\nabla v_j|^2\right)\,dy\,ds
>0.
\tag{RFC.11}
\]

The Stage 1 claim is that `(RFC.3)`, `(RFC.5)`, and persistent badness of this
kind are incompatible under the terminal hypotheses of the gold route.

## 4. Direct consequence of a unique tangent

The compatibility identity becomes powerful if the rescaled sequence has a
unique tangent profile. Suppose, for a subsequence, \(v_j\to V\), \(q_j\to Q\)
strongly enough on compact subsets, and suppose \(\lambda_j\to\lambda\in(0,1)\)
while the shifted sequence \(v_{j+1}\) has the same limit. Passing `(RFC.5)` to
the limit gives

\[
V(s,y)=\lambda V(\lambda^2s,\lambda y),
\tag{RFC.12}
\]

and

\[
Q(s,y)=\lambda^2 Q(\lambda^2s,\lambda y).
\tag{RFC.13}
\]

So unique tangent converts infinite nested feeding into an exact discretely
self-similar rescaled profile.

That is a major simplification. The problem is no longer a free Zeno chain; it
is a rigid profile problem.

## 5. Where the direct proof still fails

Current inputs do not prove the unique tangent premise used above. They allow
at least three escape modes:

\[
\text{profile switching across scales,}
\tag{RFC.14a}
\]

\[
\text{translation, rotation, phase, or gauge drift,}
\tag{RFC.14b}
\]

\[
\text{defect or source residue at the terminal face.}
\tag{RFC.14c}
\]

In those cases `(RFC.5)` is still true, but it does not converge to a single
rigid profile identity like `(RFC.12)`.

Thus the exact same-solution compatibility identity is necessary but not yet
enough to prove Stage 1.

## 6. What would close Stage 1 from this route

The direct route now has a precise shape:

\[
\text{same-solution compatibility `(RFC.5)`}
+
\text{persistent normalized badness}
\Longrightarrow
\text{rigid recurrent profile}
\Longrightarrow
\text{contradiction.}
\tag{RFC.15}
\]

The missing production step is one of:

\[
\text{NoDriftUniqueTangent.A,}
\tag{RFC.16a}
\]

\[
\text{a strict scale-decrease quantity,}
\tag{RFC.16b}
\]

or

\[
\text{MinimalZenoProfileProduction.A.}
\tag{RFC.16c}
\]

With `(RFC.16a)`, the limit becomes discretely self-similar by `(RFC.12)`.
With `(RFC.16b)`, infinite recurrence is excluded before profile production.
With `(RFC.16c)`, the recurrent branch is converted into the rigid profile
class already targeted by the Liouville consumer.

## Verdict

The Stage 1 idea does gain a real exact equation:

\[
\boxed{
v_{j+1}(s,y)=\lambda_j v_j(\lambda_j^2s,\lambda_j y).
}
\tag{RFC.17}
\]

This identity is the right way to express "same solution" across nested
heat-scale microscopes.

It does not, by itself, prove that the infinite rescaled feed is impossible.
It reduces Stage 1 to:

\[
\boxed{
\text{exact same-solution compatibility}
+\text{ persistent normalized badness}
\Rightarrow
\text{unique tangent / strict descent / rigid profile production.}
}
\tag{RFC.18}
\]

So the direct Stage 1 route is sharper now: the missing object is not generic
local energy accounting. It is the theorem that turns the exact cross-scale
identity into rigidity.

