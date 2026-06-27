---
theorem_id: forward-gold-original-scale-memory-storage-to-affine-quotient-transition-20260627
status: storage-coercivity-reduced-to-affine-quotient-transition-payment-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / original scale-memory generator
attacks_hinge:
  - OriginalScaleMemoryStorageCoercivity.A
  - DynamicSilentExchangeCommutatorCarleson.A
  - OriginalScaleMemoryGeneratorEnergyBound.A
refines_to:
  - FreshExactScaleDerivativeAbsorption.A
  - AffineQuotientTransitionPayment.A
  - StoppedNegativeReturnOrientedPayment.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-generator-energy-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-scale-memory-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-source-scale-memory-representation-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-source-witness-sparse-packing-20260627.md
  - problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
effect: >-
  Reconciles the current relay hinge with the older scale-memory/affine-quotient
  reductions. The natural interior storage only gives a signed balance law, not
  square coercivity. The lower-triangular scale-memory operator gives the actual
  split: derivative-exact output plus one weighted affine quotient mode. Therefore
  OriginalScaleMemoryStorageCoercivity.A should be attacked as FreshExactScaleDerivativeAbsorption.A
  plus AffineQuotientTransitionPayment.A, not as a broad opaque storage estimate.
---

# Original scale-memory storage to affine-quotient transition

The current live Gold hinge is

```text
OriginalScaleMemoryStorageCoercivity.A / DynamicSilentExchangeCommutatorCarleson.A.
```

The source-anchor statement asks for a parent-known storage \(M_P\) so that

```math
a\|G\|^2
\le
-\partial_\sigma M_P-\partial_tM_P
+\Theta_{orig}^{vis/ex/sil}
+R_{legal}+Stop.
\tag{1}
```

The storage-boundary note already shows the first direct attempt does not close
this: the natural source potential energy

```math
M=\langle w,L_Aw\rangle\simeq\int|\nabla_Aw|^2
\tag{2}
```

differentiates to a signed balance law, not a positive square estimate for
\(G\).  A signed pairing can cancel while \(\|G\|^2\) stays large.

The next useful step is therefore not to search for a larger version of the same
energy storage.  The scale-memory operator has already isolated the smaller
coercive object.

## 1. Scale-memory reduction leaves one generator-energy term

For a fresh increment,

```math
F_Q
=
|I_Q|^{-1}\int_{I_Q}G_Q(\sigma,t)\,d\sigma
+Err_Q^{legal},
\tag{3}
```

and the critical Cauchy weight is

```math
W_Q(t)=
{|I_Q|^2\over\int_{I_Q}a(\sigma,t)^{-1}\,d\sigma}.
\tag{4}
```

Thus

```math
W_Q\|F_Q\|^2
\le
C\int_{I_Q}a\|G_Q\|^2\,d\sigma
+CR_Q^{legal}.
\tag{5}
```

The witness-packing note closes the overlap once the \(I_Q\) are maximal and
parent-known.  Therefore the entire tent estimate reduces to

```math
\int_{\operatorname{Hist}(P)}
a(\sigma,t)\|G(\sigma,t)\|^2\,d\sigma dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{6}
```

This is the checked installed reduction.  It is not yet a proof.

## 2. The lower-triangular split of the generator energy

Write the one-sided scale primitive in logarithmic variables as

```math
F(s,t)=(\mathcal V_\kappa\widetilde Z)(s,t),
\qquad
w(s,t)=a(e^s,t).
\tag{7}
```

The lower-triangular operator identity gives the exact weighted split

```math
\int_Iw\|F\|_{L_x^2}^2\,ds
=
\int_Iw\|\partial_sS_w\|_{L_x^2}^2\,ds
+
H_w(t)\|c_F(t)\|_{L_x^2}^2,
\tag{8}
```

where

```math
H_w(t)= {|I|^2\over\int_Iw(s,t)^{-1}\,ds},
\qquad
c_F(t)=\int_{s_0}^{s_1-\kappa}\theta_\kappa(\sigma)\widetilde Z(\sigma,t)\,d\sigma.
\tag{9}
```

The first term is exact in scale.  The second term is the scale-persistent
weighted quotient.  Because \(\theta_\kappa\) is affine, \(c_F\) depends only on
the two affine scale moments of \(\widetilde Z\):

```math
c_F(t)
=
A_\kappa\int_J\widetilde Z(\sigma,t)\,d\sigma
+
B_\kappa\int_J\sigma\widetilde Z(\sigma,t)\,d\sigma.
\tag{10}
```

This is the real shrinkage: the persistent obstruction is a rank-one affine
quotient in scale, not the whole lower-prefix source.

## 3. Exact derivative absorption is a separate consumer

The derivative-exact part in `(8)` should be routed as

```text
FreshExactScaleDerivativeAbsorption.A.
```

It is the part where scale integration by parts, boundary cancellation, legal
endpoint terms, and stopped derivative/turnstile/covector/exchange payments can
act directly.  It is not the source of the half-tail.

Trying to use harmonic-weight Cauchy on the persistent quotient without this
split is circular:

```math
H_w\|c_F\|^2
\le
\int_Iw\|F\|^2\,ds
\tag{11}
```

only bounds the quotient by the full quantity being proved.  The exact split
prevents that circular move.

## 4. The surviving theorem is transition payment for the affine quotient

The affine quotient estimate is

```math
AQ(P)
:=
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{12}
```

The checked branch synthesis identifies the right payment theorem:

```text
AffineQuotientTransitionPayment.A.
```

Its statement is:

```math
AQ(P)
\le
C
\int_{\mathcal F_{rep}(P)}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{ancestry}(\mathcal A)
+
C\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}J_{crit}(Q\to Q')
+R_{legal}(P).
\tag{13}
```

The repeated-core term pays the quotient by potential record and negative scale
return.  The fresh-reset term pays the quotient by critical weighted reset
derivative, turnstile, covector, and exchange charge.

Thus the original storage/coercivity hinge now has the sharper internal form:

```text
FreshExactScaleDerivativeAbsorption.A
+
AffineQuotientTransitionPayment.A
=> OriginalScaleMemoryGeneratorEnergyBound.A.
```

## 5. Why this is a smaller theorem than storage/coercivity

`OriginalScaleMemoryStorageCoercivity.A` is broad enough to hide the old
circular move: demand a storage that controls all \(a\|G\|^2\), then define the
hard part of the storage from the selected-critical future tail.

The affine-quotient split forbids that.  It says:

```text
1. derivative-exact scale output is paid by derivative/endpoint/legal mechanisms;
2. the only persistent scale mode is the affine quotient c_F;
3. c_F must be paid by record/negative-return or by fresh reset charge from original history.
```

This is smaller than the whole generator energy theorem and larger than a
consumer Cauchy estimate.  It is exactly the remaining selected-positive
coercivity issue after dynamic-silent and selector-readout loopholes are removed.

## 6. Result

The current Gold hinge should be carried forward as:

```text
OriginalScaleMemoryStorageCoercivity.A
  reduces to
FreshExactScaleDerivativeAbsorption.A
  + AffineQuotientTransitionPayment.A.
```

The derivative-exact absorption is support/consumer work.  The live survivor is:

```text
AffineQuotientTransitionPayment.A
```

with its two branch payments:

```text
repeated core:
  StoppedPotentialRecordAverageBound.A
  + StoppedNegativeReturnOrientedPayment.A;

fresh reset:
  LogScaleResetDerivativeCarrierBound.A
  / CriticalWeightedParentChildResetCarleson.A.
```

This does not prove Gold.  It prevents the next proof pass from treating
`storage/coercivity` as an opaque magic lemma and pins the work to the exact
rank-one scale quotient that survives the lower-triangular decomposition.
