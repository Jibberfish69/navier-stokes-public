# PositiveSourceAdjointEscapeIdentity.Attempt

## Status

Failed direct discharge.  This note attempts to prove the positive-source adjoint escape identity needed for `BASACAtomEscapeDichotomy.A`.

## Target identity

Let a terminal `B_ASAC` source atom be detected by backward transported adjoint packets:

```math
\langle \mu_m^{src},\psi_m\rangle\to c_0>0.
```

The desired identity is

```math
\langle \mu_m^{src},\psi_m\rangle
=
Flux_{tr,cyl,m}
+Residence_m
+PressureEigenframeSustain_m
+LegalLoss_m
+o_m(1).
```

The identity must hold in the positive source-weighted topology for the carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

## Attempt

The available adjoint identities are effective in signed-current or near-band presentations.  They allow projected pressure cancellation, cutoff ledger routing, and ASAC-style alignment payments.

To obtain the identity above, one must pass from signed-current testing to positive source-weighted testing after positive-part extraction.  This is the exact obstruction.  The positive source carrier is not exhausted by the signed adjoint identity unless either:

```math
\text{a selected negative-part comparison is installed,}
```

or

```math
\text{the residual positive carrier is paid by active-square reserve.}
```

The first is absent.  The second is the scale-critical source wall.

## Failure mode

A terminal source atom can pair positively with `\psi_m` while having no temporal residence.  Boundary flux through transported cylinders may concentrate on the terminal time face.  Pressure/eigenframe sustain controls only conditional near-band signed-current structure.

Thus the proposed identity leaves an unpriced adjoint defect:

```math
AdjDefect_m^{+,src}
:=
\sum_P\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+dxdt.
```

This is the original source-weighted angular carrier.

## Exact replacement target

The direct identity reduces to

```math
\boxed{PositiveAdjointDefectDepletion.A}
```

where the positive adjoint defect is paid by one of:

```math
BASACNoIncomingSourceDrain.A,
\quad
TerminalSourceReverseHolder_{B_ASAC}.A,
\quad
PressureEigenframeSustain.A,
\quad
Loss_{legal}+o(1).
```

## Verdict

The identity is not installed.  The next sharper target is `PositiveAdjointDefectDepletion.A`, equivalent to proving that the positive source-weighted adjoint defect has no fourth escape channel.
