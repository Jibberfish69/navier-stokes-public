# MPP Clay CM Main Road After Source-Residue Correction

Date: 2026-05-22

Status: theorem-facing correction after the source-residue polarity audit.

## Point

The Clay-facing CM route must not spend work deleting a terminal native source
atom. In this route the atom is a witness:

```math
\mu_*^{sing}\ne0
\Longrightarrow
\neg Pack_Q \vee \neg Part_{N,Q}
```

by `TerminalSourceResidueCMExit.A`.

Therefore the anti-atom targets

```math
NativeSourceAC.A,\qquad
\mu_*^{sing}=0,\qquad
HeightFluxControl.A,\qquad
BASACTerminalSourceAntiConcentration.A
```

belong only to the separate positive no-pulse/PCTP supplier route.

## Installed Main-Road Chain

The current CM chain is:

```math
\text{finite-time failure witness}
\Longrightarrow
\text{terminal packet/witness capture}
\Longrightarrow
\neg Pack_Q \vee \neg Part_{N,Q} \vee \forall r>0\,\neg Field_{N,r,Q}.
```

The installed pieces are:

- `CanonicalTerminalPacketCapture.A`: maximal smooth preterminal evolution
  produces the terminal packet/witness after legal, paid, and non-selected
  branches are removed.
- `TerminalSourceResidueCMExit.A`: the native source residue subcase is Pack or
  Part exit, not an object to erase.
- `AnyFiniteFailureWitnessCMExit.A`: any alleged finite-time failure witness
  enters the Field-certification witness tree.
- `SLC.A` / `CMW.A`: every still-live smooth window carries the CM witness and
  hence is a member of the working class.

## Readback After Checking `GenuineCMExit.Equiv.A`

The live pressure is not:

```math
OriginalSmoothData\Longrightarrow\mu_*^{sing}=0.
```

The finite-failure-specific bridge is already installed by
`mpp-genuine-cm-exit-equivalence-20260521.md`:

```math
\text{finite terminal non-continuation at }T_*
\Longleftrightarrow
GenuineCMExit(T_*).
```

This matters because `CMCert.A` installs

```math
CM_{N,r,Q}\Longrightarrow Member(Q;\mathfrak O_{NS}^{work}),
```

while the blunt converse

```math
\neg CM_{N,r,Q}\Longrightarrow \neg Member(Q;\mathfrak O_{NS}^{work})
```

is explicitly not installed for arbitrary objects.

So the bridge target I first named as `FirstTerminalWitnessClassExit.A` is not
the new Clay burden unless an audit finds a defect in `GenuineCMExit.Equiv.A`.

## Next Clay-Facing Target

The live theorem-facing object is now the no-genuine-exit face exhaustion:

```math
\boxed{
NoGenuineCMExit.A:
\quad
\text{original smooth Navier--Stokes data}
\Longrightarrow
\neg GenuineCMExit(T_*)
\quad\text{for every finite }T_*.
}
```

This must be attacked by exhausting the continuation-complete Part/Field
faces. The source-residue subcase is already sorted by
`TerminalSourceResidueCMExit.A`, so it is not the remaining anti-atom burden.
