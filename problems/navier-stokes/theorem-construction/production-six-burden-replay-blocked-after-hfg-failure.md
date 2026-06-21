# Production And Six-Burden Replay Blocked After HFG Failure

## Replay target

The intended replay is

```math
HFG\Rightarrow Part+Field+\mathfrak A_{N,Q}
\Rightarrow H1+H2+H6+ORIGIN.Retain
\Rightarrow LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Precondition check

The replay requires `HFG` or an equivalent critical vorticity continuation estimate. The current HFG rerun is blocked by the open product channels

```math
\Lambda_NE_N,
\qquad
\Theta_N^\sharp E_N,
\qquad
\|\omega\|_2\|\nabla\omega\|_2.
```

## Result

Production replay is blocked at the HFG input. Therefore `H1+H2+H6+ORIGIN.Retain` cannot be promoted from this route, and the six-burden closure remains conditional.

## Exact live mathematical blockers

Any one of the following would reopen the route:

```math
\int_0^T\Lambda_NE_Ndt+
\int_0^T\Theta_N^\sharp E_Ndt<\infty,
```

or

```math
(\Lambda_N+\Theta_N^\sharp)E_N\le \varepsilon\nu D_N+C_\varepsilon R_N
```

with summable `R_N`, or

```math
\int_0^T\|\omega\|_2\|\nabla\omega\|_2dt<\infty.
```

Until one of these product channels closes, the route stops before HFG.