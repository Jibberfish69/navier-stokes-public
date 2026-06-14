# MPP ParabolicEdgeResistance.A Direct Attempt

## Status

Direct theorem-facing attempt on the sharpened signed-current gate:

```math
\boxed{
ParabolicEdgeResistance.A.
}
```

Verdict:

```math
\boxed{
ParabolicEdgeResistance.A
\text{ is not proved from the installed inputs in this note.}
}
```

The valid output is a conditional resistance estimate with an explicit
scale-critical flux-amplitude remainder.  That remainder is exactly the active
square / scale-critical source reserve already named by
`ScaleCriticalTreeCarleson.A`.

Thus the parabolic source-current route remains structurally useful, but this
attempt does not move the root wall below:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

## Target

For each legal same-fluid packet edge `e:P\to P'` at heat scale `2^{-j_e}`,
the hoped-for theorem is a current-capacity bound:

```math
\int_I |J_e(t)|\,dt
\le
\varepsilon
\int_I\mathcal R_e(t)\,dt
+C_\varepsilon Boundary_e^+
+Loss_e
+o_N(1),
\tag{PER}
```

or the equivalent action form:

```math
\int_I
{ |J_e(t)|^2 \over D_P(t)+D_{P'}(t)+D_{halo(e)}(t)}
\,2^{-j_e}\,dt
\le
C\int_I
\left(D_P+D_{P'}+D_{halo(e)}\right)\,dt
+Loss_e+o_N(1).
\tag{PER2}
```

This would price every legal same-fluid transfer edge by local viscous heat and
would feed the conditional graph theorem:

```math
LocalizedSkewCurrent.A
+ParabolicEdgeResistance.A
\Longrightarrow
CycleHeatAction.A.
```

## Installed Flux Estimate

The localized Littlewood--Paley commutator estimates give only the edge bound:

```math
|J_e(t)|
\le
C_{PER}
\mathfrak a_e(t)\,
\left(D_P(t)+D_{P'}(t)+D_{halo(e)}(t)\right)
+Loss_e(t),
\tag{1}
```

where `\mathfrak a_e` is a scale-critical flux amplitude.  In low-high form set

```math
\mathfrak a_e(t)
:=
2^{-2j_e}
\|\nabla u_{\le j_e-C}(t)\|_{L^\infty(Q_e)}
+\mathfrak a_e^{hi-hi}(t)
+\mathfrak a_e^{comm}(t),
\tag{2}
```

with the high-high and commutator pieces represented by the same localized
critical trilinear packet amplitudes used in the active source ledger.

Young's inequality gives the honest integrated form:

```math
\int_I |J_e|
\le
\varepsilon
\int_I D_e
+
C_\varepsilon
\int_I \mathfrak a_e(t)^2 D_e(t)\,dt
+
\int_I Loss_e,
\tag{3}
```

where

```math
D_e:=D_P+D_{P'}+D_{halo(e)}.
```

This proves a **conditional** resistance law:

```math
\boxed{
CriticalFluxAmplitudeSmall.A
+LegalLossLedger.A
\Longrightarrow
ParabolicEdgeResistance.A.
}
\tag{4}
```

The missing hypothesis is precisely:

```math
\sum_{e\in\mathcal E_N}
\int_I \mathfrak a_e(t)^2D_e(t)\,dt
=o_N(1)+Loss_{legal}.
\tag{5}
```

After dyadic summation and bounded-overlap packet expansion, `(5)` is the same
scale-critical active-square source reserve:

```math
\int_I
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
dt
\le
o_N(1)+Loss_{legal}.
\tag{6}
```

That is `ScaleCriticalTreeCarleson.A`.

## External Flux Sanity Check

This conclusion matches the standard Littlewood--Paley flux picture.  The
Cheskidov--Constantin--Friedlander--Shvydkoy flux theorem controls energy flux
by local interactions, not by a sign-free dissipative resistance law.  In the
Navier--Stokes energy-equality literature, vanishing of the high-frequency flux
requires an Onsager/Besov-type spacetime integrability condition; it is not a
formal consequence of incompressibility plus finite energy alone.

References used only as a sanity check:

- Cheskidov--Shvydkoy, *Energy conservation and Onsager's conjecture for the
  Euler equations*, arXiv:0704.0759.
- Cheskidov--Friedlander--Shvydkoy, *On the energy equality for weak solutions
  of the 3D Navier-Stokes equations*, arXiv:0704.2089.
- Cheskidov--Luo, *Energy equality for the Navier-Stokes equations in
  weak-in-time Onsager spaces*, Proposition 3.2 records the LP flux estimate.
- Burczak--Sattig, *Anomalous Energy Flux in Critical \(L^p\)-Based Spaces*,
  constructs divergence-free fields with positive LP flux at critical
  regularity.  This is not a Navier--Stokes counterexample, but it confirms
  that positive flux is not ruled out by the bare divergence-free algebra.

## Obstruction

The desired `(PER)` would require the coefficient `\mathfrak a_e` in `(1)` to be
small, integrably small, or paid by an already installed legal ledger.

The current repo inputs provide:

```math
\int\sum_{q>N}D_q(t)\,dt=o_N(1)
```

and legal pressure/cutoff/off-family bookkeeping.  They do **not** provide:

```math
\int
\mathfrak a_e(t)^2D_e(t)\,dt=o_N(1)
```

on selected terminal active windows.

Trying to estimate this term by Cauchy/Young returns the donor-tail square
reserve `(6)`.  This is the same obstruction recorded in the
`HeatScaleSquareSource.A`, `UniformTemporalSourceIntegrability_p.A`, and
`SquareReserveEvolution.A` attempts.

## Corrected Conditional Interface

The theorem-grade conditional statement is:

```math
\boxed{
TerminalSkewLocalizationLedger.A
+ParabolicNoFreeSink.A
+CriticalFluxAmplitudeSmall.A
+FirstCurrentPruning.A
\Longrightarrow
CycleHeatAction.A.
}
\tag{7}
```

with:

```math
CriticalFluxAmplitudeSmall.A
\equiv_{\mathrm{route}}
ScaleCriticalTreeCarleson.A.
```

Equivalently, one may keep the named edge-resistance gate, but then its true
supplier is:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\Longrightarrow
ParabolicEdgeResistance.A.
}
\tag{8}
```

This implication is useful for consistency and downstream graph pricing, but it
is circular as a proof of `ScaleCriticalTreeCarleson.A`.

## Proof Verdict

```math
\boxed{
OriginalSmoothData
\not\Rightarrow_{\mathrm{installed}}
ParabolicEdgeResistance.A.
}
```

The sharp obstruction is not graph theory.  It is the missing uniform
scale-critical control of localized nonlinear flux amplitudes on terminal
same-fluid active windows.  Proving that control is exactly the live direct
source-wall theorem:

```math
\boxed{
ScaleCriticalTreeCarleson.A.
}
```
