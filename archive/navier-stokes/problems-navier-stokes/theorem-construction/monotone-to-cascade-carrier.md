# Monotone-To-Cascade Carrier

## Role

This object localizes the exact missing step after the monotone bridge.

Once `Q(t)` is installed as a same-surface global energy/enstrophy control quantity and is shown to be insufficient by itself, the remaining singularity pressure must be represented in a dangerous-scale carrier rather than left as vague prose.

## Object

For a classical divergence-free solution `u` on `(0,T) x R^3` and a dyadic cutoff `N`, define

```math
\Xi_N[u](t)
:=
\sum_{j \ge N}\|P_j u(t)\|_{L^2_x}^2
+
\nu \int_0^t \sum_{j \ge N} 2^{2j}\|P_j u(s)\|_{L^2_x}^2 ds.
```

Also define the cumulative high-frequency transport packet

```math
\Phi_N[u](t)
:=
\int_0^t \sum_{j \ge N}
\left|\left\langle P_j((u\cdot\nabla)u),\,P_j u\right\rangle\right| ds.
```

## Meaning

- `Q(t)` controls the global energy/enstrophy layer.
- `\Xi_N[u]` isolates the portion of that control living above the dyadic threshold `N`.
- `\Phi_N[u]` records the exact nonlinear transport channel that can keep feeding that high-frequency tail.

So after the monotone bridge is installed, the unresolved cascade burden is the problem of proving that `\Phi_N[u]` is absorbable into the dissipative piece of `\Xi_N[u]` as `N` grows.

## Local Consequence

If `Q(t)` is bounded on the classical surface but the theorem is not yet closed, then the live unresolved singularity pathway must appear through failure to control `\Xi_N[u]` or `\Phi_N[u]` uniformly at high frequencies.

Equivalently:

- the monotone bridge moves the route past global size control,
- and the next missing step is exactly the high-frequency tail or flux estimate rather than another generic energy claim.

## Interface

This carrier does not prove the scale barrier.
It only makes the next burden exact:

`Q(t) bridge -> high-frequency tail/flux carrier -> scale-barrier discharge`
