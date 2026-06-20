# MPP Forward Gold Reserve Creation Heat-Scale First-Appearance Test

Date: 2026-06-19

## Status

Direct first-appearance test complete.  `ReserveCreationCharge.A` cannot be
proved with only a first-moment high-frequency dissipation charge, even when
the terminal window has the natural heat-scale length.

This sharpens the older `SquareReserveEvolution.A` obstruction.  The older
scalar obstruction used a window shorter than heat time.  The present test uses
the exact heat window

\[
|I_m|=2^{-2m},
\]

so the failure is not caused by a super-heat temporal compression.  It is caused
by the missing pointwise height/source-square/no-waste control.

## 1. Reserve creation target

The desired dynamic reserve law has the form

\[
\left[
\mathcal R_N(W)
-
(1-\delta)\mathcal R_N(\operatorname{Past}(W))
-
\operatorname{Loss}_{legal}(W)
\right]_+
\le
\operatorname{Charge}_N(W)+o_N(1),
\tag{RCH.1}
\]

where

\[
\mathcal R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
\tag{RCH.2}
\]

The first-moment charge available from the inherited energy ledger is

\[
\mathcal F_N(W)
:=
\int_W\sum_{\ell>N}D_\ell(t)\,dt.
\tag{RCH.3}
\]

The first-moment version of `ReserveCreationCharge.A` would require

\[
\operatorname{Charge}_N(W)
\le
C\mathcal F_N(W)+o_N(1).
\tag{RCH.4}
\]

## 2. Heat-scale first-appearance model

Let

\[
h_m:=2^{-2m},
\qquad
I_m:=(T-h_m,T].
\]

Put one active high-frequency dissipation pulse at shell \(m+5\):

\[
D_{m+5}(t)=A_mh_m^{-1}\mathbf 1_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
\tag{RCH.5}
\]

Choose

\[
A_m:=2^{-3m/2}.
\tag{RCH.6}
\]

Then the first-moment tail charge is

\[
\mathcal F_m(I_m)
=
\int_{I_m}D_{m+5}(t)\,dt
=A_m
=2^{-3m/2}
\to0.
\tag{RCH.7}
\]

But the \(k=m\) square-reserve contribution is

\[
\int_{I_m}
2^m
\left(\sum_{\ell>m+4}D_\ell(t)\right)^2dt
=
2^mA_m^2h_m^{-1}.
\tag{RCH.8}
\]

Since \(h_m^{-1}=2^{2m}\),

\[
2^mA_m^2h_m^{-1}
=
2^m\,2^{-3m}\,2^{2m}
=1.
\tag{RCH.9}
\]

So the reserve first appears with value \(1\) while the first-moment charge
vanishes.

For a genuine first-appearance window with

\[
\mathcal R_m(\operatorname{Past}(I_m))=0,
\qquad
\operatorname{Loss}_{legal}(I_m)=0,
\tag{RCH.10}
\]

the left side of `(RCH.1)` is at least \(1\), while the first-moment charge in
`(RCH.4)` tends to zero.

## 3. Height reading

The active height on the same window is

\[
H_m(I_m)
\ge
2^mD_{m+5}(t)
=
2^mA_mh_m^{-1}
=
2^{3m/2}.
\tag{RCH.11}
\]

Thus the heat-scale first-appearance obstruction is exactly the active-height
failure.  A dynamic reserve creation theorem must charge creation of this
height, not merely charge the first moment of \(D_{m+5}\).

## 4. Consequence

The following first-moment route is false as a route-level implication:

\[
\mathcal F_N(W)\to0
\quad\Longrightarrow\quad
\mathcal R_N(W)\to0
\quad\text{for first-appearance terminal heat windows.}
\tag{RCH.12}
\]

Therefore `ReserveCreationCharge.A` must be supplied by one of the stronger
currencies already isolated in the route:

\[
\text{ActiveWindowHeight.A},
\]

\[
\text{a true source-square / critical-action charge},
\]

\[
\text{DonorReserveAdjointTrace.A with a lower-frame no-null-source theorem},
\]

\[
\text{source-residence / reverse-Holder control},
\]

or

\[
\text{strict no-waste / compact recurrent-profile rigidity}.
\]

It cannot be obtained by renaming the first-moment dissipation tail as a
creation charge.

## Verdict

The heat-scale first-appearance test removes the last first-moment reading of
`ReserveCreationCharge.A`.

\[
\boxed{
\text{Reserve creation is a height/source-square/no-waste problem, not a
first-moment drain problem.}
}
\]
