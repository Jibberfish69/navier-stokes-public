# Selector Plateau Containment On Fixed Collar Support Result

## Target

The preferred weighted branch needs

```math
w_j=1
\qquad\text{on the fixed collar support.}
\tag{SPC.1}
```

The fixed collar support is the enlargement of the active low-pass collar region:

```math
\mathcal C^{collar}_{i,j}
:=
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})^{+M}.
\tag{SPC.2}
```

## Plateau selector hypothesis

Assume the selector weight `w_j` is constructed with an inner plateau set `\mathcal P_j` and a collar buffer:

```math
w_j=1
\qquad\text{on }\mathcal P_j,
\tag{SPC.3}
```

and

```math
\mathcal C^{collar}_{i,j}
\subseteq
\mathcal P_j.
\tag{SPC.4}
```

Then the fixed collar support lies entirely inside the plateau.

## Theorem SPC

Under `SPC.3`--`SPC.4`, plateau containment holds:

```math
w_j(x,t)=1
\qquad (x,t)\in\mathcal C^{collar}_{i,j}\times I_j.
\tag{SPC.5}
```

Consequently,

```math
w_j\ge1
\qquad\text{on }\mathcal C^{collar}_{i,j},
\tag{SPC.6}
```

and

```math
(1-w_j)u_{coh}=0
\qquad\text{on }\mathcal C^{collar}_{i,j}.
\tag{SPC.7}
```

Thus the same geometric containment supplies both weighted branch closures:

```text
positive lower envelope;
zero weighted residual on the collar support.
```

### Proof

The inclusion `SPC.4` places every point of the fixed collar support inside the
plateau set. By `SPC.3`, `w_j=1` on that plateau. This gives `SPC.5`. The
lower-envelope statement `SPC.6` and residual vanishing `SPC.7` are the same
plateau identity restricted to the collar support. ∎

## Construction criterion

A sufficient construction rule is:

```math
\operatorname{dist}\left(
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh}),
\mathcal P_j^c
\right)
\ge
C_M2^{-j},
\tag{SPC.8}
```

where `C_M2^{-j}` is the fixed Littlewood-Paley collar radius. Then `SPC.4` holds.

## Boundary

This is a containment theorem. The remaining geometric task is to construct `w_j` and `\mathcal P_j` so that the active collar support has the buffer `SPC.8`. If that buffer fails, the route falls back to the residual-smallness branch.

## Source surfaces

- `problems/navier-stokes/theorem-construction/weighted-branch-decision-result.md`
- `problems/navier-stokes/theorem-construction/selector-weight-lower-envelope-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-supplier-result.md`
