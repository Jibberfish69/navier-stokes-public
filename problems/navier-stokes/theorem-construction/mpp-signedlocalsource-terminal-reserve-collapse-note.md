# MPP SignedLocalSource.A Terminal Reserve Collapse Note

## Status

Bounded continuation after
`mpp-signedlocalsource-final-collapse-note.md`.

The active frontier is:

```math
\boxed{
OriginalSmoothData\Longrightarrow SignedLocalSource.A.
}
```

The remaining advertised proof shapes were:

```math
\text{signed weighted lifted-remainder cancellation with positive/residual reserve}
```

and

```math
\text{active-square residual-tail / square-source / active-window Carleson control}.
```

This note executes those shapes as separate targets and records that they are not
independent exits from the same source no-pulse atom.

## Target 1: Positive/Residual Reserve

The signed route begins with the true weighted lifted remainder

```math
G_N^{lift,\sigma}
=
\sum W_{j,k,\ell}^{\sigma}\mathcal R_{j,k,\ell}^{lift}.
```

A direct signed theorem would be:

```math
\int_0^T G_N^{lift,\sigma}(t)\,dt
\le
C2^{-2\delta N}.
```

The installed signed audits show that this is not supplied by unweighted
exchange antisymmetry.  The live commutatorized remainder has principal strain
form

```math
2^{2j}
\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle,
```

which can align with expanding strain directions.  Once the route replaces this
by a positive envelope, Young's inequality leaves exactly the residual tail

```math
\int_I\sum_{j\ge N}2^{-j}D_j(t)^2\,dt.
```

Therefore the "positive/residual reserve" is not a third reserve.  It is:

```math
\text{signed strain cancellation}
\quad\text{or}\quad
\text{active-square residual-tail control}.
```

The first alternative is not installed; the second is Target 2 below.

## Target 2: Active-Square Residual Tail

The residual-tail theorem asks for shellwise square-dissipation control on
terminal active windows:

```math
\int_I2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```

The installed entrance-tail reserve controls the starting amplitude, but the
scalar response lemma also needs the heat-scale square-source estimate

```math
\int_I|F_j(t)|^2\,dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

Thus active-square residual-tail control reduces to Target 3 unless a direct
active-square Carleson theorem is proved.

## Target 3: Heat-Scale Square-Source

The square-source route is a valid conditional supplier:

```math
\text{heat-scale square-source}
\Longrightarrow
\text{active-square residual-tail}
\Longrightarrow
SignedLocalSource.A.
```

But the installed heat-scale square-source attempt does not prove it from
`OriginalSmoothData`.  The obstruction is fixed-shell amplitude scaling: the
nonlinear shell flux is trilinear in `u`, so `|F_j|^2` scales like the sixth
power of amplitude.  Smooth finite-energy data gives data-dependent finite
bounds, not the active heat-scale normalization needed on terminal moving
windows.

Therefore the unconditional square-source theorem is exactly a source
normalization theorem for terminal active shells.

## Target 4: Active-Window Carleson

The direct active-window Carleson route has only a raw finite-measure bound from
energy, pressure, transported atlas size, and bounded overlap:

```math
\sum_\alpha \nu_{SCF}(Q_\alpha)
\le
C\nu_{SCF}(\mathrm{total}).
```

The needed terminal estimate is scale-normalized.  Raw finite measure does not
control shrinking-window weighted sums.  The missing scale factor is again an
active-window dynamics theorem: terminal active windows must decay, pay a
scale-critical charge, or be forbidden by nonlinear source normalization.

Thus active-window Carleson is not independent either.

## Collapse

The four targets reduce to one structural theorem:

```math
\boxed{
ActiveShellSourceNormalize.A:
\quad
\text{terminal active shell windows cannot be source-balanced at scale-critical
strength from }OriginalSmoothData.
}
```

In route language,

```math
ActiveShellSourceNormalize.A
\Longleftrightarrow_{\mathrm{route}}
SignedLocalSource.A
\Longleftrightarrow_{\mathrm{route}}
SOURCE.NO\text{-}PULSE.A.
```

The normalized theorem may be proved by any genuinely new mechanism:

```math
\text{strain-sign cancellation,}
\qquad
\text{active-square residual-tail control,}
\qquad
\text{heat-scale square-source control,}
\qquad
\text{active-window Carleson control,}
```

but none of these mechanisms is installed by the current source, pressure,
energy, commutator, or averaged-cover surfaces.

## Verdict

There is no remaining deterministic subtarget behind `SignedLocalSource.A` that
is currently softer than the source-normalization theorem above.  The active
terminal theorem is:

```math
\boxed{
OriginalSmoothData\Longrightarrow ActiveShellSourceNormalize.A
\Longleftrightarrow_{\mathrm{route}}
OriginalSmoothData\Longrightarrow SignedLocalSource.A.
}
```

This is the exact source no-pulse primitive still needed to eliminate
`Jump_avg` without assuming `Field_avg`.
