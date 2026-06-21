# MPP Pressure Endpoint Part/Field Witness Test

Date: 2026-05-17

Status: failed witness test; diagnostic Field landing remains valid.

Purpose: after the exhausted pressure branch was admitted as a Field-face diagnostic, test whether any pressure endpoint supplies a genuine noncircular Part/Field witness for the current CM discipline.

## 0. Witness criterion

The current route requires an actual witness on the same route carrier:

```math
Pack_Q,
\qquad
Part_{N,Q},
\qquad
Field_{N,r,Q}.
```

A diagnostic landing is weaker. It classifies the obstruction. A witness theorem must produce usable face data or discharge the failure surface on the relevant carrier.

## 1. PressureSourceAC.A / LocalizedLeraySourceTether.A_ind

A proved endpoint of this type converts pressure-sustain residue into native
source residue or a finite packet source tether. Only after that conversion does
it feed the source-current branch or support Field-side source data.

The endpoint remains unproved. The finite packet tether still requires independent terminal Leray orientation, commutator legality, and saturation. Therefore it supplies no present Part/Field witness.

## 2. PurePressureSustainResidueLiouville.A

A proved endpoint of this type removes the pure pressure-sustain residue. The
direct Liouville, rigid-class production, trace/angular saturation, legal
classification, and time-spread tests all failed from installed inputs.

Thus this endpoint supplies no present witness. It remains a future pressure-specific theorem.

## 3. TerminalPressurePureStrainLegal.A

A proved endpoint of this type creates a legal pressure class for retained
pure-strain pressure sustain. The legal-classification attempt showed that the
existing legal pressure ledgers cover collar, harmonic, cutoff/projector, and
off-family exits only. The retained interior pure pressure residue needs a new
legal class and terminal summability proof.

Thus this endpoint supplies no present witness.

## 4. Diagnostic that survives

The valid result remains

```math
\boxed{PressureResidueFieldFaceDiagnostic.A.}
```

It records that an uncharged retained pure pressure-sustain residue belongs on the Field/readout side of the CM ledger. This is useful bookkeeping. It cannot substitute for a Part/Field witness theorem.

## 5. Verdict

No pressure endpoint currently supplies a noncircular Part/Field witness. The pressure branch contributes a Field-face diagnostic and a precise list of missing pressure endpoints:

```math
PressureSourceAC.A / LocalizedLeraySourceTether.A_{ind},
```

```math
PurePressureSustainResidueLiouville.A,
```

```math
TerminalPressurePureStrainLegal.A.
```

The source-wall root therefore requires a non-pressure supplier entrance or an independent proof of one of the named pressure endpoints.
