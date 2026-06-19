# MPP CycleHeatAction.A Direct Attempt: No-Free-Sink Obstruction

## Status

Direct attempt on the preferred signed parabolic source-current route:

```math
ParabolicSourceCurrent.A
:=
LocalizedSkewCurrent.A+CycleHeatAction.A.
```

Result:

```math
\boxed{
CycleHeatAction.A
\text{ is not proved from }LocalizedSkewCurrent.A
\text{ plus the current installed ledgers.}
}
```

The obstruction is not the algebraic skew-current ledger.  The obstruction is
that positive terminal divergence can be fed by an internal source-current sink
without first crossing a viscous heat edge.  Thus the parabolic-current route
needs a new no-free-sink / terminal signed-saturation theorem before it becomes
a genuine proof of `ScaleCriticalTreeCarleson.A`.

## Target

The desired theorem was:

```math
\boxed{
CycleHeatAction.A:
\quad
\sum_{P\in\mathcal T}
\int
\left[
\operatorname{div}_{\mathcal G}J(P)
\right]_+dt
\le
Flux^+_{\partial\mathcal T}
+
\theta\sum_{P\in\mathcal T}\int D_P\,dt
+
o_N(1)+Loss_{legal}.
}
\tag{CHA}
```

Here `J` is the localized antisymmetric source current supplied by
`LocalizedSkewCurrent.A`:

```math
\partial_tE_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P.
```

The intended idea was that an internal terminal positive source-current cycle
must pay viscous heat action.

## Finite Spacetime Graph Lift

Discretize time at packet heat scale and add temporal storage edges.  On a
finite truncation of the terminal packet tree, the balance has the exact
discrete form:

```math
Incoming_{space}+Incoming_{time}
=
Outgoing_{space}+Outgoing_{time}+D_P+L_P.
```

A finite nonnegative flow decomposition splits current into:

```math
\text{boundary-fed paths},
\qquad
\text{paths from internal sinks/storage},
\qquad
\text{cycles}.
```

Boundary-fed paths are paid by `Flux^+_{\partial\mathcal T}`.  Cycles with a
genuine temporal heat leg may be paid by `\int D_P`.  But a positive divergence
node need not be fed by a cycle.  It may be fed by a path starting at an
internal sink.

## Elementary Obstruction

Consider two internal nodes `A,B` in the same time layer and an antisymmetric
current:

```math
J(A\to B)=F>0,
\qquad
J(B\to A)=-F.
```

Then:

```math
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

There is no boundary flux and no heat edge.  Yet:

```math
\sum_{P\in\{A,B\}}
\left[
\operatorname{div}J(P)
\right]_+
=F.
```

Thus the abstract inequality

```math
\sum_P[\operatorname{div}J(P)]_+
\le
C_{\mathrm{abs}}
\left(
Flux^+_{\partial\mathcal T}
+
\text{heat action}
\right)
```

is false for a general localized skew current.  A current with positive
divergence is a path from a sink to a source.  It is not necessarily a closed
cycle.  A purely spatial closed cycle with equal circulation has zero
divergence; it does not produce the positive source term being estimated.

## PDE Interpretation

In the Navier--Stokes packet ledger, the internal sink is a donor packet with
negative signed exchange.  The positive terminal packet can receive energy by
inviscid transfer from that donor before any viscous heat edge is crossed.

This is not a contradiction with energy conservation.  It is exactly the
source-transfer mechanism:

```math
\text{donor drain}
\longrightarrow
\text{receiver positive source}.
```

To turn this into a source-wall estimate, one must prove that the donor sink is
not free.  It must either:

```math
\text{belong to the same usable terminal ledger as a signed counter-edge,}
```

or

```math
\text{be charged by installed boundary, heat, residual, or legal loss ledgers,}
```

or

```math
\text{create an earlier forbidden source-current arrival.}
```

Those are not consequences of `LocalizedSkewCurrent.A` alone.

## Relation To Existing Signed Audit

This is the parabolic-current version of the obstruction isolated in
`mpp-signed-samefluid-edgepairing-direct-attempt-20260505.md`.

The missing theorem there was:

```math
TerminalSignedSaturation.A:
\quad
\text{the counter-edge of every selected positive terminal source edge either
belongs to the same saturated same-fluid terminal ledger or is paid by an
installed legal loss.}
```

The current attempt shows that `CycleHeatAction.A` also needs this kind of
input.  Without it, internal sink-to-source paths survive as free inviscid
exchange paths and are not forced through heat action.

## Corrected Theorem Interface

The signed parabolic-current route is restated as:

```math
LocalizedSkewCurrent.A
+
ParabolicNoFreeSink.A
+
CycleHeatAction.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

where:

```math
\boxed{
ParabolicNoFreeSink.A:
\text{every internal source-current path feeding terminal positive divergence
is either boundary-fed, heat-action charged, legal-loss charged, or an earlier
forbidden source-current arrival.}
}
```

Equivalently, `ParabolicNoFreeSink.A` is the spacetime-current formulation of:

```math
TerminalSignedSaturation.A
```

or:

```math
SignedPositiveBalance.A
```

on the selected terminal same-fluid ledger.

## Why This Does Not Yet Close The Wall

The installed route supplies:

```math
LocalizedSkewCurrent.A
```

as an algebraic signed-current ledger, modulo legal pressure/cutoff/off-family
losses.

It does not supply:

```math
ParabolicNoFreeSink.A
```

or:

```math
TerminalSignedSaturation.A.
```

First-pulse selection prunes earlier positive arrivals.  It does not by itself
prune an internal negative source sink that transfers stored donor energy into
the terminal active packet.  Charging that sink is precisely the donor-depletion
/ signed-saturation problem.

Thus:

```math
\boxed{
CycleHeatAction.A
\text{ remains a useful proof interface, but not an installed consequence of
the current signed-current ledger.}
}
```

## Consequence

The source-wall root does not move below:

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

unless one proves one of the following genuinely new inputs:

```math
ParabolicNoFreeSink.A
\quad
\text{or}
\quad
TerminalSignedSaturation.A
\quad
\text{or}
\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

The parabolic-current route is still valuable because it identifies the most
structural missing theorem: the source pulse must not be able to hide its
negative exchange partner outside the usable terminal ledger.  But this note is
a failed direct discharge of `CycleHeatAction.A`, not a closure of
`SOURCE.NO-PULSE.A`, `AWG.A`, `PCTP.hard / TTU.A`, or the periodic
Navier--Stokes target.
