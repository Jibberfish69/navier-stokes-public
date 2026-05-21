# ParabolicNoFreeSink.A attempt

## Status

Failed as an unconditional theorem from the currently installed inputs.

## Target

Prove that every internal source-current path feeding terminal positive divergence is one of:

```math
\text{boundary-fed}
\quad\vee\quad
\text{heat-action charged}
\quad\vee\quad
\text{legal-loss charged}
\quad\vee\quad
\text{an earlier forbidden source-current arrival}.
```

Equivalently, rule out a free inviscid donor sink feeding a terminal positive receiver.

## Basic obstruction

A localized skew current may contain an internal sink-source pair:

```math
J(A\to B)=F>0,
```

so that

```math
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

There is positive terminal divergence at `B`, but the donor `A` is an internal negative source sink.  This transfer need not cross boundary flux or a viscous heat edge.

In the Navier-Stokes packet interpretation, this is legal inviscid transfer from donor packet to receiver packet.  It conserves signed energy at the current level and is exactly the mechanism the source wall must price.

## Why first-pulse pruning is insufficient

First-pulse selection excludes earlier positive source-current arrivals.  It does not exclude an internal negative donor sink.  A donor sink may have negative divergence throughout the relevant interval while feeding the selected positive receiver.  Since it is not a positive arrival, first-current pruning does not remove it.

## Why legal ledgers do not price the sink

Pressure, cutoff, projection, collar, off-family, and boundary ledgers price terms that leave the localized legal packet system or arise from localization.  A legal same-fluid donor inside the packet system is neither off-family nor boundary.  Charging it by absolute value reopens the positive source wall:

```math
ScaleCriticalTreeCarleson.A.
```

## Conditional replacement

The correct conditional statement is:

```math
TerminalSignedSaturation.A
+TwoTowerDonorDepletion.A
\Longrightarrow ParabolicNoFreeSink.A.
```

`TerminalSignedSaturation.A` keeps the donor counter-edge inside the usable signed ledger or sends it to a named legal ledger.  `TwoTowerDonorDepletion.A` supplies a finite reserve for donor drain when repeated donor-to-receiver transfers occur.

## Verdict

```math
\boxed{ParabolicNoFreeSink.A\text{ remains open.}}
```

The obstruction is a legal internal donor sink.  The theorem needs a donor-depletion reserve or signed-saturation theorem beyond the currently installed source-current algebra.