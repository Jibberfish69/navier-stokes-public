---
theorem_id: forward-gold-root-defect-compactness-finite-band-nonvanishing-reduction-20260627
status: finite-band-nonvanishing-proved-root-compactness-reduced-to-high-frequency-tail-charge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
audits:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-carrier-stable-compactness-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-weight-defect-compactness-tight-escape-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-original-ledger-correction-20260627.md
attacks_hinge:
  - RootDefectCarrierStableCompactness.A
  - RootDefectFiniteBandNonvanishing.A
  - RootDefectHighFrequencyTailCharge.A
  - OriginalLedgerRootDefectTightness.A
effect: >-
  Repairs the compactness step inside RootDefectCarrierStableCompactness.A.
  Tightness in one parent-fixed carrier is not enough in an infinite-dimensional
  lifted Hilbert space, since orthonormal oscillations can have unit norm and
  weak limit zero.  The nonzero-limit step is proved only after a finite-band
  projection/tower-tail split.  The finite-band piece is compact and yields a
  nonzero strong limit; the high-frequency tail must be paid by the original
  tower/radius/viscous/root-generator ledger.  Thus the root compactness theorem
  is reduced to a sharper tail-charge theorem, not to another bare weak
  compactness assertion.
---

# Root-defect compactness: finite-band nonvanishing reduction

The carrier-stable compactness note has the right global shape, but one line
needs a real compactness source.  A normalized family in one fixed lifted
Hilbert space need not have a nonzero weak limit.

The countermodel is the standard one.  In a fixed Hilbert space \(\mathcal H\),
take an orthonormal sequence \(e_n\).  Then

```math
\|e_n\|_{\mathcal H}=1,
\qquad
e_n\rightharpoonup0.
\tag{1}
```

So same-carrier tightness alone does not prove

```math
H_{e_n^-}^{1/2}D_{e_n}\rightharpoonup D_\infty\ne0.
\tag{2}
```

The root-defect proof needs the finite-band/tower split.

## 1. Compact projection split

On a parent-fixed stopped carrier, choose finite-band projections
\(\Pi_{\le M}^P\) in the lifted root Hilbert geometry and write

```math
D_e
=
\Pi_{\le M}^P D_e
+
\Pi_{>M}^P D_e.
\tag{3}
```

The proof-bearing tail theorem is:

```text
RootDefectHighFrequencyTailCharge.A.
```

Statement:

```math
\sum_{e\subset P}
\int
H_{e^-}
\|\Pi_{>M}^PD_e\|_{\mathcal H_{lift}}^2
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
\tag{4}
```

where \(\varepsilon_M\to0\), and \(d\Theta_P^{tower/root}\) is parent-known
original-history currency: radius/tower spend, viscous/tower loss,
root-generator derivative, frame/covector/turnstile, legal, and stop.  It is
not allowed to contain the produced root clocks \(dA^{wt}\) or \(dA^{conn}\) as
external payment.

## 2. Finite-band nonvanishing is elementary

Assume a normalized same-carrier bad family after paid escape has

```math
\sum_{e\subset P_n}
\int H_{e^-}\|D_e\|^2=1,
\tag{5}
```

and the original-history charge in `(4)` tends to zero.  Pick \(M\) large so
\(\varepsilon_M<1/4\).  Then `(4)` implies

```math
\sum_{e\subset P_n}
\int H_{e^-}\|\Pi_{\le M}^PD_e\|^2
\ge
{3\over4}+o_n(1).
\tag{6}
```

After selecting a stopped subchain carrying a fixed fraction of `(6)`, the
vectors \(\Pi_{\le M}^PD_e\) live in a fixed finite-dimensional root fiber, with
the parent chart and weight already fixed.  Bounded sequences in this
finite-dimensional component have strongly convergent subsequences.  Hence

```math
\Pi_{\le M}^PD_{e_n}
\to
D_{\infty,M}
\quad\text{strongly},
\qquad
D_{\infty,M}\ne0.
\tag{7}
```

Since the high-frequency tail is negligible by `(4)`, the full extracted root
defect has a nonzero same-carrier limit:

```math
D_\infty\ne0.
\tag{8}
```

This proves the nonvanishing compactness step once the tail charge `(4)` is
available.

## 3. Resulting corrected compactness theorem

The corrected form of `RootDefectCarrierStableCompactness.A` is:

```text
carrier/selector/connection escape paid
+ high active-weight tube escape paid
+ high-frequency/tower root-defect tail paid
+ finite-band nonvanishing
  -> nonzero same-carrier zero-cost root-defect limit.
```

The finite-band nonvanishing part is proved above.  The remaining mathematical
producer is the tail estimate `(4)`.

## 4. Why this is noncircular

The tail estimate must be paid by parent-known original-history quantities:

```text
radius/tower spend,
viscous/tower loss,
root-generator derivative,
frame/covector/turnstile motion,
legal loss,
stop loss.
```

It cannot be paid by the root clocks being produced:

```text
dA^{wt}, dA^{conn}.
```

With `(4)`, the rest of the compactness contradiction is the installed
zero-cost rigidity:

```math
\partial_\sigma Z_\infty
=
\operatorname{turnstile}_\infty
=
\operatorname{exchange}_\infty
=
\operatorname{covector}_\infty
=0
\quad\Longrightarrow\quad
D_\infty=0,
\tag{9}
```

contradicting `(8)`.

So this note proves the finite-band compactness piece and leaves the exact
open producer:

```text
RootDefectHighFrequencyTailCharge.A.
```

Partial, not Gold closed.
