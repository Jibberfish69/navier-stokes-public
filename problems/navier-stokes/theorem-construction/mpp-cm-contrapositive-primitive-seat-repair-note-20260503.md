# MPP CM Contrapositive Primitive Seat Repair

## Status

Route-custody correction note.

This note does not prove a new PDE theorem.  It repairs the authority seat for
the class-membership contrapositive primitive and quarantines source-pulse
language that had been promoted above its lawful branch role.

## Primitive

The single CM contrapositive primitive is

```math
Exit(Q;\mathfrak O_{\mathrm{NS}}^{work})
:=
\neg Member(Q;\mathfrak O_{\mathrm{NS}}^{work}).
```

At the installed analytic witness level this is represented by

```math
\neg CM_{N,r,Q}(u,p,\Phi),
```

where

```math
CM_{N,r,Q}
=
Pack_Q
\wedge
Part_{N,Q}
\wedge
Field_{N,r,Q}.
```

Thus the primitive witness split is exactly

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}.
```

## Source-pulse role

`SourcePulseCMExit.A` is not the single CM contrapositive primitive.  It is a
source-pulse manifestation / branch theorem seated under the primitive CM-exit
grammar.

Consequently:

1. a proof of `SourcePulseCMExit.A` may be retained as source-pulse branch
   support;
2. it does not by itself close
   `Exit(Q;\mathfrak O_{\mathrm{NS}}^{work})`;
3. it cannot license route-wide claims such as `local class-membership route
   closed`, `none-active`, or `all_discharged` unless the full `not CM` primitive
   has separately been audited through `Pack`, `Part`, and `Field`.

## Repair rule

Every theorem-facing use of `upstream`, `downstream`, `governing primitive`,
`local class-membership route closed`, or `none-active` must now be read against

```math
Exit(Q;\mathfrak O_{\mathrm{NS}}^{work}) := \neg Member(Q;\mathfrak O_{\mathrm{NS}}^{work}),
```

not against `SourcePulseCMExit.A`.

The note

```text
mpp-upstream-downstream-audit-against-sourcepulse-cmexit-note-20260503.md
```

is therefore quarantined as a source-pulse branch audit, not a CM primitive
authority surface.

## Direct consequence

The live route status must be downgraded from local CM closure to

```text
primitive-seat-repair-required
```

until the active authority surfaces are re-audited against

```math
\neg CM_{N,r,Q}
=
\neg(Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}).
```
