# Mediating Object: `post_monotone_cascade_carrier`

## Object Identifier

- `object_id`: `post_monotone_cascade_carrier`
- `canonical_alias`: `Xi_Phi_tail_transport_pair`
- `object_kind`: blocked-frontier carrier object
- `frontier_target`: `debt-localize-the-cascade-burden-after-the-monotone-bridge`

## Purpose

This file formalizes the exact object that remains after the monotone bridge has been
installed and marked insufficient by itself.

Its job is not to prove the scale barrier again.
Its job is to make the unresolved post-`Q(t)` singularity pressure exact enough that the
next discharge pass can test it locally instead of reopening generic theorem search.

## Domain

For fixed horizon `T > 0`, viscosity `nu > 0`, and dyadic cutoff `N`, the domain
consists of classical divergence-free Euclidean Navier-Stokes solutions `u` on
`(0,T) x R^3` satisfying:

1. the same theorem surface as the monotone bridge;
2. the same admissible data class as the main theorem target;
3. the global control quantity `Q(t)` is available on that surface;
4. no modified equation, filtered dynamics, or surrogate geometry is introduced.

## Codomain

The codomain is the paired high-frequency tail / transport object:

```math
\Xi_N[u](t)
:=
\sum_{j \ge N}\|P_j u(t)\|_{L^2_x}^2
+
\nu \int_0^t \sum_{j \ge N} 2^{2j}\|P_j u(s)\|_{L^2_x}^2 ds
```

and

```math
\Phi_N[u](t)
:=
\int_0^t \sum_{j \ge N}
\left|\left\langle P_j((u\cdot\nabla)u),\,P_j u\right\rangle\right| ds.
```

## Admissibility

- classical Euclidean Navier-Stokes only;
- same theorem surface as `Q(t)`;
- same surface later consumed by scale barrier, compactness, and fourth bridge;
- dyadic cutoffs are analysis devices only, not altered dynamics.

## Invariance

- invariant under the lane's choice of low/high-frequency decomposition up to harmless collar constants;
- carries only the dangerous-scale tail and its nonlinear transport feed;
- forgets coarse global energy information already recorded in `Q(t)`.

## Theorem Interface

Localizing the frontier means proving the following exact content:

1. after `Q(t)` is installed, the unresolved singularity pathway is represented by
   failure to control `Xi_N` and `Phi_N` uniformly for large `N`;
2. the scale-barrier bridge is exactly the theorem family that must absorb `Phi_N`
   into the dissipative piece of `Xi_N`;
3. no further generic energy theorem is needed at this slot, because the global
   control layer is already carried by `Q(t)`.

## Critical Scale Measure

The critical-scale quantity is the high-frequency tail energy together with its
nonlinear transport packet.

This is the first exact dangerous-scale carrier after the monotone bridge.

## Closure Mechanism

The closure test at this slot is:

```math
\Phi_N[u]
\le
\eta \nu \int_0^t \sum_{j \ge N} 2^{2j}\|P_j u(s)\|_{L^2_x}^2 ds
+
\text{summable remainder in } N.
```

If that estimate holds for all large cutoffs, the post-`Q(t)` cascade burden is absorbed
and the route passes from the monotone layer into the scale-barrier discharge family.

## Gradient Transfer

Indirect only.

This object does not itself prove the fourth bridge.
It records the exact cascade channel whose suppression is later consumed by compactness
and then by the curvature-first gradient route.

## Frontier Contract

- `frontier_slot`: `debt-localize-the-cascade-burden-after-the-monotone-bridge`
- `exact_local_object`: `Xi_Phi_tail_transport_pair`
- `handoff_target`: `scale-barrier bridge discharge`
- `status`: exact post-monotone cascade carrier available
