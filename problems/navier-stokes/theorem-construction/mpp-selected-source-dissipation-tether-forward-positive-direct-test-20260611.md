# MPP Selected Source Dissipation Tether Forward-Positive Direct Test

Date: 2026-06-11

Status: forward-positive direct test of the first concrete new-production route
under `TerminalTimeFaceAntiAtom.A`.

## Target

The terminal time-face branch needs a modulus:

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
```

One possible route is to tether the selected native positive source measure to
a quantitative dissipation/CKN-type measure:

```math
\boxed{
SelectedSourceDissipationTether.A:
\quad
\mu_m^{src,+}(E)
\le
C\,\mathcal D_m^{CKN}(E)+o_m(1)
}
```

on the selected terminal windows, and then prove an absolute-continuity modulus
for the right-hand side:

```math
\boxed{
\mathcal D_m^{CKN}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1).
}
```

Together these imply `TerminalTimeFaceAntiAtom.A`.

## What The Tether Must Do

The tether cannot be a bare local energy estimate.  It must preserve the
selected positive pre-Cauchy source carrier:

```math
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+.
```

It must also survive the terminal selected family:

```math
\mathcal F_N
```

with constants independent of terminal scale.  A useful form is:

```math
\sum_{P\in\mathcal F_N}
\mu_P^{src,+}(E\cap Q(P))
\le
C\sum_{P\in\mathcal F_N}
\int_{E\cap Q(P)}
\left(
|\nabla u_P|^2+|u_P|^3+|p_P|^{3/2}
\right)
+o_N(1).
```

This estimate would say that positive source mass cannot hide in a separate
ledger from the scale-critical regularity quantities.

## Direct Pointwise Test

The localized nonlinear source has trilinear structure. One test term in the
test has the form:

```math
u_{low}\,\nabla u_{high}\,u_{active}
```

or its localized pressure/commutator variants.

Young and Cauchy estimates can bound the source by dissipation plus active
coefficients, but the active coefficients produce exactly the active-square
reserve:

```math
2^{-j}D_j^2,
```

or the positive source carrier already isolated in the source no-pulse branch.

Thus the available weak tether has the form:

```math
\mu^{src,+}(E)
\le
C_T\left(
\mathcal D_m^{CKN}(E)+\mathcal R_m^{active}(E)
\right)+o_m(1),
```

where `\mathcal R_m^{active}` is the same active-square/source-control reserve
isolated in the no-pulse branch.  It does not independently prove the terminal
modulus.

## CKN Measure Test

The CKN scale-critical quantities are:

```math
\int
\left(
|u|^3+|p|^{3/2}+|\nabla u|^2
\right).
```

They are the correct regularity currency, but finite `L^1` control of this
currency still permits terminal concentration at the measure level.  The witness sequence:

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has `||g_m||_{L^1}=1` and `g_m(s) ds -> delta_0` weakly.  For any nonzero
`f in L^2`,

```math
\int_{-1/m}^{0}m e^{(0-s)\nu\Delta}f\,ds\to f
\quad\text{in }L^2 .
```

A CKN-type measure can concentrate in the same way unless a super-`L^1`
temporal modulus, Type I bound, smallness criterion, or quantitative
absolute-continuity theorem is proved on the selected windows.

Therefore the CKN tether route splits into two real requirements:

```math
SelectedSourceDissipationTether.A
```

and:

```math
QuantitativeDissipationAbsoluteContinuity.A
```

on the same selected terminal family.

## Absolute-Continuity Test

The available local energy and compactness estimates give finite mass:

```math
\mathcal D_m^{CKN}(B_R\times[-1,0])\le C_R.
```

They do not give a uniform terminal slab modulus:

```math
\mathcal D_m^{CKN}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon).
```

The missing estimate is a reverse-Holder or super-`L^1` temporal statement:

```math
\left\|
\mathcal D_m^{CKN}(B_R\times ds)
\right\|_{L_s^p(-1,0)}
\le C_R,
\qquad p>1,
```

or an equivalent terminal time-thickness law.  This is not produced by fixed
positive viscosity on a vanishing terminal layer, because in normalized
variables:

```math
\int_{-1/m}^{0} e^{(0-s)\nu\Delta}F_m(s)\,ds
```

can remain nonzero.  For example, if
`F_m(s)=m\mathbf 1_{(-1/m,0]}(s)f` with `0\ne f\in L^2`, then

```math
\int_{-1/m}^{0} m e^{(0-s)\nu\Delta}f\,ds \to f
\quad\text{in }L^2
```

by strong continuity of the heat semigroup.

## Verdict

`SelectedSourceDissipationTether.A` does not currently close
`TerminalTimeFaceAntiAtom.A`.

The direct route has split into two exact forward-positive burdens:

```math
\boxed{
SelectedSourceDissipationTether.A
}
```

and:

```math
\boxed{
QuantitativeDissipationAbsoluteContinuity.A
\quad\text{or}\quad
TerminalSourceReverseHolder.A.
}
```

The first keeps the selected positive source in the regularity currency.  The
second supplies the time-thickness needed to stop terminal concentration.  The
current installed inputs do not prove the second burden, and every available
direct estimate that tries to prove the first without extra structure returns
to the active-square/source-control reserve.

So the next new-production theorem is:

```math
\boxed{
TerminalSourceReverseHolder.A
}
```

or a stronger theorem that produces it for the selected terminal source/dissipation
measure.
