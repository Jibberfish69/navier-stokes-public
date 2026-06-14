# MPP Donor Amplitude / Time-Thickness Direct Attempt

## Status

Claimed status: failed.

This note attempts the donor pulse theorem requested after the direct `SquareReserveEvolution.A` attempt. The goal is to convert first-moment donor-tail dissipation into the scale-critical square reserve by proving that terminal donor pulses have enough time thickness, or equivalently limited amplitude.

## Target

For

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
```

the desired donor theorem has the form

```math
DonorTimeThickness.A:
\quad
\int_I2^kT_k(t)^2dt
\le
Charge(I)+o_N(1)+Loss_{legal}
```

on every terminal active window `I` and every active `k>N`.

A time-thickness formulation is

```math
c_{\mathrm{thick}}
{2^k\left(\int_I T_k(t)dt\right)^2\over Charge(I)+o_N(1)+Loss_{legal}}
\le
|I|
```

A pointwise-amplitude formulation is

```math
\sup_{t\in I}T_k(t)
\le
C_{\mathrm{amp}}
2^{-k}{Charge(I)+o_N(1)+Loss_{legal}\over \int_I T_k(t)dt}.
```

Either formulation would convert the installed first-moment tail ledger into the square reserve.

## Reduction to an L1-to-L2 problem

Let

```math
A_k(I):=\int_I T_k(t)dt.
```

The desired reserve bound is

```math
2^k\|T_k\|_{L^2_t(I)}^2
\le
C_{\mathrm{res}}\left(Charge(I)+o_N(1)+Loss_{legal}\right).
```

The installed first-moment control gives an `L^1_t` estimate for the donor tail. The square reserve asks for a weighted `L^2_t` estimate. Therefore the missing ingredient is exactly a theorem that upgrades

```math
\|T_k\|_{L^1_t(I)}
```

into

```math
2^{k/2}\|T_k\|_{L^2_t(I)}.
```

Such an upgrade requires one of two mechanisms: a pointwise amplitude cap for `T_k`, or a lower bound on the duration of any pulse carrying mass `A_k(I)`.

## Energy and Bernstein test

Energy bounds the velocity, giving for a single dyadic block only the Bernstein
pointwise estimate

```math
D_\ell(t)
\le
C_B\nu 2^{4\ell}\|u(t)\|_2^2.
```

This grows with frequency and has the wrong sign for the reserve.

If one imports a pointwise enstrophy bound, then

```math
D_\ell(t)
\le
C_E\nu 2^{2\ell}\|\nabla u(t)\|_2^2.
```

This still grows like `2^{2\ell}`. Moreover, a uniform terminal enstrophy bound is already the Row 1 contradiction target. Importing it here would spend the theorem being proved.

Thus the installed energy-type bounds supply no reserve-scale amplitude cap of the required form

```math
T_k(t)
\le
C_Q2^{-k}\,ChargeDensity(t)
```

or any comparable high-frequency decay.

## Heat-window duration test

A heat-scale argument would need a creation law for the donor tail. A representative target would be

```math
\left|{d\over dt}T_k(t)\right|
\le C 2^{2k}T_k(t)+Forcing_k(t)
```

with `Forcing_k` priced by charge. Such an inequality could force a pulse carrying mass `A_k` to occupy a parabolic window before it contributes size `2^kA_k^2/|I|` to the reserve.

The current installed source-wall packet supplies the static parent-square embedding and the first-moment tail. It supplies no dynamic inequality for `T_k`, no forcing law for donor creation, and no parabolic lower bound for pulse width. Establishing this derivative inequality would amount to a version of `SquareReserveEvolution.A` itself.

## Scalar obstruction

The obstruction survives the donor theorem formulation directly. On a terminal window `I_m` of length `h_m`, set

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
```

Then

```math
A_m=\int_{I_m}T_m(t)dt
```

and

```math
\int_{I_m}2^mT_m(t)^2dt
=2^mA_m^2h_m^{-1}.
```

Choosing

```math
A_m\to0,
\qquad
h_m=2^mA_m^2/\eta
```

gives first-moment mass tending to zero while the square reserve contribution equals `\eta`.

This scalar pulse defeats every donor thickness proof based solely on first moment, terminal firstness, energy, and static parent-square embedding.

## Verdict

The donor amplitude / time-thickness theorem fails from the currently installed inputs.

The attempted theorem is equivalent to a new dynamic source-wall input. A successful proof must add one of the following independent ingredients:

1. a donor creation differential inequality for `T_k` with charge-priced forcing;
2. a pointwise high-frequency donor amplitude cap at reserve scale;
3. a signed evolution law whose telescoping terms control pulse creation;
4. a Zeno rigidity theorem converting arbitrarily thin pulses into a rigid terminal class and then into a residue contradiction.

## Impact on the loop

This item sharpens the Row 6 obstruction. The next direct target is the signed square-reserve evolution identity, because the amplitude/time-thickness route has reduced to the same missing dynamic law.
