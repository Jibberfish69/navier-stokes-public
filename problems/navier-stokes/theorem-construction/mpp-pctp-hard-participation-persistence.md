# PCTP.hard Terminal-Tail Participation Persistence

## Status

Conditional theorem installed for the `PCTP.hard` terminal-tail program.

This note proves that participation failure is not an independent first terminal face once the one-field scale and tower amplitude remain controlled.

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

Then `Part_{N,Q}` cannot fail first at `T_*`.

Equivalently,

```math
Dead\Longrightarrow Jump\vee tower\text{-}blown
```

on the retained terminal tail.

## Proof

The installed exact class-membership witness expresses `Part_{N,Q}` through a finite list of same-fluid labels, finite jet-to-difference comparisons, and neighboring-response predicates at depth `N`. The shared participation no-drop theorem `NDT.A` says that, on a still-live neighborhood with the primitive membership witness installed, no Law 2 participation drop occurs.

It remains to check terminal closedness of the witness. By the positive `Field` scale, all witness comparisons are made on cylinders whose radii are bounded below by `r_*`. By the bounded tower amplitude to depth `N+1`, the velocity, pressure readouts needed by the finite-difference bridge, and their spatial increments are uniformly bounded and equicontinuous on those cylinders. Since only finitely many labels and finite depth `N` are involved, Arzela-type compactness gives terminal limits for every witness quantity entering `Part_{N,Q}`.

The participation predicates are closed finite predicates under these limits: incidence of the retained same-fluid labels, nonzero neighboring response, and finite-difference compatibility survive after restricting to a sufficiently late terminal subtail. Therefore the limiting terminal witness still satisfies `Part_{N,Q}`.

Assume `Part_{N,Q}` is the first failed class-membership component. Then
`Field_{N,r,Q}` and the tower amplitude remain controlled by definition of
first failure. The closedness argument above gives `Part_{N,Q}` on the terminal
tail, contradicting the assumption that participation is the first failed
component.

Thus participation cannot fail first unless either the positive field scale has already failed or the tower amplitude has already blown.

## Consequence

The dead endpoint reduces to the remaining primitive faces:

```math
Dead\Longrightarrow Jump\vee tower\text{-}blown.
```

Together with the pack-detachment endpoint-reduction lemma, the terminal-tail endpoint list reduces conditionally to

```math
Jump\vee tower\text{-}blown.
```

## Boundary

This note does not prove terminal tower control or terminal positive field scale from `OriginalSmoothData`. It proves only that, once those two controls are present, participation cannot be the first terminal failure.
