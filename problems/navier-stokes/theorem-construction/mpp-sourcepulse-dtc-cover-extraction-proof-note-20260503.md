# MPP SourcePulseDTCCover.A Extraction Proof

## Status

Installed theorem-facing source-side cover extraction under the
`SourcePulseDTCPlacement.A` target.

This note proves only the geometric/source-side half:

```math
SourcePulseDTCCover.A.
```

It does not prove the analytic transported-center packet
`DTC.A_{\mathfrak p}` on the cover.

## Setup

Let

```math
\mathcal P_n=(Q_n^\Phi,j_n,I_n)
```

be a terminal same-fluid source-pulse family used as a genuine non-smooth
occurrence.  Work on the retained `Pack+Part` branch:

```math
Pack_{Q_n}(u,\Phi),
\qquad
Part_{N,Q_n}(u,p).
\tag{SDC.1}
```

The source-pulse packets are route-local terminal active windows.  Their spatial
label footprints are bounded finite-overlap packet footprints on each `I_n`.
Write the label footprint as `A_n`, so

```math
(Q_n^\Phi)_t=\Phi_t(A_n)
\qquad (t\in I_n).
\tag{SDC.2}
```

For each endpoint-depth transported-center parameter required by
`DTC-to-TowerBound`, let `R_{\mathfrak p}^{TC}>0` denote the transported-center
radius on the corresponding source-pulse scale.

## Theorem `SourcePulseDTCCover.A`

For every retained `Pack+Part` terminal source-pulse family and every required
endpoint-depth transported-center radius, there is a finite same-family
transported-center cover

```math
(Q_n^\Phi)_t
\subset
\bigcup_{\ell=1}^{J_{n,\mathfrak p}}
B(c_\ell(t),R_{\mathfrak p}^{TC}/2),
\qquad
c_\ell(t)=\Phi_t(a_\ell),
\qquad
a_\ell\in A_n,
\tag{SDC.3}
```

with finite `J_{n,\mathfrak p}` and bounded overlap depending only on the packet
footprint, the selected radius, and the retained pack gauge on that packet.

## Proof

Because `Pack_{Q_n}` is retained, the restricted flow map is one same-fluid
diffeomorphic motion on the label footprint and has finite distortion:

```math
\Gamma_{\mathrm{pack},Q_n}
:=
\sup_{a\in A_n,\ t\in I_n}
\max\{|F(a,t)|,\ |F(a,t)^{-1}|\}
<\infty.
\tag{SDC.4}
```

Thus for `a,b\in A_n` and `t\in I_n`,

```math
|\Phi_t(a)-\Phi_t(b)|
\le
\Gamma_{\mathrm{pack},Q_n}|a-b|.
\tag{SDC.5}
```

Choose a finite label net

```math
\{a_1,\dots,a_{J_{n,\mathfrak p}}\}\subset A_n
\tag{SDC.6}
```

with mesh

```math
\eta_{n,\mathfrak p}
:=
R_{\mathfrak p}^{TC}/(2\Gamma_{\mathrm{pack},Q_n}).
\tag{SDC.7}
```

The net is finite because `A_n` is a bounded packet footprint.  If
`x=\Phi_t(a)\in(Q_n^\Phi)_t`, choose `a_\ell` with
`|a-a_\ell|\le\eta_{n,\mathfrak p}`.  Then by `(SDC.5)`,

```math
|x-\Phi_t(a_\ell)|
\le
\Gamma_{\mathrm{pack},Q_n}\eta_{n,\mathfrak p}
=R_{\mathfrak p}^{TC}/2.
\tag{SDC.8}
```

Setting `c_\ell(t)=\Phi_t(a_\ell)` gives `(SDC.3)`.

Choose the net in `(SDC.6)` maximal `\eta_{n,\mathfrak p}`-separated.  Then
the label balls `B(a_\ell,\eta_{n,\mathfrak p}/2)` are disjoint, while the
balls `B(a_\ell,\eta_{n,\mathfrak p})` cover `A_n`.  If an Eulerian point
`x=\Phi_t(a)` belongs to `K` transported balls
`B(\Phi_t(a_\ell),R_{\mathfrak p}^{TC}/2)`, then the inverse Lipschitz bound in
`(SDC.4)` gives

```math
|a_\ell-a|
\le
\Gamma_{\mathrm{pack},Q_n}R_{\mathfrak p}^{TC}/2
```

for each of the `K` centers.  The disjoint balls
`B(a_\ell,\eta_{n,\mathfrak p}/2)` are therefore contained in a single label
ball of radius
`\Gamma_{\mathrm{pack},Q_n}R_{\mathfrak p}^{TC}/2
+\eta_{n,\mathfrak p}/2`.  The Euclidean volume-packing bound gives

```math
K
\le
C_3\bigl(2\Gamma_{\mathrm{pack},Q_n}^2+1\bigr)^3,
```

with `C_3` dimensional.  Thus the overlap is finite and depends only on the
dimension and the retained pack distortion.  Incompressibility preserves packet
volume, so no extra density loss is introduced.

This proves `SourcePulseDTCCover.A`. ∎

## Consequence

The source-side half of `SourcePulseDTCPlacement.A` is now installed:

```math
\boxed{
SourcePulseDTCCover.A.
}
\tag{SDC.9}
```

The remaining half is exactly the analytic transported-center packet on that
same cover:

```math
\boxed{
DTC.A_{\mathfrak p}
\quad\text{through endpoint depth }N+2
\quad\text{on each cover element.}
}
\tag{SDC.10}
```

Hence

```math
SourcePulseDTCCover.A
+
\bigl[DTC.A_{\mathfrak p}\text{ on each required same-family cover element}\bigr]
\Longrightarrow
SourcePulseDTCPlacement.A
\Longrightarrow
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A.
\tag{SDC.11}
```
