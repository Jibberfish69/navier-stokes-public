# PCTP.hard Terminal-Tail Participation Persistence

## Status

Conditional theorem installed for the `PCTP.hard` terminal-tail program.

This note proves that participation failure is not an independent first
terminal face once the one-field scale, tower amplitude, and strict-response
margin/closed-predicate input remain controlled.

## Theorem

Fix finite depth `N` and a retained same-fluid terminal tail for a smooth periodic Navier--Stokes solution on `[0,T_*)`. Assume:

1. `Part_{N,Q}` holds on every compact preterminal subinterval.
2. `Field_{N,r,Q}` holds on the terminal tail with a positive lower scale

```math
r(t)\ge r_*>0.
```

3. The tower amplitude is uniformly bounded to the depth needed by the finite-difference participation witness:

```math
\mathfrak A_{N+1,Q}(t)\le M_A,
\qquad 0<t<T_*.
```

4. Every strict neighboring-response clause in the finite `Part_{N,Q}` witness is either encoded as a closed non-strict terminal predicate, or has a retained margin

```math
\mathcal R_\ell(t)\ge\gamma_\ell>0
```

on the same terminal tail.

Then `Part_{N,Q}` cannot fail first at `T_*`.

Equivalently,

```math
Dead\Longrightarrow Jump\vee tower\text{-}blown
```

on the retained terminal tail.

## Proof

The installed exact class-membership witness expresses `Part_{N,Q}` through a finite list of same-fluid labels, finite jet-to-difference comparisons, and neighboring-response predicates at depth `N`. The shared participation no-drop theorem `NDT.A` says that, on a still-live neighborhood with the primitive membership witness installed, no Law 2 participation drop occurs.

It remains to check terminal closedness of the witness. By the positive `Field` scale, all witness comparisons are made on cylinders whose radii are bounded below by `r_*`. By the bounded tower amplitude to depth `N+1`, the velocity, pressure readouts needed by the finite-difference bridge, and their spatial increments are uniformly bounded and equicontinuous on those cylinders. Since only finitely many labels and finite depth `N` are involved, Arzela-type compactness gives terminal limits for every witness quantity entering `Part_{N,Q}`.

Incidence of the retained same-fluid labels and finite-difference compatibility are closed finite predicates under these limits.  Strict nonzero neighboring response survives only under the retained margin above, or under a closed non-strict terminal encoding of the response predicate. Therefore the limiting terminal witness still satisfies `Part_{N,Q}` only with this closed-predicate/margin input.

Assume `Part_{N,Q}` is the first failed class-membership component. Then
`Field_{N,r,Q}`, the tower amplitude, and the response margins remain
controlled by hypothesis. The closedness argument above gives `Part_{N,Q}` on
the terminal tail, contradicting the assumption that participation is the first
failed component. If a response margin vanishes, that vanishing is itself the
Part-face mechanism and is not ruled out by Field scale plus tower control.

Thus participation cannot fail first unless the positive field scale has
already failed, the tower amplitude has already blown, or a strict
neighboring-response margin has collapsed as the Part face.

## Consequence

The dead endpoint reduces to the remaining primitive faces:

```math
Dead\Longrightarrow Jump\vee tower\text{-}blown\vee response\text{-}margin\text{-}collapse.
```

Together with the pack-detachment endpoint-reduction lemma, the terminal-tail endpoint list reduces conditionally to

```math
Jump\vee tower\text{-}blown\vee response\text{-}margin\text{-}collapse.
```

## Boundary

This note does not prove terminal tower control, terminal positive field scale, or strict response-margin retention from `OriginalSmoothData`. It proves only that, once those controls are present or the strict clauses are closed non-strict terminal predicates, participation cannot be the first terminal failure.
