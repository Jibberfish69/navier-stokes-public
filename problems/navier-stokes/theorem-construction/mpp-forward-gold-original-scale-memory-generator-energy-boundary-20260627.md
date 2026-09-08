---
theorem_id: forward-gold-original-scale-memory-generator-energy-boundary-20260627
status: direct-generator-energy-bound-open-storage-coercivity-needed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source producer
attacks_hinge:
  - OriginalScaleMemoryGeneratorEnergyBound.A
  - CriticalFreshSourceTentCarleson.A
  - OriginalHistoryDynamicSilentSelectedAmplification.A
---

# Original scale-memory generator energy: boundary

## 1. Target

The scale-memory reduction and sparse-packing notes reduce the critical fresh-source tent estimate to the generator energy bound

```math
\int_{\operatorname{Hist}(P)}a(\sigma,t)\|G(\sigma,t)\|^2\,d\sigma dt
\le C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{1}
```

Here \(G\) contains original scale derivative, projection motion, turnstile motion, exchange motion, covector motion, and the dynamic source commutator terms.

## 2. Why previous local notes do not prove it

The earlier reductions prove:

```text
fresh increment = scale average of G,
witness intervals pack sparsely,
critical weight is the Cauchy dual of the averaging measure.
```

These imply the critical tent bound if `(1)` is known.  They do not prove `(1)`.

Thus `(1)` is the remaining noncircular producer.  It cannot be imported from the full material clock if that clock is the conclusion being proved.

## 3. Required storage/coercivity estimate

A noncircular proof would need an original scale-memory storage \(M_P(\sigma,t)\) such that

```math
a\|G\|^2
\le -\partial_\sigma M_P
-\partial_t M_P
+\Theta_{orig}^{vis/ex/sil}
+R_{legal}+Stop,
\tag{2}
```

with

```math
M_P\ge0,
\qquad
\sup_{\sigma,t}M_P(\sigma,t)\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{3}
```

and

```math
\int_{\operatorname{Hist}(P)}\Theta_{orig}^{vis/ex/sil}
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{4}
```

Then integration of `(2)` would give `(1)`.

## 4. Dynamic silent/exchange form

For pressure-Helmholtz--Leray silent material, the desired storage must include the dynamic commutator identity

```math
D_tf=\mathcal L_A(D_tw)+[D_t,\mathcal L_A]w.
\tag{5}
```

A selected silent component that persists through the material history with no commutator, exchange, turnstile, covector, or legal contribution should be forced to vanish. Quantitatively, this asks for

```math
a\|\Pi_{sel}^{ex}[D_t,\mathcal L_A]w\|^2
\le -D_t M_{sil}+\Theta_{ex/cov/turn}+R_{legal}+Stop.
\tag{6}
```

The same storage must also cover visible and exchange fresh components.

## 5. Exact missing theorem

The remaining theorem is

```text
OriginalScaleMemoryStorageCoercivity.A
```

or equivalently

```text
DynamicSilentExchangeCommutatorCarleson.A
```

Statement:

There exists a parent-known original-history storage \(M_P\) for the stopped fresh-source generator such that `(2)`--`(4)` hold. Equivalently, selected fresh visible/silent/exchange scale-memory generator energy is Carleson from original material persistence, dynamic commutator/exchange/covector/turnstile channels, and legal/stop losses.

## 6. Result

`OriginalScaleMemoryGeneratorEnergyBound.A` is not proved by the Cauchy reduction or sparse packing.  It is the true remaining producer.

The live hinge is now sharpened to:

```math
\boxed{\text{OriginalScaleMemoryStorageCoercivity.A / DynamicSilentExchangeCommutatorCarleson.A}.}
```

Once that theorem is proved, the already written chain gives:

```text
scale-memory generator energy
-> critical fresh-source tent Carleson
-> stopped selected log-amplification Carleson
-> stopped square-packing relay
-> parent drop
-> finite full material clock.
```