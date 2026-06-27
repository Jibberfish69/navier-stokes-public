---
theorem_id: forward-gold-fresh-overrun-tail-ui-nested-core-reduction-20260627
status: overrun-payment-sharpens-to-same-carrier-tail-ui-or-terminal-atom-consumption-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh selected overrun carrier
logical_landing_node: fresh_same_carrier_identity_and_selected_overrun_payment
refines_hinge:
  - FreshSameCarrierIdentityAndSelectedOverrunPayment.A
  - FreshSelectedCoefficientOverrunPayment.A
  - SameCarrierTailUI.A
  - SameCarrierNestedCoreTightness.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-to-same-carrier-overrun-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-coefficient-overrun-critical-factor-ui-bridge-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-production-clause-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-vs-nested-core-tightness-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-step-primitive-square-wave-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-plane-split-source-curve-consumption-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-heat-scale-pulse-cm-pack-part-field-consumption-20260620.md
edge_effect: >-
  Once the fresh same-carrier identity is separated, the overrun-payment side
  has a smaller common target: same-carrier tail uniform integrability, or the
  equivalent fixed-chain nested-core tightness / no terminal atom statement, on
  the actual fresh selected overrun carrier. Critical-density, CKN,
  source-square, no-waste, square saturation, and profile routes are suppliers
  only when they imply this same-carrier tail UI.
downstream_consequence: >-
  Failure of the overrun tail UI is not a fourth forward-gold branch. It is a
  nonzero terminal source-curve atom / terminal step primitive. After
  same-witness CM admission and uniform service certification, that atom is
  consumed by the installed Part/Field face theorem; before admission it
  remains the exact forward-gold endpoint obstruction.
---

# Fresh Overrun Tail UI / Nested-Core Reduction

## Status

This note does not prove `FreshSelectedCoefficientOverrunPayment.A`. It
sharpens what that payment must mean after the fresh same-carrier identity has
been separated.

The previous relay note reduced the source-square/endpoint branch to

```math
\text{FreshSameCarrierIdentity.A}
+
\text{FreshSelectedCoefficientOverrunPayment.A}.
\tag{FOT.1}
```

The identity part is still open. This note works only on the overrun side of
`(FOT.1)`, under the conditional assumption that the actual fresh selected
carrier has already been identified.

## 1. Overrun carrier

On a selected fresh heat-scale packet, write the same-carrier overrun source as

```math
a_{j,K}^{fresh,over}(s)
=
C_{LP}r_j^{1/2}
\int_{\Omega_{j,K}^{fresh,over}(T+r_j^2s)}
|w_j|^2\alpha_j^+\,dx,
\qquad -1\le s\le0,
\tag{FOT.2}
```

where

```math
\Omega_{j,K}^{fresh,over}
=
\Omega_j^{fresh}
\cap
\{\alpha_j^+>K\nu r_j^{-2}\}.
\tag{FOT.3}
```

In normalized variables this is the same-layer product

```math
\Sigma_j^+|W_j|^2,
\qquad
\Sigma_j^+>K\nu.
\tag{FOT.4}
```

The installed Holder consumer gives

```math
\int_E\Sigma_j^+|W_j|^2
\le
\left(\int_E(\Sigma_j^+)^{5/2}\right)^{2/5}
\left(\int_E|W_j|^{10/3}\right)^{3/5}.
\tag{FOT.5}
```

Thus same-layer tail depletion of one critical factor plus a uniform bound on
the other factor pays endpoint control of the overrun source. Uniform critical
bounds for both factors do not pay it, because both factors can concentrate on
the same terminal strip.

## 2. Exact common production target

The common target behind the possible overrun suppliers is same-carrier tail
uniform integrability of `(FOT.2)`:

```math
\boxed{
\lim_{L\to\infty}\sup_j
\int_{\{s:a_{j,K}^{fresh,over}(s)>L\}}
a_{j,K}^{fresh,over}(s)\,ds
=0.
}
\tag{FOT.6}
```

Call this `FreshOverrunSameCarrierTailUI.A`.

It implies endpoint UI by the standard splitting estimate: for every
`L>0` and `0<theta<1`,

```math
\int_{-\theta}^{0}a_{j,K}^{fresh,over}(s)\,ds
\le
L\theta
+
\int_{\{a_{j,K}^{fresh,over}>L\}}
a_{j,K}^{fresh,over}(s)\,ds.
\tag{FOT.7}
```

Therefore `(FOT.6)` gives

```math
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}a_{j,K}^{fresh,over}(s)\,ds=0.
\tag{FOT.8}
```

This is the endpoint payment needed by the selected overrun branch.

## 3. Supplier hierarchy

The following are not separate endpoint targets. They are sufficient suppliers
for `(FOT.6)` only when they act on the actual fresh overrun carrier:

```math
\begin{gathered}
\text{same-overrun-layer critical-strain terminal tail depletion},\\
\text{same-overrun-layer velocity-critical terminal tail depletion},\\
\text{strict exponent slack on one critical factor},\\
\text{same-carrier source-square/product control},\\
\text{same-carrier Orlicz or }p>1\text{ control},\\
\text{strict no-waste with an unweighted action carrier},\\
\text{terminal signed saturation plus no-free Zeno donor-chain control},\\
\text{profile rigidity forbidding the terminal overrun source step.}
\end{gathered}
\tag{FOT.9}
```

Critical-density and CKN notes prove exact consumer criteria: if the
unweighted same-carrier critical density or same-layer terminal-tail depletion
is produced, then `(FOT.6)` follows. They do not produce that budget from the
current Navier-Stokes inputs.

Source-square/no-waste has the same status. The bounded-coefficient branch is
already paid by the source-square parent tail after same-carrier identity, but
the selected overrun branch remains unpaid unless a same-carrier theorem
controls `(FOT.2)`.

## 4. Nested-core version

For fixed-center retained recurrence, the endpoint target can be stated as
same-carrier nested-core tightness. Let `mu_j^{fresh,over}` be the same-carrier
measures associated to `(FOT.2)` on normalized terminal cylinders, and let

```math
A(R)=\mu^{fresh,over}(Q_R),
\qquad
Q_R=B_R\times[-R^2,0].
\tag{FOT.10}
```

The minimal fixed-chain target is

```math
\boxed{
A(R)\to0\quad\text{as}\quad R\downarrow0.
}
\tag{FOT.11}
```

Call this `FreshOverrunSameCarrierNestedCoreTightness.A`.

Fixed annular-share lower bounds are stronger than this and are not required
unless a reverse-doubling/descent theorem is being proved. The overrun branch
only needs no terminal atom on the actual selected carrier, not a fixed
fraction of mass lost at every annulus.

## 5. Failure normal form

Failure of endpoint UI / tail UI produces a terminal atom in the selected time
marginal:

```math
\neg(FOT.8)
\Longrightarrow
\bar\mu^{fresh,over}(\{0\})>0.
\tag{FOT.12}
```

On a point-core chain, this is failure of nested-core tightness:

```math
\neg\text{FreshOverrunSameCarrierNestedCoreTightness.A}
\Longrightarrow
\mu^{fresh,over}(\{(0,0)\})>0.
\tag{FOT.13}
```

More generally, the terminal plane split says that a diffuse terminal-plane
mass and a point-core mass are two spatial presentations of the same selected
terminal time-marginal atom. The source-curve consumer sees the time atom in
both cases.

The terminal source-step normal form gives the profile picture. If

```math
a_j(s)=\tau_j^{-1}{\bf 1}_{(-\tau_j,0]}(s),
\qquad \tau_j\downarrow0,
\tag{FOT.14}
```

then finite `L^1_s` mass persists, every endpoint modulus fails, and the
cumulative source primitive converges to a Heaviside step at `s=0`. The
Fourier square-wave derivative bill is exactly the missing source-square /
unweighted critical-action cost.

## 6. CM-facing failure landing

The terminal atom is not a forward-gold proof of smoothness. It is the exact
failure of the forward overrun payment.

After same-witness CM admission and uniform service certification, the same
terminal atom is consumed by the installed Part/Field face theorem:

```math
\text{fresh selected terminal atom}
+
\text{same-witness uniform service certification}
\Longrightarrow
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{FOT.15}
```

If no positive same-fluid carrier or original participation record remains,
the Pack face may fail first. When the source-participation record remains,
the natural landing is Part before Field.

This is a CM pass-or-exit reading, not an overrun payment. Forward Gold still
needs `(FOT.6)`, `(FOT.11)`, or one of the same-carrier suppliers in `(FOT.9)`.

## 7. Current next hinge

The sharper forward-Gold hinge is:

```text
FreshSameCarrierIdentityAndOverrunTailUI.A
```

Statement:

First prove `FreshSameCarrierIdentity.A` for the actual lower fresh source and
upper active queue. Once the carrier is identified, prove
`FreshOverrunSameCarrierTailUI.A`, equivalently same-carrier endpoint UI or
nested-core tightness, for the selected overrun source `(FOT.2)`.

In formula form, the overrun target is

```math
\lim_{L\to\infty}\sup_j
\int_{\{a_{j,K}^{fresh,over}>L\}}
a_{j,K}^{fresh,over}(s)\,ds=0,
\tag{FOT.16}
```

or the nested-core equivalent `(FOT.11)`, on the actual selected carrier.

The exact failure-side statement is:

```math
\neg\text{FreshOverrunSameCarrierTailUI.A}
\Longrightarrow
\text{fresh selected terminal atom / terminal step primitive},
\tag{FOT.17}
```

which becomes a CM Part/Field face failure only after same-witness admission
and uniform service certification.

## 8. Result

This work unit narrows the overrun branch but does not close it. The live
producer is no longer broad no-waste, broad CKN, or fixed annular share. Those
are supplier languages. The exact overrun target is same-carrier tail UI /
nested-core tightness on the actual fresh selected overrun carrier, with the
terminal atom / source-step primitive as the exact unresolved failure.