# Far-Corona CTS-FCTS-Car-FC Result

## Far-corona packet

The far-corona packet has the coupled two-scale form

```math
\Pi_N^{mid,far,L}(t)
\le C_{FC}
\int_0^{\ell_N}\int_{r\ge c_1\ell}{\ell\over r}\,
\mathcal A_{\ell,r}(t)\,{dr\over r}{d\ell\over\ell}.
```

The kernel `\ell/r` is the genuine scale-separation gain.

## Conditional chain

The lane-supported continuum route is

```math
CTS\Rightarrow FCTS\Rightarrow Car\Rightarrow FC.
```

Under `FC`, one obtains

```math
\int_0^T\Pi_N^{mid,far,L}(t)dt
\le
\eta_{far}\nu\int_0^TD_N(t)dt+C_{far}2^{-2\delta N}.
```

Together with the same-scale weighted-carrier side, this closes the lifted packet.

## Local theorem engine

The direct inherited Euclidean reduction of `CTS` lands on `LPAS`:

```math
\int_0^T\sum_{j\ge N}\left(\sum_{k\le j-C_1}E_k(t)\right)2^{-j}D_j(t)^2dt.
```

So the local theorem engine is

```math
LPAS\Rightarrow CTS\Rightarrow FCTS\Rightarrow Car\Rightarrow FC.
```

## Stronger sufficient routes

A stronger coupled-density theorem also suffices. If

```math
\mathcal A_{\ell,r}(t)\le U(\ell,t)V(r,t),\qquad r\ge c_1\ell,
```

with the corresponding square bounds in `\ell` and `r`, then the Schur/Hardy step gives `FC` directly.

The operator route supplies another sufficient route:

```math
DER+EP\Rightarrow FCTS\Rightarrow Car\Rightarrow FC.
```

There the surviving endpoint theorem is a finite-band or endpoint-square theorem rather than the full moving lower-prefix theorem.

## Result

The implication chain is proved as a conditional reduction:

```math
LPAS\quad\text{or}\quad F2S\quad\text{or}\quad DER+EP
\quad\Longrightarrow\quad CTS\Rightarrow FCTS\Rightarrow Car\Rightarrow FC.
```

The unconditional far-corona closure remains open because none of `LPAS`, `F2S`, or `DER+EP` is installed from the inherited Euclidean inputs.

## Boundary

The far-corona packet remains the live lifted-packet theorem debt. The exact next solvable surface is `LPAS`, or the sharper fixed-band endpoint route `FBE/EP` exposed by the operator reduction.
