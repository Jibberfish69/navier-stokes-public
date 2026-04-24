# MPP Class-Membership Endpoint Matrix Closure Contract

## Status

Theorem-facing closure contract.

Role: record the exact endpoint-exclusion block still needed after `CFI.A`.

This note does **not** prove the endpoint matrix. It states the formal endpoint
lemmas whose proofs would close the class-exit contradiction once
class-membership forward invariance is installed.

## Installed Entry

The installed endpoint exclusion is:

```math
(Part,Dead).
\tag{END.0}
```

All other entries below remain open.

## Endpoint Matrix Block

The rows are:

```math
Pack,\qquad Part,\qquad Field.
\tag{END.1}
```

The endpoint shells are:

```math
Dead,\qquad Blown,\qquad Jump.
\tag{END.2}
```

The remaining endpoint theorem block is

```math
\mathsf{End}_{NS}
:=
END.Pack
\wedge
END.Field
\wedge
END.Tower
\wedge
END.Cross
\wedge
END.Exh.
\tag{END.3}
```

### Theorem Target `END.Exh`

At the first class-exit time,

```math
\neg CM_{N,r,Q}(u,p,\Phi)
\tag{END.3a}
```

must imply one of the endpoint shells:

```math
Dead
\vee
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump.
\tag{END.3b}
```

This is the endpoint exhaustiveness theorem. It is required before the final
matrix contradiction is licensed.

### Theorem Target `END.Pack`

```math
Pack_Q(u,\Phi)
+
\Gamma_{\mathrm{pack},Q}\in L^\infty(I)
\Longrightarrow
\text{no packing-detached endpoint on }I.
\tag{END.4}
```

This is the pack-native blown face.

Indeed, `packing-detached` asserts that for every finite `M` there is
`t\in I` with

```math
\Gamma_{\mathrm{pack},Q}(t)>M.
\tag{END.4a}
```

The bound

```math
\Gamma_{\mathrm{pack},Q}(t)\le C_Q
\qquad (t\in I)
\tag{END.4b}
```

contradicts `(END.4a)` by choosing `M>C_Q`.

### Theorem Target `END.Field`

```math
Field_{N,r,Q}(u,p)
+
OFP.A
\Longrightarrow
\text{no jump endpoint on }I.
\tag{END.5}
```

This is the field-native jump face.

The proof is formal once `OFP.A` is installed: `OFP.A` propagates a positive
coherence scale `r_{N,\sigma}>0` and finite coherence bound
`C_{N,\sigma}<\infty` on the same-fluid family. `Jump` is the loss of every
positive one-field coherence scale, so the propagated field predicate excludes
it.

### Theorem Target `END.Tower`

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}
\sum_{k=0}^{N}
\left(
|U_k(x,t)|+|K_k(x,t)|
\right)
\in L^\infty(I)
\Longrightarrow
\text{no tower-blown endpoint on }I.
\tag{END.6}
```

This is the mixed tower-amplitude blown face. It remains separate from the
pack-native `packing-detached` face.

The proof is formal once the tower-amplitude bound is supplied: `tower-blown`
asserts that for every finite `M` there is `t\in I` with
`\mathfrak A_{N,Q}(t)>M`; an `L^\infty(I)` bound contradicts this by choosing
`M` larger than that bound. The amplitude input is

```math
\mathfrak A_{N,Q}\in L^\infty(I)
\tag{END.6a}
```

from the closed receiver/tower estimates. We name the input separately:

```math
END.TowerAmp:
\qquad
\mathfrak A_{N,Q}\in L^\infty(I).
\tag{END.6b}
```

The definition-level exclusion theorem is:

```math
END.TowerBound:
\qquad
END.TowerAmp
\Longrightarrow
\neg tower\text{-}blown.
\tag{END.6c}
```

Thus `END.TowerBound` is closed formally; the actual analytic input is
`END.TowerAmp`.

### Theorem Target `END.Cross`

```math
\text{Every non-native shell interaction reduces to }
END.Pack,\ END.Field,\ END.Tower,\ \text{or }(Part,Dead).
\tag{END.7}
```

This is the cross-entry exhaustiveness theorem for the endpoint matrix.

The blown gauge split is:

```math
\mathfrak B_{N,Q}(t)
=
\Gamma_{\mathrm{pack},Q}(t)
+
\mathfrak A_{N,Q}(t).
\tag{END.7a}
```

Thus

```math
Blown
\Longleftrightarrow
packing\text{-}detached
\vee
tower\text{-}blown.
\tag{END.7b}
```

For jump cross-entries, the installed field-coherence reduction routes
`Pack+Part+Jump` to a coherence fracture, hence to the `Field` row once `Pack`
and `Part` are retained. For dead cross-entries, the route-native dead entry is
the installed `(Part,Dead)` row.

Therefore `END.Cross` is closed as a formal matrix-reduction theorem once the
field-coherence reduction and the installed `(Part,Dead)` row are accepted:

```math
END.Cross:
\qquad
\text{all cross entries reduce to }
(Part,Dead),\ END.Pack,\ END.Field,\ END.Tower.
\tag{END.7c}
```

## Formal Endpoint Contradiction

### Theorem `END.COMPLETE`

Assume:

```math
END.Exh,\qquad END.TowerAmp,\qquad END.Cross,
\tag{END.C0}
```

the installed `(Part,Dead)` entry, the native pack-gauge input needed by
`END.Pack`,

```math
\Gamma_{\mathrm{pack},Q}\in L^\infty(I),
\tag{END.C1}
```

and the one-field input `OFP.A` needed by `END.Field`. Then

```math
\mathsf{End}_{NS}
\tag{END.COMPLETE}
```

holds.

This theorem is formal assembly. Its open semantic content is `END.Exh` and
`END.Cross`; its non-endpoint input is `END.TowerAmp`, plus the already-tracked
pack-gauge and one-field inputs. The implication `END.TowerAmp => END.Tower`
is the closed definition-level cell `END.TowerBound`.

Assume a first finite-time class exit at `T_\ast`. If `CFI.A` is installed, then
on every same-fluid still-live approach window before `T_\ast`,

```math
CM_{N,r,Q_s}(u,p,\Phi)
=
Pack_{Q_s}
\wedge
Part_{N,Q_s}
\wedge
Field_{N,r,Q_s}
\tag{END.8}
```

is propagated forward.

By `END.Exh`, the first exit has one of the endpoint shells. The installed entry
`(Part,Dead)` removes the dead participation endpoint.
`END.Pack` removes `(Pack,packing-detached)`. `END.Field` removes
`(Field,Jump)`. `END.Tower` removes the mixed `tower-blown` endpoint. `END.Cross`
reduces every remaining shell interaction to one of those discharged entries.

Thus the assumed first class exit has no endpoint shell left in the matrix.
Contradiction.

The formal endpoint conclusion is:

```math
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{END.9}
```

## Remaining Content

The endpoint block is now reduced to:

```math
\boxed{
END.Exh,\qquad END.TowerAmp,\qquad END.Cross.
}
\tag{END.10}
```

`END.Pack` is formal once the native pack gauge
`\Gamma_{\mathrm{pack},Q}\in L^\infty(I)` is supplied. `END.Field` is formal
once `OFP.A` supplies a positive field scale and finite coherence bound.
`END.TowerBound` is formal once `END.TowerAmp` is supplied. `END.Cross` is
formal once the cross-entry certificate reductions are accepted.

Finally, `END.Exh` closes from the endpoint certificate definitions/theorems:

```math
\neg Part_{N,Q}\Longrightarrow Dead,
\qquad
\neg Pack_Q\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field_{N,r,Q}\Longrightarrow Jump.
\tag{END.11}
```

Together with the direct transported-center block, this is one of the terminal
proof blocks of the Navier-Stokes lane.
