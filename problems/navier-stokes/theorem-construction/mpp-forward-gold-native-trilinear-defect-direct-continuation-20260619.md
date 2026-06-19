# MPP Forward-Gold Native Trilinear Defect Direct Continuation

Date: 2026-06-19

## Status

This is a direct continuation of the forward-gold source-square / Carleson
route after the terminal time-face atom was isolated.  It does not stop at the
label `LocalPositiveSourceCarleson.A`; it tests the actual native carrier left
after the parent, donor, square-reserve, and height-flux presentations have
been reconciled.

The forward-gold target is still:

```math
\text{terminal time-face source atom cannot occur for the native
Navier--Stokes source}.
```

After the checked reductions, this is equivalent on the direct source-control
side to a bound for the selected localized positive trilinear carrier

```math
\mathcal T_P^+
:=
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc} w_{j_P},w_{j_P}\rangle
\right]_+
\,dx\,dt.
\tag{NTD.1}
```

For a bounded-overlap selected terminal same-fluid family `\mathcal F_N`, the
needed estimate is

```math
\boxed{
\sum_{P\in\mathcal F_N}\mathcal T_P^+
\le
o_N(1)+\operatorname{Loss}_{legal}(\mathcal F_N).
}
\tag{NTD.2}
```

This is the native trilinear form of `LocalPositiveSourceCarleson.A`,
`ScaleCriticalTreeCarleson.A`, and `PositiveRemainderDepletion.A`.

## Attempt 1: Trace-free strain and incompressibility

Write

```math
w_j=|w_j|e_j,
\qquad |e_j|=1.
```

Then

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{NTD.3}
```

Since the strain is trace-free, its eigenvalues sum to zero.  That does not
control the positive eigenvalue.  On a selected packet one may have

```math
S_{<j}^{loc}e=\lambda e,
\qquad \lambda>0,
\qquad w_j\parallel e.
\tag{NTD.4}
```

Then the selected source is positive:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=\lambda |w_j|^2.
\tag{NTD.5}
```

Incompressibility supplies signed redistribution among the eigen-directions,
not a one-sided bound after packet localization and positive-part selection.
Thus trace-free structure does not prove `(NTD.2)`.

## Attempt 2: Local energy and viscous dissipation

On a localized high packet the shell energy balance has the form

```math
\partial_t E_P+D_P
\le
\langle S_{<j}^{loc}w_j,w_j\rangle
\+
\operatorname{div}_{\Phi}J_P
\+
\operatorname{Legal}_P .
\tag{NTD.6}
```

The good viscous term is `D_P`.  The bad term is exactly `(NTD.1)`.

A local absorption estimate would need

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\le
\theta D_P
\+
\operatorname{Drain}_{parent}(P)
\+
\operatorname{Loss}_{legal}(P),
\qquad 0<\theta<1.
\tag{NTD.7}
```

The installed local energy package does not supply `(NTD.7)`.  A source-balanced
terminal pulse is precisely the case where the positive strain/source term
refills the high packet at the same scale as viscosity drains it.  The local
energy inequality sees this as a possible jump or source input; it does not by
itself forbid the input.

## Attempt 3: Pressure and Leray projection

Pressure recovery gives spatial singular-integral control:

```math
-\Delta p=\partial_i\partial_j(u_iu_j).
\tag{NTD.8}
```

This controls pressure on each time slice by Calderon--Zygmund estimates.  It
does not provide a terminal time-spread modulus for `(NTD.1)`.  For a separated
terminal layer

```math
u_m(t,x)=a_m(t)U_m(x),
\qquad
a_m(t)=\tau_m^{-1/2}\mathbf 1_{(-\tau_m,0]}(t),
\tag{NTD.9}
```

the pressure has time factor `a_m(t)^2` and remains concentrated on the same
terminal layer.  Pressure therefore moves the source among spatial channels; it
does not rule out the last-instant concentration unless an additional source
residence, trace-AC, pressure-memory, or scale-critical reserve theorem is
proved.

## Attempt 4: Signed trilinear cancellation

The global convection term has signed cancellation:

```math
\int (u\cdot\nabla)u\cdot u\,dx=0.
\tag{NTD.10}
```

The native source carrier in `(NTD.1)` is not that signed global form.  It is
localized, projected, weighted/lifted, packet-selected, and positive-parted.
The signed negative partner may be retained, may exit legally, or may be moved
into another donor packet.  Finite donor chains telescope, but an infinite
terminal Zeno donor chain can keep reintroducing the signed obligation at
shrinking heat scales.

Thus signed cancellation proves only a conditional accounting statement:

```math
\text{positive selected edge}
\le
\text{retained signed partner}
+\text{legal exits}
+\text{terminal Zeno donor-chain remainder}.
\tag{NTD.11}
```

It does not prove `(NTD.2)` unless the terminal Zeno remainder is charged by a
source-square, source-residence, or no-free-sink theorem.

## Attempt 5: Diffuse parent square reserve

`ParentSquareEmbed.A` removes the bounded-parent-selector obstruction:

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right|^2
\le
C\sum_{P^-}|A_{P^-}|^2+o_N(1).
\tag{NTD.12}
```

After Cauchy/Young, `(NTD.1)` reduces to the square reserve

```math
\mathcal R_N(W)
=
\int_W
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt.
\tag{NTD.13}
```

The direct forward-gold estimate would need

```math
\boxed{
\mathcal R_N(W)
\le
o_N(1)+\operatorname{Loss}_{legal}(W).
}
\tag{NTD.14}
```

The installed high-frequency dissipation tail gives only the first moment

```math
\int_W\sum_{\ell>N}D_\ell(t)\,dt=o_N(1).
\tag{NTD.15}
```

The scalar terminal pulse model shows why `(NTD.15)` does not imply
`(NTD.14)`.  Let

```math
D_{m+5}(t)=A_mh_m^{-1}\mathbf 1_{I_m}(t),
\qquad |I_m|=h_m,
\qquad D_\ell=0\quad(\ell\ne m+5).
\tag{NTD.16}
```

Then

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt=A_m,
\tag{NTD.17}
```

but

```math
\int_{I_m}
2^m
\left(
\sum_{\ell>m+4}D_\ell(t)
\right)^2dt
=
2^mA_m^2h_m^{-1}.
\tag{NTD.18}
```

Choosing

```math
A_m=2^{-2m},
\qquad
h_m=2^{-3m},
\tag{NTD.19}
```

gives

```math
A_m\to0,
\qquad
2^mA_m^2h_m^{-1}=1.
\tag{NTD.20}
```

So the available first-moment charge vanishes while the scale-critical square
reserve stays order one.  This is not asserted as an exact Navier--Stokes
solution; it is a countermodel to deriving the source-square estimate from the
currently installed first-moment, static-Bessel, local-energy, and pressure
inputs.

## Attempt 6: First reserve creation

The square-first-pulse repair selects the first terminal same-fluid window `W`
where

```math
\mathcal R_N(W)\ge\eta.
\tag{NTD.21}
```

This correctly avoids the diffuse-parent selector failure.  The required
dynamic inequality is

```math
\boxed{
\left[
\mathcal R_N(W)
-(1-\delta)\mathcal R_N(\operatorname{Past}(W))
-\operatorname{Loss}_{legal}(W)
\right]_+
\le
\operatorname{Charge}_N(W)+o_N(1).
}
\tag{NTD.22}
```

The installed normalized-adjoint machinery gives a dynamic parent-or-charge
identity for child packet mass

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
\tag{NTD.23}
```

It does not give a dynamic identity for the donor square reserve
`\mathcal R_N`.  `ParentSquareEmbed.A` is a static upper embedding; it is not
an invertible lower frame and it has no time derivative, dissipation sign, or
contractive parent map for `\mathcal R_N`.

Therefore `(NTD.22)` is the exact missing gold inequality, not a consequence of
the current packet calculus.

## Current forward-gold obstruction

All direct positive estimates reduce to the same native obstruction:

```math
\boxed{
\text{a terminal high-frequency packet may remain aligned with an expanding
low-strain direction on a vanishing heat window, creating a positive native
trilinear source while all installed first-moment and signed ledgers stay
finite.}
}
\tag{NTD.24}
```

The direct forward-gold proof closes only after one of the following genuinely
noncircular theorems is proved:

```math
\boxed{
\textbf{NativeTrilinearDefectDomination.A: }
\sum_{P\in\mathcal F_N}\mathcal T_P^+
\le
o_N(1)+\operatorname{Loss}_{legal}(\mathcal F_N).
}
\tag{NTD.25}
```

or the equivalent square-reserve first-creation theorem:

```math
\boxed{
\textbf{ReserveCreationCharge.A: }
\left[
\mathcal R_N(W)
-(1-\delta)\mathcal R_N(\operatorname{Past}(W))
-\operatorname{Loss}_{legal}(W)
\right]_+
\le
\operatorname{Charge}_N(W)+o_N(1).
}
\tag{NTD.26}
```

or a source-residence theorem:

```math
\boxed{
\textbf{TerminalMovingPacketSourceResidence.A: }
\mu_N^{src,+}(Q(P)\cap\{T_*-\varepsilon<t<T_*\})
\le
C\varepsilon^\theta+o_N(1),
\qquad \theta>0,
}
\tag{NTD.27}
```

or a rigid compactness theorem:

```math
\boxed{
\textbf{CompactNativeSourceResidueRigidity.A: }
\text{every terminal Zeno limit carrying the residue in }(NTD.1)
\text{ lies in a rigid class whose source residue must vanish.}
}
\tag{NTD.28}
```

## Verdict

The forward-gold route has now been pushed down to the native positive
trilinear carrier itself.  The branch does not fail because of binomial tower
combinatorics, Laurent rigidity, Weingarten language, Dehn twists, current
compactness, pressure ellipticity, or bounded-parent selection.  Those were
diagnostic or support layers.

The exact live mathematical wall is:

```math
\boxed{
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\text{ on selected terminal heat packets has no installed same-ledger
coercive bound below the source wall.}
}
```

Equivalently, first-time creation of the scale-critical donor square reserve
has no proved charge inequality from current inputs.

Thus the gold proof is not closed by the current materials.  The next theorem
is not another route survey.  It is a proof of `(NTD.25)`, `(NTD.26)`,
`(NTD.27)`, or `(NTD.28)` from original smooth data, with `(NTD.25)` and
`(NTD.26)` the most direct analytic forms.
