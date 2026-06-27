---
theorem_id: forward-gold-fresh-native-root-upper-bound-direct-test-20260627
status: fresh-root-upper-bound-reduced-to-critical-fresh-source-tent-carleson
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh native root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - FreshNativeRootUpperBound.A
  - SelectedScaleFreshNativeRootReserve.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
refined_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-selected-scale-lower-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-spent-source-projection-nonreuse-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-log-amplification-carleson-production-target-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/one-sided-scale-memory-obstruction-note.md
---

# Fresh native root upper-bound direct test

The current hinge is `FreshNativeRootUpperBound.A`.  The selected-scale lower
edge is already isolated:

```math
\omega_Q
\le
C_N\rho_Q^{fresh}
+R_{\rm legal}(Q).
\tag{1}
```

The remaining question is whether the fresh native coordinates have a finite
root measure:

```math
\sum_{Q\subset P}\rho_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{2}
```

This note tests the direct Hilbert/Bessel proof of `(2)`.

## 1. What fresh projection gives

After spent-source projection, strict descendant reuse is removed.  For a
selected child \(Q\), write

```math
F_Q=(I-\Pi_{\rm spent(<Q)})\Delta_QZ_{\rm src}^{orig}.
\tag{3}
```

On a stopped laminar tree, the fresh pieces are orthogonal along each chain,
and sibling overlap is bounded by the retained material atlas.  Therefore the
raw Hilbert geometry gives

```math
\sum_{Q\subset P}
\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N\|Z_P\|_{\mathcal H_{\rm raw}}^2
+R_{\rm legal}(P).
\tag{4}
```

This is real progress.  It says the same native source direction cannot be
counted twice as fresh.

## 2. Why the direct proof still fails

Equation `(4)` is raw.  The root bound `(2)` is selected-critical.  In the
fresh-source language the missing weight is

```math
\rho_Q^{fresh}
\simeq
w(Q)\,\|F_Q\|_{\mathcal H_{\rm raw}}^2,
\qquad
w(Q)\sim 2^{\ell(Q)}
\tag{5}
```

up to the already paid selector/legal normalizations.

If one defines the Hilbert norm so that

```math
\|F_Q\|_{\mathcal H_{\rm crit}}^2
:=
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2,
\tag{6}
```

then `(2)` becomes a Bessel estimate in the critical norm.  But that is useful
only if \(\|Z_P\|_{\mathcal H_{\rm crit}}^2\) is finite from the original
smooth material history.  Defining \(\mathcal H_{\rm crit}\) from the future
selected tail repackages the target theorem.

Thus the direct proof stops at:

```math
\sum_Q \|F_Q\|_{\mathcal H_{\rm raw}}^2<\infty
\quad\not\Rightarrow\quad
\sum_Q w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2<\infty .
\tag{7}
```

## 3. Fresh orthogonal half-tail

The old half-tail can be made fresh.  Take orthogonal source directions
\(e_\ell\) and set

```math
\|F_\ell\|_{\mathcal H_{\rm raw}}^2
=
\nu_\ell
=
{2^{-\ell}\over \ell+1}.
\tag{8}
```

Then the raw fresh Bessel sum is finite:

```math
\sum_\ell \|F_\ell\|_{\mathcal H_{\rm raw}}^2<\infty .
\tag{9}
```

But the selected-critical fresh mass is

```math
\sum_\ell
2^\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2
=
\sum_\ell {1\over \ell+1}
=\infty .
\tag{10}
```

This model does not reuse a spent source direction.  It defeats the direct
fresh-projection proof by using infinitely many genuinely fresh raw increments
at smaller scales.

So the current obstruction is sharper than chain nonuse:

```text
fresh orthogonal source increments can still miss the selected-critical tent
weight.
```

## 4. Correct next theorem

The noncircular theorem is:

```text
CriticalFreshSourceTentCarleson.A
```

Statement: for every retained same-material root \(P\), the fresh original
source increments left after spent-source projection, silent-source normal
form, paid selector/reselection, and exchange removals satisfy the critical
tent bound

```math
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{11}
```

where \(w(Q)\) is the selected first-ratio / heat-scale weight and the left
side is built from original-history source coordinates, not from the future
selected tail.

Equivalently, prove the selector-correct martingale square-function bound

```math
\sup_{P}
{1\over\mathcal R(P)}
\sum_{Q\subset P}
\left(
\|F_Q\|_{\mathcal H_{\rm crit}}^2
+dK_{\rm sel}(Q)
+dK_{\rm ol}(Q)
\right)\mathcal R(Q)
\le
C_N(u_0)+R_{\rm legal}(P),
\tag{12}
```

with \(\mathcal H_{\rm crit}\) produced by the original pressure-visible,
silent/exchange, annular, Hodge/projector, vis/rad, and frequency-native
history.

## 5. One-sided scale-memory form

In physical scale variables, `(11)` is the fresh-source version of the
one-sided scale-memory obstruction.  The active shell is tested against a
lower-prefix material source history.  Raw same-history energy gives only the
zeroth moment; the selected theorem needs the critical lower-prefix moment:

```math
\int
a(r,t)
\left(
\int_0^rK(\ell,r)z(\ell,t)\,{d\ell\over\ell}
\right)^2
{dr\over r}\,dt
\le
C_N(u_0).
\tag{13}
```

Thus the fresh-native root theorem is not another observability, nonreuse, or
local lower-edge theorem.  It is a critical Carleson embedding for genuinely
fresh same-material source increments.

## 6. Result

`FreshNativeRootUpperBound.A` is not discharged by spent-source projection plus
ordinary Hilbert geometry.  Those inputs close reuse and prove raw Bessel
packing, but they do not supply the selected critical weight.

The next nonduplicate Gold hinge is:

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A
```

This is the exact missing gain needed to turn the fresh selected-scale lower
edge into the full selected first-ratio action bound.
