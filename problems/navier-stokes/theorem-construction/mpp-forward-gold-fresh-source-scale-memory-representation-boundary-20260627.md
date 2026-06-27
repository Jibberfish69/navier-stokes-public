---
theorem_id: forward-gold-fresh-source-scale-memory-representation-boundary-20260627
status: conditional-representation-closed-for-parent-known-ac-stopped-carrier
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source producer
attacks_hinge:
  - FreshSourceScaleMemoryRepresentation.A
  - CriticalFreshSourceTentCarleson.A
---

# Fresh source scale-memory representation

## 1. Target

For a retained stopped root \(P\), the fresh source increment is

```math
F_Q=(I-\Pi_{spent(<Q)})\Delta_Q Z_P^{orig}.
\tag{1}
```

The critical Cauchy reduction needs a parent-known interval \(I_Q=[\sigma_0,\sigma_1]\) and generator \(G_Q\) such that

```math
F_Q=|I_Q|^{-1}\int_{I_Q}G_Q(\sigma)\,d\sigma+Err_Q^{legal}.
\tag{2}
```

## 2. Representation under stopped absolute continuity

Assume the stopped carrier \(Z_P^{orig}(\sigma)\) is absolutely continuous along the same-material log-scale history and the spent-source projection \(\Pi_{spent(<Q)}(\sigma)\) is parent-known and piecewise absolutely continuous on \(I_Q\).  Define

```math
Y_Q(\sigma)=(I-\Pi_{spent(<Q)}(\sigma))Z_P^{orig}(\sigma).
\tag{3}
```

Then

```math
F_Q=Y_Q(\sigma_1)-Y_Q(\sigma_0)+Err_Q^{legal}.
\tag{4}
```

By the fundamental theorem of calculus,

```math
F_Q=\int_{I_Q}\partial_\sigma Y_Q(\sigma)\,d\sigma+Err_Q^{legal}.
\tag{5}
```

and

```math
\partial_\sigma Y_Q
=(I-\Pi_{spent})\partial_\sigma Z_P^{orig}-(\partial_\sigma\Pi_{spent})Z_P^{orig}.
\tag{6}
```

The first term is the original scale derivative.  The second term is projection/stratum motion; it is exactly a turnstile, exchange, covector, or legal/stop term depending on how the stopped selector changes.

Thus set

```math
G_Q=(I-\Pi_{spent})\partial_\sigma Z_P^{orig}-(\partial_\sigma\Pi_{spent})Z_P^{orig}.
\tag{7}
```

After normalizing the interval convention, `(2)` follows.

## 3. Failure mode

The representation is not automatic from the word fresh.  It fails if \(F_Q\) is selected after child readout and is not the endpoint difference of a parent-known stopped carrier coordinate.  It also fails if the spent projection jumps without being charged as turnstile/exchange/covector/legal loss.

Therefore the representation is noncircular only under this clause:

```text
fresh increment = parent-known endpoint difference of an absolutely continuous stopped carrier after spent-projection removal.
```

## 4. Result

`FreshSourceScaleMemoryRepresentation.A` is closed conditionally under stopped absolute continuity and parent-known spent projection.  The remaining producer tasks are:

```text
FreshSourceWitnessSparsePacking.A
OriginalScaleMemoryGeneratorEnergyBound.A
```

These must prove that the intervals \(I_Q\) overlap sparsely and that the generator \(G_Q\) has finite original-history energy.