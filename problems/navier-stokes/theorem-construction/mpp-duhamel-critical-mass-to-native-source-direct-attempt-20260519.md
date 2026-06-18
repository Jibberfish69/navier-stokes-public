# MPP Duhamel Critical Mass To Native Source Direct Attempt

Date: 2026-05-19

## Status

Failed direct discharge; exact inverse-source primitive isolated.

This is the bounded attempt on the nonlinear half left by
`mpp-critical-l3-concentration-to-native-source-residue-direct-attempt-20260519.md`.

## Target

```math
DuhamelCriticalMassToNativeSource.A:
\quad
\text{nonzero terminal critical Duhamel mass}
\Longrightarrow
\mu_*^{sing}>0
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A.
```

The retained branch already assumes `Pack_Q`, `Part_{N,Q}`, no earlier selected
critical slice for the heat remainder, and no legal/non-selected/readout exit.

## Direct Attempt

Let

```math
w_m(t)=
\int_{t_{m,0}}^t e^{(t-s)\nu\Delta}
P\nabla\cdot(u_m\otimes u_m)(s)\,ds
```

carry terminal critical mass:

```math
\ell_m^{-2}
\int_{t_m-\ell_m^2}^{t_m}
\int_{B_{\ell_m}(x_m)}
|w_m|^3\,dxdt
\ge c_0>0.
```

A forward source proof would invert this response and select a packet family
`E_m` on the same terminal ledger with positive native source mass

```math
\nu_m(E_m)
=
\int_{E_m}
\left[
\langle S^{loc}_{<j_P}w_{j_P},w_{j_P}\rangle
\right]_+
dxdt
\ge c_1>0.
```

The installed Radon--Nikodym decision criterion is the exact implication

```math
\rho_m(E_m)\to0,\qquad \nu_m(E_m)\ge c_1
\quad\Longrightarrow\quad
\mu_*^{sing}\neq0
```

on the selected terminal packet algebra. If the source mass is carried by the
donor square reserve instead, failure to charge it is exactly selected
`\neg ScaleCriticalTreeCarleson.A`; if it is charged by the installed legal
ledger, it is not a retained counterexample.

## Failure Point

The inversion step is not installed. The Duhamel response is a signed,
Leray-projected, pressure-coupled object. A lower bound for `|w_m|^3` does not
by itself identify a positive packet for

```math
\left[
\langle S^{loc}_{<j}w_j,w_j\rangle
\right]_+.
```

Three hiding channels remain unless a new inverse theorem accounts for them:

1. cancellation before the positive-part extraction;
2. Leray/pressure redistribution that contributes to the response but is only
   a legal or Part-facing ledger after projection;
3. donor-square refill whose charge is exactly the scale-critical tree
   Carleson reserve.

The existing source-pulse Duhamel audit already records the same boundary:
heat damping separates old energy from nonlinear refill, but the refill is the
native source-control problem.

## Exact Missing Primitive

The target now has a sharper source-facing form:

```math
\boxed{
DuhamelInverseNativeSourceLocalization.A:
\quad
\text{terminal critical mass of }w_m
\Longrightarrow
\mu_*^{sing}>0
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid legal/Pack/Part exit.}
}
```

On the retained branch, the paid exit alternatives are removed, leaving exactly

```math
\mu_*^{sing}>0
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A.
```

The proof split in
`mpp-duhamel-inverse-native-source-localization-proof-split-20260519.md`
reduces this inverse theorem to

```math
L3DuhamelResponseWorkLocalization.A
+
ParaproductNativeSourceCapture.A
\Longrightarrow
DuhamelInverseNativeSourceLocalization.A.
```

The first lemma is adjoint heat/Leray localization. The second is the true
nonlinear source-geometry burden after one-sided terminal selection.

## Relation To Installed Notes

`RN.NativeDecision.A` is already installed as the measure decision criterion:
vanishing installed ledger plus fixed positive native source mass gives
`\mu_*^{sing}>0`.

`NativeSingularResidueToSCTCFailure.A` and the retained Field diagnostics
already spend either `\mu_*^{sing}>0` or selected
`\neg ScaleCriticalTreeCarleson.A` as a Field exit under retained `Pack` and
`Part`.

So the gap is upstream of those consumers. It is the inverse localization from
critical Duhamel response mass to the native positive source packet, with
projection/pressure/cancellation accounted for on the same witness ledger.

## Result

The public `L^3` bridge is now narrowed to:

```math
SameLedgerHeatAncestorLocalization.A
+
DuhamelInverseNativeSourceLocalization.A
\Longrightarrow
CriticalL3ConcentrationToNativeSourceResidue.A.
```

The first term is heat-kernel/Pack ancestor bookkeeping. The second term is the
real nonlinear theorem burden.
