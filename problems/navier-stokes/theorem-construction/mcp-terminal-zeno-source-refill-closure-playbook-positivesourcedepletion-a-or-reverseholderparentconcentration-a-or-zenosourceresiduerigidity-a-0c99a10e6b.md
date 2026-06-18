# Terminal Zeno source-refill closure playbook

## Installed Reductions And Open Equivalence

The current route has these installed pieces:

```math
LocalDonorBalance.A
```

for finite source-refill trees,

```math
EntranceLeafDecay.A
```

for branches reaching a preterminal entrance surface.

The route also identifies the open equivalence target:

```math
ScaleCriticalTreeCarleson.A
\equiv_{route}
\text{localized positive pre-Cauchy source Carleson estimate.}
```

This is not a closed reduction.  It is the Carleson-side presentation of the
remaining Zeno source-refill wall.

The remaining wall is the terminal Zeno branch:

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
```

## Best closure route

The shortest closure route is the Carleson side, through

```math
PositiveSourceDepletion.A
```

in its concrete form:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le
o_N(1)+\text{summable legal losses}.
\tag{PSD}
```

for every bounded-overlap same-fluid terminal family selected by the source-pulse branch.

This is the most direct target because it gives

```math
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
TwoTowerDonorDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## How to try to prove `PositiveSourceDepletion.A`

The proof object is the pre-Cauchy localized source carrier.  A global
absolute-value envelope is the wrong estimate because it replaces the
parent-child signed decomposition below by an unlocalized size bound and loses
the refill-tree telescope.

A viable proof needs three local ingredients.

### 1. Signed localization recovery

Decompose the pre-Cauchy source on each terminal packet into:

```math
\mathcal N_{preCauchy}^{loc}
=
\partial_t\mathcal E_P+
\mathcal D_P+
\operatorname{div}_{\Phi}\mathcal J_P+
\mathcal R_P.
```

The divergence term is a legal boundary/cutoff loss.  The time derivative telescopes on legal refill trees through `LocalDonorBalance.A`.  The dissipative term is nonnegative drain.  The whole problem becomes the positive remainder:

```math
[\mathcal R_P]_+.
```

### 2. Positive remainder depletion

Prove a packetwise estimate of the form

```math
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+\text{parent-edge drain}
+\text{legal loss},
\qquad 0<\theta<1.
\tag{PRD}
```

This is the real analytic statement.  It says a terminal active positive source can persist only by spending drain or by creating a legal parent edge.  Refill edges then telescope by the donor-balance identity.

### 3. Zeno summability

For a Zeno tree, combine `(PRD)` with bounded overlap to prove a tree estimate:

```math
\sum_{P\in\mathcal T_Z}
\int_{Q(P)}[\mathcal R_P]_+
\le
C\mathcal R_{sc}(P^0)+o_N(1).
```

This is `ScaleCriticalTreeCarleson.A`.

## Reverse-Hölder parent concentration route

This route must prove a stronger structural theorem for the positive source-parent measure:

```math
\|d\pi_P\|_{\text{parent }L^q}
\le C\|d\pi_P\|_{\text{parent }L^1},
\qquad q>1,
```

or an equivalent inverse theorem forcing a bounded set of legal parents to carry fixed mass.

The Fourier diffuse-parent countermodel shows the missing hypothesis: positive mass can spread across many legal low/intermediate donors.  A proof needs an extra geometric or algebraic constraint, such as one of:

```math
\text{coherent sign sector forcing},
\quad
\text{finite-rank strain eigendirection locking},
\quad
\text{same-fluid parent entropy charge},
\quad
\text{orthogonality-to-source conversion into square reserve}.
```

Without one of these, inverse Littlewood-Paley concentration stays open.

## Zeno source-residue rigidity route

This route has two jobs:

```math
ZenoBoundedClass.A

\times
ZenoResidueLiouville.A.
```

The compactness machinery gives an ancient local suitable source-residue object.  The missing first job is a rigid class:

```math
\text{Type I},\quad \text{finite global ancient energy},\quad
\text{critical smallness},\quad \text{bounded vorticity},\quad
\text{self-similar},\quad \text{2D/axisymmetric structure},
```

or another class with a source-residue Liouville theorem.

A rigidity proof should therefore aim for a terminal classification lemma:

```math
\text{uncharged Zeno refill ancestry}
\Longrightarrow
\text{ancient limit belongs to rigid class }\mathcal B.
```

Then prove:

```math
\mathcal B\Longrightarrow \gamma_*d\mu_*^\sigma=0.
```

This route is larger than the Carleson route, so it is a backup route.

The no-hidden version is not the unparameterized label above.  It is:

```math
ZenoBoundedClass_{\mathcal B}.A
+
ZenoResidueLiouville_{\mathcal B}.A
```

for an explicit ancient rigid class `\mathcal B`.

## Recommended attack order

1. Prove `(PRD)`, the positive remainder depletion estimate on a single localized pre-Cauchy source packet.
2. Use `LocalDonorBalance.A` to telescope refill edges on finite subtrees.
3. Use bounded overlap and entrance leaf decay to remove non-Zeno leaves.
4. Prove the Zeno tree estimate, giving `ScaleCriticalTreeCarleson.A`.
5. Propagate:

```math
ScaleCriticalTreeCarleson.A
\Longrightarrow
TwoTowerDonorDepletion.A
\Longrightarrow
ParentConcentrationOrDiffuseCharge.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Exact next theorem to write

The next theorem should be named:

```math
PositiveRemainderDepletion.A
```

Statement:

```math
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+\text{legal parent-edge drain}
+\text{summable pressure/cutoff/localization loss},
\quad 0<\theta<1.
```

This is the smallest new analytic mechanism that can close the current wall.
It counts only if it supplies the localized positive source Carleson estimate
on every bounded-overlap same-fluid terminal family; otherwise it is just a
branch-local estimate and does not close `RefillTreeWellFounded.A`.
