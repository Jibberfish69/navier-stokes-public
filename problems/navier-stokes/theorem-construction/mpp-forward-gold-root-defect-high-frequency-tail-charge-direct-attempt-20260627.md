---
theorem_id: forward-gold-root-defect-high-frequency-tail-charge-direct-attempt-20260627
status: derivative-tail-paid-persistent-root-quotient-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - RootDefectHighFrequencyTailCharge.A
  - PersistentRootAffineQuotientReturnPayment.A
  - SelectedGeneratorStorageCoercivity.A
  - OriginalLedgerRootDefectTightness.A
inputs_checked:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-compactness-finite-band-nonvanishing-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-concentration-compactness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-root-geometry-compensator-direct-proof-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-generator-storage-accretive-testing-equivalence-20260627.md
effect: >-
  Attempts the high-frequency root-defect tail charge required by the corrected
  compactness theorem.  The derivative-exact, heat-resident, connection, frame,
  covector, turnstile, selector, legal, and stopped high-band pieces are paid by
  parent-known tower/root currency.  The remaining high-band obstruction is the
  persistent non-derivative affine/root quotient.  That piece is harmless only
  after a finite observable affine quotient return/payment theorem; charging it
  by its own selected-critical norm is circular.  Thus
  RootDefectHighFrequencyTailCharge.A is reduced to
  PersistentRootAffineQuotientReturnPayment.A / SelectedGeneratorStorageCoercivity.A,
  not closed.
---

# Root-defect high-frequency tail charge: direct attempt

The corrected compactness theorem asks for a parent-known estimate

```math
\sum_{e\subset P}
\int
H_{e^-}
\|\Pi_{>M}^P D_e\|_{\mathcal H_{lift}}^2
\le
\varepsilon_M
\sum_{e\subset P}
\int
H_{e^-}\|D_e\|_{\mathcal H_{lift}}^2
+
C_M\int_{\operatorname{Hist}(P)}d\Theta_P^{tower/root}
+
R_{\rm legal}(P)
+
Stop(P),
\tag{1}
```

with \(\varepsilon_M\to0\).  The right side must be parent-known
original-history currency.  It may not use the root clocks being produced.

The root defect splits into the pieces already isolated in the direct root
geometry attempt:

```math
D_e
=
D_e^{der}
+
D_e^{conn/frame/cov/turn}
+
D_e^{sel/collar/legal/stop}
+
D_e^{pers}.
\tag{2}
```

The first three classes can be paid without circularity.

## 1. Derivative-exact high-band tail

For a derivative-exact component,

```math
D_e^{der}
=
\mathcal T_e(\partial_{\sigma,t}Z,\partial_{\sigma,t}A,
\partial_{\sigma,t}G,\partial_{\sigma,t}\phi,\ldots),
\tag{3}
```

Bernstein/tower tail gives, for one parent-fixed stopped carrier,

```math
\|\Pi_{>M}^P D_e^{der}\|_{\mathcal H_{lift}}^2
\lesssim
2^{-2M}
\|D_e^{der}\|_{\mathcal H_{lift}^{+1}}^2.
\tag{4}
```

After summing with \(H_{e^-}\), the \(+1\) rung is part of the parent-known
tower/root service:

```math
\sum_{e\subset P}\int H_{e^-}
\|\Pi_{>M}^P D_e^{der}\|^2
\le
C2^{-2M}
\int_{\operatorname{Hist}(P)}d\Theta_P^{tower/root}
+
R_{\rm legal}(P).
\tag{5}
```

So derivative-exact high-band leakage is not the live obstruction.

## 2. Heat-resident high-band tail

If a high-band component of spatial frequency \(2^k\), \(k>M\), remains over a
heat-time comparable interval, the viscous/tower part pays it:

```math
\int_{I_e}
H_{e^-}\|\Pi_kD_e\|^2
\lesssim
2^{-2k}
\int_{I_e}
H_{e^-}\nu 2^{2k}\|\Pi_kD_e\|^2
\tag{6}
```

and summing \(k>M\) gives the same \(2^{-2M}\) tail gain.  If the component
does not remain for heat time, it is a stopped first-exit / selector-reset /
legal-transit piece, and the installed high-weight escape note charges it only
under the announced stopped derivative representation.  That is acceptable as
support, not a new producer.

## 3. Connection, frame, covector, turnstile, selector, legal, stop

These pieces have named parent-known motion terms:

```math
d\Theta_P^{tower/root}
\supset
d\Theta_P^{frame}
+
d\Theta_P^{covector}
+
d\Theta_P^{turnstile}
+
d\Theta_P^{selector/collar}
+
dStop_P.
\tag{7}
```

Their high-band tails are controlled either by the derivative/tower estimate
above or by legal/stop loss.  They do not create the critical obstruction.

## 4. Persistent non-derivative affine/root quotient

The surviving term is

```math
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})
\mathcal C_\theta[Z_e^{fresh}].
\tag{8}
```

This is the piece already isolated in the concentration-compactness note.  It
is not a derivative of a parent-known current, so `(4)` is unavailable unless
one imports an extra selected-critical norm of \(Z_e^{fresh}\).  But

```math
\int_{I_e} H_{e^-}\|Z_e^{fresh}\|^2
\tag{9}
```

is exactly the selected-critical root bound being proved.  Using `(9)` as input
would charge the tail to the produced root clock and is circular.

There are only two noncircular exits.

First, the persistent quotient is genuinely finite observable root geometry.
Then there is \(M_0(N)\) such that

```math
\Pi_{>M}^PD_e^{pers}=0
\qquad(M\ge M_0(N)),
\tag{10}
```

up to connection/selector/legal errors already listed above.  This is precisely
the finite observable affine quotient return/payment theorem.

Second, the persistent quotient contains non-affine high-frequency material
content.  Then that content must be paid by the original-ledger root-generator
storage:

```math
H_P^\ast\|\mathcal G_P^{root}\|^2\,d\sigma dt
+
dA_P^{sel/chart}
\le
-D_{\sigma,t}M_P
+
d\Theta_P^{orig}
+
dR_{{\rm legal},P}
+
dStop_P.
\tag{11}
```

This is `SelectedGeneratorStorageCoercivity.A` / `MaterialAdjointAccretiveTestingData.A`,
not a consequence of bare compactness.

## 5. Result of the attempt

The high-frequency tail theorem closes for all derivative-exact and
heat-resident high-band pieces:

```math
\sum_{e\subset P}\int H_{e^-}
\|\Pi_{>M}^P(D_e-D_e^{pers})\|^2
\le
C2^{-2M}
\int_{\operatorname{Hist}(P)}d\Theta_P^{tower/root}
+
R_{\rm legal}(P)
+
Stop(P).
\tag{12}
```

The remaining estimate is exactly

```math
\sum_{e\subset P}\int H_{e^-}
\|\Pi_{>M}^PD_e^{pers}\|^2
\le
\varepsilon_M
\sum_{e\subset P}\int H_{e^-}\|D_e\|^2
+
C_M\int_{\operatorname{Hist}(P)}d\Theta_P^{orig}
+
R_{\rm legal}(P)
+
Stop(P).
\tag{13}
```

The proof of `(13)` is equivalent to the persistent root affine quotient
payment / original-ledger generator storage theorem.  Therefore the live edge
after this direct attempt is:

```text
PersistentRootAffineQuotientReturnPayment.A
/ SelectedGeneratorStorageCoercivity.A
/ MaterialAdjointAccretiveTestingData.A
```

in the exact noncircular form `(11)`.

Partial, not Gold closed.
