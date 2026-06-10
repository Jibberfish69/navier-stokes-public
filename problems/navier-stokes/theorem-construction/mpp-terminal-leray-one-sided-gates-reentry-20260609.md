# Terminal one-sided Leray gates reentry

Date: 2026-06-09

## Target

The active pressure/Leray supplier leaf is:

```text
TerminalLerayOrientation_ind.A
+ TerminalLerayCommutatorLegal_ind.A
+ TerminalLeraySaturation_ind.A.
```

The package must turn a retained terminal pressure-source singular branch into
a same-fluid source edge, a legal pressure loss, or a theorem-grade terminal
time-face spread mechanism.

## Checked installed material

The L3 terminal Leray package is installed in a narrow native-capture context:

```text
TerminalLerayCommutatorLegal_L3.A,
TerminalLeraySaturation_L3.A,
TerminalLerayParaproductCoefficientIdentification.A,
ParaproductNativeSourceCapture.A.
```

That package belongs to the public-critical paraproduct/native-source capture
lane. It does not promote the independent `B_ASAC` pressure branch, because the
current target is selected after one-sided terminal pressure/source extraction
and after the ordinary legal pressure exits have already been removed.

## Direct attempt

The localized Leray identity is algebraically correct:

```math
\chi\nabla P_{Leray}(u\cdot\nabla u)
=
P_{Leray}(\chi\nabla(u\cdot\nabla u))
+[\chi,P_{Leray}]\nabla(u\cdot\nabla u).
```

It recombines pressure and convection before terminal selection. The obstruction
is selection, not algebra.

### Gate 1: orientation

The projected local pair must determine the same-fluid signed source edge at
the selected terminal packet weights. A signed spatial identity can lose this
orientation after one-sided positive selection and packet mixing. The installed
source-current ledger carries the needed orientation only inside the old signed
no-free-sink route, so importing it here would be circular.

### Gate 2: commutator legality

The terminal commutator

```math
[\chi,P_{Leray}]\nabla(u\cdot\nabla u)
```

must be paid at the same one-sided terminal weights. Existing legal ledgers pay
ordinary cutoff, projection, harmonic, collar, boundary, and off-family pressure
errors. The retained pressure singular branch is selected after those exits
are removed, so this is a fresh terminal-weighted legal theorem.

### Gate 3: saturation

The recombined pressure/source partner must remain retained after terminal
one-sided positive selection. Partner loss routes to legal exit, donor sink,
Zeno refill, or the same terminal source atom. Paying those cases returns to
the known source-residence cycle unless a new pressure-specific theorem is
proved.

## Judgment

The independent terminal Leray gate package is not installed. The L3 native
capture package cannot be spent as this pressure-branch supplier.

The next smaller target is the pure-pressure branch:

```text
TerminalPressurePureStrainLegal.A
```

or, equivalently, one of the two pure-pressure endpoints:

```text
PurePressureSustainResidueLiouville.A
DirectionalPressureTraceSaturation.A + TerminalPressureCollarLegal.A.
```

## New live criticism

`NS-LIVE-20260609-058`: the terminal one-sided Leray gate package is not
proved for the independent `B_ASAC` pressure branch. The installed L3 terminal
Leray results do not supply orientation, commutator legality, and saturation
after one-sided terminal pressure/source selection. The loop must attack the
pure-pressure legal/rigidity branch next.
