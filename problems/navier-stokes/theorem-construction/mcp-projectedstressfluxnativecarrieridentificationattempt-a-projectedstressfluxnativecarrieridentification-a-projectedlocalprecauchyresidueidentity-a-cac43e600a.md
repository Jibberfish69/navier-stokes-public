# ProjectedStressFluxNativeCarrierIdentification.A Attempt

## Target

Door 1 after the sharp-form repair is no longer finite vector selection. The finite selector is paid:

```math
\max_{\ell\in\{\pm e_1,\pm e_2,\pm e_3\}}[\ell\cdot\Phi_0]_+\ge |\Phi_0|/\sqrt3.
```

The real target is the native-carrier identification:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\ge c\max_{\ell}[\ell\cdot\Phi_0]_+ - \mathrm{Legal}_N-o_N(1).
```

## Attempt

The stress-flux identity gives the vector residue

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0.
```

Projecting by a paid selector direction `ell` gives a signed scalar point-source residue `(ell dot Phi_0) delta_0`.

If the localized pre-Cauchy source over the same-fluid active family satisfied

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt
= \ell\cdot\Phi_0 - \mathrm{Legal}_N-o_N(1),
```

then the target follows immediately from the positive-part inequality

```math
\sigma_+(X)\ge [\sigma(X)]_+.
```

## Failure point

The native source carrier is not the full projected stress divergence. It is the positive local pre-Cauchy carrier after localization, cutoff, pressure/projection handling, positive-part extraction, packetization, and same-fluid active selection. The read surfaces define this carrier but do not install the projected local pre-Cauchy residue identity above.

The Door 1 identity therefore reduces internally to:

```text
ProjectedStressTestCompatibility.A
+ StressAnnulusPacketPartition.A
+ WeightedLiftedSkewDefectLegal.A.
```

The last term is the known signed-current obstruction: weights/lifts/positive selection can retain the positive selected edge after the signed partner has left the usable terminal record.

## Verdict

`ProjectedStressFluxNativeCarrierIdentification.A` is not proved from installed inputs.

It reduces exactly to:

```text
ProjectedLocalPreCauchyResidueIdentity.A,
```

and internally most sharply to the three-piece stack above, with `WeightedLiftedSkewDefectLegal.A` as the live obstruction.

Claimed status: failed; exact missing identity isolated.