# StressFluxSelectorDomination.A Attempt

## Target

Prove Door 1 of the gold stress-flux packet:

```text
StressFluxSelectorDomination.A
```

Desired statement:

If the critical stress flux has a nonzero limiting residue

```math
\Phi_0\ne0,
```

then the selected native positive local pre-Cauchy source carrier sees a nonzero amount of it:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\gtrsim \max_a |\ell_a\cdot \Phi_0|.
```

## What is proved by stress flux alone

The distributional stress-flux computation gives a vector point-force residue:

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0.
```

Thus `Phi_0 != 0` proves a nonzero distributional momentum/stress residue.

## Missing bridge

The selected native source is not the full vector stress divergence. It is the positive local pre-Cauchy source carrier after the route operations:

```text
localization,
cutoff,
pressure/projection handling,
positive-part extraction,
selector choice,
bounded-overlap packetization.
```

A nonzero vector residue can vanish or cancel under a chosen scalar projection, and a signed vector point-force is not automatically a nonzero positive selected scalar source measure.

To prove the target, one must build a finite selector family `{ell_a}` and a same-fluid active packet family `F_N` such that at least one selected positive projection captures a fixed fraction of `|Phi_0|`.

That construction is not installed by the stress-flux identity alone.

## Verdict

`StressFluxSelectorDomination.A` is not proved.

It is an exact missing bridge:

```text
nonzero critical stress-flux residue
=> nonzero selected positive local pre-Cauchy source carrier.
```

The theorem is narrower than generic `NativeSourceAC.A`, because it starts with a vector point-force residue, but it is still a real selection/positivity theorem.

Claimed status:

```text
failed; exact selector-domination bridge missing.
```