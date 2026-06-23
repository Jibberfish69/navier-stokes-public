# Legal Residual Summability On The Selected Terminal Family

## Claim

Let the selected terminal family be a heat-scale dyadic family of transported
material windows/collars.  For genuinely physically bounded-overlap subfamilies,
local \(L^1\) residuals may be summed directly.  For nested terminal log-scale
families, the residual must instead have positive scale gain or telescope as
storage.  Let the prelimit master balance be written after all top-order,
critical, scale-neutral nested, and potentially non-summable positive terms have
been absorbed into either strict loss or the prelimit positive clock.

Then the remaining legal residuals satisfy

```math
\sup_m\int dR_{legal,m}<\infty,
```

and every weak-star limit `dR_{4B,N}` satisfies

```math
\int dR_{4B,N}<\infty.
```

## Residual normal form

A term is legal only if it has one of the following forms after undoing the heat-scale normalization:

```math
dR_{legal,m}\lesssim
\int_{Q_m^{collar}}
\Bigl(
 r_m^{\alpha_0}|u|^2
+r_m^{\alpha_1}|u|^3
+r_m^{\alpha_2}|\nabla u|^2
+r_m^{\alpha_3}|p|^{3/2}
\Bigr)\,dx\,dt
```

with `alpha_j>0` on nested terminal log-scale branches, plus harmless
endpoint/bounded-storage differences.  Terms with `alpha_j=0` are legal only on
genuinely physically bounded-overlap subfamilies or when they telescope through
bounded storage.  Terms with negative scaling power, top-order material
derivatives, critical vorticity-stretching/strain action, uncompensated
pressure/current defects, or scale-neutral nested collar mass are not legal
residuals. They belong to the prelimit positive clock or strict loss before
compactness.

## Proof

For the physically bounded-overlap case, the selected terminal windows are
heat-scale annuli/collars with bounded overlap. Therefore for any nonnegative
locally integrable density `f`,

```math
\sum_m\int_{Q_m^{collar}} f\,dx\,dt
\le C_{overlap}\int_{Q_*} f\,dx\,dt,
```

where `Q_*` is one fixed finite physical spacetime neighborhood of the terminal point.

For Leray/suitable smooth prelimit solutions on a finite time interval,

```math
u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x,
```

hence

```math
|u|^2\in L^\infty_tL^1_x,
\qquad
|\nabla u|^2\in L^1_{t,x},
\qquad
u\in L^{10/3}_{t,x} \supset L^3_{loc,t,x}.
```

The pressure admits the standard local pressure decomposition and satisfies

```math
p\in L^{5/3}_{loc,t,x}\subset L^{3/2}_{loc,t,x}.
```

Thus

```math
\int_{Q_*}
\bigl(|u|^2+|u|^3+|\nabla u|^2+|p|^{3/2}\bigr)\,dx\,dt<\infty.
```

For nested terminal log-scale families, use the corrected scale-gain estimate.
At each fixed separated scale the material labels have finite multiplicity, and
for `alpha_j>0`,

```math
\sum_m r_m^{alpha_j}\int_{Q_m^{collar}} f\,dx\,dt
\le
C\left(\sum_m r_m^{alpha_j}\right)\int_{Q_*}f\,dx\,dt<\infty.
```

Thus finite physical overlap handles the scale-neutral case, and positive scale
gain handles the nested terminal case. Under exactly those alternatives,

```math
\sum_m \int dR_{legal,m}<\infty.
```

Equivalently,

```math
\sup_M\sum_{m\le M}\int dR_{legal,m}<\infty.
```

Hence the legal residual measures are uniformly finite. By weak-star compactness of finite Radon measures, a subsequence converges:

```math
dR_{legal,m}\rightharpoonup^* dR_{4B,N},
```

and lower semicontinuity of total mass gives

```math
\int dR_{4B,N}\le\liminf_m\int dR_{legal,m}<\infty.
```

## Exclusion rule

If a residual candidate cannot be bounded by the corrected subcritical/local-energy
normal form above, then it is not legal. It must be absorbed before the limit
into one of

```math
dD_{S,m}^{rad},\quad dD_{Q,m}^{w},\quad d[\log(1+\mathcal P_{N,m}^{mat})]_+,\quad dA_{4B,N,m}.
```

This exclusion prevents a hidden nonsummable positive term from remaining on the right side.

## Conclusion

The legal residual summability gate closes under the corrected residual normal
form: physical bounded overlap for scale-neutral terms, positive scale gain for
nested terminal log-scale terms, or telescoping bounded storage. Together with
relaxed object matching, this completes the limit-passage gates for the prelimit
master balance only when that normal form is enforced: any term not satisfying
it must be part of the prelimit clock/loss, not `dR_{legal}`.
