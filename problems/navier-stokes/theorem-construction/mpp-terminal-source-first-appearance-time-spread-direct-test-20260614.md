---
ns_viewer:
  theorem_id: terminal-source-first-appearance-time-spread-direct-test-20260614
  status: direct-test-open-first-appearance-alone-does-not-price-terminal-source-time
  proof_role: exact_gold_child_test_inside_terminal_timeface_new_production
  logical_landing_node: terminal_source_first_appearance_time_spread
  source_authority:
    - problems/navier-stokes/theorem-construction/mpp-basac-temporal-spreading-production-fanout-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-new-terminal-source-residence-mechanism-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/reservecreationcharge-a-theorem-creation-20260525.md
    - problems/navier-stokes/theorem-construction/terminalreservefirstappearancecharge-a-theorem-creation-20260525.md
    - problems/navier-stokes/theorem-construction/mpp-source-reserve-birth-charge-direct-attempt-20260525.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-time-face-new-production-frontier-20260614.md
  edge_effect: "Tests TerminalSourceFirstAppearanceTimeSpread.A directly. First-appearance language is not a terminal time-thickness estimate until the new source packet injects into a finite time-priced ledger, satisfies a source integrability theorem, is produced inside a rigid time-face anti-atom subclass, or is admitted into the CM test with a concrete Pack/Part/Field face failure."
---

# MPP Terminal Source First-Appearance Time-Spread Direct Test

Date: 2026-06-14

## 1. Target

This note tests the exact child left by the `BASACTemporalSpreading.A` fanout:

```math
TerminalSourceFirstAppearanceTimeSpread.A.
```

The theorem would have to say more than "the source first appears near the
terminal time."  For every selected minimal retained terminal native positive
source packet with fixed mass `a>0` born inside a terminal interval
`I_m=(-\tau_m,0]`, `\tau_m\downarrow0`, it must force one of these exact
outcomes:

1. the packet is inherited from an earlier same-ledger parent source packet;
2. the packet injects into a finite ledger whose terminal strip charge obeys a
   modulus depending on `\tau_m`;
3. the packet satisfies a super-`L^1_s` or equivalent terminal time-thickness
   estimate;
4. the extraction produces a rigid time-face anti-atom subclass and a residue
   Liouville theorem applies;
5. the packet is admitted to the same-solution CM test and the first concrete
   Pack/Part/Field face failure is derived.

The gold statement is the first four outcomes.  The fifth outcome is the silver
CM boundary after same-solution admission, positive-radius carrier, and readout
data have been paid.

## 2. Direct Test

Finite first-appearance alone permits the terminal layer

```math
g_m(s)={a\over \tau_m}\,1_{(-\tau_m,0]}(s).
```

It has fixed terminal mass:

```math
\int_{-\tau_m}^{0} g_m(s)\,ds=a.
```

For the same strip length `\varepsilon_m=\tau_m`,

```math
\int_{-\varepsilon_m}^{0} g_m(s)\,ds=a.
```

So no terminal modulus

```math
\int_{-\varepsilon}^{0} g_m(s)\,ds
\le
\omega(\varepsilon)+o_m(1),
\qquad \omega(\varepsilon)\downarrow0,
```

follows from first appearance as a label.  For every `p>1`,

```math
\|g_m\|_{L^p(-1,0)}
=
a\,\tau_m^{1/p-1}\to\infty.
```

This is the exact obstruction.  A source packet may be newly born in the final
strip and still carry fixed mass on that strip unless some separate theorem
prices the birth time, gives super-`L^1_s` control, forces a rigid no-atom
class, or turns the packet into a CM exit witness.

## 3. Checked First-Appearance Surfaces

The installed first-appearance and reserve-birth surfaces do not supply that
missing time price.

`ReserveCreationCharge.A` is promotion-blocked at:

```text
PositiveRemainderDepletion.A.
```

It reduces new square-reserve birth to a smaller same-ledger depletion problem.
It does not prove terminal source-time thickness.

`TerminalReserveFirstAppearanceCharge.A` is conditional and promotion-blocked.
It concerns square-reserve first appearance and `Charge_N(W)` injection.  It
does not control the selected native source marginal on `(-\tau_m,0]`.

`SourceReserveBirthCharge.A` gives the exact Pack-side reduction:

```text
first-created positive-scale native source-reserve surplus
must be paid or become a Pack/that face failure witness.
```

That is a reduction, not a proof of the source anti-atom theorem.

The `BASACTemporalSpreading.A` fanout is therefore correct to mark
`TerminalSourceFirstAppearanceTimeSpread.A` open.

## 4. Result

`TerminalSourceFirstAppearanceTimeSpread.A` is not installed from current
inputs.

The direct test closes the shortcut: first-birth, first-appearance,
reserve-creation, and charge-ledger wording may not be used as a terminal
time-face anti-atom theorem unless one of the exact gold outcomes in Section 1
has been proved.

The current gold frontier remains:

```math
TerminalTimeFaceAntiAtom.A
\quad\text{or}\quad
TerminalNewProductionTheorem_{B_{ASAC}}.A,
```

with these exact entrances:

```text
NativeSourceAC.A / PositiveActiveCarlesonReserve.A,
TerminalSourceFirstAppearanceTimeSpread.A,
ProductionIntoRigidBASACTimeFaceSubclass.A + ZenoResidueLiouville_{B_ASAC^rigid}.A.
```

## 5. CM Boundary

Before same-solution admission, the terminal first-appearance packet is
gold-side obstruction evidence or a Pack boundary when the positive-radius
carrier is not paid.

After same-solution admission:

```text
retained Part plus retained positive Field readout
  => Member(Q);

finite nonsmooth admitted witness
  => first concrete Pack/Part/Field face failure
  => Exit(Q):=not Member(Q).
```

This keeps the gold exactness test and the silver CM contrapositive use
separate.
