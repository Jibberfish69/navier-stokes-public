# MPP Forward-Gold Hardy/Carleson First-Moment Square-Reserve Recheck

Date: 2026-06-20

## Status

Direct proof-method recheck complete.  `HardyCarlesonFirstMomentSquareReserve.A` is not produced by current inputs.

The tested method is a weighted Hardy / Carleson embedding route: try to convert the available first-moment high-frequency dissipation tail into the native source-square reserve.  The route fails at exact heat-scale strength.  Hardy reindexing identifies the right square object, but first-moment control pays too little unless it is upgraded to active-height strength, logarithmic-tail plus selected-height strength, square-reserve evolution, or a direct same-carrier source-square/no-waste theorem.

## 1. Tail and reserve

Let

```math
D_\ell(t):=\nu\|\nabla u_\ell(t)\|_2^2,
\qquad
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
\tag{HCF.1}
```

The available first-moment tail is

```math
\mathcal F_N(W)
:=
\int_W\sum_{\ell>N}D_\ell(t)\,dt.
\tag{HCF.2}
```

The native square reserve is

```math
\mathcal R_N(W)
:=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt.
\tag{HCF.3}
```

The desired route would be a scale-uniform theorem of the form

```math
\mathcal F_N(W)\to0
\quad\Longrightarrow\quad
\mathcal R_N(W)\to0
\tag{HCF.4}
```

on terminal heat windows after legal exits and finite donor chains are removed.

## 2. Exact Hardy upper form and its missing factor

Define the active tail height

```math
H_N(W):=\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{HCF.5}
```

Since

```math
2^kT_k(t)^2\le H_N(W)T_k(t),
\tag{HCF.6}
```

one has the exact Hardy/Carleson upper form

```math
\mathcal R_N(W)
\le
H_N(W)\int_W\sum_{k>N}T_k(t)\,dt.
\tag{HCF.7}
```

The reindexed sum is

```math
\int_W\sum_{k>N}T_k(t)\,dt
=
\int_W\sum_{\ell>N+4}(\ell-N-4)D_\ell(t)\,dt.
\tag{HCF.8}
```

Thus Hardy reindexing does not remove the square reserve.  It splits it into active height times a logarithmic first moment.  The available energy ledger gives `(HCF.2)`, not a uniform bound for `(HCF.5)` and not the logarithmic moment `(HCF.8)`.

## 3. Heat-scale single-shell falsification

Let

```math
h_m:=2^{-2m},
\qquad
I_m:=(T-h_m,T],
\qquad
A_m:=2^{-3m/2}.
\tag{HCF.9}
```

Place one active dissipation pulse at shell `m+5`:

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
\tag{HCF.10}
```

At cutoff `N=m`, the first moment is

```math
\mathcal F_m(I_m)
=
\int_{I_m}D_{m+5}(t)\,dt
=A_m
=2^{-3m/2}
\longrightarrow0.
\tag{HCF.11}
```

For `k=m`, the tail is `T_m(t)=D_{m+5}(t)` on `I_m`, so the square reserve has the lower bound

```math
\mathcal R_m(I_m)
\ge
\int_{I_m}2^mD_{m+5}(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=
1.
\tag{HCF.12}
```

The active height blows up:

```math
H_m(I_m)
\ge
2^mD_{m+5}(t)
=
2^mA_mh_m^{-1}
=
2^{3m/2}
\quad\text{on }I_m.
\tag{HCF.13}
```

So `(HCF.4)` is false even on exact heat-length windows.

## 4. Weighted first moments below active-height strength also fail

Let a proposed weighted first moment be

```math
\mathcal F_N^w(W)
:=
\int_W\sum_{\ell>N}w_{\ell,N}D_\ell(t)\,dt.
\tag{HCF.14}
```

On `(HCF.10)` at `N=m`, this equals

```math
\mathcal F_m^w(I_m)=w_{m+5,m}A_m.
\tag{HCF.15}
```

For this weighted first moment to force the unit reserve in `(HCF.12)`, it must not vanish.  Since `A_m=2^{-3m/2}`, the necessary lower scale is

```math
\inf_m w_{m+5,m}2^{-3m/2}>0.
\tag{HCF.16}
```

Equivalently, the weight must have size at least `2^{3m/2}` along this edge.  That is the same scale as the active height in `(HCF.13)`.  Polynomial, logarithmic, subcritical, or ordinary dyadic first-moment weights do not reach it.

Thus a weighted Hardy theorem below active-height strength cannot be the missing forward-gold supplier.

## 5. Exact route consequence

The proof-method split is:

```math
\boxed{
\text{Hardy/Carleson reindexing}
\Longrightarrow
\text{height}\times\text{log-tail control, not reserve depletion.}
}
\tag{HCF.17}
```

The route closes only after one of the real square-strength inputs is supplied:

```math
\begin{gathered}
\text{ActiveWindowHeight.A},\\
\text{SelectedHeight.A + LogTailDissipationMoment.A},\\
\text{SquareReserveEvolution.A / ReserveCreationCharge.A},\\
\text{SelectedParticipationSquareBudget.A},\\
\text{SourceSquareReserve.A on the actual selected carrier},\\
\text{StrictRescaledNoWasteLyapunov.A}.
\end{gathered}
\tag{HCF.18}
```

All of these are equivalent at this resolution to producing `UnweightedTerminalCriticalActionReserve.A` / `SelectedCarrierEndpointUI.A` on the actual selected positive carrier.

## Verdict

`HardyCarlesonFirstMomentSquareReserve.A` fails as a new forward-gold supplier from current inputs.

The exact obstruction is the same heat-scale pulse:

```math
\mathcal F_m(I_m)=2^{-3m/2}\to0,
\qquad
\mathcal R_m(I_m)\ge1,
\qquad
H_m(I_m)\ge2^{3m/2}.
\tag{HCF.19}
```

Hardy/Carleson embedding is useful as the algebra that exposes the missing active-height factor.  It does not produce the unweighted terminal square reserve from the first-moment Navier--Stokes ledger.