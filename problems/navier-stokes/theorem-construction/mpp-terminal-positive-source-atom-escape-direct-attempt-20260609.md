# MPP TerminalPositiveSourceAtomEscape.A Direct Attempt

## Status

Direct attempt on the smaller atom left by the June 9
`BASACAtomEscapeDichotomy.A` pass.

This note is not a final proof.  It tests whether a terminal native positive
source atom in the produced `B_ASAC` branch can be forced to escape through
time-face spread, pressure/Leray structure, or pressure/eigenframe no-sustain.

## Target

The theorem under attack is:

```math
TerminalPositiveSourceAtomEscape.A:
\quad
\text{a terminal native positive source atom in }B_{ASAC}
\text{ cannot be simultaneously}
```

```math
\text{parent-diffuse, zero-thickness in time, and pressure/eigenframe-sustained}
```

without producing same-ledger source payment or a Pack/Part/Field face failure.

Equivalently, it should imply:

```math
BASACAtomEscapeDichotomy.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Model Survivor

The terminal atom model that must be excluded is:

```math
d\mu_m^{src}(y,s)
=
\rho(y)\,m{\bf 1}_{(-1/m,0]}(s)\,dy\,ds
\rightharpoonup
\rho(y)\,dy\otimes\delta_{s=0}.
```

It has bounded `L_s^1` source mass, no super-`L^1` temporal residence, and
zero terminal time thickness.  It can be paired with diffuse legal parents so
no bounded selected parent family captures a fixed fraction of the mass.

## Attempt 1: Terminal Time-Face Anti-Atom

The direct theorem needed is:

```math
TerminalTimeFaceAntiAtom.A:
\quad
\nu_N^{src,+}(B_R\times[T-\varepsilon,T])
\le
\omega_R(\varepsilon)+o_N(1),
\qquad
\omega_R(\varepsilon)\to0.
```

This would kill the terminal source atom and imply:

```math
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

The existing hard-obstruction certificate tested the nearest direct
mechanisms: residence lower bound, scale-invariant parent charge, transported
boundary tightness, and local-energy trace anti-atom.  Each fails on the same
terminal-layer model.  The installed source control is `L_s^1`; it has no
terminal strip modulus.

Thus `TerminalTimeFaceAntiAtom.A` is not installed.

## Attempt 2: PressureSourceTimeFaceSpread.A

The pressure/Leray sharpening asks for:

```math
PressureSourceTimeFaceSpread.A:
\quad
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1).
```

Pressure recovery is elliptic in space at each time slice:

```math
\nabla^2p
=
\mathcal R\mathcal R(\nabla u\otimes\nabla u).
```

This gives spatial partner structure.  It does not move mass away from the
terminal time face.  The model

```math
\rho(y)m{\bf 1}_{(-1/m,0]}(s)\,dy\,ds
```

can generate pressure-side objects on the same shrinking time layer.  Spatial
spreading of the pressure kernel changes the `y` distribution while preserving
the `s` support.  Pressure-source absolute continuity also fails to help:
both source and pressure measures may charge the same terminal time face.

Thus pressure/Leray structure does not by itself prove time-face spread.

## Attempt 3: TerminalPressureHessianNoSustain.A

The pressure-Hessian route tries to prove:

```math
\sum_{P\in\mathcal F_N}
E_P^\#\tau_P
\int_{I_P}
\left[
-n_P\cdot P^{loc}_{j_P,L}\nabla^2p\,n_P
\right]_{sustain,+}\,dt
\le
Legal_N(\mathcal F_N)+o_N(1).
```

The pressure Poisson law and Calderon-Zygmund estimates give only absolute
quadratic control at active-square strength.  Trace-free incompressibility does
not give a sign for a selected directional component.  Signed pressure partner
cancellation occurs before one-sided terminal weights, cutoffs, near-band
projection, same-fluid packet selection, and positive sustain selection.

After those operations, the pressure route returns to:

```math
OneSidedNearBandMaterialStrainBV.A
```

or the same signed no-free-sink / donor-depletion / temporal anti-atom wall.

Thus pressure-Hessian no-sustain is not installed.

## Attempt 4: One-Sided Pressure Source Tether

A direct pressure tether would compare the selected pressure/eigenframe sustain
to the native positive source carrier:

```math
PressureEigenframeSustain_{term}
\lesssim
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+
dxdt
+Loss.
```

The installed pressure/eigenframe inputs are signed and near-band.  The proof
needs a one-sided comparison after terminal positive selection.  Leray and
pressure Poisson identities act before positive-part extraction.  No installed
theorem gives:

```math
SelectedPressurePositivePartComparison.A.
```

So the one-sided pressure tether remains open.

## Verdict

`TerminalPositiveSourceAtomEscape.A` is not installed from current inputs.

The direct pass reduces the live atom to the hard terminal time-thickness
theorem:

```math
\boxed{
TerminalTimeFaceAntiAtom.A
}
```

or an equivalent pressure/Leray implementation:

```math
PressureCarrierTrace.A
+
EllipticTimeSmearing.A
+
FinitePacketLeraySourceAnchoring.A
\Longrightarrow
PressureSourceTimeFaceSpread.A.
```

Current evidence says carrier trace and spatial anchoring are not enough; the
missing content is the time component:

```math
\boxed{
EllipticTimeSmearing.A
}
```

understood not as bare elliptic smoothing, but as a theorem that pressure/Leray
coupling plus the `B_ASAC` source geometry yields an actual terminal strip
modulus for the native positive source marginal.

Until that terminal time-thickness theorem, or a different genuine anti-atom /
rigid-class production theorem, is proved, `SourcePulseExclusion.A` remains
open and the PDFs remain non-final.
