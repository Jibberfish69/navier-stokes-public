# MPP CycleHeatAction.A Proof Plan After Think-Again

## Status

Route-selection note after the square-reserve first-pulse gate test.

The scalar route now has the honest obstruction:

```math
SquareReserveEvolution.A
```

would need a dynamic law for the donor square reserve `\mathcal R_N`.  The
installed route has no such law: `ParentSquareEmbed.A` is static, while
normalized-adjoint dynamics control child mass.

The better direct route is therefore not to force a scalar evolution law for
`\mathcal R_N`.  It is to keep the signed Navier--Stokes exchange as a
parabolic source current until the final positive-part extraction.

The live theorem-facing target becomes:

```math
\boxed{
ParabolicSourceCurrent.A
:=
LocalizedSkewCurrent.A+CycleHeatAction.A.
}
```

with `CycleHeatAction.A` the hard theorem.

## Why This Is Sharper

The scalar reserve route first takes positive parts and absolute values, then
tries to repair the lost cancellation by proving:

```math
\int\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell\right)^2
\le o_N(1)+Loss_{legal}.
```

That loses the signed exchange structure too early.

The parabolic-current route keeps the internal source transfer as an
antisymmetric edge current:

```math
J(P\to P')=-J(P'\to P),
```

and writes the packet energy law as:

```math
\partial_tE_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P.
```

The positive source can then be studied as a spacetime flow problem, not as a
raw scalar square-density estimate.

## Target `LocalizedSkewCurrent.A`

For every same-fluid bounded-overlap packet family `\mathcal F_N`, construct a
legal antisymmetric source-current ledger such that:

```math
\partial_tE_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
```

with:

```math
\sum_P\int |L_P|
\le
o_N(1)+Loss_{legal}.
```

This is the algebraic step.  Its proof requires:

1. dyadic triadic energy antisymmetry;
2. incompressibility and Leray projection;
3. packet-local assignment of each internal interaction to opposite edge
   endpoints;
4. routing non-skew pressure/cutoff/off-family terms into `L_P`.

## Target `CycleHeatAction.A`

Let `\mathcal T` be a terminal same-fluid spacetime packet tree with source
current `J`, temporal storage edges, viscous heat edges, and legal boundary
current.  Prove:

```math
\boxed{
\sum_{P\in\mathcal T}
\int
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+dt
\le
Flux^+_{\partial\mathcal T}
+
\theta\sum_{P\in\mathcal T}\int D_P\,dt
+
o_N(1)+Loss_{legal}.
}
```

This is the theorem that says terminal closed source-current cycles pay heat
action.

## Proof Mechanism

### Gate 1: spacetime flow lift

Discretize time at packet heat scale.  Add vertical temporal edges carrying
stored energy from `(P,t_i)` to `(P,t_{i+1})`.

The node balance becomes:

```math
Incoming_{space}
+
Incoming_{time}
=
Outgoing_{space}
+
Outgoing_{time}
+
D_P
+
L_P.
```

Here spatial exchange edges are skew-current edges, and vertical edges carry
energy storage.

### Gate 2: path-cycle decomposition

Apply finite graph flow decomposition to the nonnegative part of the lifted
current on a finite truncation of `\mathcal T`.

Every unit of positive source reaching a terminal active packet is one of:

```math
\text{boundary-fed path},
```

```math
\text{path from earlier stored energy},
```

or:

```math
\text{closed spacetime cycle}.
```

Boundary-fed paths are paid by `Flux^+_{\partial\mathcal T}`.  Earlier stored
energy is the first-pulse / first-square-reserve ancestry term.  The genuinely
new object is the closed spacetime cycle.

### Gate 3: heat leakage on closed cycles

A closed spacetime cycle that returns source mass to an active terminal packet
must traverse temporal heat edges at the active scale.  Along a heat-scale
vertical edge:

```math
E_P(t_{i+1})+c\int_{t_i}^{t_{i+1}}D_P\,dt
\le
E_P(t_i)+\text{legal source input}.
```

After source-current decomposition, internal legal source input is already
accounted for by the cycle flow.  Therefore every closed cycle loses a fixed
fraction of its transported source mass into:

```math
\int D_P\,dt
```

unless it exits through a legal boundary or stopped residual edge.

This gives the cycle action estimate:

```math
Circ_{heat}(\mathcal T)
\le
\theta\sum_P\int D_P
+
o_N(1)+Loss_{legal}.
```

### Gate 4: terminal first-current pruning

Use first-pulse selection only after the signed-current decomposition.  A
nontrivial earlier stored-energy path is an earlier source-current arrival, not
merely a diffuse parent packet.  Thus it is pruned by first terminal current
selection, while diffuse internal circulation is priced by heat leakage.

### Gate 5: remove truncation

Pass from finite packet/time truncations to the bounded-overlap terminal family
using:

```math
\sum_P\int |L_P|\le o_N(1)+Loss_{legal},
```

and lower semicontinuity of the dissipation action.

## Consequence

If `LocalizedSkewCurrent.A` and `CycleHeatAction.A` are proved, then:

```math
ParabolicSourceCurrent.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

Since `ParentSquareEmbed.A` already removes bounded-parent selection as the
main obstruction, this route attacks the remaining source wall at the signed
spacetime-current level before it collapses to the scalar square reserve.

## Current Burden

The exact next theorem to prove is:

```math
\boxed{
CycleHeatAction.A:
\text{terminal closed source-current cycles pay viscous heat action.}
}
```

This is sharper than the scalar `SquareReserveEvolution.A` demand and avoids
treating the donor square factor as if it already had an independent evolution
law.
