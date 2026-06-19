# PTC Shape Normalization Closure

## Status

Active theorem-facing upstream debt note.

Role: isolate the exact `PTC-Shape` theorem needed to close the shape side of
the `D.7mn -> D.7mq` reduction on the exact-potential branch.

## Purpose

Discharge the shape packet:

```math
\boxed{
\|M_{J,\varepsilon}^{shape}-I_{N_a}\|_{\mathrm{op}}\le \epsilon_{J,\varepsilon}^{shape}
\quad\text{in the selector-weighted second-moment sense.}
}
\tag{PTCS.0}
```

This is the second genuinely new upstream theorem in the exact-potential
closure route.

## Exact Target

### Theorem PTC-Shape.A

Construct a selector-shape theorem that closes the shape side of `D.7mn2`:

Let

```math
d:=\dim N_a,
\qquad
m_{J,\varepsilon}(t,a):=\operatorname{tr}\bigl(M_{J,\varepsilon}^{shape}(t,a)\bigr).
\tag{PTCS.0a}
```

The clean normalized isotropy statement is

```math
\left\|
\frac{1}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a)
-
\frac{1}{d}\Pi_{N_a}
\right\|_{\mathrm{op}}
\le
\epsilon_{J,\varepsilon}^{shape}(t,a),
\tag{PTCS.0b}
```

which is equivalent, after scalar renormalization of the trace, to the
`D.7mn2`-type form

```math
\bigl\|
\widetilde M_{J,\varepsilon}^{shape}(t,a)-I_{N_a}
\bigr\|_{\mathrm{op}}
\le
C_d\,\epsilon_{J,\varepsilon}^{shape}(t,a),
\tag{PTCS.0c}
```

for the renormalized shape tensor

```math
\widetilde M_{J,\varepsilon}^{shape}(t,a)
:=
\frac{d}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a).
\tag{PTCS.0d}
```

That is the exact tensor-level form of
`\|M_{J,\varepsilon}^{shape}-I_{N_a}\|_{\mathrm{op}}\le \epsilon_{J,\varepsilon}^{shape}` on this branch.

The primitive theorem statement is tensor-level. The projector comparison to
the Cauchy--Green reference object is a downstream corollary of the `D.7mn`
reduction, not the primitive shape axiom itself.

The hidden conversion requirement is cocycle-norm control:

```math
\bigl\|
(\mathbf W_J^{coc})^*
\left(
\frac{1}{m_{J,\varepsilon}}M_{J,\varepsilon}^{shape}
-\frac1d\Pi_{N_a}
\right)
\mathbf W_J^{coc}
\bigr\|_{\mathrm{op}}
\le
\bigl|\mathbf W_J^{coc}\bigr|_{\mathrm{op}}^2\,
\epsilon_{J,\varepsilon}^{shape}.
\tag{PTCS.2a}
```

So tensor-level shape control becomes useful for projector comparison only on
selector-good families where `|\mathbf W_J^{coc}|_{\mathrm{op}}` is bounded or
otherwise quantitatively controlled.

There is also a sharper constructive route that bypasses asymptotic
second-moment normalization: if the selector-good support satisfies the
convex-interiority / two-sided quadratic richness packet written in
[selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md),
then one obtains an exact finite balanced frame

```math
\sum_{\ell=1}^m w_\ell\,\omega_J^\ell(a,t)\otimes\omega_J^\ell(a,t)
=
\Pi_{N_a},
\tag{PTCS.2aa}
```

which can serve as a constructive replacement for the shape packet on the
finite-frame branch.

That cocycle-norm requirement is now written explicitly in
[selector-good-cocycle-operator-norm-bound.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-good-cocycle-operator-norm-bound.md),
which derives the Gronwall bound

```math
\bigl|W_J^N(t,a)\bigr|_{\mathrm{op}}
\le
\exp\!\Bigl(\int_{t_0}^t |A_J^N(s,a)|_{\mathrm{op}}\,ds\Bigr).
\tag{PTCS.2b}
```

At the projector level, the intended downstream consequence is:

```math
\bigl\|
\mathcal P_{J,\mathrm{lin}}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,\mathrm{shape}}^{pair,\varepsilon}(a,b,t),
\tag{PTCS.3}
```

with the projector error generated through the tensor packet and the
`D.7mn -> D.7mq` reduction.

### Exact Reformulation By Directional Measure

Let `\nu_{J,\varepsilon}^{shape}(a,t)` be the selector-good directional measure
on the unit sphere `S(N_a)`. Then

```math
M_{J,\varepsilon}^{shape}(t,a)
=
\int_{S(N_a)} \omega\otimes\omega\,d\nu_{J,\varepsilon}^{shape}(\omega).
\tag{PTCS.3d}
```

The exact second-moment isotropy criterion is the directional quadratic test:
for every unit vector `v\in S(N_a)`,

```math
\left|
\int_{S(N_a)}
\left(
(\omega\cdot v)^2-\frac1d
\right)
d\nu_{J,\varepsilon}^{shape}(\omega)
\right|
\le
\epsilon_{J,\varepsilon}^{shape}(t,a).
\tag{PTCS.3e}
```

Indeed, if

```math
T_{J,\varepsilon}(t,a)
:=
\frac{1}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a)
-
\frac1d\Pi_{N_a},
\tag{PTCS.3ea}
```

then `T_{J,\varepsilon}` is symmetric and

```math
\langle v,T_{J,\varepsilon}(t,a)v\rangle
=
\int_{S(N_a)}
\left(
(\omega\cdot v)^2-\frac1d
\right)
d\nu_{J,\varepsilon}^{shape}(\omega),
\tag{PTCS.3eb}
```

so `(PTCS.3e)` is exactly equivalent to `(PTCS.0b)` by the variational
characterization of the operator norm for symmetric tensors.

A degree-2 spherical-harmonic formulation is then equivalent up to
dimension-dependent constants on the finite-dimensional traceless-quadratic
space: every degree-2 spherical harmonic `Y_2` on `S(N_a)` has small
selector-good average

```math
\left|
\int_{S(N_a)} Y_2(\omega)\,d\nu_{J,\varepsilon}^{shape}(\omega)
\right|
\le
C\,\epsilon_{J,\varepsilon}^{shape}(t,a)\,\|Y_2\|.
\tag{PTCS.3f}
```

By contrast, cap-comparability of the directional measure is a stronger
sufficient route:

```math
\nu_{J,\varepsilon}^{shape}(C)
=
\sigma_{N_a}(C)+E_C,
\qquad |E_C|\le C_C\epsilon_{J,\varepsilon}^{shape}
\tag{PTCS.3g}
```

for caps `C` in a fixed aperture range implies the degree-2 control above, but
is not the minimal exact criterion.

### Corollary PTCS.C (measure sign-separation is one exact constructive descendant of the shape burden)

Keep the selector-good directional support `\Omega_J(a,t)` and assume the
directional measure `\nu_{J,\varepsilon}^{shape}(a,t)` satisfies the two-sided
quadratic sign-separation packet from
[selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md):
for some `\alpha,\kappa>0` and every nonzero traceless symmetric operator `A`
on `N_a`,

```math
\nu_{J,\varepsilon}^{shape}(a,t)
\Bigl\{
\omega:\omega^\top A\omega\ge \kappa\|A\|_{\mathrm{op}}
\Bigr\}
\ge \alpha,
\tag{PTCS.3h}
```

and

```math
\nu_{J,\varepsilon}^{shape}(a,t)
\Bigl\{
\omega:\omega^\top A\omega\le -\kappa\|A\|_{\mathrm{op}}
\Bigr\}
\ge \alpha.
\tag{PTCS.3i}
```

Then the selector-good support admits a finite balanced frame, hence the
constructive finite-frame branch supplies an exact replacement for the
asymptotic shape packet on that family.

So the exact hierarchy on the shape side is:

```math
\texttt{primitive shape burden:}\qquad
\text{degree-2 isotropy }(PTCS.3e)\text{ / }(PTCS.3f),
\tag{PTCS.3j}
```

```math
\texttt{constructive descendant:}\qquad
\text{support-level quadratic interiority }(SBF.5)
\Longrightarrow
\text{balanced frame},
\tag{PTCS.3k}
```

```math
\texttt{measure-level sufficient packet:}\qquad
(PTCS.3h)\text{--}(PTCS.3i)
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3l}
```

```math
\texttt{finite geometric descendant:}\qquad
\text{positive mass in the finite eigen-cap family from }QSP.B
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3m}
```

```math
\texttt{smooth finite descendant:}\qquad
\text{finite localized bump-lower packet on the same eigen-cap family}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3n}
```

```math
\texttt{short-window transport descendant:}\qquad
\text{entrance-time bump mass}
\ +\
\text{angular transport stability}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3o}
```

```math
\texttt{regular-window descendant:}\qquad
\text{entrance-time bump mass}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3p}
```

```math
\texttt{initial-geometry descendant:}\qquad
\text{initial pair-direction core-cap occupancy}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3q}
```

```math
\texttt{stronger entrance descendant:}\qquad
\text{finite initial core-cap comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3r}
```

```math
\texttt{combinatorial entrance descendant:}\qquad
\text{one active neighbor in each finite core cap}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame},
\tag{PTCS.3s}
```

```math
\texttt{canonical graph-fiber descendant:}\qquad
\text{finite entrance lower-density on each active neighbor fiber}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3t}
```

```math
\texttt{averaged graph-fiber descendant:}\qquad
\text{finite averaged entrance incidence}
\ +\
\text{one finite bad-base extraction}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3u}
```

```math
\texttt{graph-mass / oscillation descendant:}\qquad
\text{graph-level core-cap mass floor}
\ +\
\text{fiber-occupancy oscillation}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3v}
```

```math
\texttt{smooth graph-fiber descendant:}\qquad
\text{graph-level core-cap mass floor}
\ +\
\text{localized bump oscillation}
\ +\
\text{thin shell leakage}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3w}
```

```math
\texttt{shell-comparable smooth descendant:}\qquad
\text{graph-level core-cap mass floor}
\ +\
\text{localized bump oscillation}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3x}
```

```math
\texttt{fully smooth graph-fiber descendant:}\qquad
\text{finite graph-bump lower/comparability}
\ +\
\text{localized bump oscillation}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3y}
```

```math
\texttt{unified shell-bump descendant:}\qquad
\text{finite positive reference shell-bump packet}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3z}
```

```math
\texttt{material-gap shell-carrier descendant:}\qquad
\text{finite positive shell-bump packet for the oriented top right singular carrier}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3za}
```

```math
\texttt{TPS sign-balancing descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{cap-to-right-singular carrier identification}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zb}
```

```math
\texttt{TPS cap-center descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{cellwise cap-center-to-right-singular angular tether}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zc}
```

```math
\texttt{TPS packet-center descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{selected packet-center-to-right-singular angular tether}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zd}
```

```math
\texttt{TPS entrance-direction descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{packet-center-to-entrance-direction tether}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3ze}
```

```math
\texttt{TPS cap-aperture descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{selected-cell entrance-direction cap aperture}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zf}
```

```math
\texttt{TPS parent-cap descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{selected-parent-cap entrance membership}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zg}
```

```math
\texttt{TPS assignment descendant:}\qquad
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{entrance-direction-adapted selected-cell assignment}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zh}
```

```math
\texttt{TPS entrance-compatible refinement descendant:}\qquad
\text{entrance-compatible TPS cap-balancing / reserve-sign refinement}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zi}
```

```math
\texttt{TPS entrance-sector descendant:}\qquad
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zj}
```

```math
\texttt{TPS primitive sign descendant:}\qquad
\text{sector-stable diagonal-density lower bound}
\ +\
\text{sector-stable weighted row-sum bound}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zk}
```

```math
\texttt{TPS transfer descendant:}\qquad
\text{sectorwise diagonal-mass distribution}
\ +\
\text{sectorwise edge localization}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zl}
```

```math
\texttt{TPS diagonal-transfer descendant:}\qquad
\text{sectorwise diagonal-mass distribution}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zm}
```

```math
\texttt{TPS diagonal-restriction descendant:}\qquad
\text{diagonal restriction stability on the entrance-sector refinement}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zn}
```

```math
\texttt{TPS diagonal-oscillation descendant:}\qquad
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zo}
```

```math
\texttt{TPS terminal-center descendant:}\qquad
\text{terminal sector-center lower density relative to the parent-cell average}
\ +\
\text{local Holder oscillation on the terminal entrance-sector cells}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zp}
```

```math
\texttt{TPS parent-center descendant:}\qquad
\text{parent stopped-cell center lower density relative to the parent-cell average}
\ +\
\text{parent stopped-cell Holder control of the diagonal density}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced frame}.
\tag{PTCS.3zq}
```

This keeps the minimal degree-2 criterion separate from the stronger exact
constructive descendant. In particular, Proposition `QSP.D` shows that the
minimal degree-2 isotropy packet `(PTCS.3j)` does **not** by itself imply the
finite geometric descendant `(PTCS.3m)`.

**Proof.**
The implications `(PTCS.3h)`-`(PTCS.3i) \Longrightarrow (SBF.5)` and
`(SBF.5) \Longrightarrow` balanced frame are exactly Corollary `SBF.B` and
Theorem `SBF.A`. The additional finite geometric descendant `(PTCS.3m)` is
Corollary `QSP.B` followed by `Q.A`, `SBF.B`, and `SBF.A`. The smoother finite
descendant `(PTCS.3n)` is Corollary `QSP.E` followed by `QSP.B`, `Q.A`,
`SBF.B`, and `SBF.A`. The short-window transport descendant `(PTCS.3o)` is
Corollary `QSP.G` or `QSP.H` followed by `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`,
and `SBF.A`. The regular-window descendant `(PTCS.3p)` is Corollary `QSP.I`
followed by `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and `SBF.A`.
The initial-geometry descendant `(PTCS.3q)` is Corollary `QSP.J` followed by
`QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and `SBF.A`. The
stronger entrance descendant `(PTCS.3r)` is Corollary `QSP.K` followed by
`QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and
`SBF.A`. The canonical graph-fiber descendant `(PTCS.3t)` is Proposition
`QSP.M` plus Corollary `QSP.N`, followed by `QSP.J`, `QSP.I`, `QSP.H`,
`QSP.G`, `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and `SBF.A`. The averaged
graph-fiber descendant `(PTCS.3u)` is Proposition `QSP.M` plus Proposition
`QSP.O`, followed by `QSP.N`, `QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`,
`QSP.B`, `Q.A`, `SBF.B`, and `SBF.A`. The combinatorial descendant
`(PTCS.3s)` is then the bounded-degree one-neighbor special case from `QSP.L`
inside `(PTCS.3t)`. The graph-mass / oscillation descendant `(PTCS.3v)` is
Proposition `QSP.M` plus Proposition `QSP.P`, followed by `QSP.O`, `QSP.N`,
`QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and
`SBF.A`. The smooth graph-fiber descendant `(PTCS.3w)` is Proposition
`QSP.M` plus Proposition `QSP.P` plus Proposition `QSP.Q`, followed by
`QSP.O`, `QSP.N`, `QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`,
`Q.A`, `SBF.B`, and `SBF.A`. The finite-frame branch then uses that balanced
frame in place of the asymptotic second-moment normalization packet. The
shell-comparable smooth descendant `(PTCS.3x)` is Proposition `QSP.M` plus
Proposition `QSP.P` plus Proposition `QSP.Q` plus Corollary `QSP.R`, followed
by `QSP.O`, `QSP.N`, `QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`,
`Q.A`, `SBF.B`, and `SBF.A`. The fully smooth graph-fiber descendant
`(PTCS.3y)` is Corollaries `QSP.S`-`QSP.T` plus Proposition `QSP.M` plus
Proposition `QSP.P` plus Proposition `QSP.Q` plus Corollary `QSP.R`, followed
by `QSP.O`, `QSP.N`, `QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`,
`Q.A`, `SBF.B`, and `SBF.A`. The unified shell-bump descendant `(PTCS.3z)` is
Proposition `QSP.U` plus Corollary `QSP.R`, followed by Proposition `QSP.P`,
Proposition `QSP.O`, Corollary `QSP.N`, `QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`,
`QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and `SBF.A`. The material-gap shell-carrier
descendant `(PTCS.3za)` is Proposition `QSP.V` specialized to the oriented top
right singular carrier, followed by `QSP.U`, `QSP.R`, `QSP.P`, `QSP.O`,
`QSP.N`, `QSP.J`, `QSP.I`, `QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`, `Q.A`,
`SBF.B`, and `SBF.A`. The TPS sign-balancing descendant `(PTCS.3zb)` is
Corollary `QSP.W` plus the same material-gap specialization from `QSP.V`,
followed by `QSP.U`, `QSP.R`, `QSP.P`, `QSP.O`, `QSP.N`, `QSP.J`, `QSP.I`,
`QSP.H`, `QSP.G`, `QSP.E`, `QSP.B`, `Q.A`, `SBF.B`, and `SBF.A`. The TPS
cap-center descendant `(PTCS.3zc)` is Corollary `QSP.X` plus Corollary
`QSP.W`, followed by the same chain. The TPS packet-center descendant
`(PTCS.3zd)` is Corollary `QSP.Y` plus `QSP.X`, `QSP.W`, and the same chain.
The TPS entrance-direction descendant `(PTCS.3ze)` is Corollary `QSP.Z` plus
`QSP.Y`, `QSP.X`, `QSP.W`, and the same chain. The TPS cap-aperture
descendant `(PTCS.3zf)` is Corollary `QSP.AA` plus `QSP.Z`, `QSP.Y`,
`QSP.X`, `QSP.W`, and the same chain. The TPS parent-cap descendant
`(PTCS.3zg)` is Corollary `QSP.AB` plus `QSP.AA`, `QSP.Z`, `QSP.Y`,
`QSP.X`, `QSP.W`, and the same chain. The TPS assignment descendant
`(PTCS.3zh)` is Corollary `QSP.AC` plus `QSP.AB`, `QSP.AA`, `QSP.Z`,
`QSP.Y`, `QSP.X`, `QSP.W`, and the same chain. The TPS entrance-compatible
refinement descendant `(PTCS.3zi)` is Corollary `QSP.AD` plus `QSP.AC`,
`QSP.AB`, `QSP.AA`, `QSP.Z`, `QSP.Y`, `QSP.X`, `QSP.W`, and the same chain.
The TPS entrance-sector descendant `(PTCS.3zj)` is Corollary `QSP.AE` plus
`QSP.AD`, `QSP.AC`, `QSP.AB`, `QSP.AA`, `QSP.Z`, `QSP.Y`, `QSP.X`,
`QSP.W`, and the same chain. The TPS primitive sign descendant `(PTCS.3zk)` is
Corollary `QSP.AF` plus `QSP.AE`, `QSP.AD`, `QSP.AC`, `QSP.AB`, `QSP.AA`,
`QSP.Z`, `QSP.Y`, `QSP.X`, `QSP.W`, and the same chain. The TPS transfer
descendant `(PTCS.3zl)` is Corollary `QSP.AG` plus `QSP.AF`, `QSP.AE`,
`QSP.AD`, `QSP.AC`, `QSP.AB`, `QSP.AA`, `QSP.Z`, `QSP.Y`, `QSP.X`,
`QSP.W`, and the same chain. The TPS diagonal-transfer descendant `(PTCS.3zm)`
is Corollary `QSP.AH` plus `QSP.AG`, `QSP.AF`, `QSP.AE`, `QSP.AD`, `QSP.AC`,
`QSP.AB`, `QSP.AA`, `QSP.Z`, `QSP.Y`, `QSP.X`, `QSP.W`, and the same chain.
The TPS diagonal-restriction descendant `(PTCS.3zn)` is Corollary `QSP.AI`
plus `QSP.AH`, `QSP.AG`, `QSP.AF`, `QSP.AE`, `QSP.AD`, `QSP.AC`, `QSP.AB`,
`QSP.AA`, `QSP.Z`, `QSP.Y`, `QSP.X`, `QSP.W`, and the same chain. The TPS
diagonal-oscillation descendant `(PTCS.3zo)` is Corollary `QSP.AJ` plus
`QSP.AI`, `QSP.AH`, `QSP.AG`, `QSP.AF`, `QSP.AE`, `QSP.AD`, `QSP.AC`,
`QSP.AB`, `QSP.AA`, `QSP.Z`, `QSP.Y`, `QSP.X`, `QSP.W`, and the same chain.
The TPS terminal-center descendant `(PTCS.3zp)` is the stronger selector-native
sufficient route from Corollary `QSP.AK`, followed by the same downstream
balanced-frame chain already consumed by `(PTCS.3zn)`. The TPS parent-center
descendant `(PTCS.3zq)` is the even more canonical selector-native sufficient
route from Corollary `QSP.AL`, followed by the same downstream balanced-frame
chain. ∎

### Corollary PTCS.B (bounded cocycle norm converts shape control)

Assume in addition that on the selector-good family one has

```math
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}\le K_J^{coc}(t,a).
\tag{PTCS.3a}
```

Then the tensor-level shape error contributes to the `D.7mn3` perturbation by

```math
\bigl|\mathbf W_J^{coc}(t,a)\bigr|_{\mathrm{op}}^2\,
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)
\le
\bigl(K_J^{coc}(t,a)\bigr)^2\,
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a).
\tag{PTCS.3b}
```

So if

```math
\bigl(K_J^{coc}(t,a)\bigr)^2\,
\operatorname{Err}_{J,\varepsilon}^{shape}(t,a)\to 0
\quad\text{on the selector-good family,}
\tag{PTCS.3c}
```

then the shape side of the `D.7mn -> D.7mq` reduction is quantitatively
discharged.

## Proof Program

The theorem burden is exactly:

```math
\text{selector-good directional isotropy up to degree-2 moments}
\Longrightarrow
\text{the cocycle-transported pair tensor aligns with the CG reference object.}
\tag{PTCS.4}
```

The intended proof decomposition is:

1. define the selector-weighted second-moment / shape tensor exactly;
2. prove degree-2 isotropy / second-moment normalization of that tensor toward
   `I_{N_a}`;
3. propagate that normalized shape through the cocycle transport, with explicit
   control of `|\mathbf W_J^{coc}|_{\mathrm{op}}`;
4. read the resulting tensor as the Cauchy--Green reference object up to small
   shape error.

## Downstream Use

Together with
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md),
this note is supposed to yield

```math
\operatorname{Err}_{J,\varepsilon}^{lin}
+
\bigl|\mathbf W_J^{coc}\bigr|_{\mathrm{op}}^2
\operatorname{Err}_{J,\varepsilon}^{shape}
\to 0
\Longrightarrow
D.7mq.
\tag{PTCS.5}
```

So the real mathematical content of `PTC-Shape.A` is:

```math
\boxed{
\text{prove selector-good directional isotropy up to degree-2 moments.}
}
\tag{PTCS.6}
```

An alternate exact formulation is therefore:

```math
\boxed{
\text{prove the selector-good support is rich enough to admit a finite balanced frame.}
}
\tag{PTCS.7}
```

More sharply, on the installed constructive balanced-frame route the live
selector-side burden is the finite packet isolated in `QSP.11j` / `QSP.11k`:

```math
\text{entrance-compatible TPS cap-balancing / reserve-sign refinement}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments,}
\tag{PTCS.7a}
```

or one step more primitive,

```math
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
\tag{PTCS.7b}
```

So the balanced-frame branch now has an exact finite constructive stop line on
disk rather than an unspecified global isotropy burden. The selector-side
primitive and the shell-side theorem are now isolated separately in
[finite-entrance-sector-sign-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-entrance-sector-sign-refinement.md)
and
[finite-shell-comparability-on-core-cap-family.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-shell-comparability-on-core-cap-family.md).
More sharply, the selector-side primitive itself now has a stronger source-level
realization in
[diagonal-restriction-stability-on-entrance-sector-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/diagonal-restriction-stability-on-entrance-sector-refinement.md).
The live source-level selector wall is therefore one step sharper again:

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
\tag{PTCS.7c}
```

One stronger selector-native sufficient route is:

```math
\text{terminal sector-center lower density relative to the parent-cell average}
\ +\
\text{local Holder oscillation on the terminal entrance-sector cells}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
\tag{PTCS.7d}
```

An even more canonical selector-native sufficient route is:

```math
\text{parent stopped-cell center lower density relative to the parent-cell average}
\ +\
\text{parent stopped-cell Holder control of the diagonal density}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
\tag{PTCS.7e}
```

This sharpest source-level selector wall is now isolated in
[sectorwise-relative-oscillation-of-diagonal-density.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md).
That stronger selector-native sufficient route is now isolated separately in
[terminal-sector-center-density-and-local-holder-oscillation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md).

On the declared selector-scale exact-potential branch, this note therefore
plugs into the installed continuation chain as:

```math
\texttt{TPS.4u}
+
\texttt{PTC-Shape.A}
+
\texttt{SSD.A}
\Longrightarrow
\texttt{SG.4}
\Longrightarrow
\texttt{BR.lambda2}
\Longrightarrow
\texttt{continuation}.
\tag{PTCS.8}
```

This terminal read is branch-local: it uses `TPS.4u` only through the
qualitative linearization supplier isolated in
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md),
and does not claim that the stronger constructive balanced-frame descendants
are already forced by that transport packet alone.

That route is now written separately in
[selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md).
Its uniform active-family supplier packet is written in
[selector-quadratic-sign-separation-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md).
