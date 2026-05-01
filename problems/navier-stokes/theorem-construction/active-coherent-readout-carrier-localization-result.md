# Active Coherent Readout Carrier Localization Result

## Target

The controlled proper-core route needs the active coherent readout class to satisfy

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v)
\subseteq
\Gamma_j(t)
\qquad
\text{for every }v\in\mathcal A_{j,i}(t).
\tag{ACR.1}
```

Here `\Gamma_j(t)` is the persistent coherent carrier support at scale `j`.

## Definition of carrier-localized active class

Define the active class by carrier localization:

```math
\mathcal A_{j,i}^{car}(t)
:=
\left\{
 v:\operatorname{supp}(\widetilde Q_iP_{\le j}v)
 \subseteq \Gamma_j(t)
\right\}.
\tag{ACR.2}
```

Then `ACR.1` holds tautologically for every `v\in\mathcal A_{j,i}^{car}(t)`.

## Theorem ACR: carrier-localized class supplies proper core

Assume the collar is tested only against the carrier-localized active class `\mathcal A_{j,i}^{car}(t)`. Then

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v)
\subseteq
\Gamma_j(t)
\qquad
\text{for all active }v.
\tag{ACR.3}
```

Consequently, the minimal global collar core satisfies

```math
\mathcal K_{j,i}^{min}(t)
\subseteq
\Gamma_j(t)^{+M}.
\tag{ACR.4}
```

If `\Gamma_j(t)^{+M}` is a controlled proper support, then the global selector plateau core is controlled and proper.

### Proof

The containment `ACR.3` is the defining property of `\mathcal A_{j,i}^{car}(t)`. Taking the closed union over all active readouts and enlarging by the fixed collar width gives `ACR.4`. ∎

## Obstruction for unrestricted active class

If the active class is instead all coherent readouts in the carrier space, the support localization statement may fail. Smooth low-pass readouts can have global tails, and active test readouts can move their localized support across the ambient domain unless the class definition fixes carrier support.

Thus unrestricted active readouts yield the full minimal core in the worst case:

```math
\mathcal K_{j,i}^{min}(t)=\mathbb R^3.
\tag{ACR.5}
```

This gives only the algebraic full-space selector `w_j\equiv1` and loses the geometric localization of the plateau route.

## Result

Carrier localization of active coherent readouts is discharged when the active class is defined as the carrier-localized class `\mathcal A_{j,i}^{car}(t)`. For any broader active class, the route must prove support localization as an additional theorem.

## Boundary

The global selector theorem therefore depends on a modeling choice:

```text
use carrier-localized active tests, which gives a proper global selector;
```

or

```text
allow unrestricted coherent tests, which may force the full-space selector.
```

The local fixed-collar selector remains valid for individual collar supports in either case.

## Source surfaces

- `problems/navier-stokes/theorem-construction/controlled-proper-core-or-carrier-localization-result.md`
- `problems/navier-stokes/theorem-construction/universal-active-support-localization-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`