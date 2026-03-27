# Four-Body Regularity Circuit And Ontic Extension

## Status

This note freezes the exact architectural logic of the classical four-body
strategy and records how that same loop extends into the larger ontic picture.

It is not a discharged theorem packet. It is a permanent route-definition note.

The classical circuit is stated here as the operative proof mechanism.
The ontic extension is also stated here, but it still needs more theorem-grade
detail before it can count as a complete proof surface.

## Classical Packet

The classical four-body strategy should be read as one propagated bound packet
rather than four isolated theorem targets:

```text
\mathcal P_cl(T) = (S_cl(T), Q_cl(T), C_cl(T), G_cl(T)).
```

The entries mean:

- `S_cl(T)` controls the high-frequency scale limit.
- `Q_cl(T)` controls the total nonlinear transfer budget.
- `C_cl(T)` forces blowup or approximation sequences to converge to an exact
  Navier-Stokes object.
- `G_cl(T)` controls the derivative-level continuation quantity on that exact
  object.

The classical proof circuit is:

```text
S_cl -> Q_cl,
(S_cl, Q_cl) -> C_cl,
C_cl -> G_cl,
G_cl -> S_cl.
```

So the real classical theorem target is:

```text
\mathcal P_cl(T) -> \mathcal P_cl(T^+)
```

for a slightly later time `T^+ > T`.

## Classical Meaning Of The Four Bodies

### Body I: Scale barrier

This body controls ultraviolet escape.
It asserts quantitative tail decay strong enough to keep the high-frequency
packet summable.

Its output is `S_cl(T)`.

### Body II: Monotone functional

This body controls the total cascade budget.
It asserts a global coercive bound on the bulk nonlinear transfer budget.

Its output is `Q_cl(T)`.

### Body III: Non-Sobolev compactness

This body converts the joint packet `(S_cl, Q_cl)` into no-defect closure of
solution sequences.

Its output is `C_cl(T)`.

### Body IV: Curvature or gradient regularity

This body acts on the exact limit object produced by `C_cl(T)` and bounds the
continuation norm strongly enough to rule out the derivative growth required for
blowup.

Its output is `G_cl(T)`.

## Classical Closure Logic

The proof does not proceed by solving four disconnected tasks.
It proceeds by realizing the transfer arrows between adjacent bodies.

The intended logic is:

1. `S_cl -> Q_cl`
   Tail decay makes the total nonlinear budget finite and stable.

2. `(S_cl, Q_cl) -> C_cl`
   Tail control and bulk control jointly force strong enough compact closure to
   prevent oscillation, concentration, or defect objects.

3. `C_cl -> G_cl`
   Once the limit profile is exact rather than defective, the derivative-level
   regularity mechanism lands on a genuine Navier-Stokes object.

4. `G_cl -> S_cl`
   Once gradients remain controlled, the nonlinear transfer into very high
   frequencies remains controlled, so the scale barrier is re-certified.

That is the inward-pointing regularity circuit.

Global regularity follows once:

```text
\mathcal P_cl(T) -> \mathcal P_cl(T^+)
```

holds on one common classical solution class for every finite time.

## Open-Closed Form Of The Classical Claim

The classical program should be read as an open-closed propagation argument.

If the packet

```text
\mathcal P_cl(T) = (S_cl(T), Q_cl(T), C_cl(T), G_cl(T))
```

holds up to time `T`, and one full pass through the circuit yields the same
packet at a later time `T^+ > T`, then continuation never fails.

So the real burden is not "prove Body I" or "prove Body IV" in isolation.
The real burden is:

```text
prove the transfer arrows strongly enough that the packet propagates.
```

## Ontic Extension

The same packet logic should also be applied on the ontic side.

The ontic packet should be written as:

```text
\mathcal P_ont(T) = (S_ont(T), Q_ont(T), C_ont(T), G_ont(T)).
```

Here:

- `S_ont(T)` controls carrier/coherence scale escape.
  Off-block leakage, destructive tail formation, and incoherent transport away
  from the coherent carrier remain lower order.

- `Q_ont(T)` controls the ontic transport budget.
  The physical-sector defect budget, carrier energy, and leakage cost remain
  coercively bounded.

- `C_ont(T)` is ontic no-defect closure.
  The projected NC flow closes on the exact / persistent / tail split with no
  uncontrolled pseudo-solution.

- `G_ont(T)` controls ontic continuation and admissibility.
  The projected flow stays in the physical sector and preserves the
  continuation-level control needed to keep the carrier packet meaningful.

The ontic circuit should be:

```text
S_ont -> Q_ont,
(S_ont, Q_ont) -> C_ont,
C_ont -> G_ont,
G_ont -> S_ont.
```

So the ontic theorem target should likewise be:

```text
\mathcal P_ont(T) -> \mathcal P_ont(T^+).
```

## Bridge Between The Two Sides

The split only works if there is a packet-transfer theorem from the ontic side
to the classical side.

That bridge should have the form:

```text
\mathfrak B_T : \mathcal P_ont(T) => \mathcal P_cl(T).
```

This bridge should decompose into four transfer arrows:

- `B_S : S_ont -> S_cl`
- `B_Q : Q_ont -> Q_cl`
- `B_C : C_ont -> C_cl`
- `B_G : G_ont -> G_cl`

Its meaning is:

- the exact sector is real but shadow-washout / pressure-type / nonpersistent
  in the classical readout;
- the persistent sector is real and exports directly;
- the tail sector is real and exports only as a controlled remainder.

So the bridge is not "discard the ontic proof and restart classically."
It is:

```text
ontic propagated control => classical propagated control.
```

## Unified Picture

The full split should therefore be read as three coupled theorem objects:

1. the ontic propagation circuit
2. the packet-transfer bridge
3. the classical propagation circuit

In ideal form, the architecture is the commuting square:

```text
\mathcal P_ont(T)  ->  \mathcal P_ont(T^+)
      |                     |
      v                     v
\mathcal P_cl(T)   ->  \mathcal P_cl(T^+)
```

where the vertical arrows are the bridge transfers.

That is the correct relation between the two parts of the split.

## Exact Current Caution

The classical packet is the sharper frozen object at present.

The ontic packet is the right extension of the same logic, but it still needs
more theorem-grade detail in order to count as complete.

In particular, the ontic side still needs more exact definition and discharge of:

- the carrier/coherence-scale variable `S_ont`,
- the coercive transport-budget variable `Q_ont`,
- the exact no-defect closure statement `C_ont`,
- the ontic continuation quantity `G_ont`,
- and the bridge arrows `B_S`, `B_Q`, `B_C`, `B_G`.

So the right sentence is:

```text
the packet logic already extends ontically,
but the ontic packet and bridge still require more detail to complete.
```

