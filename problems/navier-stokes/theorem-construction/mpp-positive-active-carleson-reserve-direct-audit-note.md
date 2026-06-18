# MPP PositiveActiveCarlesonReserve.A Direct Audit Note

## Status

Direct audit of the second survivor of
`mpp-positive-remainder-depletion-target-attack-note.md`:

```math
\boxed{
PositiveActiveCarlesonReserve.A.
}
```

This is the reserve version of the packet-level positive source wall.

## Target

For terminal active packets selected by the source-pulse / `Jump_avg` branch,
prove a scale-critical reserve estimate:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
[\mathcal N_{preCauchy}^{loc}(u;P)]_+
\,dxdt
\le
o_N(1)+\text{summable legal losses}.
}
\tag{PAC.1}
```

Equivalently, prove an active-square / tree-Carleson reserve for every
bounded-overlap same-fluid terminal family.

## Direct Tests

Raw energy and first-moment dissipation are not scale-critical tree reserves.
They permit short heat-scale packets whose normalized positive source remains
equal to \(1\) while raw quadratic cost shrinks with volume.

Local energy gives donor balance only modulo refill.  The installed
`LocalDonorBalance.A` is already captured by the donor-balance note; upgrading
it to `(PAC.1)` requires control of Zeno refill leaves.

Cauchy/Young envelopes return to the active-square carrier itself.  They bound
positive source by the object that `(PAC.1)` must make Carleson-small.

Finite dyadic banding and raw orthogonality do not price diffuse positive
parentage.  The Fourier countermodel spreads order-one normalized source over
many legal parents while raw quadratic donor cost tends to zero.

The downstream frozen-family source supplier gives integrable source ledgers
after the receiver/source route is admitted.  It is not a uniform terminal
Carleson reserve on the branch-native bad packets.

## Verdict

`PositiveActiveCarlesonReserve.A` is not installed by current energy,
local-energy, Cauchy/Young, finite-band, same-fluid, pressure/cutoff, or
downstream source-supplier inputs.

At the current route resolution it is the same wall as:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\equiv_{\mathrm{route}}
TwoTowerDonorDepletion.A
\equiv_{\mathrm{route}}
SourcePulseExclusion.A.
}
```

Thus the positive-active reserve branch is a precise formulation of the
remaining analytic theorem, not an installed discharge.
