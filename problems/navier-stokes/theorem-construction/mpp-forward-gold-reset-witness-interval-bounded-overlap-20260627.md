---
theorem_id: forward-gold-reset-witness-interval-bounded-overlap-20260627
status: conditional-structural-overlap-closed-for-maximal-first-exit-slabs
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - ResetWitnessIntervalBoundedOverlap.A
  - ResetSparsePackingFromOriginalHistory.A
  - AnnounceableResetDerivativeRepresentation.A
  - AnnounceableActiveWeightResetCarleson.A
---

# Reset witness interval bounded overlap

## 1. Target

The Cauchy active-weight reduction requires witness intervals/tubes for strict
fresh resets to satisfy a stopped Carleson overlap estimate:

```math
\sum_{e\subset P}1_{W_e}(\sigma,t,x)
\le C_N+R_{legal},
\qquad W_e:=I_e\times T_e.
\tag{1}
```

Equivalently, for every nonnegative original-history density \(F\),

```math
\sum_{e\subset P}\int_{W_e}F
\le C_N\int_{\operatorname{Hist}(P)}F+CR_{legal}(P).
\tag{2}
```

## 2. Maximal first-exit witnesses

Use the stopped selector construction from the previous note.  A reset witness
for an edge \(e=Q\to Q'\) is the minimal/maximal first-exit slab between the last
scale where the parent stopped record is valid and the first scale where one
finite stopped selector inequality exits:

```math
I_e=[\sigma_{in}(e),\sigma_{out}(e)].
```

The associated material tube \(T_e\) is the retained same-material tube of \(Q\)
restricted to the child reset event.  The witness is not chosen after seeing the
future selected tail; it is the stopped first-exit slab of a parent-known score.

## 3. Along one ancestry chain

Along a single retained same-material ancestry line, maximal first-exit slabs are
pairwise disjoint in log-scale interior.  After a reset occurs at
\(\sigma_{out}(e)\), the child stopped record becomes the new parent record.
The next reset witness starts after that exit scale.  Hence, for one selector
score and one ancestry line,

```math
\sum_{e\text{ on one chain}}1_{I_e}(\sigma)\le 1.
\tag{3}
```

With finitely many stopped selector/order-lock scores, this becomes

```math
\sum_{e\text{ on one chain}}1_{I_e}(\sigma)\le C_{score}.
\tag{4}
```

## 4. Across laminar branches

Across different children of a retained parent, the material tubes are disjoint
up to legal/stop boundary overlap because the retained tree is laminar.  Thus
for fixed scale-time location, only one child branch in a laminar sibling family
can carry the same material point, modulo legal overlap:

```math
\sum_{Q'\in ch(Q)}1_{T_{Q'}}(t,x)\le 1+R_{legal}(Q).
\tag{5}
```

Combining `(4)` with laminar disjointness `(5)` gives the stopped overlap bound

```math
\sum_{e\subset P}1_{W_e}(\sigma,t,x)\le C_{score}C_{lam}+R_{legal}(P).
\tag{6}
```

Therefore `(2)` follows by integrating `(6)` against \(F\).

## 5. Sparse/Carleson form

Taking

```math
F=w\left(|\partial_\sigma Z|^2+|\operatorname{turnstile}_\sigma|^2+|\operatorname{exchange}_\sigma|^2+|\operatorname{covector}_\sigma|^2\right)
```

in `(2)` gives

```math
\sum_{e\subset P}\int_{W_e}
w\left(|\partial_\sigma Z|^2+|\operatorname{turnstile}_\sigma|^2+|\operatorname{exchange}_\sigma|^2+|\operatorname{covector}_\sigma|^2\right)
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(|\partial_\sigma Z|^2+|\operatorname{turnstile}_\sigma|^2+|\operatorname{exchange}_\sigma|^2+|\operatorname{covector}_\sigma|^2\right)
+CR_{legal}(P).
\tag{7}
```

This is exactly the sparse packing needed by the Cauchy active-weight reduction.

## 6. Failure mode

The theorem fails if reset witnesses are allowed to be arbitrary nonmaximal
future-selected intervals.  Such intervals can be nested repeatedly around one
scale point and recreate the critical half-tail overlap.  Therefore the witness
choice must be the stopped first-exit slab determined by the parent-known finite
score system.

## 7. Result

Conditional structural closure:

```math
\boxed{
\text{maximal parent-announced first-exit reset slabs}
+
\text{finite selector score family}
+
\text{laminar material tree}
\Longrightarrow
\text{bounded overlap / sparse packing}.}
```

Together with the previous selector-continuity note and the Cauchy active-weight
reduction, this proves the reset-side implication:

```math
\text{finite stopped-score first-exit resets}
\Longrightarrow
\text{AnnounceableActiveWeightResetCarleson.A}
```

modulo only the already explicit structural requirement that reset witnesses are
chosen by the stopped first-exit construction, not by future selected-tail
selection.