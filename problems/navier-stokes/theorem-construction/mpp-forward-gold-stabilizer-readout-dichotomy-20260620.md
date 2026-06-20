# Stabilizer Readout Dichotomy

Date: 2026-06-20

## Status

Direct dichotomy complete.  Stabilizer motion is harmless only for readouts that
descend to the quotient profile.  If a neutral stabilizer changes the selected
source, mode, or endpoint ledger, then the motion is not a gauge-coercivity
problem; it is a selected-shadow readout defect.

This closes the false interpretation of stabilizer drift.  A true stabilizer
does not need coercion in the profile norm.  A stabilizer that changes the
proof ledger must be paid by the same-shadow source/mode/readout machinery.

## 1. Profile stabilizer

Let `G` be the modulation group and let

```math
\operatorname{Stab}(U)
:=
\{g\in G: gU=U\}.
\tag{SRD.1}
```

A downstream readout is a map

```math
\mathcal R(U,\sigma),
\tag{SRD.2}
```

where `sigma` denotes the selected packet, selected mode shadow, endpoint
marking, or native positive carrier produced after gauge choice.

The readout descends to the stabilizer quotient when

```math
\mathcal R(gU,g\sigma)
=
\mathcal R(U,\sigma)
\qquad
\text{for every }g\in\operatorname{Stab}(U).
\tag{SRD.3}
```

This is `StabilizerReadoutCompatibility.A`.

## 2. Dichotomy

For a stabilizer element `g in Stab(U)`, exactly one of the following occurs.

### 2.1 Quotient-compatible branch

The selected readout is invariant:

```math
\mathcal R(gU,g\sigma)-\mathcal R(U,\sigma)=0.
\tag{SRD.4}
```

Then the stabilizer direction is invisible both to the profile and to the proof
ledger.  It is a legal neutral direction and must be quotiented out of
`UniformFreeModulationAction.A`.

### 2.2 Readout-defect branch

The selected readout changes:

```math
\Delta_{\mathcal R}(g;U,\sigma)
:=
\mathcal R(gU,g\sigma)-\mathcal R(U,\sigma)
\ne0.
\tag{SRD.5}
```

Since `gU=U`, this defect is not produced by profile motion.  It is produced by
the selected packet/mode/carrier map.  Thus the obstruction is exactly one of:

```math
\text{SelectorStability.A failure},
\qquad
\text{SameFamilyModeSelectorCompatibility.A failure},
\qquad
\text{ModeNativeCarrierFamilyIdentification.A failure},
\tag{SRD.6}
```

or, on the source side,

```math
\text{SourceResolvedNativeModeReadout.A / SelectedPositivePolarSaturation.A failure}.
\tag{SRD.7}
```

The stabilizer has become a same-shadow readout problem, not a neutral gauge
problem.

## 3. Quantitative form

For a retained stabilizer family `g_eta`, the required legal estimate is

```math
\sum_{\eta}
w_\eta
|\Delta_{\mathcal R}(g_\eta;U_\eta,\sigma_\eta)|
\le
\operatorname{Legal}^{shadow}_N+o_N(1).
\tag{SRD.8}
```

If `(SRD.8)` holds, stabilizer readout drift is paid.  If it fails, then there
is a nonzero selected-shadow residue:

```math
\limsup_N
\sum_{\eta}
w_\eta
|\Delta_{\mathcal R}(g_\eta;U_\eta,\sigma_\eta)|
>0.
\tag{SRD.9}
```

That residue belongs to the same family as endpoint-mode mismatch and
same-shadow source/mode readout.  It routes to

```math
\text{MinimalChainProjectedResidueIdentity.A}
\tag{SRD.10}
```

on the nonzero selected readout side, or to

```math
\text{MinimalZenoProfileProduction.A}
\tag{SRD.11}
```

after quotient-compatible zero readout and compact profile production.

## 4. Averaging works only for signed linear mode tests

For a compact stabilizer group `H`, a signed linear mode test can be replaced by
its stabilizer average:

```math
\overline\Psi
:=
\int_H h^\ast\Psi\,d h.
\tag{SRD.12}
```

Then

```math
\langle U,\overline\Psi\rangle
=
\langle hU,\overline\Psi\rangle
\qquad
\text{for every }h\in H.
\tag{SRD.13}
```

This fixes signed linear mode tests on the quotient.  It does not automatically
fix the native positive carrier, because positive-part extraction and selector
choice do not commute with averaging:

```math
\left[\int_H q_h\,dh\right]_+
\ne
\int_H [q_h]_+\,dh
\tag{SRD.14}
```

in general.  Therefore the source side still needs selected-polar saturation or
same-shadow native source readout.

## 5. Consequence for gauge coercivity

The corrected gauge package is

```math
\boxed{
\text{UniformQuotientFreeModulationAction.A}
+
\text{StabilizerReadoutCompatibility.A}
\Longrightarrow
\text{neutral stabilizer drift is harmless}.
}
\tag{SRD.15}
```

When `StabilizerReadoutCompatibility.A` fails, the branch becomes

```math
\boxed{
\text{selected-shadow readout defect}
\Rightarrow
\text{same-shadow source/mode residue wall}.
}
\tag{SRD.16}
```

This is the Door 1/Door 2 split in quotient-gauge language.

## Verdict

Stabilizers do not create a new independent obstruction.  They create a
dichotomy:

```math
\text{quotient-invariant readout}
\quad\text{or}\quad
\text{selected-shadow readout residue}.
\tag{SRD.17}
```

The first branch is handled by quotient gauge coercivity.  The second branch is
the existing same-shadow source/mode residue problem, with native positive
carrier identification and selected-polar saturation still carrying the
Navier--Stokes burden.
