---
theorem_id: forward-gold-active-height-source-residence-production-boundary-20260620
status: direct-boundary-installed-forward-gold-not-proved
logical_landing_node: active_height_source_residence_square_boundary
edge_effect: "Connects the active-height/source-residence branch to the same-carrier source-square finality wall. Global active height closes SourceSquareReserve.A, and super-L1 source residence closes endpoint UI, but neither is produced by installed energy, local-energy, participation, enstrophy, pressure, or finite donor ledgers. Active height and source residence are square-strength or super-L1 producers, not lower consequences."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-window-height-logtail-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-height-enstrophy-throttle-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-super-l1-source-residence-sharpness-after-zeno-child-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-production-finality-20260620.md
downstream_consequence: "Do not reopen active height, source residence, reverse Holder, or dwell thickness as independent smaller suppliers unless the theorem actually proves a pointwise height cap, a selected-height plus log-tail package, a same-carrier super-L1 modulus, or a square-strength no-waste/saturation substitute on the actual selected carrier."
---

# MPP Forward-Gold Active-Height / Source-Residence Production Boundary

Date: 2026-06-20

## Status

This note records the exact boundary after the source-square finality note.

Active height and source residence are valid producer languages.  They are not
lower consequences of the installed Navier--Stokes ledgers.

## 1. Global active height really would close source-square

Let

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
D_\ell(t)=\nu\|\nabla u_\ell(t)\|_2^2,
\tag{AHSR.1}
```

and

```math
R_N(W):=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt.
\tag{AHSR.2}
```

Define the global active tail height

```math
H_N(W):=
\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{AHSR.3}
```

Then \(T_k(t)\le H_N(W)2^{-k}\), so

```math
\sum_{k>N}T_k(t)
\le
C\,H_N(W)2^{-N}.
\tag{AHSR.4}
```

Since \(2^kT_k(t)^2\le H_N(W)T_k(t)\),

```math
R_N(W)
\le
H_N(W)\int_W\sum_{k>N}T_k(t)\,dt
\le
C\,|W|\,H_N(W)^2\,2^{-N}.
\tag{AHSR.5}
```

Thus

```math
\boxed{
\sup_NH_N(W_N)<\infty
\Longrightarrow
R_N(W_N)\to0
}
\tag{AHSR.6}
```

on terminal windows with uniformly bounded physical time length.  This is a
real proof of

```math
\boxed{
ActiveWindowHeight.A
\Longrightarrow
SourceSquareReserve.A.
}
\tag{AHSR.7}
```

for the global-height meaning of `ActiveWindowHeight.A`.

## 2. Why global height is continuation-strength

The same height bound gives

```math
T_N(t)
=
\sum_{\ell>N+4}\nu 2^{2\ell}\|u_\ell(t)\|_2^2
\le
H_N(W)2^{-N}.
\tag{AHSR.8}
```

With a uniform bound on \(H_N(W)\), the high-frequency \(H^1\) tail satisfies

```math
\sum_{\ell>N}\nu 2^{2\ell}\|u_\ell(t)\|_2^2
\le
C2^{-N}
\tag{AHSR.9}
```

after a fixed index shift.  Low shells are bounded by the energy at each fixed
cutoff.  So global active height supplies a uniform terminal \(H^1\)-tail
statement.  It is a continuation-strength theorem, not a bookkeeping corollary
of energy.

## 3. Selected height needs log-tail

The weaker identity is

```math
R_N(W)
\le
H_N(W)\,\widetilde F_N(W),
\tag{AHSR.10}
```

where

```math
\widetilde F_N(W)
:=
\int_W\sum_{\ell>N+4}(\ell-N-4)D_\ell(t)\,dt
=
\int_W\sum_{k>N}T_k(t)\,dt.
\tag{AHSR.11}
```

This is the correct form when the available theorem controls only a selected
edge height or packet-local height.  Then the remaining cumulative tail still
has logarithmic multiplicity.  A selected/local height statement without
`(AHSR.11)` does not close source-square.

Log-tail alone also does not close the reserve.  On the heat-scale one-shell
model

```math
h_m=2^{-2m},
\qquad
D_{m+5}(t)=2^{-3m/2}h_m^{-1}{\bf 1}_{I_m}(t),
\tag{AHSR.12}
```

the first moment and log-tail tend to zero, while

```math
\int_{I_m}2^mT_m(t)^2\,dt=1
\tag{AHSR.13}
```

and

```math
H_N(I_m)\ge2^{3m/2}.
\tag{AHSR.14}
```

The missing object is the height cap, not another first-moment tail.

## 4. Source residence is a super-\(L^1\) producer, not a lower theorem

For the selected normalized source marginal \(a_m(s)\), source residence in
any super-\(L^1\) form gives endpoint uniform integrability.  If

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds\le C_p,
\qquad p>1,
\tag{AHSR.15}
```

then Holder gives

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
C_p^{1/p}\theta^{1-1/p},
\tag{AHSR.16}
```

and hence

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
\tag{AHSR.17}
```

So reverse Holder, Orlicz/de la Vallee-Poussin, dwell thickness, or source
residence are valid anti-atom producers when they are proved on the actual
selected carrier.  They are not produced by finite \(L^1_s\) mass, same-fluid
ancestry, no-earlier support, local energy trace compactness, heat smoothing
over vanishing time, or material participation with radius-discounted action.

The sharp terminal layer

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)
\tag{AHSR.18}
```

has bounded \(L^1_s\) mass, violates `(AHSR.17)`, and has divergent
\(L_s^p\) norm for every \(p>1\).

## 5. What current inputs do not supply

The current inputs do not prove the height or residence producer.

Energy gives first moments, not pointwise height.  Local energy records the
source channel, but does not give a positive-part square cap.  Participation
couples feed, drain, pressure, viscosity, and legal exchange, but on heat scale
the feed and drain clocks are neutral.  Enstrophy identifies vortex stretching,
but the resulting Riccati inequality permits finite-time growth.  Pressure is
elliptic on each time slice and does not spread the terminal time layer.
Finite donor balance pays linear transfer, not height squared.

## Verdict

The active-height/source-residence branch has the following exact status:

```math
\boxed{
\text{global active height or same-carrier super-}L^1\text{ residence would
close the heat-scale pulse.}
}
\tag{AHSR.19}
```

```math
\boxed{
\text{installed Navier--Stokes inputs do not produce either one.}
}
\tag{AHSR.20}
```

Therefore this branch returns to the same producer wall:

```math
\boxed{
\text{square-strength or super-}L^1\text{ control on the actual selected carrier.}
}
\tag{AHSR.21}
```

Without that producer, active height is visibility and source residence is a
sufficient-but-unproved anti-atom theorem; neither is a completed forward-gold
proof.
