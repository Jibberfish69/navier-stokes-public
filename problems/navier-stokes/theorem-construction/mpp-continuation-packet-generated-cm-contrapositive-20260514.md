# MPP Continuation-Packet-Generated CM Contrapositive

## Status

Methodology repair note for the CM-exit proof program.

## Point

The CM contrapositive program generates its failure surfaces from the
continuation packet.

The governing move is:

```math
\text{continuation packet persists near }T_*
\Longrightarrow
\text{classical continuation past }T_*.
```

Contrapositively:

```math
\text{finite terminal non-continuation at }T_*
\Longrightarrow
\text{failure of at least one continuation-packet slot}.
```

That is the disciplined source of failure types. A candidate obstruction is a
live CM-exit surface only when it is one of those slot failures, or when a
checked bridge lands it in one of those slot failures.

## Installed Inputs

The relevant installed readout is:

- `mcp-pointwise-class-readout-to-h-s-continuation-norm-ecq-a-08ac0ba729.md`;
- `mcp-final-continuation-readout-from-pctp-hard-ecq-a-72c63501ed.md`;
- `mpp-exact-class-membership-witness-theorem.md`;
- `mpp-member-smooth-contrapositive-witness-bridge-20260504.md`;
- `mpp-six-positive-contrapositive-chunks-completion-20260506.md`.

The clean continuation index is the classical `H^s(T^3)` index with `s>5/2`.
The older `H^1` row remains only an energy-level support/reduction row. This
note uses the installed `H^s` continuation readout because it is the classical
continuation packet.

## Continuation Packet

Fix a finite terminal time `T_*` for a maximal classical Navier--Stokes
solution. On a retained terminal cover, choose depth `N` dominating some
`s>5/2`.

Write `Cont_N(T_*)` for the following packet.

1. Carrier slot. A finite same-fluid retained cover with bounded overlap and
   bounded deformation. In the CM grammar this is the Pack-side slot.
2. Participation slot. The differentiated Navier--Stokes tower law and finite
   forcing participation through depth `N`. In the CM grammar this is the
   Part-side slot.
3. Coherence slot. One-field finite-difference coherence at positive scale,
   enough to patch local tower packets as one velocity field. In the CM grammar
   this is the Field-side slot.
4. Readout slot. The pointwise tower and pressure-forcing readout, such as
   `DTC.Read`, needed to turn the local Part/Field witness into
   `sup_{t<T_*} ||u(t)||_{H^s}<infty`.

The installed pointwise readout note proves that these slots give:

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Set `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}`. Classical periodic `H^s` local
theory at `s>5/2` gives `\tau=\tau(\nu,s,M_s)>0`; choosing
`t_j\uparrow T_*` with `T_*-t_j<\tau/2`, the relaunch from `u(t_j)` exists past
`T_*` and agrees with the original solution on the overlap by uniqueness.

## Theorem `ContPacket.CM.A`

If `Cont_N(T_*)` persists on a retained terminal cover for some `N` dominating
`s>5/2`, then `T_*` is not a finite terminal non-continuation time.

### Proof

The carrier, participation, and coherence slots are exactly the local
Part/Field witness package on the retained cover:

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

The readout slot is the bridge from that local witness package to a global
`H^s` continuation norm. Finite overlap and shared one-field coherence allow
the local tower bounds to sum to

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

The `H^s`, `s>5/2`, local Navier--Stokes theory gives a uniform lifespan from
times approaching `T_*`. Relaunching from `t_j\uparrow T_*` extends the
classical solution beyond `T_*`, contradicting maximality.

## Contrapositive `ContPacket.CM.B`

Finite terminal non-continuation forces failure of `Cont_N(T_*)` for every
admissible retained terminal cover and every depth high enough for the
classical continuation readout.

Equivalently, a genuine terminal failure must be witnessed by at least one of
the following missing CM slots:

1. carrier/cover failure, landing in Pack or a Pack bridge;
2. tower participation/forcing failure, landing in Part or a Part bridge;
3. one-field coherence failure, landing in Field or a Field bridge.

The `H^s` readout is a proof bridge from the CM witness package to the
classical continuation norm. If that bridge is missing, the repo has a bridge
gap. It is not a fourth CM failure face and does not steer the CM-exit calculus
as a PDE failure type.

## Methodological Rule

A theorem surface is allowed to steer the CM-exit program only after this
question has a checked answer:

```text
Which continuation-packet slot does its failure negate?
```

If the answer is Part or Field, the surface can be used as CM-exit work.
If the answer is only the `H^s` readout bridge, the surface is bridge-licensing
work from CM to continuation, not a CM-exit failure surface.

If the answer is only that the surface suppresses a possible bad analytic
scenario, the surface is supplier or diagnostic work. It may help later, but it
does not define the CM failure calculus.

## Consequence For Source-Wall Surfaces

Source-pileup and scale-critical Carleson surfaces become live CM-exit targets
only when their failure is proved to be the exact obstruction to a continuation
slot.

Without that bridge, they remain useful diagnostic or supplier language. They
do not by themselves answer the contrapositive question:

```math
\text{finite non-continuation}
\Longrightarrow
\neg Pack\ \vee\ \neg Part\ \vee\ \neg Field.
```
