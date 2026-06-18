# MPP PositiveResidualReserve.A Direct Attempt Note

## Status

Bounded direct attempt on the first hidden assumption inside
`SignedLocalSource.A`.

The target is:

```math
\boxed{
PositiveResidualReserve.A:
\int_{Bad_N(\eta)}
\bigl(G_N^{lift,\sigma}\bigr)_+(t)\,dt
\le
R_N+o_N(1),
\qquad
R_N\to0,
}
```

or any equivalent reserve theorem converting signed weighted lifted-remainder
cancellation into positive bad-window source depletion.

This is stronger than the signed commutator estimate.  It is not installed by
the current exchange algebra.

## Signed Integral Is Not Positive-Part Control

The existing signed target has the form

```math
\int_0^T G_N^{lift,\sigma}(t)\,dt
\le
C2^{-2\delta N}.
```

But the branch needs depletion of the positive production on the selected bad
windows:

```math
\int_{Bad_N(\eta)}
\bigl(G_N^{lift,\sigma}\bigr)_+(t)\,dt=o_N(1).
```

A small signed integral does not imply small positive part.  The positive mass
can concentrate on `Bad_N(\eta)` and be cancelled by negative mass on other
times, other packets, or contracting strain windows.

Thus the missing reserve is not cosmetic.  It is exactly the positive-part
depletion theorem: it must bound the selected expanding-strain production on
`Bad_N(\eta)`, so the active selector cannot carry order-one source production
there.

## Principal Symbol Obstruction

The true lifted remainder has leading paracommutator form

```math
\mathcal R_{j,k,\ell}^{lift,prin}
:=
2^{2j}
\left\langle
\mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u
\right\rangle.
```

The symmetric part of `\nabla a_k` has expanding and contracting directions.
An active packet aligned with an expanding eigendirection contributes to the
positive part.  The one-sided shell weights and cutoff/lifted packet geometry
do not impose a sign reversal tied to that eigendirection.

The unweighted exchange antisymmetry cancels the bare exchange, but
`PositiveResidualReserve.A` concerns the post-weight, post-lift positive part
on the bad-window selector.  That object is no longer controlled by the bare
antisymmetry.

## Relation To LocalStrainDepletion

This target is the lifted global version of the local-source depletion theorem:

```math
LocalStrainDepletion.A:
\int_{Bad_N(\eta)}
\bigl(\mathfrak S_{N,loc}^{active}\bigr)_+(t)\,dt=o_N(1).
```

The audit `mpp-localstrain-depletion-audit-note.md` already shows that the
current signed commutator material does not supply positive-part depletion on
selected bad windows.  `PositiveResidualReserve.A` would require the same new
input, phrased after the lifted packet reduction.

## Verdict

`PositiveResidualReserve.A` is not proved from the current signed weighted
commutator theorem, energy inequality, pressure projection, or dyadic exchange
identity.

It collapses to the same source-pulse exclusion wall:

```math
\boxed{
PositiveResidualReserve.A
\Longleftrightarrow_{\mathrm{route}}
LocalStrainDepletion.A
\Longleftrightarrow_{\mathrm{route}}
SignedLocalSource.A.
}
```

The remaining theorem must either decorrelate active packets from expanding
strain directions or provide a positive active-square / Carleson replacement.
