# MPP Forward Gold CompactNativeSourceResidueRigidity.A Direct Test

Date: 2026-06-19

## Status

Direct test complete.  Compactness with a retained positive native source
residue is not, by itself, a rigidity contradiction.  The rigidity consumers
need a source-free or no-waste object.  Current inputs produce only a compact
local-suitable package with a possible endpoint or interior source defect.

So `CompactNativeSourceResidueRigidity.A` is not an independent supplier from
the current materials.  It reduces to source-residue evacuation, no-waste local
energy, strict Lyapunov drop, or the same Zeno/source-square reserve already
isolated.

## 1. Target

The native trilinear branch leaves the possible compactness theorem:

```math
\boxed{
\textbf{CompactNativeSourceResidueRigidity.A:}
\quad
\text{every terminal Zeno limit carrying the residue }
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
\text{ lies in a rigid class whose source residue vanishes.}
}
\tag{CNSR.1}
```

The selected positive residue is

```math
\mathcal T_P^+
=
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
\,dx\,dt.
\tag{CNSR.2}
```

The forward-gold use would be:

```math
\sum_{P\in\mathcal F_N}\mathcal T_P^+\ge c_0
\quad\Longrightarrow\quad
\text{compact source-residue limit}
\quad\Longrightarrow\quad
\text{contradiction.}
\tag{CNSR.3}
```

This note tests the second implication.

## 2. What compactness gives

After parabolic normalization and subsequence extraction, current compactness
can produce a local-suitable limit package

```math
(U,\Pi,\mu_*^{src},\mu_*^{LE})
\tag{CNSR.4}
```

on compact backward cylinders, with inherited nonzero selected residue such as

```math
\mu_*^{src}(Q_1^-)\ge c_0
\tag{CNSR.5}
```

or an endpoint version

```math
\mu_*^{src}(B_1\times\{0\})\ge c_0.
\tag{CNSR.6}
```

This is visibility.  It is not yet rigidity.

The equation satisfied by the limit is not necessarily source-free
Navier--Stokes.  The distributional form under test is

```math
\partial_s U-\nu\Delta U+(U\cdot\nabla)U+\nabla\Pi
=
\mathfrak R,
\qquad
\nabla\cdot U=0,
\tag{CNSR.7}
```

where \(\mathfrak R\) may contain selected source residue, endpoint defect,
modulation residue, pressure/cutoff defect, or local-energy defect.

Existing rigidity consumers do not apply to `(CNSR.7)` with arbitrary nonzero
\(\mathfrak R\).  They apply after the residue has been removed or identified
as a controlled force in a rigid class.

## 3. Endpoint residue can leave the ancient solution trivial

The pure terminal time-face atom can pass to a limit supported only on the
terminal boundary:

```math
\mu_*^{src}
=
\rho(y)\,dy\otimes\delta_{s=0}.
\tag{CNSR.8}
```

Then, for every \(a>0\),

```math
\mu_*^{src}(B_R\times[-R^2,-a])=0.
\tag{CNSR.9}
```

The open negative-time solution \(U(s)\), \(s<0\), may be regular, stationary,
or even trivial while the terminal boundary defect remains nonzero.  A rigidity
theorem for ancient source-free solutions cannot see an endpoint defect that
has not been converted into an interior source, a flux residue, or a forbidden
trace jump.

Thus endpoint compactness requires a trace theorem first:

```math
TerminalMovingPacketTraceModulus.A
\quad\text{or}\quad
NoWasteLocalEnergyFlux.A.
\tag{CNSR.10}
```

## 4. Interior source residue is a forced equation, not a contradiction

Suppose instead the residue survives on a genuine negative-time cylinder:

```math
\mu_*^{src}(B_1\times[-1,0])\ge c_0.
\tag{CNSR.11}
```

That still gives a forced or defect-bearing local-suitable object, not a
source-free rigidity target.  Nonzero forcing can support nonzero compact or
recurrent behavior.  A compact orbit for a forced dissipative equation is not
impossible without a sign-definite Lyapunov drop or a theorem proving the force
must vanish.

The missing statement would be a source-residue evacuation theorem:

```math
\boxed{
SourceResidueEvacuation.A:
\quad
\mathfrak R\neq0
\Longrightarrow
\text{legal cost, source-square reserve, or CM Part/Field failure.}
}
\tag{CNSR.12}
```

Current inputs do not prove `(CNSR.12)`.  They identify the residue as the same
selected positive native carrier already present in `(CNSR.2)`.

## 5. Stationary profile rigidity needs source-free production

The Landau/Sverak consumer is useful after the Zeno profile is produced as an
exact stationary, \((-1)\)-homogeneous, smooth-sphere profile with controlled
point force:

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P
=
\Phi_0\delta_0.
\tag{CNSR.13}
```

In the zero-force branch, the classification kills the profile.  But the
compact source-residue package `(CNSR.4)` does not automatically provide:

```math
\text{stationarity},
\quad
(-1)\text{-homogeneity},
\quad
\text{smoothness on }S^2,
\quad
\text{zero residual source},
\quad
\text{no modulation drift},
\quad
\text{no defect measure}.
\tag{CNSR.14}
```

Those are precisely the production hypotheses in

```math
MinimalZenoProfileProduction.A
\tag{CNSR.15}
```

or, in the critical-element language,

```math
CompactOrbitProduction.A
+
NoWasteLocalEnergyFlux.A
+
RenormalizedZenoStationarity.A.
\tag{CNSR.16}
```

So compact source-residue visibility does not skip the production theorem.

## 6. Strict Lyapunov version

The only direct way for compact recurrence itself to force vanishing is a
strict no-waste Lyapunov inequality:

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A_R(s)
-\mathcal R_{legal}(s),
\tag{CNSR.17}
```

with \(L\) bounded below and \(\mathcal R_{legal}\) summable.  Then every
nonzero recurrent source/action quantum spends a finite budget.  Infinitely
many terminal heat-scale quanta contradict the bounded drop.

Current rescaled local energy does not have this sign.  Its balance leaves
pressure, convection, cutoff, commutator, and selected positive source terms
on the uncontrolled side.  This is exactly the already isolated

```math
StrictRescaledNoWasteLyapunov.A
\tag{CNSR.18}
```

or the equivalent unweighted source-square / CKN / critical-strain reserve.

## 7. Countermodel shape

At the level of compact dynamical systems, there is no contradiction in a
compact object carrying a nonzero defect measure.  A toy forced balance

```math
\partial_s U+\mathcal L U=F,
\qquad
F\neq0,
\tag{CNSR.19}
```

can have a compact stationary state

```math
U=\mathcal L^{-1}F.
\tag{CNSR.20}
```

Navier--Stokes is nonlinear and constrained, but the logical point is exact:
compactness alone does not imply \(F=0\).  The proof must use a Navier--Stokes
source evacuation, stress-flux identity, no-waste Lyapunov drop, or
Landau-class zero-force production theorem.  None follows from compactness by
itself.

## Verdict

`CompactNativeSourceResidueRigidity.A` is not proved from current inputs.

The exact reduction is:

```math
CompactNativeSourceResidueRigidity.A
\Leftarrow
SourceResidueEvacuation.A
\quad\text{or}\quad
NoWasteLocalEnergyFlux.A
\quad\text{or}\quad
StrictRescaledNoWasteLyapunov.A
\quad\text{or}\quad
MinimalZenoProfileProduction.A
+ ZeroFluxLandauClassLiouville.A.
\tag{CNSR.21}
```

In the native trilinear branch this means:

```math
\boxed{
\text{compactness can preserve the positive source residue as a defect;
it does not force the residue to vanish.}
}
\tag{CNSR.22}
```

So the compact-residue route returns to the same noncircular suppliers:

```math
SourceSquareReserve.A,
\qquad
SelectedCriticalStrainCarleson.A,
\qquad
NormalizedCKNCarleson.A,
\qquad
TerminalMovingPacketTraceModulus.A,
\qquad
StrictRescaledNoWasteLyapunov.A,
\tag{CNSR.23}
```

or to CM Part/Field consumption of the retained terminal source pulse.
