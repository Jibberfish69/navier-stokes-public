# Exact-Potential Balanced-Frame To D.7mq

## Status

Active theorem-facing combined closure note.

Role: package the finite-frame upstream route into the exact-potential
pair-to-cocycle theorem `D.7mq`.

## Purpose

Discharge the exact-potential pair slot through the balanced-frame route:

```math
\boxed{
(Q)+(L)+\text{comparison packet}+\text{CG simple-top gap}
\Longrightarrow
D.7mq.
}
\tag{EPF.0}
```

## Exact Inputs

1. the finite quadratic sign-separation packet on the active family from
   [selector-quadratic-sign-separation-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md);
2. the finite balanced-frame theorem from
   [selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md);
3. the segment-collar derivative continuity packet from
   [segment-collar-derivative-continuity-on-balanced-frame.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md);
4. the exact-potential comparison packet identifying
   `W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast` with the Cauchy--Green reference tensor
   up to the installed `D.7mn` ledger;
5. the reference Cauchy--Green simple-top gap on the active family.

## Exact Target

### Theorem EP.Frame.Closure

Assume:

1. there exists a finite quadratic test family
   `\{A^r\}_{r=1}^R\subset \operatorname{Sym}_0(N_a)` and uniform constants
   `\kappa_\ast,\alpha_\ast>0` such that the two-sided sign-separation packet
   `(QSP.7a)`-`(QSP.7b)` holds on the active selector-good family;
2. the resulting entrance-time balanced frame satisfies the segment-collar
   derivative continuity packet `(SCDC.4)` with one scale `h_J` and one modulus
   `\rho_{J,\mathrm{lin}}(a,t;h_J)` that tends to `0` uniformly on the active
   family;
3. the exact-potential comparison packet gives a tensor estimate

   ```math
   \bigl\|
   W_J^{coc}(t,a)\Pi_{N_a}(W_J^{coc}(t,a))^\ast
   -
   \mathcal C_J^{CG}(t,a)
   \bigr\|_{\mathrm{op}}
   \le
   \operatorname{Err}_{J,\mathrm{cmp}}^{frame}(t,a),
   \tag{EPF.1}
   ```

   where `\mathcal C_J^{CG}(t,a)` is the branch Cauchy--Green reference tensor;
4. the reference simple-top gap stays open:

   ```math
   g_J^{CG}(t,a)\ge g_\ast>0
   \qquad
   \text{on the active family.}
   \tag{EPF.2}
   ```

Then the frame projector satisfies

```math
\bigl\|
\widehat P_J^{frame}(t,a)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{frame}(t,a),
\tag{EPF.3}
```

with

```math
\operatorname{Err}_{J,CG}^{frame}(t,a)
\le C_{frame}
\frac{
\Bigl(
d\bigl(2|W_J^{coc}(t,a)|_{\mathrm{op}}\rho_{J,\mathrm{lin}}(a,t;h_J)
+
\rho_{J,\mathrm{lin}}(a,t;h_J)^2\bigr)
+
\operatorname{Err}_{J,\mathrm{cmp}}^{frame}(t,a)
\Bigr)^2
}{g_\ast^2}.
\tag{EPF.4}
```

In particular, if the right-hand side tends to `0` uniformly on the active
family, then the pair-to-cocycle slot closes in the exact route form `D.7mq`.

### Proof

By `Q.A` and `SBF.A`, the active selector-good family carries a balanced frame
with uniform nondegeneracy on the active family. By `L.A` and `SCDC.A`, the
same frame satisfies

```math
\bigl\|
\mathcal K_J^{frame}(t,a)
-
W_J^{coc}(t,a)\Pi_{N_a}(W_J^{coc}(t,a))^\ast
\bigr\|_{\mathrm{op}}
\le
d\bigl(
2|W_J^{coc}(t,a)|_{\mathrm{op}}\rho_{J,\mathrm{lin}}(a,t;h_J)
+
\rho_{J,\mathrm{lin}}(a,t;h_J)^2
\bigr).
\tag{EPF.5}
```

Combining `(EPF.5)` with the exact-potential comparison packet `(EPF.1)` gives

```math
\bigl\|
\mathcal K_J^{frame}(t,a)-\mathcal C_J^{CG}(t,a)
\bigr\|_{\mathrm{op}}
\le
d\bigl(
2|W_J^{coc}(t,a)|_{\mathrm{op}}\rho_{J,\mathrm{lin}}(a,t;h_J)
+
\rho_{J,\mathrm{lin}}(a,t;h_J)^2
\bigr)
+
\operatorname{Err}_{J,\mathrm{cmp}}^{frame}(t,a).
\tag{EPF.6}
```

Since the simple-top gap `(EPF.2)` is open, Davis--Kahan yields

```math
\bigl\|
\widehat P_J^{frame}(t,a)-P_J^{CG}(t,a)
\bigr\|_F
\le C_{CG}
\frac{
\bigl\|
\mathcal K_J^{frame}(t,a)-\mathcal C_J^{CG}(t,a)
\bigr\|_{\mathrm{op}}
}{g_\ast},
\tag{EPF.7}
```

and squaring gives `(EPF.3)`-`(EPF.4)`. ∎

## Interpretation

This is the exact combined closure theorem for the finite-frame route. The real
upstream debt is now only:

```math
(Q)\quad
\text{uniform sign-separating quadratic richness on the active family,}
\tag{EPF.8a}
```

and

```math
(L)\quad
\text{uniform segment-collar derivative continuity on the selected balanced frame.}
\tag{EPF.8b}
```

More sharply, the quadratic packet `(Q)` admits the finite geometric descendant
from `QSP.B`: it is enough to prove positive selector-good mass in a finite
family of projective caps around the top and bottom eigen-directions of the net
tensors. Corollary `QSP.E` sharpens that one step further: it is enough to
prove one finite localized bump-lower packet supported inside those same caps.
Proposition `QSP.G` reduces that again to entrance-time bump mass plus angular
transport stability of the selector-good pair directions, and `QSP.H` shows
that on short regular windows the transport-stability input is supplied by one
uniform bound on the segment-transport matrix `\mathcal M_J`, while `QSP.I`
reduces that again to the plain regular-window `\sup|\nabla v_J|` bound along
the active segments. Corollary `QSP.J` reduces the entrance-time packet one
step further to finite initial pair-direction core-cap occupancy. So on the
regular-window finite-frame branch the genuinely new shape primitive is now
that initial core-cap occupancy theorem. Corollary `QSP.K` gives a stronger
finite initial comparability realization on the same core-cap family.
Proposition `QSP.M` shows that the existing active-pair graph measure already
has a canonical normalized entrance-fiber realization, and Corollary `QSP.N`
rewrites the same remaining shape primitive on that canonical route as one
finite entrance lower-density theorem on each active neighbor fiber.
Proposition `QSP.O` reduces that further to a finite averaged entrance
incidence ledger plus one bad-base extraction. Proposition `QSP.P` splits that
again into a graph-level cap-mass floor plus one fiber-occupancy oscillation
theorem. Proposition `QSP.Q` then reduces that oscillation side again to one
finite localized bump-oscillation packet plus one thin shell-leakage packet on
the same core-cap family. Corollary `QSP.R` reduces the shell side further to
finite shell-comparability on that same family, and Corollary `QSP.L` is then
the bounded-degree one-neighbor special case. This constructive cap route is
genuinely stronger than bare degree-2 isotropy; Proposition `QSP.D` gives an
exactly isotropic cross measure with zero mass in such a cap. Likewise the
graph side now also admits a fully smooth realization through `QSP.S`-`QSP.T`:
one finite graph-bump lower/comparability packet on the same core-cap family.
More sharply, Proposition `QSP.U` collapses those two smooth siblings together:
one finite positive reference shell-bump theorem plus shell comparability
already supplies both the graph side and the oscillation side. Proposition
`QSP.V` sharpens that further on the material-gap subbranch: if one proves the
same finite positive shell-bump packet for the oriented top right singular
carrier, then the source-side initial-overlap theorem transports it to the
actual entrance directions, so the remaining smooth burden becomes

```math
\text{finite positive shell-bump packet for the oriented top right singular carrier}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
```

If one prefers shells centered on the instantaneous top eigendirection instead,
the carrier-comparison packet `(AS.7m)`-`(AS.7u)` supplies the extra transfer.
Corollary `QSP.W` makes the remaining selector-theorem split explicit on the
same branch: the TPS cap-balancing / reserve-sign packet is only a sufficient
realization after one further cap-to-right-singular carrier identification
theorem on the same finite shell family. Corollary `QSP.X` reduces that again
to one cellwise angular tether if the selected cap carrier is realized by the
transported shell/cap packet centers, and Corollary `QSP.Y` makes that last
specialization explicit on the actual TPS packet-center geometry. Corollary
`QSP.Z` then uses the already-installed material-gap overlap packet to peel the
same route one step further: the genuinely new TPS geometric burden is only a
packet-center-to-entrance-direction tether. Corollary `QSP.AA` then reduces
that again to a pure selected-cell entrance-direction cap-aperture theorem, and
Corollary `QSP.AB` makes the ambient packet-width input explicit: on the
standard shell/cap geometry the remaining new burden is only selected-parent-cap
entrance membership. Corollary `QSP.AC` then rewrites even that as one
entrance-direction-adapted selected-cell assignment theorem, and Corollary
`QSP.AD` fuses that assignment burden back into the same selector refinement
layer as the TPS cap-balancing / reserve-sign theorem itself: the remaining
selector-side shape work is one entrance-compatible cap-balancing refinement.
Corollary `QSP.AE` sharpens that one last step to the selector-local primitive:
sector-stable diagonal-density / row-sum control on a finite entrance-sector
subdivision. Corollary `QSP.AF` then splits even that Gershgorin primitive into
the exact sign-side pair: sector-stable diagonal-density lower bound plus
sector-stable weighted row-sum bound. Corollary `QSP.AG` then reduces that
again, relative to the parent sign packet already on the selector layer, to the
transfer pair: sectorwise diagonal-mass distribution plus sectorwise edge
localization on the entrance-sector subdivision. Corollary `QSP.AH` then makes
the inherited bounded-multiplicity sector graph explicit: the edge half is
automatic, so the remaining selector-side sign primitive is sectorwise
diagonal-mass distribution alone. Corollary `QSP.AI` then makes the last
kernel-level reduction explicit: the remaining primitive is diagonal restriction
stability on the entrance-sector refinement. Corollary `QSP.AJ` then peels that
one step further: once the diagonal mass is represented by a cellwise density,
it is enough to prove sectorwise relative oscillation control of that diagonal
density around the parent-cell average. Equivalently, the live constructive
shape stop line on this branch can now be named most sharply as `QSP.11p`,
still paired with finite shell comparability and the regular-window
`\sup|\nabla v_J|` bound on the active segments.
Corollary `QSP.AK` then records the stronger selector-native sufficient route:
it is enough to lower-bound the diagonal density at the terminal sector label
centers relative to the parent-cell average and control the local Holder
oscillation on those same terminal entrance-sector cells. That stronger route
is packaged as `QSP.11q`, but it does not replace the sharper minimal wall
`QSP.11p`.
Corollary `QSP.AL` then sharpens even that selector-native route to the
canonical parent-cell version: it is enough to lower-bound the diagonal
density at the parent stopped-cell label centers and control the Holder
oscillation on the parent stopped cells themselves. That route is packaged as
`QSP.11r`, and again it is only a stronger sufficient realization, not a new
minimal wall.
That strongest selector-side source wall is now isolated separately in
[sectorwise-relative-oscillation-of-diagonal-density.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md).
That stronger selector-native sufficient route is now isolated separately in
[terminal-sector-center-density-and-local-holder-oscillation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md).
Those two theorem-facing halves are now isolated separately in
[finite-entrance-sector-sign-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-entrance-sector-sign-refinement.md)
and
[finite-shell-comparability-on-core-cap-family.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-shell-comparability-on-core-cap-family.md).
On the selector side, the packaged primitive also has a sharper source-level
realization in
[diagonal-restriction-stability-on-entrance-sector-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/diagonal-restriction-stability-on-entrance-sector-refinement.md).
Likewise the
linearization packet `(L)` admits the
regular-window descendant from `SCDC.C`: it is enough to prove uniform `C^2`
control of the coarse flow on the selected frame collars. Everything after
that is the already-installed comparison packet, the CG gap, and downstream
assembly.

## Downstream Use

Once `D.7mq` is closed by `EP.Frame.Closure`, the branch-local selector-strain
theorem
[reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md)
supplies `SSC-EP.A`, and then the existing exact-potential downstream chain
takes over:

```math
D.7mq + SSC\text{-}EP.A
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{EPF.9}
```

### Corollary EP.Frame.Terminal

Assume the hypotheses of Theorem `EP.Frame.Closure` on the active
exact-potential strip, and assume the hypotheses of Theorem `SSD.A` in
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md)
on the same strip. Then the balanced-frame route closes the terminal branch
chain

```math
\text{EP.Frame.Closure}
+ (D.7mp + D.7mo + D.7mm)
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{EPF.10}
```

### Proof

Theorem `EP.Frame.Closure` yields `D.7mq`. Together with Theorem `SSD.A`,
Corollary `SGH.C` in
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md)
gives the displayed terminal exact-potential chain. ∎
