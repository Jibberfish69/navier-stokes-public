# UniformServiceTopologyCertification.A Wired Into OriginalParticipationBeforePackStrength.A

## Target

Wire the certification principle needed by `LimitOfClassTerminalArtifact.A` into the `Part_{N,Q}` / `Field_{N,r,Q}` route, while keeping it separate from a new Navier-Stokes estimate.

The principle is:

```text
UniformServiceTopologyCertification.A:
A valid class survivor is a survivor in the uniform service topology of the Part/Field service it claims, not merely a weak terminal measure limit.
```

## Why this is needed

The endpoint strip can exist as a weak terminal measure. That alone is not enough for class survival.

The class route certifies service membership. Service membership requires the uniform quantitative content of the relevant service:

```text
Pack: positive carrier scale and finite deformation/readout comparability;
Part: finite same-solution participation / residence / donor-readout budget;
Field: one-field coherence / same-solution terminal readout continuity / no-jump compatibility.
```

Therefore a terminal object can be a weak limit while still failing class survival in the service topology.

## Statement

```text
UniformServiceTopologyCertification.A:
For any same-solution terminal witness Q, certification as a valid survivor through Part or Field requires uniform control of that service along the terminal approach sequence. A weak terminal measure limit without the corresponding uniform service budget is a object tested before Pack or class-exit witness, not a valid class survivor.
```

Part/Field witness record before Pack form:

```text
OriginalParticipationBeforePackStrength.A, certification clause:
`Part_{N,Q}` / `Field_{N,r,Q}` certification uses the same uniform-service principle. `Part_{N,Q}` requires a finite participation/residence budget or equivalent donor-readout compatibility. `Field_{N,r,Q}` requires a one-field readout continuity budget or equivalent same-solution scale-indexed compatibility. A object tested before Pack lacking these budgets fails the corresponding service tested before Pack.
```

Circularity caveat: the Field budget here is a same-solution terminal readout budget used as original-participation audit records before Pack-local notation, not ordinary `Pack_Q` positive-radius admission. It does not assume positive terminal Pack carrier scale, finite Pack cover, finite Pack deformation/readout comparability, or Pack noncollapse.

## Proof

The Part/Field canonicality note identifies Part and Field as primitive service families rather than labels for arbitrary weak limits.

The primitive-minimality note says each service carries its own irreducible endpoint-exclusion burden. That means a service is certified only by satisfying its own service burden, not by merely being present as a weak object at the terminal time.

So membership in a service is topology-sensitive:

```text
weak measure convergence is too weak;
uniform service-budget convergence is the class topology.
```

For the endpoint strip, weak convergence gives:

```text
g_m(s) ds -> M0 delta_{T_*}.
```

Uniform service convergence would require a terminal-window modulus such as:

```text
mu_m(B_R x [T_*-epsilon,T_*]) <= omega_R(epsilon) + o_m(1),
omega_R(epsilon) -> 0.
```

or a finite super-L1 / Orlicz / Morrey / Carleson residence budget implying such a modulus.

The endpoint strip has positive mass on vanishing windows and infinite every-super-L1 residence cost. Hence it is not a survivor in the uniform service topology.

Therefore `UniformServiceTopologyCertification.A` supplies the class-topology clause needed by `OriginalParticipationBeforePackStrength.A`. It does not by itself prove a new PDE estimate; it fixes what must count as survival through a service tested before Pack.

## Consequence

With this wiring, `LimitOfClassTerminalArtifact.A` becomes a route theorem rather than a loose interpretation:

```text
endpoint strip
=> weak terminal measure limit only
=> no uniform Part/Field service budget
=> class-exit witness.
```

The remaining work is propagation plus service-specific verification:

```text
1. carry this classification through all Pack-illegal terminal families;
2. for each family, prove the claimed service budget, prove the service budget is absent, or retype the witness by a retained same-solution terminal readout bridge;
3. use the exhausted singular families to recertify ordinary Pack_Q as the first test for the surviving non-singular branch.
```

## Boundary

This theorem is a class-witness-record bridge. It does not itself produce a new Navier-Stokes estimate. It specifies which topology counts as class survival inside the already-installed Part/Field architecture. The analytic burden remains family-by-family: a proposed Part or Field survival path must supply the corresponding residence, donor/readout, or same-solution terminal readout continuity budget.
