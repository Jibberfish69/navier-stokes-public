# Mode Positive-Lobe Carrier Concentration Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `ModePositiveLobeCarrierConcentration.A` is not installed
by the current mode-test, source-readout, sign-localization, gauge, or selector
inputs.

The theorem says that the native selected positive source carrier must lie
almost entirely in one positive lobe of the selected mode test.  Current inputs
do not force that.  They allow the selected positive source to split across
opposite lobes of the same mode.

## 1. Target under test

Let

```math
q_m(P)
:=
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt,
\qquad
|\psi_m(P)|\le1.
\tag{MPLC.1}
```

The native positive source measure on packets is

```math
d\sigma_m^+(P):=[q_m(P)]_+.
\tag{MPLC.2}
```

For an orientation \(\varepsilon\in\{-1,1\}\) and \(0<\kappa<1\), the positive
lobe is

```math
L_{m,\varepsilon}^+(\kappa)
:=
\{P:\varepsilon\psi_m(P)\ge\kappa\}.
\tag{MPLC.3}
```

The concentration target is

```math
\boxed{
\inf_{\varepsilon\in\{-1,1\}}
\sum_{P\notin L_{m,\varepsilon}^+(\kappa)}
[q_m(P)]_+
\le
\operatorname{Legal}^{lobe}_{m,\kappa}+o_m(1).
}
\tag{MPLC.4}
```

This is exactly the input needed to pay
`OppositeSignPositiveSourceEvacuation.A`.

## 2. Why one global orientation is insufficient

Take two packets \(P_1,P_2\) with

```math
\psi_m(P_1)=1,
\qquad
\psi_m(P_2)=-1,
\tag{MPLC.5}
```

and

```math
q_m(P_1)=A,
\qquad
q_m(P_2)=A,
\qquad
A>0.
\tag{MPLC.6}
```

For \(\varepsilon=1\), the packet \(P_2\) lies outside the positive lobe and
contributes \(A\) to the left side of `(MPLC.4)`.  For \(\varepsilon=-1\), the
packet \(P_1\) lies outside the positive lobe and contributes \(A\).

Thus

```math
\inf_{\varepsilon\in\{-1,1\}}
\sum_{P:\varepsilon\psi_m(P)<\kappa}
[q_m(P)]_+
=A
\tag{MPLC.7}
```

for every \(0<\kappa<1\).  There is no contradiction with finite source mass,
bounded overlap, legal mode-test admissibility, or a stable selected source
family.

The same example also shows that a global sign choice for the mode does not
repair the reverse-direction score comparison.

## 3. Why the existing children do not prove it

`NodalZoneSourceEvacuation.A` removes source near \(|\psi_m|=0\).  It does not
remove source on the negative lobe \(\psi_m\le-\kappa\).

`NegativeModeSinkRouting.A` removes negative source on the negative lobe.  It
does not remove positive source on the negative lobe.

`SourceResolvedNativeModeReadout.A` can make positive mode score visible in the
native positive carrier after sign and sink losses are paid.  It does not force
the native positive carrier to generate positive mode score.

`SelectorStability.A` stabilizes whichever lobe or family has been selected.  It
does not say that the native source measure is single-lobed with respect to the
mode.

`SingleBubbleSeparation.A` rules out two comparable selected bubbles for one
source weight.  It does not rule out one selected source family crossing two
sign lobes of a mode test.

## 4. Sufficient single-lobe route

The direct sufficient route is:

```math
\boxed{
\text{SourceAlignedModeOrientation.A}
+
\text{SingleLobeSourceCarrier.A}
\Longrightarrow
\text{ModePositiveLobeCarrierConcentration.A}.
}
\tag{MPLC.8}
```

Here `SingleLobeSourceCarrier.A` is the measure statement

```math
\boxed{
\exists\,\varepsilon_m\in\{-1,1\}:
\sum_{P:\varepsilon_m\psi_m(P)<\kappa}
[q_m(P)]_+
\le
\operatorname{Legal}^{single}_{m,\kappa}+o_m(1).
}
\tag{MPLC.9}
```

and `SourceAlignedModeOrientation.A` is the admissibility statement that the
chosen orientation \(\varepsilon_m\psi_m\) remains the correct dual mode test for
the modulation coordinate being controlled:

```math
\left\langle G_\beta U,\varepsilon_m\Psi_m(U)\right\rangle
\quad\text{has the required nondegenerate sign and size for the selected mode}.
\tag{MPLC.10}
```

The first input is the source-carrier geometry.  The second input prevents the
orientation choice from destroying the modulation readout.

## 5. Carrier-refinement route

A second route is to refine the native carrier by mode lobes:

```math
F_m^{src}
=
F_{m,+}^{src,\psi}
\cup
F_{m,-}^{src,\psi}
\cup
F_{m,0}^{src,\psi}.
\tag{MPLC.11}
```

Then the positive lobe can be selected for the mode test.  This does not prove
the original carrier was concentrated.  It changes the carrier and creates new
obligations:

```math
\boxed{
\text{ModeLobeRefinedNativeCarrier.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{RefinedCarrierCommutatorLegal.A}.
}
\tag{MPLC.12}
```

`ModeLobeRefinedNativeCarrier.A` supplies the refined selected family.

`RefinedCarrierModeJacobian.A` proves that the refined carrier still gives a
nondegenerate finite mode Jacobian:

```math
\sigma_{\min}
\left(
\left\langle G_\beta U,\Psi_i^{ref}(U)\right\rangle
\right)
\ge c_0>0.
\tag{MPLC.13}
```

`RefinedCarrierCommutatorLegal.A` proves that splitting by mode lobes does not
create unpaid cutoff, lift/projection, or gauge-time terms:

```math
\operatorname{LiftProj}(\phi_i^{ref}\mathcal N^{loc}_{preCauchy})
-
\phi_i^{ref}\operatorname{LiftProj}(\mathcal N^{loc}_{preCauchy})
=
\operatorname{Legal}^{ref}_{m,i}+o_m(1).
\tag{MPLC.14}
```

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{ModePositiveLobeCarrierConcentration.A}
\Leftarrow
\text{SourceAlignedModeOrientation.A}
+
\text{SingleLobeSourceCarrier.A},
}
\tag{MPLC.15}
```

or, after changing the carrier,

```math
\boxed{
\text{ModePositiveLobeCarrierConcentration.A}
\Leftarrow
\text{ModeLobeRefinedNativeCarrier.A}
+
\text{RefinedCarrierModeJacobian.A}
+
\text{RefinedCarrierCommutatorLegal.A}.
}
\tag{MPLC.16}
```

The first route is a genuine concentration theorem for the original selected
carrier.  The second route is a carrier rebuild and must pay the new mode
nondegeneracy and ledger-commutator costs.

## Verdict

`ModePositiveLobeCarrierConcentration.A` is not a consequence of the current
Door 2 source-mode package.  It is the exact place where a sign-changing mode
test asks the native positive source carrier to be single-lobed.

The unresolved branch is now explicit: prove single-lobe concentration of the
original selected source carrier, or refine the carrier by mode lobes and prove
that the refined carrier still supports the modulation readout legally.
