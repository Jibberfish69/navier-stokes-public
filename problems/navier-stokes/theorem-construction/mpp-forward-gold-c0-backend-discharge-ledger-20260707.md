---
theorem_id: forward-gold-c0-backend-discharge-ledger-20260707
status: backend-discharge-ledger-partial-not-mpp-closure
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 backend / frozen frontier handoff
authorship: Codex, 2026-07-07.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-FROZEN-FRONTIER-STATE-20260706.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-f5-assembly-scope-audit-20260706.md
completion_truth: >-
  Backend ledger only. It records what the strict overlap-charge route would
  discharge after the overlap charge is accepted as the same strict
  participation payment used in c_0. It proves the retained-row weighted
  first-moment consumer calculation from c_0>0. It does not discharge the F1
  actual-NS lift, does not execute Chapter 10, does not assemble F5, and does
  not claim MPP closure.
---

# c_0 backend discharge ledger

## 1. Imported F2 result

The current c_0 note reduces the remaining zero-floor object to the strict
overlap-charge lemma and the atomization accounting. The payment is not a new
detector: it is the existing strict participation bill

```math
\mathsf P(K)
\simeq
\nu\int_K\phi_K|\nabla E_a|^2
+\nu\int_{\partial_{\rm part}K}|E_a|^2
+\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}(K),
\tag{BACK.1}
```

with \(E_a=S(u-a)\) and \(a\in\mathfrak A\) the affine Vieillefosse jet.
The adjacent overlap charge is a restriction of this same payment, and the
stopping-time atomization has bounded overlap. Therefore the c_0 note proves,
inside the strict participation atom class,

```math
\mathsf P(\mathcal T)
\ge
c_{\rm acc}\mathsf S(\mathcal T),
\qquad
c_{\rm acc}>0.
\tag{BACK.2}
```

Equivalently,

```math
c_0
=
\inf_{\mathcal T}
\frac{\mathsf P(\mathcal T)}{\mathsf S(\mathcal T)}
\ge
c_{\rm acc}>0.
\tag{BACK.3}
```

This discharges F2 only in the strict-participation currency: the same
pressure-viscous payment must be the one consumed by the frozen frontier, and
Chapter 10 must certify the resulting constants in its worksheet currency.

## 2. Retained-row crossing consumer

The frozen frontier states that, on a retained same-packet row with
compensators zero or routed and \(c_0>0\), the weighted first moment follows
from the geometric crossing:

```math
w_j=2^j w_0,
\qquad
G_{j+1}\le \frac{1-c_0}{2}G_j.
\tag{BACK.4}
```

Iterating gives

```math
G_j
\le
\left(\frac{1-c_0}{2}\right)^jG_0.
\tag{BACK.5}
```

Hence

```math
w_jG_j
\le
w_0G_0(1-c_0)^j.
\tag{BACK.6}
```

The weighted first-moment tail is therefore finite and vanishes at infinity:

```math
\sum_{j\ge L}w_jG_j
\le
\frac{w_0G_0}{c_0}(1-c_0)^L
\longrightarrow0.
\tag{BACK.7}
```

Thus F2, once installed as (BACK.3), removes the retained-row weighted
first-moment obstruction. This pays only the retained row whose compensators
have already been zeroed or routed. Non-retained residues still need their
typed weighted route, SRP moment readout, or Pack/Part/Field consumer.

## 3. F1 state after F2

F2 does not automatically discharge F1. The frozen frontier says the
finite-chain packet/window subrow is closed, but the full F1 actual-NS lift
remains pending the actual-NS population interface.

The remaining F1 burden is still one of:

```math
\text{UniformCenteredPacketTightness}
+\text{financed-source-floor scope guard,}
\tag{BACK.8}
```

or the phase-sweep route, or a typed route-out of the bad-cone/cancellation
histories into already priced parking, return, debt, tax, finite-band
capacity, or Chapter-10 rows. The new c_0 floor can finance the retained
crossing after the actual row exists; it does not by itself construct the
actual-NS predator-cone population row.

## 4. F3 state after F2

The frozen frontier records F3 producers as closed in the current frozen state:
chronological energy queue, pressure near/far allocation, two-coin cell
pricing, P1 chain, P2 rent/compensator consolidation, and empty carry family.

This ledger does not reopen F3. It uses F3 only as an already-installed actual
solution ledger for retained rows. If a later backend step tries to spend F3 on
non-retained residue, it must cite the exact F3 clause or route the residue
through the weighted first-moment / SRP / Pack-Part-Field consumer named in the
frozen frontier.

## 5. F4 and Chapter 10

F4 is not automatic from (BACK.3). Chapter 10 is the interval certification
surface for constants, identities, fractions, and closed forms. The new input
from c_0 is a positive constant \(c_{\rm acc}\), but the worksheet still must
certify that this constant enters the currently live product/seed packet rather
than a superseded row.

The F4 handoff from this ledger is:

```math
\text{insert }c_{\rm acc}\text{ into the retained-row crossing packet and
verify the surviving F4 seed/product inequalities in Chapter 10.}
\tag{BACK.9}
```

No interval value or product pass is claimed here.

## 6. F5

F5 is assembly, not a hidden analytic theorem. It starts only after the rows it
consumes are paid, certified, or routed. The current prerequisites remain:

1. F1 actual-NS / pass-tail / finite-row interfaces.
2. F4 / Chapter-10 seed-product packet.
3. W0-A selected same-fluid handoff production.
4. W0-B surviving lineage suppliers or typed route-outs.
5. Manuscript chapter gates in their current, non-superseded form.

This ledger supplies a possible F2-to-retained-row bridge. It does not assemble
F5.

## 7. Current backend status

The immediate backend consequence of the overlap-charge work is:

```math
\text{strict overlap charge}
\Rightarrow
c_0>0\text{ in the strict participation bill}
\Rightarrow
\text{retained-row weighted first moment by (BACK.7).}
\tag{BACK.10}
```

The proof remains open at:

```math
\text{F1 actual-NS lift}
+\text{F4/Chapter-10 constants}
+\text{surviving W0/F5 assembly gates}.
\tag{BACK.11}
```

So the back-half has begun: F2 now has a concrete consumer calculation, but the
full frozen sequence is not complete.
