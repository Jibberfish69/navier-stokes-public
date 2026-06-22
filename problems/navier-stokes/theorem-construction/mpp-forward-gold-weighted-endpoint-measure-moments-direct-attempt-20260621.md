---
theorem_id: forward-gold-weighted-endpoint-measure-moments-direct-attempt-20260621
status: direct-attempt-fails-finite-measure-routing-does-not-give-hardy-moment
logical_landing_node: weighted_endpoint_measure_moments_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-endpoint-trace-lp-producer-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-compactness-collar-stabilization-solution-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
---

# Weighted Endpoint Measure Moments Direct Attempt

Date: 2026-06-21

## 0. Target

The Hardy endpoint producer requires, for some \(\alpha>0\),

```math
\boxed{
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_{j,m}(s)<\infty
}
\tag{WEM.1}
```

for each endpoint measure

```math
\Lambda_j\in
\{\Lambda_{legal},\Lambda_{sgn},\Lambda_{sel},\Lambda_{term},\Lambda_{geom}\}.
```

This is stronger than finite mass.

## 1. Finite measure routing is insufficient

The installed route often proves only

```math
\sup_m\Lambda_{j,m}((-1,0])<\infty.
\tag{WEM.2}
```

But the endpoint pulse measure

```math
d\Lambda_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)\,ds,
\qquad \tau_m\downarrow0,
```

satisfies `(WEM.2)` with total mass \(a\), while

```math
\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_m(s)
={a\over1-\alpha}\tau_m^{-\alpha}\to\infty.
```

So finite legal/signed/selector/terminal/geometry routing does not produce a Hardy moment.

## 2. What would prove the target

Each endpoint measure must obey one of the following stronger forms.

### Density form

There exists \(p_j>1\) such that

```math
\Lambda_{j,m}=\lambda_{j,m}(s)\,ds,
\qquad
\sup_m\|\lambda_{j,m}\|_{L_s^{p_j}(-1,0)}<\infty.
\tag{WEM.3}
```

Then Hölder gives `(WEM.1)` for

```math
0<\alpha<1-{1\over p_j}.
```

### Explicit Hardy form

The measure is singular or mixed, but the weighted moment is proved directly:

```math
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_{j,m}(s)<\infty.
\tag{WEM.4}
```

### Endpoint exclusion form

The measure has a terminal atom/near-atom exclusion modulus:

```math
\lim_{\theta\downarrow0}\limsup_m\Lambda_{j,m}((-\theta,0])=0,
```

which is enough for no-jump but weaker than a full Hardy moment.

## 3. Channel-by-channel status

### Legal measure

`legal` currently means allowed collar, cutoff, tail, endpoint, and admissibility residue. Its ordinary status is finite/summable. A Hardy moment requires a terminal weighted legal policy. This is not installed by the current legal definition.

### Selector/collar measure

The selector/collar stabilization theorem gives stabilization or visible legal/collar loss. It does not provide an endpoint Hardy moment for infinitely many small selector/collar variations unless the variation measure has an explicit weighted terminal modulus.

### Signed/donor measure

Finite signed-saturation donor graphs are paid by retained partners and legal exits. Infinite terminal Zeno donor chains remain exactly the case where signed measure can concentrate at the endpoint. A Hardy moment is not produced without `NoFreeTerminalZenoDonorChain.A` in weighted form.

### Terminal trace measure

Terminal trace atom routing identifies and accounts for a terminal atom. The Hardy moment rules out such an atom. Current routing is a consumer/classifier, not a weighted producer.

### Geometry measure

Body-IV geometry losses are visible as geometry/collar/Field loss. A Hardy moment requires the geometry loss density to be uniformly `L_s^p` or to satisfy a weighted terminal action bound. The current geometry route gives visibility, not the weighted terminal moment.

## 4. Result

`WeightedEndpointMeasureMoments.A` is not produced by current finite-measure routing.

The exact failed implication is

```math
\sup_m\Lambda_{j,m}((-1,0])<\infty
\quad\not\Rightarrow\quad
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_{j,m}<\infty.
```

The gold-only theorem needed is a strengthened endpoint policy:

```math
\boxed{
\texttt{WeightedLegalSelectorSignedGeometryEndpointPolicy.A}}
```

with statement: every endpoint measure in the full packet is either absolutely continuous with an `L_s^p`, `p>1`, density on the retained terminal family, or carries an explicit Hardy moment.

Without that policy, the Hardy/no-jump route remains open even after the smooth trace term `[H_m]_+` is controlled.