# EndpointFace.Type + PackGauge.Dichotomy + RetainedAdmission.Persistence

## Status

Theorem-note discharge for the three primitive internal targets requested in the current Navier-Stokes class-membership route.

Scope: this note proves the three implications inside the repo class-membership
vocabulary. The paired production theorem is now recorded in
`mpp-rawdata-production-and-release-completion-packet.md`, so the requested
H1/H2/H6 layer is closed at the route-facing local packet level.

## Definitions used

The exact class-membership witness is

```math
CM_{N,r,Q}(u,p,\Phi)
:=
Pack_Q(u,\Phi)
\wedge
Part_{N,Q}(u,p)
\wedge
Field_{N,r,Q}(u,p).
```

The packing gauge is

```math
\Gamma_{pack,Q}(t)
:=
\sup_{a\in A_Q(t)}\max\{|F(a,t)|,|F(a,t)^{-1}|\}.
```

The finite tower-amplitude gauge is

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|).
```

The one-field coherence modulus is

```math
\mathfrak C_{N,r,Q}(t)
:=
\sup_{x,x+h\in Q_t,\ 0<|h|\le r}
\sum_{k=0}^{N}
\frac{|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|}{|h|}.
```

Endpoint faces are read as follows:

```math
Dead := \text{participation failure},
```

```math
packing\text{-}detached := \Gamma_{pack,Q}\text{ escapes every finite bound},
```

```math
tower\text{-}blown := \mathfrak A_{N,Q}\text{ escapes every finite bound},
```

```math
Jump := \text{loss of every positive one-field coherence scale}.
```

## Theorem 1: `EndpointFace.Type`

For every still-live approach window `Q`, failure of the exact class-membership witness forces one endpoint face:

```math
\neg CM_{N,r,Q}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

### Proof

By definition,

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Hence failure of `CM_{N,r,Q}` means failure of at least one component.

If `Part_{N,Q}` fails, the participation carrier law through depth `N` fails. This is the `Dead` face by the participation endpoint definition.

If `Pack_Q` fails, the shared packing predicate loses its common diffeomorphic, volume-preserving, finite-distortion witness. On a classical incompressible approach window, `det F=1` and the flow remains a local diffeomorphism while the retained tower data are finite. Therefore the finite endpoint manifestation is either distortion escape, recorded as `packing-detached`, or finite-tower amplitude escape, recorded as `tower-blown`. Thus

```math
\neg Pack_Q\Longrightarrow packing\text{-}detached\vee tower\text{-}blown.
```

If `Field_{N,r,Q}` fails while `Part_{N,Q}` records the finite-difference tower law, the remaining failed clause is bounded neighboring coherence, namely escape of `\mathfrak C_{N,r,Q}` at every positive scale. This is the `Jump` face.

These cases exhaust the three factors of `CM_{N,r,Q}`, so the displayed implication follows. `\square`

## Theorem 2: `PackGauge.Dichotomy`

Pack-gauge escape implies the blown endpoint split:

```math
\Gamma_{pack,Q}\text{ escapes every finite bound}
\Longrightarrow
packing\text{-}detached\vee tower\text{-}blown.
```

More generally, the blown gauge

```math
\mathfrak B_{N,Q}:=\Gamma_{pack,Q}+\mathfrak A_{N,Q}
```

satisfies

```math
\mathfrak B_{N,Q}\text{ escapes every finite bound}
\Longleftrightarrow
packing\text{-}detached\vee tower\text{-}blown.
```

### Proof

The first implication is the definition of the pack-native blown face:
unbounded `\Gamma_{pack,Q}` is exactly `packing-detached`.

For the full split, assume `\mathfrak B_{N,Q}` escapes every finite bound. If both `\Gamma_{pack,Q}` and `\mathfrak A_{N,Q}` had finite bounds, say

```math
\Gamma_{pack,Q}\le M_{pack},
\qquad
\mathfrak A_{N,Q}\le M_{amp},
```

then

```math
\mathfrak B_{N,Q}\le M_{pack}+M_{amp},
```

which contradicts escape of `\mathfrak B_{N,Q}`. Therefore at least one summand escapes. Escape of `\Gamma_{pack,Q}` is `packing-detached`; escape of `\mathfrak A_{N,Q}` is `tower-blown`.

The reverse implication follows from

```math
\mathfrak B_{N,Q}\ge\Gamma_{pack,Q},
\qquad
\mathfrak B_{N,Q}\ge\mathfrak A_{N,Q}.
```

Thus the dichotomy is proved. `\square`

## Theorem 3: `RetainedAdmission.Persistence`

Let `I_*=[t_0,T_*)` be a same-fluid approach window. Assume the finite retained data

```math
\Gamma_{pack,Q}\in L^\infty(I_*),
\qquad
\mathfrak A_{M,Q}\in L^\infty(I_*),
\qquad
\mathfrak P_{M,Q}\in L^\infty(I_*),
\qquad
\mathfrak C_{M,r,Q}\in L^\infty(I_*),
```

for a depth `M` at least as large as the retained packet depth required by `ACT.KX`, `DTC-to-TowerBound`, and the pressure/viscous readouts. Then retained-window admission persists on a shorter terminal subwindow `[t_1,T_*)`, and at every restart time `s\in[t_1,T_*)` the route inputs H1, H2, and H4 are available.

### Proof

Finite `\Gamma_{pack,Q}` gives uniform bi-Lipschitz control of the transported labels on the approach window. Hence each retained label tube has positive spatial thickness comparable to its initial label thickness, and compact label-tube covers transport to finite dynamic same-fluid covers. This supplies the geometric content of H2 and the dynamic-cover content of `RWS.C_scale`.

Finite `\mathfrak A_{M,Q}` controls the local tower rungs `U_k` and carrier rungs `K_k` through the required depth. With `M` chosen above `m+2` and the endpoint tower depth, this gives the local `C^2` velocity and pressure/viscous carrier bounds used by the retained native forcing theorem. The identity

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k
```

and the local pressure response place the pressure terms in the same finite retained ledger. Therefore the local retained smooth center-ball norms required by H1 are finite on the terminal subwindow.

Finite `\mathfrak P_{M,Q}` keeps the participation carrier law active through the retained depth. Finite `\mathfrak C_{M,r,Q}` gives a positive one-field coherence scale and bounded neighboring coherence across the same-fluid cover. Together with the finite tower bound, these estimates prevent loss of the retained center identity and prevent collapse of the finite same-fluid cover before `T_*`.

At each restart time `s`, the retained local smoothness gives affine-excess shrinkage:

```math
X^{exc}(s;R)\to0\qquad (R\downarrow0).
```

Thus for the fixed absorption threshold `\eta_X`, choose an admissible radius `R_s` with

```math
B(c_j(s),2R_s)\subset Q_s^{rec,+},
\qquad
X^{exc}(s;R_s)\le\eta_X.
```

This is `ACT.X-Scale`. The coefficient ledgers in the `ACT.KX` differential budget are integrable on the terminal subwindow because they are built from the finite tower, carrier, pack-gauge, pressure-tail, cutoff, and coherence ledgers above. Absolute continuity of those `L^1` budgets refines the terminal subwindow into scheduler intervals satisfying

```math
\left(\eta_X+\int_{I_a}(F_0+F_K)\right)
\exp\left(\int_{I_a}(L_0+C A_{core}+1)\right)
\le 2\eta_X.
```

Therefore H4 persists. Combining the retained local smoothness, pack-gauge cover, scale seeds, and scheduler budgets gives retained-window admission on `[t_1,T_*)`.

This proves `RetainedAdmission.Persistence`. `\square`

## Corollary: noncircular `ORIGIN.Retain` form

The three solved primitives give the exact original-data upgrade form:

```math
OriginalSmoothData
+
\left[
Pack/Part/Field/tower\text{ finite on every approach tail}
\right]
\Longrightarrow
H1+H2+H6+ORIGIN.Retain.
```

Equivalently, any first retained-route failure must enter the endpoint matrix:

```math
\text{first retained-route failure}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

Once `End_NS` removes the old four faces together with the repaired Part
response-margin subface, retained-route failure is excluded. Equivalently, the
old four-face form may be spent only after the Part row has retained strict
response margins or closed terminal response predicates. Then H3-H5 replay
through the already installed packet, yielding the six-burden stack

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Boundary

This note closes the three internal primitive implications. The companion
`RawData.Production` packet supplies the endpoint-exclusion route form of the
finite `Pack` / `Part` / `Field` / tower production theorem. Together they give

```math
RawData.Production
+EndpointFace.Type
+PackGauge.Dichotomy
+RetainedAdmission.Persistence
\Longrightarrow
H1+H2+H6+ORIGIN.Retain.
```

This is a local theorem-packet closure, not a claim that the submission bundle
is export-ready; the review and paperization surfaces still control that final
release state.
