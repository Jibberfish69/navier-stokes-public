# TemporalNonAtomicSource.A direct attempt

## Status

Failed from the current inputs.

## Target

Show that the Zeno limiting source-residue measure has no terminal time atom:

```math
\mu_*^{src}(\{s=0\})=0.
```

This theorem turns positive terminal mass into positive mass on an earlier time
slab and closes `TerminalSourceBackwardPropagation.A`.

## Attempt

The compactness input gives locally finite positive Radon measures. Finite mass is insufficient for temporal non-atomicity. A sequence of time densities concentrating on `(-1/n,0]` has bounded total mass and can converge weakly to a measure supported at `s=0`.

A sufficient estimate would be

```math
\|F_n^{src,+}\|_{L_s^p((-1,0);\mathcal M_y)}\le C,
\qquad p>1.
```

Then every time interval `I` satisfies

```math
\mu_n^{src}(\mathbb R^3\times I)\le C|I|^{1-1/p},
```

and the limiting measure has no time atoms.

Current ledgers supply finite mass / L1 control. They do not supply the displayed
`p>1` estimate on selected terminal packets. A square-source or Carleson estimate
supplies it once proved, but that is exactly the open source-control reserve.

## Result

`TemporalNonAtomicSource.A` remains open. The next target is

```math
UniformTemporalSourceIntegrability.A
```

or equivalently a square-source / local positive source Carleson estimate.
