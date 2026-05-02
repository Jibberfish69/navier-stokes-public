# MPP SignedLocalSource.A Final Collapse Note

## Status

Final bounded pass through the direct pre-Cauchy source route for eliminating
`Jump_avg` without assuming `Field_avg`.

The preceding reductions are:

```math
MSC.DiagTether \not\leftarrow MSC.BadAC
```

from the installed global product,

```math
DiagDom.A \not\leftarrow D_jD_\ell
```

from global shell norms, and

```math
LocalSource.NoPulse.A
\equiv_{\mathrm{route}}
SOURCE.NO\text{-}PULSE.A.
```

Thus the only non-compactness route left is the signed/local source theorem:

```math
\boxed{
SignedLocalSource.A.
}
```

## Theorem Shape

A sufficient statement is:

```math
\int_0^T G_N^{lift,\sigma}(t)\,dt
\le
C2^{-2\delta N}
```

for the true weighted lifted remainder before absolute values, together with
the active-square residual-tail estimate needed when the positive envelope is
used:

```math
\int_I\sum_{j\ge N}2^{-j}D_j(t)^2\,dt=o_N(1)
\quad
\text{on terminal active windows}.
```

Either a signed cancellation theorem for the true lifted remainder, or a direct
active-square / square-source Carleson theorem, would imply
`LocalSource.NoPulse.A`, then `SOURCE.NO-PULSE.A`, then `Jump_avg=>false`.

## Installed Audits

The signed branch is already audited by:

```text
signed-weighted-lifted-remainder-theorem-attempt.md
mpp-signed-lifted-remainder-residual-tail-attempt-note.md
mcp-signed-weighted-lifted-remainder-cancellation-plus-residual-tail-obstruction-signed-weighted-lifted-remainder-cancellation-plus-residual-tail-control-4cc0b43cb9.md
```

Those notes show that the unweighted exchange antisymmetry does not survive the
weighted lifted/cutoff packet as a usable sign theorem.  The principal
commutatorized remainder can align with expanding strain directions, and the
one-sided shell weights do not force cancellation.

The positive-carrier branch is already audited by:

```text
flux-source-carleson-bound-result.md
flux-source-to-active-square-carleson-result.md
active-square-upper-tail-carleson-blocked-by-square-source.md
active-square-control-blocked-by-square-source.md
square-source-to-active-square-control-result.md
```

Those notes show that source-mass or flux-source Carleson control alone does not
give the shell-amplitude gain needed for active-square Carleson.  The missing
input is a genuine heat-scale square-source theorem, active-shell amplitude
gain, or direct active-square Carleson estimate.

## Final Collapse

The live branch is therefore:

```math
\boxed{
SignedLocalSource.A
\Longleftrightarrow_{\mathrm{route}}
LocalSource.NoPulse.A
\Longleftrightarrow_{\mathrm{route}}
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot.
}
```

`FFSRC.A=>FCI.5f` remains installed for the downstream collar/source consumer,
but it does not prove `SignedLocalSource.A`.

## Verdict

The Jump branch is not eliminated by compactness, diagonal domination, or the
downstream frozen-family source ledger.  The exact surviving primitive is:

```math
\boxed{
OriginalSmoothData\Longrightarrow SignedLocalSource.A,
}
```

equivalently, prove from original smooth data either:

```math
\text{signed weighted lifted-remainder cancellation with reserve}
```

or

```math
\text{active-square residual-tail / square-source Carleson control}.
```

This is now the sharp active theorem target for branch-native `Jump_avg`
elimination.
