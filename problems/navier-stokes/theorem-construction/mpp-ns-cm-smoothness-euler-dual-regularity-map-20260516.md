# MPP Shared Pack And Euler Non-One-Field Participation Audit

## Status

Theorem-facing target-acquisition and application map, corrected after the
Euler participation audit.

Role: record the exact general argument connecting shared Pack, Navier-Stokes
CM smoothness, and Euler nonsmoothness scenarios without smuggling
viscosity-level participation or one-field coherence into Euler membership.

## Exact General Target

The usable principle is:

```math
\boxed{
\text{Pack failure exits both Euler and Navier-Stokes, but NS Part/Field
exclusions do not become Euler one-field membership laws.}
}
\tag{NSECD.0}
```

That is the target. The shared object is flux-volume/incompressibility. The
split object is participation/coherence. Navier-Stokes has a
pressure-viscosity participation law and a parabolic one-field mechanism; Euler
has pressure/incompressibility compatibility. Those are different physical and
proof objects.

The governing Euler base remains

```math
\mathrm{Member}_E(Q)
:=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
\tag{NSECD.1}
```

When participation vocabulary is useful on the Euler side, its base meaning is
only

```math
\boxed{
\mathrm{EPart}^{press}_Q
\subset
\mathrm{EVol}_Q\wedge\mathrm{EMom}_Q,
\qquad
\mathrm{EPart}^{press}_Q\not\Rightarrow \mathrm{EReg}_{N,r,Q}.
}
\tag{NSECD.2}
```

So an Euler state can obey Pack/flux-volume and pressure participation while
still exhibiting slip, vortex-sheet-like jumps, jet-driven shear layers, or
failure of a single coherent carrier.

## Why The Argument Is Real

The NS continuation packet has three CM witness slots:

```text
carrier / cover        -> Pack
participation / law    -> Part
one-field coherence    -> Field
```

The NS smoothness route says that if the continuation packet persists, the
classical solution continues. Contrapositively, a genuine terminal failure must
break one of those slots or a checked bridge into one of them.

Euler shares the flux-volume part of Pack and the weak momentum-pressure law.
It does not share the NS mechanisms behind Part and Field:

1. finite Lagrangian carrier / deformation control is extra regularity, not
   weak Euler membership;
2. pressure participation is only incompressibility and normal-force
   compatibility, not viscous shear entrainment;
3. one-field coherence is extra regularity, not a primitive Euler class law;
4. top-viscous absorption and parabolic receiver readout are absent.

Therefore the NS CM argument must be split by the exact input it spends.
Wherever it proves Pack in the shared flux-volume sense, a Pack failure is a
class exit for both equations. Wherever it spends viscous participation or
one-field coherence, it is identifying an Euler nonsmoothness-compatible gap: a
way for Euler to remain a weak member while failing the stronger NS-style CM
layer.

## Jet / Slip Pressure Test

A narrow jet or injection is the clean interior diagnostic. It supplies
momentum and forces pressure to adjust, but Euler has no viscous coupling law
requiring the neighboring material to join one smooth packet. In weak Euler
terms, the live question is whether the flux and momentum balances hold across
the chosen control surfaces. Tangential slip or a jump-like shear layer is not
removed by pressure alone.

The installed proof witness is
[mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md):
a stationary tangential vortex sheet with constant pressure satisfies weak
Euler and fails one-field coherence.

The installed smooth-data bridge is
[mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md):
smooth stationary shear-layer Euler solutions converge to that slip sheet in
the zero-thickness limit. This bridges smooth data to the nonsmooth witness as a
singular limit, while keeping fixed-datum finite-time singularity separate.

## Application Rule

A repo surface may use this dual principle only if one of these is true:

1. it is a Pack theorem in the shared Eulerian flux-volume sense;
2. it is an NS `Part` or `Field` theorem and the proof step is kept typed as
   NS pressure-viscosity participation or NS one-field coherence;
3. it is a checked bridge into one of those faces;
4. it is a typed subset route whose branches are explicitly sorted into
   `Pack`, `Part`, `Field`, or a named defect-boundary class;
5. it is a fixed-`nu` transfer surface and is kept separate from both CM
   contrapositive work and Euler mirror membership.

Supplier, source-wall, readout, export, Hodge, exact-potential, selector, PCTP,
and manuscript surfaces inherit this rule. They do not get Euler-dual authority
from vocabulary alone.

## Face-By-Face Dual

| NS CM slot | NS smoothness job | Euler dual | Repo consequence |
| --- | --- | --- | --- |
| `Pack_Q` | retain usable flux-volume and, on stronger NS surfaces, same-fluid cover / finite deformation coordinates | shared Pack is `EVol`; Lagrangian or material-packet Pack is `ELag` | Flux-volume Pack failure exits both; Lagrangian Pack failure exits only a stronger Euler carrier layer |
| `Part_{N,Q}` | keep the differentiated pressure-viscosity carrier and neighboring participation law active | Euler has only `EPart^{press}`: pressure/incompressibility compatibility without viscous entrainment | NS participation proofs become diagnostics for exactly what Euler lacks; they do not exclude Euler slip, dead-relative-to-jet regions, or jump-like shear |
| `Field_{N,r,Q}` | keep one coherent positive-scale velocity/pressure field across local towers | `Field` becomes `EReg` / optional one-field regularity | NS field proofs give Euler nonsmoothness diagnostics: one-field coherence may fail while `Member_E` and `EPart^{press}` still hold |
| `H^s` readout | convert CM witness to classical continuation | no Euler membership face | readout gaps are bridge gaps unless they have been pushed back into Pack, Part, or Field |

## Main Repo Seats

### 1. Continuation-Packet CM Contrapositive

Authority:
`problems/navier-stokes/theorem-construction/mpp-continuation-packet-generated-cm-contrapositive-20260514.md`.

This is the root seat. It supplies the map

```math
\text{finite NS non-continuation}
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field
\tag{NSECD.3}
```

after the continuation packet is negated. The Euler dual applies to those three
slot failures and to checked bridges into them.

### 2. Endpoint Matrix / `End_NS`

Authority:
`mpp-class-membership-endpoint-matrix-closure-contract-note.md`.

The native matrix seats are:

```text
(Pack, packing-detached)
(Part, Dead)
(Field, Jump)
```

The Euler dual reads those as:

1. `packing-detached`: a class exit for both only when it is a flux-volume Pack
   failure; otherwise it is failure of Lagrangian carrier / deformation
   regularity above `Member_E`;
2. `Dead`: failure of NS pressure-viscosity participation; on Euler it is a
   live nonsmoothness-compatible scenario relative to an imposed NS-style
   carrier, not a contradiction with pressure incompressibility;
3. `Jump`: failure of one-field coherence / `EReg`; on Euler this can coexist
   with weak membership and pressure participation.

### 3. `CFI.A`

Authority:
`mpp-class-membership-forward-invariance-theorem-program.md`.

On NS, `CFI.A` consumes the Pack/Part/Field witness-face record into `Member(Q)`.
On Euler, the mirror of `CFI.A` can only be a regularity-forward-invariance
candidate over `Member_E`. It cannot define Euler membership.

### 4. `OFP.A`

Authority:
`mpp-one-field-forward-preservation-theorem-program.md`.

This is a Field-side theorem. Its Euler dual is direct:

```math
\text{failure of the NS one-field preservation mechanism}
\leadsto
\text{failure of Euler }EReg\text{ / one-field coherence.}
\tag{NSECD.4}
```

That is the cleanest place where "NS smoothness for CM gives an Euler
nonsmoothness argument" is literally true: one-field coherence can be absent on
Euler even while the equation-level pressure/volume law remains satisfied.

### 5. `LCI.A`, `ACT.KX`, `RCF.A`, And Receiver Readout

Authorities:

1. `mpp-lower-carrier-interval-integrability-theorem-program.md`;
2. `mpp-act-kx-conditional-route-completion-packet.md`;
3. `euler-mirror/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md`;
4. `euler-mirror/viscosity-dependence-ledger.yaml`.

This is the most concrete viscous seat. The parent NS proof spends:

1. the `2nu D^{low}` lower-collar sink;
2. the `c_nu N` / `eta_X` ACT absorption scheduler;
3. `ACT.X-TopVisc`;
4. top-viscous center readout.

Euler keeps transport geometry and pressure response, but lacks those sinks.
Therefore the dual application is:

```math
\text{NS receiver closure by viscosity}
\leadsto
\text{Euler open }EReg\text{ / lower-carrier failure diagnostic.}
\tag{NSECD.5}
```

### 6. Source-Wall, Zeno, Signed-Current, Height, And Low-Strain Presentations

Authorities:

1. `cm-exit-live-surface-audit-20260514.yaml`;
2. `mpp-non-euler-cm-surface-face-sweep-20260514.md`;
3. `theorem-repair.yaml`;
4. `target-operating-contract.yaml`.

These apply only through their installed face sorting:

```text
Carleson selected failure -> Field
Zeno selected failure     -> Field
height / low-strain       -> Pack / Part / Field / Zeno subset
signed-current/native-square-reserve -> support reducing to those cases
PCTP/SOURCE.NO-PULSE/AWG/TGC -> downstream support until bridged
```

The Euler dual is valid on the sorted face, not on the supplier label by itself.

### 7. Fixed-`nu` Euler-To-NS Transfer

Authorities:

1. `mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md`;
2. `mpp-euler-smooth-ns-smooth-contrapositive-route-note-20260506.md`.

This branch is adjacent but separate. It asks whether

```math
\mathrm{EulerSmooth}(u_0,[0,T])
\Longrightarrow
\mathrm{NSSmooth}_\nu(u_0,[0,T])
\qquad(\nu>0)
\tag{NSECD.6}
```

on the same datum and interval. It is not the CM contrapositive and not the
Euler mirror. The dual principle helps locate the first-failure mechanism, but
it cannot be used to replace the fixed-`nu` transfer theorem.

## Exact Boundary

The sentence governing future repo work is:

```math
\boxed{
\text{Euler shares Pack as flux-volume, while NS Part/Field are
viscosity-level and one-field structures that Euler pressure does not replace.}
}
\tag{NSECD.7}
```

Equivalently: every genuine flux-volume Pack failure is a CM exit for both
Euler and Navier-Stokes, but Euler pressure participation may hold inside
nonsmooth, slipping, jet-sheared, or jump-like weak configurations. Any repo
note that uses pressure alone to infer one-field coherence is importing the
Navier-Stokes mechanism it is supposed to be separating.
