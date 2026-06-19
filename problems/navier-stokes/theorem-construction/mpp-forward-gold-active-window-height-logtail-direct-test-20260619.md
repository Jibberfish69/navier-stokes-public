# MPP Forward Gold Active-Window Height / Log-Tail Direct Test

Date: 2026-06-19

## Status

Direct active-window height test complete.  The algebra is sharper than the
previous source-square summary: a genuinely global active tail-height bound
already closes the native source-square reserve.  A separate logarithmic
high-tail moment is needed only for weaker height statements that see a selected
edge or selected packet but not the whole cumulative tail.

The current Navier-Stokes inputs do not prove the global height bound.

## 1. Reserve and tail height

Write

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
D_\ell(t)=\nu\|\nabla u_\ell(t)\|_2^2.
\tag{AWH.1}
```

The native source-square reserve is

```math
\mathcal R_N(W)
:=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt.
\tag{AWH.2}
```

The active tail height is

```math
H_N(W)
:=
\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{AWH.3}
```

Then, pointwise in time,

```math
T_k(t)\le H_N(W)2^{-k}.
\tag{AWH.4}
```

Hence

```math
\sum_{k>N}T_k(t)
\le
H_N(W)\sum_{k>N}2^{-k}
\le
C\,H_N(W)2^{-N}.
\tag{AWH.5}
```

Using \(2^kT_k(t)^2\le H_N(W)T_k(t)\), we get

```math
\mathcal R_N(W)
\le
H_N(W)\int_W\sum_{k>N}T_k(t)\,dt
\le
C\,|W|\,H_N(W)^2\,2^{-N}.
\tag{AWH.6}
```

Therefore the global active-height theorem

```math
\sup_N H_N(W_N)\le C_{legal}
\tag{AWH.7}
```

on terminal windows with uniformly bounded physical time length implies

```math
\mathcal R_N(W_N)\to0.
\tag{AWH.8}
```

So the exact global-height route is:

```math
\boxed{
ActiveWindowHeight.A
\Longrightarrow
SourceSquareReserve.A.
}
\tag{AWH.9}
```

No independent logarithmic tail hypothesis is needed when
`ActiveWindowHeight.A` is interpreted as `(AWH.3)` uniformly over the whole
cumulative tail.

This also shows why global active height is not a small bookkeeping theorem.
Since

```math
T_k(t)=\sum_{\ell>k+4}\nu 2^{2\ell}\|u_\ell(t)\|_2^2,
\tag{AWH.9a}
```

the global height bound gives, after the harmless finite index shift,

```math
\sum_{\ell>N}\nu 2^{2\ell}\|u_\ell(t)\|_2^2
\le
C\,2^{-N}
\tag{AWH.9b}
```

uniformly on the terminal window.  Low shells are bounded at each fixed cutoff
by energy:

```math
\sum_{\ell\le N}2^{2\ell}\|u_\ell(t)\|_2^2
\le
C_N\|u(t)\|_2^2.
\tag{AWH.9c}
```

Thus global active height supplies a uniform \(H^1\) bound up to the terminal
time.  As a Navier-Stokes input, it is continuation-strength; it cannot be
treated as a cheap consequence of the first-moment energy ledger.

## 2. Where the logarithmic tail enters

The weaker algebraic inequality is

```math
\mathcal R_N(W)
\le
H_N(W)\,\widetilde{\mathcal F}_N(W),
\tag{AWH.10}
```

where

```math
\widetilde{\mathcal F}_N(W)
:=
\int_W\sum_{\ell>N+4}(\ell-N-4)D_\ell(t)\,dt
=
\int_W\sum_{k>N}T_k(t)\,dt.
\tag{AWH.11}
```

This form matters if the available theorem controls only a selected active
edge height or a packet-local height, rather than the global supremum in
`(AWH.3)`.  In that weaker setting the unused cumulative tail still carries the
logarithmic multiplicity, so one must also prove

```math
\widetilde{\mathcal F}_N(W)\to0.
\tag{AWH.12}
```

Energy gives only

```math
\mathcal F_N(W)
:=
\int_W\sum_{\ell>N}D_\ell(t)\,dt,
\tag{AWH.13}
```

and this does not imply `(AWH.12)`.  A summable shell sequence need not have a
summable logarithmic moment.

Thus the corrected sufficiency split is:

```math
\boxed{
\text{global }H_N\text{ bound}
\quad\text{or}\quad
\text{weaker selected-height bound }+\text{ log-tail control}.
}
\tag{AWH.14}
```

## 3. Heat-scale pulse identifies the missing height cap

On a heat-scale interval

```math
|I_m|=h_m=2^{-2m},
\tag{AWH.15}
```

set

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
A_m=2^{-3m/2}.
\tag{AWH.16}
```

Then

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt=A_m\to0,
\tag{AWH.17}
```

but the \(k=m\) reserve contribution is

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=1.
\tag{AWH.18}
```

The logarithmic tail also tends to zero for this one-shell model:

```math
\widetilde{\mathcal F}_N(I_m)
\sim
(m-N)A_m
\to0
\qquad (m\to\infty,\;N\text{ fixed or }N\le m).
\tag{AWH.19}
```

So log-tail control alone does not close the reserve.  The active height blows
up:

```math
H_N(I_m)
\ge
2^mA_mh_m^{-1}
=
2^{3m/2}.
\tag{AWH.20}
```

This shows exactly what `ActiveWindowHeight.A` would have to forbid.

## 4. Installed inputs do not prove global height

### Energy

Energy supplies the first moment

```math
\int_0^{T_*}\sum_{\ell>N}D_\ell(t)\,dt\to0.
\tag{AWH.21}
```

It does not control the pointwise quantity

```math
\sup_t\sup_{k>N}2^kT_k(t).
\tag{AWH.22}
```

The heat-scale model `(AWH.15)`--`(AWH.20)` is the exact bookkeeping
obstruction.

### Preterminal smoothness

For fixed \(t<T_*\) and fixed shell, smoothness gives finite amplitudes.  The
height theorem is a coupled terminal statement:

```math
k\to\infty,
\qquad
t\uparrow T_*.
\tag{AWH.23}
```

Fixed-shell preterminal bounds do not supply a uniform terminal high-tail
height cap.

### Participation

The participation law says the selected packet remains part of the same coupled
Navier-Stokes relation,

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{AWH.24}
```

At frequency \(2^m\), viscosity acts on time scale \(2^{-2m}\).  This explains
why the heat-scale window is the dangerous one; it does not give the pointwise
amplitude bound `(AWH.22)`.

### Pack gauge

The checked Pack-gain note shows that finite deformation gauge does not imply
accumulated positive strain-action.  Rapid trace-free positive/negative strain
oscillation can keep net deformation bounded while the positive strain action
diverges.  Therefore the current `Pack_Q` gauge does not supply
`ActiveWindowHeight.A`.

### Viscous shell balance

The shell law

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t)
\tag{AWH.25}
```

damps only after the native source \(F_j\) fails to replenish the shell.  A
source-balanced pulse with

```math
F_j(t)\ge(c-\kappa)\nu D_j(t)
\tag{AWH.26}
```

is still compatible with the installed inputs.  Excluding `(AWH.26)` is exactly
the missing source-normalization / positive-remainder-depletion theorem.

## 5. Exact reduced bridge

The direct active-height route now reduces to one of the following precise
suppliers:

```math
\boxed{
ActiveWindowHeight.A
}
\tag{AWH.27}
```

in the global form `(AWH.3)`;

```math
\boxed{
\text{SelectedHeight.A}
+ LogTailDissipationMoment.A
}
\tag{AWH.28}
```

for a weaker selected-edge height theorem;

```math
\boxed{
ReserveCreationCharge.A
}
\tag{AWH.29}
```

as a dynamic first-creation contraction; or

```math
\boxed{
PositiveRemainderDepletion.A
\text{ / source-residence / compact no-waste rigidity}
}
\tag{AWH.30}
```

as an indirect way to forbid source-balanced heat-scale pulses.

The current repo inputs prove none of these unconditionally.

## Verdict

The active-height route is mathematically clean but still open:

```math
\boxed{
\text{uniform global active tail height would close the source-square reserve,}
}
\tag{AWH.31}
```

while the present Navier-Stokes balances give only first-moment visibility and
do not supply that height throttle.

The remaining heat-scale pulse is therefore not a hidden spatial point defect.
It is a terminal time-concentration defect whose missing exclusion is exactly a
pointwise height, source-residence, or no-waste rigidity theorem.
