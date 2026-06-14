# MPP SquareSource.A From OriginalSmoothData Final Collapse Note

## Status

Bounded direct attempt on the split target

```math
\boxed{
OriginalSmoothData\Longrightarrow SquareSource.A.
}
```

The target is not a consequence of original smooth data alone.  The only valid
route is the already-recorded conditional route under active-shell source
normalization.

## Target

The square-source estimate needed by the damped shell response is

```math
\int_I |F_j(t)|^2\,dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

Here `F_j(t)` is the nonlinear shell source feeding the active shell.

## Fixed-Shell Amplitude Obstruction

The note `square-source-shell-flux-estimate-result.md` records the decisive
test.  For smooth finite-mode divergence-free data with nonzero trilinear shell
flux, scaling the data by amplitude `A` gives

```math
F_j(0;Au_0)=A^3F_j(0;u_0).
```

On a short smooth interval,

```math
\int_I |F_j(t;Au_0)|^2\,dt
\ge c_F |I|A^6|F_j(0;u_0)|^2.
```

The proposed right-hand side is independent of `A` at fixed shell.  Therefore
the estimate cannot be a universal theorem from original smooth data.

## Conditional Route

The note
`mcp-square-source-estimate-with-amplitude-normalization-square-source-estimate-with-amplitude-normalization-5146a2c26a.md`
proves the conditional implication

```math
ActiveShellSourceNormalize.A
\Longrightarrow
SquareSource.A
\Longrightarrow
\text{single-shell active-square control}.
```

But `ActiveShellSourceNormalize.A` is precisely the source-pulse theorem now
renamed `SourcePulseExclusion.A`.

## Verdict

`SquareSource.A` is closed as a non-independent supplier:

```math
\boxed{
OriginalSmoothData\Longrightarrow SquareSource.A
\quad\text{reduces to}\quad
OriginalSmoothData\Longrightarrow ActiveShellSourceNormalize.A
\equiv
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

The square-source branch cannot eliminate `Jump_avg` unless the source-pulse
normalization theorem is proved first.
