# MPP Independent PRD Alternative Proof Attempts

Date: 2026-05-16

Status: bounded alternative proof attempts for
`IndependentPositiveRemainderDepletion.A`; no independent discharge found.

Purpose: answer whether `PositiveRemainderDepletion.A` can be proved by a route
different from the post-ASAC/Zeno conditional loop.

## 0. Target

The independent theorem would be:

```math
\boxed{
IndependentPositiveRemainderDepletion.A:
\quad
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+\operatorname{Drain}_{parent}(P)
+\operatorname{Loss}_{legal}(P),
\quad 0<\theta<1,
}
```

uniformly on bounded-overlap same-fluid terminal families, without importing:

```text
ScaleCriticalTreeCarleson.A,
LocalPositiveSourceCarleson.A,
TemporalNonAtomicSource.A,
ZenoSourceResidueRigidity.A.
```

The main positive remainder is:

```math
[\mathcal R_P^{main}]_+
=
\chi_P|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

## 1. Alternative proof attempt: vorticity/enstrophy identity

The vorticity equation is:

```math
\partial_t\omega+u\cdot\nabla\omega-\nu\Delta\omega=S\omega.
```

The enstrophy identity is:

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int \omega\cdot S\omega.
```

The tempting idea is to treat the positive stretching term as energy variation
plus dissipation and then charge it to the installed drain ledger.

This does not prove PRD.  The identity is signed before terminal localization
and positive-part selection.  On selected same-fluid terminal windows, the
positive carrier may align with an expanding eigendirection:

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
e=(1,0,0),
\qquad
e\cdot Se=2>0.
```

This is compatible with incompressibility.  Pressure recovery enforces the
constraint and supplies elliptic/legal ledgers, but it does not impose a sign on
the localized stretching term.  Thus the vorticity/enstrophy identity reduces
to one of:

```text
negative-part comparison after selection,
terminal angular mixing / strain decorrelation,
source-weighted active reserve,
coefficient integrability on the selected terminal packet.
```

None is installed by the identity itself.

## 2. Alternative proof attempt: local energy as positive variation

On a transported same-fluid packet the local energy inequality gives:

```math
E_P(t_2)+\nu D_P([t_1,t_2])
\le
E_P(t_1)
+F_{cut}
+F_{conv}
+F_{press}
+F_{frame}.
```

The tempting idea is that a terminal positive source pulse must show up as
energy growth or heat-scale dissipation.

This also does not prove PRD.  The convective flux term is exactly the active
source/amplitude channel.  A terminal packet can persist, hop to adjacent
labels, or concentrate on a shrinking heat-scale schedule while preserving the
global first-moment energy/dissipation ledger.  Local energy gives:

```text
amplitude/source paid by local drain and pressure
```

or

```text
amplitude/source transported through the active flux channel.
```

The second alternative is precisely the source-pulse branch.  Excluding it is
an active-square / source-residence theorem, not a consequence of local energy
alone.

## 3. Alternative proof attempt: weighted one-sided enstrophy-tail flux

The weighted one-sided enstrophy-tail identity is the sharpest PDE-structure
route found so far.  It packages the upper shell tail:

```math
\Phi_j^\sigma(t)=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}E_\ell(t),
\qquad
\mathcal T_j^\sigma(t)=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

After weighted tail summation, the lifted term becomes a lower-to-upper carrier:

```math
\mathcal R_{j,\mathrm{lift}}^\sigma
:=
\sum_{k>j+M}
2^{-\sigma(k-j)}
a_k(t)\mathcal D_k^\uparrow(t).
```

After the square-theorem `2^j` summation, it carries:

```math
\sum_{k>N}2^k a_k(t)\mathcal D_k^\uparrow(t).
```

This is useful structure, but it does not close PRD.  Absorbing this carrier
requires a coercive square theorem such as:

```math
\int_0^T
\sum_{j>N}2^j(\mathcal T_j^\sigma(t))^2\,dt
\le
o_N(1),
```

or an equivalent active-square/source Carleson reserve.  That is the direct
source-wall theorem in another form, not an independent PRD proof.

## 4. Alternative proof attempt: material eigenframe turnover

The fresh non-installed attempt is recorded in
`mpp-independent-prd-material-eigenframe-attempt-20260516.md`, with the turnover
side tested further in
`mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md`.

It treats the coefficient

```math
\sigma_P(t)=e_P(t)\cdot S^{loc}_{<j_P}(X_P(t),t)e_P(t)
```

as a scalar material-eigenframe readout.  A large positive source bill then has
two possible time shapes:

```text
heat-scale positive residence,
or
rapid eigenframe/strain turnover.
```

The one-dimensional turnover/residence dichotomy is valid only after the
coefficient estimates are stated.  The far-low strain turnover is paid by the
material-derivative estimate

```math
\tau_P\int_{I_P}|D_tS^{far}_{j_P,L}|\,dt
\le
C_{\mathrm{far}}2^{-2L}\int_{I_P}\|S^{far}_{j_P,L}\|_\infty\,dt
+\mathrm{legal\ commutators}.
```

The near-band heat part is paid only on the subparabolic set
\(\|S^{near}_{j_P,L}\|_\infty\le\theta\tau_P^{-1}\), where the summed
absorption is

```math
\sum_P\omega_PE_PV_P^{heat}\le C_L\theta H_W,
\qquad
H_W:=\sum_P\omega_PE_P,
```

after choosing \(\theta\le\eta_{\rm abs}/C_L\).  The direct proof breaks at the
near-band material term

```math
e_P\cdot P^{loc}_{j_P,L}(S^2+\Omega^2+\nabla^2p)e_P
```

and the associated frame-rotation cost.  Absolute estimates of this term give
the same scale-critical active coefficient bound, while signed integration by
parts reintroduces the one-sided terminal source-current.

Thus this attempt isolates a sharper possible new atom:

```math
\boxed{TerminalEigenframeTurnoverCharge.A}
```

or its residence companion:

```math
\boxed{TerminalSourceResidenceEvacuation.A}.
```

Either one is a genuinely new proof route if proved directly from the
Navier--Stokes packet equations and original smooth data.

## 5. What remains genuinely independent

The alternative attempts all reduce to one of three non-circular atoms:

```math
\boxed{TerminalAngularMixing.A}
```

meaning a source-weighted decorrelation theorem for active directions against
expanding localized strain;

```math
\boxed{PositiveActiveCarlesonReserve.A}
```

meaning a scale-critical active-square/source reserve on the same terminal
packets;

or

```math
\boxed{TerminalSourceReverseHolder.A}
```

meaning a non-Carleson temporal thickness theorem for the native positive source
measure, enough to prove `TemporalNonAtomicSource.A`.

The material-eigenframe attempt refines this list by separating the angular
option into a turnover version and a residence version:

```math
TerminalEigenframeTurnoverCharge.A
\quad\text{or}\quad
TerminalSourceResidenceEvacuation.A.
```

The direct turnover continuation sharpens the turnover side to:

```math
\boxed{OneSidedNearBandMaterialStrainBV.A}
```

or equivalently the pressure-sustain formulation:

```math
\boxed{TerminalPressureHessianNoSustain.A.}
```

## 6. Verdict

No independent proof of `PositiveRemainderDepletion.A` is currently obtained by:

```text
vorticity/enstrophy identity,
pressure-vortex structure,
local energy / CKN,
weighted one-sided enstrophy-tail flux,
material eigenframe turnover,
Beltrami/helical coherence,
vorticity-direction coherence,
pack-strain criteria,
or coefficient bounds.
```

Each route either loses sign after terminal positive selection or requires the
same source-weighted control it was meant to prove.

Thus the source-wall root remains open at:

```math
\boxed{
OriginalSmoothData\Longrightarrow UniformLedgerAC.A
}
```

equivalently:

```math
\boxed{
OriginalSmoothData\Longrightarrow NativeTrilinearDefectDomination.A.
}
```
