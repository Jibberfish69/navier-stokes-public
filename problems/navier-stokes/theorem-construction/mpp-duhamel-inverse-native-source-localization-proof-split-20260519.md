# MPP Duhamel Inverse Native Source Localization Proof Split

Date: 2026-05-19

## Status

Proof split after the direct attempt on `DuhamelInverseNativeSourceLocalization.A`.

This note does not close the inverse theorem. It separates the part that is
ordinary Duhamel duality from the part that is still nonlinear Navier-Stokes
source geometry.

## Target

```math
DuhamelInverseNativeSourceLocalization.A:
\quad
\text{terminal critical mass of }w_m
\Longrightarrow
\mu_*^{sing}>0
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Pack/Part/legal exit.}
```

Here

```math
w_m(t)=
\int_{t_{m,0}}^t e^{(t-s)\nu\Delta}
P\nabla\cdot(u_m\otimes u_m)(s)\,ds
```

is the nonlinear Duhamel response on the selected terminal ledger.

## Step 1: Response Work Localization

The duality step is the clean part. A terminal lower bound

```math
\ell_m^{-2}\int_{Q_m}|w_m|^3\ge c_0
```

selects a normalized test

```math
\psi_m
:=
\frac{|w_m|w_m\,\mathbf 1_{Q_m}}
{\left\||w_m|w_m\,\mathbf 1_{Q_m}\right\|_{L^{3/2}}},
```

and, after pushing it backward by the adjoint heat-Leray flow, gives a source
work lower bound

```math
\int
P\nabla\cdot(u_m\otimes u_m)\cdot \Phi_m
\ge
c_{\mathrm{work}}c_0.
```

Using self-adjointness of the Leray projection and integration by parts,

```math
\int
P\nabla\cdot(u_m\otimes u_m)\cdot \Phi_m
=
-\int
(u_m\otimes u_m):\nabla P\Phi_m.
```

Thus terminal response mass forces nonlinear source work on the same backward
packet unless the backward test leaves the selected carrier. Carrier loss is a
Pack exit; projection/pressure loss outside the shared equation is a Part or
legal exit.

The formal sublemma is:

```math
L3DuhamelResponseWorkLocalization.A:
\quad
\text{terminal }L^3\text{ Duhamel response mass}
\Longrightarrow
\text{same-ledger nonlinear source work}
\vee
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
Legal.
```

This is a heat-adjoint localization theorem. It is not the main source-control
wall.

## Step 2: Native Source Capture

The real hard step is converting the localized signed source work into the
repo-native positive source carrier

```math
\nu_N^{src}
=
\left[
\langle S^{loc}_{<j}w_j,w_j\rangle
\right]_+\,dxdt.
```

Bony decomposition of

```math
(u\otimes u):\nabla P\Phi
```

splits the response work into:

1. the low-strain / high-packet term
   `\langle S^{loc}_{<j}w_j,w_j\rangle`;
2. commutator, cutoff, and off-family terms;
3. pressure/Leray redistribution terms;
4. high-high or donor-square refill terms.

The desired theorem is:

```math
ParaproductNativeSourceCapture.A:
\quad
\text{same-ledger nonlinear source work}
\Longrightarrow
\nu_N^{src}(E_N)\ge c
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Pack/Part/legal exit.}
```

The installed source notes already show why this is not automatic:
global skew cancellation is before positive selection, Cauchy/Young bounds
return to active-square reserve, and localized Leray recombination still needs
terminal orientation, commutator legality, and saturation gates.

## Step 3: RN Spend Once The Native Packet Exists

If `ParaproductNativeSourceCapture.A` produces selected native source mass
`\nu_N^{src}(E_N)\ge c`, then the existing measure machinery finishes the CM
consumer side.

If the installed ledger mass of `E_N` vanishes, `RN.NativeDecision.A` gives

```math
\mu_*^{sing}>0.
```

If the source mass is carried by the active donor square reserve without legal
payment, this is selected

```math
\neg ScaleCriticalTreeCarleson.A.
```

Both outputs are already Field-facing under retained `Pack` and `Part`.

## Result

The inverse theorem is now reduced to the two exact sublemmas:

```math
\boxed{
L3DuhamelResponseWorkLocalization.A
+
ParaproductNativeSourceCapture.A
\Longrightarrow
DuhamelInverseNativeSourceLocalization.A.
}
```

The first sublemma is adjoint heat/Leray localization. The second sublemma is
the true remaining nonlinear burden: after one-sided terminal selection, prove
that localized Duhamel source work is either the native positive source packet,
selected scale-critical reserve failure, or an already paid Pack/Part/legal
exit.
