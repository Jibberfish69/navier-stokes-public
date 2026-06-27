---
theorem_id: forward-gold-silent-source-local-increment-to-threaded-cascade-audit-20260627
status: supplied-local-increment-installed-global-packing-continues-through-fresh-frequency-transit
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh frequency flux
audits_user_supplied_note: /Users/thomasbirnie/.codex/attachments/7d3acc39-1623-409f-8306-2d27b9748d7d/pasted-text.txt
consumes:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A
  - FreshFrequencyFluxNoFreeUpcascade.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-differential-exhaustion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-weighted-paired-carrier-frequency-flux-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
effect: >-
  Confirms that the supplied silent-source normal form is already the local
  selected-density increment theorem, then routes the global half-tail work to
  the exact selected-readout differential and its fresh frequency-flux
  residence/transit split. The supplied note is consumed as local support; it
  is not promoted as the global root packing theorem.
---

# Silent source local increment to threaded cascade audit

The supplied note has the right mathematical role: it is a local source-origin
normal form for one parent-child packet.

It starts from the fact that Schur boundary data alone cannot detect every
interior pressure-Hodge source.  The silent elliptic kernel

```math
\mathcal K_Q^{sil}
:=
\{f:\ f=\mathcal L_Aw,\ w|_{\partial A_Q}=0,\ 
\partial_{\nu_A}w|_{\partial A_Q}=0\}
```

is real.  The theorem is therefore not Schur observability.  The theorem is:

```math
\mathcal K_Q^{sil}
\cap
\mathcal C_Q^{sel}
\cap
\ker\left(
\mathcal E_Q^{top\text{-}ex}
+\mathcal S_Q^{mat}
+R_Q^{legal}
\right)
=\{0\}.
\tag{1}
```

Thus a silent pressure-Hodge source is either unselected/gauge material, or it
is selected and paid by same-material top-strain exchange, material service, or
legal loss.

## 1. Local increment already installed

The local increment estimate supplied by `(1)` is

```math
|\Delta_Q\rho_{sel}|^2\mu(Q)
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\mathcal E_Q^{top\text{-}ex}
+C\mathcal S_Q^{mat}
+CR_Q^{legal}.
\tag{2}
```

This is already included in

```text
mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
```

and the source note explicitly audits the attached pasted text.  The supplied
argument should not be duplicated under a new label.

## 2. What the local theorem does and does not prove

Equation `(2)` removes the false pressure-only obstruction.  A boundary-flat
selected child is not free.

Summing `(2)` over a retained laminar tree still requires the global
selected-density square-function estimate:

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q\rho_{sel}|^2\mu(Q)
\le
C\left(
B_{Schur}(Q_0)
+E_{top\text{-}ex}(Q_0)
+S_{mat}(Q_0)
+R_{legal}(Q_0)
\right).
\tag{3}
```

The visible part is handled by parent Schur/capacity drop.  The silent selected
part is no longer a hidden elliptic kernel; it is part of the same-material
exchange/readout differential.

## 3. Connection to the current live edge

The selected readout differential exhaustion note replaces the mysterious
"unpaid birth" language by the exact material differential:

```math
da_Q
=
D_{\mathfrak U}\mathcal A_Q\,d\mathfrak U_Q
+D_\Pi\mathcal A_Q\,d\Pi_Q
+D_\chi\mathcal A_Q\,d\chi_Q.
\tag{4}
```

After substituting the material Navier-Stokes law, moving Hodge relation,
frame equations, transported collar identity, and selector equations, there is
no fourth pointwise branch:

```math
da_Q=0
\quad\Longrightarrow\quad
[da_Q]_+=0.
\tag{5}
```

So the supplied silent-source theorem is consumed by the pointwise channel
exhaustion.  The remaining problem is positive variation packing of `(4)` in
the selected critical weight.

The current carrier form is the fresh frequency-flux estimate:

```math
dA_j^{fresh,+}
\lesssim
[\Pi_{j-1\to j}^{fresh}]_+\,dt
+R_j^{legal}
+R_j^{stop/reset}.
\tag{6}
```

and the desired bound is

```math
\int_0^{T^*}
\sum_j2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt
\le
C_N(u_0)\mathcal R(P)
+R_{legal}(P)
+Stop(P).
\tag{7}
```

## 4. Residence is paid, transit is the remaining threaded branch

The residence/transit note proves that a crossing at shell \(j\) has two
possibilities.

Residence:

```math
\int_I\nu2^{2j}E_j(t)\,dt
\ge
\varepsilon
\int_I[\Pi_{j-1\to j}^{fresh}]_+\,dt.
\tag{8}
```

This branch is paid by high-shell viscous residence in the same stopped
full-exchange ledger.

Transit:

```math
\int_I\nu2^{2j}E_j(t)\,dt
<
\varepsilon
\int_I[\Pi_{j-1\to j}^{fresh}]_+\,dt.
\tag{9}
```

Then shell balance forces the incoming fresh flux to leave upward:

```math
\int_I[\Pi_{j\to j+1}^{fresh}]_+\,dt
\ge
(1-\varepsilon)
\int_I[\Pi_{j-1\to j}^{fresh}]_+\,dt
-\Delta E_j^+(I)
-R_j^{legal/stop}(I).
\tag{10}
```

Thus the transit branch is one same-material threaded cascade.  It is not a
new family of unrelated fresh births.

## 5. Threaded cascade placement

For a transit thread, there are only three non-legal outcomes.

First, the thread stays parent-predictable.  Then the exact selected-readout
differential `(4)` has no fresh increment on that branch after the parent
subtraction.  It contributes no new selected birth.

Second, the thread changes selected weight, scale window, collar, covector, or
affine endpoint state.  Then it is a stopped first-exit reset/escape event.
The installed high-weight tube theorem gives, under the parent-announced
derivative representation and bounded-overlap witness slabs,

```math
\sum_{e\subset P}
\int H_e(t)\|D_e^{fresh}(t)\|^2\,dt
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}(P).
\tag{11}
```

Third, the thread reuses a stopped core after a return.  That branch is the
stopped primitive return/BV branch already isolated in the current route.  It
is not a silent-source branch and not a Schur-observability issue.

## 6. Result

The supplied silent-source argument is consumed as the local increment theorem.
It closes the silent selected child as a zero-cost escape.

The active global packing problem is now exactly:

```text
FreshFrequencyFluxNoFreeUpcascade.A
```

with the residence branch paid and the transit branch reduced to the stopped
threaded-cascade placement:

```text
parent-predictable transit gives no fresh differential;
reset/escape transit is paid by first-exit derivative witness packing;
return transit is paid by stopped primitive return/BV.
```

This keeps the attachment in its correct role: local source-origin
classification feeding the global selected-density Carleson proof, not a
standalone global closure.
