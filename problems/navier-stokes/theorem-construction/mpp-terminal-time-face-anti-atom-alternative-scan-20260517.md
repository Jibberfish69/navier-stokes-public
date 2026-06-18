# MPP TerminalTimeFaceAntiAtom.A Alternative Scan

Date: 2026-05-17

Status: bounded alternative scan complete; no installed alternative closes the theorem.

Purpose: after reducing the source-wall closure to `TerminalTimeFaceAntiAtom.A`, test the nearest non-pressure mechanisms that might imply it.

## 0. Sharp target

The target is the terminal time-slab modulus

```math
\nu_N^{src,+}(B_R\times[T-\varepsilon,T])
\le \omega_R(\varepsilon)+o_N(1),
\qquad \omega_R(\varepsilon)\to0.
```

This excludes terminal source atoms and gives the temporal non-atomicity needed by the Zeno branch.

## 1. Residence lower bound

Candidate:

```math
\boxed{ResidenceLowerBound.A.}
```

The attempted residence theorem asserts a lower residence time proportional to a
fixed macroscopic clock for each terminal source packet.

Failure: the same-fluid terminal construction permits parabolic residence windows shrinking with the packet scale.  Zeno branches precisely exploit

```math
\tau_N\downarrow0.
```

Ancestry tracks lineage, while the missing theorem is a lower bound on residence time.

## 2. Scale-invariant parent charge quantum

Candidate:

```math
\boxed{ScaleInvariantParentChargeQuantum.A.}
```

The attempted parent-charge theorem asserts a fixed quantum of parent source
charge for each terminal refill, forcing total charge divergence.

Failure: Navier-Stokes scaling allows normalized terminal source mass with physical parent charge shrinking by scale.  Diffuse splitting can spread parent mass across many packets.  A fixed quantum requires a new scale-breaking estimate.

## 3. Transported boundary tightness

Candidate:

```math
\boxed{TransportedBoundaryTightness.A.}
```

The attempted transported-shell theorem asserts uniform vanishing of incoming
source mass near the terminal face.

Failure: boundary tightness is equivalent to a no-incoming-flux or transported anti-atom theorem.  The current B_ASAC tangent class supplies some no-flux survivors only for restricted tangent classes.  It does not exclude general terminal source concentration without a new transported class or a reverse Holder estimate.

## 4. Local energy trace anti-atom

Candidate:

```math
\boxed{LocalEnergyTraceAntiAtom.A.}
```

The local energy trace across the terminal face would rule out source atoms.

Failure: local energy inequalities allow terminal defect measures.  The stronger
trace theorem is exactly the anti-atom modulus.  This restates the target in
local-energy language.

## 5. Entropy and branch-complexity variants

Entropy, branch count, and minimal ancestry variants require a lower cost per active branch.  That lower cost is the same missing parent-charge quantum or residence lower bound.  Thus they do not give a separate proof.

## 6. Verdict

No installed alternative proves `TerminalTimeFaceAntiAtom.A`.  The closure theorem is now a hard endpoint:

```math
\boxed{TerminalTimeFaceAntiAtom.A.}
```

A proof must add one new mechanism:

```text
positive residence-time lower bound,
scale-invariant parent charge quantum,
transported boundary tightness / no-incoming theorem,
or local-energy trace anti-atom strengthening.
```

The current route has been reduced to this endpoint without further hidden pressure or source-current loops.
