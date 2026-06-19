# MPP Tower-Face To CM-Row Projection Closure Note

## Status

Theorem-facing closure note for the extra target introduced in
`mpp-contrapositive-leading-edge-sourcepulse-solve-pass-20260503.md`:

```math
\boxed{
TowerFaceToCMRow.A.
}
```

This note closes that target negatively.  The mixed `tower-blown` endpoint face
must not be projected to a pure `Pack`, `Part`, or `Field` row under the
currently installed predicates.  It remains a separate tower-amplitude endpoint
face discharged only by an explicit `END.TowerBound` / `DTC-to-TowerBound`
input.

## Definitions Being Tested

The class-membership witness is:

```math
CM_{N,r,Q}
=
Pack_Q
\wedge
Part_{N,Q}
\wedge
Field_{N,r,Q}.
\tag{TFR.0}
```

The installed predicate meanings are:

```math
Pack_Q:
\quad
\Gamma_{\mathrm{pack},Q}(t)
=
\sup_{a\in A_Q(t)}
\max\{|F(a,t)|,\ |F(a,t)^{-1}|\}<\infty,
\tag{TFR.1}
```

```math
Part_{N,Q}:
\quad
D_tU_k=K_k+B_k,\qquad
\sup_{x\in Q_t}\sum_{k=0}^N |K_k(x,t)|<\infty,
\tag{TFR.2}
```

and

```math
Field_{N,r,Q}:
\quad
\mathfrak C_{N,r,Q}(t)
=
\sup_{0<|h|\le r}
\sum_{k=0}^N
\frac{|\delta_hU_k|+|\delta_hK_k|}{|h|}<\infty
\tag{TFR.3}
```

with the finite-difference law clause included.

The mixed tower-amplitude face is:

```math
tower\text{-}blown:
\quad
\forall M<\infty,\ \exists Q,\ \exists t\text{ meeting }Q:
\mathfrak A_{N,Q}(t)>M,
\tag{TFR.4}
```

where

```math
\mathfrak A_{N,Q}(t)
=
\sup_{x\in Q_t}
\sum_{k=0}^N\bigl(|U_k(x,t)|+|K_k(x,t)|\bigr).
\tag{TFR.5}
```

## Theorem `TFR.A` (No Pure Row Projection For `tower-blown`)

Under the installed definitions, `tower-blown` is not licensed as a pure
failure of `Pack`, `Part`, or `Field`.

More precisely:

```math
\boxed{
tower\text{-}blown
\not\Longrightarrow_{\mathrm{installed}}
\neg Pack,
}
\tag{TFR.6}
```

```math
\boxed{
tower\text{-}blown
\not\Longrightarrow_{\mathrm{installed}}
\neg Part,
}
\tag{TFR.7}
```

and

```math
\boxed{
tower\text{-}blown
\not\Longrightarrow_{\mathrm{installed}}
\neg Field.
}
\tag{TFR.8}
```

Therefore:

```math
\boxed{
TowerFaceToCMRow.A
\text{ is not a valid theorem target unless a new row-projection bridge is
added.}
}
\tag{TFR.9}
```

### Proof

For `Pack`: the predicate `Pack_Q` controls the deformation gauge
`\Gamma_{\mathrm{pack},Q}` and incompressible carrier geometry.  The
`tower-blown` face controls neither `F` nor `F^{-1}` directly.  It is an
absolute tower-amplitude escape in `U_k` and `K_k`.  Thus the installed
definitions do not imply deformation detachment from tower-amplitude escape.

For `Part`: the predicate `Part_{N,Q}` includes the one-point tower law and a
finite envelope for `K_k`, but it is not an absolute bound for every `U_k` in
the tower.  A `tower-blown` witness may escape through the `U_k` part of
`\mathfrak A_{N,Q}` rather than through the `K_k` carrier.  Thus the installed
definitions do not identify tower-amplitude escape with participation-law
failure.

For `Field`: the predicate `Field_{N,r,Q}` controls finite-difference
coherence:

```math
\frac{|\delta_hU_k|+|\delta_hK_k|}{|h|}.
```

It does not control the absolute basepoint amplitude of `U_k` or `K_k`.
Spatially coherent high-amplitude tower packets are exactly the actual gap: the
coherence modulus may remain finite while the absolute tower amplitude becomes
large along the terminal approach.  Therefore tower-amplitude escape does not
by itself imply one-field coherence fracture.

Together these three checks prove that `tower-blown` is mixed under the current
predicate grammar. `\square`

## Correct Discharge Route

The installed endpoint architecture already has the right separate input:

```math
\boxed{
DTC\text{-}to\text{-}TowerBound
\Longrightarrow
END.TowerAmp
\Longrightarrow
END.TowerBound
\Longrightarrow
\neg tower\text{-}blown.
}
\tag{TFR.10}
```

So the correct handling is not:

```math
tower\text{-}blown
\Longrightarrow
\neg Pack\ \vee\ \neg Part\ \vee\ \neg Field
\quad\text{by definition}.
```

The correct handling is:

```math
\boxed{
tower\text{-}blown
\text{ is a separate endpoint face, removed by tower-bound readout.}
}
\tag{TFR.11}
```

## Closure

`TowerFaceToCMRow.A` is closed as a non-target:

```math
\boxed{
\text{Do not spend proof effort trying to force `tower-blown` into a pure CM
row under the current predicate definitions.}
}
\tag{TFR.12}
```

If a future route wants a pure-row projection, it must first add one of the
following new bridges:

```math
tower\text{-}blown\Longrightarrow packing\text{-}detached,
```

```math
tower\text{-}blown\Longrightarrow \text{participation-carrier failure},
```

or

```math
tower\text{-}blown\Longrightarrow \text{neighboring-coherence fracture}.
```

No such bridge is currently installed.
