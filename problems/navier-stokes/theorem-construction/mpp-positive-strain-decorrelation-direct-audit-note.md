# MPP PositiveStrainDecorrelation.A Direct Audit Note

## Status

Direct audit of one survivor of
`mpp-positive-remainder-depletion-target-attack-note.md`:

```math
\boxed{
PositiveStrainDecorrelation.A.
}
```

The proof role of `PositiveStrainDecorrelation.A` is the exact depletion
estimate below: it bounds the positive active-strain remainder on selected
terminal packets and then supplies that input to `PositiveRemainderDepletion.A`.

## Target

On every bounded-overlap same-fluid terminal family `\mathcal F_N`, prove a
decorrelation estimate of the form

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\,dxdt
\le
o_N(1)+\text{legal losses}.
\tag{PSDcor.1}
```

Equivalently, active high-shell directions must not remain aligned with
expanding low/intermediate strain eigendirections on the selected terminal bad
packets.

## Direct Tests

Incompressibility gives trace-free strain, not nonpositive strain.  A trace-free
matrix can have a positive eigenvalue, and the high shell may align with its
expanding eigendirection.

Global transport skew symmetry cancels signed full-space energy transfer before
one-sided weights, cutoffs, terminal packet selection, and positive-part
extraction.  It does not control the positive part on `Bad_N(\eta)`.

Pressure Poisson recovery controls pressure response and routes elliptic errors.
It does not prevent localized active strain alignment.

Vorticity-direction, Beltrami/helical, and pressure-vortex audits all show that
the current route has no installed terminal coherence theorem strong enough to
force `(PSDcor.1)`.

Same-fluid transport preserves labels after a packet is chosen.  It gives no
mixing or decorrelation rate for active eigendirections on that packet.

## Verdict

`PositiveStrainDecorrelation.A` is not installed by finite energy,
incompressibility, pressure Poisson structure, dyadic skew symmetry, same-fluid
geometry, or the current coherence/depletion audits.

The theorem remains equivalent, at this route resolution, to a terminal source
coherence or positive-source depletion principle:

```math
\boxed{
PositiveStrainDecorrelation.A
\Rightarrow
TerminalSourceCoherence.A
\Rightarrow
PositiveSourceDepletion.A.
}
```

The reverse implication is not claimed as a theorem; the point is that no
weaker installed estimate currently supplies the needed decorrelation.
