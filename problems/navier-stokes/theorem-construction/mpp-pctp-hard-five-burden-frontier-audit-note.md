# MPP PCTP.hard Five-Burden Frontier Audit Note

## Status

Theorem-facing frontier audit.

Role: replace any stale claim that `PCTP.hard` / `TTU.A` is discharged by the
averaged terminal-tail packet. The averaged packet is a useful conditional
spine, but it is not yet a proof of

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained }Pack/Part/Field/\text{tower readout}.
\tag{PCTP.5.0}
```

The active frontier is exactly the following five-cell burden.

## PCTP.5.A — terminal-tail production

Prove

```math
PCTP.hard/TTU.A:
\qquad
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained }Pack/Part/Field/\text{tower readout}.
\tag{PCTP.5.A}
```

This is stronger than producing conditional averaged packets on a selected
tail. It must produce the terminal-tail class-membership readout on the same
smooth periodic object and with the same terminal labels.

## PCTP.5.B — averaged ACT globalization

Repair the averaged ACT budget globalization:

```math
AACT.KX/AACT.Global.noJump:
\qquad
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{\mathrm{avg}}
\tag{PCTP.5.B}
```

on the no-`Jump_avg` branch, with:

1. a noncircular restart seed;
2. a terminal scheduler cover;
3. finite-cover propagation across the required route parameter set;
4. no upstream use of `READ.COVER`, `READ.END`, old `Field`, old `DTC.A`, old
   `CFI.A`, or `End_NS`.

The existing `AACT.Global` note proves only the conditional finite-cover
scheduler statement. It does not derive the required uniform terminal finite
cover and common scheduler from `OriginalSmoothData`.

## PCTP.5.C — `Jump_avg` branch elimination

Eliminate the `Jump_avg` branch without assuming `Field_avg` on that same
branch:

```math
Jump_{\mathrm{avg}}
\Longrightarrow
\bot.
\tag{PCTP.5.C}
```

The already installed averaged endpoint row may remove `Jump_avg` after
`CFI.A_avg` / `Field_avg` is available on the good branch. That is not a
branch-native elimination of a bad-material `Jump_avg` tail. A valid proof
must use a native lower-bound/upper-bound conflict, a terminal-cover
contradiction, or another same-carrier mechanism that does not spend the field
predicate whose failure defines the branch.

## PCTP.5.D — pressure/source supplier verification

Expand and verify every source supplier used by the main proof:

```math
FCC.C1,\qquad FSCR.C,\qquad FPCR.C,
\tag{PCTP.5.D1}
```

and, if the strengthened route imports it,

```math
FFSRC.A\Longrightarrow FCI.5f.
\tag{PCTP.5.D2}
```

The audit must keep the exact and strengthened source branches separate:

```math
FPCR.C+FSCR.C+FCC.C1\Longrightarrow FCI.5f
\tag{PCTP.5.D3}
```

is the exact post-`LCI.A` source assembly, while

```math
FFPB.A0+FFSC.C1+FCC.C1\Longrightarrow FFSRC.A\Longrightarrow FCI.5f
\tag{PCTP.5.D4}
```

is the organized strengthened import. Neither branch may be silently used as
the other.

## PCTP.5.E — bridge-license audit into class membership

Audit every support branch used by the main proof and require an explicit bridge
into the actual class-membership object

```math
CM=Pack\wedge Part\wedge Field.
\tag{PCTP.5.E0}
```

The forbidden move is to prove a neighboring control object and then spend it
as `CM`. Each support branch must declare one of:

```math
\text{support object}\Longrightarrow Pack,
\qquad
\text{support object}\Longrightarrow Part,
\qquad
\text{support object}\Longrightarrow Field,
\tag{PCTP.5.E1}
```

or must remain downstream/context-only. This applies in particular to averaged
field packets, tower amplitude packets, selector/projector readouts, frozen
Eulerian source ledgers, deformation/Lagrangian packets, exact-potential/Hodge
readouts, and Euclidean strict-shadow exports.

## Consequence

The conditional averaged route can be recorded as:

```math
PCTP.5.A+PCTP.5.B+PCTP.5.C+PCTP.5.D+PCTP.5.E
\Longrightarrow
TTU.A.
\tag{PCTP.5.F}
```

Until all five cells are discharged, `TTU.A`, `PCTP.hard`, full periodic
Navier-Stokes closure, export readiness, and release readiness remain
nonterminal.

