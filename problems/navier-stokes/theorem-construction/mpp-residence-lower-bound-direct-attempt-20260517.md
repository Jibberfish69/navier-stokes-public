# MPP ResidenceLowerBound.A Direct Attempt

Date: 2026-05-17

Status: failed direct theorem.

Purpose: test whether same-fluid ancestry and terminal packet geometry supply the time-thickness modulus required by `TerminalTimeFaceAntiAtom.A`.

## 0. Target

The desired theorem is

```math
\boxed{ResidenceLowerBound.A.}
```

A useful form would give a terminal residence interval lower bound

```math
|I_P\cap [T-\varepsilon,T]|\ge c_R>0
```

for every active retained terminal source packet carrying a fixed amount of normalized source mass in `B_R`.

A weaker scale-aware form would still need a modulus strong enough to imply

```math
\nu_N^{src,+}(B_R\times[T-\varepsilon,T])
\le \omega_R(\varepsilon)+o_N(1),
\qquad \omega_R(\varepsilon)\to0.
```

## 1. What ancestry supplies

Same-fluid ancestry supplies lineage:

```text
parent/child relation,
transported same-fluid carrier,
compatibility of selected terminal packets with the fluid path.
```

It gives a route for the source packet.  It does not assign a macroscopic time length to the route.

## 2. Parabolic scale obstruction

A terminal packet at spatial scale `r_N` naturally has a parabolic time window

```math
\tau_N:=r_N^2.
```

Along a Zeno branch,

```math
r_N\downarrow0,
\qquad \tau_N\downarrow0.
```

The normalized source mass remains exactly one while the physical time support shrinks:

```math
F_N^{src,+}(t):= \tau_N^{-1}\mathbf 1_{[T-\tau_N,T]}(t).
```

Indeed \(\int F_N^{src,+}(t)\,dt=1\).

This model preserves the `L^1_t` budget and violates every macroscopic residence lower bound.

## 3. Scale-aware residence test

A scale-aware residence estimate of the form

```math
|I_P|\ge c_{\mathrm{res}}r_P^2
```

is already compatible with terminal atoms after rescaling.  It gives the natural packet duration and still permits all source mass to sit in shrinking terminal slabs.

For `ResidenceLowerBound.A` to imply `TerminalTimeFaceAntiAtom.A`, the required
input is either a lower bound independent of the terminal scale or a
compensating decay of source mass with scale.  The latter is exactly a
parent-charge quantum or active-square reserve theorem.

## 4. Verdict

`ResidenceLowerBound.A` fails from the installed packet and ancestry data. Same-fluid ancestry gives lineage and scale-local residence. It supplies no terminal time-slab modulus.

The route now passes to the next possible mechanism:

```math
\boxed{ScaleInvariantParentChargeQuantum.A.}
```

which would add a lower source cost per shrinking terminal residence window.
