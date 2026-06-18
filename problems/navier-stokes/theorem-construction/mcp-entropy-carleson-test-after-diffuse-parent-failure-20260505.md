# EntropyCarleson.A test after diffuse-parent failure

## Status

Failed as a consequence of installed inputs.

## Target

Use parent entropy to prove

```math
LocalPositiveSourceCarleson.A:
\quad
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{ps}^{loc}]_+\,dxdt
\le o_N(1)+Loss_{legal}.
```

The intended bridge is

```math
DiffuseParentEntropyCharge.A\Longrightarrow EntropyCarleson.A\Longrightarrow LocalPositiveSourceCarleson.A.
```

## Failure inherited from diffuse parent charge

`DiffuseParentEntropyCharge.A` fails under the installed route inputs.  The uniform diffuse parent model has

```math
\pi_P={1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha},
```

with normalized positive source \(\sum_{\alpha=1}^{M}M^{-1}=1\) and quadratic
donor/residual charge \(\sum_{\alpha=1}^{M}M^{-2}=M^{-1}\).  The entropy
`\log M` has no positive route ledger.

A Carleson estimate would require summing a positive packet source measure across bounded-overlap terminal packets.  For each child packet in the diffuse model, the positive source mass is normalized to \(1\) while the available charge per child tends to zero.  Therefore no summable entropy charge is available to dominate

```math
\int_{Q(P)}[\mathcal N_{ps}^{loc}]_+.
```

## Attempted rescue through bounded overlap

Bounded overlap controls the number of child packets covering a spacetime point.  It does not control the number of legal predecessor parents feeding one child packet.  Parent entropy is an incoming-edge complexity, while bounded overlap is an outgoing physical-cover property.  Thus bounded overlap cannot convert the missing parent charge into a Carleson reserve.

## Attempted rescue through residual square

Weighted residual square controls

```math
\sum_T\left|\int g_T^{-1}\langle R,\psi_T\rangle dt\right|^2.
```

This is quadratic in residual amplitude.  The positive source target is linear
in the signed-aligned donor contribution after positive-part extraction.  Diffuse
amplitudes can keep the normalized linear sum equal to \(1\) while the quadratic
sum tends to zero.

## Verdict

```math
\boxed{EntropyCarleson.A\text{ fails under installed inputs.}}
```

A successful Carleson proof needs a new theorem supplying a scale-normalized branch-complexity reserve:

```math
ScaleNormalizedBranchEntropyReserve.A
\Longrightarrow EntropyCarleson.A.
```

Current route surfaces do not contain that reserve.

## Consequence

`LocalPositiveSourceCarleson.A` remains open.  The entropy path contributes a sharp obstruction and a named missing theorem, rather than a discharge.
