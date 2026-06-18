# MPP Terminal Record Entry PDE Hardening

Date: 2026-06-08

Status: terminal-record entry hardened in classical PDE language; generic Clay-closing bridge superseded by the finite-obstruction inventory.

## Claim

A finite-time Clay breakdown assumption for smooth divergence-free data already supplies the same-solution terminal record needed for the CM terminal-entry test.

More precisely, let `u_0` be smooth divergence-free data on the chosen domain and let `u` be the corresponding maximal classical Navier-Stokes solution on `[0,T_*)`, with `T_* < infinity` and no classical continuation past `T_*`.

Then, for every Sobolev exponent `s > 5/2` used to parametrize the classical solution class on `T^3`, the continuation norm cannot remain bounded up to `T_*`:

```text
limsup_{t -> T_*} ||u(t)||_{H^s} = infinity.
```

Equivalently, there is a sequence `t_n -> T_*` along the same solution such that the classical readout norm diverges or the continuation criterion fails.

## Proof

The proof spends the local theory only through the exact bounded-norm relaunch
statement. Suppose, toward contradiction, that the same classical solution has
a finite continuation bound

```math
M_s:=\sup_{0\le t<T_*}\|u(t)\|_{H^s}<\infty.
\tag{TRE.1}
```

The `H^s`, `s>5/2`, local Navier-Stokes theorem supplies a lifespan

```math
\tau=\tau(\nu,s,M_s)>0
\tag{TRE.2}
```

depending only on the displayed bound. For any sequence `t_j\uparrow T_*`,
choose `j` with `T_*-t_j<\tau/2`. Relaunching the Navier-Stokes system from
the data `u(t_j)` gives a classical solution `v_j` on `[t_j,t_j+\tau]`.
Classical `H^s` uniqueness identifies `v_j=u` on the overlap `[t_j,T_*)`, so
`v_j` extends the same original branch beyond `T_*`.

The finite Clay breakdown assumption says exactly that this same classical solution has no such continuation past `T_*`. Therefore the bounded-continuation alternative is impossible. The continuation norm must fail along times approaching `T_*`.

This produces a same-solution terminal record:

```text
(u_0, u, T_*, t_n -> T_*, continuation-readout failure for u(t_n)).
```

No internal CM language is needed for this entry step. The record comes directly from the classical PDE formulation of finite maximal classical breakdown.

## Consequence For The CM Route

This hardens only the entry side of `ClayTerminalWitnessCMEntry.A`.

A Clay finite-breakdown allegation can be fed into the CM terminal packet because it supplies:

1. the original smooth datum;
2. the same maximal classical solution;
3. a finite terminal time;
4. a same-solution preterminal readout sequence approaching that time;
5. failure of the named PDE relaunch criterion on the stated classical surface.

That is enough to remove the referee objection that the CM terminal-entry step depends on internal terminology rather than on the PDE problem statement.

## Supersession Boundary

This note hardens terminal-record entry. The later finite-obstruction inventory
reconciles the old generic bridge demand: a promoted finite terminal row must
either pass as the same-solution `Member(Q)` branch or fail a named Pack, Part,
or Field face and therefore support `Exit(Q):=not Member(Q)`.

So this note closes the terminal-record entry hardening gap. A future reopening
has to name a concrete promoted terminal obstruction row lacking CM-test entry,
finite-failure exhaustion, or CM contrapositive embedding.
