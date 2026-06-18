# MPP ActiveSquareResidualTail.A Final Collapse Note

## Status

Bounded direct attempt on the second hidden assumption inside
`SignedLocalSource.A`.

The target is:

```math
\boxed{
ActiveSquareResidualTail.A:
\int_I\sum_{j\ge N}2^{-j}D_j(t)^2\,dt=o_N(1)
\quad
\text{on terminal active windows}.
}
```

or the corresponding active-square upper-tail Carleson estimate for the
same-fluid terminal window family.

This note closes the direct route from installed energy/tail-square reserves:
the active-square residual is not discharged by current first-moment
dissipation, cumulative tail-square reserves, square-source notes, or
downstream source ledgers.

## First-Moment Versus Square-Dissipation

The energy layer controls first moment:

```math
\int_I D_j(t)\,dt<\infty.
```

The residual-tail target asks for square density:

```math
\int_I 2^{-j}D_j(t)^2\,dt.
```

First moment does not control square density on shrinking active intervals.  A
model pulse with height `A/h` on an interval of length `h` has first moment
`A`, while its square moment is `A^2/h`.  Thus short source-balanced active
pulses are invisible to first-moment dissipation but fatal to active-square
control.

This is exactly the terminal concentration mechanism that `Jump_avg`
represents.

## Tail-Square Reserve Mismatch

The installed full tail-square reserve controls a cumulative tail-energy
quantity through an inequality of the form

```math
2^{-2N}E_N(t)^2\le C_{tail}\nu D_N(t).
```

That reserve is useful for threshold-collar and cumulative-tail products.  It
does not control the shellwise square-dissipation measure

```math
\sum_{j\ge N}2^{-j}D_j(t)^2\,dt.
```

So the reserve cannot be promoted into `ActiveSquareResidualTail.A` without an
additional active-shell amplitude gain or square-source theorem.

## Square-Source Boundary

The square-source route would supply the residual-tail estimate if one had

```math
\int_I |F_j(t)|^2\,dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

But `square-source-shell-flux-estimate-result.md` shows that the universal
fixed-shell theorem fails by cubic amplitude scaling.  The conditional note
`mcp-square-source-estimate-with-amplitude-normalization-square-source-estimate-with-amplitude-normalization-5146a2c26a.md`
therefore requires active-shell amplitude/source normalization first.

That normalization is another form of the same source-pulse exclusion theorem.

## Verdict

`ActiveSquareResidualTail.A` is not proved by:

- finite energy or first-moment dissipation;
- the installed cumulative tail-square reserve;
- the current square-source route without amplitude normalization;
- `Hyp(FFSRC.A)=>FCI.5f`, which is only downstream source integrability;
- the averaged cover machinery, which treats the bad branch as `Jump_avg`.

The branch collapses to:

```math
\boxed{
ActiveSquareResidualTail.A
\Longleftrightarrow_{\mathrm{route}}
ActiveShellAmplitudeGain.A
\Longleftrightarrow_{\mathrm{route}}
SquareSource^{norm}.A
\Longleftrightarrow_{\mathrm{route}}
SignedLocalSource.A.
}
```

The exact missing analytic content is a theorem forbidding source-balanced
active pulses, or equivalently a direct active-square / active-window Carleson
estimate.
