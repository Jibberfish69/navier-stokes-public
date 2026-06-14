# PSJ+.1 Overlap Terminal Closure

## Status

Active theorem-facing closure note for the exact `PSJ+.1` overlap-refinement
branch.

Role: close the branch-local overlap debt without promoting the old
retained-cover counting endpoint into a false stand-alone theorem.

## Boundary

The earlier branch audit identified two honest routes:

1. fine mode:
   `kernel mismatch -> localizer modulus -> overlap center spacing`
   (`LOM.8` / `LOM.10`);
2. coarse mode:
   `normalized local kernels -> retained-cover counting`
   (`LRC.1` / `RCP.0`).

The installed terminal choice is the coarse normalized-kernel realization. The
fine localizer-modulus route remains a sharper geometric sibling, not a live
blocker for the installed `PSJ+.1` close.

## Theorem `PSJ+.1.Terminal`

Work on the exact localized-projector `PSJ+.1` realization. Assume:

1. the local kernels are normalized as in `NLP.A`;
2. the local synchronization family has bounded multiplicity;
3. each local synchronization window is subordinate to a retained
   exact-potential box with bounded subordination multiplicity;
4. the retained-family scalar supplier is admitted, either as the retained-window
   bounded-overlap / counting side of `V3` or by the stronger adiabatic
   descendant route `EP.11d`.

Then the `PSJ+.1` overlap-refinement branch contributes no independent open
overlap theorem. Its overlap price is absorbed into the retained-family
supplier layer, and the branch-local exact-potential assembly may continue
through the already recorded `PSJ+.Terminal` handoff.

In symbols:

```math
\texttt{NLP.A}
+\texttt{bounded multiplicity}
+\texttt{retained subordination}
\Longrightarrow
\mathrm{Overlap}_{J,\mathrm{coarse}}
\le C_{\mathrm{P1T1}}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k),
\tag{P1T.1}
```

and the admitted retained-family supplier gives

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le C_{\mathrm{P1T2}}
\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I).
\tag{P1T.2}
```

Therefore

```math
\mathrm{Overlap}_{J,\mathrm{coarse}}
\le C_{\mathrm{P1T3}}
\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I),
\tag{P1T.3}
```

which is the exact overlap contribution needed by the localized-projector
globalization.

## Proof

`NLP.A` normalizes the local kernels without changing the local projector field.
`NLP.B` turns normalized overlap mismatch into a bounded-multiplicity overlap
measure estimate. `NLP.C` pushes that measure estimate down to the retained
exact-potential boxes. This is precisely the consumer statement isolated in
`LCC.A`, namely `(P1T.1)`.

The remaining scalar object is not a `PSJ+.1`-local overlap theorem. It belongs
to the retained-family supplier layer. If the route uses the retained-window
bounded-overlap/counting side of `V3`, it supplies `(P1T.2)` directly. If the
route instead uses the stronger adiabatic descendant, `EP.11d` supplies the
retained-family forcing/counting side on that stronger branch before the route
continues through `EP.8`.

Substituting `(P1T.2)` into `(P1T.1)` gives `(P1T.3)`. The localized-projector
globalization theorem then has its overlap input, so no `PSJ+.1` overlap
primitive remains open. The already recorded `PSJ+.Terminal` theorem supplies
the downstream exact-potential assembly:

```math
D.7mq+SSC\text{-}EP.A
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3.
\tag{P1T.4}
```

Thus `PSJ+.1` is closed as a branch-local overlap-refinement burden. ∎

## Honesty Note

This note does not prove the bare scalar retained-cover counting theorem from
weaker hypotheses. The old minimal scalar endpoint `LRC.1` / `RCP.0` remains
the correct name for that isolated retained-family object. The closure here is
the `PSJ+.1` overlap closure: once the installed coarse normalized-kernel route
is chosen, the overlap price is no longer an independent `PSJ+.1` theorem
debt.
