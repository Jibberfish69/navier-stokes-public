# Lifted Packet Closure Result

## Closure criterion

The lifted packet has the three-piece reduction

```math
\mathfrak H_N^{grad,lift}
\Longrightarrow
\mathfrak B_N^{upper}
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L}.
```

It closes if

```math
\int_0^T |\mathfrak B_N^{upper}|dt
\le
\eta_{ub}\nu\int_0^TD_Ndt+C_{ub}2^{-2\delta N},
```

```math
\int_0^T\Pi_N^{mov\text{-}spill,L}dt
\le
\eta_{ms}\nu\int_0^TD_Ndt+C_{ms}2^{-2\delta N},
```

and

```math
\int_0^T\Pi_N^{mid,far,L}dt
\le
\eta_{far}\nu\int_0^TD_Ndt+C_{far}2^{-2\delta N}.
```

Then

```math
\int_0^T\mathfrak H_N^{grad,lift}dt
\le
\eta\nu\int_0^TD_Ndt+C_*2^{-2\delta N}.
```

## Same-scale side

The upper-boundary and moving-spill packets reduce to finite same-scale edge packets. The strong coefficient-free same-scale theorem is

```math
(SS):\quad
\int_0^T\Pi_{N,a}^{edge}dt
\le
\varepsilon_a\nu\int_0^TD_Ndt+C_{a,*}2^{-2\delta N}.
```

The installed weighted carrier surface already absorbs the coefficient-bearing same-scale term into

```math
\widetilde\Lambda_N^\sharp E_N.
```

Thus same-scale is controlled on the weighted carrier surface, while coefficient-free `SS` remains a stronger standalone theorem.

The moving-spill side is now explicit:

```math
\int_0^T\Pi_N^{mov\text{-}spill,L}dt
\le
\varepsilon\nu\int_0^TD_Ndt
+
C_{\varepsilon,L,\nu}\int_0^T\widetilde\Lambda_N^\sharp E_Ndt.
```

So moving spill is not an independent open theorem on the weighted-carrier
route.  The pure coefficient-free estimate remains open only as a stronger
standalone replacement for spending the carrier.

## Far-corona side

The genuine lifted-packet bottleneck is

```math
\Pi_N^{mid,far,L}.
```

The recorded closure chain is

```math
CTS\Rightarrow FCTS\Rightarrow Car\Rightarrow FC.
```

Equivalently, the fallback dyadic target is the lower-prefix active-square theorem `LPAS`.

## Result

The lifted packet is conditionally closed under same-scale weighted carrier control plus far-corona closure. The currently open middle-band piece is the far-corona theorem:

```math
CTS/FCTS/Car\Rightarrow FC
```

or its fallback `LPAS` form.

## Boundary

This note does not prove `CTS`, `FCTS`, `Car`, `FC`, or `LPAS`. It isolates the exact remaining lifted-packet theorem after same-scale reabsorption into the weighted carrier surface.
