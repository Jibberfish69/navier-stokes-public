# Part row: `Part.NoDrop => Part_{N,Q}`

## Status

Conditional theorem-facing completion of the Part witness row on the retained terminal tail.

The row closes once `Field_{N,r,Q}` has positive lower scale, the tower
amplitude is bounded to depth `N+1`, and the strict neighboring-response
clauses have retained margins or closed non-strict terminal encoding. It is
therefore a terminal closedness theorem for participation, not an independent
source-pulse theorem.

## Target

Prove the CM Part witness row:

```math
Part.NoDrop \Longrightarrow Part_{N,Q}.
```

## Installed participation theorem

The participation persistence surface gives the terminal-tail theorem:

Assume:

1. `Part_{N,Q}` holds on every compact preterminal subinterval;
2. `Field_{N,r,Q}` holds on the terminal tail with lower scale

```math
r(t)\ge r_*>0;
```

3. the tower amplitude is bounded to the depth needed by the finite-difference participation witness:

```math
\mathfrak A_{N+1,Q}(t)\le M_A,
\qquad 0<t<T_*.
```

4. every strict neighboring-response clause is either closed in the terminal
predicate or has a retained margin

```math
\mathcal R_\ell(t)\ge\gamma_\ell>0.
```

Then `Part_{N,Q}` persists to the terminal tail.

## Proof

The exact membership witness expresses `Part_{N,Q}` through finitely many same-fluid labels, finite jet-to-difference comparisons, and neighboring-response predicates at depth `N`.

The positive lower field scale keeps all witness comparisons on cylinders with radius bounded below by `r_*`. The tower amplitude bound through depth `N+1` gives uniform control of the velocity, pressure readouts, spatial increments, and finite-difference data entering the witness. Since only finite depth and finitely many witness predicates enter `Part_{N,Q}`, the witness quantities are equicontinuous on the retained terminal cover.

By compactness, every witness quantity has a terminal limit along the tail.
Same-fluid label incidence and finite-difference compatibility are closed
finite predicates under these limits.  Neighboring-response positivity persists
only by the displayed retained margin, unless it is encoded as a closed
non-strict terminal predicate. Therefore the terminal witness still satisfies

```math
Part_{N,Q}.
```

Without that response-margin/closed-predicate input, compactness gives only the
closed relaxed witness, and loss of the response margin is a lawful
`\neg Part_{N,Q}` face.

## Theorem

```math
\boxed{
Part_{N,Q}\text{ preterminal}
+Field_{N,r,Q}\text{ with }r\ge r_*
+\mathfrak A_{N+1,Q}\le M_A
+\text{closed response predicates or retained response margins}
\Longrightarrow Part_{N,Q}\text{ on the retained terminal tail.}
}
```

Equivalently, under the terminal-tail controls supplied by the Field and tower rows plus the response-margin/closed-predicate input,

```math
\boxed{Part.NoDrop\Longrightarrow Part_{N,Q}.}
```

## Boundary

This row uses Field, tower, and response-margin/closed-predicate controls as closedness inputs. It does not supply the Field row, the tower bound, or the response margin. It also does not replace the Pack row.

## Claimed status

Part row complete only conditional on the already named terminal Field scale, tower-amplitude, and response-margin/closed-predicate controls.
