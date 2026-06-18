# GoodScale Rehydrated Source-Wall Execution

## Status

Rehydration and execution pass after installing `GoodScaleNonCollapse.A` as the
replacement interface for `READ.COVER`.

The rehydrated authority is:

```math
source\text{-}frontier.yaml:
\quad
\text{primary obligation }=
source\text{-}wall\text{-}root\text{-}after\text{-}reconcile.
```

The interface side is closed:

```math
GoodScaleNonCollapse.A
\Longrightarrow
UniformReadCover.A
\Longrightarrow
READ.COVER.
```

The unsolved first arrow is still:

```math
OriginalSmoothData
\Longrightarrow
GoodScaleNonCollapse.A.
```

The rehydrated current source-wall split is:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

After the latest solve passes, this sharpens operationally to:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or}\quad
UniformTemporalSourceIntegrability_p.A
\text{ / }TemporalNonAtomicSource.A.
}
```

The native zero-loss defect limit gives an equivalent local PDE face:

```math
\boxed{
NativeTrilinearDefectDomination.A.
}
```

None is installed from the current route inputs.

## 1. Direct Square-Reserve Branch

The direct branch begins from the installed static reduction:

```math
ParentSquareEmbed.A
```

which prices diffuse legal parent clouds into the donor square reserve

```math
\mathcal R_N(W)
:=
\int_W\sum_{P^-}|A_{P^-}(t)|^2dt,
\qquad
\mathcal S_N(W)
:=
\int_W
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt.
```

The normalization required by this branch is

```math
c_{\mathrm{res}}\mathcal S_N(W)
\le
\mathcal R_N(W)
\le
C_{\mathrm{res}}\mathcal S_N(W).
```

The required dynamic theorem is:

```math
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
```

If installed, it gives:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
GoodScaleNonCollapse.A.
```

### Execution verdict

The direct dynamic attempt fails from the current installed corpus.  The
normalized-adjoint parent-or-charge mechanism controls child packet mass:

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2,
```

and `WeightedAdjRes.A` charges that mass by the high-frequency first-moment
dissipation tail.  It does not evolve the donor square factor:

```math
|A_{P^-}(t)|^2.
```

Differentiating the donor square generates:

```math
A_k(t)\sum_{\ell>k+4}\partial_tD_\ell(t),
```

and the shell equation returns:

```math
A_k(t)\sum_{\ell>k+4}Source_\ell(t),
```

which is the same local positive source wall.  Thus
`SquareReserveEvolution.A` is a valid sufficient theorem but not an independent
consequence of installed first-moment, local-energy, donor-balance, or
normalized-adjoint ledgers.

The scalar obstruction remains:

```math
F_k(t)=A_kh_k^{-1}\mathbf 1_{I_k}(t),
\qquad
\int F_k=A_k,
\qquad
\int 2^kF_k^2=2^kA_k^2h_k^{-1}.
```

The first moment can be small while the scale-critical square reserve is
non-small on short terminal heat windows.

## 2. Zeno Temporal Branch

The Zeno branch tries to produce a temporal-support class:

```math
B_{time}:
\quad
\mu_*^{src}(\{s<-a\})=0\ \forall a>0,
\qquad
\mu_*^{src}(B_R\times\{0\})=0\ \forall R.
```

The Liouville half is elementary:

```math
B_{time}
\Longrightarrow
\mu_*^{src}=0.
```

The no-earlier-source half is supplied by first-pulse minimality.  The missing
production theorem is the terminal anti-atom input:

```math
TemporalNonAtomicSource.A:
\quad
\mu_*^{src}(B_R\times\{0\})=0
\quad\forall R.
```

A sufficient quantitative version is:

```math
UniformTemporalSourceIntegrability_p.A:
\quad
\left\|
\|F_n^{src,+}(s,\cdot)\|_{\mathcal M_y}
\right\|_{L_s^p((-1,0))}
\le C_R,
\qquad p>1.
```

### Execution verdict

The current compactness gives finite positive Radon mass, i.e. only an
`L_s^1`-level measure bound.  It allows terminal atoms:

```math
d\mu_n(y,s)=\rho(y)n\mathbf 1_{(-1/n,0]}(s)\,dy\,ds
\rightharpoonup
\rho(y)\,dy\otimes\delta_{s=0}.
```

The `p>1` temporal estimate follows from heat-scale square-source control, but
that estimate is route-equivalent to:

```math
HeatScaleSquareSource.A
\equiv
LocalPositiveSourceCarleson.A
\equiv
ScaleCriticalTreeCarleson.A.
```

So the Zeno temporal branch does not close independently.  It is a precise
alternate interface for the same source-control obstruction.

## 3. Native Zero-Loss Defect-Limit Branch

The zero-loss defect-limit route reduces the terminal positive source carrier to:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
```

The domination theorem is:

```math
NativeTrilinearDefectDomination.A:
\quad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
\,dxdt
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1).
```

The native split has exactly three faces:

```math
CoeffBound.A,
\qquad
ActiveAmplitudeCarleson.A,
\qquad
AlignmentDecorrel.A.
```

### Execution verdict

`CoeffBound.A` is not produced by fixed-cutoff low-mode admissibility,
energy/enstrophy plus Bernstein, Calderon-Zygmund pressure/strain recovery,
pack-strain criteria, or continuation criteria.

`ActiveAmplitudeCarleson.A` is not produced by raw energy, first-moment
dissipation, active-square residual tails, square-source/amplitude-gain notes,
or downstream frozen-family source integrability.

`AlignmentDecorrel.A` is not produced by incompressibility, signed exchange,
pressure/vortex structure, vorticity-direction/Beltrami/helical coherence, or
same-fluid transport.

There is no fourth local face of the native positive trilinear carrier.  The
zero-loss defect-limit route therefore returns to the same active positive source
wall.

## Rehydrated Terminal Verdict

The replacement interface is now clean:

```math
\boxed{
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
}
```

The current unsolved theorem content is not the cover compactness and not the
definition of `r_good`.  It is the native positive source-control theorem on
selected terminal active windows.

The exact equivalent theorem-facing forms are:

```math
\boxed{
SquareReserveEvolution.A
}
```

or

```math
\boxed{
UniformTemporalSourceIntegrability_p.A
\text{ / }
TemporalNonAtomicSource.A
}
```

or

```math
\boxed{
NativeTrilinearDefectDomination.A.
}
```

From the current installed corpus, all three are open and route-equivalent to
the source-wall root.  A genuine solution must introduce a new nonlinear
source-control mechanism: a dynamic law for the donor square reserve, temporal
anti-concentration for the native positive source measure, or terminal
decorrelation/charge of the native positive trilinear defect.
