# MPP MSC.BadAC Same-Scale Import Audit Note

## Status

Theorem-facing import audit.

This note tests whether the existing same-scale spill technology supplies the
new mixed-shell bad-set target:

```math
MSC.BadAC:
\quad
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)+\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt.
```

It does not. The same-scale notes close different spill packets or retain a
coefficient term; none gives absolute continuity of the mixed bilinear
dissipation measure on the spill-coefficient bad set.

## Candidate 1: Local Tail-Energy Spill

`tail-energy-spill-reduction-lemma.md` proves a local `4 -> 1` spill estimate
under the already-obtained exact-solution gradient bound

```math
K_T:=\sup_{0\le t<T}\|\nabla u(t)\|_2<\infty.
```

Its conclusion is a pointwise absorption of a tail-energy spill packet:

```math
|\langle \mathcal S_N[u],P_{\ge N}u\rangle|
\le
C_MK_T2^{-N/2}Q_N(t).
```

This is not an `OriginalSmoothData` supplier for `MSC.BadAC`: the hypothesis
`K_T<\infty` is already a continuation-grade enstrophy bound on the terminal
interval. It is the same strength as the `QBound.A` route that conditionally
closes `MSC.Spill.Close`.

## Candidate 2: Gradient Spill Reduction

`gradient-spill-reduction-lemma.md` proves the fixed-threshold threshold-spill
estimate

```math
\sum_{j\ge N}|SP_j(t)|
\le
C_{\varepsilon,M,\nu}\Theta_N^\sharp(t)E_N(t)
+\varepsilon\nu D_N(t).
```

This is useful in the fixed-threshold gradient cascade interface, but it keeps a
coefficient term:

```math
\Theta_N^\sharp(t)E_N(t).
```

The `MSC.BadAC` target asks for a measure-domination theorem for
`\mathfrak B_N^\sigma(t)dt` on the set where the analogous coefficient is large.
A coefficient-bearing spill estimate is not such a domination theorem.

## Candidate 3: Same-Scale Family Lift

`same-scale-family-lift-lemma.md` proves a finite-family lift:

```math
SS\text{-edge}\Longrightarrow UB+MS.
```

The lift itself is exact finite summation. But its input is the coefficient-free
edge-family theorem `(SS\text{-}edge)`

```math
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a\nu\int_0^TD_N(t)\,dt
+C_{a,*}2^{-2\delta N}.
```

`same-scale-multiplier-stability-program.md` records that this coefficient-free
theorem is not installed; the available same-scale estimate is
the coefficient-bearing edge estimate `(SS^\sharp\text{-}edge)`.

Therefore the same-scale lift cannot be imported as a proof of `MSC.BadAC`.

## Candidate 4: Weak Same-Scale Coefficient Inclusion

The weak same-scale route includes its coefficient term in a different weighted
carrier inside the signed continuous-scale branch. That is a branch-local
coefficient inclusion. It does not say:

```math
\mathfrak B_N^\sigma(t)dt
\ll
dt
```

uniformly on spill-bad sets, nor does it provide `(MSC.BadAC)`.

## Conclusion

The existing same-scale technology cannot close `MSC.BadAC` without importing
one of the following extra inputs:

```math
QBound.A,
\qquad
SS\text{-edge},
\qquad
\text{or a direct mixed-measure domination theorem.}
```

`QBound.A` is continuation-grade, `SS\text{-}edge` is not installed, and the direct
mixed-measure domination theorem is exactly `MSC.BadAC`.

Thus the import attempt returns to the same active primitive:

```math
OriginalSmoothData\Longrightarrow MSC.BadAC.
```
