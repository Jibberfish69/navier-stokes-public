# MPP Contrapositive Terminal Consumption Bridge

## Status

Theorem-facing conditional consumption note for the current contrapositive proof
program.

This note does not reopen the source-pulse supplier ladder, the TPS/SG.4 route,
or the exact-potential selector branch.  It consumes the installed
class-membership route:

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q},
```

the retained terminal-tail production `PCTP.hard / TTU.A`, the manifestation
bridge `MBR.E`, and the installed source-pulse exit theorem
`SourcePulseCMExit.A`.

The conclusion is conditional: once the downstream terminal-tail production
input `PCTP.hard / TTU.A` is installed on the same family, the contrapositive
CM-exit route consumes it into the periodic zero-force Theorem 2.1 warrant.
This note does not by itself prove `PCTP.hard / TTU.A`.

## Installed Inputs

Use the following installed theorem surfaces.

1. `CMW.A`: exact class-membership witness, from
   [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md).
2. `SLC.A`: every still-live smooth window carries the witness
   `CM_{N,r,Q}`, from
   [mpp-still-live-smooth-window-implies-class-membership-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-still-live-smooth-window-implies-class-membership-theorem.md).
3. `PCTP.hard / TTU.A`: terminal-tail retained readout production in the legal
   averaged order, consumed by
   [mpp-pctp-hard-governance-consumption-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pctp-hard-governance-consumption-audit-note.md).
4. `PCTP.5.E`: the bridge license that keeps the retained terminal-tail readout
   inside the exact triadic `Part/Field` class-membership object, from
   [mpp-pctp-hard-bridge-license-into-cm-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pctp-hard-bridge-license-into-cm-audit-note.md).
5. `MBR.E`: genuine PDE non-smoothness forces a blown or jump manifestation,
   equivalently a packing-detached, tower-blown, or jump manifestation, from
   [mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md).
6. `RF.E`: retained `Pack+Part+Field` excludes the mixed tower-blown residue and
   discharges `SourcePulseCMExit.A`, from
   [mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md).
7. The bounded-`H^s(T^3)` periodic relaunch criterion: for `s>5/2`, a finite
   value of `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}` gives a uniform local
   lifespan and launch times `t_j\uparrow T_*` carry the same solution past a
   finite endpoint by uniqueness, as already recorded in
   [mcp-theorem-2-1-classical-closure-bridge-after-sourcepulse-cmexit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mcp-theorem-2-1-classical-closure-bridge-after-sourcepulse-cmexit.md).

## Theorem `CPC.A` (conditional contrapositive terminal consumption)

Let `(u,p)` be the maximal classical periodic zero-force Navier--Stokes
solution on `T^3 x [0,T_*)`, with smooth divergence-free zero-mean initial
data.  Assume the installed terminal-tail route produces `PCTP.hard / TTU.A`
on every retained terminal tail approaching a putative finite endpoint
`T_*<\infty`.

Then, under that terminal-tail production hypothesis, no genuine terminal PDE
non-smooth occurrence can coexist with retained
class membership on that same terminal family.  Equivalently:

```math
\boxed{
\text{finite terminal genuine non-smooth occurrence}
\Longrightarrow
\neg CM_{N,r,Q}
}
```

on the terminal family, while `PCTP.hard / TTU.A + PCTP.5.E` supplies retained
`CM_{N,r,Q}` there.  Hence the finite endpoint alternative is contradictory.

### Proof

Assume `T_*<\infty` and suppose the terminal endpoint is a genuine PDE
non-smooth occurrence on an approaching same-fluid family `\mathcal Q_*`.

By `PCTP.hard / TTU.A`, the terminal tail has a retained readout family.  By
`PCTP.5.E` and `CMW.A`, this retained readout is not an external surrogate
object: it is exactly the triadic class-membership witness

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}
```

on the same terminal family.

By `MBR.E`, genuine PDE non-smoothness forces one of the surviving manifestation
alternatives:

```math
\text{packing-detached}\quad\vee\quad
\text{tower-blown}\quad\vee\quad
\text{jump}.
```

By `RF.E`, these alternatives imply the route-governing source-pulse
class-membership exit:

```math
\text{terminal source-pulse genuine non-smooth witness}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

This is exactly `\neg CM_{N,r,Q}`.  It contradicts the retained
`CM_{N,r,Q}` supplied by the terminal-tail route on the same family.

Therefore a finite terminal endpoint cannot be a genuine PDE non-smooth
occurrence while the installed terminal-tail route is retained. `\square`

## Conditional Corollary `CPC.B` (local Theorem 2.1 warrant after TTU)

If `PCTP.hard / TTU.A` is installed for smooth divergence-free zero-mean data on
`T^3` with `f=0`, then the maximal classical solution has `T_*=\infty` at the
local theorem-program level.

### Proof

If `T_*<\infty`, either the endpoint is not a genuine PDE non-smooth occurrence,
in which case the reconstitution side of `MBR.E` already gives local extension,
or it is genuine, in which case Theorem `CPC.A` gives a contradiction with the
retained terminal class-membership witness.

Thus, under the TTU input, no finite maximal endpoint remains. Equivalently,
choose `s>5/2`; the finite terminal readout controls the finite tower needed
for
`M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty`. Periodic `H^s` local
well-posedness gives `\tau=\tau(\nu,s,M_s)>0` for all data with norm at most
`M_s`. Choose `t_j\uparrow T_*` with `T_*-t_j<\tau/2`; the relaunch from
`u(t_j)` exists past `T_*` and agrees with the original solution on the overlap
by uniqueness. Hence `T_*=\infty`.
`\square`

## Target Queue Consequence

The contrapositive program should now be read as:

```math
PCTP.hard/TTU.A
+ PCTP.5.E
+ MBR.E
+ SourcePulseCMExit.A
\Longrightarrow
\text{local Theorem 2.1 warrant}.
```

Therefore the following are not active local source-pulse CM targets:

1. `SourcePulseDTCPlacement.A`;
2. `OriginalSmoothData=>SourcePulseExclusion.A`;
3. `SG.4` / TPS selector observability;
4. exact-potential projective synchronization.

They may remain as stronger supplier routes, alternate branches, or downstream
support packets.  The remaining full-claim route still depends on the separate
terminal-tail production / `Jump_avg` branch-native no-escape input named in the
PCTP five-burden audit.

## Boundary

This is a conditional bridge note.  It does not by itself certify
`PCTP.hard / TTU.A`, public export readiness, freshness of generated review
surfaces, whole-space `R^3` export, or independent referee acceptance.
