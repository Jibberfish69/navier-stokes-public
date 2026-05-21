# TerminalSupportExclusion.A and MonotoneAncestryRank.A Zeno attempt

## Status

Failed direct discharge.  The terminal Zeno compactness package supplies a no-fixed-earlier-pulse property, yet it permits source-residue concentration at the terminal time `s=0`.  The available ancestry quantities also fail to produce a bounded monotone rank or a quantized reserve cost along every Zeno refill edge.  Therefore this note returns the live source-wall branch to the direct Carleson / local positive source reserve.

## Target

After the minimal Zeno ancient-residue attempt, the two natural closures are:

```math
\textbf{TerminalSupportExclusion.A:}\qquad \nu_*(\{s=0\}\text{ or terminal layers})=0,
```

or

```math
\textbf{MonotoneAncestryRank.A:}\qquad \text{every legal Zeno refill chain carries a descending rank or pays a finite reserve.}
```

Either would eliminate the remaining terminal Zeno source-residue branch.

## 1. What compactness gives

The Zeno branch has

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
```

Rescaling produces a local suitable ancient source-residue object

```math
(v,q,\nu_*)\quad\text{on }(-\infty,0]\times\mathbb R^3\text{ locally},
```

with nonzero selected residue

```math
\nu_*(Q_1(0,0))\ge \eta>0.
```

First-pulse selection gives, for every fixed `a>0`, absence of earlier threshold source-pulse residue on the slice region `s<-a`:

```math
\nu_*(\text{threshold source-pulse class in }s<-a)=0.
```

This property is fixed-time incoming exclusion.

## 2. TerminalSupportExclusion.A test

To close the Zeno branch by support exclusion one needs a stronger statement:

```math
\lim_{\varepsilon\downarrow0}\nu_*((-\varepsilon,0]\times B_R)=0
```

for the source-residue class, or an equivalent exclusion of terminal-time residue.

The fixed-time no-incoming property does not imply this.  A sequence of positive source pulses with time supports contained in `(-\varepsilon_m,0]`, `\varepsilon_m\downarrow0`, has zero residue on every fixed slice `s<-a`, while retaining positive mass in every terminal layer.  This is precisely the terminal Zeno geometry.

The local energy inequality is compatible with such a terminal positive measure:

```math
E_\phi(s_2)+\int_{s_1}^{s_2}D_\phi(s)\,ds
\le
E_\phi(s_1)+\nu_*([s_1,s_2]\times\operatorname{supp}\phi)+\text{local transport/pressure terms}.
```

The measure `\nu_*` enters as a positive source term.  The inequality supplies no sign contradiction at the terminal support.  Therefore terminal support exclusion is not derived from the current compactness package.

## 3. MonotoneAncestryRank.A test

A rank proof requires a functional `\mathcal R(P)` and constants `c,\delta>0` such that every legal parent edge `P^-\prec P` satisfies either

```math
\mathcal R(P^-)\le \mathcal R(P)-\delta
```

or pays reserve cost at least `c` from a finite total budget.

### Scale rank

The dyadic scale rank fails.  Along terminal Zeno, `r_m\downarrow0`, so the frequency level can increase without a bounded descending rank.  Comparable-shell parentage also permits oscillation inside finite bands.

### Time-depth rank

The time-depth rank fails because

```math
\sum_m r_m^2<\infty.
```

An infinite number of Zeno steps fits into finite backward time depth.

### Local energy / first-moment dissipation rank

Energy and first-moment dissipation are finite, but source-balanced refill can preserve normalized active mass with arbitrarily small raw first-moment cost on shrinking heat windows.  This is exactly the distinction between

```math
\int\sum_j D_j(t)\,dt
```

and the required active-square reserve

```math
\int\sum_j2^{-j}D_j(t)^2\,dt.
```

### Source mass rank

Source mass itself is not monotone.  Refill edges are defined by restoring threshold source mass from legal parents.

### Parent entropy / branch rank

Diffuse legal parentage allows

```math
\pi_P=M^{-1}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty,
```

so bounded parent selectors and entropy-style finite branching ranks do not force a descending chain or a quantized reserve payment.

## 4. Consequence

The available objects do not supply either:

```math
TerminalSupportExclusion.A
```

or

```math
MonotoneAncestryRank.A.
```

Any functional strong enough to charge every terminal Zeno refill edge is precisely a scale-critical tree reserve:

```math
ScaleCriticalTreeCarleson.A
```

or its local source form

```math
LocalPositiveSourceCarleson.A.
```

## Conclusion

The Zeno branch remains open.  Terminal-support exclusion requires a new theorem forbidding terminal concentration of source-residue measures, and monotone ancestry rank requires a new well-founded rank or reserve absent from the current route.

The live source-wall root therefore returns to the direct reserve formulations:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
LocalPositiveSourceCarleson.A.
```

Equivalently, progress now requires a new mechanism proving active-square/source-Carleson control rather than another compactness-only Zeno argument.