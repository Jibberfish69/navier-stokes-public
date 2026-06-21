# MPP Viscosity-Class Separation Edge Theorem Program

## Status

Theorem-program note.

Role: isolate the proposed route where terminal regularity failure may remain
Euler-compatible, while positive-viscosity Navier--Stokes terminal nonsmoothness
is forced to appear as class exit from the Navier--Stokes object.

Claim status: conditional. This note defines the target theorem and its bridge lemmas. It records no discharge of the live source-wall root.

2026-05-09 target hardening: the retained-budget bridge slot is deleted from
the theorem-facing route. The fixed-viscosity bridge is not licensed through a
generic retained-budget lemma, and the Euler mirror remains quarantined from
live Navier--Stokes authority.

## Governing distinction

The Navier--Stokes witness at viscosity `nu>0` is

```math
CM^{\nu}_{N,r,Q}
:=
Pack_Q(u,\Phi)
\wedge
Part^{\nu}_{N,Q}(u,p)
\wedge
Field^{\nu}_{N,r,Q}(u,p).
```

The participation carrier is

```math
U_k:=\nabla^k u,
\qquad
K_k^{\nu}:=-\nabla^{k+1}p+\nu\Delta U_k,
\qquad
D_tU_k=K_k^{\nu}+B_k.
```

The Euler mirror witness uses the same packing vocabulary and the same pressure field, with

```math
K_k^{E}:=-\nabla^{k+1}p,
\qquad
D_tU_k=K_k^{E}+B_k.
```

Thus the separation locus is the viscosity-bearing receiver budget inside `Part` and `Field`, especially the `ACT.KX` / `LCI` family and the Euler replacement slot `ELCI.A`.

## Definition: normalized viscous receiver budget

For a synchronized same-fluid witness packet

```math
\mathcal W=(Q,N,r,\Phi,u,p,\nu),
```

write

```math
\mathcal V_{\mathcal W}^{\nu}
```

for the normalized positive-viscosity budget visible in the receiver chain. On the current route this includes the budget represented by:

```math
2\nu\mathcal D^{low},
\qquad
c_{\nu}N,
\qquad
ACT.X\text{-TopVisc},
\qquad
\text{top-viscous center/readout ledgers}.
```

The invariant version of `\mathcal V_{\mathcal W}^{\nu}` must be stated on the same retained packet ledger used by

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

## Definition: Euler-class terminal defect

A terminal `Part/Field` defect sequence is **Euler-comparison** when, after the selected packet normalization and compactness extraction, its effective receiver budget satisfies

```math
\mathcal V_{\mathcal W_j}^{\nu_j}\longrightarrow 0,
```

and the limiting class law is the Euler mirror law

```math
\mathrm{Member}_E(Q)
:=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
```

In this reading, an Euler terminal object is first classified by flux-volume and
weak momentum-pressure fidelity. Regularity, Lagrangian carrier, and one-field
coherence are extra layers, and comparison against Navier--Stokes still runs
through the missing positive-viscosity receiver budget.

## Theorem `ViscClassSep.A` (conditional viscosity-class separation)

Fix `nu>0` and a synchronized same-fluid terminal witness packet `\mathcal W` for the classical incompressible Navier--Stokes equation.

Assume the following bridge lemmas.

### Deleted bridge slot

The former retained-budget bridge slot is not part of the theorem-facing route.

### `ACTKX_ELCI_Dichotomy.A`

Every terminal `Part/Field` defect on the same packet ledger falls into one of two routes:

```math
\mathcal V_{\mathcal W_j}^{\nu_j}\to0
\quad\Longrightarrow\quad
\text{Euler member or named defect-boundary terminal object},
```

or

```math
\inf_j\mathcal V_{\mathcal W_j}^{\nu_j}>0
\quad+\quad
\mathsf{Ledger}_{ACT}(\mathcal W_j)
\quad\Longrightarrow\quad
ACT.KX\Longrightarrow ACT.X\text{-Readout}\Longrightarrow ACT.A\Longrightarrow RCF.A\Longrightarrow LCI.A.
```

### `EulerOnlyDefectClassification.A`

Every genuine terminal object produced by the zero-budget branch is classified
either as `Member_E` or as a named defect-boundary object. `ECFI/EOFP/ELCI` can
only type optional regularity support above membership; they do not define Euler
membership.

### `SameLedgerLimitTransfer.A`

The compactness extraction preserves the same witness typing:

```math
Part/Field
```

and the same packet labels, covers, and readout ledgers through the limiting procedure.

Then no terminal `Part/Field` defect occurs inside positive-viscosity Navier--Stokes class membership on `\mathcal W`.

Equivalently,

```math
CM^{\nu}_{N,r,Q}
+ACTKX\_ELCI\_Dichotomy.A
+EulerOnlyDefectClassification.A
\Longrightarrow
\text{terminal }Part/Field\text{ defect is excluded at fixed }\nu>0.
```

## Proof skeleton

Assume a terminal `Part/Field` defect occurs on a positive-viscosity Navier--Stokes witness packet `\mathcal W` while `CM^{\nu}_{N,r,Q}` remains the governing class witness.

By `ACTKX_ELCI_Dichotomy.A`, either the normalized receiver budget vanishes along the defect extraction, or a positive budget remains.

If the retained receiver hypotheses are independently installed, the `ACT.KX`
receiver chain is the relevant Navier--Stokes-side chain:

```math
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

Together with the installed one-field route, this supplies the receiver side of

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A.
```

Thus `Part` and `Field` propagate on the same witness ledger, contradicting the alleged terminal `Part/Field` defect.

If the receiver budget vanishes, the Euler-side conclusion still requires
`EulerOnlyDefectClassification.A` plus same-ledger compactness/no-residue
transfer.

So the theorem remains conditional: every positive-budget branch closes only
after the retained receiver chain is independently installed, and every
zero-budget branch closes only after Euler membership / defect classification
or the Zeno rigid-class cleanup theorem is supplied. This preserves the Euler
mirror as a quarantined comparison branch, not a live Navier--Stokes authority
rewrite.

## Corollary `ViscClassSep.B` (feed into the live class-membership edge)

Assume the installed Pack row and endpoint certificate maps, and assume `ViscClassSep.A` for the terminal `Part/Field` rows. Then the live edge receives the missing receiver-side input for

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

This corollary is conditional on the same source-wall and endpoint-map hypotheses already present in the live theorem edge.

## Edge-theorem application map

The route applies directly to:

```math
CFI.B2,
\qquad
CFI.B3,
\qquad
CFI.C3,
\qquad
OFP.A,
\qquad
LCI.A,
\qquad
ACT.KX,
\qquad
RCF.A.
```

It applies on the Euler mirror side through:

```math
ECFI.A,
\qquad
EOFP.A,
\qquad
ELCI.A,
\qquad
EL13.A.
```

It applies to the source-wall branch only after the witness routing has selected the `Field` row:

```math
FieldFaceResidueReduction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Exact open bridge lemmas

The next theorem work should target these in order.

1. `DirectFixedNuEulerSmoothBridge.A`: prove the hard target `EulerSmooth(u_0 on [0,T]) => NSSmooth_nu(u_0 on [0,T])` for each fixed `nu>0`, same initial data, with no `nu->0` escape and no Euler-nonsmooth fallback.
2. `ACTKX_ELCI_Dichotomy.A`: if this comparison program is used as support only, prove that every terminal `Part/Field` defect either closes through an independently installed retained `ACT.KX` branch or extracts through the Euler `ELCI.A` zero-budget branch.
3. `EulerOnlyDefectClassification.A`: type every zero-budget terminal defect as an Euler mirror class object.
4. `SameLedgerLimitTransfer.A`: preserve Part/Field labels, covers, pressure readouts, and receiver ledgers through the limit.
5. `NoPositiveNuEulerizationInsideNSClass.A`: rule out a same-ledger positive-viscosity Navier--Stokes member whose normalized receiver budget vanishes while class membership remains installed.

## Boundary

This theorem program records a conditional route. It leaves the live source-wall root open at

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

The retained-budget bridge slot is deleted from this route. The live hard target
is the direct fixed-`nu` bridge from Euler smoothness to Navier--Stokes
smoothness for the same initial data, with no `nu->0` escape and no fallback to
zero-viscosity boundary reclassification.
