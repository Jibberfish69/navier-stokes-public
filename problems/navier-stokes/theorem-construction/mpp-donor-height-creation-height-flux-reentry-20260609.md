# MPP DonorHeightCreation.A Height-Flux Reentry

Date: 2026-06-09

Status: reentry attempt; theorem not discharged; next non-alias target isolated.

## Governing program

The active Navier-Stokes route remains the CM contrapositive program:

```text
Exit(Q) := not Member(Q)
```

through the Pack-first witness tree:

```text
Pack_Q, Part_{N,Q}, Field_{N,r,Q}.
```

This pass tests whether the source-refill branch can be closed by a native
dynamic law for donor height,

```math
H_k(t) := 2^k\sum_{\ell>k+4}D_\ell(t),
```

so that the square-reserve route can supply the missing source-refill payment
needed by `ScaleCriticalTreeCarleson.A` and then by the CM class-exit proof.

## Target tested

The target was the stack

```text
DonorHeightCreation.A
ActiveWindowHeight.A
ReserveCreationCharge.A
```

with the intended implication chain

```text
DonorHeightCreation.A
  -> ReserveCreationCharge.A
  -> SquareReserveEvolution.A
  -> ScaleCriticalTreeCarleson.A.
```

The checked direct attempt
`mpp-donorheightcreation-shellbalance-direct-attempt-20260506.md` proves that
the algebraic derivative of `H_k` is not the hard part.  The shell balance gives
the tautological estimate

```math
\left[
H_N(W)-H_N(Past(W))-Loss^{height}_{legal}(W)
\right]_+
\le
C_{\mathrm{height}}
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+
dt.
```

The right side is the one-sided positive weighted height-flux carrier.  Scalar
viscous damping prices persistence after the source is present.  It does not
price first creation of the height.  The missing theorem is a structural
control of that positive weighted flux, not another restatement of the shell
energy identity.

## Why the direct route does not close

The available direct shell balance exposes

```text
HeightFluxControl.A
```

as the needed payment:

```math
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+
dt
\le
Charge_N^{height}(W)+o_N(1).
```

The existing notes do not install this estimate.  The dangerous part of
`F_\ell` is still the positive strain/source carrier

```math
\left[
\langle S_{<\ell}^{loc}w_\ell,w_\ell\rangle
\right]_+,
```

and the height weight does not remove the same active-alignment obstruction
that blocked the source-wall route.

`mpp-firstheightcreation-dichotomy-terminal-attempt-and-collapse-20260506.md`
also blocks the shortcut through `FirstHeightCreationDichotomy.A`: first
appearance of a reserve pulse gives large `H_N`, but it does not by itself
prove first creation of `H_N` with a native height charge.  That surface is an
alias for the missing height-flux theorem, not an independent closure.

## CM authority check

`mpp-active-height-flux-trichotomy-proof-audit-20260525.md` keeps the route
inside the CM contrapositive program.  It allows an active-height-flux theorem
to support `Exit(Q):=not Member(Q)` only when a first-created positive
square-reserve surplus produces a same-ledger active height-flux witness or
lands in Pack, Part, Field, or terminal Zeno residue.

The audit vetoes the currently generated theorem-creation surface because the
decisive visibility step is still asserted.  The missing object is not
`ActiveHeightFluxTrichotomy.A` as a named theorem shell.  The first proof object
is the local visibility bridge:

```text
ZeroMomentReserveVisibility.A
```

## Next target

The next theorem target is:

```text
ZeroMomentReserveVisibility.A:
on the first minimal terminal window, a retained positive donor-square reserve
surplus bounded below by `c_0>0` with vanishing first moment must either
generate a same-ledger active height-flux level set after signed-pair
decomposition or land as Pack carrier loss, Part dwell failure, licensed Field
source charge, or terminal Zeno residue.
```

The proof method should be a same-ledger normal-form and extremal first-window
argument.  The pass must not import `ScaleCriticalTreeCarleson.A`,
`HeightFluxControl.A`, full MPP closure, submission readiness, or `Member(Q)`.

## Reentry result

`DonorHeightCreation.A / ActiveWindowHeight.A / ReserveCreationCharge.A` is not
closed by the existing shell-balance, first-height, or active-height-flux
surfaces.  The loop stays active.  The next non-alias mathematical burden is
`ZeroMomentReserveVisibility.A`.
