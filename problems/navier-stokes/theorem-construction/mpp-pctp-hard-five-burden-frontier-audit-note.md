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

Against the governing CM primitive
`Exit(Q):=not Member(Q)`, the entire `PCTP.5.*` stack is downstream. In this
note the words `upstream` and `downstream` refer only to the internal order of
the averaged terminal-tail consumer route. In particular,
`AWG.A / SOURCE.NO-PULSE.A` is not being promoted back to either the governing
CM primitive or the source-pulse branch theorem here; it survives only as the
downstream source-side theorem consumed by `PCTP.5.C`.

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

**Current discharge status.** On the no-`Jump_avg` branch, this cell is
discharged by `mpp-aact-global-nojump-restart-scheduler-closure-note.md`, using
`TGC.A.cover`, `ATD_m^\varepsilon`, and the local averaged ACT term audit. The
complementary `Jump_avg` branch remains open.

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

The May 1 supplier audits now identify the active source atom for this cell as

```math
SOURCE.NO\text{-}PULSE.A
\quad\text{or its mixed-shell presentation}\quad
MSC.Spill.NoPulse.
```

The latter says that the mixed bilinear dissipation measure cannot concentrate
on large spill-coefficient pulses. It is not installed from energy dissipation
alone.

## PCTP.5.D — pressure/source supplier verification

Expand and verify every source supplier used by the main proof:

```math
FCC.C1,\qquad FSCR.C,\qquad FPCR.C,
\tag{PCTP.5.D1}
```

and, if the strengthened route imports it,

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\text{ among those hypotheses.}
\tag{PCTP.5.D2}
```

The audit must keep the exact and strengthened source branches separate:

```math
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow FCI.5f
\tag{PCTP.5.D3}
```

is the exact post-`LCI.A` source assembly, while

```math
FFPB.A0+FFSC.C1+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow \operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f
\tag{PCTP.5.D4}
```

is the organized strengthened import. Neither branch may be silently used as
the other.

**Current discharge status.** For the selected averaged route that imports
`FFSRC.A`, this cell is conditional on the weighted cutoff-defect input recorded
in `mpp-pctp-hard-source-supplier-verification-note.md`. The exact same-depth
reconstruction remains open at `FIRP.A0` if that stricter route is required.

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

**Current discharge status.** This audit cell is discharged by
`mpp-pctp-hard-bridge-license-into-cm-audit-note.md`. The main route now lands
in `CM` only through `Pack.TTU => Pack`, shared participation no-drop
`=> Part`, and
`Field_avg+READ.COVER+ATD_m^epsilon => Field`. `DTC.Read` remains a tower
endpoint readout. TPS / `SG.4`, exact-potential/Hodge, mixed-jet, Lagrangian,
and Euclidean strict-shadow branches are fenced as downstream or context-only
unless a later theorem installs a new `CM` bridge.

## Consequence

The older five-cell bookkeeping recorded the conditional averaged route as:

```math
PCTP.5.A+PCTP.5.B+PCTP.5.C+PCTP.5.D+PCTP.5.E
\Longrightarrow
TTU.A.
\tag{PCTP.5.F}
```

After the source-supplier, no-`Jump_avg` averaged ACT globalization, and
bridge-license audit discharges, `PCTP.5.A` remains a blocked output but is no
longer an independent active primitive on the averaged route: by
`mpp-pctp-hard-collapse-to-jumpavg-source-primitive.md`, branch-native
`PCTP.5.C` supplies the no-jump input that triggers the TGC/AACT/AVG/READ
assembly and produces `PCTP.hard / TTU.A`. Until `PCTP.5.C` is discharged,
`TTU.A`, `PCTP.hard`, full periodic Navier-Stokes closure, export readiness, and
release readiness remain nonterminal.

## Executable Target Queue After The Support Closures

The support rows are no longer next targets:

```math
PCTP.5.B,\qquad PCTP.5.D,\qquad PCTP.5.E
```

are discharged for the selected route by the restart-scheduler cover theorem,
the strengthened `Hyp(FFSRC.A)=>FCI.5f` source verification with its cutoff-defect
hypothesis, and the bridge-license audit into `CM=Pack+Part+Field`.

The active averaged-route primitive is now exactly:

```math
\boxed{PCTP.5.C:\ OriginalSmoothData\Longrightarrow AWG.A/SOURCE.NO\text{-}PULSE.A}
```

This is a primitive only for the downstream averaged `PCTP.hard` consumer
route. It is not a CM primitive or witness-face bridge, and it is not upstream
of the governing `Exit(Q):=not Member(Q)` route.

which gives

```math
AWG.A\Longrightarrow JAVG.1+JAVG.2\Longrightarrow(Jump_{avg}\Rightarrow\bot),
```

and then, by `mpp-pctp-hard-collapse-to-jumpavg-source-primitive.md`,

```math
AWG.A+TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow PCTP.hard/TTU.A.
```

Thus `PCTP.5.A` remains a release-facing blocked output, but on the active
averaged route it is no longer an independent analytic primitive once
`PCTP.5.C` is supplied.

The direct pointwise fallback route remains:

```math
Pack.TTU:
\quad
OriginalSmoothData\Longrightarrow S_{pack,Q}\in L^1([t_0,T_*)).
```

That fallback should be pursued only if the averaged TGC/AACT/AVG/READ assembly
is rejected or a new gap is found in the dependency collapse.

The fallback has now been executed in
`mpp-pack-ttu-fallback-closure-note.md`. It does not supply an independent
proof from `OriginalSmoothData`; direct `Pack.TTU` closes to
`EndpointSelector.TTU`, `UniformStrainTail.TTU`, or the stronger
`QDrain.A/SOURCE.NO-PULSE.A` compression.

There is also a stronger single-target presentation:

```math
OriginalSmoothData\Longrightarrow QDrain.A.
```

By `mpp-qdrain-source-no-pulse-closure-note.md`, this gives
`QDrain.A=>QBound.A=>AWG.A`, hence closes `PCTP.5.C`; the same `QBound.A` is a
uniform periodic `H^1` bound. That is energy-level support, not the terminal
classical continuation bridge by itself. `PCTP.5.A` still needs an `H^s`,
`s>5/2`, continuation bound or an explicitly named equivalent criterion on the
same periodic surface. This is a valid support compression, but it is stronger
than the route-native class-membership package and should not be confused with a
proof of the pack strain ledger `Pack.TTU`.

By `mpp-mixed-shell-spill-coefficient-scheduler-attempt-note.md`,
`QBound.A=>MSC.Spill.Close`; the unconditional mixed-shell route requires
`MSC.Spill.NoPulse`, which is another presentation of the same source no-pulse
atom rather than a separate discharged theorem.
