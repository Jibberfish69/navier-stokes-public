# Door 2 Admissible Donor Transported Mode Test Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `AdmissibleDonorTransportedModeTest.A` is not supplied
by the existing `ModeTestCompatibility.A` note.

`ModeTestCompatibility.A` legalizes a chosen local mode multiplier on the same
selected source shadow.  A co-transported donor test is defined first by a graph
constraint, not by a smooth local multiplier.  The graph-defined test must still
be realized as an admissible local pre-Cauchy test before it can enter the
native source ledger.

## 1. Target under test

The co-transport route needs a test `theta_i` satisfying

```math
\theta_i(D)=\theta_i(R)
\quad
\text{on retained donor edges }(D,R),
\tag{ADT.1}
```

and also admissible in the local pre-Cauchy source pairing:

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,\theta_i(P)\,dxdt.
\tag{ADT.2}
```

The point is that `(ADT.1)` is a graph condition, while `(ADT.2)` is a native
local-test condition.

## 2. Conditional admissibility theorem

`AdmissibleDonorTransportedModeTest.A` follows from the transported analogues
of the four `ModeTestCompatibility.A` inputs.

First, local transported multiplier realization:

```math
\theta_i(P)
=
\operatorname{Av}_{Q(P)}\Theta_{i,m}(t,x),
\tag{ADT.3}
```

where `Theta_{i,m}` has the boundedness and derivative bounds required by the
pre-Cauchy localization ledger.

Second, transported projection/lift commutator legality:

```math
\operatorname{LiftProj}(\Theta_{i,m}\mathcal N^{loc}_{preCauchy})
-
\Theta_{i,m}\operatorname{LiftProj}(\mathcal N^{loc}_{preCauchy})
=
\operatorname{Legal}^{trcomm}_{m,i}+o_m(1).
\tag{ADT.4}
```

Third, transported time/gauge variation legality:

```math
\partial_s\Theta_{i,m}
+
\dot\gamma_m\cdot\nabla_\gamma\Theta_{i,m}
\quad\text{is legal in the source ledger}.
\tag{ADT.5}
```

Fourth, same-family transported selector compatibility:

```math
\operatorname{supp}\Theta_{i,m}
\subset
\bigcup_{P\in\mathcal F_m^{sel}}Q(P)
\quad\text{up to legal spill}.
\tag{ADT.6}
```

Under `(ADT.3)`--`(ADT.6)`, the graph-transported mode value becomes a legal
native source test.

## 3. Exact obstruction

The graph condition `(ADT.1)` does not imply the local multiplier condition
`(ADT.3)`.  On a donor graph with adjacent packets whose physical supports
interleave, a graph assignment can alternate values packet by packet:

```math
\theta_i(P_j)=(-1)^j.
\tag{ADT.7}
```

A bounded multiplier with the pre-Cauchy derivative bounds cannot realize
arbitrary alternating packet values without paying a derivative, cutoff, or
projection commutator cost.  That cost is exactly what `(ADT.4)` and `(ADT.5)`
must charge.

Thus co-transport is not automatically an admissible test operation.  It must be
paid as a transported local multiplier construction.

## 4. Relation to the endpoint and branching charges

This admissibility test is formal rather than coercive.  Even if it is installed,
the route still needs endpoint mismatch and donor-branching charges.  Those were
tested separately and return to source-weighted gauge travel, no-null-source
visibility, source-square reserve, or strict no-waste.

So `AdmissibleDonorTransportedModeTest.A` is not the analytic wall.  It is the
local-test license needed before the analytic wall can even be read in the
native source ledger.

## 5. Exact reduction

At current input strength,

```math
\boxed{
\text{AdmissibleDonorTransportedModeTest.A}
\Leftarrow
\text{TransportedLocalModeMultiplierRealization.A}
+
\text{TransportedModeLiftProjectionCommutatorLegal.A}
+
\text{TransportedModeGaugeTimeVariationLegal.A}
+
\text{TransportedSameFamilySelectorCompatibility.A}.
}
\tag{ADT.8}
```

These transported inputs are not installed by `ModeTestCompatibility.A`, because
that note applies to a chosen canonical mode test, not to every graph-defined
co-transported replacement.

## Verdict

`AdmissibleDonorTransportedModeTest.A` is not a new coercive supplier.  It is a
transported-test legality bridge.  It does not close from current inputs, and
even after installation the co-transport route would still need the already
open endpoint mismatch and donor-branching charges.

