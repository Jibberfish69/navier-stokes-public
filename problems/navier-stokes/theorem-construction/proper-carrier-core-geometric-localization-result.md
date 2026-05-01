# Proper Carrier-Core Geometric Localization Result

## Target

The universal support core is

```math
\mathcal K_{j,i}^{min,0}(t)
:=
\overline{\bigcup_{v\in\mathcal V_{j,i}(t)}
\operatorname{supp}(\widetilde Q_iP_{\le j}v)}.
\tag{PCC.1}
```

A global selector has geometric localization exactly when this minimal core is controlled and proper.

## Sufficient carrier-localization hypothesis

Assume the active coherent readout class is subordinate to a persistent carrier core `\mathfrak C_j(t)`:

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v)
\subseteq
\mathfrak C_j(t)
\qquad
\text{for every }v\in\mathcal V_{j,i}(t).
\tag{PCC.2}
```

Assume also that `\mathfrak C_j(t)` has a controlled fixed collar and remains proper:

```math
\mathfrak C_j(t)^{+M+L2^{-j}}
\subsetneq
\Omega
\tag{PCC.3}
```

on the ambient spatial region `\Omega`.

Then

```math
\mathcal K_{j,i}^{min}(t)
\subseteq
\mathfrak C_j(t)^{+M},
\tag{PCC.4}
```

and the plateau set

```math
\mathcal P_j(t):=\mathfrak C_j(t)^{+M+L2^{-j}}
\tag{PCC.5}
```

is a proper carrier-level plateau containing every active fixed collar support.

## Proof

From `PCC.2`, the union in `PCC.1` is contained in `\mathfrak C_j(t)`. Taking closure and the fixed `+M` enlargement gives `PCC.4`. The additional `L2^{-j}` buffer defines the plateau `PCC.5`. Properness follows from `PCC.3`. ∎

## Obstruction

If

```math
\mathcal K_{j,i}^{min}(t)=\Omega,
\tag{PCC.6}
```

then every global core containing all active collar supports equals the full ambient region up to closure. The selector `w_j\equiv1` still gives algebraic weighted closure, while geometric localization disappears.

## Result

The proper carrier-core theorem is closed under the carrier-localization hypothesis `PCC.2` plus proper-buffer condition `PCC.3`. It is blocked for a geometrically localized global selector when the minimal active-support core fills the ambient region.

## Boundary

The next supplier, if a global localized selector is required, is the active-readout subordination theorem `PCC.2` from the persistent coherent carrier geometry.

## Source surfaces

- `problems/navier-stokes/theorem-construction/universal-active-support-localization-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`
- `problems/navier-stokes/theorem-construction/carrier-core-contains-collar-supports-result.md`