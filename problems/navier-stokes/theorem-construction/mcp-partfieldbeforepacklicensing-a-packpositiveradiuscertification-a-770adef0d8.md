# OriginalParticipationBeforePackLicensing.A

Status: replaces the generated `OriginalParticipationBeforePackLicensing.A` wording.

The licensed outside-CM participation-field/window object is the original Navier-Stokes participation law,
not the indexed Silver predicates.  The corrected licensing claim is:

```text
Given a same-solution terminal witness extracted from an alleged finite-time
Navier-Stokes breakdown, the original participation law may be applied to that
witness before ordinary `Pack_Q` is spent.
```

That law carries same datum, same maximal branch, same velocity-pressure
evolution, fixed viscosity, pressure coupling, and incompressibility.  It is
global for the candidate solution and can be read at a point or along a terminal
approach record.

`Part_{N,Q}` is not a separate outside-CM participation-field/window predicate.  It is the packet-local,
finite-depth Silver record of that already-governing law once a packet has been
selected.  `Field_{N,r,Q}` is likewise a packet/readout coherence record, not a
free outside-CM participation-field/window replacement for the whole-field or pointwise participation audit.

Scope: this note licenses the outside-CM participation-field/window original-participation audit and blocks
the stale inference that Pack supplies participation.  It does not prove a new
positive-radius Pack theorem.
