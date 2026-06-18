# MPP OffFamilyCounteredgeCharge.A Direct Attempt

## Status

Direct theorem-grade attempt on the charge isolated by the terminal signed
current route:

```math
\boxed{
OffFamilyCounteredgeCharge.A.
}
```

Verdict:

```math
\boxed{
OffFamilyCounteredgeCharge.A
\text{ is not proved from the currently installed Navier--Stokes lane inputs.}
}
```

The installed off-packet, cutoff, collar, boundary, pressure, residual, heat,
and earlier-arrival ledgers charge declared geometric or temporal errors.  They
do not charge the full mass of a bare algebraic negative signed partner merely because
terminal positive selection placed that partner outside the selected usable
same-fluid ledger.

## Target

Fix a bounded-overlap selected terminal same-fluid packet family
`\mathcal F_N` and an active terminal window collection.  For each selected
positive localized source edge

```math
e:Q\to P,
\qquad
P\in\mathcal F_N,
\qquad
d\mathcal S^{active}_{N,loc}(e;P)>0,
```

let `e^\ast` denote the bare algebraic signed counter-edge supplied by the
unlocalized Navier--Stokes dyadic skew exchange.  The target charge is:

```math
\boxed{
\sum_{\substack{e\text{ selected positive}\\
e^\ast\notin Ledger(\mathcal F_N)}}
\int |d\mathcal S^{active}_{N,loc}(e^\ast)|\,dt
\le
o_N(1)+Loss_{legal}.
}
\tag{OFC.1}
```

Here `e^\ast\notin Ledger(\mathcal F_N)` includes the cases where the signed
partner lies outside the selected terminal family, outside the active terminal
time window, in an unselected same-fluid donor packet, or in a cutoff/collar /
off-packet spill region.  The spill cases are already legal.  The theorem asks
for the remaining same-fluid unselected-partner mass to be legal as well.

## Installed Inputs

The bare unweighted dyadic exchange has exact skew symmetry:

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0.
\tag{OFC.2}
```

Thus, on a full finite unweighted closed interaction graph, every positive
edge has a bare algebraic negative partner.

The terminal route does not consume `(OFC.2)` directly.  It consumes a
localized, one-sided weighted, lifted, terminal-selected, positive-parted
source carrier.  The paired endpoint contributions have the form

```math
W_PA_P
\qquad\text{and}\qquad
-W_QA_Q
```

plus lifted, cutoff, window, and spill remainders.  Even before trying to
close the full terminal signed ledger, the off-family piece asks whether the
mass of `Q` outside the selected usable ledger is automatically paid.

## Direct Attempt

Take a selected positive terminal source edge `e:Q\to P` with
`P\in\mathcal F_N`.  Use `(OFC.2)` to assign its bare algebraic negative partner
`e^\ast`.  Split the cases.

### 1. Geometric spill cases

If `e^\ast` leaves through an installed cutoff collar, pressure/projection
localization error, off-packet residual, heat boundary, or declared
off-truncation region, then the existing legal ledgers pay that term.  This
proves only the restricted statement:

```math
\boxed{
OffFamilyCounteredgeCharge^{geom}.0:
\text{geometric spill of the counter-edge is paid by installed legal losses.}
}
\tag{OFC.3}
```

This is already part of the localized packet bookkeeping and is not the
missing theorem.

### 2. Same-fluid unselected partner

The hard case is:

```math
e^\ast \text{ is a legitimate same-fluid signed partner,}
```

but

```math
e^\ast
\notin Ledger(\mathcal F_N)
```

because its endpoint is an unselected donor packet, an unselected active
packet, or a packet outside the selected terminal time window.  It is not a
cutoff, collar, pressure, heat-boundary, or residual error.

The bare cancellation says only that the full graph contains a contribution
`-A`.  It does not say that `-A` lies in the selected consumer ledger or that
discarding it is small.  Same-fluid transport preserves admissible material
labels; it does not force terminal bad selection, synchronized active windows,
or legal smallness of the unselected signed partner.

Trying to declare this mass legal gives exactly `(OFC.1)`, so the proof would
assume the target.

## Ledger Lower Bound

Let `P\in\mathcal F_N` be selected and let `Q\notin Ledger(\mathcal F_N)` be
the formal same-fluid signed partner.  After subtracting any antisymmetric
current value `J_{PQ}`, the endpoint residuals are

```math
L_P=A_P-J_{PQ},
\qquad
L_Q=A_Q+J_{PQ}.
```

Therefore

```math
|L_P|+|L_Q|
\ge
|A_P+A_Q|.
\tag{OFC.4}
```

On the bare closed unweighted graph, `A_P+A_Q=0`.  On the terminal localized
surface, however,

```math
A_P+A_Q
=
(W_P-W_Q)A
+R^{lift/cut}_{PQ}
+R^{window}_{PQ}
+R^{selection}_{PQ}.
\tag{OFC.5}
```

The geometric pieces of `(OFC.5)` are legal only when they are actually
declared spill/cutoff/collar/residual terms.  The selection term
`R^{selection}_{PQ}` is the mass of a signed partner outside the chosen usable
terminal ledger.  No installed input bounds

```math
\sum_{Q\notin Ledger(\mathcal F_N)}
\int |R^{selection}_{PQ}|\,dt
\le
o_N(1)+Loss_{legal}.
\tag{OFC.6}
```

This is precisely `OffFamilyCounteredgeCharge.A`.

## Consistency Model Showing Non-Bookkeeping

The following finite ledger model is consistent with the installed bare skew
algebra and with zero geometric legal loss:

```math
A_P=a>0,
\qquad
A_Q=-a,
\qquad
P\in\mathcal F_N,
\qquad
Q\notin Ledger(\mathcal F_N),
```

with both packets same-fluid and with no cutoff, collar, pressure, residual,
heat-boundary, or earlier-arrival flag.  The full signed graph cancels, but the
selected terminal ledger sees the positive mass `a` and the off-family charge
must pay the missing `a`.

This is not a Navier--Stokes counterexample.  It is the exact bookkeeping
obstruction: the currently installed identities distinguish bare global
signed cancellation from terminal selected same-fluid legal charge.

## Relation To The Source Wall

The source-wall notes reopen the live root at

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

or

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

with equivalent native positive-source faces such as
`LocalPositiveSourceCarleson.A`, `NativeTrilinearDefectDomination.A`,
`UniformTemporalSourceIntegrability_p.A`, and `SquareReserveEvolution.A`.

`OffFamilyCounteredgeCharge.A` is not lower than this root.  In the signed
current language, it is the boundary-ledger face of the same terminal positive
source-control problem:

```math
\text{selected positive terminal source}
\quad
\text{minus}
\quad
\text{usable same-ledger signed partner}.
```

If `(OFC.1)` were available together with the weighted/lifted in-ledger defect
charge, then the selected positive source edge could be saturated and the
terminal skew ledger would follow.  But `(OFC.1)` itself is exactly the missing
charge for the lost signed partner.

## Strongest Valid Reduction

The following conditional implications are valid.

First:

```math
\boxed{
TerminalSignedSaturation.A
\Longrightarrow
OffFamilyCounteredgeCharge.A.
}
\tag{OFC.7}
```

Proof.  Apply `TerminalSignedSaturation.A` to every selected positive terminal
source edge.  If the algebraic counter-edge remains in the same usable terminal
ledger, it contributes no off-family charge.  If it leaves the ledger,
`TerminalSignedSaturation.A` says exactly that it is paid by installed legal
loss.  Summing over the bounded-overlap selected family gives `(OFC.1)`.

Second:

```math
\boxed{
\begin{aligned}
&BareDyadicSkewCurrent.0\\
&\quad+
WeightedLiftedSkewDefectCharge.A\\
&\quad+
OffFamilyCounteredgeCharge.A\\
&\Longrightarrow
TerminalSkewLocalizationLedger.A.
\end{aligned}
}
\tag{OFC.8}
```

Proof.  Use `BareDyadicSkewCurrent.0` to assign the full unweighted
antisymmetric current.  Move the weighted coefficient mismatch and lifted /
cutoff commutator residual into the ledger and pay it by
`WeightedLiftedSkewDefectCharge.A`.  For every selected positive edge whose
algebraic counter-edge exits the usable selected terminal ledger, apply
`OffFamilyCounteredgeCharge.A`.  The remaining paired terms lie inside the
same saturated same-fluid terminal ledger and define the desired antisymmetric
current.  Bounded overlap gives the terminal ledger estimate.

This reduction is only conditional.  Neither `WeightedLiftedSkewDefectCharge.A`
nor `OffFamilyCounteredgeCharge.A` is currently installed below the source
wall.

## Exact Obstruction

```math
\boxed{
\text{A selected positive same-fluid terminal source edge can have its formal
negative signed partner in an unselected same-fluid packet or outside the
selected active time window, without crossing any installed legal spill,
cutoff, collar, pressure, residual, heat-boundary, or earlier-arrival ledger.}
}
```

Equivalently:

```math
\boxed{
\text{the off-family charge for lost signed partners is the same missing
terminal signed-positive depletion theorem, not a consequence of bare skew
symmetry or existing legal losses.}
}
```

Thus the live theorem burden remains:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A,
}
```

with the signed-current face sharpened to:

```math
\boxed{
TerminalSignedSaturation.A
\text{ / }
SignedPositiveBalance.A.
}
```
