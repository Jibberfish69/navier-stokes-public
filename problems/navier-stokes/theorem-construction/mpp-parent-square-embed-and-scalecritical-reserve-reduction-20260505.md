# MPP ParentSquareEmbed.A and ScaleCriticalTreeCarleson Reduction

## Status

This note records the direct Carleson route for the reopened source-wall branch.
It proves the diffuse-parent square embedding under the installed packet Bessel
calculus and identifies the exact remaining unsolved scalar reserve.

The result is a partial discharge:

```math
ParentSquareEmbed.A \quad \text{installed under the Bessel packet hypotheses,}
```

but

```math
LocalPositiveSourceCarleson.A
```

is not closed by this embedding alone.  The remaining burden is exactly

```math
ScaleCriticalTreeCarleson.A.
```

## Target

For a same-fluid terminal packet forest `\mathcal F_N`, the positive localized
pre-Cauchy source target is

```math
LocalPositiveSourceCarleson.A:
\qquad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+
\le
o_N(1)+\mathrm{legal\ losses}.
```

The local source identity splits, for each child packet `P`,

```math
\mathcal N^{loc}_{preCauchy}(u;P)
=
\sum_{P^-\prec P} K(P,P^-)\, A_{P^-}\, B_P
+\mathcal L_P.
```

Here `B_P` is the child active packet factor, `A_{P^-}` is the donor/parent
source factor, and `\mathcal L_P` contains pressure normalization, cutoff,
transport leakage, and off-packet shell losses.

The legal-loss ledger is assumed in the explicit form

```math
\sum_P\int_{Q(P)}\mathcal L_P
\le
o_N(1)+\mathrm{summable\ legal\ losses}.
```

Thus the only live term is

```math
\sum_P
\left[
B_P
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right]_+.
```

## Theorem `ParentSquareEmbed.A`

Assume the legal parent-child kernel is the packet overlap kernel

```math
K(P,P^-)=\langle \chi_P,\mathcal M\phi_{P^-}\rangle,
```

where `\{\phi_{P^-}\}` and `\{\chi_P\}` are the transported parent and child
Bessel packet families on the selected same-fluid forest, and `\mathcal M` is
the bounded multiplier / Calderon-Zygmund source multiplier supplied by the
localized pre-Cauchy source decomposition.

Then

```math
\boxed{
\sum_{P\in\mathcal F_N}
\left|
\sum_{P^-\prec P}K(P,P^-)\,a_{P^-}
\right|^2
\le
C
\sum_{P^-}|a_{P^-}|^2
+o_N(1).
}
\tag{ParentSquareEmbed.A}
```

The `o_N(1)` term is absent on an exactly closed same-fluid forest and otherwise
absorbs boundary leakage from discarded terminal collars and off-family packet
tails.

## Proof

Let

```math
B:\ell^2(P^-)\to L^2,\qquad
B a=\sum_{P^-}a_{P^-}\phi_{P^-}
```

be the parent synthesis map, and let

```math
C:L^2\to \ell^2(P),\qquad
C f=(\langle \chi_P,f\rangle)_P
```

be the child analysis map.  The transported packet construction gives uniform
Bessel bounds on the same-fluid forest:

```math
\|B a\|_{L^2}\le C_B\|a\|_{\ell^2(P^-)},
\qquad
\|C f\|_{\ell^2(P)}\le C_C\|f\|_{L^2}.
```

The source multiplier is bounded on the packet-local `L^2` carrier:

```math
\|\mathcal M f\|_{L^2}\le C_M\|f\|_{L^2}.
```

The parent-to-child operator is

```math
T a
=
\left(
\sum_{P^-\prec P}
\langle \chi_P,\mathcal M\phi_{P^-}\rangle a_{P^-}
\right)_P
= C\mathcal M B a.
```

Therefore

```math
\|T a\|_{\ell^2(P)}
\le
C_C C_M C_B
\|a\|_{\ell^2(P^-)}.
```

Squaring gives `ParentSquareEmbed.A`.  The proof does not choose a bounded
number of parents; it controls the full diffuse parent cloud by the Bessel
frame structure.

## Consequence for the positive source estimate

Dropping the positive part by Cauchy gives

```math
\sum_P
\left[
B_P
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right]_+
\le
\left(\sum_P |B_P|^2\right)^{1/2}
\left(
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right|^2
\right)^{1/2}.
```

The child factor is paid by the local dissipation:

```math
\sum_P|B_P|^2\le C_{child}\sum_P D_P.
```

By `ParentSquareEmbed.A`,

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right|^2
\le
C\sum_{P^-}|A_{P^-}|^2+o_N(1).
```

Young's inequality then yields

```math
\sum_P
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+
\le
\theta\sum_P D_P
+
C_\theta\sum_{P^-}|A_{P^-}|^2
+
\mathrm{legal\ losses}
+o_N(1).
```

Thus diffuse parentage is no longer the obstruction.  The only remaining
quantity is

```math
\boxed{
\int \sum_{P^-}|A_{P^-}|^2\,dt.
}
```

## Exact hard stop

For the actual scale-normalized donor factor in the source-wall branch,

```math
\mathcal R_N(t)
:=
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2.
```

Therefore `LocalPositiveSourceCarleson.A` is reduced to the scalar reserve
theorem

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\int
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt
\le
o_N(1)+\mathrm{legal\ losses}.
}
```

Raw energy and first-moment dissipation only give

```math
\int\sum_{k>N}D_k(t)\,dt\to0,
```

which does not imply the scale-critical active-square reserve.  Short terminal
high-amplitude pulses may have small first-moment cost while keeping the square
reserve non-small.

## Route conclusion

The direct Carleson route now factors as

```math
ParentSquareEmbed.A
\quad+\quad
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

The first factor is installed by packet Bessel orthogonality.  The second factor
is not installed here and remains the exact live theorem wall for this direct
Carleson branch.
