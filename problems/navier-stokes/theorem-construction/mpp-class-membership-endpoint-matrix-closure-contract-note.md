# MPP Class-Membership Endpoint Matrix Closure Theorem

## Status

Installed theorem-facing endpoint certificate theorem.

Role: close the exact endpoint-exclusion block used after `CFI.A`.

This note keeps the endpoint matrix inside the repo witness-certificate
vocabulary. It does not replace the analytic tower supplier with a generic
blowup classification: `END.TowerAmp` is supplied by the installed
`DTC-to-TowerBound` theorem, while `END.Exh`, `END.Cross`, `END.Pack`,
`END.Field`, and `END.TowerBound` are theorem-grade certificate cells.

## Installed Entry

The installed endpoint exclusion is:

```math
(Part,Dead).
\tag{END.0}
```

The analytic tower-amplitude supplier is `END.TowerAmp`, now installed through
`DTC-to-TowerBound`; the native pack and field exclusions are spent downstream
from pack preservation and `OFP.A`.

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

The installed endpoint theorem block is

```math
\mathsf{End}_{NS}
:=
END.Pack
\wedge
END.Field
\wedge
END.TowerBound
\wedge
END.Cross
\wedge
END.Exh.
\tag{END.3}
```

The route label `End_NS` denotes this same package:

```math
End\_NS\equiv\mathsf{End}_{NS}.
\tag{END.3label}
```

The endpoint matrix is also the grammar used by the survivor-equivalence atlas
in
[mpp-survivor-equivalence-atlas-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-survivor-equivalence-atlas-note.md):
branch readout packets may be identified only when their admissible maps
preserve the same `Pack / Part / Field` endpoint cell on the same same-fluid
family.

The cover taxonomy for the endpoint words is collected in
[mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md).
In that map, tangential slip is a base-rung `Jump` reading: normal flux may stay
compatible while one-field coherence fails. If the same slip is used as a
participation-failure mechanism, it is a cross-entry and must reduce through
`END.Cross`; the native visible readout remains Field/Jump.

The matrix rows are not mutually exclusive physical doors. They are certificate
rows. A single terminal behavior may have a native row and a cross-entry row.
In particular, finite material-packet distortion is native to the Pack row as
`packing-detached`, while the strain/tower mechanism producing it may also
activate `tower-blown` or Field-side coherence pressure. The matrix keeps those
readouts typed rather than pretending that one visible endpoint has only one
cause.

### Conditional 21-Cell Endpoint Matrix

For the terminal route theorem, the Pack/Part/Field endpoint matrix is the
finite bookkeeping object

```math
\mathcal M_{End}^{21}
:=
\{Pack,Part,Field\}
\times
\{
Dead,\ packing\text{-}detached,\ tower\text{-}blown,\ Jump,\ Dead_\times,\ Blown_\times,\ Jump_\times
\}.
\tag{END.3m}
```

This is not seven new primitive endpoint laws. It is the three class rows
tested against the native endpoint faces plus the three cross-entry bundles.
The route-native cells are discharged by:

| matrix block | discharge route |
| --- | --- |
| `(Part,Dead)` | installed entry `(END.0)` |
| `(Pack,packing-detached)` | `END.Pack` |
| `(Field,Jump)` | `END.Field` |
| `tower-blown` row-independent slot | `DTC-to-TowerBound => END.TowerAmp => END.TowerBound` |
| `Dead_x`, `Blown_x`, `Jump_x` cross bundles | `END.Cross` reduction to the installed/native rows |

Thus the endpoint side of the 21-cell conditional theorem is exactly:

```math
DTC\text{-}to\text{-}TowerBound
+END.Exh+END.Cross
+Pack/Part/Field\text{ endpoint matrix}
\Longrightarrow
End\_NS.
\tag{END.3n}
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

This is the endpoint exhaustiveness theorem. It is a definition-level theorem
for the repo witness system once the certificate maps
`\neg Part=>Dead`, `\neg Pack=>packing-detached\vee tower-blown`, and
`\neg Field=>Jump` are accepted.

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

Once `OFP.A` is installed, the implication is direct: `OFP.A` propagates a
positive coherence scale `r_{N,\sigma}>0` and finite coherence bound
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

Once the tower-amplitude bound is supplied, the contradiction is direct:
`tower-blown` asserts that for every finite `M` there is `t\in I` with
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

Thus `END.TowerBound` is the direct exclusion of `tower-blown` by the
`L^\infty(I)` tower-amplitude bound supplied in `END.TowerAmp`.

#### Bridge `DTC-to-TowerBound`

The tower-amplitude input is supplied by a finite transported-center cover plus
the pressure/viscous `K_k` readout.

Assume that for every `t\in I`,

```math
Q_t\subset \bigcup_{i=1}^{J_Q}B(c_i(t),R_i/2),
\tag{END.6d}
```

with `J_Q<\infty`, and that each cover ball is included in a transported-center
instance `\mathfrak p_i=(n_i,\mu_i,\Delta_i)` with `\mu_i\ge N+2`. If

```math
DTC.A_{\mathfrak p_i}
\qquad(1\le i\le J_Q)
\tag{END.6e}
```

holds, then the same DTC readout supplies the local tower amplitude, including
the `K_k` terms. For `U_k`, `DTC.A_{\mathfrak p_i}` gives the local `H^2`
transported-center packet for all `0\le k\le N+2` on the larger ball. Fixed
radius Morrey gives

```math
\sup_{t\in I}
\sup_{1\le i\le J_Q}
\sum_{k=0}^{N}
\|U_k(\cdot,t)\|_{L^\infty(B(c_i(t),R_i/2))}
<\infty,
\tag{END.6f}
```

and also bounds the viscous readout rungs `U_{k+2}`.

For `K_k`, use

```math
K_k
=
-\nabla^{k+1}p+\nu\Delta U_k.
\tag{END.6g}
```

The viscous part reads from `U_{k+2}` and is covered by the `N+2` depth. The
pressure part is controlled on each fixed transported-center ball by the local
pressure response plus the energy far tail:

```math
\sup_{B(c_i(t),R_i/2)}
|\nabla^{k+1}p|
\le
C\left(
1+\mathcal Z_{\mathfrak p_i}^{TC}(t)+\|u_0\|_{L^2}^2
\right).
\tag{END.6h}
```

Since `\mathcal Z_{\mathfrak p_i}^{TC}\in L^\infty(I)` for the finite cover,

```math
\sup_{t\in I}
\sup_{1\le i\le J_Q}
\sum_{k=0}^{N}
\|K_k(\cdot,t)\|_{L^\infty(B(c_i(t),R_i/2))}
<\infty.
\tag{END.6i}
```

Therefore

```math
END.TowerAmp:
\qquad
\mathfrak A_{N,Q}\in L^\infty(I).
\tag{END.6j}
```

by summing `(END.6f)` and `(END.6i)` over the finite cover `(END.6d)`. Thus the
endpoint tower face reduces to:

```math
DTC\text{-}to\text{-}TowerBound:
\quad
\bigwedge_i DTC.A_{\mathfrak p_i}
\text{ through depth }N+2
\Longrightarrow
END.TowerAmp.
\tag{END.6k}
```

This bridge does not add a new receiver loop: its analytic content is exactly
the same local pressure/viscous readout already tracked in the `DTC` package.

### Theorem Target `END.Cross`

```math
\text{Every non-native shell interaction reduces to }
END.Pack,\ END.Field,\ END.TowerBound,\ \text{or }(Part,Dead).
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

Therefore `END.Cross` is a conditional matrix-reduction theorem under the
field-coherence reduction and the installed `(Part,Dead)` row:

```math
END.Cross:
\qquad
\text{all cross entries reduce to }
(Part,Dead),\ END.Pack,\ END.Field,\ END.TowerBound.
\tag{END.7c}
```

## Endpoint Contradiction

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

This theorem is an exact assembly under the listed hypotheses. Its
definition-level content is `END.Exh` and `END.Cross`; its non-endpoint
analytic input is `END.TowerAmp`, plus the already-tracked pack-gauge and
one-field inputs. The implication `END.TowerAmp => END.TowerBound` is the
direct contradiction between a uniform tower-amplitude bound on the same
finite cover/depth and the `tower-blown` requirement of arbitrarily large
tower amplitude.

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
`(Field,Jump)`. `END.TowerBound` removes the mixed `tower-blown` endpoint. `END.Cross`
reduces every remaining shell interaction to one of those discharged entries.

Thus the assumed first class exit has no endpoint shell left in the matrix.
Contradiction.

The endpoint conclusion is:

```math
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{END.9}
```

Equivalently, in route-label notation:

```math
CFI.A+End\_NS
\Longrightarrow
\text{no finite-time class exit}.
\tag{END.9label}
```

## Installed Content

The endpoint block now closes from:

```math
\boxed{
END.Pack+END.Field+END.TowerBound+END.Cross+END.Exh
\Longrightarrow
End_{NS}.
}
\tag{END.10}
```

The analytic tower input is the installed theorem
`DTC-to-TowerBound => END.TowerAmp => END.TowerBound`. `END.Pack` follows from
the native pack-gauge bound
`\Gamma_{\mathrm{pack},Q}\in L^\infty(I)`, which excludes the
packing-detached endpoint on the same packet. `END.Field` follows when `OFP.A`
supplies a positive field scale and finite coherence bound, excluding the
`Jump`/field-failure endpoint on the same packet. `END.TowerBound` is the
direct tower-amplitude contradiction described above. `END.Cross` is available
only under the accepted cross-entry certificate reductions.

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
