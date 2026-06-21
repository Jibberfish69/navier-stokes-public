# Door 2 Renormalized Action And Annular Defect Evacuation Direct Test

Date: 2026-06-20

Status: direct stationarity-side test; conditional stationarity is proved,
but the production inputs are not installed.  `RenormalizedActionFinite.A`
and `AnnularDefectEvacuation.A` are not consequences of local suitable
compactness, zero stress flux, or physical energy monotonicity.  They require
the same unweighted terminal action reserve / strict no-waste theorem that
appears in the heat-scale pulse branch.

## 1. Target under test

The Door 2 profile-production note reduced asymptotic stationarity to

```math
\boxed{
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}.
}
\tag{RA.1}
```

The renormalized equation on compact annuli
\(K\Subset\mathbf R^3\setminus\{0\}\) is

```math
\partial_sU_n-\nu\Delta U_n+(U_n\cdot\nabla)U_n+\nabla P_n
=
F_n^{mod}
+F_n^{src}
+\operatorname{div}M_n^{def}.
\tag{RA.2}
```

The desired finite-action estimate is

```math
\int_{s_0}^{\infty}
\left(
\|\partial_sU_n\|_{H^{-1}(K)}
+\|F_n^{mod}\|_{H^{-1}(K)}
+\|F_n^{src}\|_{H^{-1}(K)}
+|M_n^{def}|(K)
\right)\,ds
\le C_K.
\tag{RA.3}
```

The desired defect evacuation is

```math
\lim_{S\to\infty}
\sup_n
\int_S^{S+1}
\left(
\|F_n^{src}\|_{H^{-1}(K)}
+|M_n^{def}|(K)
\right)\,ds
=0.
\tag{RA.4}
```

## 2. Conditional stationarity proof

Assume `(RA.3)` and `(RA.4)`, plus the compactness already available for the
renormalized local-suitable sequence on compact annuli.  From `(RA.3)`, choose
times \(S_j\to\infty\) such that

```math
\int_{S_j}^{S_j+1}
\left(
\|\partial_sU_n\|_{H^{-1}(K)}
+\|F_n^{mod}\|_{H^{-1}(K)}
+\|F_n^{src}\|_{H^{-1}(K)}
+|M_n^{def}|(K)
\right)\,ds
\to0
\tag{RA.5}
```

after passing to a subsequence \(n_j\) and diagonalizing over a fixed compact
annulus exhaustion.  Shift time by \(S_j\):

```math
\widetilde U_j(s,y)=U_{n_j}(S_j+s,y),
\qquad
s\in[0,1].
\tag{RA.6}
```

Compactness gives

```math
\widetilde U_j\to U_\infty
\tag{RA.7}
```

locally on \([0,1]\times K\).  Passing `(RA.2)` to the limit using `(RA.5)`
and `(RA.4)` gives

```math
\partial_sU_\infty=0,
\qquad
-\nu\Delta U_\infty
+(U_\infty\cdot\nabla)U_\infty
+\nabla P_\infty
=0
\tag{RA.8}
```

on \(K\).  Diagonalizing over compact annuli gives a stationary Navier--Stokes
profile on \(\mathbf R^3\setminus\{0\}\), modulo the still-separate homogeneity
and smooth-sphere production clauses.

So the consumer implication is valid:

```math
\boxed{
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}
\Longrightarrow
\text{stationary annular subsequential limit}.
}
\tag{RA.9}
```

## 3. Why the production estimate is not installed

In terminal variables

```math
s=-\log(T-t),
\qquad
y={x-x_\ast\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\tag{RA.10}
```

the physical energy and dissipation ledgers become discounted:

```math
\int \nu|\nabla_xu|^2\,dx\,dt
=
\int e^{-s/2}\nu|\nabla_yv|^2\,dy\,ds.
\tag{RA.11}
```

Thus physical finite energy gives

```math
\int_{s_0}^{\infty}e^{-s/2}\mathcal A_R(s)\,ds<\infty,
\tag{RA.12}
```

not the unweighted estimate needed to force `(RA.3)`.

A terminal recurrent branch may have disjoint unit intervals
\(I_j=[S_j,S_j+1]\), \(S_j\to\infty\), on which

```math
0<c_0\le \mathcal A_R(s)\le C_0
\qquad(s\in I_j),
\tag{RA.13}
```

and may vanish off those intervals.  This is compatible with `(RA.12)` because
\(\sum_j e^{-S_j/2}<\infty\), while it violates the unweighted finite-action
bound.  This is the same heat-scale pulse obstruction in stationarity language.

## 4. Why defect evacuation is not installed

Local suitable compactness gives weak-star limits for source and defect
measures, but weak-star compactness is visibility, not evacuation.  The
selected source can concentrate as

```math
g_m(s)=a\,\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{RA.14}
```

and converge to a terminal time-face atom.  On compact annuli after shifting,
the same phenomenon appears as a source/defect measure that can survive on
the selected terminal face unless a residence modulus, source-square reserve,
positive-remainder depletion, or no-free donor-chain theorem removes it.

The annular stress-current compactness package can expose defect measures, but
it does not route them to zero.  The current framework still needs a routing
theorem:

```math
\text{defect on annulus}
\Longrightarrow
\text{legal cost, source-square reserve, no-waste drop, or CM Part/Field failure}.
\tag{RA.15}
```

That routing is exactly the already exposed source-residue evacuation / signed
saturation wall.

## 5. Exact production reduction

The production side of `(RA.1)` follows from any one of the known unweighted
reserve suppliers:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
}
\tag{RA.16}
```

or

```math
\boxed{
\text{UnweightedActionFinite.A / NormalizedCKNCarleson.A}
}
\tag{RA.17}
```

or

```math
\boxed{
\text{SourceSquareReserve.A / SelectedCriticalStrainCarleson.A}.
}
\tag{RA.18}
```

For source and defect evacuation specifically, the needed alternatives are

```math
\boxed{
\text{TerminalMovingPacketTraceModulus.A}
}
\tag{RA.19}
```

```math
\boxed{
\text{PositiveRemainderDepletion.A}
}
\tag{RA.20}
```

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}
}
\tag{RA.21}
```

or a rigid compact-profile production theorem:

```math
\boxed{
\text{MinimalZenoProfileProduction.A}.
}
\tag{RA.22}
```

Thus the exact reduction is

```math
\boxed{
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}
\Leftarrow
\text{StrictRescaledNoWasteLyapunov.A}
\ \text{or an equivalent unweighted terminal action/source reserve}
}
\tag{RA.23}
```

plus source-defect routing through `(RA.19)`--`(RA.22)`.

## Verdict

The stationarity consumer is clean: finite unweighted renormalized action plus
annular defect evacuation produces stationary annular subsequential limits.
The production theorem is not installed.  Physical energy supplies only a
discounted terminal budget, and compactness only makes source/defect measures
visible.  The missing forward-gold input remains an unweighted no-waste/action
reserve or the equivalent source-residence/source-square/donor-chain
evacuation theorem.
