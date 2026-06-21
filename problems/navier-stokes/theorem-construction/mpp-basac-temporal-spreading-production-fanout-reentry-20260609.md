# MPP BASACTemporalSpreading.A Production Fanout Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Parent target

The parent Clay-facing proof program is still the CM contrapositive:

```text
Exit(Q):=not Member(Q)
```

through the Part/Field witness tree and the public-finality chain

```text
OriginalSmoothDataPackSurvival.A
=> NoGenuineExitFromSmoothData.A
=> ClayTerminalWitnessCMEntry.A
+ ClayFiniteFailureTypeCMExhaustion.A
+ ClayCMContrapositiveEmbedding.A.
```

The current executable child target is the terminal source-time anti-atom:

```math
BASACTimeFaceAntiAtom.A
```

or, equivalently, a produced super-`L^1` source-residence theorem:

```math
BASACTemporalSpreading.A
\equiv
TerminalSourceReverseHolder_{B_{ASAC}}.A
\equiv
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,\qquad p>1.
```

## What the theorem would have to prove

For every compact ball `B_R`, the produced `B_ASAC` native positive source
residue would need a terminal strip modulus

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0,
```

or a uniform bound

```math
\left\|
\|\mu_m^{src,+}(s)\|_{\mathcal M(B_R)}
\right\|_{L_s^p((-1,0))}
\le C_R,
\qquad p>1.
```

That would remove the terminal time-face atom and feed the first-exit Pack
survival wall.

## Checked exits already ruled out

The current installed data give only finite local `L^1_s` source mass. They
permit the terminal squeeze model

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
```

which has bounded `L^1_s` mass and no uniform `L^p_s`, `p>1`, control.

The following routes have already been tested and do not produce the modulus:

1. **B_ASAC equality alone.** `ZeroASACEqualityRigidity.A` fails because the
   same-fluid carrier, zero ASAC defect, paid exits, no finite donor tree, and
   no fixed earlier selected source slice still allow a scalar terminal squeeze.

2. **Charge/reserve first-birth descent.**
   `TerminalReserveFirstAppearanceCharge.A / ChargeLedgerInjection.A` reduces
   to `PositiveRemainderDepletion.A`, then back to the same `B_ASAC` terminal
   atom. Minimality removes represented parent mass; it does not prove that the
   retained positive first-created source carrier is charge-ledger visible.

3. **Pressure/eigenframe source control.**
   `TerminalPressureHessianNoSustain.A`,
   `QuadraticDefectSourceDomination.A`, pressure time-spread, and independent
   Leray routes all leave a pure pressure/source singular branch or return to
   one-sided native source-current control.

4. **Capacity, BV trace, and backward probes.** Terminal capacity, local-energy
   BV primitives, and adjoint probes detect a terminal atom through the terminal
   trace. They do not force earlier same-ledger source mass or terminal
   absolute continuity.

5. **Active-square / Carleson reserve.** Current first-moment and active-tail
   budgets do not control selected shellwise source-square density on shrinking
   terminal windows. This route remains useful only as a parallel domination
   lane, not as an installed proof of temporal spreading.

## Non-alias fanout after the failures

After those checks, a real proof of `BASACTemporalSpreading.A` has only three
non-alias doors left.

### Door 1: native source domination reserve

Prove

```math
NativeSourceAC.A
```

or

```math
PositiveActiveCarlesonReserve.A,
```

strong enough to dominate the native positive source marginal by an installed
finite reserve measure. This would give a strip modulus when the reserve has
terminal absolute continuity.

Current state: open. Existing active-square inputs control represented or
averaged budgets, not the selected one-sided source-current density on the
vanishing terminal layer.

### Door 2: first-appearance temporal charge

Prove a genuinely new first-birth theorem:

```math
TerminalSourceFirstAppearanceTimeSpread.A.
```

For every minimal retained terminal source packet, a fixed positive source mass
born in a terminal window of length `\tau_m` must either be inherited from an
earlier same-ledger parent, inject into a finite charge ledger with a modulus
depending on `\tau_m`, or land as a Part/Field witness failure.

This is sharper than the old `TerminalReserveFirstAppearanceCharge.A` label:
it must price time concentration itself, not only represented reserve birth.

Current state: open. This door is the most useful next parent action because it
attacks the terminal squeeze model directly and does not re-enter the exhausted
pressure/equality/reserve-label cycle.

### Door 3: rigid residue Liouville with time-face rule

Produce a rigid subclass

```math
B_{ASAC}^{TA}
```

from the extraction itself, not by assumption. The conditional Liouville theorem
inside `B_{ASAC}^{TA}` is already paid; the production theorem is the missing
content.

Current state: open. It is equivalent to the same anti-atom production unless a
new compactness or monotonicity law forces the time-face rule.

## Result of this pass

`BASACTemporalSpreading.A` is not installed.

`BASACTimeFaceAntiAtom.A` remains open.

The equality, charge/reserve, pressure, BV/capacity, backward-probe, and
active-square routes do not close the terminal source-time atom from current
inputs. The next non-alias theorem target is:

```math
\boxed{
TerminalSourceFirstAppearanceTimeSpread.A
}
```

with `NativeSourceAC.A / PositiveActiveCarlesonReserve.A` and
`ProductionIntoRigidBASACTimeFaceSubclass.A` retained as parallel evidence
lanes.

## New live criticism

`NS-LIVE-20260609-097`: the active loop still lacks a theorem that prices
terminal source-time concentration itself. The old reserve/charge label,
zero-ASAC equality, pressure spread, and trace/capacity routes all allow or
return to the terminal squeeze model. The next pass must attack
`TerminalSourceFirstAppearanceTimeSpread.A` directly, or prove one of the two
parallel non-alias alternatives and propagate it back through
`BASACTimeFaceAntiAtom.A`, `OriginalSmoothDataPackSurvival.A`, and
`NoGenuineExitFromSmoothData.A`. Until that propagation exists, `pdfs_final`
must remain false.
