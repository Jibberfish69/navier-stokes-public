---
theorem_id: forward-gold-c0-backend-discharge-ledger-20260707
status: conditional-backend-discharge-ledger-partial-not-mpp-closure
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 backend / frozen frontier handoff
authorship: Codex, 2026-07-07.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-causal-lag-commutator-sign-target-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-aligned-critical-record-atom-transverse-hodge-coercivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-axisymmetric-plateau-turnoff-sublemma-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-hodge-hardy-endpoint-lemma-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-FROZEN-FRONTIER-STATE-20260706.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-f5-assembly-scope-audit-20260706.md
completion_truth: >-
  Backend ledger only. The live c_0 note now marks the affine-mismatch route as
  insufficient and keeps the overlap/atomization accounting conditional on a
  genuine F2 floor. The current synchronized F2 route is the aligned zero-bill
  same-field Liouville/UCP exclusion plus strict-atom accounting, not a
  magnitude/coercivity-by-rate estimate. This ledger proves only the retained-row
  weighted first-moment consumer calculation from an assumed
  c_0>0. It does not prove c_0>0, does not discharge the F1 actual-NS lift, does
  not execute Chapter 10, does not assemble F5, and does not claim MPP closure.
---

# c_0 backend discharge ledger

## 1. Conditional F2 import

The current c_0 notes do not install F2. They record a conditional accounting
route: if the aligned zero-bill retained survivor is excluded by the same-field
Liouville/UCP theorem, and every resulting payment is admitted to the existing
strict participation bill,

```math
\mathsf P(K)
\simeq
\nu\int_K\phi_K|\nabla E_a|^2
+\nu\int_{\partial_{\rm part}K}|E_a|^2
+\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}(K),
\tag{BACK.1}
```

with \(E_a=S(u-a)\) and \(a\in\mathfrak A\) the affine Vieillefosse jet.
The adjacent overlap charge would be a restriction of this same payment, and
the stopping-time atomization has bounded overlap. Therefore the backend import
needed from F2 is the still-conditional statement

```math
\mathsf P(\mathcal T)
\ge
c_{\rm acc}\mathsf S(\mathcal T),
\qquad
c_{\rm acc}>0.
\tag{BACK.2}
```

Equivalently, once that still-missing non-affine charge theorem is proved,

```math
c_0
=
\inf_{\mathcal T}
\frac{\mathsf P(\mathcal T)}{\mathsf S(\mathcal T)}
\ge
c_{\rm acc}>0.
\tag{BACK.3}
```

The affine amplitude-mismatch argument does not supply (BACK.2). It only
identifies the scaling tension. F2 remains open until the zero-bill aligned
atom is ruled out in the same pressure-viscous/participation currency and
Chapter 10 certifies the resulting constants in its worksheet currency.

## 1.1 Proved F2 subcase: fixed axisymmetric plateau turn-off

The axisymmetric plateau sublemma proves a genuine local payer in one fixed
class. For a no-swirl \(l=2\) collar

```math
u=A(r)Dx+B(r)(x\cdot Dx)x
\tag{BACK.3a}
```

with an exact inner affine plateau, fixed normalized annular geometry, and outer
turn-off, the exact \(P_4\)-free equations force

```math
\rho=\frac{r^2B}{A}\equiv0,
\qquad
\tau=\frac{rA'}A\equiv0,
\tag{BACK.3b}
```

so the field remains affine and cannot turn off. Therefore that fixed class has
a positive pressure-viscous floor:

```math
\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a)
\ge
c_{\rm ax,plat}\mathsf S(u).
\tag{BACK.3c}
```

This is the same \(\mathsf P\) currency as (BACK.1), not a new detector. It
does not install F2 because it assumes exact plateau, axisymmetry, fixed
geometry, and compactness bounds. The live F2 residue is:

```math
\text{approximate/no-plateau turn-off}
+\text{ long log-spread same-affine chains}
+\text{ non-axisymmetric hiding}
+\text{ uniform atomization without service loss.}
\tag{BACK.3d}
```

## 1.2 Proved F2 ingredient: log-scale endpoint inequality

The corrected long-chain bridge also has one scalar ingredient now proved. For
the log-scale amplitude \(a(\rho)\) in the same-affine channel, the operator

```math
L=\partial_\rho-2
\tag{BACK.3e}
```

satisfies the endpoint estimate

```math
\int_I |a|^2\,d\rho
\le
C_{\rm HH}
\left(
|a(\rho_+)|^2
+
\int_I |La|^2\,d\rho
\right),
\tag{BACK.3f}
```

with \(C_{\rm HH}\) independent of the log-chain length. Multiplying by the
fixed \(|A|^2\) gives the same estimate for the affine Vieillefosse channel.

This closes the scalar Hodge-Hardy step only. It does not prove that \(La\) is
owned by the pressure-viscous participation bill, and it does not charge the
endpoint kernel \(a(\rho_+)\). The live long-chain F2 residue is now sharper:

```math
\text{same-field spherical Hodge payment for }La
+\text{ parent-owned endpoint kernel}
+\text{ channel extraction without service loss}
+\text{ atomization without double-counting.}
\tag{BACK.3g}
```

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

Thus an installed F2 floor, once proved as (BACK.3), removes the retained-row
weighted first-moment obstruction. This pays only the retained row whose
compensators have already been zeroed or routed. Non-retained residues still
need their typed weighted route, SRP moment readout, or Pack/Part/Field
consumer.

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
capacity, or Chapter-10 rows. The conditional c_0 floor can finance the
retained crossing after the actual row exists; it does not by itself construct
the actual-NS predator-cone population row.

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
surface for constants, identities, fractions, and closed forms. If F2 is later
proved, the new input from c_0 is a positive constant \(c_{\rm acc}\), but the
worksheet still must certify that this constant enters the currently live
product/seed packet rather than a superseded row.

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

This ledger supplies the conditional F2-to-retained-row bridge. It does not
assemble F5.

## 7. Current backend status

The immediate backend consequence is conditional:

```math
\text{genuine non-affine strict overlap charge}
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

So the back-half has begun in the precise sense that an assumed F2 floor now has
a concrete consumer calculation. The full frozen sequence is not complete, and
F2 itself remains open until the aligned zero-bill Liouville/UCP exclusion and
strict-atom accounting are proved.
