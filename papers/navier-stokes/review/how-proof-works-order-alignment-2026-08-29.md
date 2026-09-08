# How the Proof Works: order-alignment note

Date: 2026-08-29  
Status: alignment record only; no TeX or PDF modification

## Governing movement supplied by Thomas

1. Establish the critical-height problem once through scaling, the vortex tube, and the Zeno cascade. At this point the reader needs only the physical and scaling pressure. The exact Sobolev ascent is earned later from the differentiated equation.

2. State the singularity insight plainly:

   > In order for a singularity to form, velocity has to blow up. In order for that to happen, its acceleration would also have to blow up, which means its jerk has to blow up, and so on, and so on.

   \[
   u,\qquad \partial_tu,\qquad \partial_t^2u,\qquad\ldots
   \]

3. Expand the first three temporal responses before introducing compression notation:

   \[
   \partial_tu
   =\nu\Delta u-(u\!\cdot\nabla)u-\nabla p,
   \]

   \[
   \partial_t^2u
   =\nu\Delta\partial_tu
   -(\partial_tu\!\cdot\nabla)u
   -(u\!\cdot\nabla)\partial_tu
   -\nabla\partial_tp,
   \]

   \[
   \begin{aligned}
   \partial_t^3u
   &=\nu\Delta\partial_t^2u
   -(\partial_t^2u\!\cdot\nabla)u \\
   &\quad-2(\partial_tu\!\cdot\nabla)\partial_tu
   -(u\!\cdot\nabla)\partial_t^2u
   -\nabla\partial_t^2p.
   \end{aligned}
   \]

   These stacked lines let the reader see the product-rule expansion develop: one transport term, then two, then three with the middle contribution carrying coefficient (2).

4. State that the complete pattern is the binomial form, still in the original variables:

   \[
   \begin{aligned}
   \partial_t^{r+1}u
   &=\nu\Delta\partial_t^ru \\
   &\quad-
   \sum_{a=0}^{r}\binom ra
   (\partial_t^au\!\cdot\nabla)\partial_t^{r-a}u
   -\nabla\partial_t^rp.
   \end{aligned}
   \]

5. Only after the pattern is visible, set

   \[
   V_r:=\partial_t^ru,
   \qquad
   Q_r:=\partial_t^rp,
   \]

   and write its compact form:

   \[
   V_{r+1}
   =\nu\Delta V_r
   -\sum_{a=0}^{r}\binom ra
   (V_a\!\cdot\nabla)V_{r-a}
   -\nabla Q_r.
   \]

   The pressure relation may follow here, after the reader already understands why (Q_r) travels with (V_r).

6. Use the recurrence to make Thomas's central point directly: as the temporal order rises, the Sobolev height rises with it. The field recurrence shows that each new temporal response contains \(\nu\Delta V_r\). The energy pairing shows exactly where that Laplacian lands:

   \[
   \partial_tE_{r,s}
   =\mathcal P_{r,s}-2\nu E_{r,s+1}.
   \]

   Viscosity relates neighboring Sobolev heights. The rectangle theorem supplies their whole-terminal bounds.

7. Return to the critical height introduced at the opening. Define \(\Lambda\), \(E_s\), and \(H=E_{1/2}\), then derive \(H'\), \(H''\), \(H'''\), and the finite-order formula in one uninterrupted calculation. This is the mathematical payoff of the opening critical-height discussion, not a fresh beginning.

8. Lift that calculation once to arbitrary \(E_{r,s}\). Give the adjacent-height identity and move directly into finite \((N,M)\) rectangles. Do not run a second explanatory derivation of the temporal-spatial relation.

9. Carry the argument in this order:

   \[
   \text{finite rectangles}
   \longrightarrow
   \mathcal I[u_0]
   \longrightarrow
   \mathscr S_0
   \longrightarrow
   H^\infty\hookrightarrow C^\infty
   \longrightarrow
   \text{continuation}.
   \]

10. After smoothness and continuation have landed, show the general finite-demand rule and the rapid estimate examples. End with the compact symbolic pipeline as a recap.

## Misalignments in the live section

- Source lines 34--49 announce the higher-Sobolev conclusion and \(H^\infty\hookrightarrow C^\infty\) before the differentiated equations have shown why temporal ascent reaches spatial height. This spends the conclusion before the reader earns it.
- Source lines 51--63 show only the first two temporal responses. The third line is needed before the binomial recurrence so the coefficient pattern can be seen rather than reported.
- Source lines 64--69 introduce \(V_r,Q_r\) before the raw derivative pattern is complete. The notation belongs after the three expansions and the original-variable binomial equation.
- Critical height is currently handled in three disconnected passes: the scaling discussion at lines 10--19, the unsupported conclusion at lines 34--49, and the energy derivation at lines 96--150. The opening should establish why \(s=1/2\) matters; the later calculation should cash that out once.
- Source lines 96--150 derive the ascent for the critical energy, and lines 152--162 begin another derivation for \(E_{r,s}\). The arbitrary-row identity should be a direct lift of the critical calculation, not a restart.
- The transition from recurrence to viscosity, from viscosity to Sobolev height, and from Sobolev height to rectangles must remain one train of thought. The current early smoothness preview interrupts it.

## Future edit boundary

The future edit is limited to reordering and rewriting “How the Proof Works” around this supplied movement. It does not alter the settled proof object, theorem statements, rectangle bounds, intersection, endpoint, or PDF until Thomas authorizes the edit.
