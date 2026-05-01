# Controlled Proper-Core Or Carrier Localization Result

## Target

The universal active-support localization theorem reduced the global selector problem to the proper-core condition

```math
\mathcal K_{j,i}^{min}(t)
\subsetneq \mathbb R^3
\quad\text{with controlled fixed }2^{-j}\text{ collar size.}
\tag{CPC.1}
```

A sufficient structural statement is carrier localization of active coherent readouts:

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v)
\subseteq
\Gamma_j(t)
\qquad
\text{for every }v\in\mathcal A_{j,i}(t).
\tag{CPC.2}
```

## Proper-core theorem under carrier localization

Assume `CPC.2`, and assume the persistent carrier support has controlled collar size:

```math
\Gamma_j(t)^{+M}
\subsetneq \mathbb R^3.
\tag{CPC.3}
```

Then the minimal global collar core satisfies

```math
\mathcal K_{j,i}^{min}(t)
\subseteq
\Gamma_j(t)^{+M}
\subsetneq
\mathbb R^3.
\tag{CPC.4}
```

Thus the controlled proper-core condition `CPC.1` holds.

### Proof

By carrier localization `CPC.2`, each localized active support lies inside `\Gamma_j(t)`. The closed union over all active readouts lies inside `\Gamma_j(t)`. Enlarging by the fixed collar width gives

```math
\mathcal K_{j,i}^{min}(t)
\subseteq
\Gamma_j(t)^{+M}.
```

The properness assumption `CPC.3` then gives `CPC.4`. ∎

## Obstruction without carrier localization

If active coherent readouts may occupy arbitrary regions of the ambient domain, then the minimal core can fill the whole space:

```math
\mathcal K_{j,i}^{min}(t)=\mathbb R^3.
\tag{CPC.5}
```

In that case the global plateau selector is only the algebraic full-space selector

```math
w_j\equiv1,
\tag{CPC.6}
```

which closes the weighted algebra but supplies no geometric localization gain.

## Result

The controlled proper-core condition is equivalent, for this route, to a carrier-localization theorem for the active coherent readout class plus properness of the persistent carrier support.

The global selector branch has two outcomes:

```text
carrier-localized active class -> proper global plateau selector;
free-moving active class -> full-space selector only, no localization gain.
```

## Boundary

The remaining geometric theorem is `CPC.2`: active coherent readouts used by the collar must be localized to the persistent carrier support `\Gamma_j(t)`. Without that support restriction, the global selector route has no nontrivial geometric content.

## Source surfaces

- `problems/navier-stokes/theorem-construction/universal-active-support-localization-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`
- `problems/navier-stokes/theorem-construction/carrier-core-contains-collar-supports-result.md`