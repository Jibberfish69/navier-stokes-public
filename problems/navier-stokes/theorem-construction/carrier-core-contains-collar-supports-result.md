# Carrier Core Contains Collar Supports Result

## Target

The global selector plateau route needs a carrier-level active core `\mathcal K_j(t)`, independent of `v_{coh}`, satisfying

```math
K_{i,j}(t)
\subseteq
\mathcal K_j(t)
\qquad\text{for every active }v_{coh},
\tag{CCC.1}
```

where

```math
K_{i,j}(t)
:=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))^{+M}.
\tag{CCC.2}
```

## Universal carrier-core hypothesis

Assume the active coherent readouts satisfy a uniform support localization statement:

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))
\subseteq
\mathcal K_j^0(t)
\qquad\text{for every active }v_{coh}.
\tag{CCC.3}
```

Define the carrier core with collar buffer

```math
\mathcal K_j(t):=(\mathcal K_j^0(t))^{+M}.
\tag{CCC.4}
```

Then `CCC.1` holds.

### Proof

From `CCC.3`, the unexpanded support lies inside `\mathcal K_j^0(t)`. Taking the fixed collar enlargement of both sides gives

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))^{+M}
\subseteq
(\mathcal K_j^0(t))^{+M}
=
\mathcal K_j(t).
```

This is `CCC.1`. ∎

## Obstruction without a universal support statement

If the active class allows arbitrary coherent test readouts whose localized support can move outside any fixed `\mathcal K_j^0(t)`, then no `v_{coh}`-independent carrier core can satisfy `CCC.1`.

Indeed, for any proposed core `\mathcal K_j(t)`, choose an active readout with

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}(t))
\not\subseteq
\mathcal K_j(t)^{-M}.
\tag{CCC.5}
```

Then the fixed collar enlargement is not contained in `\mathcal K_j(t)`, contradicting `CCC.1`.

## Result

Carrier-core containment is equivalent to a universal active-support localization theorem for the class of coherent readouts used in the collar. The global selector construction is therefore conditional on one of:

```text
all active coherent readouts are supported inside a common carrier core;
```

or

```text
the selector is allowed to be local to each fixed collar/test readout.
```

## Boundary

The current repo supplies the local fixed-collar selector construction. The global selector independent of `v_{coh}` requires the universal support localization statement `CCC.3` as an additional geometric theorem.

## Source surfaces

- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
- `problems/navier-stokes/theorem-construction/carrier-selector-structural-audit.md`