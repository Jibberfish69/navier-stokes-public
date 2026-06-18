# Lifted Packet Three-Piece Closure Program

## Purpose

This note records the exact theorem shape by which the lifted packet closes on
the current classical Navier-Stokes route.

The point is not to search for one new monolithic estimate on the full lifted
packet. The point is to use the reductions already installed on the lane and
close exactly three named objects:

```math
\mathfrak B_N^{upper},
\qquad
\Pi_N^{mov\text{-}spill,L},
\qquad
\Pi_N^{mid,far,L}.
\tag{1}
```

Once those three estimates are proved, the lifted packet satisfies the
coefficient-margin bound needed by the weighted leakage theorem.

## Exact reduction already available

The signed continuous-scale route and the Step 1 local-balance note now show:

1. the transpose/profile rewrite creates no fourth hidden packet;
2. after signed descent and middle-band reduction, the lifted packet reduces to

```math
\text{upper boundary packet}
\quad+\quad
\text{middle-band flux packet};
\tag{2}
```

3. after near/far splitting of the middle band, this becomes

```math
\text{lifted packet}
\Longrightarrow
\mathfrak B_N^{upper}
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L}.
\tag{3}
```

This is exactly the closure surface now supported by:

- [transpose-profile-local-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-profile-local-balance-identity-note.md)
- [lifted-packet-signed-continuous-scale-translation.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-signed-continuous-scale-translation.md)
- [same-scale-multiplier-stability-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-multiplier-stability-program.md)
- [far-corona-cts-lpas-execution-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md)

## Closure criterion

Fix a dissipation budget split

```math
\eta_{ub}+\eta_{ms}+\eta_{far}\le \eta,
\qquad
\eta_{ub},\eta_{ms},\eta_{far}>0.
\tag{4}
```

The lifted packet closes if the following three estimates hold.

### 1. Upper-boundary estimate

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\eta_{ub}\nu\int_0^T D_N(t)\,dt
+
C_{ub,*}2^{-2\delta N}.
\tag{UB}
```

### 2. Moving-spill estimate

```math
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\eta_{ms}\nu\int_0^T D_N(t)\,dt
+
C_{ms,*}2^{-2\delta N}.
\tag{MS}
```

### 3. Far-corona estimate

```math
\int_0^T \Pi_N^{mid,far,L}(t)\,dt
\le
\eta_{far}\nu\int_0^T D_N(t)\,dt
+
C_{far,*}2^{-2\delta N}.
\tag{FC}
```

Then

```math
\int_0^T \mathfrak H_N^{grad,lift}(t)\,dt
\le
\eta\nu\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N},
\tag{5}
```

for `C_* := C_{ub,*}+C_{ms,*}+C_{far,*}`.

This is the exact integrated lifted estimate needed downstream.

## Proof of the closure criterion

The proof is only the already-installed packet reduction plus finite summation.

From `(3)`,

```math
\mathfrak H_N^{grad,lift}
\le C_{\mathrm{3p}}
|\mathfrak B_N^{upper}|
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L}.
\tag{6}
```

Integrate in time and apply `(UB)`, `(MS)`, and `(FC)`:

```math
\int_0^T \mathfrak H_N^{grad,lift}(t)\,dt
\le C_{\mathrm{3p}}
(\eta_{ub}+\eta_{ms}+\eta_{far})\nu\int_0^T D_N(t)\,dt
+
(C_{ub,*}+C_{ms,*}+C_{far,*})2^{-2\delta N}.
\tag{7}
```

Using `(4)` gives `(5)`.

So the packet closes once the three component estimates close.

## How each piece is supposed to close

### A. Upper boundary and moving spill: one same-scale theorem

These are not two unrelated debts. They are one same-scale multiplier-stability
theorem.

The strong theorem target is the finite-family annular order-zero stability
statement `(SS)` from
[same-scale-multiplier-stability-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-multiplier-stability-program.md):

```math
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N}.
\tag{SS}
```

Why this is enough:

- `\mathfrak B_N^{upper}` is a finite-width frozen same-scale packet near
  `\ell_N`;
- `\Pi_N^{mov\text{-}spill,L}` is already reduced to finitely many fixed-offset
  same-scale edge packets.

So:

```math
\text{(SS)}
\Longrightarrow
\text{(UB)}
\quad\text{and}\quad
\text{(MS)}.
\tag{8}
```

This is the clean same-scale side of the closure.

What is already available is slightly weaker but still structural:

- `\mathfrak B_N^{upper}` is already reduced to an explicit finite frozen
  same-scale edge family plus collar residual;
- the finite-family lift from a coefficient-free edge estimate to `(UB)` and `(MS)` is
  already formalized;
- the currently proved coefficient-bearing edge estimate still carries the same-scale
  coefficient term
  \[
  \int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt.
  \]

So the exact remaining same-scale strengthening is:

```math
\text{upgrade the coefficient-bearing theorem `(SS^\sharp)` to the coefficient-free theorem `(SS)`.}
\tag{8A}
```

But this stronger upgrade is no longer required just to keep the same-scale side
from acting as a separate barrier-scale burden on the weighted spectral route.
The note
[same-scale-coefficient-kill-into-weighted-carrier-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-coefficient-kill-into-weighted-carrier-note.md)
shows that the coefficient term in `(SS^\sharp)` is already absorbed by the
installed carrier `\widetilde\Lambda_N^\sharp E_N`. So:

```math
\text{same-scale strong upgrade is optional for standalone packet closure,}
\tag{8B}
```

```math
\text{but same-scale is already reabsorbed on the weighted carrier surface.}
\tag{8C}
```

### B. Far corona: keep the coupled two-scale object

The hard part is not upper boundary or moving spill. It is the far-corona
packet.

The exact far-corona reduction is

```math
\Pi_N^{mid,far,L}(t)
\le C_L
\int_0^{\ell_N}\int_{r\ge c_1\ell}
\frac{\ell}{r}\,\mathcal A_{\ell,r}(t)\,
\frac{dr}{r}\,\frac{d\ell}{\ell},
\tag{9}
```

with coupled density `\mathcal A_{\ell,r}`.

The exact continuum route is

```math
\Pi_N^{mid,far,L}
\Longleftarrow
\mathrm{Car}
\Longleftarrow
\mathrm{FCTS}
\Longleftarrow
\mathrm{CTS},
\tag{10}
```

and this is the theorem that should be tried directly first.

Only if that direct continuum attempt collapses should the route fall back to
the dyadic lower-prefix active-square theorem `(LPAS)`:

```math
\int_0^T
\sum_{j\ge N}
\left(
\sum_{k\le j-C_1}E_k(t)
\right)
2^{-j}D_j(t)^2\,dt.
\tag{11}
```

So the honest far-side execution order is:

```math
\mathrm{CTS}
\Longrightarrow
\mathrm{FCTS}
\Longrightarrow
\mathrm{Car}
\Longrightarrow
\text{(FC)}.
\tag{12}
```

with

```math
\text{(LPAS)}
\quad\text{kept only as fallback debt if the direct continuum route fails.}
\tag{12A}
```

This is the real bottleneck once the same-scale strengthening closes.

## Consequence for the weighted spectral route

Once `(5)` is available, the weighted spectral leakage estimate from
[weighted-spectral-carrier-floor-leakage-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-spectral-carrier-floor-leakage-reduction.md)
closes:

```math
\mathrm{Leakage}_1
\le
C\,\widetilde\Lambda_N^\sharp T_1
+
\eta\nu Q_1
+
\mathfrak H_N^{grad,lift}
+
C_*2^{-2\delta N}
\tag{13}
```

and therefore, after inserting `(5)` and the Littlewood-Paley comparison
`c_{LP}Q_1\le D_N\le C_{LP}Q_1`,

```math
\int_0^T \mathrm{Leakage}_1(t)\,dt
\le
C\int_0^T \widetilde\Lambda_N^\sharp(t)\,T_1(t)\,dt
+
\eta\nu\int_0^T Q_1(t)\,dt
+
C_*2^{-2\delta N}.
\tag{14}
```

So the weighted leakage theorem does not need a new packet theorem beyond the
three-piece closure program.

## What the bottleneck really is

The packet does **not** bottleneck equally on all three sides.

- The upper boundary is same-scale finite-width.
- The moving spill is same-scale finite-family.
- The far corona is the only genuine large-gap theorem.

So the mathematically honest bottleneck sentence is:

```math
\text{the lifted packet closes once (SS) and LPAS/CTS close, and the real hard part is LPAS/CTS.}
\tag{15}
```

## Honest boundary

This note does **not** prove `(SS)` or `(LPAS)`.

What it does settle is the exact theorem shape of packet closure:

```math
\text{three pieces only,}
\qquad
\text{same-scale closes two of them,}
\qquad
\text{far-corona LPAS/CTS closes the third.}
\tag{16}
```
