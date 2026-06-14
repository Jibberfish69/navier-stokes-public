# MPP DiagDom.A Direct Attempt Note

## Status

Bounded direct attempt on the diagonal domination repair left by
`mpp-msc-diagtether-direct-attempt-note.md`.

The target was:

```math
\boxed{
DiagDom.A:
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt
\le
C_{\mathrm{diag}}
\left(
\int_{Bad_N(\eta)}\mathfrak B_{N,diag}^\sigma(t)\,dt
+o_N(1)
\right).
}
```

where

```math
\mathfrak B_{N,diag}^\sigma(t)
:=
\sum_{N<j\le\ell}K_{j,\ell}^\sigma
\iint_{|x-y|\le C_{\mathrm{cell}}2^{-j}}
d_j(x,t)d_\ell(y,t)\,dx\,dy.
```

This attempt does not install `DiagDom.A`.  It shows that diagonal domination
is stronger than the current mixed-shell scheduler identity and cannot be
deduced from the global shell norms alone.

## Product Versus Diagonal Carrier

The installed mixed-shell measure uses

```math
D_jD_\ell
=
\iint d_j(x)d_\ell(y)\,dx\,dy.
```

The diagonal carrier keeps only the portion with
`|x-y|\le C_{\mathrm{cell}}2^{-j}`.  A
heat-scale cell decomposition gives

```math
D_jD_\ell=\sum_{\alpha,\beta}a_\alpha b_\beta,
\qquad
\mathfrak B_{diag}
=
\sum_{\alpha,\beta:\operatorname{dist}(Q_\alpha,Q_\beta)\le C_{\mathrm{cell}}2^{-j}}
a_\alpha b_\beta.
```

No available conservation law, pack gauge, or same-fluid volume-preservation
statement forces the all-pairs sum to live on the neighboring-cell sum.  The
off-diagonal part is nonnegative, so it cannot be discarded by cancellation
after the estimate has passed to absolute values.

## Why Existing Source Ledgers Do Not Prove It

The installed source side

```math
FFSRC.A\Longrightarrow FCI.5f
```

is an `L^1` frozen-family source ledger for the downstream
`LCI.A+FCI.5f=>CSP.A=>OFP.A` consumer.  It bounds the source contribution after
finite packetization.  It does not identify where the positive mixed-shell
product mass sits in physical space, and it does not provide a lower bound on a
near-diagonal carrier.

Thus `FFSRC.A` is compatible with the downstream averaged propagation route,
but it is not a proof of `DiagDom.A`.

## Only Viable Rescue

The only viable rescue is to return before the global Cauchy step and keep the
spatially local nonlinear source:

```math
\mathfrak S_{N,loc}^{active}(t)
```

inside the same-fluid packet.  At that level, co-location is native because the
nonlinearity is integrated at one physical point before estimates are applied.
The needed theorem is therefore:

```math
\boxed{
LocalSource.NoPulse.A:
\int_{Bad_N(\eta)}\mathfrak S_{N,loc}^{active}(t)\,dt=o_N(1).
}
```

This is not a new downstream source ledger.  It is the pre-Cauchy form of the
branch-native no-pulse source theorem.

## Verdict

`DiagDom.A` is not proved from the installed global mixed-shell estimate.  The
diagonal compactness repair collapses to the pre-Cauchy source theorem:

```math
\boxed{
LocalSource.NoPulse.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot.
}
```

The next target is therefore not a diagonal domination theorem for `D_jD_\ell`;
it is the signed/local active source theorem already visible behind the
nonlinear shell-flux source wall.
