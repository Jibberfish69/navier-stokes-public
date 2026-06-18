# MPP Retained Field-Exit Source/Receiver Reduction

## Status

Theorem-facing continuation of the first CM-exit packet reduction.

Purpose: push the retained Field branch as far as the installed packet route
actually proves, after a selected surface has already been legally sorted into
the Field row, without turning the argument into a surface catalog.

## Setup

Work on a retained terminal same-fluid family issued from a seed window where
`Field_{N,r_0,Q_0}` holds.  Assume the `Pack` and `Part` slots have not already
broken at the witness depth.  The first-exit reduction then leaves the Field
slot:

```math
T_*<\infty
\wedge Pack_Q
\wedge Part_{N,Q}
\Longrightarrow
\forall r>0:\neg Field_{N,r,Q}.
\tag{RFE.1}
```

The Carleson and Zeno diagnostics are examples of selected retained source
failures that land exactly here:

```math
\text{selected retained source-reserve or terminal-atom failure}
\Longrightarrow
\neg Field_{N,r,Q}
\tag{RFE.2}
```

provided the failure is not already a `Pack` or `Part` loss.

The question is therefore not “which surface is this?”  The question is:

```math
\boxed{
\text{what must actually fail for the retained Field slot not to propagate?}
}
\tag{RFE.3}
```

## Installed Field Propagation Chain

The one-field route uses the licensed chain

```math
LCI.A + FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
\text{Field persists on the same-fluid family}.
\tag{RFE.4}
```

Here:

1. `FCI.5f` is the frozen-family source-only interval integrability ledger.
2. `LCI.A` is the lower same-fluid carrier ledger.
3. `CSP.A` is the collar Sobolev packet propagation theorem.
4. `OFP.A` is one-field forward preservation.

So a retained Field exit must negate at least one input in `(RFE.4)`.

## Receiver Admission Lemma

The lower-carrier/receiver part has a local bypass.  Let
`\mathcal R_{\rho,\psi}^{pre}(t)` be the union of the label-halo samples, the
thickened collar support, and the widened receiver-return support.  If there is
one compact still-live receiver collar

```math
\mathcal R_{\rho,\psi}^{pre}(t)\subset Q_t^{rec,+}
\qquad(t\in I),
\tag{RFE.5}
```

with finite support volume and finite smooth tower bound

```math
\sup_{(x,t)\in Q^{rec,+}}
\sum_{\ell\le N+m+6}|\nabla^\ell u(x,t)|<\infty,
\tag{RFE.6}
```

then the still-live receiver-admission theorem gives:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I),
\qquad
\sup_I\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}<\infty,
\qquad
(EOC.27).
\tag{RFE.7}
```

Consequently:

```math
EOC.A.
\tag{RFE.8}
```

This is important: the oscillation receiver cannot be the obstruction while the
receiver packet remains inside a compact smooth same-fluid collar.  In that
case the enlarged-ball oscillation closure is paid directly by ordinary local
smoothness on the retained collar.

## Lower-Carrier Return

Once `EOC.A` is supplied, the installed lower-carrier chain is:

```math
EOC.A
\wedge AFD.A
\wedge RCF.A
\Longrightarrow
LCI.A.
\tag{RFE.9}
```

Here `AFD.A` is the affine-frame first-rung defect supplier and `RCF.A` is the
residual center-forcing closure for the transported-center package.  The bridge
from the affine defect to the first center rung is already closed in stronger
form; the remaining first-rung work is the upstream supply of `AFD.A`, not a
new bridge theorem.

Therefore, under `(RFE.5)`--`(RFE.6)`, `AFD.A`, and `RCF.A`, the receiver side
of the Field branch returns to `LCI.A`.

## Source Side

The separate source input is `FCI.5f`.  The installed stronger source package
shows that `FCI.5f` follows from the packet-local pressure/strain/cutoff
package:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}\in L^1(I),
\qquad
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I),
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I),
\tag{RFE.10}
```

together with finite frozen-family seed data and the ordinary interval energy
ledger.  The packet-factor coefficient `\mathfrak b_\psi^{cut}` remains only
coefficient control unless a separate domination theorem supplies the weighted
cutoff-defect ledger in `(RFE.10)`. The exact same-depth source branch remains
sharper, but `(RFE.10)` is the organized sufficient source closure with that
cutoff-defect input.

## Theorem `RFE.A` (Retained Field Exit Pushdown)

Assume on a same-fluid interval `I`:

1. a seed `Field_{N,r_0,Q_0}` and no prior `Pack` or `Part` loss;
2. the receiver-admission hypotheses `(RFE.5)`--`(RFE.6)`;
3. the non-oscillation lower-carrier suppliers `AFD.A` and `RCF.A`;
4. the source ledger `FCI.5f`.

Then the Field slot persists on `I`: there are `r_I>0` and `C_I<\infty` with

```math
Field^{\le C_I}_{N,r_I,Q_t}
\qquad(t\in I).
\tag{RFE.11}
```

### Proof

By the receiver-admission lemma, `(RFE.5)`--`(RFE.6)` imply `EOC.A`.  Together
with `AFD.A` and `RCF.A`, the lower-carrier return gives `LCI.A`.  Combining
`LCI.A` with `FCI.5f` gives `CSP.A`, and then `OFP.A` propagates the seeded
one-field coherence.  This is exactly `(RFE.11)`.  `\square`

## Contrapositive `RFE.B`

Suppose the retained Field slot fails on a same-fluid interval where `Pack` and
`Part` have not failed first.  Then at least one of the following must occur:

```math
\boxed{
\text{receiver escape: no compact still-live receiver collar satisfies }(RFE.5)\text{--}(RFE.6);
}
\tag{RFE.12}
```

The receiver-escape alternative is sharpened in
`mpp-receiver-escape-endpoint-reduction-20260515.md`: under retained `Pack` it
reduces to finite-depth tower escape on the receiver packet, and under retained
`Part` that tower escape lands back in `Field`.  Then
`mpp-retained-field-endpoint-tower-reduction-20260515.md` sharpens the endpoint
side further: under retained `Pack+Part` and bounded pack gauge, a retained
Field exit forces the mixed `tower-blown` face, equivalently failure of the
same-family DTC/tower analytic package.  Thus `(RFE.12)` is not a fourth CM face.
It is the endpoint manifestation of the Field row unless the carrier or
participation hypotheses have already failed.

```math
\boxed{
\neg AFD.A\quad\text{or}\quad\neg RCF.A;
}
\tag{RFE.13}
```

```math
\boxed{
\neg FCI.5f.
}
\tag{RFE.14}
```

Equivalently, after any selected diagnostic has landed in the retained Field
row, the failure is no longer allowed to be a vague “bad source” event.  It has
to land in one of three precise places:

1. terminal receiver escape from every compact still-live collar;
2. non-oscillation lower-carrier supplier failure;
3. frozen-family source ledger failure.

## Consequence For The CM Contrapositive

The first CM-exit split plus `RFE.B` gives the sharper retained failure chain:

```math
T_*<\infty
\Longrightarrow
\text{Pack strain failure}
\ \vee\
\text{Part closedness-input failure}
\ \vee\
\text{receiver escape / lower-carrier supplier failure / source-ledger failure}.
\tag{RFE.C}
```

This is the actual mathematical payoff of the Field-row turnover.  It does not
by itself prove smoothness.  It removes the fake Field ambiguity: retained
selected source failures matter only insofar as they force one of the concrete
failures in `(RFE.12)`--`(RFE.14)`.

## Next Theorem Target

The best aligned next object is not another surface sweep.  After the endpoint
tower reduction, the retained Field branch has one theorem-facing analytic
cell:

```math
\boxed{
\text{prove the same-family DTC/tower analytic package through depth }N+3
\text{ with the same-cover pressure readout,}
}
\tag{RFE.15}
```

or produce it through the noncircular averaged globalization/readout route.
On source-pulse retained families the cover geometry is already supplied by
`SourcePulseDTCCover.A`, so the live burden is analytic `DTC.A`/pressure readout,
not another selector surface.  Without that cell, the proof remains a sharp
reduction, not a completed Navier--Stokes smoothness proof.
