---
theorem_id: legal-residual-logscale-summability-correction-20260623
status: proof-installed-corrected-legal-residual-normal-form-for-nested-logscale-families
logical_landing_node: legal_residual_logscale_summability_correction
edge_effect: >-
  Corrects the residual summability gate after the same-material log-scale
  packet counting repair. Local L1 control with scale-neutral weights is not
  enough on a nested terminal heat-scale family: the same physical terminal
  neighborhood can be counted at infinitely many log-scales. Legal residuals on
  such a family must either have positive scale gain, telescope as storage, or
  live on a genuinely physically bounded-overlap subfamily. All scale-neutral
  critical or top-order terms must be absorbed into the prelimit clock/loss.
parents:
  - problems/navier-stokes/theorem-construction/mpp-same-material-dyadic-packet-overlap-selection-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mcp-legalresidualsummabilityonselectedterminalfamily-a-simultaneousmaterialfourbodypacketcoercivity-a-a9f387f77f.md
---

# Legal Residual Log-Scale Summability Correction

Date: 2026-06-23

## 0. Correction

The earlier residual normal form allowed terms of the form

```math
\int_{Q_{j,\ell}} f(x,t)\,dx\,dt,
\qquad
f\in L^1_{\mathrm{loc}},
\tag{LRC.1}
```

on a terminal log-scale family.  That is legal only when the physical windows
\(Q_{j,\ell}\) themselves have bounded overlap, or when the term is a
telescoping storage difference.

It is not legal on a nested terminal heat-scale family merely because
\(f\in L^1_{\mathrm{loc}}\).  Nested windows may all sit under the same terminal
point/time, and finite physical \(L^1\) mass does not imply

```math
\sum_j\int_{Q_j}f<\infty .
\tag{LRC.2}
```

The corrected residual normal form is therefore:

```math
dR^0_{j,\ell}
\lesssim
\sum_{\lambda}
r_j^{\alpha_\lambda}
\int_{Q_{j,\ell}} f_\lambda(x,t)\,dx\,dt
+
dB_{j,\ell}^{tel},
\qquad
\alpha_\lambda>0,
\tag{LRC.3}
```

for nested terminal log-scale branches, with \(f_\lambda\in L^1_{\rm loc}\).

Scale-neutral terms with \(\alpha_\lambda=0\) are allowed only in the separate
case

```math
\sum_{j,\ell}{\bf 1}_{Q_{j,\ell}}(x,t)\le K_{\rm phys},
\tag{LRC.4}
```

or when they telescope through a bounded storage \(B\).  Otherwise they are not
legal residuals.

## 1. Positive scale-gain summability

Let the terminal family be selected by the same-material log-scale overlap
lemma.  At each fixed scale \(j\), the material labels have finite multiplicity,
so after transport

```math
\sum_\ell\int_{Q_{j,\ell}} f_\lambda\,dx\,dt
\le
K_a\int_{Q_*}f_\lambda\,dx\,dt .
\tag{LRC.5}
```

If the selected log-scales are separated, then

```math
r_j=e^{-\Sigma_j}
\le
C\,2^{-j}
\tag{LRC.6}
```

after reindexing the separated tail.  Hence, for \(\alpha_\lambda>0\),

```math
\sum_{j,\ell}
r_j^{\alpha_\lambda}
\int_{Q_{j,\ell}} f_\lambda\,dx\,dt
\le
C K_a
\left(\sum_j2^{-\alpha_\lambda j}\right)
\int_{Q_*}f_\lambda\,dx\,dt
<\infty .
\tag{LRC.7}
```

This proves summability for positive-scale-gain lower-order residuals.

## 2. Scale-neutral bounded-overlap case

If `(LRC.4)` holds, then for \(\alpha_\lambda=0\),

```math
\sum_{j,\ell}\int_{Q_{j,\ell}} f_\lambda\,dx\,dt
\le
K_{\rm phys}\int_{Q_*}f_\lambda\,dx\,dt
<\infty .
\tag{LRC.8}
```

This is a different hypothesis from log-scale bounded overlap.  It cannot be
silently substituted for terminal nested packet counting.

## 3. Exclusion rule

Any residual candidate on a nested terminal log-scale family with
\(\alpha=0\), no physical bounded-overlap support, and no telescoping storage
form is not legal.  It must be moved before compactness into one of:

```math
dD_{S,m}^{rad},\qquad
dD_{Q,m}^{w},\qquad
dA_{4B,N,m},\qquad
C_{\log}d[\log(1+\mathcal P_{N,m}^{mat})]_+ .
\tag{LRC.9}
```

This keeps the full participation object intact: scale-neutral critical collar,
pressure, tower, strain, interface, or selector terms do not sit outside the
same-material clock as harmless residuals.
