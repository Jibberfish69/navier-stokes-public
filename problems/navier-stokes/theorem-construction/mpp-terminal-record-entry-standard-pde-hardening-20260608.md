# MPP Terminal Record Entry Standard PDE Hardening

Date: 2026-06-08

Status: terminal-record entry hardened in standard PDE language; Clay-closing bridge still open.

## Claim

A finite-time Clay breakdown assumption for smooth divergence-free data already supplies the same-solution terminal record needed for the CM terminal-entry test.

More precisely, let `u_0` be smooth divergence-free data on the chosen domain and let `u` be the corresponding maximal classical Navier-Stokes solution on `[0,T_*)`, with `T_* < infinity` and no classical continuation past `T_*`.

Then, for every Sobolev exponent `s > 5/2` used to parametrize the classical solution class on `T^3`, the continuation norm cannot remain bounded up to `T_*`:

```text
limsup_{t -> T_*} ||u(t)||_{H^s} = infinity.
```

Equivalently, there is a sequence `t_n -> T_*` along the same solution such that the classical readout norm diverges or the continuation criterion fails.

## Proof

This is the standard maximal-solution argument.

Local well-posedness in `H^s`, `s > 5/2`, gives a continuation theorem: if the same classical solution remains bounded in the continuation norm on `[0,T_*)`, then the local existence theorem can be restarted from times approaching `T_*` with a uniform positive lifespan. That restarts the same solution past `T_*`.

The finite Clay breakdown assumption says exactly that this same classical solution has no such continuation past `T_*`. Therefore the bounded-continuation alternative is impossible. The continuation norm must fail along times approaching `T_*`.

This produces a same-solution terminal record:

```text
(u_0, u, T_*, t_n -> T_*, continuation-readout failure for u(t_n)).
```

No internal CM language is needed for this entry step. The record comes directly from the standard PDE formulation of finite maximal classical breakdown.

## Consequence For The CM Route

This hardens only the entry side of `ClayTerminalWitnessCMEntry.A`.

A Clay finite-breakdown allegation can be fed into the CM terminal packet because it supplies:

1. the original smooth datum;
2. the same maximal classical solution;
3. a finite terminal time;
4. a same-solution preterminal readout sequence approaching that time;
5. failure of the standard continuation criterion.

That is enough to remove the referee objection that the CM terminal-entry step depends on internal terminology rather than on the PDE problem statement.

## Remaining Clay-Closing Burden

This note does not prove the finite-breakdown exclusion.

The remaining bridge is still:

```text
ClayAdmissibleFiniteBreakdown(W_*) and classified Exit(Q)
=> contradiction with W_* being a valid finite Clay breakdown counterexample.
```

Equivalently, the proof still needs branch-native face exclusion or another noncircular argument showing that the terminal Pack/Part/Field face failure cannot occur for the original smooth-data solution.

So this note closes the terminal-record entry hardening gap and leaves the Clay-closing bridge gap active.
