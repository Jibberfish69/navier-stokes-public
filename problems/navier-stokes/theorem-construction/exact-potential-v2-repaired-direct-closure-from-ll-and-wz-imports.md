# Exact-Potential `V2` Repaired Direct Closure From LL And WZ Imports

## Status

Active theorem-facing closure note for the repaired direct exact-potential `V2`
branch.

Role: assemble the fixed-metric Lipschitz import packet and the abstract
measurable-time import into a direct `V2` closure.

## Purpose

The repaired direct exact-potential branch now has all local reductions on disk:

1. the `F.11d` chart equation is static diffusion with fixed metric `G_k`;
2. the direct route is identified with the existing parabolic node
   `PDO-Carleman`;
3. the lower-order packet is absorbed once the fixed-metric packet is imported
   in uniform Carleman form.

This note packages the resulting direct closure of `V2`.

## Proposition `ELW.A` (Laurent--Léautaud plus Wang--Zhang close the repaired direct `V2` route)

Assume on every retained chart `\Omega_k\times I_k`:

1. the repaired `F.11d` packet holds in the static-diffusion form

```math
\partial_t \widetilde q_k
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta \widetilde q_k)
+\widetilde b_k\cdot\nabla_\zeta \widetilde q_k
+\widetilde c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut};
\tag{ELW.1}
```

2. the retained chart family belongs to one bounded Lipschitz-metric class;
3. the lower-order packet `\widetilde b_k,\widetilde c_k` is uniformly bounded
   in `L^\infty`;
4. Laurent--Léautaud's uniform Lipschitz-metric Carleman / heat-observability
   import is available for the fixed-metric base operator
   `-\partial_t-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta)`;
5. Wang--Zhang's abstract measurable-time observability theorem is available in
   the analytic-semigroup setting already isolated in the semigroup note.

Then the repaired direct exact-potential branch supplies `V2`.

### Proof

By the static-diffusion audit, `(ELW.1)` is the honest localized operator on
the repaired direct branch. By the semigroup note, the repaired chart operator
is an analytic-semigroup candidate and the open-set restriction is admissible.

Import the Laurent--Léautaud fixed-metric Carleman packet on the bounded
Lipschitz chart class. Then
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md)
upgrades that base packet to the full repaired bounded-chart operator.
Therefore interval observability holds for the repaired homogeneous chart
operator, and
[exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md)
identifies that chartwise observability with the existing parabolic node
`PDO-Carleman`.

Now apply
[exact-potential-v2-static-diffusion-wang-zhang-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-wang-zhang-route.md):
interval observability plus semigroup/admissibility gives measurable-time
observability on every retained window, and the localized forcing
`\widetilde f_k^{hi}+\widetilde f_k^{cut}` is absorbed by the same Duhamel
packet already tracked on this branch. That is exactly the windowwise
observability packet `V2`. ∎

## Corollary `ELW.B` (the stronger adiabatic exact-potential branch closes to `PD.70z` on the repaired direct route)

Assume:

1. `D.7mr2` holds;
2. the fixed forcing packet `EP.11d` is available;
3. `V1` holds;
4. the scheduler / boot entrance hypotheses needed for `EP.8` hold;
5. the repaired direct `V2` route is closed by `(ELW.A)`.

Then

```math
D.7mr2
+\texttt{EP.11d forcing packet}
+V1
+\texttt{(LL + WZ repaired direct }V2\texttt{ packet)}
\Longrightarrow
EP.8
\Longrightarrow
PD.70z.
\tag{ELW.2}
```

### Proof

By `(ELW.A)`, the repaired direct exact-potential branch supplies `V2`. Then
[exact-potential-fixed-adiabatic-forcing-packet-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-fixed-adiabatic-forcing-packet-ep11d.md)
applies verbatim: with `D.7mr2`, `EP.11d`, `V1`, and `V2` in hand, `EP.8`
yields `PD.70z`. ∎

## Corollary `ELW.C` (the repaired direct closure gives the installed `SG.4B` handoff under `(EP.8c)`)

Assume the hypotheses of `(ELW.B)`. If in addition

```math
\int_I\lambda_J(s)\,ds\ge m_J+\eta,
\tag{ELW.2a}
```

then the repaired direct exact-potential branch yields `SG.4B`.

### Proof

By `(ELW.B)`, the repaired direct route yields `PD.70z`. Proposition `EP.8`
in the exact-potential branch then applies exactly as written: `PD.70z` implies
`PD.70`, and the installed selector-defect extraction under `(EP.8c)` produces
`SG.4B`. ∎

## Interpretation

This is the conservative repaired direct closure of the stronger adiabatic
exact-potential branch. It does not use the older Stokes attempt, the stronger
analytic normalization, or the stronger spectral inequality continuation. It
chooses the repaired direct chart operator and closes that route with two
external theorem imports:

```math
\boxed{
\texttt{Laurent--Léautaud fixed-metric Lipschitz Carleman / heat observability}
}
\quad+\quad
\boxed{
\texttt{Wang--Zhang measurable-time observability}
}
\Longrightarrow
\boxed{
\texttt{repaired direct }V2
}
\Longrightarrow
\boxed{
\texttt{EP.8}\Rightarrow PD.70z
}
\Longrightarrow
\boxed{
\texttt{under }(EP.8c),\ SG.4B
}.
\tag{ELW.3}
```

So the active exact-potential direct branch no longer terminates at an internal
operator-class normalization theorem. It now terminates at one explicit
two-import external packet, with the existing `(EP.8c)` gate supplying the
installed `SG.4B` handoff.
