# Selector-Weight Lower Envelope Result

## Target

The weighted direct speed branch requires a positive selector-weight lower envelope on the persistent support:

```math
w_j(x,t)\ge m_j>0
\qquad (x,t)\in\Gamma_j(t)\times I_j.
\tag{SWLE.1}
```

Together with the weighted speed estimate

```math
\|w_j u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_W\nu2^j+C_W2^{-j}\Phi(\mathcal E_D(X)),
\tag{SWLE.2}
```

this feeds the unweighted amplitude/speed gate.

## Selector plateau sufficient condition

Assume the active selector weight is a plateau weight on the persistent support:

```math
w_j(x,t)=1
\qquad (x,t)\in\Gamma_j(t)\times I_j.
\tag{SWLE.3}
```

Then `SWLE.1` holds with

```math
m_j=1.
\tag{SWLE.4}
```

More generally, if the selector construction supplies

```math
w_j(x,t)\ge m_*>0
\qquad (x,t)\in\Gamma_j(t)\times I_j,
\tag{SWLE.5}
```

with `m_*` independent of `j`, then `SWLE.1` holds with `m_j=m_*`.

## Weighted-to-unweighted conversion

Under `SWLE.1` and `SWLE.2`,

```math
|u_{coh}(x,t)|
\le
m_j^{-1}|w_j(x,t)u_{coh}(x,t)|.
\tag{SWLE.6}
```

Taking suprema gives

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
m_j^{-1}\kappa_W\nu2^j
+m_j^{-1}C_W2^{-j}\Phi(\mathcal E_D(X)).
\tag{SWLE.7}
```

Thus the unweighted amplitude gate follows whenever

```math
m_j^{-1}\kappa_W\le\kappa_U
\tag{SWLE.8}
```

and the lower-order constant is admitted into the active ledger.

## Obstruction to automatic lower envelope

A general cutoff weight can vanish at the support boundary. If the persistent support includes boundary points where `w_j=0`, then no positive lower envelope exists on the closed support.

The selector construction must therefore supply one of the following:

```text
plateau support: Gamma_j is contained in the strict interior of the weight plateau;
trimmed support: replace Gamma_j by the positive-weight core;
weighted collar theorem: keep w_j inside the collar estimate.
```

## Result

The positive lower-envelope branch closes exactly under a selector plateau or trimmed-support hypothesis:

```math
\Gamma_j(t)\subset\{x:w_j(x,t)\ge m_j\},
\qquad m_j^{-1}\kappa_W\le\kappa_U.
\tag{SWLE.9}
```

Then weighted speed control implies the amplitude/speed gate consumed by the collar closure.

## Boundary

This file supplies a conversion theorem. It also identifies the geometric burden: prove the active persistent support lies inside a positive-weight plateau, or move to a weighted collar theorem.

## Source surfaces

- `problems/navier-stokes/theorem-construction/weighted-direct-speed-mechanism-assessment-result.md`
- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`