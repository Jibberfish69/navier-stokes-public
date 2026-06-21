---
ns_viewer:
  theorem_id: forward-gold-rescaled-annular-feed-two-stage-split-20260621
  status: two-stage-split-installed-language-repaired-first-stage-kept-primary
  proof_role: forward_gold_participation_split_direct_test
  logical_landing_node: rescaled_annular_feed_two_stage_split
  edge_effect: "Separates Thomas's direct participation objection from the later annular-term question. Stage 1 asks whether a normalized bad interior pulse can keep being fed through shrinking heat-scale annuli by the same rescaled pressure-viscosity-incompressibility law forever. Stage 2 is only the fallback: if such feeding is dynamically possible, some annular term in the same local balance must stay nonzero at the right scale. Current installed inputs do not prove Stage 1; they require an additional theorem saying the repeated rescaled feed must stop, freeze into a forbidden profile, or lose the same-law structure. Stage 2 asks for same-scale nonvanishing of one annular balance term, not for a separate readout object."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-shared-participation-heat-scale-direct-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coherent-participation-square-reserve-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-pressure-flux-throttle-direct-test-20260620.md
    - problems/navier-stokes/source-frontier.yaml
  downstream_consequence: "Do not fold the direct no-infinite-feed question into underpayment or readout language. The direct theorem is RescaledSameLawNoInfiniteFeed.A. Only after that theorem fails should the fallback ask whether some annular term in the same local balance must stay nonzero at the right scale."
---

# MPP Forward-Gold Rescaled Annular Feed Two-Stage Split

Date: 2026-06-21

## Status

This note records and tests the sharper split:

1. first, try to prove directly that a normalized bad interior pulse cannot
   keep being fed through shrinking heat-scale shells by the same
   pressure-viscosity-incompressibility law forever, after rescaling each shell;
2. only if that direct statement fails, prove that such persistent feeding
   forces some annular term in the same local balance to stay nonzero at the
   right scale.

The second item is not part of the first theorem's premise. It is a fallback
annular-term question after the direct coupled-law obstruction has been tested.

## 1. Heat-scale rescaled law

Let \((T,x_\ast)\) be the alleged terminal point and let \(r_j\downarrow0\).
For each heat-scale window define

\[
v_j(s,y)=r_j u(T+r_j^2s,\ x_\ast+r_jy),
\qquad
q_j(s,y)=r_j^2p(T+r_j^2s,\ x_\ast+r_jy).
\tag{RAF.1}
\]

On each fixed cylinder \(Q_R=(-R^2,0]\times B_R\), the pair \((v_j,q_j)\)
satisfies the same incompressible Navier-Stokes law:

\[
\partial_s v_j+(v_j\cdot\nabla_y)v_j+\nabla_yq_j
=\nu\Delta_yv_j,
\qquad
\nabla_y\cdot v_j=0.
\tag{RAF.2}
\]

If the terminal coordinates are written with the logarithmic heat clock
\(s=-\log(T-t)\), the same object includes the parabolic drift terms recorded in
the shared-participation note:

\[
\partial_s v+(v\cdot\nabla)v+\nabla q
+\frac12 y\cdot\nabla v+\frac12v
=\nu\Delta v,
\qquad
\nabla\cdot v=0.
\tag{RAF.3}
\]

Both forms say the same thing for this purpose: pressure, convection,
viscosity, incompressibility, and the heat-scale clock are one coupled law.

## 2. What "feeding through the annulus" means

Choose \(0<\theta<1<R\) and a cutoff \(\rho\) with \(\rho=1\) on \(B_\theta\)
and \(\rho=0\) outside \(B_1\). Set

\[
M_j(s)=\int \frac12 |v_j(s,y)|^2\rho(y)\,dy.
\tag{RAF.4}
\]

Multiplying `(RAF.2)` by \(v_j\rho\) gives the fixed-scale packet identity

\[
\begin{aligned}
M_j'(s)
&+\nu\int |\nabla v_j|^2\rho\,dy  \\
&=
\frac12\int |v_j|^2v_j\cdot\nabla\rho\,dy
+\int q_jv_j\cdot\nabla\rho\,dy
+\frac{\nu}{2}\int |v_j|^2\Delta\rho\,dy .
\end{aligned}
\tag{RAF.5}
\]

With logarithmic heat-scale variables the dilation terms from `(RAF.3)` are
added to the right side, but they are still part of the same fixed annular
interface.

Thus "feeding through the shell" means that the right side of `(RAF.5)`, on the
annulus where \(\nabla\rho\) or \(\Delta\rho\) is supported, repeatedly offsets
the interior dissipation and keeps a normalized interior pulse alive.

One concrete persistent-pulse condition is:

\[
\inf_j \int_{-1}^{0}\int_{B_\theta}
\left(|v_j|^3+|q_j|^{3/2}+\nu|\nabla v_j|^2\right)\,dy\,ds
>0,
\tag{RAF.6}
\]

with the interior mass not vanishing:

\[
\inf_j \sup_{s\in[-1,0]} M_j(s)>0.
\tag{RAF.7}
\]

The direct target is therefore not a statement about underpaying. It is the
following direct exclusion.

## 3. Stage 1 target

`RescaledSameLawNoInfiniteFeed.A`:

\[
\boxed{
\begin{gathered}
\text{There is no infinite terminal sequence }r_j\downarrow0
\text{ for which every rescaled packet }(v_j,q_j)\\
\text{satisfies the same law `(RAF.2)` or `(RAF.3)`, keeps a normalized bad
interior pulse, and is refilled through the fixed annular interface forever.}
\end{gathered}}
\tag{RAF.8}
\]

This is the strongest version of the participation-law idea. It says the
coupled law itself prevents the infinite rescaled feed before any later
annular-term question is invoked.

## 4. Direct test of Stage 1

From the installed inputs, `(RAF.8)` does not follow from the rescaled equation
alone.

The reason is structural. Equation `(RAF.2)` is scale-invariant and has no
sign-definite one-sided functional that decreases by the full annular interface
action. On any fixed finite cylinder, smooth nonzero Navier-Stokes evolution can
have nonzero flux through the cutoff annulus. The local identity `(RAF.5)` sees
that flux, but does not forbid it.

The compactness route gives a sharper reduction. If `(RAF.8)` fails and the
rescaled packets have the usual local suitable compactness, a subsequence gives
an ancient/local-suitable limit \((V,Q)\) with a nonzero interior profile and a
nontrivial fixed annular interface:

\[
\partial_s V+(V\cdot\nabla)V+\nabla Q=\nu\Delta V,
\qquad
\nabla\cdot V=0,
\tag{RAF.9}
\]

or, in logarithmic heat variables, the corresponding drifted equation `(RAF.3)`.

To turn this into a contradiction, one needs an additional theorem saying one
of three plain things:

\[
\text{there is a quantity that must strictly decrease each time the feed repeats,}
\tag{RAF.10a}
\]

\[
\text{the limiting repeated-feed object is impossible,}
\tag{RAF.10b}
\]

or

\[
\text{the repeated feed freezes into a rigid profile that is already forbidden.}
\tag{RAF.10c}
\]

These are the direct descendants of the first-stage theorem. They do not assume
that a shell underpays. They try to prove that the infinite rescaled feed itself
cannot exist.

At current input strength the direct route therefore reduces to:

\[
\text{RescaledSameLawNoInfiniteFeed.A}
\Leftarrow
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{or}\quad
\text{CompactAncientRigidity.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A}.
\tag{RAF.11}
\]

## 5. Stage 2 fallback

If Stage 1 is not proved, the fallback is a different theorem:

`SomeAnnularTermStaysNonzeroIfInfiniteFeed.A`:

\[
\boxed{
\begin{gathered}
\text{If a normalized bad interior pulse can keep being fed through shrinking
heat-scale shells,}\\
\text{then at least one annular term in the same local balance stays nonzero at
the right scale.}
\end{gathered}}
\tag{RAF.12}
\]

This is not a new object. It is just the local balance again. If every annular
term goes to zero at the normalized scale, then there is no feed left to keep
the interior pulse alive.

\[
\text{persistent rescaled annular feed}
\quad\text{and}\quad
\text{all annular balance terms vanish at the normalized scale}
\tag{RAF.13}
\]

should be impossible.

In terms of `(RAF.5)`, the fallback asks for a scale-independent lower bound on
at least one of the actual annular terms:

\[
\frac12\int |v_j|^2v_j\cdot\nabla\rho\,dy,
\qquad
\int q_jv_j\cdot\nabla\rho\,dy,
\qquad
\frac{\nu}{2}\int |v_j|^2\Delta\rho\,dy,
\tag{RAF.14}
\]

or on the corresponding dilation terms in the logarithmic heat-scale form.

That is the whole second claim. It should not be introduced as a separate
readout theory at this stage.

## 6. Relation to the previous heat-scale notes

The shared-participation and coherent-participation notes correctly rejected
pressure-only, viscosity-only, and shell-debt-only formulations. They also
identified the unweighted reserve wall.

This note adds one missing ordering distinction:

\[
\text{direct no-infinite-feed}
\quad\text{comes before}\quad
\text{fallback annular-term nonvanishing}.
\tag{RAF.15}
\]

So the live proof object is not "find a readout." The first question is whether
the same rescaled pressure-viscosity-incompressibility law can support the
infinite feed at all.

## Verdict

The two-stage split is valid and useful.

Stage 1 is the stronger direct target:

\[
\boxed{\text{RescaledSameLawNoInfiniteFeed.A}.}
\tag{RAF.16}
\]

It is not proved by the installed local-energy or shared-participation
identities. It reduces to strict rescaled no-waste, compact ancient rigidity, or
minimal Zeno profile production.

Stage 2 is the fallback:

\[
\boxed{\text{SomeAnnularTermStaysNonzeroIfInfiniteFeed.A}.}
\tag{RAF.17}
\]

It is the place where later proof machinery may measure the annular terms, after
the direct question has failed. The claim itself is only that the terms in the
same local balance cannot all vanish while they keep feeding the pulse.
