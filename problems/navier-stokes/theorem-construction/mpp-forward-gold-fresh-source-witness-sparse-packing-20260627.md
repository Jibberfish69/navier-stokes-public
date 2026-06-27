---
theorem_id: forward-gold-fresh-source-witness-sparse-packing-20260627
status: conditional-sparse-packing-closed-for-maximal-parent-known-witnesses
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source producer
attacks_hinge:
  - FreshSourceWitnessSparsePacking.A
  - CriticalFreshSourceTentCarleson.A
---

# Fresh source witness sparse packing

## 1. Target

The scale-memory reduction needs the witness intervals/tubes to satisfy

```math
\sum_{Q\subset P}1_{I_Q\times T_Q}(\sigma,t,x)\le C_N+R_{legal}(P).
\tag{1}
```

This note proves `(1)` under the parent-known maximal witness construction.

## 2. Witness construction

For each retained fresh increment, choose \(I_Q\) as the maximal parent-known scale slab on which the stopped carrier and spent-source projection are fixed up to legal/stop changes and whose endpoint difference generates the fresh increment:

```math
F_Q=Y_Q(\sigma_1)-Y_Q(\sigma_0)+Err_Q^{legal},
\qquad I_Q=[\sigma_0,\sigma_1].
\tag{2}
```

The material tube \(T_Q\) is the retained same-material tube of the corresponding laminar packet.

## 3. Packing on one ancestry

Along a single retained material ancestry, maximal slabs for one stopped score/projection state are disjoint in log-scale interior.  Once a slab ends, either the state changes, a stop/legal event occurs, or the next slab begins after the endpoint.  Therefore for one score/projection channel,

```math
\sum_{Q\text{ on one ancestry}}1_{I_Q}(\sigma)\le1.
\tag{3}
```

With finitely many stopped score/projection channels,

```math
\sum_{Q\text{ on one ancestry}}1_{I_Q}(\sigma)\le C_{score}.
\tag{4}
```

## 4. Packing across branches

Across siblings in the retained laminar tree, material tubes are disjoint except for legal/stop overlap:

```math
\sum_{Q'\in ch(Q)}1_{T_{Q'}}(t,x)\le1+R_{legal}(Q)+Stop(Q).
\tag{5}
```

Combining `(4)` and `(5)` gives the desired witness packing `(1)`.

Equivalently, for every nonnegative original-history density \(F\),

```math
\sum_{Q\subset P}\int_{I_Q\times T_Q}F
\le C_N\int_{\operatorname{Hist}(P)}F+CR_{legal}(P)+CStop(P).
\tag{6}
```

## 5. Failure mode

Sparse packing fails if \(I_Q\) is chosen after reading descendants.  Arbitrary nonmaximal intervals can be nested around one scale point infinitely often.  Such a choice recreates the critical half-tail and is not part of the parent-known scale-memory construction.

## 6. Result

`FreshSourceWitnessSparsePacking.A` is proved conditionally under:

```text
maximal parent-known scale-memory witnesses + finite stopped channel family + laminar retained material tree.
```

The remaining theorem is the original generator energy bound:

```text
OriginalScaleMemoryGeneratorEnergyBound.A.
```