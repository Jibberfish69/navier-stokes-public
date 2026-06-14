# MPP ScaleCriticalTreeCarleson.A Bellman Reserve Attempt

## Status

Bounded direct attempt after
`mpp-parent-square-embed-and-scalecritical-reserve-reduction-20260505.md`.

The diffuse-parent square embedding is installed there as `ParentSquareEmbed.A`.
This note tests whether `ScaleCriticalTreeCarleson.A` can be proved by the
tree-Bellman / telescoping mechanism proposed for Chunk 1.

It does not close the reserve.  It records the exact mathematical break:
current installed inputs control first-moment dissipation and finite-tree donor
telescoping, but they do not control the scale-critical active-square reserve.

## Target

The remaining direct theorem object is:

```math
\boxed{ScaleCriticalTreeCarleson.A}
```

This is the donor/tree presentation of the theorem that rules out the scalar
heat-window active-square pulse for the actual localized Navier-Stokes source
carrier. Its concrete reserve is:

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\int_I
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt
\le
o_N(1)+Loss_{legal}.
}
```

In the direct Carleson route it is the exact donor factor left after
`ParentSquareEmbed.A`:

```math
\sum_{P^-}|A_{P^-}|^2
:=
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell
\right)^2.
```

## Bellman Candidate

The natural candidate is a scale-tail reserve

```math
\mathcal B_N(t)
:=
\sum_{k>N}\omega_k E_k(t)
+
\sum_{k>N}\Omega_k(t),
```

where the second component must charge the upper active tail

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
```

To prove `ScaleCriticalTreeCarleson.A` by telescoping, one would need

```math
\sum_{k>N}2^kT_k(t)^2
\le
-{d\over dt}\mathcal B_N(t)
+
\theta\sum_{k>N}D_k(t)
+
Loss_{legal}(t)
\tag{B.1}
```

with endpoint values of `\mathcal B_N` bounded by original smooth tail data and
legal losses.

The first energy part can only spend the installed first-moment dissipation:

```math
\int_I\sum_{k>N}D_k(t)\,dt\to0.
```

Thus the only place where the square reserve can live is `\Omega_k(t)`.
But any `\Omega_k` whose endpoints are already controlled by the installed
energy/tail ledgers is at most a first-moment or cumulative-tail reserve.  It
does not produce a signed derivative with the scale-critical square density
`2^kT_k^2`.

Equivalently, a successful `\Omega_k` would have to be a new active-window
Carleson functional.  That is exactly the theorem being tested, not an
installed input.

## Scalar Countermodel To The Installed Inequalities

The failure is already visible at the scalar ledger level.  Let `I_m` be
disjoint intervals accumulating at a terminal endpoint, set

```math
A_m:=2^{-2m},
\qquad
h_m:=2^mA_m^2=2^{-3m},
```

and put one high-shell pulse on `I_m`:

```math
D_{m+5}(t):={A_m\over h_m}
\quad\text{for }t\in I_m,
\qquad
D_\ell(t)=0
\quad\text{otherwise.}
```

Then the first-moment tail is finite and vanishes:

```math
\int\sum_{\ell>N}D_\ell(t)\,dt
=
\sum_{m>N-5}A_m
\longrightarrow0.
```

But the scale-critical reserve has at least the `k=m` contribution:

```math
\int_{I_m}
2^m
\left(
\sum_{\ell>m+4}D_\ell(t)
\right)^2dt
\ge
2^m
\left({A_m\over h_m}\right)^2h_m
=1.
```

Therefore

```math
\int
\sum_{k>N}2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt
\not\to0
```

even though the first-moment tail tends to zero.  This is not asserted as a
Navier-Stokes solution.  It is a countermodel to the available scalar ledgers:
finite first-moment dissipation, shrinking heat windows, and endpoint Zeno
time accumulation do not imply the active-square donor reserve.

## Exact Break In The Bellman Route

The desired telescoping inequality `(B.1)` has no legal source for the term

```math
2^kT_k(t)^2.
```

Finite-tree donor balance supplies local cancellation:

```math
LocalDonorBalance.A
```

and controls non-Zeno entrance leaves by original smooth tails.  On the terminal
Zeno branch, however, every candidate Bellman functional faces the same choice:

1. If its endpoint values are controlled by installed energy/tail ledgers, its
   derivative can only pay first-moment or already-installed cumulative-tail
   quantities, not the active-square reserve.
2. If its derivative pays `2^kT_k^2`, then its endpoint size already contains a
   scale-critical active-window Carleson reserve, which is precisely
   `ScaleCriticalTreeCarleson.A`.

So the Bellman construction is circular unless an independent theorem supplies
one of the following:

```math
ActiveShellAmplitudeGain.A,
\qquad
SquareSource^{norm}.A,
\qquad
ScaleNormalizedBranchReserve.A,
\qquad
ZenoSourceResidueRigidity.A.
```

## Consequence For Chunk 1

The direct route now has the following honest state:

```math
ParentSquareEmbed.A
\quad\text{installed,}
```

but

```math
ScaleCriticalTreeCarleson.A
\quad\text{is not proved by the tree-Bellman reserve from installed inputs.}
```

Thus

```math
ParentSquareEmbed.A
+
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
```

remains a valid conditional route, while the missing theorem is still exactly
the scale-critical donor reserve or the alternate Zeno rigidity package.
