# Lifted Packet Signed Continuous-Scale Translation

## Purpose

This note rewrites the exact open weighted packet

```math
\mathfrak H_N^{\mathrm{grad,lift}}[u](t)
:=
\sum_{j\ge N}2^{2j}\big|\mathcal C_j^{lift}(t)\big|
```

in the theorem-primary language already visible on the lane:

1. the signed continuous-scale commutator density `\mathfrak c_\ell`;
2. the upper-boundary packet `\mathfrak B_N^{upper}`;
3. the localized middle-band flux packet `\Pi_N^{mid}`;
4. the far-corona two-scale density `\mathcal A_{\ell,r}` with explicit gap
   kernel `\ell/r`.

The point is simple. The dyadic shell sum records the exact support geometry of
the lifted packet, but it is the wrong proof language. The right proof object
is the signed commutator channel before absolute values and shellwise positive
majorants are introduced.

## Dyadic starting point

The open weighted packet comes from the lifted transport field

```math
b_j^{lift}
:=
(S_{j-4}-S_{N+M})u,
```

so its exact dyadic geometry is

```math
N+M < k < j-4.
\tag{1}
```

This means:

- the transport shell lies strictly above the fixed threshold collar `N+M`;
- it still lies strictly below the active output shell `j`;
- the packet is neither strict low mode, nor spill collar, nor genuine
  near-diagonal high-high.

That support geometry is exact and must be preserved. What must be abandoned is
the old step

```math
\text{dyadic support geometry}
\Longrightarrow
\text{shellwise absolute values}
\Longrightarrow
\text{positive carrier sum}.
\tag{2}
```

The support information in `(1)` is right. The flattening in `(2)` is what
erases the signed refinement structure.

## Continuous-scale translation of the geometry

Pass to a smooth continuous Littlewood-Paley family

```math
P_{\le \ell}:=\varphi(\ell D),
\qquad
Q_\ell:=-\,\ell\partial_\ell P_{\le \ell},
\qquad
u_\ell:=Q_\ell u.
\tag{3}
```

At active shell `j`, the relevant physical scale is
`c_\ell2^{-j}\le\ell\le C_\ell2^{-j}`. The transport shells `k` in `(1)`
correspond to lower frequencies and therefore to larger scales
`c_r2^{-k}\le r\le C_r2^{-k}`. So `(1)` becomes the continuous scale region

```math
\ell \ll r \le \ell_{bot},
\qquad
c_{bot}2^{-(N+M)}\le \ell_{bot}\le C_{bot}2^{-(N+M)}.
\tag{4}
```

Equivalently, the dyadic lifted transport field `(S_{j-4}-S_{N+M})u`
becomes the mesoscopic drift

```math
b_\ell^{meso}
:=
P_{\le c/\ell}u - P_{\le 2^{N+M}}u.
\tag{5}
```

So the exact lifted packet geometry survives intact: it is now a mesoscopic
band below the active edge `\ell^{-1}` and above the fixed threshold
`2^{N+M}`.

## The theorem-primary signed object

The shellwise lifted commutator functional is not the theorem-primary object.
Its signed continuous-scale lift is

```math
\mathfrak c_\ell(x,t)
:=
\ell^{-2}\,
u_\ell(x,t)\,
[Q_\ell,b_\ell^{meso}(t)\cdot\nabla]u(x,t).
\tag{6}
```

Its integrated counterpart is the signed version of the lifted packet:

```math
\mathcal J_N^{lift}(t)
:=
\int_0^{c2^{-N}}
\int_{\mathbb R^3}
\mathfrak c_\ell(x,t)\,dx\,\frac{d\ell}{\ell}.
\tag{7}
```

This is the first point where the lifted packet should be studied. The packet
is not theorem-primary as

```math
\sum_{j\ge N}2^{2j}\big|\mathcal C_j^{lift}\big|,
```

but as the signed commutator density `(6)` whose refinement structure is still
visible.

## Why the signed route is different

Introduce the cumulative commutator potential

```math
\mathcal A_\ell
:=
\ell^{-2}
\big([P_{\le \ell},b_\ell^{meso}\cdot\nabla]u\big)\,
\big(P_{\le \ell}u\big).
\tag{8}
```

Because

```math
Q_\ell=-\,\ell\partial_\ell P_{\le \ell},
\tag{9}
```

the lifted bulk becomes a literal logarithmic scale derivative:

```math
\ell\partial_\ell \mathcal A_\ell
=
\mathfrak c_\ell
+
\mathfrak c_\ell^{transpose}
+
\mathfrak s_\ell^{edge}
+
\mathfrak w_\ell.
\tag{10}
```

After symmetrization and insertion of the Navier--Stokes evolution on
`P_{\le \ell}u`, this becomes

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal S_\ell^{spill}
+
\mathcal E_\ell.
\tag{11}
```

This is the exact place where the signed continuous-scale language beats the
shellwise one:

- the hard lifted bulk is converted into a scale derivative;
- the derivative of the drift hits only the top edge of the mesoscopic band;
- that edge term lands in the already-isolated spill collar, not in the long
  lifted bulk.

So the correct proof order is

```math
\text{signed commutator density}
\Longrightarrow
\text{scale descent / telescoping}
\Longrightarrow
\text{signed lifted estimate}
\Longrightarrow
\text{positive flux theorem}.
\tag{12}
```

Not the reverse.

## First honest theorem target on the signed route

The first theorem yielded by the signed route is not `(L-Flux)`. It is the
signed bound

```math
\left|
\int_0^T
\int_0^{c2^{-N}}
\int_{\mathbb R^3}
\mathfrak c_\ell(x,t)\,dx\,\frac{d\ell}{\ell}\,dt
\right|
\le
\eta\nu\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{L-Signed}
```

This is the theorem-primary replacement for treating
`\mathfrak H_N^{\mathrm{grad,lift}}` as a shellwise positive defect from the
start.

The remaining task on this side is not "sum the shells better". It is:

```math
\text{prove global signed exactness / telescoping on the lifted commutator channel.}
\tag{13}
```

## Middle-band reduction after signed descent

After collar-class reduction and profile renormalization, the signed route
reduces the lifted packet to exactly two continuum objects:

```math
\text{upper boundary packet}
\quad+\quad
\text{middle-band flux packet}.
\tag{14}
```

More precisely, the localized middle-band identity becomes

```math
\chi_{mid}\mathfrak c
\equiv
-\partial_s(\chi_{mid}\widetilde\Psi)
+
\mathcal I^{nose}
+
\mathcal R^{flux}_{mid}
\quad \mod \mathscr A_{collar},
\tag{15}
```

and the residual flux term satisfies

```math
\left|
\int \mathcal R^{flux}_{mid}(s,t)\,ds
\right|
\le C_{\mathrm{mid}}
\Pi_N^{mid}(t),
\tag{16}
```

where

```math
\Pi_N^{mid}(t)
:=
\int_0^{\ell_N}
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\Sigma_\ell^{meso}(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx\,
\frac{d\ell}{\ell}.
\tag{17}
```

So the shellwise lifted packet has been faithfully pushed down to one upper
boundary term and one localized middle-band stress-strain flux term.

## Near / far corona split of the middle band

The middle-band flux is still not theorem-closed, but it has a sharper
continuum structure than the old shell sum.

Split the mesoscopic drift into a bounded-width near corona and a far corona:

```math
b_\ell^{meso}
=
b_\ell^{near,L}+b_\ell^{far,L}.
\tag{18}
```

Then:

1. the near-corona term is a moving same-scale spill packet;
2. the far-corona term carries an explicit scale-gap loss.

The key far-corona estimate is

```math
\Sigma_\ell^{far,L}(x,t)
\le C_L
\int_{e^L\ell}^{\ell_{bot}}
\frac{\ell}{r}\,\widetilde\Sigma_r(x,t)\,\frac{dr}{r},
\tag{19}
```

which yields the exact two-scale kernel reduction

```math
\Pi_N^{mid,far,L}(t)
\le C_L'
\int_0^{\ell_N}
\int_{r\ge c_1\ell}
\frac{\ell}{r}\,\mathcal A_{\ell,r}(t)\,
\frac{dr}{r}\,\frac{d\ell}{\ell},
\tag{20}
```

with coupled transport-stress density

```math
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx.
\tag{21}
```

This is the continuous-scale shadow of the dyadic gap factor `2^{-(j-k)}`.
The point is not that the packet vanished. The point is that the exact
remaining theorem now lives on the coupled two-scale density `(21)`, not on a
one-scale shell carrier.

## What this means for the weighted spectral route

The weighted spectral reduction already isolates the lifted packet as the only
open analytic burden:

```math
\mathrm{Leakage}_1
\le
C\,\widetilde\Lambda_N^\sharp\,T_1
+
\eta\nu Q_1
+
\mathfrak H_N^{\mathrm{grad,lift}}
+
C_*2^{-2\delta N}.
\tag{22}
```

Studying the packet in the signed continuous-scale language means replacing the
raw term `\mathfrak H_N^{\mathrm{grad,lift}}` by the continuum theorem chain

```math
\mathfrak H_N^{\mathrm{grad,lift}}
\rightsquigarrow
\mathfrak c_\ell
\rightsquigarrow
\mathfrak B_N^{upper} + \Pi_N^{mid}
\rightsquigarrow
\Pi_N^{mov\text{-}spill,L} + \mathcal A_{\ell,r}.
\tag{23}
```

So the exact weighted theorem target is still the integrated lifted estimate

```math
\int_0^T \mathfrak H_N^{\mathrm{grad,lift}}[u](t)\,dt
\le
\varepsilon\nu\int_0^T Q_1(t)\,dt
+
C_*2^{-2\delta N},
\tag{24}
```

but the theorem-primary route to `(24)` is now explicit:

- signed exactness / telescoping on `\mathfrak c_\ell`;
- upper-boundary control for `\mathfrak B_N^{upper}`;
- moving-spill control for the near corona;
- a one-sided square / Carleson theorem on the coupled far-corona density
  `\mathcal A_{\ell,r}`.

## Honest boundary

This translation does **not** prove `(24)` or `(L-Signed)`.

What it does settle is the correct theorem language for the lifted packet.
The packet is no longer to be treated as a shellwise positive defect. Its
exact geometry stays dyadic, but its theorem-facing form is continuous and
signed:

```math
\text{support geometry }(N+M<k<j-4)
\quad+\quad
\text{signed commutator descent}
\quad+\quad
\text{two-scale far-corona kernel } \ell/r.
\tag{25}
```

That is the right object to push on next.
