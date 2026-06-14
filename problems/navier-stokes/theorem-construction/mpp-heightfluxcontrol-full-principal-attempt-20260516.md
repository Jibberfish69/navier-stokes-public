# MPP HeightFluxControl.A Full-Principal Attempt

Date: 2026-05-16

Status: direct theorem attempt; not a discharge.

This note executes the next source-wall move after
`mpp-localpositive-source-native-defect-frontier-20260516.md`,
`mpp-reserve-creation-charge-height-variation-reduction-20260506.md`, and
`mpp-donorheightcreation-shellbalance-direct-attempt-20260506.md`.

The target is the direct Field-face source-wall entrance

```math
\boxed{HeightFluxControl.A}
```

in the donor-height form

```math
H_k(t):=2^k\sum_{\ell>k+4}D_\ell(t),
\qquad
H_N(W):=\sup_{t\in W}\sup_{k>N}H_k(t).
```

The required theorem is:

```math
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt
\le
Charge_N^{height}(W)+Loss_{legal}(W)+o_N(1),
\tag{HFC.1}
```

where `F_\ell` is the native nonlinear shell flux/source term and the charge must
be lower than the source wall.

## Why This Attempt

The response lane has an installed full-coefficient adjoint drain:

```text
FullCoefficientLinearizedAdjointKernel.A
+ FullCoeffParentOrCharge_resp.A
+ OrdinaryDissipationTail.A
=> ResponseTPNI.A
```

and it also discharges response-height creation because the response equation has
the external source

```math
L_u z=\Delta u,
```

which the full adjoint pairs in `H^{-1}` against ordinary dissipation.

The tempting source-wall move is to do the same thing for the native active
shells: put the positive strain into the principal operator, use first-pulse
minimality to remove parents, and charge the remaining creation.

## Native Full-Principal Shell Equation

For a donor shell `\ell`, write the localized native shell equation in
full-principal form:

```math
L_\ell^{nat}u_\ell
:=
\partial_t u_\ell
+\mathbb P_\ell(b_\ell\cdot\nabla u_\ell+B_\ell u_\ell)
-\nu\Delta u_\ell
=R_\ell^{nat}.
\tag{HFC.2}
```

Here `b_\ell` is the retained same-fluid transport field, `B_\ell` is the
localized low/intermediate velocity gradient, and `R_\ell^{nat}` contains the
projection commutators, cutoff/off-packet terms, near-collar terms, and
high-high remainders left outside the principal packet.

Pairing with a backward full-principal adjoint packet `\Psi_T` gives

```math
\langle u_\ell(t_+),\Psi_T(t_+)\rangle
=
\langle u_\ell(\sigma_T),\Psi_T(\sigma_T)\rangle
+\int_{\sigma_T}^{t_+}\langle R_\ell^{nat},\Psi_T\rangle dt.
\tag{HFC.3}
```

Thus the positive low-strain term is not an external forcing in this identity.
It can amplify inherited mass, but it does not by itself create mass from zero.

## Conditional Drain

If the following tail-weighted square drain were available,

```math
\boxed{
TailWeightedFullPrincipalDrain.A
}
```

namely:

```math
\sum_{T\subset W}
\omega_T
\left|
\int_{I_T}\langle R_{\ell(T)}^{nat},\Psi_T\rangle dt
\right|^2
\le
Charge_N^{height}(W)+Loss_{legal}(W)+o_N(1),
\tag{HFC.4}
```

with the weights `\omega_T` exactly representing the donor-height tail

```math
\sup_{k>N}2^k\sum_{\ell>k+4}D_\ell,
```

and if the earlier endpoint terms in `(HFC.3)` formed a contractive parent kernel
in the same tail-weighted norm, then first-pulse minimality would imply:

```math
TailWeightedFullPrincipalDrain.A
\Longrightarrow
HeightFluxControl.A.
\tag{HFC.5}
```

Then the known stack would close the direct branch:

```math
HeightFluxControl.A
\Longrightarrow
DonorHeightCreation.A
\Longrightarrow
ReserveCreationCharge.A
\Longrightarrow
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
\tag{HFC.6}
```

## Direct Test Of The Drain

The installed normalized-adjoint package proves the child-mass parent-or-charge
law:

```math
M(T)
\le
\sum_{P\prec T}\kappa(P,T)M(P)+Charge(T)+Err(T),
\tag{HFC.7}
```

with

```math
\sum_TCharge(T)\le C\int\sum_{q>N}D_q(t)dt+o_N(1).
\tag{HFC.8}
```

This is not `(HFC.4)`.  It controls selected child packet mass in the normalized
adjoint frame.  The source-wall target controls the donor-tail height/square
reserve:

```math
\sup_{k>N}2^k\sum_{\ell>k+4}D_\ell(t)
\quad\text{or}\quad
\sum_{k>N}2^k\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
\tag{HFC.9}
```

`ParentSquareEmbed.A` gives only the static conversion from diffuse parentage to
the donor square reserve.  It does not give time evolution or first-creation
charge for that reserve.

The response-side full adjoint also does not transfer to `(HFC.4)`: its decisive
feature is that `Delta u` is an external source paid in `H^{-1}` by ordinary
dissipation.  In the native equation, the residual `R_\ell^{nat}` contains the
same near-collar / high-high / selected positive source geometry whose
tail-weighted square charge is the source wall.  Pairing it against full-principal
adjoints in the donor-height norm asks for exactly the missing estimate.

## Scalar Obstruction Survives

The scalar short-pulse model is still compatible with all first-moment charges.
For one active donor shell,

```math
D_L(t)=A_Lh_L^{-1}{\bf 1}_{I_L}(t),
\qquad |I_L|=h_L,
```

the ordinary high-frequency dissipation tail is

```math
\int_{I_L}D_L(t)dt=A_L,
```

while the donor height is

```math
\sup_{k<L-4}2^kD_L(t)=2^{L-5} A_Lh_L^{-1}.
```

Taking `A_L\to0` and `h_L` much smaller than the heat-scale tail keeps the
first-moment charge negligible while creating a large height pulse.  A
full-principal identity rules this out only if it supplies a tail-weighted
residual square charge for the native residuals.  That is `(HFC.4)`.

## Verdict

The full-principal-adjoint shortcut does not close `HeightFluxControl.A` from the
currently installed inputs.

It proves only the conditional reduction:

```math
\boxed{
TailWeightedFullPrincipalDrain.A
\Longrightarrow
HeightFluxControl.A.
}
\tag{HFC.10}
```

and the direct test shows that `TailWeightedFullPrincipalDrain.A` is not lower
than the source wall unless a new structural estimate controls native residual
creation in the donor-height norm.

The exact surviving direct burden remains:

```math
\boxed{
\text{large first-time donor-height creation must pay a native shell/strain
ledger below the source wall.}
}
```

Equivalently, prove a genuinely noncircular source-weighted theorem such as:

```text
active strain decorrelation surviving the donor-height weight,
retained Pack/Part gain strong enough to charge first height creation,
terminal no-incoming rigidity for native donor-height residuals,
or a tail-weighted full-principal residual square estimate not equivalent to
ScaleCriticalTreeCarleson.A.
```

The Zeno alternate remains preserved only as a new explicit rigid class `B` with
source-residue Liouville; this attempt does not produce such a class.
