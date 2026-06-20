# Same Gauge / Source Action Compatibility Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SameGaugeSourceActionCompatibility.A` is not installed
as an independent theorem.

The condition says that the gauge/action representative and the native selected
positive source carrier are the same packet family, up to legal spill.  This is
not automatic from choosing a canonical gauge, because the source selector and
the gauge/action selector can choose different representatives.

## 1. Target under test

Let `F_m^{src}` be the selected packet family used in the native positive
pre-Cauchy carrier, and let `F_m^{act}` be the packet family used to measure
modulation action.  The compatibility target is

```math
F_m^{src}=F_m^{act}
\quad\text{up to legal spill},
\tag{SGSA.1}
```

in the quantitative form

```math
\sum_{P\in F_m^{src}\setminus F_m^{act}}\mu_m^{src,+}(P)
+
\sum_{P\in F_m^{act}\setminus F_m^{src}}\mathcal A_m(P)
\le
\operatorname{Legal}^{fam}_m+o_m(1).
\tag{SGSA.2}
```

This is the packet-family identity needed before an action estimate can pay a
source-weighted endpoint or branching defect.

## 2. Sufficient inputs

The compatibility follows from same-family selector compatibility plus signed
source/action trace identification:

```math
\operatorname{supp}\phi_m
\subset
\bigcup_{P\in F_m^{src}}Q(P)
\quad\text{up to legal spill},
\tag{SGSA.3}
```

and

```math
\mathcal A_m(P)
\quad\text{is measured using the same localized test/lift/projection family as }
\mu_m^{src,+}(P).
\tag{SGSA.4}
```

The first clause is the same-family part of mode-test compatibility.  The
second clause is the same-shadow source-readout identity.

## 3. Exact mismatch model

Take two admissible packet families `F_1` and `F_2` with disjoint selected
supports.  Let

```math
F_m^{src}=F_1,
\qquad
F_m^{act}=F_2.
\tag{SGSA.5}
```

Put a positive source carrier on `F_1` and action on `F_2`:

```math
\mu_m^{src,+}(F_1)=A,
\qquad
\mathcal A_m(F_2)=B,
\qquad
\mu_m^{src,+}(F_2)=0,
\qquad
\mathcal A_m(F_1)=0.
\tag{SGSA.6}
```

Both ledgers can be finite, but the action ledger does not pay the selected
source edge:

```math
\sum_{P\in F_m^{src}}\mathcal A_m(P)=0
\quad\text{while}\quad
\mu_m^{src,+}(F_m^{src})=A.
\tag{SGSA.7}
```

Thus canonical gauge/action bookkeeping does not imply same-carrier source
payment without the family identity `(SGSA.1)` or the legal spill estimate
`(SGSA.2)`.

## 4. Exact reduction

At current input strength,

```math
\boxed{
\text{SameGaugeSourceActionCompatibility.A}
\Leftarrow
\text{SameFamilyModeSelectorCompatibility.A}
+
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPositivePolarSaturation.A}.
}
\tag{SGSA.8}
```

Alternatively, it follows if the action is defined directly from the native
source carrier:

```math
\boxed{
\mathcal A_m(P)
\text{ is the selected native positive source/action density on }F_m^{src}.
}
\tag{SGSA.9}
```

That alternative is not a proof from current inputs; it is a change of carrier.

## Verdict

`SameGaugeSourceActionCompatibility.A` is a same-carrier identification theorem.
It is not supplied by zero flux, gauge coordinates, compactness, or finite
source/action ledgers.  It reduces to the same Door 1 same-shadow selected-source
visibility problem plus the same-family selector compatibility already exposed
in the Door 2 mode-test notes.

